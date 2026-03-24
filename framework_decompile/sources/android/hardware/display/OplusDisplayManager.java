package android.hardware.display;

import android.content.Context;
import android.hardware.display.IDisplayManager;
import android.hardware.display.IOplusDisplayManager;
import android.os.IBinder;
import android.os.RemoteException;
import android.os.ServiceManager;
import android.util.Log;
import android.util.Singleton;

/* loaded from: classes.dex */
public class OplusDisplayManager {
    private static final Singleton<IOplusDisplayManager> IOplusDisplayManagerSingleton = new Singleton<IOplusDisplayManager>() { // from class: android.hardware.display.OplusDisplayManager.1
        /* JADX INFO: Access modifiers changed from: protected */
        /* JADX WARN: Can't rename method to resolve collision */
        @Override // android.util.Singleton
        public IOplusDisplayManager create() {
            try {
                IBinder b = ServiceManager.getService(Context.DISPLAY_SERVICE);
                IDisplayManager dm = IDisplayManager.Stub.asInterface(b);
                IBinder extbinder = dm.asBinder().getExtension();
                return IOplusDisplayManager.Stub.asInterface(extbinder);
            } catch (RemoteException e) {
                Log.e(OplusDisplayManager.TAG, "create OplusDisplayManagerServiceEnhance singleton failed: " + e.getMessage());
                return null;
            }
        }
    };
    private static final String TAG = "OplusDisplayManager";

    private static IOplusDisplayManager getService() {
        return IOplusDisplayManagerSingleton.get();
    }

    private static class LazyHolder {
        private static final OplusDisplayManager INSTANCE = new OplusDisplayManager();

        private LazyHolder() {
        }
    }

    public static OplusDisplayManager getInstance() {
        return LazyHolder.INSTANCE;
    }

    public void setSpecBrightness(int gear, String reason, int rate) {
        try {
            IOplusDisplayManager service = getService();
            if (service != null) {
                service.setSpecBrightness(gear, reason, rate);
            }
        } catch (RemoteException e) {
            Log.e(TAG, "setSpecBrightness error: " + e.getMessage());
        }
    }
}
