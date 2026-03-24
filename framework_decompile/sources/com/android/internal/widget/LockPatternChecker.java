package com.android.internal.widget;

import android.os.AsyncTask;
import android.util.Slog;
import com.android.internal.widget.LockPatternUtils;
import java.util.Objects;
import java.util.concurrent.Executors;
import java.util.concurrent.ThreadFactory;
import java.util.concurrent.atomic.AtomicInteger;

/* loaded from: classes4.dex */
public final class LockPatternChecker {

    public interface OnVerifyCallback {
        void onVerified(VerifyCredentialResponse verifyCredentialResponse, int i);
    }

    public interface OnCheckCallback {
        void onChecked(boolean z, int i);

        default void onEarlyMatched() {
        }

        default void onCancelled() {
        }
    }

    public static AsyncTask<?, ?, ?> verifyCredential(final LockPatternUtils utils, LockscreenCredential credential, final int userId, final int flags, final OnVerifyCallback callback) {
        final LockscreenCredential credentialCopy = credential.duplicate();
        AsyncTask<Void, Void, VerifyCredentialResponse> task = new AsyncTask<Void, Void, VerifyCredentialResponse>() { // from class: com.android.internal.widget.LockPatternChecker.1
            /* JADX INFO: Access modifiers changed from: protected */
            @Override // android.os.AsyncTask
            public VerifyCredentialResponse doInBackground(Void... args) {
                return utils.verifyCredential(credentialCopy, userId, flags);
            }

            /* JADX INFO: Access modifiers changed from: protected */
            @Override // android.os.AsyncTask
            public void onPostExecute(VerifyCredentialResponse result) {
                callback.onVerified(result, result.getTimeout());
                credentialCopy.zeroize();
            }

            @Override // android.os.AsyncTask
            protected void onCancelled() {
                credentialCopy.zeroize();
            }
        };
        task.execute(new Void[0]);
        return task;
    }

    public static AsyncTask<?, ?, ?> checkCredential(final LockPatternUtils utils, LockscreenCredential credential, final int userId, final OnCheckCallback callback) {
        final LockscreenCredential credentialCopy = credential.duplicate();
        AsyncTask<Void, Void, Boolean> task = new AsyncTask<Void, Void, Boolean>() { // from class: com.android.internal.widget.LockPatternChecker.2
            private int mThrottleTimeout;

            /* JADX INFO: Access modifiers changed from: protected */
            @Override // android.os.AsyncTask
            public Boolean doInBackground(Void... args) {
                Slog.d("checkPattern", "checkPattern.doInBackground");
                try {
                    LockPatternUtils lockPatternUtils = utils;
                    LockscreenCredential lockscreenCredential = credentialCopy;
                    int i = userId;
                    final OnCheckCallback onCheckCallback = callback;
                    Objects.requireNonNull(onCheckCallback);
                    return Boolean.valueOf(lockPatternUtils.checkCredential(lockscreenCredential, i, new LockPatternUtils.CheckCredentialProgressCallback() { // from class: com.android.internal.widget.LockPatternChecker$2$$ExternalSyntheticLambda0
                        @Override // com.android.internal.widget.LockPatternUtils.CheckCredentialProgressCallback
                        public final void onEarlyMatched() {
                            onCheckCallback.onEarlyMatched();
                        }
                    }));
                } catch (LockPatternUtils.RequestThrottledException ex) {
                    this.mThrottleTimeout = ex.getTimeoutMs();
                    return false;
                }
            }

            /* JADX INFO: Access modifiers changed from: protected */
            @Override // android.os.AsyncTask
            public void onPostExecute(Boolean result) {
                callback.onChecked(result.booleanValue(), this.mThrottleTimeout);
                credentialCopy.zeroize();
            }

            @Override // android.os.AsyncTask
            protected void onCancelled() {
                Slog.d("checkPattern", "checkPattern.onCancelled");
                callback.onCancelled();
                credentialCopy.zeroize();
            }
        };
        task.executeOnExecutor(Executors.newCachedThreadPool(new ThreadFactory() { // from class: com.android.internal.widget.LockPatternChecker.3
            private final AtomicInteger mCount = new AtomicInteger(1);

            @Override // java.util.concurrent.ThreadFactory
            public Thread newThread(Runnable r) {
                Slog.d("checkPattern", "executeOnExecutor.ThreadFactory");
                Thread thread = new Thread(r, "LockPatternChecker-checkPattern #" + this.mCount.getAndIncrement());
                thread.setPriority(9);
                return thread;
            }
        }), new Void[0]);
        return task;
    }

    public static AsyncTask<?, ?, ?> verifyTiedProfileChallenge(final LockPatternUtils utils, LockscreenCredential credential, final int userId, final int flags, final OnVerifyCallback callback) {
        final LockscreenCredential credentialCopy = credential.duplicate();
        AsyncTask<Void, Void, VerifyCredentialResponse> task = new AsyncTask<Void, Void, VerifyCredentialResponse>() { // from class: com.android.internal.widget.LockPatternChecker.4
            /* JADX INFO: Access modifiers changed from: protected */
            @Override // android.os.AsyncTask
            public VerifyCredentialResponse doInBackground(Void... args) {
                return utils.verifyTiedProfileChallenge(credentialCopy, userId, flags);
            }

            /* JADX INFO: Access modifiers changed from: protected */
            @Override // android.os.AsyncTask
            public void onPostExecute(VerifyCredentialResponse response) {
                callback.onVerified(response, response.getTimeout());
                credentialCopy.zeroize();
            }

            @Override // android.os.AsyncTask
            protected void onCancelled() {
                credentialCopy.zeroize();
            }
        };
        task.execute(new Void[0]);
        return task;
    }
}
