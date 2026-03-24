package com.oppo.inner.app;

import android.app.NotificationChannel;
import android.app.NotificationChannelGroup;
import android.app.NotificationManager;
import android.content.ComponentName;
import android.content.pm.ParceledListSlice;
import android.os.RemoteException;
import android.service.notification.StatusBarNotification;
import android.util.Log;
import java.util.List;
import com.oplus.inner.app.NotificationManagerWrapper;

public class NotificationManagerWrapper {
    public static boolean areNotificationsEnabledForPackage(String pkg, int uid) {
        return NotificationManagerWrapper.areNotificationsEnabledForPackage(pkg, uid);
    }

    public static NotificationChannel getNotificationChannelForPackage(String pkg, int uid, String channelId, String conversationId, boolean includeDeleted) {
        return NotificationManagerWrapper.getNotificationChannelForPackage(pkg, uid, channelId, conversationId, includeDeleted);
    }

    public static StatusBarNotification[] getActiveNotifications(String callingPkg) {
        return NotificationManagerWrapper.getActiveNotifications(callingPkg);
    }

    public static List<NotificationChannelGroup> getNotificationChannelGroupsForPackage(String pkg, int uid, boolean includeDeleted) {
        return NotificationManagerWrapper.getNotificationChannelGroupsForPackage(pkg, uid, includeDeleted);
    }

    public static List<NotificationChannel> getNotificationChannelsForPackage(String pkg, int uid, boolean includeDeleted) {
        return NotificationManagerWrapper.getNotificationChannelsForPackage(pkg, uid, includeDeleted);
    }

    public static void setNotificationsEnabledForPackage(String pkg, int uid, boolean enabled) {
        NotificationManagerWrapper.setNotificationsEnabledForPackage(pkg, uid, enabled);
    }

    public static void setNotificationListenerAccessGranted(ComponentName listener, boolean granted) {
        NotificationManagerWrapper.setNotificationListenerAccessGranted(listener, granted);
    }

    public static void updateNotificationChannelForPackage(String pkg, int uid, NotificationChannel channel) {
        NotificationManagerWrapper.updateNotificationChannelForPackage(pkg, uid, channel);
    }

    public static void updateNotificationChannelGroupForPackage(String pkg, int uid, NotificationChannelGroup group) {
        NotificationManagerWrapper.updateNotificationChannelGroupForPackage(pkg, uid, group);
    }

    public static boolean onlyHasDefaultChannel(String pkg, int uid) {
        return NotificationManagerWrapper.onlyHasDefaultChannel(pkg, uid);
    }

    public static int getDeletedChannelCount(String pkg, int uid) {
        return NotificationManagerWrapper.getDeletedChannelCount(pkg, uid);
    }

    public static List<NotificationChannelGroup> getNotificationChannelGroups(String pkg) {
        return NotificationManagerWrapper.getNotificationChannelGroups(pkg);
    }

    public static NotificationChannelGroup getNotificationChannelGroupForPackage(String groupId, String pkg, int uid) {
        return NotificationManagerWrapper.getNotificationChannelGroupForPackage(groupId, pkg, uid);
    }

    public static void createNotificationChannelsForPackage(String pkg, int uid, List channelsList) {
        NotificationManagerWrapper.createNotificationChannelsForPackage(pkg, uid, channelsList);
    }

    public static void createNotificationChannelGroups(String pkg, List channelGroupList) {
        NotificationManagerWrapper.createNotificationChannelGroups(pkg, channelGroupList);
    }

    public static void cancelAllNotifications(String pkg, int userId) {
        NotificationManagerWrapper.cancelAllNotifications(pkg, userId);
    }

}