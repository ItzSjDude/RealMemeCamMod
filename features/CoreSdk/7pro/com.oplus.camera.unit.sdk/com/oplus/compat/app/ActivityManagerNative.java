package com.oplus.compat.app;

import android.app.ActivityManager;
import android.app.IActivityManager;
import android.app.IProcessObserver;
import android.content.Context;
import android.content.pm.IPackageDataObserver;
import android.content.res.Configuration;
import android.os.Bundle;
import android.os.Debug;
import android.os.IBinder;
import android.os.Parcelable;
import android.os.RemoteException;
import android.util.Log;
import androidx.annotation.RequiresApi;
import com.oplus.compat.annotation.Blocked;
import com.oplus.compat.annotation.Grey;
import com.oplus.compat.annotation.Permission;
import com.oplus.compat.annotation.System;
import com.oplus.compat.content.pm.IPackageDataObserverNative;
import com.oplus.compat.utils.util.UnSupportedApiVersionException;
import com.oplus.compat.utils.util.VersionUtils;
import com.oplus.epona.Epona;
import com.oplus.epona.Request;
import com.oplus.epona.Response;
import com.oplus.ocs.camera.common.util.ApsConstant;
import com.oplus.utils.reflect.MethodName;
import com.oplus.utils.reflect.RefClass;
import com.oplus.utils.reflect.RefMethod;
import java.util.Collections;
import java.util.HashMap;
import java.util.List;
import java.util.Map;
/* loaded from: classes.dex */
public class ActivityManagerNative {
    private static final String ACTION_CLEAR_APPLICATION_USER_DATA = "clearApplicationUserData";
    private static final String ACTION_GET_CURRENT_USER = "getCurrentUser";
    private static final String NAME = "android.app.ActivityManager";
    private static final String RESULT = "result";
    private static final String TAG = "ActivityManagerNative";
    private static Map<IProcessObserverNative, IProcessObserver.Stub> sObservers = new HashMap();

    /* loaded from: classes.dex */
    private static class ReflectActivityManagerInfo {
        public static RefMethod<List<ActivityManager.RunningAppProcessInfo>> getRunningAppProcesses;
        public static RefMethod<IActivityManager> getService;
        @MethodName(name = "switchUser", params = {int.class})
        public static RefMethod<Boolean> switchUser;

        private ReflectActivityManagerInfo() {
        }

        static {
            RefClass.load(ReflectActivityManagerInfo.class, ActivityManager.class);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* loaded from: classes.dex */
    public static class ReflectIActivityManagerInfo {
        @MethodName(params = {String.class, IPackageDataObserver.class, int.class})
        public static RefMethod<Boolean> clearApplicationUserData;
        public static RefMethod<Configuration> getConfiguration;
        public static RefMethod<Void> registerProcessObserver;
        public static RefMethod<Void> unregisterProcessObserver;

        private ReflectIActivityManagerInfo() {
        }

        static {
            RefClass.load(ReflectIActivityManagerInfo.class, IActivityManager.class);
        }
    }

    private ActivityManagerNative() {
    }

    @Permission(authStr = ACTION_CLEAR_APPLICATION_USER_DATA, type = "epona")
    @Grey
    @RequiresApi(api = 22)
    @System
    public static boolean clearApplicationUserData(Context context, String str, IPackageDataObserverNative iPackageDataObserverNative) throws UnSupportedApiVersionException, RemoteException {
        if (VersionUtils.isR()) {
            return clearApplicationUserData(str, false, iPackageDataObserverNative, context.getUserId());
        }
        if (VersionUtils.isL_MR1()) {
            return ((ActivityManager) Epona.getContext().getSystemService("activity")).clearApplicationUserData(str, new PackageDataObserver(iPackageDataObserverNative));
        }
        throw new UnSupportedApiVersionException("not supported before L_MR1");
    }

    @Permission(authStr = ACTION_CLEAR_APPLICATION_USER_DATA, type = "epona")
    @Blocked
    @RequiresApi(api = 22)
    @System
    public static boolean clearApplicationUserData(String str, boolean z, IPackageDataObserverNative iPackageDataObserverNative, int i) throws UnSupportedApiVersionException, RemoteException {
        if (VersionUtils.isR()) {
            return clearAtR(str, z, iPackageDataObserverNative, i);
        }
        if (VersionUtils.isP()) {
            return ActivityManager.getService().clearApplicationUserData(str, z, new PackageDataObserver(iPackageDataObserverNative), i);
        }
        if (VersionUtils.isL_MR1()) {
            Boolean call = ReflectIActivityManagerInfo.clearApplicationUserData.call(android.app.ActivityManagerNative.getDefault(), str, new PackageDataObserver(iPackageDataObserverNative), Integer.valueOf(i));
            if (call == null) {
                return false;
            }
            return call.booleanValue();
        }
        throw new UnSupportedApiVersionException("not supported before L_MR1");
    }

    private static boolean clearAtR(String str, boolean z, IPackageDataObserverNative iPackageDataObserverNative, int i) {
        Response execute = Epona.newCall(new Request.Builder().setComponentName(NAME).setActionName(ACTION_CLEAR_APPLICATION_USER_DATA).withString("packageName", str).withBoolean("keepState", z).withBinder("observer", new PackageDataObserver(iPackageDataObserverNative).asBinder()).withInt("userId", i).build()).execute();
        if (execute.isSuccessful()) {
            return execute.getBundle().getBoolean(RESULT);
        }
        execute.checkThrowable(RuntimeException.class);
        Log.e(TAG, "response error:" + execute.getMessage());
        return false;
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* loaded from: classes.dex */
    public static class PackageDataObserver extends IPackageDataObserver.Stub {
        private IPackageDataObserverNative mObserverNative;

        public PackageDataObserver(IPackageDataObserverNative iPackageDataObserverNative) {
            this.mObserverNative = iPackageDataObserverNative;
        }

        @Grey
        public void onRemoveCompleted(String str, boolean z) throws RemoteException {
            if (this.mObserverNative != null) {
                this.mObserverNative.onRemoveCompleted(str, z);
            }
        }
    }

    @Permission(authStr = ACTION_GET_CURRENT_USER, type = "epona")
    @Grey
    @RequiresApi(api = 28)
    @System
    public static int getCurrentUser() throws UnSupportedApiVersionException {
        if (VersionUtils.isR()) {
            Response execute = Epona.newCall(new Request.Builder().setComponentName(NAME).setActionName(ACTION_GET_CURRENT_USER).build()).execute();
            if (execute.isSuccessful()) {
                return execute.getBundle().getInt("currentUser");
            }
            return 0;
        } else if (VersionUtils.isP()) {
            return ActivityManager.getCurrentUser();
        } else {
            throw new UnSupportedApiVersionException("not supported before P");
        }
    }

    @Permission(authStr = "switchUser", type = "epona")
    @Blocked
    @RequiresApi(api = ApsConstant.FEATURE_TYPE_AI_HDR)
    @System
    public static boolean switchUser(Context context, int i) throws UnSupportedApiVersionException {
        if (VersionUtils.isR()) {
            Response execute = Epona.newCall(new Request.Builder().setComponentName(NAME).setActionName("switchUser").withInt("userId", i).build()).execute();
            if (execute.isSuccessful()) {
                return execute.getBundle().getBoolean(RESULT);
            }
            Log.e(TAG, "switchUser: call failed ");
            return false;
        } else if (VersionUtils.isQ()) {
            return ReflectActivityManagerInfo.switchUser.call((ActivityManager) context.getSystemService("activity"), Integer.valueOf(i)).booleanValue();
        } else {
            throw new UnSupportedApiVersionException("not supported before Q");
        }
    }

    @Permission(authStr = "getRunningAppProcesses", type = "epona")
    @RequiresApi(api = ApsConstant.FEATURE_TYPE_AI_HDR)
    public static List<ActivityManager.RunningAppProcessInfo> getRunningAppProcesses(Context context) throws UnSupportedApiVersionException {
        if (VersionUtils.isR()) {
            Response execute = Epona.newCall(new Request.Builder().setComponentName(NAME).setActionName("getRunningAppProcesses").build()).execute();
            if (execute.isSuccessful()) {
                return execute.getBundle().getParcelableArrayList(RESULT);
            }
            Log.d(TAG, "getRunningAppProcesses: call failed");
            return Collections.emptyList();
        } else if (VersionUtils.isQ()) {
            return ReflectActivityManagerInfo.getRunningAppProcesses.call((ActivityManager) context.getSystemService("activity"), new Object[0]);
        } else {
            throw new UnSupportedApiVersionException("not supported before Q");
        }
    }

    @Permission(authStr = "getServices", type = "epona")
    @RequiresApi(api = 30)
    public static List<ActivityManager.RunningServiceInfo> getRunningServices(Context context, int i) throws UnSupportedApiVersionException {
        if (VersionUtils.isR()) {
            Response execute = Epona.newCall(new Request.Builder().setComponentName(NAME).setActionName("getServices").withInt("maxNum", i).build()).execute();
            if (execute.isSuccessful()) {
                return execute.getBundle().getParcelableArrayList(RESULT);
            }
            Log.d(TAG, "getRunningServices: call failed");
            return Collections.emptyList();
        }
        throw new UnSupportedApiVersionException("not supported before R");
    }

    @Grey
    @RequiresApi(api = ApsConstant.FEATURE_TYPE_AI_HDR)
    public static Configuration getConfiguration() throws UnSupportedApiVersionException {
        if (VersionUtils.isQ()) {
            return ReflectIActivityManagerInfo.getConfiguration.call(ReflectActivityManagerInfo.getService.call(null, new Object[0]), new Object[0]);
        }
        throw new UnSupportedApiVersionException("not supported before Q");
    }

    @Permission(authStr = "updateConfiguration", type = "epona")
    @Blocked
    @RequiresApi(api = ApsConstant.FEATURE_TYPE_AI_HDR)
    @System
    public static boolean updateConfiguration(Configuration configuration) throws UnSupportedApiVersionException, RemoteException {
        if (VersionUtils.isR()) {
            Response execute = Epona.newCall(new Request.Builder().setComponentName(NAME).setActionName("updateConfiguration").withParcelable("configuration", configuration).build()).execute();
            if (execute.isSuccessful()) {
                return execute.getBundle().getBoolean(RESULT);
            }
            return false;
        } else if (VersionUtils.isQ()) {
            return ActivityManager.getService().updateConfiguration(configuration);
        } else {
            throw new UnSupportedApiVersionException("not supported before Q");
        }
    }

    @Permission(authStr = "registerProcessObserver", type = "epona")
    @Blocked
    @RequiresApi(api = ApsConstant.FEATURE_TYPE_AI_HDR)
    @System
    public static void registerProcessObserver(IProcessObserverNative iProcessObserverNative) throws UnSupportedApiVersionException {
        try {
            if (VersionUtils.isR()) {
                Request build = new Request.Builder().setComponentName(NAME).setActionName("registerProcessObserver").build();
                IProcessObserver.Stub processObserver = new ProcessObserver(iProcessObserverNative);
                sObservers.put(iProcessObserverNative, processObserver);
                Bundle bundle = new Bundle();
                bundle.putBinder("observer", processObserver);
                build.putBundle(bundle);
                Epona.newCall(build).execute();
            } else if (VersionUtils.isQ()) {
                IProcessObserver.Stub stub = sObservers.get(iProcessObserverNative);
                if (stub == null) {
                    stub = new ProcessObserver(iProcessObserverNative);
                    sObservers.put(iProcessObserverNative, stub);
                }
                ReflectIActivityManagerInfo.registerProcessObserver.callWithException(ActivityManager.getService(), stub);
            } else {
                throw new UnSupportedApiVersionException("not supported before Q");
            }
        } catch (Throwable th) {
            throw new UnSupportedApiVersionException(th);
        }
    }

    @Permission(authStr = "unregisterProcessObserver", type = "epona")
    @Blocked
    @RequiresApi(api = ApsConstant.FEATURE_TYPE_AI_HDR)
    @System
    public static void unregisterProcessObserver(IProcessObserverNative iProcessObserverNative) throws UnSupportedApiVersionException {
        IBinder iBinder = (IProcessObserver.Stub) sObservers.get(iProcessObserverNative);
        if (VersionUtils.isR()) {
            Epona.newCall(new Request.Builder().setComponentName(NAME).setActionName("unregisterProcessObserver").withBinder("observer", iBinder).build()).execute();
        } else if (VersionUtils.isQ()) {
            sObservers.remove(iProcessObserverNative);
            ReflectIActivityManagerInfo.unregisterProcessObserver.call(ActivityManager.getService(), iBinder);
        } else {
            throw new UnSupportedApiVersionException("not supported before Q");
        }
    }

    @Permission(authStr = "getRunningTasks", type = "epona")
    @RequiresApi(api = 30)
    @System
    public static List<ActivityManager.RunningTaskInfo> getRunningTasks(int i) throws UnSupportedApiVersionException {
        if (VersionUtils.isR()) {
            Response execute = Epona.newCall(new Request.Builder().setComponentName(NAME).setActionName("getRunningTasks").withInt("maxValue", i).build()).execute();
            if (execute.isSuccessful()) {
                return (List) execute.getBundle().getSerializable(RESULT);
            }
            return Collections.emptyList();
        }
        throw new UnSupportedApiVersionException("not supported before R");
    }

    @Permission(authStr = "getProcessMemoryInfo", type = "epona")
    @RequiresApi(api = 30)
    public static Debug.MemoryInfo[] getProcessMemoryInfo(int[] iArr) throws UnSupportedApiVersionException {
        Parcelable[] parcelableArray;
        Debug.MemoryInfo[] memoryInfoArr = new Debug.MemoryInfo[iArr.length];
        if (VersionUtils.isR()) {
            Response execute = Epona.newCall(new Request.Builder().setComponentName(NAME).setActionName("getProcessMemoryInfo").withIntArray("pids", iArr).build()).execute();
            if (execute.isSuccessful() && (parcelableArray = execute.getBundle().getParcelableArray(RESULT)) != null) {
                int i = 0;
                for (Parcelable parcelable : parcelableArray) {
                    memoryInfoArr[i] = (Debug.MemoryInfo) parcelable;
                    i++;
                }
            }
            return memoryInfoArr;
        }
        throw new UnSupportedApiVersionException("not supported before R");
    }

    @Grey
    @RequiresApi(api = ApsConstant.FEATURE_TYPE_AI_HDR)
    public static boolean removeTask(int i) throws UnSupportedApiVersionException, RemoteException {
        if (VersionUtils.isQ()) {
            return ActivityManager.getService().removeTask(i);
        }
        throw new UnSupportedApiVersionException("not supported before Q");
    }

    @Grey
    @RequiresApi(api = ApsConstant.FEATURE_TYPE_AI_HDR)
    public static void setProcessLimit(int i) throws UnSupportedApiVersionException, RemoteException {
        if (VersionUtils.isQ()) {
            ActivityManager.getService().setProcessLimit(i);
            return;
        }
        throw new UnSupportedApiVersionException("not supported before Q");
    }

    @Grey
    @RequiresApi(api = ApsConstant.FEATURE_TYPE_AI_HDR)
    public static long[] getProcessPss(int[] iArr) throws UnSupportedApiVersionException, RemoteException {
        if (VersionUtils.isQ()) {
            return ActivityManager.getService().getProcessPss(iArr);
        }
        throw new UnSupportedApiVersionException("not supported before Q");
    }

    @Grey
    @RequiresApi(api = ApsConstant.FEATURE_TYPE_AI_HDR)
    public static void resumeAppSwitches() throws UnSupportedApiVersionException, RemoteException {
        if (VersionUtils.isQ()) {
            ActivityManager.getService().resumeAppSwitches();
            return;
        }
        throw new UnSupportedApiVersionException("not supported before Q");
    }

    @Grey
    @Permission(authStr = "startUserInBackground", type = "epona")
    @RequiresApi(api = 30)
    public static boolean startUserInBackground(int i) throws UnSupportedApiVersionException {
        if (VersionUtils.isR()) {
            Response execute = Epona.newCall(new Request.Builder().setComponentName(NAME).setActionName("startUserInBackground").withInt("userId", i).build()).execute();
            if (execute.isSuccessful()) {
                return execute.getBundle().getBoolean(RESULT, false);
            }
            return false;
        }
        throw new UnSupportedApiVersionException("Not Supported Before R");
    }

    /* loaded from: classes.dex */
    private static class ProcessObserver extends IProcessObserver.Stub {
        private IProcessObserverNative mObserver;

        public ProcessObserver(IProcessObserverNative iProcessObserverNative) {
            this.mObserver = iProcessObserverNative;
        }

        public void onForegroundActivitiesChanged(int i, int i2, boolean z) throws RemoteException {
            if (this.mObserver != null) {
                this.mObserver.onForegroundActivitiesChanged(i, i2, z);
            }
        }

        public void onForegroundServicesChanged(int i, int i2, int i3) throws RemoteException {
            if (this.mObserver != null) {
                this.mObserver.onForegroundServicesChanged(i, i2, i3);
            }
        }

        public void onProcessDied(int i, int i2) throws RemoteException {
            if (this.mObserver != null) {
                this.mObserver.onProcessDied(i, i2);
            }
        }
    }
}
