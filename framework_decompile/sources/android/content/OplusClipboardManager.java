package android.content;

import android.content.IClipboard;
import android.content.IOplusClipboardManager;
import android.os.IBinder;
import android.os.RemoteException;
import android.os.ServiceManager;
import android.util.Singleton;
import android.util.Slog;
import java.util.Map;

/* loaded from: classes.dex */
public class OplusClipboardManager {
    private static final Singleton<IOplusClipboardManager> IOplusClipboardManagerSingleton = new Singleton<IOplusClipboardManager>() { // from class: android.content.OplusClipboardManager.1
        /* JADX INFO: Access modifiers changed from: protected */
        /* JADX WARN: Can't rename method to resolve collision */
        @Override // android.util.Singleton
        public IOplusClipboardManager create() {
            try {
                IClipboard clipboard = IClipboard.Stub.asInterface(ServiceManager.getServiceOrThrow("clipboard"));
                IBinder b = clipboard.asBinder().getExtension();
                Slog.d(OplusClipboardManager.TAG, "get clip extension: " + b);
                return IOplusClipboardManager.Stub.asInterface(b);
            } catch (Exception e) {
                Slog.e(OplusClipboardManager.TAG, "create OplusClipboardServiceEnhance singleton failed: " + e.getMessage());
                return null;
            }
        }
    };
    private static final String TAG = "OplusClipboardManager";

    private static IOplusClipboardManager getService() {
        return IOplusClipboardManagerSingleton.get();
    }

    public static ClipData getUserPrimaryClip(String pkg, int userId) {
        if (getService() != null) {
            try {
                return getService().getUserPrimaryClip(pkg, userId);
            } catch (RemoteException e) {
                e.printStackTrace();
                return null;
            }
        }
        Slog.w(TAG, "getUserPrimaryClip failed because service has not been created");
        return null;
    }

    public static Map<String, String> getUserPathInfo() {
        if (getService() != null) {
            try {
                return getService().getUserPathInfo();
            } catch (RemoteException e) {
                e.printStackTrace();
                return null;
            }
        }
        Slog.w(TAG, "getUserPathInfo failed because service has not been created");
        return null;
    }
}
