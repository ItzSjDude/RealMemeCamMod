package com.oplus.tingle.ipc;

import android.app.Application;
import android.content.Context;
import android.content.pm.IPackageInstaller;
import android.content.pm.PackageInstaller;
import android.os.IBinder;
import android.os.IInterface;
import android.os.Parcel;
import android.os.RemoteException;
import com.android.tools.r8.annotations.SynthesizedClassMap;
import com.oplus.compatsdk.annotation.OplusCompatibleMethod;
import com.oplus.inner.content.pm.PackageInstallerWrapper;
import com.oplus.tingle.ipc.serviceproxy.CommonServiceProxy;
import com.oplus.tingle.ipc.serviceproxy.ISystemServiceProxy;
import com.oplus.tingle.ipc.serviceproxy.app.ActivityManagerProxy;
import com.oplus.tingle.ipc.serviceproxy.app.NotificationManagerProxy;
import com.oplus.tingle.ipc.serviceproxy.inner.WindowManagerInnerProxy;
import com.oplus.tingle.ipc.serviceproxy.net.wifi.WifiManagerProxy;
import com.oplus.tingle.ipc.serviceproxy.pm.PackageManagerProxy;
import com.oplus.tingle.ipc.serviceproxy.view.WindowManagerProxy;
import com.oplus.tingle.ipc.utils.Logger;
import com.oplus.tingle.ipc.utils.VersionUtils;
import java.util.List;
import java.util.concurrent.CopyOnWriteArrayList;
import mirror.android.pm.PackageInstaller;
/* loaded from: classes.dex */
public class Slave {
    private static final String TAG = "Slave";
    private static Application mApp;
    private static IBinder sMaster;
    private static List<ISystemServiceProxy> sProxy = new CopyOnWriteArrayList();

    @OplusCompatibleMethod
    private static Object getPackageInstallerCompat(PackageInstaller packageInstaller) {
        return null;
    }

    @OplusCompatibleMethod
    private static Object getSessionCompat(PackageInstaller.Session session) {
        return null;
    }

    @OplusCompatibleMethod
    private static void setPackageInstallerCompat(PackageInstaller packageInstaller, SlaveBinder slaveBinder) {
    }

    @OplusCompatibleMethod
    private static void setSessionCompat(PackageInstaller.Session session, SlaveBinder slaveBinder) {
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static void attach(Context context) {
        if (context instanceof Application) {
            mApp = (Application) context;
        } else {
            mApp = (Application) context.getApplicationContext();
        }
        prepareSystemServiceProxy();
    }

    private static void prepareSystemServiceProxy() {
        sProxy.add(new ActivityManagerProxy());
        sProxy.add(new PackageManagerProxy());
        sProxy.add(new NotificationManagerProxy());
        sProxy.add(new WindowManagerProxy());
        sProxy.add(new WifiManagerProxy());
        sProxy.add(new WindowManagerInnerProxy());
    }

    public static Object getSystemService(Context context, String str) {
        if (!pingBinder() && !getMaster(context)) {
            Logger.e(TAG, "Error : Slave cannot connect master.", new Object[0]);
            return context.getSystemService(str);
        }
        for (ISystemServiceProxy iSystemServiceProxy : sProxy) {
            if (iSystemServiceProxy.canHandle(str)) {
                return iSystemServiceProxy.getSystemService(context);
            }
        }
        return createNewCommonProxy(str).getSystemService(context);
    }

    public static void cleanSystemService(Context context, String str) {
        if (!pingBinder() && !getMaster(context)) {
            Logger.e(TAG, "Error : Slave cannot connect master.", new Object[0]);
            return;
        }
        for (ISystemServiceProxy iSystemServiceProxy : sProxy) {
            if (iSystemServiceProxy.canHandle(str)) {
                iSystemServiceProxy.cleanSystemService(context);
                return;
            }
        }
        createNewCommonProxy(str).cleanSystemService(context);
    }

    public static void resetBinderOrigin(Context context, String str) {
        for (ISystemServiceProxy iSystemServiceProxy : sProxy) {
            if (iSystemServiceProxy.canHandle(str)) {
                iSystemServiceProxy.resetBinderOrigin(context);
                return;
            }
        }
    }

    private static synchronized CommonServiceProxy createNewCommonProxy(String str) {
        CommonServiceProxy commonServiceProxy;
        synchronized (Slave.class) {
            commonServiceProxy = new CommonServiceProxy(str);
            sProxy.add(commonServiceProxy);
        }
        return commonServiceProxy;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static void transactRemote(Parcel parcel, Parcel parcel2, int i) throws RemoteException {
        requireMaster().transact(1, parcel, parcel2, i);
    }

    private static IBinder requireMaster() {
        if (sMaster == null && !getMaster(mApp)) {
            throw new IllegalStateException("Can not find master... Try again");
        }
        return sMaster;
    }

    public static boolean pingBinder() {
        if (sMaster == null) {
            return false;
        }
        return sMaster.pingBinder();
    }

    private static boolean getMaster(Context context) {
        IBinder masterIBinder = Engine.getMasterIBinder(context);
        if (masterIBinder != null) {
            try {
                masterIBinder.linkToDeath(new IBinder.DeathRecipient() { // from class: com.oplus.tingle.ipc.-$$Lambda$Slave$mgHg_c2vKLlO_W5vEpkkgf-XXiI
                    @Override // android.os.IBinder.DeathRecipient
                    public final void binderDied() {
                        Slave.lambda$getMaster$0();
                    }
                }, 0);
            } catch (RemoteException e) {
                Logger.e(TAG, "GetMaster linkToDeath Error : " + e, new Object[0]);
            }
            sMaster = masterIBinder;
        } else {
            sMaster = null;
            Logger.e(TAG, "Get Binder is null, reset sMaster = null.", new Object[0]);
        }
        return sMaster != null;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static /* synthetic */ void lambda$getMaster$0() {
        sMaster = null;
        Logger.e(TAG, "sMaster binder died.", new Object[0]);
    }

    public static boolean preparePackageInstaller(Context context) {
        try {
        } catch (Exception e) {
            Logger.e(TAG, "preparePackageInstaller failed:" + e.toString(), new Object[0]);
        }
        if (!pingBinder() && !getMaster(context)) {
            Logger.e(TAG, "Error : Slave cannot connect master.", new Object[0]);
            return false;
        }
        PackageInstaller packageInstaller = context.getPackageManager().getPackageInstaller();
        IInterface packageInstaller2 = getPackageInstaller(packageInstaller);
        if (packageInstaller2.asBinder() instanceof SlaveBinder) {
            return true;
        }
        SlaveBinder slaveBinder = new SlaveBinder(packageInstaller2.asBinder());
        if (!slaveBinder.pingBinder()) {
            Logger.e(TAG, "Error : SlaveBinder pingBinder failed.", new Object[0]);
            return false;
        }
        setPackageInstaller(packageInstaller, slaveBinder);
        return false;
    }

    public static boolean preparePackageInstallerSession(PackageInstaller.Session session) {
        try {
        } catch (Exception e) {
            Logger.e(TAG, "preparePackageInstallerSession failed:" + e.toString(), new Object[0]);
        }
        if (!pingBinder()) {
            Logger.e(TAG, "Error : Slave cannot connect master.", new Object[0]);
            return false;
        }
        IInterface session2 = getSession(session);
        if (session2.asBinder() instanceof SlaveBinder) {
            return true;
        }
        SlaveBinder slaveBinder = new SlaveBinder(session2.asBinder());
        if (!slaveBinder.pingBinder()) {
            Logger.e(TAG, "Error : SlaveBinder pingBinder failed.", new Object[0]);
            return false;
        }
        setSession(session, slaveBinder);
        return false;
    }

    private static IInterface getPackageInstaller(PackageInstaller packageInstaller) {
        if (VersionUtils.isS()) {
            return mirror.android.pm.PackageInstaller.mInstaller.get(packageInstaller);
        }
        if (VersionUtils.isOsVersion11_3()) {
            return PackageInstallerWrapper.getPackageInstaller(packageInstaller);
        }
        return (IInterface) getPackageInstallerCompat(packageInstaller);
    }

    private static void setPackageInstaller(PackageInstaller packageInstaller, SlaveBinder slaveBinder) {
        if (VersionUtils.isS()) {
            mirror.android.pm.PackageInstaller.mInstaller.set(packageInstaller, IPackageInstaller.Stub.asInterface(slaveBinder));
        } else if (VersionUtils.isOsVersion11_3()) {
            PackageInstallerWrapper.setPackageInstaller(packageInstaller, slaveBinder);
        } else {
            setPackageInstallerCompat(packageInstaller, slaveBinder);
        }
    }

    private static IInterface getSession(PackageInstaller.Session session) {
        if (VersionUtils.isS()) {
            return PackageInstaller.Session.getSession(session);
        }
        if (VersionUtils.isOsVersion11_3()) {
            return PackageInstallerWrapper.SessionWrapper.getSession(session);
        }
        return (IInterface) getSessionCompat(session);
    }

    private static void setSession(PackageInstaller.Session session, SlaveBinder slaveBinder) {
        if (VersionUtils.isS()) {
            PackageInstaller.Session.setSession(session, slaveBinder);
        } else if (VersionUtils.isOsVersion11_3()) {
            PackageInstallerWrapper.SessionWrapper.setSession(session, slaveBinder);
        } else {
            setSessionCompat(session, slaveBinder);
        }
    }
}
