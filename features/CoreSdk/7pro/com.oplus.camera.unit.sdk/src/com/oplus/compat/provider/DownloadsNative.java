package com.oplus.compat.provider;

import android.net.Uri;
import android.provider.Downloads;
import androidx.annotation.RequiresApi;
import com.oplus.compat.annotation.Blocked;
import com.oplus.compat.annotation.Grey;
import com.oplus.compat.utils.util.UnSupportedApiVersionException;
import com.oplus.compat.utils.util.VersionUtils;
import com.oplus.compatsdk.annotation.OplusCompatibleMethod;
import com.oplus.ocs.camera.common.util.ApsConstant;
/* loaded from: classes.dex */
public class DownloadsNative {
    private static final String TAG = "DownloadsNative";
    @Grey
    @RequiresApi(api = ApsConstant.FEATURE_TYPE_AI_HDR)
    public static Uri CONTENT_URI = (Uri) getContentUriCompat();
    @Blocked
    @RequiresApi(api = ApsConstant.FEATURE_TYPE_AI_HDR)
    public static String ACTION_DOWNLOAD_COMPLETED = (String) getActionDownloadCompletedCompat();
    @Blocked
    @RequiresApi(api = ApsConstant.FEATURE_TYPE_AI_HDR)
    public static String COLUMN_URI = (String) getColumnUriCompat();
    @Blocked
    @RequiresApi(api = ApsConstant.FEATURE_TYPE_AI_HDR)
    public static String COLUMN_APP_DATA = (String) getColumnAppDataCompat();
    @Blocked
    @RequiresApi(api = ApsConstant.FEATURE_TYPE_AI_HDR)
    public static String COLUMN_FILE_NAME_HINT = (String) getColumnFileNameHintCompat();
    @Blocked
    @RequiresApi(api = ApsConstant.FEATURE_TYPE_AI_HDR)
    public static String _DATA = (String) getDataCompat();
    @Blocked
    @RequiresApi(api = ApsConstant.FEATURE_TYPE_AI_HDR)
    public static String COLUMN_MIME_TYPE = (String) getColumnMimeTypeCompat();
    @Blocked
    @RequiresApi(api = ApsConstant.FEATURE_TYPE_AI_HDR)
    public static String COLUMN_DESTINATION = (String) getColumnDestinationCompat();
    @Blocked
    @RequiresApi(api = ApsConstant.FEATURE_TYPE_AI_HDR)
    public static String COLUMN_VISIBILITY = (String) getColumnVisibilityCompat();
    @Blocked
    @RequiresApi(api = ApsConstant.FEATURE_TYPE_AI_HDR)
    public static String COLUMN_NOTIFICATION_PACKAGE = (String) getColumnNotificationPackageCompat();
    @Blocked
    @RequiresApi(api = ApsConstant.FEATURE_TYPE_AI_HDR)
    public static String COLUMN_NOTIFICATION_CLASS = (String) getColumnNotificationClassCompat();
    @Blocked
    @RequiresApi(api = ApsConstant.FEATURE_TYPE_AI_HDR)
    public static String COLUMN_REFERER = (String) getColumnRefererCompat();
    @Blocked
    @RequiresApi(api = ApsConstant.FEATURE_TYPE_AI_HDR)
    public static String COLUMN_TITLE = (String) getColumnTitleCompat();
    @Blocked
    @RequiresApi(api = ApsConstant.FEATURE_TYPE_AI_HDR)
    public static String COLUMN_DESCRIPTION = (String) getColumnDescriptionCompat();
    @Blocked
    @RequiresApi(api = ApsConstant.FEATURE_TYPE_AI_HDR)
    public static int DESTINATION_FILE_URI = ((Integer) getDestinationFileUriCompat()).intValue();
    @Blocked
    @RequiresApi(api = ApsConstant.FEATURE_TYPE_AI_HDR)
    public static int VISIBILITY_VISIBLE_NOTIFY_COMPLETED = ((Integer) getVisibilityVisibleNotifyCompletedCompat()).intValue();

    @OplusCompatibleMethod
    private static Object getContentUriCompat() {
        if (VersionUtils.isOsVersion11_3()) {
            return Downloads.Impl.CONTENT_URI;
        }
        return null;
    }

    @OplusCompatibleMethod
    private static Object getActionDownloadCompletedCompat() {
        if (VersionUtils.isS() || VersionUtils.isOsVersion11_3()) {
            return "android.intent.action.DOWNLOAD_COMPLETED";
        }
        return null;
    }

    @OplusCompatibleMethod
    private static Object getColumnUriCompat() {
        if (VersionUtils.isOsVersion11_3()) {
            return "uri";
        }
        return null;
    }

    @OplusCompatibleMethod
    private static Object getColumnAppDataCompat() {
        if (VersionUtils.isS() || VersionUtils.isOsVersion11_3()) {
            return "entity";
        }
        return null;
    }

    @OplusCompatibleMethod
    private static Object getColumnFileNameHintCompat() {
        if (VersionUtils.isS() || VersionUtils.isOsVersion11_3()) {
            return "hint";
        }
        return null;
    }

    @OplusCompatibleMethod
    private static Object getDataCompat() {
        if (VersionUtils.isS() || VersionUtils.isOsVersion11_3()) {
            return "_data";
        }
        return null;
    }

    @OplusCompatibleMethod
    private static Object getColumnMimeTypeCompat() {
        if (VersionUtils.isS() || VersionUtils.isOsVersion11_3()) {
            return "mimetype";
        }
        return null;
    }

    @OplusCompatibleMethod
    private static Object getColumnDestinationCompat() {
        if (VersionUtils.isS() || VersionUtils.isOsVersion11_3()) {
            return "destination";
        }
        return null;
    }

    @OplusCompatibleMethod
    private static Object getColumnVisibilityCompat() {
        if (VersionUtils.isS() || VersionUtils.isOsVersion11_3()) {
            return "visibility";
        }
        return null;
    }

    @OplusCompatibleMethod
    private static Object getColumnNotificationPackageCompat() {
        if (VersionUtils.isS() || VersionUtils.isOsVersion11_3()) {
            return "notificationpackage";
        }
        return null;
    }

    @OplusCompatibleMethod
    private static Object getColumnNotificationClassCompat() {
        if (VersionUtils.isS() || VersionUtils.isOsVersion11_3()) {
            return "notificationclass";
        }
        return null;
    }

    @OplusCompatibleMethod
    private static Object getColumnRefererCompat() {
        if (VersionUtils.isS() || VersionUtils.isOsVersion11_3()) {
            return "referer";
        }
        return null;
    }

    @OplusCompatibleMethod
    private static Object getColumnTitleCompat() {
        if (VersionUtils.isS() || VersionUtils.isOsVersion11_3()) {
            return "title";
        }
        return null;
    }

    @OplusCompatibleMethod
    private static Object getColumnDescriptionCompat() {
        if (VersionUtils.isS() || VersionUtils.isOsVersion11_3()) {
            return "description";
        }
        return null;
    }

    @OplusCompatibleMethod
    private static Object getDestinationFileUriCompat() {
        return (VersionUtils.isS() || VersionUtils.isOsVersion11_3()) ? 4 : null;
    }

    @OplusCompatibleMethod
    private static Object getVisibilityVisibleNotifyCompletedCompat() {
        return (VersionUtils.isS() || VersionUtils.isOsVersion11_3()) ? 1 : null;
    }

    private DownloadsNative() {
    }

    @Grey
    @RequiresApi(api = ApsConstant.FEATURE_TYPE_AI_HDR)
    public static boolean isStatusSuccess(int i) throws UnSupportedApiVersionException {
        if (VersionUtils.isQ()) {
            return Downloads.Impl.isStatusSuccess(i);
        }
        throw new UnSupportedApiVersionException();
    }

    @Grey
    @RequiresApi(api = ApsConstant.FEATURE_TYPE_AI_HDR)
    public static boolean isStatusCompleted(int i) throws UnSupportedApiVersionException {
        if (VersionUtils.isQ()) {
            return Downloads.Impl.isStatusCompleted(i);
        }
        throw new UnSupportedApiVersionException();
    }
}
