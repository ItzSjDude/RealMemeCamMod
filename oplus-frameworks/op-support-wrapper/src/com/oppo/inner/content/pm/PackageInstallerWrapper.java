package com.oppo.inner.content.pm;

import android.content.pm.IPackageInstaller;
import android.content.pm.IPackageInstallerSession;
import android.content.pm.PackageInstaller;
import android.os.IBinder;
import android.os.IInterface;
import com.oplus.internal.reflect.RefClass;
import com.oplus.internal.reflect.RefObject;

/* loaded from: classes.dex */
public class PackageInstallerWrapper {
    private static Class<?> TYPE = RefClass.load(PackageInstallerWrapper.class, PackageInstaller.class);
    public static RefObject<IInterface> mInstaller;

    private PackageInstallerWrapper() {
    }

    public static void setPackageInstaller(PackageInstaller installer, IBinder binder) {
        mInstaller.set(installer, IPackageInstaller.Stub.asInterface(binder));
    }

    public static IInterface getPackageInstaller(PackageInstaller installer) {
        return (IInterface) mInstaller.get(installer);
    }

    public static class SessionWrapper {
        private static Class<?> TYPE = RefClass.load(SessionWrapper.class, PackageInstaller.Session.class);
        public static RefObject<IInterface> mSession;

        public static void setSession(PackageInstaller.Session session, IBinder binder) {
            mSession.set(session, IPackageInstallerSession.Stub.asInterface(binder));
        }

        public static IInterface getSession(PackageInstaller.Session session) {
            return (IInterface) mSession.get(session);
        }
    }
}
