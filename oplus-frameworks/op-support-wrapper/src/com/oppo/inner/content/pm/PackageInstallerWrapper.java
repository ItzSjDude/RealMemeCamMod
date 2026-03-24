package com.oppo.inner.content.pm;

import android.content.pm.IPackageInstaller;
import android.content.pm.IPackageInstallerSession;
import android.content.pm.PackageInstaller;
import android.os.IBinder;
import android.os.IInterface;
import com.oplus.internal.reflect.RefClass;
import com.oplus.internal.reflect.RefObject;
import com.oplus.inner.content.pm.PackageInstallerWrapper;

public class PackageInstallerWrapper {
    public static void setPackageInstaller(PackageInstaller installer, IBinder binder) {
        PackageInstallerWrapper.setPackageInstaller(installer, binder);
    }

    public static IInterface getPackageInstaller(PackageInstaller installer) {
        return PackageInstallerWrapper.getPackageInstaller(installer);
    }

    public static void setSession(PackageInstaller.Session session, IBinder binder) {
        PackageInstallerWrapper.setSession(session, binder);
    }

    public static IInterface getSession(PackageInstaller.Session session) {
        return PackageInstallerWrapper.getSession(session);
    }

}