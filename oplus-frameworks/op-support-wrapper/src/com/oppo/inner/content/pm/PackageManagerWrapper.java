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
// import android.content.res.IUxIconPackageManagerExt;
import android.graphics.drawable.Drawable;
import android.os.RemoteException;
import android.os.UserHandle;
import android.os.storage.VolumeInfo;
import android.util.Log;
import com.oppo.inner.os.storage.VolumeInfoWrapper;
import java.lang.reflect.Field;
import java.lang.reflect.InvocationTargetException;
import java.lang.reflect.Method;
import java.util.List;

/* loaded from: classes.dex */
public class PackageManagerWrapper {
    public static final int FLAG_PERMISSION_REVIEW_REQUIRED = 64;
    public static final int INSTALL_FAILED_INVALID_URI = -3;
    public static final int INSTALL_REPLACE_EXISTING = 2;
    public static final int OPLUS_UNFREEZE_FLAG_NORMAL = 1;
    public static final int STATE_OPLUS_FREEZE_FREEZED = 2;
    private static final String TAG = "PackageManagerWrapper";

    public interface IPackageDataObserverWrapper {
        void onRemoveCompleted(String str, boolean z);
    }

    public interface IPackageDeleteObserverWrapper {
        void packageDeleted(String str, int i);
    }

    public interface IPackageStatsObserverWrapper {
        void onGetStatsCompleted(PackageStats packageStats, boolean z);
    }

    public static void deletePackageAsUser(Context ctx, String packageName, final IPackageDeleteObserverWrapper observer, int flags, int userId) {
        IPackageDeleteObserver iPackageDeleteObserver = null;
        if (observer != null) {
            iPackageDeleteObserver = new IPackageDeleteObserver.Stub() { // from class: com.oppo.inner.content.pm.PackageManagerWrapper.1
                public void packageDeleted(String packageName2, int returnCode) {
                    observer.packageDeleted(packageName2, returnCode);
                }
            };
        }
        try {
            ctx.getPackageManager().deletePackageAsUser(packageName, iPackageDeleteObserver, flags, userId);
        } catch (Throwable e) {
            Log.e(TAG, e.toString());
        }
    }

    public static void deletePackage(Context ctx, String packageName, final IPackageDeleteObserverWrapper observer, int flags) {
        IPackageDeleteObserver iPackageDeleteObserver = null;
        if (observer != null) {
            iPackageDeleteObserver = new IPackageDeleteObserver.Stub() { // from class: com.oppo.inner.content.pm.PackageManagerWrapper.2
                public void packageDeleted(String packageName2, int returnCode) {
                    observer.packageDeleted(packageName2, returnCode);
                }
            };
        }
        try {
            ctx.getPackageManager().deletePackage(packageName, iPackageDeleteObserver, flags);
        } catch (Throwable e) {
            Log.e(TAG, e.toString());
        }
    }

    public static int movePackage(PackageManager pm, String packageName, VolumeInfoWrapper volumeInfoWrapper) throws NoSuchFieldException {
        try {
            Field field = volumeInfoWrapper.getClass().getDeclaredField("mVolumeInfo");
            field.setAccessible(true);
            return pm.movePackage(packageName, (VolumeInfo) field.get(volumeInfoWrapper));
        } catch (Exception e) {
            Log.e(TAG, e.toString());
            return 0;
        }
    }

    public static void grantRuntimePermission(PackageManager pm, String packageName, String permissionName, UserHandle user) {
        try {
            pm.grantRuntimePermission(packageName, permissionName, user);
        } catch (Throwable e) {
            Log.e(TAG, e.toString());
        }
    }

    public static int installExistingPackageAsUser(String packageName, int installReason, int userId) throws PackageManager.NameNotFoundException {
        try {
            IPackageManager mPM = ActivityThread.getPackageManager();
            int res = mPM.installExistingPackageAsUser(packageName, userId, 4194304, installReason, (List) null);
            if (res == -3) {
                throw new PackageManager.NameNotFoundException("Package " + packageName + " doesn't exist");
            }
            return res;
        } catch (RemoteException e) {
            throw e.rethrowFromSystemServer();
        }
    }

    public static List<ApplicationInfo> getInstalledApplicationsAsUser(PackageManager pm, int flags, int userId) {
        return pm.getInstalledApplicationsAsUser(flags, userId);
    }

    public static void deleteApplicationCacheFiles(Context ctx, String packageName, final IPackageDataObserverWrapper observerWrapper) {
        IPackageDataObserver iPackageDataObserver = null;
        if (observerWrapper != null) {
            iPackageDataObserver = new IPackageDataObserver.Stub() { // from class: com.oppo.inner.content.pm.PackageManagerWrapper.3
                public void onRemoveCompleted(String packageName2, boolean succeeded) {
                    observerWrapper.onRemoveCompleted(packageName2, succeeded);
                }
            };
        }
        try {
            ctx.getPackageManager().deleteApplicationCacheFiles(packageName, iPackageDataObserver);
        } catch (Throwable e) {
            Log.e(TAG, e.toString());
        }
    }

    public static void deleteApplicationCacheFilesAsUser(Context ctx, String packageName, int userId, final IPackageDataObserverWrapper observerWrapper) {
        IPackageDataObserver iPackageDataObserver = null;
        if (observerWrapper != null) {
            iPackageDataObserver = new IPackageDataObserver.Stub() { // from class: com.oppo.inner.content.pm.PackageManagerWrapper.4
                public void onRemoveCompleted(String packageName2, boolean succeeded) {
                    observerWrapper.onRemoveCompleted(packageName2, succeeded);
                }
            };
        }
        try {
            ctx.getPackageManager().deleteApplicationCacheFilesAsUser(packageName, userId, iPackageDataObserver);
        } catch (Throwable e) {
            Log.e(TAG, e.toString());
        }
    }

    private PackageManagerWrapper() {
    }

    public static void getPackageSizeInfo(PackageManager pm, String packageName, final IPackageStatsObserverWrapper observer) {
        IPackageStatsObserver iPackageStatsObserver = null;
        if (observer != null) {
            try {
                iPackageStatsObserver = new IPackageStatsObserver.Stub() { // from class: com.oppo.inner.content.pm.PackageManagerWrapper.5
                    public void onGetStatsCompleted(PackageStats stats, boolean succeeded) {
                        observer.onGetStatsCompleted(stats, succeeded);
                    }
                };
            } catch (Throwable e) {
                Log.e(TAG, e.toString());
                return;
            }
        }
        pm.getPackageSizeInfo(packageName, iPackageStatsObserver);
    }

    public static ComponentName getHomeActivities(PackageManager pm, List<ResolveInfo> outActivities) {
        try {
            ComponentName result = pm.getHomeActivities(outActivities);
            return result;
        } catch (Throwable e) {
            Log.e(TAG, e.toString());
            return null;
        }
    }

    public static void clearCachedIconForActivity(PackageManager pm, ComponentName activityName) {
        // commented out
    }

    public static Drawable getUxIconDrawable(PackageManager pm, Drawable src, boolean isForegroundDrawable) {
        return src;
    }

    public static Drawable getUxIconDrawable(PackageManager pm, String packageName, Drawable src, boolean isForegroundDrawable) {
        return src;
    }

    private static Object callMethodByReflect(Object object, String methodName, Class<?>[] paramTypes, Object[] args) throws NoSuchMethodException, SecurityException {
        Class clazz = object.getClass();
        try {
            Method method = clazz.getMethod(methodName, paramTypes);
            method.setAccessible(true);
            return method.invoke(object, args);
        } catch (IllegalAccessException e) {
            e.printStackTrace();
            return null;
        } catch (NoSuchMethodException e2) {
            e2.printStackTrace();
            return null;
        } catch (InvocationTargetException e3) {
            e3.printStackTrace();
            return null;
        }
    }
}
