package android.media;

import android.content.Context;
import android.net.Uri;
import android.util.Pair;

/* loaded from: classes2.dex */
public interface IRingtoneManagerExt {
    public static final String CALENDAR_REMINDER_SOUND = "calendar_sound";
    public static final String NOTIFICATION_SOUND_SIM2 = "notification_sim2";
    public static final String OPLUS_SMS_NOTIFICATION_SOUND = "oplus_customize_sms_notification_sound";
    public static final String RINGTONE_CACHE_PATH = "ringtone_cache_path";
    public static final String RINGTONE_CACHE_PATH_SIM2 = "ringtone_cache_path_sim2";
    public static final String RINGTONE_CACHE_SIM2 = "ringtone_cache_sim2";
    public static final String RINGTONE_CACHE_TITLE = "ringtone_cache_title";
    public static final String RINGTONE_CACHE_TITLE_SIM2 = "ringtone_cache_title_sim2";
    public static final String RINGTONE_SIM2 = "ringtone_sim2";
    public static final int TYPE_ALARM = 4;
    public static final int TYPE_NOTIFICATION = 2;
    public static final int TYPE_NOTIFICATION_CALENDAR = 32;
    public static final int TYPE_NOTIFICATION_SIM2 = 16;
    public static final int TYPE_NOTIFICATION_SMS = 8;
    public static final int TYPE_RINGTONE = 1;
    public static final int TYPE_RINGTONE_SIM2 = 64;

    Pair<String, String> getRingtoneTitlePath(Context context, Uri uri);

    void putSettingRingCacheTitleAndPath(Context context, int i, String str, String str2);

    default boolean isComponentVersionChange(Context context) {
        return false;
    }

    default boolean isCustomDefaultRingtoneNeeded(Context context) {
        return false;
    }

    default void clearDefaultRingtonesHistory(Context context) {
    }

    default void setRingtonesUri(Context context, int type, Uri ringtoneUri) {
    }

    default void setRingtoneUriAgainIfNeeded(Context context, String filename, Uri baseuri, int type) {
    }

    default void updateRingtoneUriIfNeeded(Context context, int type, String setting) {
    }

    default void hookforMediaProviderCustomized(Context context) {
    }

    default void setOplusDefaultRingtoneUriIfNotSet(Context context, int type, String filename, String whichAudio) {
    }
}
