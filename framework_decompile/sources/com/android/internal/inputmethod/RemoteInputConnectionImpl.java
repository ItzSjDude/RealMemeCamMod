package com.android.internal.inputmethod;

import android.os.Bundle;
import android.os.Handler;
import android.os.Looper;
import android.os.Trace;
import android.util.Log;
import android.util.proto.ProtoOutputStream;
import android.view.KeyEvent;
import android.view.View;
import android.view.ViewRootImpl;
import android.view.inputmethod.CompletionInfo;
import android.view.inputmethod.CorrectionInfo;
import android.view.inputmethod.DumpableInputConnection;
import android.view.inputmethod.ExtractedText;
import android.view.inputmethod.ExtractedTextRequest;
import android.view.inputmethod.InputConnection;
import android.view.inputmethod.InputContentInfo;
import android.view.inputmethod.InputMethodManager;
import android.view.inputmethod.SurroundingText;
import android.view.inputmethod.TextAttribute;
import android.view.inputmethod.TextSnapshot;
import com.android.internal.infra.AndroidFuture;
import com.android.internal.inputmethod.IRemoteAccessibilityInputConnection;
import com.android.internal.view.IInputContext;
import java.lang.annotation.Retention;
import java.lang.annotation.RetentionPolicy;
import java.lang.ref.WeakReference;
import java.util.Objects;
import java.util.concurrent.atomic.AtomicBoolean;
import java.util.concurrent.atomic.AtomicInteger;
import java.util.function.Function;
import java.util.function.Supplier;

/* loaded from: classes4.dex */
public final class RemoteInputConnectionImpl extends IInputContext.Stub {
    private static final boolean DEBUG = false;
    private static final int MAX_END_BATCH_EDIT_RETRY = 16;
    private static final String TAG = "RemoteInputConnectionImpl";
    private final Handler mH;
    private InputConnection mInputConnection;
    private final Looper mLooper;
    private final InputMethodManager mParentInputMethodManager;
    private final WeakReference<View> mServedView;
    private final Object mLock = new Object();
    private boolean mFinished = false;
    private final AtomicInteger mCurrentSessionId = new AtomicInteger(0);
    private final AtomicBoolean mHasPendingInvalidation = new AtomicBoolean();
    private final IRemoteAccessibilityInputConnection mAccessibilityInputConnection = new AnonymousClass1();

    @Retention(RetentionPolicy.SOURCE)
    private @interface Dispatching {
        boolean cancellable();
    }

    private static final class KnownAlwaysTrueEndBatchEditCache {
        private static volatile Class<?>[] sArray;
        private static volatile Class<?> sElement;

        private KnownAlwaysTrueEndBatchEditCache() {
        }

        static boolean contains(Class<? extends InputConnection> klass) {
            if (klass == sElement) {
                return true;
            }
            Class<?>[] array = sArray;
            if (array == null) {
                return false;
            }
            for (Class<?> item : array) {
                if (item == klass) {
                    return true;
                }
            }
            return false;
        }

        static void add(Class<? extends InputConnection> klass) {
            if (sElement == null) {
                sElement = klass;
                return;
            }
            Class<?>[] array = sArray;
            int arraySize = array != null ? array.length : 0;
            Class<?>[] newArray = new Class[arraySize + 1];
            for (int i = 0; i < arraySize; i++) {
                newArray[i] = array[i];
            }
            newArray[arraySize] = klass;
            sArray = newArray;
        }
    }

    public RemoteInputConnectionImpl(Looper looper, InputConnection inputConnection, InputMethodManager inputMethodManager, View servedView) {
        this.mInputConnection = inputConnection;
        this.mLooper = looper;
        this.mH = new Handler(looper);
        this.mParentInputMethodManager = inputMethodManager;
        this.mServedView = new WeakReference<>(servedView);
    }

    public InputConnection getInputConnection() {
        InputConnection inputConnection;
        synchronized (this.mLock) {
            inputConnection = this.mInputConnection;
        }
        return inputConnection;
    }

    public boolean hasPendingInvalidation() {
        return this.mHasPendingInvalidation.get();
    }

    public boolean isFinished() {
        boolean z;
        synchronized (this.mLock) {
            z = this.mFinished;
        }
        return z;
    }

    public boolean isActive() {
        return this.mParentInputMethodManager.isActive() && !isFinished();
    }

    public View getServedView() {
        return this.mServedView.get();
    }

    public void scheduleInvalidateInput() {
        if (this.mHasPendingInvalidation.compareAndSet(false, true)) {
            final int nextSessionId = this.mCurrentSessionId.incrementAndGet();
            this.mH.post(new Runnable() { // from class: com.android.internal.inputmethod.RemoteInputConnectionImpl$$ExternalSyntheticLambda7
                @Override // java.lang.Runnable
                public final void run() {
                    this.f$0.m6819x1f8acd17(nextSessionId);
                }
            });
        }
    }

    /* renamed from: lambda$scheduleInvalidateInput$0$com-android-internal-inputmethod-RemoteInputConnectionImpl, reason: not valid java name */
    /* synthetic */ void m6819x1f8acd17(int nextSessionId) {
        TextSnapshot textSnapshot;
        try {
            if (isFinished()) {
                return;
            }
            InputConnection ic = getInputConnection();
            if (ic == null) {
                return;
            }
            View view = getServedView();
            if (view == null) {
                return;
            }
            Class<?> cls = ic.getClass();
            boolean alwaysTrueEndBatchEditDetected = KnownAlwaysTrueEndBatchEditCache.contains(cls);
            if (!alwaysTrueEndBatchEditDetected) {
                boolean supportsBatchEdit = ic.beginBatchEdit();
                ic.finishComposingText();
                if (supportsBatchEdit) {
                    int retryCount = 0;
                    while (true) {
                        if (!ic.endBatchEdit()) {
                            break;
                        }
                        retryCount++;
                        if (retryCount > 16) {
                            Log.e(TAG, cls.getTypeName() + "#endBatchEdit() still returns true even after retrying 16 times.  Falling back to InputMethodManager#restartInput(View)");
                            alwaysTrueEndBatchEditDetected = true;
                            KnownAlwaysTrueEndBatchEditCache.add(cls);
                            break;
                        }
                    }
                }
            }
            if (alwaysTrueEndBatchEditDetected || (textSnapshot = ic.takeSnapshot()) == null || !this.mParentInputMethodManager.doInvalidateInput(this, textSnapshot, nextSessionId)) {
                this.mParentInputMethodManager.restartInput(view);
            }
        } finally {
            this.mHasPendingInvalidation.set(false);
        }
    }

    public void deactivate() {
        if (isFinished()) {
            return;
        }
        dispatch(new Runnable() { // from class: com.android.internal.inputmethod.RemoteInputConnectionImpl$$ExternalSyntheticLambda25
            @Override // java.lang.Runnable
            public final void run() {
                this.f$0.m6798xc0bfabff();
            }
        });
    }

    /* renamed from: lambda$deactivate$2$com-android-internal-inputmethod-RemoteInputConnectionImpl, reason: not valid java name */
    /* synthetic */ void m6798xc0bfabff() {
        Handler handler;
        if (isFinished()) {
            return;
        }
        Trace.traceBegin(4L, "InputConnection#closeConnection");
        try {
            InputConnection ic = getInputConnection();
            if (ic == null) {
                synchronized (this.mLock) {
                    this.mInputConnection = null;
                    this.mFinished = true;
                }
                Trace.traceEnd(4L);
                return;
            }
            try {
                ic.closeConnection();
            } catch (AbstractMethodError e) {
            }
            synchronized (this.mLock) {
                this.mInputConnection = null;
                this.mFinished = true;
            }
            Trace.traceEnd(4L);
            final View servedView = this.mServedView.get();
            if (servedView == null || (handler = servedView.getHandler()) == null) {
                return;
            }
            if (!handler.getLooper().isCurrentThread()) {
                Objects.requireNonNull(servedView);
                handler.post(new Runnable() { // from class: com.android.internal.inputmethod.RemoteInputConnectionImpl$$ExternalSyntheticLambda39
                    @Override // java.lang.Runnable
                    public final void run() {
                        servedView.onInputConnectionClosedInternal();
                    }
                });
                handler.post(new Runnable() { // from class: com.android.internal.inputmethod.RemoteInputConnectionImpl$$ExternalSyntheticLambda40
                    @Override // java.lang.Runnable
                    public final void run() {
                        RemoteInputConnectionImpl.lambda$deactivate$1(servedView);
                    }
                });
            } else {
                servedView.onInputConnectionClosedInternal();
                ViewRootImpl viewRoot = servedView.getViewRootImpl();
                if (viewRoot != null) {
                    viewRoot.getHandwritingInitiator().onInputConnectionClosed(servedView);
                }
            }
        } catch (Throwable th) {
            synchronized (this.mLock) {
                this.mInputConnection = null;
                this.mFinished = true;
                Trace.traceEnd(4L);
                throw th;
            }
        }
    }

    static /* synthetic */ void lambda$deactivate$1(View servedView) {
        ViewRootImpl viewRoot = servedView.getViewRootImpl();
        if (viewRoot != null) {
            viewRoot.getHandwritingInitiator().onInputConnectionClosed(servedView);
        }
    }

    public String toString() {
        return "RemoteInputConnectionImpl{connection=" + getInputConnection() + " finished=" + isFinished() + " mParentInputMethodManager.isActive()=" + this.mParentInputMethodManager.isActive() + " mServedView=" + this.mServedView.get() + "}";
    }

    public void dumpDebug(ProtoOutputStream proto, long fieldId) {
        synchronized (this.mLock) {
            if ((this.mInputConnection instanceof DumpableInputConnection) && this.mLooper.isCurrentThread()) {
                ((DumpableInputConnection) this.mInputConnection).dumpDebug(proto, fieldId);
            }
        }
    }

    public void dispatchReportFullscreenMode(final boolean enabled) {
        dispatch(new Runnable() { // from class: com.android.internal.inputmethod.RemoteInputConnectionImpl$$ExternalSyntheticLambda41
            @Override // java.lang.Runnable
            public final void run() {
                this.f$0.m6801xe2f85626(enabled);
            }
        });
    }

    /* renamed from: lambda$dispatchReportFullscreenMode$3$com-android-internal-inputmethod-RemoteInputConnectionImpl, reason: not valid java name */
    /* synthetic */ void m6801xe2f85626(boolean enabled) {
        InputConnection ic = getInputConnection();
        if (ic == null || !isActive()) {
            return;
        }
        ic.reportFullscreenMode(enabled);
    }

    @Override // com.android.internal.view.IInputContext
    public void getTextAfterCursor(final InputConnectionCommandHeader header, final int length, final int flags, AndroidFuture future) {
        dispatchWithTracing("getTextAfterCursor", future, new Supplier() { // from class: com.android.internal.inputmethod.RemoteInputConnectionImpl$$ExternalSyntheticLambda37
            @Override // java.util.function.Supplier
            public final Object get() {
                return this.f$0.m6810x8c546362(header, length, flags);
            }
        }, useImeTracing() ? new Function() { // from class: com.android.internal.inputmethod.RemoteInputConnectionImpl$$ExternalSyntheticLambda38
            @Override // java.util.function.Function
            public final Object apply(Object obj) {
                return InputConnectionProtoDumper.buildGetTextAfterCursorProto(length, flags, (CharSequence) obj);
            }
        } : null);
    }

    /* renamed from: lambda$getTextAfterCursor$4$com-android-internal-inputmethod-RemoteInputConnectionImpl, reason: not valid java name */
    /* synthetic */ CharSequence m6810x8c546362(InputConnectionCommandHeader header, int length, int flags) {
        if (header.mSessionId != this.mCurrentSessionId.get()) {
            return null;
        }
        InputConnection ic = getInputConnection();
        if (ic == null || !isActive()) {
            Log.w(TAG, "getTextAfterCursor on inactive InputConnection");
            return null;
        }
        if (length < 0) {
            Log.i(TAG, "Returning null to getTextAfterCursor due to an invalid length=" + length);
            return null;
        }
        return ic.getTextAfterCursor(length, flags);
    }

    @Override // com.android.internal.view.IInputContext
    public void getTextBeforeCursor(final InputConnectionCommandHeader header, final int length, final int flags, AndroidFuture future) {
        dispatchWithTracing("getTextBeforeCursor", future, new Supplier() { // from class: com.android.internal.inputmethod.RemoteInputConnectionImpl$$ExternalSyntheticLambda26
            @Override // java.util.function.Supplier
            public final Object get() {
                return this.f$0.m6811xe3337e91(header, length, flags);
            }
        }, useImeTracing() ? new Function() { // from class: com.android.internal.inputmethod.RemoteInputConnectionImpl$$ExternalSyntheticLambda27
            @Override // java.util.function.Function
            public final Object apply(Object obj) {
                return InputConnectionProtoDumper.buildGetTextBeforeCursorProto(length, flags, (CharSequence) obj);
            }
        } : null);
    }

    /* renamed from: lambda$getTextBeforeCursor$6$com-android-internal-inputmethod-RemoteInputConnectionImpl, reason: not valid java name */
    /* synthetic */ CharSequence m6811xe3337e91(InputConnectionCommandHeader header, int length, int flags) {
        if (header.mSessionId != this.mCurrentSessionId.get()) {
            return null;
        }
        InputConnection ic = getInputConnection();
        if (ic == null || !isActive()) {
            Log.w(TAG, "getTextBeforeCursor on inactive InputConnection");
            return null;
        }
        if (length < 0) {
            Log.i(TAG, "Returning null to getTextBeforeCursor due to an invalid length=" + length);
            return null;
        }
        return ic.getTextBeforeCursor(length, flags);
    }

    @Override // com.android.internal.view.IInputContext
    public void getSelectedText(final InputConnectionCommandHeader header, final int flags, AndroidFuture future) {
        dispatchWithTracing("getSelectedText", future, new Supplier() { // from class: com.android.internal.inputmethod.RemoteInputConnectionImpl$$ExternalSyntheticLambda12
            @Override // java.util.function.Supplier
            public final Object get() {
                return this.f$0.m6808xc8c375a9(header, flags);
            }
        }, useImeTracing() ? new Function() { // from class: com.android.internal.inputmethod.RemoteInputConnectionImpl$$ExternalSyntheticLambda13
            @Override // java.util.function.Function
            public final Object apply(Object obj) {
                return InputConnectionProtoDumper.buildGetSelectedTextProto(flags, (CharSequence) obj);
            }
        } : null);
    }

    /* renamed from: lambda$getSelectedText$8$com-android-internal-inputmethod-RemoteInputConnectionImpl, reason: not valid java name */
    /* synthetic */ CharSequence m6808xc8c375a9(InputConnectionCommandHeader header, int flags) {
        if (header.mSessionId != this.mCurrentSessionId.get()) {
            return null;
        }
        InputConnection ic = getInputConnection();
        if (ic == null || !isActive()) {
            Log.w(TAG, "getSelectedText on inactive InputConnection");
            return null;
        }
        try {
            return ic.getSelectedText(flags);
        } catch (AbstractMethodError e) {
            return null;
        }
    }

    @Override // com.android.internal.view.IInputContext
    public void getSurroundingText(final InputConnectionCommandHeader header, final int beforeLength, final int afterLength, final int flags, AndroidFuture future) {
        dispatchWithTracing("getSurroundingText", future, new Supplier() { // from class: com.android.internal.inputmethod.RemoteInputConnectionImpl$$ExternalSyntheticLambda42
            @Override // java.util.function.Supplier
            public final Object get() {
                return this.f$0.m6809xd47def3(header, beforeLength, afterLength, flags);
            }
        }, useImeTracing() ? new Function() { // from class: com.android.internal.inputmethod.RemoteInputConnectionImpl$$ExternalSyntheticLambda43
            @Override // java.util.function.Function
            public final Object apply(Object obj) {
                return InputConnectionProtoDumper.buildGetSurroundingTextProto(beforeLength, afterLength, flags, (SurroundingText) obj);
            }
        } : null);
    }

    /* renamed from: lambda$getSurroundingText$10$com-android-internal-inputmethod-RemoteInputConnectionImpl, reason: not valid java name */
    /* synthetic */ SurroundingText m6809xd47def3(InputConnectionCommandHeader header, int beforeLength, int afterLength, int flags) {
        if (header.mSessionId != this.mCurrentSessionId.get()) {
            return null;
        }
        InputConnection ic = getInputConnection();
        if (ic == null || !isActive()) {
            Log.w(TAG, "getSurroundingText on inactive InputConnection");
            return null;
        }
        if (beforeLength < 0) {
            Log.i(TAG, "Returning null to getSurroundingText due to an invalid beforeLength=" + beforeLength);
            return null;
        }
        if (afterLength < 0) {
            Log.i(TAG, "Returning null to getSurroundingText due to an invalid afterLength=" + afterLength);
            return null;
        }
        return ic.getSurroundingText(beforeLength, afterLength, flags);
    }

    @Override // com.android.internal.view.IInputContext
    public void getCursorCapsMode(final InputConnectionCommandHeader header, final int reqModes, AndroidFuture future) {
        dispatchWithTracing("getCursorCapsMode", future, new Supplier() { // from class: com.android.internal.inputmethod.RemoteInputConnectionImpl$$ExternalSyntheticLambda4
            @Override // java.util.function.Supplier
            public final Object get() {
                return this.f$0.m6806x359c306c(header, reqModes);
            }
        }, useImeTracing() ? new Function() { // from class: com.android.internal.inputmethod.RemoteInputConnectionImpl$$ExternalSyntheticLambda5
            @Override // java.util.function.Function
            public final Object apply(Object obj) {
                return InputConnectionProtoDumper.buildGetCursorCapsModeProto(reqModes, ((Integer) obj).intValue());
            }
        } : null);
    }

    /* renamed from: lambda$getCursorCapsMode$12$com-android-internal-inputmethod-RemoteInputConnectionImpl, reason: not valid java name */
    /* synthetic */ Integer m6806x359c306c(InputConnectionCommandHeader header, int reqModes) {
        if (header.mSessionId != this.mCurrentSessionId.get()) {
            return 0;
        }
        InputConnection ic = getInputConnection();
        if (ic == null || !isActive()) {
            Log.w(TAG, "getCursorCapsMode on inactive InputConnection");
            return 0;
        }
        return Integer.valueOf(ic.getCursorCapsMode(reqModes));
    }

    @Override // com.android.internal.view.IInputContext
    public void getExtractedText(final InputConnectionCommandHeader header, final ExtractedTextRequest request, final int flags, AndroidFuture future) {
        dispatchWithTracing("getExtractedText", future, new Supplier() { // from class: com.android.internal.inputmethod.RemoteInputConnectionImpl$$ExternalSyntheticLambda29
            @Override // java.util.function.Supplier
            public final Object get() {
                return this.f$0.m6807x43a81e2b(header, request, flags);
            }
        }, useImeTracing() ? new Function() { // from class: com.android.internal.inputmethod.RemoteInputConnectionImpl$$ExternalSyntheticLambda30
            @Override // java.util.function.Function
            public final Object apply(Object obj) {
                return InputConnectionProtoDumper.buildGetExtractedTextProto(request, flags, (ExtractedText) obj);
            }
        } : null);
    }

    /* renamed from: lambda$getExtractedText$14$com-android-internal-inputmethod-RemoteInputConnectionImpl, reason: not valid java name */
    /* synthetic */ ExtractedText m6807x43a81e2b(InputConnectionCommandHeader header, ExtractedTextRequest request, int flags) {
        if (header.mSessionId != this.mCurrentSessionId.get()) {
            return null;
        }
        InputConnection ic = getInputConnection();
        if (ic == null || !isActive()) {
            Log.w(TAG, "getExtractedText on inactive InputConnection");
            return null;
        }
        return ic.getExtractedText(request, flags);
    }

    @Override // com.android.internal.view.IInputContext
    public void commitText(final InputConnectionCommandHeader header, final CharSequence text, final int newCursorPosition) {
        dispatchWithTracing("commitText", new Runnable() { // from class: com.android.internal.inputmethod.RemoteInputConnectionImpl$$ExternalSyntheticLambda34
            @Override // java.lang.Runnable
            public final void run() {
                this.f$0.m6796x8bc80a76(header, text, newCursorPosition);
            }
        });
    }

    /* renamed from: lambda$commitText$16$com-android-internal-inputmethod-RemoteInputConnectionImpl, reason: not valid java name */
    /* synthetic */ void m6796x8bc80a76(InputConnectionCommandHeader header, CharSequence text, int newCursorPosition) {
        if (header.mSessionId != this.mCurrentSessionId.get() && header.mSessionId != -1) {
            return;
        }
        InputConnection ic = getInputConnection();
        if (ic == null || !isActive()) {
            Log.w(TAG, "commitText on inactive InputConnection");
        } else {
            ic.commitText(text, newCursorPosition);
        }
    }

    @Override // com.android.internal.view.IInputContext
    public void commitTextWithTextAttribute(final InputConnectionCommandHeader header, final CharSequence text, final int newCursorPosition, final TextAttribute textAttribute) {
        dispatchWithTracing("commitTextWithTextAttribute", new Runnable() { // from class: com.android.internal.inputmethod.RemoteInputConnectionImpl$$ExternalSyntheticLambda16
            @Override // java.lang.Runnable
            public final void run() {
                this.f$0.m6797xf823665c(header, text, newCursorPosition, textAttribute);
            }
        });
    }

    /* renamed from: lambda$commitTextWithTextAttribute$17$com-android-internal-inputmethod-RemoteInputConnectionImpl, reason: not valid java name */
    /* synthetic */ void m6797xf823665c(InputConnectionCommandHeader header, CharSequence text, int newCursorPosition, TextAttribute textAttribute) {
        if (header.mSessionId != this.mCurrentSessionId.get()) {
            return;
        }
        InputConnection ic = getInputConnection();
        if (ic == null || !isActive()) {
            Log.w(TAG, "commitText on inactive InputConnection");
        } else {
            ic.commitText(text, newCursorPosition, textAttribute);
        }
    }

    @Override // com.android.internal.view.IInputContext
    public void commitCompletion(final InputConnectionCommandHeader header, final CompletionInfo text) {
        dispatchWithTracing("commitCompletion", new Runnable() { // from class: com.android.internal.inputmethod.RemoteInputConnectionImpl$$ExternalSyntheticLambda14
            @Override // java.lang.Runnable
            public final void run() {
                this.f$0.m6793x24cef8a3(header, text);
            }
        });
    }

    /* renamed from: lambda$commitCompletion$18$com-android-internal-inputmethod-RemoteInputConnectionImpl, reason: not valid java name */
    /* synthetic */ void m6793x24cef8a3(InputConnectionCommandHeader header, CompletionInfo text) {
        if (header.mSessionId != this.mCurrentSessionId.get()) {
            return;
        }
        InputConnection ic = getInputConnection();
        if (ic == null || !isActive()) {
            Log.w(TAG, "commitCompletion on inactive InputConnection");
        } else {
            ic.commitCompletion(text);
        }
    }

    @Override // com.android.internal.view.IInputContext
    public void commitCorrection(final InputConnectionCommandHeader header, final CorrectionInfo info) {
        dispatchWithTracing("commitCorrection", new Runnable() { // from class: com.android.internal.inputmethod.RemoteInputConnectionImpl$$ExternalSyntheticLambda35
            @Override // java.lang.Runnable
            public final void run() {
                this.f$0.m6795x2b52e804(header, info);
            }
        });
    }

    /* renamed from: lambda$commitCorrection$19$com-android-internal-inputmethod-RemoteInputConnectionImpl, reason: not valid java name */
    /* synthetic */ void m6795x2b52e804(InputConnectionCommandHeader header, CorrectionInfo info) {
        if (header.mSessionId != this.mCurrentSessionId.get()) {
            return;
        }
        InputConnection ic = getInputConnection();
        if (ic == null || !isActive()) {
            Log.w(TAG, "commitCorrection on inactive InputConnection");
        } else {
            try {
                ic.commitCorrection(info);
            } catch (AbstractMethodError e) {
            }
        }
    }

    @Override // com.android.internal.view.IInputContext
    public void setSelection(final InputConnectionCommandHeader header, final int start, final int end) {
        dispatchWithTracing("setSelection", new Runnable() { // from class: com.android.internal.inputmethod.RemoteInputConnectionImpl$$ExternalSyntheticLambda15
            @Override // java.lang.Runnable
            public final void run() {
                this.f$0.m6826xa23f2943(header, start, end);
            }
        });
    }

    /* renamed from: lambda$setSelection$20$com-android-internal-inputmethod-RemoteInputConnectionImpl, reason: not valid java name */
    /* synthetic */ void m6826xa23f2943(InputConnectionCommandHeader header, int start, int end) {
        if (header.mSessionId != this.mCurrentSessionId.get()) {
            return;
        }
        InputConnection ic = getInputConnection();
        if (ic == null || !isActive()) {
            Log.w(TAG, "setSelection on inactive InputConnection");
        } else {
            ic.setSelection(start, end);
        }
    }

    @Override // com.android.internal.view.IInputContext
    public void performEditorAction(final InputConnectionCommandHeader header, final int id) {
        dispatchWithTracing("performEditorAction", new Runnable() { // from class: com.android.internal.inputmethod.RemoteInputConnectionImpl$$ExternalSyntheticLambda33
            @Override // java.lang.Runnable
            public final void run() {
                this.f$0.m6813xf08c4f42(header, id);
            }
        });
    }

    /* renamed from: lambda$performEditorAction$21$com-android-internal-inputmethod-RemoteInputConnectionImpl, reason: not valid java name */
    /* synthetic */ void m6813xf08c4f42(InputConnectionCommandHeader header, int id) {
        if (header.mSessionId != this.mCurrentSessionId.get()) {
            return;
        }
        InputConnection ic = getInputConnection();
        if (ic == null || !isActive()) {
            Log.w(TAG, "performEditorAction on inactive InputConnection");
        } else {
            ic.performEditorAction(id);
        }
    }

    @Override // com.android.internal.view.IInputContext
    public void performContextMenuAction(final InputConnectionCommandHeader header, final int id) {
        dispatchWithTracing("performContextMenuAction", new Runnable() { // from class: com.android.internal.inputmethod.RemoteInputConnectionImpl$$ExternalSyntheticLambda1
            @Override // java.lang.Runnable
            public final void run() {
                this.f$0.m6812x8d5cc99a(header, id);
            }
        });
    }

    /* renamed from: lambda$performContextMenuAction$22$com-android-internal-inputmethod-RemoteInputConnectionImpl, reason: not valid java name */
    /* synthetic */ void m6812x8d5cc99a(InputConnectionCommandHeader header, int id) {
        if (header.mSessionId != this.mCurrentSessionId.get()) {
            return;
        }
        InputConnection ic = getInputConnection();
        if (ic == null || !isActive()) {
            Log.w(TAG, "performContextMenuAction on inactive InputConnection");
        } else {
            ic.performContextMenuAction(id);
        }
    }

    @Override // com.android.internal.view.IInputContext
    public void setComposingRegion(final InputConnectionCommandHeader header, final int start, final int end) {
        dispatchWithTracing("setComposingRegion", new Runnable() { // from class: com.android.internal.inputmethod.RemoteInputConnectionImpl$$ExternalSyntheticLambda22
            @Override // java.lang.Runnable
            public final void run() {
                this.f$0.m6821x705ad0f7(header, start, end);
            }
        });
    }

    /* renamed from: lambda$setComposingRegion$23$com-android-internal-inputmethod-RemoteInputConnectionImpl, reason: not valid java name */
    /* synthetic */ void m6821x705ad0f7(InputConnectionCommandHeader header, int start, int end) {
        if (header.mSessionId != this.mCurrentSessionId.get()) {
            return;
        }
        InputConnection ic = getInputConnection();
        if (ic == null || !isActive()) {
            Log.w(TAG, "setComposingRegion on inactive InputConnection");
        } else {
            try {
                ic.setComposingRegion(start, end);
            } catch (AbstractMethodError e) {
            }
        }
    }

    @Override // com.android.internal.view.IInputContext
    public void setComposingRegionWithTextAttribute(final InputConnectionCommandHeader header, final int start, final int end, final TextAttribute textAttribute) {
        dispatchWithTracing("setComposingRegionWithTextAttribute", new Runnable() { // from class: com.android.internal.inputmethod.RemoteInputConnectionImpl$$ExternalSyntheticLambda24
            @Override // java.lang.Runnable
            public final void run() {
                this.f$0.m6822xfe0cba43(header, start, end, textAttribute);
            }
        });
    }

    /* renamed from: lambda$setComposingRegionWithTextAttribute$24$com-android-internal-inputmethod-RemoteInputConnectionImpl, reason: not valid java name */
    /* synthetic */ void m6822xfe0cba43(InputConnectionCommandHeader header, int start, int end, TextAttribute textAttribute) {
        if (header.mSessionId != this.mCurrentSessionId.get()) {
            return;
        }
        InputConnection ic = getInputConnection();
        if (ic == null || !isActive()) {
            Log.w(TAG, "setComposingRegion on inactive InputConnection");
        } else {
            ic.setComposingRegion(start, end, textAttribute);
        }
    }

    @Override // com.android.internal.view.IInputContext
    public void setComposingText(final InputConnectionCommandHeader header, final CharSequence text, final int newCursorPosition) {
        dispatchWithTracing("setComposingText", new Runnable() { // from class: com.android.internal.inputmethod.RemoteInputConnectionImpl$$ExternalSyntheticLambda19
            @Override // java.lang.Runnable
            public final void run() {
                this.f$0.m6823x13fe8aae(header, text, newCursorPosition);
            }
        });
    }

    /* renamed from: lambda$setComposingText$25$com-android-internal-inputmethod-RemoteInputConnectionImpl, reason: not valid java name */
    /* synthetic */ void m6823x13fe8aae(InputConnectionCommandHeader header, CharSequence text, int newCursorPosition) {
        if (header.mSessionId != this.mCurrentSessionId.get()) {
            return;
        }
        InputConnection ic = getInputConnection();
        if (ic == null || !isActive()) {
            Log.w(TAG, "setComposingText on inactive InputConnection");
        } else {
            ic.setComposingText(text, newCursorPosition);
        }
    }

    @Override // com.android.internal.view.IInputContext
    public void setComposingTextWithTextAttribute(final InputConnectionCommandHeader header, final CharSequence text, final int newCursorPosition, final TextAttribute textAttribute) {
        dispatchWithTracing("setComposingTextWithTextAttribute", new Runnable() { // from class: com.android.internal.inputmethod.RemoteInputConnectionImpl$$ExternalSyntheticLambda17
            @Override // java.lang.Runnable
            public final void run() {
                this.f$0.m6824xafe55f28(header, text, newCursorPosition, textAttribute);
            }
        });
    }

    /* renamed from: lambda$setComposingTextWithTextAttribute$26$com-android-internal-inputmethod-RemoteInputConnectionImpl, reason: not valid java name */
    /* synthetic */ void m6824xafe55f28(InputConnectionCommandHeader header, CharSequence text, int newCursorPosition, TextAttribute textAttribute) {
        if (header.mSessionId != this.mCurrentSessionId.get()) {
            return;
        }
        InputConnection ic = getInputConnection();
        if (ic == null || !isActive()) {
            Log.w(TAG, "setComposingText on inactive InputConnection");
        } else {
            ic.setComposingText(text, newCursorPosition, textAttribute);
        }
    }

    public void finishComposingTextFromImm() {
        final int currentSessionId = this.mCurrentSessionId.get();
        dispatchWithTracing("finishComposingTextFromImm", new Runnable() { // from class: com.android.internal.inputmethod.RemoteInputConnectionImpl$$ExternalSyntheticLambda3
            @Override // java.lang.Runnable
            public final void run() {
                this.f$0.m6805x3477ef88(currentSessionId);
            }
        });
    }

    /* renamed from: lambda$finishComposingTextFromImm$27$com-android-internal-inputmethod-RemoteInputConnectionImpl, reason: not valid java name */
    /* synthetic */ void m6805x3477ef88(int currentSessionId) {
        if (isFinished() || currentSessionId != this.mCurrentSessionId.get()) {
            return;
        }
        InputConnection ic = getInputConnection();
        if (ic == null) {
            Log.w(TAG, "finishComposingTextFromImm on inactive InputConnection");
        } else {
            ic.finishComposingText();
        }
    }

    @Override // com.android.internal.view.IInputContext
    public void finishComposingText(final InputConnectionCommandHeader header) {
        dispatchWithTracing("finishComposingText", new Runnable() { // from class: com.android.internal.inputmethod.RemoteInputConnectionImpl$$ExternalSyntheticLambda44
            @Override // java.lang.Runnable
            public final void run() {
                this.f$0.m6804x65d141e0(header);
            }
        });
    }

    /* renamed from: lambda$finishComposingText$28$com-android-internal-inputmethod-RemoteInputConnectionImpl, reason: not valid java name */
    /* synthetic */ void m6804x65d141e0(InputConnectionCommandHeader header) {
        if (isFinished() || header.mSessionId != this.mCurrentSessionId.get()) {
            return;
        }
        InputConnection ic = getInputConnection();
        if (ic == null) {
            Log.w(TAG, "finishComposingText on inactive InputConnection");
        } else {
            ic.finishComposingText();
        }
    }

    @Override // com.android.internal.view.IInputContext
    public void sendKeyEvent(final InputConnectionCommandHeader header, final KeyEvent event) {
        dispatchWithTracing("sendKeyEvent", new Runnable() { // from class: com.android.internal.inputmethod.RemoteInputConnectionImpl$$ExternalSyntheticLambda10
            @Override // java.lang.Runnable
            public final void run() {
                this.f$0.m6820xcccbb9b3(header, event);
            }
        });
    }

    /* renamed from: lambda$sendKeyEvent$29$com-android-internal-inputmethod-RemoteInputConnectionImpl, reason: not valid java name */
    /* synthetic */ void m6820xcccbb9b3(InputConnectionCommandHeader header, KeyEvent event) {
        if (header.mSessionId != this.mCurrentSessionId.get()) {
            return;
        }
        InputConnection ic = getInputConnection();
        if (ic == null || !isActive()) {
            Log.w(TAG, "sendKeyEvent on inactive InputConnection");
        } else {
            ic.sendKeyEvent(event);
        }
    }

    @Override // com.android.internal.view.IInputContext
    public void clearMetaKeyStates(final InputConnectionCommandHeader header, final int states) {
        dispatchWithTracing("clearMetaKeyStates", new Runnable() { // from class: com.android.internal.inputmethod.RemoteInputConnectionImpl$$ExternalSyntheticLambda21
            @Override // java.lang.Runnable
            public final void run() {
                this.f$0.m6792x760a8569(header, states);
            }
        });
    }

    /* renamed from: lambda$clearMetaKeyStates$30$com-android-internal-inputmethod-RemoteInputConnectionImpl, reason: not valid java name */
    /* synthetic */ void m6792x760a8569(InputConnectionCommandHeader header, int states) {
        if (header.mSessionId != this.mCurrentSessionId.get()) {
            return;
        }
        InputConnection ic = getInputConnection();
        if (ic == null || !isActive()) {
            Log.w(TAG, "clearMetaKeyStates on inactive InputConnection");
        } else {
            ic.clearMetaKeyStates(states);
        }
    }

    @Override // com.android.internal.view.IInputContext
    public void deleteSurroundingText(final InputConnectionCommandHeader header, final int beforeLength, final int afterLength) {
        dispatchWithTracing("deleteSurroundingText", new Runnable() { // from class: com.android.internal.inputmethod.RemoteInputConnectionImpl$$ExternalSyntheticLambda23
            @Override // java.lang.Runnable
            public final void run() {
                this.f$0.m6799xd48d6385(header, beforeLength, afterLength);
            }
        });
    }

    /* renamed from: lambda$deleteSurroundingText$31$com-android-internal-inputmethod-RemoteInputConnectionImpl, reason: not valid java name */
    /* synthetic */ void m6799xd48d6385(InputConnectionCommandHeader header, int beforeLength, int afterLength) {
        if (header.mSessionId != this.mCurrentSessionId.get()) {
            return;
        }
        InputConnection ic = getInputConnection();
        if (ic == null || !isActive()) {
            Log.w(TAG, "deleteSurroundingText on inactive InputConnection");
        } else {
            ic.deleteSurroundingText(beforeLength, afterLength);
        }
    }

    @Override // com.android.internal.view.IInputContext
    public void deleteSurroundingTextInCodePoints(final InputConnectionCommandHeader header, final int beforeLength, final int afterLength) {
        dispatchWithTracing("deleteSurroundingTextInCodePoints", new Runnable() { // from class: com.android.internal.inputmethod.RemoteInputConnectionImpl$$ExternalSyntheticLambda32
            @Override // java.lang.Runnable
            public final void run() {
                this.f$0.m6800xc6f186f9(header, beforeLength, afterLength);
            }
        });
    }

    /* renamed from: lambda$deleteSurroundingTextInCodePoints$32$com-android-internal-inputmethod-RemoteInputConnectionImpl, reason: not valid java name */
    /* synthetic */ void m6800xc6f186f9(InputConnectionCommandHeader header, int beforeLength, int afterLength) {
        if (header.mSessionId != this.mCurrentSessionId.get()) {
            return;
        }
        InputConnection ic = getInputConnection();
        if (ic == null || !isActive()) {
            Log.w(TAG, "deleteSurroundingTextInCodePoints on inactive InputConnection");
        } else {
            try {
                ic.deleteSurroundingTextInCodePoints(beforeLength, afterLength);
            } catch (AbstractMethodError e) {
            }
        }
    }

    @Override // com.android.internal.view.IInputContext
    public void beginBatchEdit(final InputConnectionCommandHeader header) {
        dispatchWithTracing("beginBatchEdit", new Runnable() { // from class: com.android.internal.inputmethod.RemoteInputConnectionImpl$$ExternalSyntheticLambda18
            @Override // java.lang.Runnable
            public final void run() {
                this.f$0.m6791x8ab7ff52(header);
            }
        });
    }

    /* renamed from: lambda$beginBatchEdit$33$com-android-internal-inputmethod-RemoteInputConnectionImpl, reason: not valid java name */
    /* synthetic */ void m6791x8ab7ff52(InputConnectionCommandHeader header) {
        if (header.mSessionId != this.mCurrentSessionId.get()) {
            return;
        }
        InputConnection ic = getInputConnection();
        if (ic == null || !isActive()) {
            Log.w(TAG, "beginBatchEdit on inactive InputConnection");
        } else {
            ic.beginBatchEdit();
        }
    }

    @Override // com.android.internal.view.IInputContext
    public void endBatchEdit(final InputConnectionCommandHeader header) {
        dispatchWithTracing("endBatchEdit", new Runnable() { // from class: com.android.internal.inputmethod.RemoteInputConnectionImpl$$ExternalSyntheticLambda31
            @Override // java.lang.Runnable
            public final void run() {
                this.f$0.m6803x3c05597f(header);
            }
        });
    }

    /* renamed from: lambda$endBatchEdit$34$com-android-internal-inputmethod-RemoteInputConnectionImpl, reason: not valid java name */
    /* synthetic */ void m6803x3c05597f(InputConnectionCommandHeader header) {
        if (header.mSessionId != this.mCurrentSessionId.get()) {
            return;
        }
        InputConnection ic = getInputConnection();
        if (ic == null || !isActive()) {
            Log.w(TAG, "endBatchEdit on inactive InputConnection");
        } else {
            ic.endBatchEdit();
        }
    }

    @Override // com.android.internal.view.IInputContext
    public void performSpellCheck(final InputConnectionCommandHeader header) {
        dispatchWithTracing("performSpellCheck", new Runnable() { // from class: com.android.internal.inputmethod.RemoteInputConnectionImpl$$ExternalSyntheticLambda0
            @Override // java.lang.Runnable
            public final void run() {
                this.f$0.m6815xc485003c(header);
            }
        });
    }

    /* renamed from: lambda$performSpellCheck$35$com-android-internal-inputmethod-RemoteInputConnectionImpl, reason: not valid java name */
    /* synthetic */ void m6815xc485003c(InputConnectionCommandHeader header) {
        if (header.mSessionId != this.mCurrentSessionId.get()) {
            return;
        }
        InputConnection ic = getInputConnection();
        if (ic == null || !isActive()) {
            Log.w(TAG, "performSpellCheck on inactive InputConnection");
        } else {
            ic.performSpellCheck();
        }
    }

    @Override // com.android.internal.view.IInputContext
    public void performPrivateCommand(final InputConnectionCommandHeader header, final String action, final Bundle data) {
        dispatchWithTracing("performPrivateCommand", new Runnable() { // from class: com.android.internal.inputmethod.RemoteInputConnectionImpl$$ExternalSyntheticLambda6
            @Override // java.lang.Runnable
            public final void run() {
                this.f$0.m6814x67489723(header, action, data);
            }
        });
    }

    /* renamed from: lambda$performPrivateCommand$36$com-android-internal-inputmethod-RemoteInputConnectionImpl, reason: not valid java name */
    /* synthetic */ void m6814x67489723(InputConnectionCommandHeader header, String action, Bundle data) {
        if (header.mSessionId != this.mCurrentSessionId.get()) {
            return;
        }
        InputConnection ic = getInputConnection();
        if (ic == null || !isActive()) {
            Log.w(TAG, "performPrivateCommand on inactive InputConnection");
        } else {
            ic.performPrivateCommand(action, data);
        }
    }

    public void requestCursorUpdatesFromImm(final int cursorUpdateMode, final int cursorUpdateFilter, final int imeDisplayId) {
        final int currentSessionId = this.mCurrentSessionId.get();
        dispatchWithTracing("requestCursorUpdatesFromImm", new Runnable() { // from class: com.android.internal.inputmethod.RemoteInputConnectionImpl$$ExternalSyntheticLambda8
            @Override // java.lang.Runnable
            public final void run() {
                this.f$0.m6817x58d45833(currentSessionId, cursorUpdateMode, cursorUpdateFilter, imeDisplayId);
            }
        });
    }

    /* renamed from: lambda$requestCursorUpdatesFromImm$37$com-android-internal-inputmethod-RemoteInputConnectionImpl, reason: not valid java name */
    /* synthetic */ void m6817x58d45833(int currentSessionId, int cursorUpdateMode, int cursorUpdateFilter, int imeDisplayId) {
        if (currentSessionId != this.mCurrentSessionId.get()) {
            return;
        }
        requestCursorUpdatesInternal(cursorUpdateMode, cursorUpdateFilter, imeDisplayId);
    }

    @Override // com.android.internal.view.IInputContext
    public void requestCursorUpdates(final InputConnectionCommandHeader header, final int cursorUpdateMode, final int imeDisplayId, AndroidFuture future) {
        dispatchWithTracing("requestCursorUpdates", future, new Supplier() { // from class: com.android.internal.inputmethod.RemoteInputConnectionImpl$$ExternalSyntheticLambda11
            @Override // java.util.function.Supplier
            public final Object get() {
                return this.f$0.m6816x7eba9577(header, cursorUpdateMode, imeDisplayId);
            }
        });
    }

    /* renamed from: lambda$requestCursorUpdates$38$com-android-internal-inputmethod-RemoteInputConnectionImpl, reason: not valid java name */
    /* synthetic */ Boolean m6816x7eba9577(InputConnectionCommandHeader header, int cursorUpdateMode, int imeDisplayId) {
        if (header.mSessionId != this.mCurrentSessionId.get()) {
            return false;
        }
        return Boolean.valueOf(requestCursorUpdatesInternal(cursorUpdateMode, 0, imeDisplayId));
    }

    @Override // com.android.internal.view.IInputContext
    public void requestCursorUpdatesWithFilter(final InputConnectionCommandHeader header, final int cursorUpdateMode, final int cursorUpdateFilter, final int imeDisplayId, AndroidFuture future) {
        dispatchWithTracing("requestCursorUpdates", future, new Supplier() { // from class: com.android.internal.inputmethod.RemoteInputConnectionImpl$$ExternalSyntheticLambda20
            @Override // java.util.function.Supplier
            public final Object get() {
                return this.f$0.m6818xb39d75d4(header, cursorUpdateMode, cursorUpdateFilter, imeDisplayId);
            }
        });
    }

    /* renamed from: lambda$requestCursorUpdatesWithFilter$39$com-android-internal-inputmethod-RemoteInputConnectionImpl, reason: not valid java name */
    /* synthetic */ Boolean m6818xb39d75d4(InputConnectionCommandHeader header, int cursorUpdateMode, int cursorUpdateFilter, int imeDisplayId) {
        if (header.mSessionId != this.mCurrentSessionId.get()) {
            return false;
        }
        return Boolean.valueOf(requestCursorUpdatesInternal(cursorUpdateMode, cursorUpdateFilter, imeDisplayId));
    }

    private boolean requestCursorUpdatesInternal(int cursorUpdateMode, int cursorUpdateFilter, int imeDisplayId) {
        InputConnection ic = getInputConnection();
        if (ic == null || !isActive()) {
            Log.w(TAG, "requestCursorAnchorInfo on inactive InputConnection");
            return false;
        }
        if (this.mParentInputMethodManager.getDisplayId() != imeDisplayId && !this.mParentInputMethodManager.hasVirtualDisplayToScreenMatrix()) {
            return false;
        }
        try {
            return ic.requestCursorUpdates(cursorUpdateMode, cursorUpdateFilter);
        } catch (AbstractMethodError e) {
            return false;
        }
    }

    @Override // com.android.internal.view.IInputContext
    public void commitContent(final InputConnectionCommandHeader header, final InputContentInfo inputContentInfo, final int flags, final Bundle opts, AndroidFuture future) {
        dispatchWithTracing("commitContent", future, new Supplier() { // from class: com.android.internal.inputmethod.RemoteInputConnectionImpl$$ExternalSyntheticLambda9
            @Override // java.util.function.Supplier
            public final Object get() {
                return this.f$0.m6794x666341e3(header, inputContentInfo, flags, opts);
            }
        });
    }

    /* renamed from: lambda$commitContent$40$com-android-internal-inputmethod-RemoteInputConnectionImpl, reason: not valid java name */
    /* synthetic */ Boolean m6794x666341e3(InputConnectionCommandHeader header, InputContentInfo inputContentInfo, int flags, Bundle opts) {
        if (header.mSessionId != this.mCurrentSessionId.get()) {
            return false;
        }
        InputConnection ic = getInputConnection();
        if (ic == null || !isActive()) {
            Log.w(TAG, "commitContent on inactive InputConnection");
            return false;
        }
        if (inputContentInfo == null || !inputContentInfo.validate()) {
            Log.w(TAG, "commitContent with invalid inputContentInfo=" + inputContentInfo);
            return false;
        }
        try {
            return Boolean.valueOf(ic.commitContent(inputContentInfo, flags, opts));
        } catch (AbstractMethodError e) {
            return false;
        }
    }

    @Override // com.android.internal.view.IInputContext
    public void setImeConsumesInput(final InputConnectionCommandHeader header, final boolean imeConsumesInput) {
        dispatchWithTracing("setImeConsumesInput", new Runnable() { // from class: com.android.internal.inputmethod.RemoteInputConnectionImpl$$ExternalSyntheticLambda36
            @Override // java.lang.Runnable
            public final void run() {
                this.f$0.m6825x577a6894(header, imeConsumesInput);
            }
        });
    }

    /* renamed from: lambda$setImeConsumesInput$41$com-android-internal-inputmethod-RemoteInputConnectionImpl, reason: not valid java name */
    /* synthetic */ void m6825x577a6894(InputConnectionCommandHeader header, boolean imeConsumesInput) {
        if (header.mSessionId != this.mCurrentSessionId.get()) {
            return;
        }
        InputConnection ic = getInputConnection();
        if (ic == null || !isActive()) {
            Log.w(TAG, "setImeConsumesInput on inactive InputConnection");
        } else {
            ic.setImeConsumesInput(imeConsumesInput);
        }
    }

    /* renamed from: com.android.internal.inputmethod.RemoteInputConnectionImpl$1, reason: invalid class name */
    class AnonymousClass1 extends IRemoteAccessibilityInputConnection.Stub {
        AnonymousClass1() {
        }

        @Override // com.android.internal.inputmethod.IRemoteAccessibilityInputConnection
        public void commitText(final InputConnectionCommandHeader header, final CharSequence text, final int newCursorPosition, final TextAttribute textAttribute) {
            RemoteInputConnectionImpl.this.dispatchWithTracing("commitTextFromA11yIme", new Runnable() { // from class: com.android.internal.inputmethod.RemoteInputConnectionImpl$1$$ExternalSyntheticLambda8
                @Override // java.lang.Runnable
                public final void run() {
                    this.f$0.m6828x7a89cfe(header, text, newCursorPosition, textAttribute);
                }
            });
        }

        /* renamed from: lambda$commitText$0$com-android-internal-inputmethod-RemoteInputConnectionImpl$1, reason: not valid java name */
        /* synthetic */ void m6828x7a89cfe(InputConnectionCommandHeader header, CharSequence text, int newCursorPosition, TextAttribute textAttribute) {
            if (header.mSessionId != RemoteInputConnectionImpl.this.mCurrentSessionId.get()) {
                return;
            }
            InputConnection ic = RemoteInputConnectionImpl.this.getInputConnection();
            if (ic == null || !RemoteInputConnectionImpl.this.isActive()) {
                Log.w(RemoteInputConnectionImpl.TAG, "commitText on inactive InputConnection");
                return;
            }
            ic.beginBatchEdit();
            ic.finishComposingText();
            ic.commitText(text, newCursorPosition, textAttribute);
            ic.endBatchEdit();
        }

        @Override // com.android.internal.inputmethod.IRemoteAccessibilityInputConnection
        public void setSelection(final InputConnectionCommandHeader header, final int start, final int end) {
            RemoteInputConnectionImpl.this.dispatchWithTracing("setSelectionFromA11yIme", new Runnable() { // from class: com.android.internal.inputmethod.RemoteInputConnectionImpl$1$$ExternalSyntheticLambda7
                @Override // java.lang.Runnable
                public final void run() {
                    this.f$0.m6835x1ed71ad7(header, start, end);
                }
            });
        }

        /* renamed from: lambda$setSelection$1$com-android-internal-inputmethod-RemoteInputConnectionImpl$1, reason: not valid java name */
        /* synthetic */ void m6835x1ed71ad7(InputConnectionCommandHeader header, int start, int end) {
            if (header.mSessionId != RemoteInputConnectionImpl.this.mCurrentSessionId.get()) {
                return;
            }
            InputConnection ic = RemoteInputConnectionImpl.this.getInputConnection();
            if (ic == null || !RemoteInputConnectionImpl.this.isActive()) {
                Log.w(RemoteInputConnectionImpl.TAG, "setSelection on inactive InputConnection");
            } else {
                ic.setSelection(start, end);
            }
        }

        @Override // com.android.internal.inputmethod.IRemoteAccessibilityInputConnection
        public void getSurroundingText(final InputConnectionCommandHeader header, final int beforeLength, final int afterLength, final int flags, AndroidFuture future) {
            RemoteInputConnectionImpl.this.dispatchWithTracing("getSurroundingTextFromA11yIme", future, new Supplier() { // from class: com.android.internal.inputmethod.RemoteInputConnectionImpl$1$$ExternalSyntheticLambda3
                @Override // java.util.function.Supplier
                public final Object get() {
                    return this.f$0.m6831x3d61fa65(header, beforeLength, afterLength, flags);
                }
            }, RemoteInputConnectionImpl.useImeTracing() ? new Function() { // from class: com.android.internal.inputmethod.RemoteInputConnectionImpl$1$$ExternalSyntheticLambda4
                @Override // java.util.function.Function
                public final Object apply(Object obj) {
                    return InputConnectionProtoDumper.buildGetSurroundingTextProto(beforeLength, afterLength, flags, (SurroundingText) obj);
                }
            } : null);
        }

        /* renamed from: lambda$getSurroundingText$2$com-android-internal-inputmethod-RemoteInputConnectionImpl$1, reason: not valid java name */
        /* synthetic */ SurroundingText m6831x3d61fa65(InputConnectionCommandHeader header, int beforeLength, int afterLength, int flags) {
            if (header.mSessionId != RemoteInputConnectionImpl.this.mCurrentSessionId.get()) {
                return null;
            }
            InputConnection ic = RemoteInputConnectionImpl.this.getInputConnection();
            if (ic == null || !RemoteInputConnectionImpl.this.isActive()) {
                Log.w(RemoteInputConnectionImpl.TAG, "getSurroundingText on inactive InputConnection");
                return null;
            }
            if (beforeLength < 0) {
                Log.i(RemoteInputConnectionImpl.TAG, "Returning null to getSurroundingText due to an invalid beforeLength=" + beforeLength);
                return null;
            }
            if (afterLength < 0) {
                Log.i(RemoteInputConnectionImpl.TAG, "Returning null to getSurroundingText due to an invalid afterLength=" + afterLength);
                return null;
            }
            return ic.getSurroundingText(beforeLength, afterLength, flags);
        }

        @Override // com.android.internal.inputmethod.IRemoteAccessibilityInputConnection
        public void deleteSurroundingText(final InputConnectionCommandHeader header, final int beforeLength, final int afterLength) {
            RemoteInputConnectionImpl.this.dispatchWithTracing("deleteSurroundingTextFromA11yIme", new Runnable() { // from class: com.android.internal.inputmethod.RemoteInputConnectionImpl$1$$ExternalSyntheticLambda1
                @Override // java.lang.Runnable
                public final void run() {
                    this.f$0.m6829xa4576792(header, beforeLength, afterLength);
                }
            });
        }

        /* renamed from: lambda$deleteSurroundingText$4$com-android-internal-inputmethod-RemoteInputConnectionImpl$1, reason: not valid java name */
        /* synthetic */ void m6829xa4576792(InputConnectionCommandHeader header, int beforeLength, int afterLength) {
            if (header.mSessionId != RemoteInputConnectionImpl.this.mCurrentSessionId.get()) {
                return;
            }
            InputConnection ic = RemoteInputConnectionImpl.this.getInputConnection();
            if (ic == null || !RemoteInputConnectionImpl.this.isActive()) {
                Log.w(RemoteInputConnectionImpl.TAG, "deleteSurroundingText on inactive InputConnection");
            } else {
                ic.deleteSurroundingText(beforeLength, afterLength);
            }
        }

        @Override // com.android.internal.inputmethod.IRemoteAccessibilityInputConnection
        public void sendKeyEvent(final InputConnectionCommandHeader header, final KeyEvent event) {
            RemoteInputConnectionImpl.this.dispatchWithTracing("sendKeyEventFromA11yIme", new Runnable() { // from class: com.android.internal.inputmethod.RemoteInputConnectionImpl$1$$ExternalSyntheticLambda10
                @Override // java.lang.Runnable
                public final void run() {
                    this.f$0.m6834x8b3b25a(header, event);
                }
            });
        }

        /* renamed from: lambda$sendKeyEvent$5$com-android-internal-inputmethod-RemoteInputConnectionImpl$1, reason: not valid java name */
        /* synthetic */ void m6834x8b3b25a(InputConnectionCommandHeader header, KeyEvent event) {
            if (header.mSessionId != RemoteInputConnectionImpl.this.mCurrentSessionId.get()) {
                return;
            }
            InputConnection ic = RemoteInputConnectionImpl.this.getInputConnection();
            if (ic == null || !RemoteInputConnectionImpl.this.isActive()) {
                Log.w(RemoteInputConnectionImpl.TAG, "sendKeyEvent on inactive InputConnection");
            } else {
                ic.sendKeyEvent(event);
            }
        }

        @Override // com.android.internal.inputmethod.IRemoteAccessibilityInputConnection
        public void performEditorAction(final InputConnectionCommandHeader header, final int id) {
            RemoteInputConnectionImpl.this.dispatchWithTracing("performEditorActionFromA11yIme", new Runnable() { // from class: com.android.internal.inputmethod.RemoteInputConnectionImpl$1$$ExternalSyntheticLambda9
                @Override // java.lang.Runnable
                public final void run() {
                    this.f$0.m6833xc4f14252(header, id);
                }
            });
        }

        /* renamed from: lambda$performEditorAction$6$com-android-internal-inputmethod-RemoteInputConnectionImpl$1, reason: not valid java name */
        /* synthetic */ void m6833xc4f14252(InputConnectionCommandHeader header, int id) {
            if (header.mSessionId != RemoteInputConnectionImpl.this.mCurrentSessionId.get()) {
                return;
            }
            InputConnection ic = RemoteInputConnectionImpl.this.getInputConnection();
            if (ic == null || !RemoteInputConnectionImpl.this.isActive()) {
                Log.w(RemoteInputConnectionImpl.TAG, "performEditorAction on inactive InputConnection");
            } else {
                ic.performEditorAction(id);
            }
        }

        @Override // com.android.internal.inputmethod.IRemoteAccessibilityInputConnection
        public void performContextMenuAction(final InputConnectionCommandHeader header, final int id) {
            RemoteInputConnectionImpl.this.dispatchWithTracing("performContextMenuActionFromA11yIme", new Runnable() { // from class: com.android.internal.inputmethod.RemoteInputConnectionImpl$1$$ExternalSyntheticLambda0
                @Override // java.lang.Runnable
                public final void run() {
                    this.f$0.m6832x9bf8e218(header, id);
                }
            });
        }

        /* renamed from: lambda$performContextMenuAction$7$com-android-internal-inputmethod-RemoteInputConnectionImpl$1, reason: not valid java name */
        /* synthetic */ void m6832x9bf8e218(InputConnectionCommandHeader header, int id) {
            if (header.mSessionId != RemoteInputConnectionImpl.this.mCurrentSessionId.get()) {
                return;
            }
            InputConnection ic = RemoteInputConnectionImpl.this.getInputConnection();
            if (ic == null || !RemoteInputConnectionImpl.this.isActive()) {
                Log.w(RemoteInputConnectionImpl.TAG, "performContextMenuAction on inactive InputConnection");
            } else {
                ic.performContextMenuAction(id);
            }
        }

        @Override // com.android.internal.inputmethod.IRemoteAccessibilityInputConnection
        public void getCursorCapsMode(final InputConnectionCommandHeader header, final int reqModes, AndroidFuture future) {
            RemoteInputConnectionImpl.this.dispatchWithTracing("getCursorCapsModeFromA11yIme", future, new Supplier() { // from class: com.android.internal.inputmethod.RemoteInputConnectionImpl$1$$ExternalSyntheticLambda5
                @Override // java.util.function.Supplier
                public final Object get() {
                    return this.f$0.m6830x242334c4(header, reqModes);
                }
            }, RemoteInputConnectionImpl.useImeTracing() ? new Function() { // from class: com.android.internal.inputmethod.RemoteInputConnectionImpl$1$$ExternalSyntheticLambda6
                @Override // java.util.function.Function
                public final Object apply(Object obj) {
                    return InputConnectionProtoDumper.buildGetCursorCapsModeProto(reqModes, ((Integer) obj).intValue());
                }
            } : null);
        }

        /* renamed from: lambda$getCursorCapsMode$8$com-android-internal-inputmethod-RemoteInputConnectionImpl$1, reason: not valid java name */
        /* synthetic */ Integer m6830x242334c4(InputConnectionCommandHeader header, int reqModes) {
            if (header.mSessionId != RemoteInputConnectionImpl.this.mCurrentSessionId.get()) {
                return 0;
            }
            InputConnection ic = RemoteInputConnectionImpl.this.getInputConnection();
            if (ic == null || !RemoteInputConnectionImpl.this.isActive()) {
                Log.w(RemoteInputConnectionImpl.TAG, "getCursorCapsMode on inactive InputConnection");
                return 0;
            }
            return Integer.valueOf(ic.getCursorCapsMode(reqModes));
        }

        @Override // com.android.internal.inputmethod.IRemoteAccessibilityInputConnection
        public void clearMetaKeyStates(final InputConnectionCommandHeader header, final int states) {
            RemoteInputConnectionImpl.this.dispatchWithTracing("clearMetaKeyStatesFromA11yIme", new Runnable() { // from class: com.android.internal.inputmethod.RemoteInputConnectionImpl$1$$ExternalSyntheticLambda2
                @Override // java.lang.Runnable
                public final void run() {
                    this.f$0.m6827x365fcb34(header, states);
                }
            });
        }

        /* renamed from: lambda$clearMetaKeyStates$10$com-android-internal-inputmethod-RemoteInputConnectionImpl$1, reason: not valid java name */
        /* synthetic */ void m6827x365fcb34(InputConnectionCommandHeader header, int states) {
            if (header.mSessionId != RemoteInputConnectionImpl.this.mCurrentSessionId.get()) {
                return;
            }
            InputConnection ic = RemoteInputConnectionImpl.this.getInputConnection();
            if (ic == null || !RemoteInputConnectionImpl.this.isActive()) {
                Log.w(RemoteInputConnectionImpl.TAG, "clearMetaKeyStates on inactive InputConnection");
            } else {
                ic.clearMetaKeyStates(states);
            }
        }
    }

    public IRemoteAccessibilityInputConnection asIRemoteAccessibilityInputConnection() {
        return this.mAccessibilityInputConnection;
    }

    private void dispatch(Runnable runnable) {
        if (this.mLooper.isCurrentThread()) {
            runnable.run();
        } else {
            this.mH.post(runnable);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void dispatchWithTracing(final String methodName, final Runnable runnable) {
        Runnable actualRunnable;
        if (Trace.isTagEnabled(4L)) {
            actualRunnable = new Runnable() { // from class: com.android.internal.inputmethod.RemoteInputConnectionImpl$$ExternalSyntheticLambda28
                @Override // java.lang.Runnable
                public final void run() {
                    RemoteInputConnectionImpl.lambda$dispatchWithTracing$42(methodName, runnable);
                }
            };
        } else {
            actualRunnable = runnable;
        }
        dispatch(actualRunnable);
    }

    static /* synthetic */ void lambda$dispatchWithTracing$42(String methodName, Runnable runnable) {
        Trace.traceBegin(4L, "InputConnection#" + methodName);
        try {
            runnable.run();
        } finally {
            Trace.traceEnd(4L);
        }
    }

    private <T> void dispatchWithTracing(String methodName, AndroidFuture untypedFuture, Supplier<T> supplier) {
        dispatchWithTracing(methodName, untypedFuture, supplier, null);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public <T> void dispatchWithTracing(final String methodName, final AndroidFuture untypedFuture, final Supplier<T> supplier, final Function<T, byte[]> dumpProtoProvider) {
        dispatchWithTracing(methodName, new Runnable() { // from class: com.android.internal.inputmethod.RemoteInputConnectionImpl$$ExternalSyntheticLambda2
            @Override // java.lang.Runnable
            public final void run() {
                this.f$0.m6802x8a2316c0(supplier, untypedFuture, dumpProtoProvider, methodName);
            }
        });
    }

    /* renamed from: lambda$dispatchWithTracing$43$com-android-internal-inputmethod-RemoteInputConnectionImpl, reason: not valid java name */
    /* synthetic */ void m6802x8a2316c0(Supplier supplier, AndroidFuture future, Function dumpProtoProvider, String methodName) {
        try {
            Object obj = supplier.get();
            future.complete(obj);
            if (dumpProtoProvider != null) {
                byte[] icProto = (byte[]) dumpProtoProvider.apply(obj);
                ImeTracing.getInstance().triggerClientDump("RemoteInputConnectionImpl#" + methodName, this.mParentInputMethodManager, icProto);
            }
        } catch (Throwable throwable) {
            future.completeExceptionally(throwable);
            throw throwable;
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static boolean useImeTracing() {
        return ImeTracing.getInstance().isEnabled();
    }
}
