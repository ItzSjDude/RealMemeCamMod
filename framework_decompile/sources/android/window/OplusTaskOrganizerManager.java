package android.window;

import android.os.Binder;
import android.os.IBinder;
import android.os.IInterface;
import android.os.RemoteException;
import android.util.Log;
import android.util.Slog;
import android.window.IOplusTaskOrganizer;

/* loaded from: classes4.dex */
public class OplusTaskOrganizerManager {
    private static final String TAG = "OplusTaskOrganizerManager";
    private static IOplusTaskOrganizer sInstance;
    private static IInterface sOrganizer;

    public static IOplusTaskOrganizer getService(IInterface organizer) {
        if (organizer == null) {
            return null;
        }
        synchronized (OplusTaskOrganizerManager.class) {
            if (sOrganizer != organizer) {
                try {
                    sInstance = IOplusTaskOrganizer.Stub.asInterface(organizer.asBinder().getExtension());
                    sOrganizer = organizer;
                } catch (RemoteException e) {
                    sOrganizer = null;
                    Slog.d(TAG, "getService failed.", e);
                }
            }
        }
        return sInstance;
    }

    public static void updateStartingWindowExtendedInfo(IInterface organizer, OplusStartingWindowExtendedInfo info, IBinder appToken) {
        IOplusTaskOrganizer service = getService(organizer);
        if (service == null) {
            Log.d(TAG, "updateStartingWindowExtendedInfo: get service failed!");
            return;
        }
        long token = Binder.clearCallingIdentity();
        try {
            try {
                service.updateStartingWindowExtendedInfo(info, appToken);
            } catch (RemoteException e) {
                Log.d(TAG, "updateStartingWindowExtendedInfo failed " + e);
            }
        } finally {
            Binder.restoreCallingIdentity(token);
        }
    }
}
