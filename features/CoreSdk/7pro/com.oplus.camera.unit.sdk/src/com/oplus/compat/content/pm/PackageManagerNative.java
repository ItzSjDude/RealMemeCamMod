package com.oplus.compat.content.pm;

import android.app.ActivityThread;
import android.content.ComponentName;
import android.content.Context;
import android.content.Intent;
import android.content.pm.IPackageDataObserver;
import android.content.pm.IPackageDeleteObserver;
import android.content.pm.PackageInfo;
import android.content.pm.PackageManager;
import android.content.pm.PackageStats;
import android.content.pm.ResolveInfo;
import android.graphics.drawable.Drawable;
import android.os.Binder;
import android.os.Bundle;
import android.os.RemoteException;
import android.os.UserHandle;
import android.os.storage.VolumeInfo;
import android.util.Log;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.annotation.RequiresApi;
import com.android.tools.r8.annotations.SynthesizedClassMap;
import com.oplus.compat.annotation.Blocked;
import com.oplus.compat.annotation.Grey;
import com.oplus.compat.annotation.Oem;
import com.oplus.compat.annotation.Permission;
import com.oplus.compat.annotation.System;
import com.oplus.compat.os.storage.VolumeInfoNative;
import com.oplus.compat.utils.util.UnSupportedApiVersionException;
import com.oplus.compat.utils.util.VersionUtils;
import com.oplus.compatsdk.annotation.OplusCompatibleMethod;
import com.oplus.epona.Call;
import com.oplus.epona.Epona;
import com.oplus.epona.Request;
import com.oplus.epona.Response;
import com.oplus.inner.content.pm.PackageManagerWrapper;
import com.oplus.inner.os.storage.VolumeInfoWrapper;
import com.oplus.ocs.camera.common.util.ApsConstant;
import com.oplus.utils.reflect.MethodName;
import com.oplus.utils.reflect.RefClass;
import com.oplus.utils.reflect.RefMethod;
import com.oplus.utils.reflect.RefObject;
import java.util.List;
import java.util.Objects;
import java.util.function.BiConsumer;
@SynthesizedClassMap({$$Lambda$dun2r02xgHguEDq4suUiVDO5LA.class, $$Lambda$swNKNoeLQNCK1VBDgMt0Xnc3qM.class})
/* loaded from: classes.dex */
public class PackageManagerNative {
    private static final String ACTION_GET_PACKAGE_INFO_AS_USER = "getPackageInfoAsUser";
    private static final String ACTION_MATCH_ANY_USER = "MATCH_ANY_USER";
    private static final String COMPONENT_NAME = "android.content.pm.PackageManager";
    @Grey
    @RequiresApi(api = ApsConstant.FEATURE_TYPE_AI_HDR)
    public static int FLAG_PERMISSION_REVIEW_REQUIRED = 0;
    @Grey
    @RequiresApi(api = ApsConstant.FEATURE_TYPE_AI_HDR)
    public static int INSTALL_FAILED_INVALID_URI = 0;
    @Grey
    @RequiresApi(api = 21)
    public static int INSTALL_REPLACE_EXISTING = 0;
    @Permission(authStr = ACTION_MATCH_ANY_USER, type = "epona")
    @RequiresApi(api = 30)
    public static int MATCH_ANY_USER = 0;
    @Oem
    @RequiresApi(api = ApsConstant.FEATURE_TYPE_AI_HDR)
    public static int OPLUS_STATE_FREEZE_FREEZED = 0;
    @Oem
    @RequiresApi(api = ApsConstant.FEATURE_TYPE_AI_HDR)
    public static int OPLUS_UNFREEZE_FLAG_NORMAL = 0;
    private static final String PACKAGE_ACTION = "package";
    private static final String RESULT = "result";
    private static final String TAG = "PackageManagerNative";

    /* loaded from: classes.dex */
    public interface IPackageStatsObserverNative {
        @Grey
        @RequiresApi(api = 21)
        void onGetStatsCompleted(PackageStats packageStats, boolean z);
    }

    @OplusCompatibleMethod
    private static void clearCachedIconForActivityForCompat(PackageManager packageManager, ComponentName componentName) {
    }

    @OplusCompatibleMethod
    private static void deleteApplicationCacheFilesAsUserForCompat(Context context, String str, int i, BiConsumer<String, Boolean> biConsumer) {
    }

    @OplusCompatibleMethod
    private static void deleteApplicationCacheFilesForCompat(Context context, String str, BiConsumer<String, Boolean> biConsumer) {
    }

    @OplusCompatibleMethod
    private static void deletePackageAsUserForCompat(Context context, @NonNull String str, @NonNull BiConsumer<String, Integer> biConsumer, int i, int i2) {
    }

    @OplusCompatibleMethod
    private static void deletePackageForCompat(Context context, @NonNull String str, @Nullable BiConsumer<String, Integer> biConsumer, int i) {
    }

    @OplusCompatibleMethod
    private static Object getHomeActivitiesForCompat(PackageManager packageManager, List<ResolveInfo> list) {
        return null;
    }

    @OplusCompatibleMethod
    private static Object getUxIconDrawableForCompat(PackageManager packageManager, Drawable drawable, boolean z) {
        return null;
    }

    @OplusCompatibleMethod
    private static Object getUxIconDrawableForCompat(PackageManager packageManager, String str, Drawable drawable, boolean z) {
        return null;
    }

    @OplusCompatibleMethod
    private static void grantRuntimePermissionForCompat(PackageManager packageManager, String str, String str2, UserHandle userHandle) {
    }

    @OplusCompatibleMethod
    private static Object initFlagPermissionReviewRequired() {
        return null;
    }

    @OplusCompatibleMethod
    private static Object initInstallFailedInvalidUri() {
        return null;
    }

    @OplusCompatibleMethod
    private static Object initInstallReplaceExisting() {
        return null;
    }

    @OplusCompatibleMethod
    private static Object initOplusStateFreezeFreezed() {
        return null;
    }

    @OplusCompatibleMethod
    private static Object initOplusUnfreezeFlagNormal() {
        return null;
    }

    @OplusCompatibleMethod
    private static Object installExistingPackageAsUserForCompat(String str, int i, int i2) {
        return null;
    }

    @OplusCompatibleMethod
    private static Object movePackageForCompat(PackageManager packageManager, String str, Object obj) {
        return null;
    }

    static {
        try {
            if (!VersionUtils.appPlatformExists()) {
                MATCH_ANY_USER = 4194304;
            } else if (VersionUtils.isR()) {
                MATCH_ANY_USER = Epona.newCall(new Request.Builder().setComponentName(COMPONENT_NAME).setActionName(ACTION_MATCH_ANY_USER).build()).execute().getBundle().getInt(RESULT);
            } else {
                throw new UnSupportedApiVersionException("not supported before R");
            }
        } catch (Exception e) {
            Log.e(TAG, e.toString());
        }
        try {
            if (VersionUtils.isS()) {
                INSTALL_REPLACE_EXISTING = 2;
                FLAG_PERMISSION_REVIEW_REQUIRED = 64;
                OPLUS_UNFREEZE_FLAG_NORMAL = 1;
                OPLUS_STATE_FREEZE_FREEZED = 2;
                INSTALL_FAILED_INVALID_URI = -3;
            } else if (VersionUtils.isOsVersion11_3()) {
                INSTALL_REPLACE_EXISTING = 2;
                FLAG_PERMISSION_REVIEW_REQUIRED = 64;
                OPLUS_UNFREEZE_FLAG_NORMAL = 1;
                OPLUS_STATE_FREEZE_FREEZED = 2;
                INSTALL_FAILED_INVALID_URI = -3;
            } else if (VersionUtils.isQ()) {
                INSTALL_REPLACE_EXISTING = ((Integer) initInstallReplaceExisting()).intValue();
                FLAG_PERMISSION_REVIEW_REQUIRED = ((Integer) initFlagPermissionReviewRequired()).intValue();
                OPLUS_UNFREEZE_FLAG_NORMAL = ((Integer) initOplusUnfreezeFlagNormal()).intValue();
                OPLUS_STATE_FREEZE_FREEZED = ((Integer) initOplusStateFreezeFreezed()).intValue();
                INSTALL_FAILED_INVALID_URI = ((Integer) initInstallFailedInvalidUri()).intValue();
            } else if (VersionUtils.isL()) {
                INSTALL_REPLACE_EXISTING = 2;
            } else {
                throw new UnSupportedApiVersionException();
            }
        } catch (Throwable th) {
            Log.e(TAG, th.toString());
        }
    }

    /* loaded from: classes.dex */
    private static class RefPackageManagerInfo {
        public static RefMethod<Integer> installExistingPackageAsUser;

        private RefPackageManagerInfo() {
        }

        static {
            RefClass.load(RefPackageManagerInfo.class, "android.content.pm.IPackageManager");
        }
    }

    private PackageManagerNative() {
    }

    @Permission(authStr = "setDistractingPackageRestrictionsAsUser", type = "epona")
    @RequiresApi(api = ApsConstant.FEATURE_TYPE_AI_HDR)
    @System
    public static String[] setDistractingPackageRestrictions(Context context, String[] strArr, int i) throws UnSupportedApiVersionException {
        if (VersionUtils.isR()) {
            Response execute = Epona.newCall(new Request.Builder().setComponentName(COMPONENT_NAME).setActionName("setDistractingPackageRestrictionsAsUser").withStringArray("packages", strArr).withInt("restrictionFlags", i).build()).execute();
            if (execute.isSuccessful()) {
                return execute.getBundle().getStringArray(RESULT);
            }
            Log.e(TAG, "response error:" + execute.getMessage());
            return null;
        } else if (VersionUtils.isQ()) {
            return context.getPackageManager().setDistractingPackageRestrictions(strArr, i);
        } else {
            throw new UnSupportedApiVersionException("Not Supported Before Q");
        }
    }

    @RequiresApi(api = 23)
    @System
    public static void grantRuntimePermission(Context context, String str, String str2, UserHandle userHandle) throws UnSupportedApiVersionException {
        if (VersionUtils.isR()) {
            throw new UnSupportedApiVersionException("Not Supported more than android-R");
        }
        if (VersionUtils.isQ()) {
            grantRuntimePermissionForCompat(context.getPackageManager(), str, str2, userHandle);
        } else if (VersionUtils.isM()) {
            context.getPackageManager().grantRuntimePermission(str, str2, userHandle);
        } else {
            throw new UnsupportedOperationException("Not Supported Before M");
        }
    }

    @Permission(authStr = "deletePackage", type = "epona")
    @Grey
    @RequiresApi(api = 21)
    @System
    public static void deletePackage(Context context, @NonNull String str, @Nullable final IPackageDeleteObserverNative iPackageDeleteObserverNative, int i) throws UnSupportedApiVersionException {
        if (VersionUtils.isR()) {
            Request build = new Request.Builder().setComponentName(COMPONENT_NAME).setActionName("deletePackage").withString("packageName", str).withInt("flags", i).withInt("uid", Binder.getCallingUid()).withInt("pid", Binder.getCallingPid()).build();
            Epona.newCall(build).asyncExecute(new Call.Callback() { // from class: com.oplus.compat.content.pm.PackageManagerNative.1
                @Override // com.oplus.epona.Call.Callback
                public void onReceive(Response response) {
                    if (!response.isSuccessful()) {
                        Log.e(PackageManagerNative.TAG, "onReceive: " + response.getMessage());
                        return;
                    }
                    Bundle bundle = response.getBundle();
                    IPackageDeleteObserverNative.this.packageDeleted(bundle.getString("packageName"), bundle.getInt("returnCode"));
                }
            });
        } else if (!VersionUtils.isQ()) {
            if (VersionUtils.isL()) {
                context.getPackageManager().deletePackage(str, createPackageDeleteObserver(iPackageDeleteObserverNative), i);
                return;
            }
            throw new UnSupportedApiVersionException("Not Supported Before L");
        } else if (iPackageDeleteObserverNative != null) {
            Objects.requireNonNull(iPackageDeleteObserverNative);
            deletePackageForCompat(context, str, new $$Lambda$dun2r02xgHguEDq4suUiVDO5LA(iPackageDeleteObserverNative), i);
        } else {
            deletePackageForCompat(context, str, null, i);
        }
    }

    private static IPackageDeleteObserver.Stub createPackageDeleteObserver(@Nullable final IPackageDeleteObserverNative iPackageDeleteObserverNative) {
        if (iPackageDeleteObserverNative != null) {
            return new IPackageDeleteObserver.Stub() { // from class: com.oplus.compat.content.pm.PackageManagerNative.2
                public void packageDeleted(String str, int i) {
                    IPackageDeleteObserverNative.this.packageDeleted(str, i);
                }
            };
        }
        return null;
    }

    @Permission(authStr = "deletePackageAsUser", type = "epona")
    @Grey
    @RequiresApi(api = ApsConstant.FEATURE_TYPE_AI_HDR)
    @System
    public static void deletePackageAsUser(@NonNull String str, @NonNull final IPackageDeleteObserverNative iPackageDeleteObserverNative, int i, int i2) throws UnSupportedApiVersionException {
        if (VersionUtils.isR()) {
            Request build = new Request.Builder().setComponentName(COMPONENT_NAME).setActionName("deletePackageAsUser").withString("packageName", str).withInt("flags", i).withInt("userId", i2).withInt("uid", Binder.getCallingUid()).withInt("pid", Binder.getCallingPid()).build();
            Epona.newCall(build).asyncExecute(new Call.Callback() { // from class: com.oplus.compat.content.pm.PackageManagerNative.3
                @Override // com.oplus.epona.Call.Callback
                public void onReceive(Response response) {
                    if (!response.isSuccessful()) {
                        Log.e(PackageManagerNative.TAG, "onReceive: " + response.getMessage());
                        return;
                    }
                    Bundle bundle = response.getBundle();
                    IPackageDeleteObserverNative.this.packageDeleted(bundle.getString("packageName"), bundle.getInt("returnCode"));
                }
            });
        } else if (VersionUtils.isQ()) {
            try {
                Context context = Epona.getContext();
                Objects.requireNonNull(iPackageDeleteObserverNative);
                deletePackageAsUserForCompat(context, str, new $$Lambda$dun2r02xgHguEDq4suUiVDO5LA(iPackageDeleteObserverNative), i, i2);
            } catch (Throwable th) {
                Log.e(TAG, th.toString());
            }
        } else {
            throw new UnSupportedApiVersionException("Not Supported Before Q");
        }
    }

    @Permission(authStr = "queryIntentActivities", type = "epona")
    @Grey
    @RequiresApi(api = 30)
    @System
    public static List<ResolveInfo> queryIntentActivitiesAsUser(Intent intent, int i, int i2) throws UnSupportedApiVersionException {
        if (VersionUtils.isR()) {
            Response execute = Epona.newCall(new Request.Builder().setComponentName(COMPONENT_NAME).setActionName("queryIntentActivities").withParcelable("intent", intent).withInt("flags", i).withInt("userId", i2).build()).execute();
            if (execute.isSuccessful()) {
                return execute.getBundle().getParcelableArrayList(RESULT);
            }
            Log.e(TAG, "response error:" + execute.getMessage());
            return null;
        }
        throw new UnSupportedApiVersionException("not supported before R");
    }

    @Permission(authStr = ACTION_GET_PACKAGE_INFO_AS_USER, type = "epona")
    @Grey
    @RequiresApi(api = 30)
    @System
    public static PackageInfo getPackageInfoAsUser(String str, int i, int i2) throws UnSupportedApiVersionException, PackageManager.NameNotFoundException {
        if (VersionUtils.isR()) {
            Response execute = Epona.newCall(new Request.Builder().setComponentName(COMPONENT_NAME).setActionName(ACTION_GET_PACKAGE_INFO_AS_USER).withString("packageName", str).withInt("flags", i).withInt("userId", i2).build()).execute();
            if (execute.isSuccessful()) {
                return (PackageInfo) execute.getBundle().getParcelable(RESULT);
            }
            execute.checkThrowable(PackageManager.NameNotFoundException.class);
            Log.e(TAG, "response error:" + execute.getMessage());
            return null;
        }
        throw new UnSupportedApiVersionException("not supported before R");
    }

    @Permission(authStr = "setApplicationEnabledSetting", type = "epona")
    @Grey
    @RequiresApi(api = 21)
    @System
    public static void setApplicationEnabledSetting(Context context, String str, int i, int i2) throws UnSupportedApiVersionException {
        if (VersionUtils.isR()) {
            Epona.newCall(new Request.Builder().setComponentName(COMPONENT_NAME).setActionName("setApplicationEnabledSetting").withString("packageName", str).withInt("newState", i).withInt("flags", i2).build()).execute();
        } else if (VersionUtils.isL()) {
            context.getPackageManager().setApplicationEnabledSetting(str, i, i2);
        } else {
            throw new UnSupportedApiVersionException("Not Supported Before L");
        }
    }

    @Permission(authStr = "getApplicationEnabledSetting", type = "epona")
    @Grey
    @RequiresApi(api = 21)
    @System
    public static int getApplicationEnabledSetting(Context context, String str) throws UnSupportedApiVersionException {
        if (VersionUtils.isR()) {
            Response execute = Epona.newCall(new Request.Builder().setComponentName(COMPONENT_NAME).setActionName("getApplicationEnabledSetting").withString("packageName", str).build()).execute();
            if (execute.isSuccessful()) {
                return execute.getBundle().getInt(RESULT);
            }
            Log.e(TAG, "response error:" + execute.getMessage());
            return 0;
        } else if (VersionUtils.isL()) {
            return context.getPackageManager().getApplicationEnabledSetting(str);
        } else {
            throw new UnSupportedApiVersionException("Not Supported Before L");
        }
    }

    @Permission(authStr = "deleteApplicationCacheFilesAsUser", type = "epona")
    @Grey
    @RequiresApi(api = ApsConstant.FEATURE_TYPE_AI_HDR)
    @System
    public static void deleteApplicationCacheFilesAsUser(String str, int i, IPackageDataObserverNative iPackageDataObserverNative) throws UnSupportedApiVersionException {
        if (VersionUtils.isR()) {
            Request build = new Request.Builder().setComponentName(COMPONENT_NAME).setActionName("deleteApplicationCacheFilesAsUser").withString("packageName", str).withInt("userId", i).build();
            Bundle bundle = new Bundle();
            bundle.putBinder("packageDataObserver", new PackageDataObserver(iPackageDataObserverNative).asBinder());
            build.putBundle(bundle);
            Epona.newCall(build).execute();
        } else if (VersionUtils.isQ()) {
            Epona.getContext().getPackageManager().deleteApplicationCacheFilesAsUser(str, i, IPackageDataObserver.Stub.asInterface(new PackageDataObserver(iPackageDataObserverNative).asBinder()));
        } else {
            throw new UnSupportedApiVersionException("not supported before Q");
        }
    }

    @Permission(authStr = "getPackageInfo", type = "epona")
    @RequiresApi(api = 30)
    @System
    public static PackageInfo getPackageInfo(String str, int i) throws UnSupportedApiVersionException, PackageManager.NameNotFoundException {
        if (!VersionUtils.appPlatformExists()) {
            if (VersionUtils.isR()) {
                return Epona.getContext().getPackageManager().getPackageInfo(str, i);
            }
            throw new UnSupportedApiVersionException("not supported before R");
        }
        Response execute = Epona.newCall(new Request.Builder().setComponentName(COMPONENT_NAME).setActionName("getPackageInfo").withString("packageName", str).withInt("flags", i).build()).execute();
        if (execute.isSuccessful()) {
            return (PackageInfo) execute.getBundle().getParcelable(RESULT);
        }
        execute.checkThrowable(PackageManager.NameNotFoundException.class);
        return null;
    }

    @Grey
    @RequiresApi(api = ApsConstant.FEATURE_TYPE_AI_HDR)
    public static int installExistingPackageAsUser(String str, int i, int i2) {
        try {
        } catch (Throwable th) {
            Log.e(TAG, th.toString());
        }
        if (VersionUtils.isS()) {
            return RefPackageManagerInfo.installExistingPackageAsUser.call(ActivityThread.getPackageManager(), str, Integer.valueOf(i2), 4194304, Integer.valueOf(i), null).intValue();
        } else if (VersionUtils.isOsVersion11_3()) {
            return PackageManagerWrapper.installExistingPackageAsUser(str, i, i2);
        } else {
            if (VersionUtils.isQ()) {
                return ((Integer) installExistingPackageAsUserForCompat(str, i, i2)).intValue();
            }
            return INSTALL_FAILED_INVALID_URI;
        }
    }

    @Grey
    @RequiresApi(api = 21)
    public static void deleteApplicationCacheFiles(Context context, String str, final IPackageDataObserverNative iPackageDataObserverNative) {
        try {
            if (VersionUtils.isS()) {
                context.getPackageManager().deleteApplicationCacheFiles(str, new IPackageDataObserver.Stub() { // from class: com.oplus.compat.content.pm.PackageManagerNative.4
                    public void onRemoveCompleted(String str2, boolean z) throws RemoteException {
                        IPackageDataObserverNative.this.onRemoveCompleted(str2, z);
                    }
                });
                return;
            }
            if (VersionUtils.isOsVersion11_3()) {
                PackageManagerWrapper.deleteApplicationCacheFiles(context, str, iPackageDataObserverNative != null ? new PackageManagerWrapper.IPackageDataObserverWrapper() { // from class: com.oplus.compat.content.pm.PackageManagerNative.5
                    public void onRemoveCompleted(String str2, boolean z) {
                        IPackageDataObserverNative.this.onRemoveCompleted(str2, z);
                    }
                } : null);
            } else if (VersionUtils.isQ()) {
                Objects.requireNonNull(iPackageDataObserverNative);
                deleteApplicationCacheFilesForCompat(context, str, new $$Lambda$swNKNoeLQNCK1VBDgMt0Xnc3qM(iPackageDataObserverNative));
            } else if (VersionUtils.isL()) {
                ReflectInfo.deleteApplicationCacheFiles.callWithException(context.getPackageManager(), str, iPackageDataObserverNative != null ? new IPackageDataObserver.Stub() { // from class: com.oplus.compat.content.pm.PackageManagerNative.6
                    public void onRemoveCompleted(String str2, boolean z) throws RemoteException {
                        IPackageDataObserverNative.this.onRemoveCompleted(str2, z);
                    }
                } : null);
            }
        } catch (Throwable th) {
            Log.e(TAG, th.toString());
        }
    }

    @Grey
    @RequiresApi(api = ApsConstant.FEATURE_TYPE_AI_HDR)
    public static void deleteApplicationCacheFilesAsUser(Context context, String str, int i, final IPackageDataObserverNative iPackageDataObserverNative) {
        try {
            if (VersionUtils.isS()) {
                context.getPackageManager().deleteApplicationCacheFilesAsUser(str, i, new IPackageDataObserver.Stub() { // from class: com.oplus.compat.content.pm.PackageManagerNative.7
                    public void onRemoveCompleted(String str2, boolean z) throws RemoteException {
                        IPackageDataObserverNative.this.onRemoveCompleted(str2, z);
                    }
                });
            } else if (VersionUtils.isOsVersion11_3()) {
                PackageManagerWrapper.deleteApplicationCacheFilesAsUser(context, str, i, iPackageDataObserverNative != null ? new PackageManagerWrapper.IPackageDataObserverWrapper() { // from class: com.oplus.compat.content.pm.PackageManagerNative.8
                    public void onRemoveCompleted(String str2, boolean z) {
                        IPackageDataObserverNative.this.onRemoveCompleted(str2, z);
                    }
                } : null);
            } else if (VersionUtils.isQ()) {
                Objects.requireNonNull(iPackageDataObserverNative);
                deleteApplicationCacheFilesAsUserForCompat(context, str, i, new $$Lambda$swNKNoeLQNCK1VBDgMt0Xnc3qM(iPackageDataObserverNative));
            }
        } catch (Exception e) {
            Log.e(TAG, e.toString());
        }
    }

    @Grey
    @RequiresApi(api = 28)
    public static ComponentName getHomeActivities(PackageManager packageManager, List<ResolveInfo> list) {
        try {
            if (VersionUtils.isS()) {
                return packageManager.getHomeActivities(list);
            }
            if (VersionUtils.isOsVersion11_3()) {
                return PackageManagerWrapper.getHomeActivities(packageManager, list);
            }
            if (VersionUtils.isQ()) {
                return (ComponentName) getHomeActivitiesForCompat(packageManager, list);
            }
            if (VersionUtils.isP()) {
                return (ComponentName) ReflectInfo.mGetHomeActivities.callWithException(packageManager, list);
            }
            throw new UnSupportedApiVersionException();
        } catch (Throwable th) {
            Log.e(TAG, th.toString());
            return null;
        }
    }

    @Oem
    @RequiresApi(api = ApsConstant.FEATURE_TYPE_AI_HDR)
    public static void clearCachedIconForActivity(PackageManager packageManager, ComponentName componentName) {
        try {
            if (VersionUtils.isS()) {
                OplusIUxIconPackageManagerRefInfo.clearCachedIconForActivity.call(OplusIPackageManagerRefInfo.getUxIconPackageManagerExt.call(PackageManagerRefInfo.mPackageManagerExt.get(packageManager), new Object[0]), componentName);
            } else if (VersionUtils.isOsVersion11_3()) {
                PackageManagerWrapper.clearCachedIconForActivity(packageManager, componentName);
            } else if (VersionUtils.isQ()) {
                clearCachedIconForActivityForCompat(packageManager, componentName);
            }
        } catch (Exception e) {
            Log.e(TAG, e.toString());
        }
    }

    @Blocked
    @RequiresApi(api = ApsConstant.FEATURE_TYPE_AI_HDR)
    public static Drawable getUxIconDrawable(PackageManager packageManager, Drawable drawable, boolean z) {
        Drawable drawable2;
        try {
            if (VersionUtils.isS()) {
                drawable2 = OplusIUxIconPackageManagerRefInfo.getUxIconDrawable.call(OplusIPackageManagerRefInfo.getUxIconPackageManagerExt.call(PackageManagerRefInfo.mPackageManagerExt.get(packageManager), new Object[0]), drawable, Boolean.valueOf(z));
            } else if (VersionUtils.isOsVersion11_3()) {
                drawable2 = PackageManagerWrapper.getUxIconDrawable(packageManager, drawable, z);
            } else if (!VersionUtils.isQ()) {
                return null;
            } else {
                drawable2 = (Drawable) getUxIconDrawableForCompat(packageManager, drawable, z);
            }
            return drawable2;
        } catch (Exception e) {
            Log.e(TAG, e.toString());
            return null;
        }
    }

    @Blocked
    @RequiresApi(api = ApsConstant.FEATURE_TYPE_AI_HDR)
    public static Drawable getUxIconDrawable(PackageManager packageManager, String str, Drawable drawable, boolean z) {
        Drawable drawable2;
        try {
            if (VersionUtils.isS()) {
                drawable2 = OplusIUxIconPackageManagerRefInfo.getUxIconDrawableWithPackage.call(OplusIPackageManagerRefInfo.getUxIconPackageManagerExt.call(PackageManagerRefInfo.mPackageManagerExt.get(packageManager), new Object[0]), str, drawable, Boolean.valueOf(z));
            } else if (VersionUtils.isOsVersion11_3()) {
                drawable2 = PackageManagerWrapper.getUxIconDrawable(packageManager, str, drawable, z);
            } else if (!VersionUtils.isQ()) {
                return drawable;
            } else {
                drawable2 = (Drawable) getUxIconDrawableForCompat(packageManager, str, drawable, z);
            }
            return drawable2;
        } catch (Throwable th) {
            Log.e(TAG, th.toString());
            return drawable;
        }
    }

    @Blocked
    @RequiresApi(api = 21)
    public static int movePackage(PackageManager packageManager, String str, VolumeInfoNative volumeInfoNative) throws UnSupportedApiVersionException {
        if (VersionUtils.isS()) {
            try {
                return packageManager.movePackage(str, (VolumeInfo) volumeInfoNative.getVolumeInfo());
            } catch (NoSuchMethodError e) {
                Log.e(TAG, e.toString());
                throw new UnSupportedApiVersionException("no permission to access the blocked method", e);
            }
        }
        try {
            if (VersionUtils.isOsVersion11_3()) {
                return PackageManagerWrapper.movePackage(packageManager, str, (VolumeInfoWrapper) volumeInfoNative.getVolumeInfo());
            }
            if (VersionUtils.isQ()) {
                return ((Integer) movePackageForCompat(packageManager, str, volumeInfoNative.getVolumeInfo())).intValue();
            }
            if (VersionUtils.isL()) {
                return ((Integer) ReflectInfo.movePackage.callWithException(packageManager, str, volumeInfoNative.getVolumeInfo())).intValue();
            }
            throw new UnSupportedApiVersionException("Not supported before L");
        } catch (Throwable th) {
            throw new UnSupportedApiVersionException(th);
        }
    }

    @RequiresApi(api = ApsConstant.FEATURE_TYPE_AI_HDR)
    /* loaded from: classes.dex */
    private static class PackageDataObserver extends IPackageDataObserver.Stub {
        private IPackageDataObserverNative mObserver;

        private PackageDataObserver(IPackageDataObserverNative iPackageDataObserverNative) {
            this.mObserver = iPackageDataObserverNative;
        }

        public void onRemoveCompleted(String str, boolean z) throws RemoteException {
            if (this.mObserver != null) {
                this.mObserver.onRemoveCompleted(str, z);
            }
        }
    }

    /* loaded from: classes.dex */
    private static class ReflectInfo {
        private static RefMethod<Void> deleteApplicationCacheFiles;
        private static RefMethod<Void> deletePackage;
        private static RefMethod<Void> getPackageSizeInfo;
        @MethodName(name = "getHomeActivities", params = {List.class})
        private static RefMethod<ComponentName> mGetHomeActivities;
        private static RefMethod<Integer> movePackage;

        private ReflectInfo() {
        }

        static {
            RefClass.load(ReflectInfo.class, PackageManager.class);
        }
    }

    /* loaded from: classes.dex */
    private static class PackageManagerRefInfo {
        public static Class<?> TYPE = RefClass.load(PackageManagerRefInfo.class, PackageManager.class);
        public static RefObject<Object> mPackageManagerExt;

        private PackageManagerRefInfo() {
        }
    }

    /* loaded from: classes.dex */
    private static class OplusIPackageManagerRefInfo {
        public static Class<?> TYPE = RefClass.load(OplusIPackageManagerRefInfo.class, "android.content.pm.IPackageManagerExt");
        public static RefMethod<Object> getUxIconPackageManagerExt;

        private OplusIPackageManagerRefInfo() {
        }
    }

    /* loaded from: classes.dex */
    private static class OplusIUxIconPackageManagerRefInfo {
        public static Class<?> TYPE = RefClass.load(OplusIUxIconPackageManagerRefInfo.class, "android.content.res.IUxIconPackageManagerExt");
        public static RefMethod<Void> clearCachedIconForActivity;
        @MethodName(name = "getUxIconDrawable", params = {Drawable.class, boolean.class})
        public static RefMethod<Drawable> getUxIconDrawable;
        @MethodName(name = "getUxIconDrawable", params = {String.class, Drawable.class, boolean.class})
        public static RefMethod<Drawable> getUxIconDrawableWithPackage;

        private OplusIUxIconPackageManagerRefInfo() {
        }
    }
}
