package android.view.inputmethod;

import android.graphics.Rect;
import android.os.Bundle;
import android.os.RemoteException;
import android.util.Log;
import com.android.internal.view.IInputContext;
import com.android.internal.view.IInputMethodSession;

/* loaded from: classes2.dex */
final class InputMethodSessionWrapper {
    private static final String TAG = "InputMethodSessionWrapper";
    private final IInputMethodSession mSession;

    private InputMethodSessionWrapper(IInputMethodSession inputMethodSession) {
        this.mSession = inputMethodSession;
    }

    public static InputMethodSessionWrapper createOrNull(IInputMethodSession inputMethodSession) {
        if (inputMethodSession != null) {
            return new InputMethodSessionWrapper(inputMethodSession);
        }
        return null;
    }

    void finishInput() {
        try {
            this.mSession.finishInput();
        } catch (RemoteException e) {
            Log.w(TAG, "IME died", e);
        }
    }

    void updateCursorAnchorInfo(CursorAnchorInfo cursorAnchorInfo) {
        try {
            this.mSession.updateCursorAnchorInfo(cursorAnchorInfo);
        } catch (RemoteException e) {
            Log.w(TAG, "IME died", e);
        }
    }

    void displayCompletions(CompletionInfo[] completions) {
        try {
            this.mSession.displayCompletions(completions);
        } catch (RemoteException e) {
            Log.w(TAG, "IME died", e);
        }
    }

    void updateExtractedText(int token, ExtractedText text) {
        try {
            this.mSession.updateExtractedText(token, text);
        } catch (RemoteException e) {
            Log.w(TAG, "IME died", e);
        }
    }

    void appPrivateCommand(String action, Bundle data) {
        try {
            this.mSession.appPrivateCommand(action, data);
        } catch (RemoteException e) {
            Log.w(TAG, "IME died", e);
        }
    }

    void viewClicked(boolean focusChanged) {
        try {
            this.mSession.viewClicked(focusChanged);
        } catch (RemoteException e) {
            Log.w(TAG, "IME died", e);
        }
    }

    void updateCursor(Rect newCursor) {
        try {
            this.mSession.updateCursor(newCursor);
        } catch (RemoteException e) {
            Log.w(TAG, "IME died", e);
        }
    }

    void updateSelection(int oldSelStart, int oldSelEnd, int selStart, int selEnd, int candidatesStart, int candidatesEnd) {
        try {
            this.mSession.updateSelection(oldSelStart, oldSelEnd, selStart, selEnd, candidatesStart, candidatesEnd);
        } catch (RemoteException e) {
            Log.w(TAG, "IME died", e);
        }
    }

    void invalidateInput(EditorInfo editorInfo, IInputContext inputContext, int sessionId) {
        try {
            this.mSession.invalidateInput(editorInfo, inputContext, sessionId);
        } catch (RemoteException e) {
            Log.w(TAG, "IME died", e);
        }
    }

    public String toString() {
        return this.mSession.toString();
    }
}
