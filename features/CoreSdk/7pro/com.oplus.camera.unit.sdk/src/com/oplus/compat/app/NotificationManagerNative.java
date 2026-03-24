package com.oplus.compat.app;

import android.app.NotificationChannelGroup;
import android.app.NotificationManager;
import android.content.Context;
import android.content.pm.ParceledListSlice;
import android.net.Uri;
import android.os.RemoteException;
import android.service.notification.StatusBarNotification;
import android.util.Log;
import androidx.annotation.RequiresApi;
import com.oplus.compat.annotation.Blocked;
import com.oplus.compat.annotation.Grey;
import com.oplus.compat.annotation.Permission;
import com.oplus.compat.annotation.System;
import com.oplus.compat.utils.util.UnSupportedApiVersionException;
import com.oplus.compat.utils.util.VersionUtils;
import com.oplus.compatsdk.annotation.OplusCompatibleMethod;
import com.oplus.epona.Epona;
import com.oplus.epona.Request;
import com.oplus.epona.Response;
import com.oplus.inner.app.NotificationManagerWrapper;
import com.oplus.ocs.camera.common.util.ApsConstant;
import com.oplus.utils.reflect.RefClass;
import com.oplus.utils.reflect.RefMethod;
import java.util.List;
/* loaded from: classes.dex */
public class NotificationManagerNative {
    private static final String COMPONENT_NAME = "android.app.NotificationManager";
    private static final String SUCCESS = "success";
    private static final String TAG = "NotificationManagerNative";

    @OplusCompatibleMethod
    private static void createNotificationChannelGroupsQCompat(String str, List list) {
    }

    @OplusCompatibleMethod
    private static Object getNotificationChannelGroupsQCompat(String str) {
        return null;
    }

    /* loaded from: classes.dex */
    private static class RefNotificationManagerInfo {
        public static RefMethod<Integer> getZenMode;

        private RefNotificationManagerInfo() {
        }

        static {
            RefClass.load(RefNotificationManagerInfo.class, NotificationManager.class);
        }
    }

    private NotificationManagerNative() {
    }

    @Permission(authStr = "setZenMode", type = "epona")
    @Grey
    @RequiresApi(api = ApsConstant.FEATURE_TYPE_AI_HDR)
    @System
    public static void setZenMode(Context context, int i, Uri uri, String str) throws UnSupportedApiVersionException {
        if (VersionUtils.isR()) {
            if (Epona.newCall(new Request.Builder().setComponentName(COMPONENT_NAME).setActionName("setZenMode").withInt("mode", i).withParcelable("conditionId", uri).withString("reason", str).build()).execute().isSuccessful()) {
                return;
            }
            Log.e(TAG, "setZenMode: call failed");
        } else if (VersionUtils.isQ()) {
            ((NotificationManager) context.getSystemService("notification")).setZenMode(i, uri, str);
        } else {
            throw new UnSupportedApiVersionException("Not supported before Q");
        }
    }

    @Permission(authStr = "getZenMode", type = "epona")
    @Blocked
    @RequiresApi(api = 30)
    public static int getZenMode() throws UnSupportedApiVersionException {
        if (VersionUtils.isS()) {
            return RefNotificationManagerInfo.getZenMode.call((NotificationManager) Epona.getContext().getSystemService("notification"), new Object[0]).intValue();
        } else if (VersionUtils.isR()) {
            Response execute = Epona.newCall(new Request.Builder().setComponentName(COMPONENT_NAME).setActionName("getZenMode").build()).execute();
            if (execute.isSuccessful()) {
                return execute.getBundle().getInt(SUCCESS);
            }
            return 0;
        } else {
            throw new UnSupportedApiVersionException("Not supported before R");
        }
    }

    @Grey
    @RequiresApi(api = ApsConstant.FEATURE_TYPE_MULTI_FRAME_DENOISE_HDR)
    public static boolean areNotificationsEnabledForPackage(String str, int i) throws RemoteException, UnSupportedApiVersionException {
        if (VersionUtils.isN()) {
            return NotificationManager.getService().areNotificationsEnabledForPackage(str, i);
        }
        throw new UnSupportedApiVersionException("not supported before N");
    }

    @Grey
    @RequiresApi(api = ApsConstant.FEATURE_TYPE_AI_HDR)
    public static StatusBarNotification[] getActiveNotifications(String str) throws UnSupportedApiVersionException, RemoteException {
        if (VersionUtils.isQ()) {
            return NotificationManager.getService().getActiveNotifications(str);
        }
        throw new UnSupportedApiVersionException("not supported before Q");
    }

    @Blocked
    @RequiresApi(api = ApsConstant.FEATURE_TYPE_AI_HDR)
    public static List<NotificationChannelGroup> getNotificationChannelGroups(String str) throws UnSupportedApiVersionException, RemoteException {
        if (VersionUtils.isS()) {
            try {
                return NotificationManager.getService().getNotificationChannelGroups(str).getList();
            } catch (NoSuchMethodError e) {
                Log.e(TAG, e.toString());
                throw new UnSupportedApiVersionException("no permission to access the blocked method", e);
            }
        } else if (VersionUtils.isOsVersion11_3()) {
            return NotificationManagerWrapper.getNotificationChannelGroups(str);
        } else {
            if (VersionUtils.isQ()) {
                return (List) getNotificationChannelGroupsQCompat(str);
            }
            throw new UnSupportedApiVersionException("no supported before Q");
        }
    }

    @Blocked
    @RequiresApi(api = ApsConstant.FEATURE_TYPE_AI_HDR)
    public static void createNotificationChannelGroups(String str, List list) throws UnSupportedApiVersionException, RemoteException {
        if (VersionUtils.isS()) {
            try {
                NotificationManager.getService().createNotificationChannelGroups(str, new ParceledListSlice(list));
            } catch (NoSuchMethodError e) {
                Log.e(TAG, e.toString());
                throw new UnSupportedApiVersionException("no permission to access the blocked method", e);
            }
        } else if (VersionUtils.isOsVersion11_3()) {
            NotificationManagerWrapper.createNotificationChannelGroups(str, list);
        } else if (VersionUtils.isQ()) {
            createNotificationChannelGroupsQCompat(str, list);
        } else {
            throw new UnSupportedApiVersionException("no supported before Q");
        }
    }

    @Grey
    @RequiresApi(api = ApsConstant.FEATURE_TYPE_AI_HDR)
    public static void cancelAllNotifications(String str, int i) throws UnSupportedApiVersionException, RemoteException {
        if (VersionUtils.isQ()) {
            NotificationManager.getService().cancelAllNotifications(str, i);
            return;
        }
        throw new UnSupportedApiVersionException("no supported before Q");
    }
}
