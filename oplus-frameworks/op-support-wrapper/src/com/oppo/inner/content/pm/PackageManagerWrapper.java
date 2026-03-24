package com.oppo.inner.content.pm;

import android.app.ActivityThread;
import android.content.ComponentName;
import android.content.Context;
import android.content.pm.ApplicationInfo;
import android.content.pm.IPackageDataObserver;
import android.content.pm.IPackageDeleteObserver;
import android.content.pm.IPackageManager;
import android.content.pm.IPackageStatsObserver;
import android.content.pm.PackageManager;
import android.content.pm.PackageStats;
import android.content.pm.ResolveInfo;
import android.content.res.IUxIconPackageManagerExt;
import android.graphics.drawable.Drawable;
import android.os.RemoteException;
import android.os.UserHandle;
import android.os.storage.VolumeInfo;
import android.util.Log;
import com.oplus.inner.os.storage.VolumeInfoWrapper;
import java.lang.reflect.Field;
import java.lang.reflect.InvocationTargetException;
import java.lang.reflect.Method;
import java.util.List;
import com.oplus.inner.content.pm.PackageManagerWrapper;

public class PackageManagerWrapper {
    public static void deletePackageAsUser(Context ctx, String packageName, final IPackageDeleteObserverWrapper observer, int flags, int userId) {
        PackageManagerWrapper.deletePackageAsUser(ctx, packageName, observer, flags, userId);
    }

    public static void deletePackage(Context ctx, String packageName, final IPackageDeleteObserverWrapper observer, int flags) {
        PackageManagerWrapper.deletePackage(ctx, packageName, observer, flags);
    }

    public static int movePackage(PackageManager pm, String packageName, VolumeInfoWrapper volumeInfoWrapper) {
        return PackageManagerWrapper.movePackage(pm, packageName, volumeInfoWrapper);
    }

    public static void grantRuntimePermission(PackageManager pm, String packageName, String permissionName, UserHandle user) {
        PackageManagerWrapper.grantRuntimePermission(pm, packageName, permissionName, user);
    }

    public static int installExistingPackageAsUser(String packageName, int installReason, int userId) {
        return PackageManagerWrapper.installExistingPackageAsUser(packageName, installReason, userId);
    }

    public static List<ApplicationInfo> getInstalledApplicationsAsUser(PackageManager pm, int flags, int userId) {
        return PackageManagerWrapper.getInstalledApplicationsAsUser(pm, flags, userId);
    }

    public static void deleteApplicationCacheFiles(Context ctx, String packageName, final IPackageDataObserverWrapper observerWrapper) {
        PackageManagerWrapper.deleteApplicationCacheFiles(ctx, packageName, observerWrapper);
    }

    public static void deleteApplicationCacheFilesAsUser(Context ctx, String packageName, int userId, final IPackageDataObserverWrapper observerWrapper) {
        PackageManagerWrapper.deleteApplicationCacheFilesAsUser(ctx, packageName, userId, observerWrapper);
    }

    public static void getPackageSizeInfo(PackageManager pm, String packageName, final IPackageStatsObserverWrapper observer) {
        PackageManagerWrapper.getPackageSizeInfo(pm, packageName, observer);
    }

    public static ComponentName getHomeActivities(PackageManager pm, List<ResolveInfo> outActivities) {
        return PackageManagerWrapper.getHomeActivities(pm, outActivities);
    }

    public static void clearCachedIconForActivity(PackageManager pm, ComponentName activityName) {
        PackageManagerWrapper.clearCachedIconForActivity(pm, activityName);
    }

    public static Drawable getUxIconDrawable(PackageManager pm, Drawable src, boolean isForegroundDrawable) {
        return PackageManagerWrapper.getUxIconDrawable(pm, src, isForegroundDrawable);
    }

    public static Drawable getUxIconDrawable(PackageManager pm, String packageName, Drawable src, boolean isForegroundDrawable) {
        return PackageManagerWrapper.getUxIconDrawable(pm, packageName, src, isForegroundDrawable);
    }

}