package com.oplus.epona.ipc.local;

import android.content.Context;
import android.os.Bundle;
import android.os.IBinder;
import android.os.RemoteException;
import com.android.tools.r8.annotations.SynthesizedClassMap;
import com.oplus.epona.Constants;
import com.oplus.epona.Epona;
import com.oplus.epona.ipc.remote.Dispatcher;
import com.oplus.epona.utils.Logger;
import com.oplus.epona.utils.ProviderUtils;
import java.util.HashMap;
import java.util.Map;
@SynthesizedClassMap({$$Lambda$DefaultTransferController$iQaOQeA8ODA3YlGPUXg1M8DkhL4.class})
/* loaded from: classes.dex */
public class DefaultTransferController implements RemoteTransferController {
    private static final String TAG = "DefaultTransferController";
    private final Map<String, IBinder> mBinderCache = new HashMap();

    @Override // com.oplus.epona.ipc.local.RemoteTransferController
    public void register(String str, String str2, IBinder iBinder) {
        boolean z;
        if (!dispatcherProviderExist()) {
            Logger.d(TAG, "DispatcherProvider is not exist", new Object[0]);
            return;
        }
        Context context = Epona.getContext();
        if ("com.oplus.appplatform".equals(context.getPackageName())) {
            z = Dispatcher.getInstance().registerRemoteTransfer(str, iBinder, "com.oplus.appplatform");
        } else {
            Bundle bundle = new Bundle();
            bundle.putString(Constants.TRANSFER_KEY, str);
            bundle.putBinder(Constants.TRANSFER_VALUE, iBinder);
            Bundle call = context.getContentResolver().call(Constants.DISPATCHER_PROVIDER_URI, Constants.REGISTER_TRANSFER, (String) null, bundle);
            z = call != null ? call.getBoolean(Constants.REGISTER_TRANSFER_RESULT_KEY) : false;
        }
        if (z) {
            return;
        }
        Logger.w(TAG, "Register " + str + "==>" + str2 + " failed for \"" + str + "\" is already registered", new Object[0]);
    }

    @Override // com.oplus.epona.ipc.local.RemoteTransferController
    public IBinder fetch(final String str) {
        IBinder iBinder = this.mBinderCache.get(str);
        if (iBinder == null) {
            Context context = Epona.getContext();
            if ("com.oplus.appplatform".equals(context.getPackageName())) {
                iBinder = Dispatcher.getInstance().findRemoteTransfer(str);
            } else {
                Bundle findRemoteBundle = ProviderUtils.findRemoteBundle(context, str);
                if (findRemoteBundle != null) {
                    iBinder = findRemoteBundle.getBinder(Constants.TRANSFER_VALUE);
                }
            }
            if (iBinder != null) {
                this.mBinderCache.put(str, iBinder);
                try {
                    iBinder.linkToDeath(new IBinder.DeathRecipient() { // from class: com.oplus.epona.ipc.local.-$$Lambda$DefaultTransferController$iQaOQeA8ODA3YlGPUXg1M8DkhL4
                        @Override // android.os.IBinder.DeathRecipient
                        public final void binderDied() {
                            DefaultTransferController.this.mBinderCache.remove(str);
                        }
                    }, 0);
                } catch (RemoteException e) {
                    Logger.w(TAG, e.toString(), new Object[0]);
                }
            } else {
                Logger.e(TAG, "Get remote binder null. ComponentName : %s", str);
            }
        }
        return iBinder;
    }

    public String remoteSnapshot() {
        Bundle call;
        if (dispatcherProviderExist() && (call = Epona.getContext().getContentResolver().call(Constants.DISPATCHER_PROVIDER_URI, Constants.REMOTE_SNAPSHOT, (String) null, (Bundle) null)) != null) {
            return call.getString(Constants.REMOTE_SNAPSHOT_KEY);
        }
        return null;
    }

    private boolean dispatcherProviderExist() {
        Context context = Epona.getContext();
        return (context == null || context.getPackageManager().resolveContentProvider(Constants.DISPATCHER_PROVIDER_URI, 131072) == null) ? false : true;
    }
}
