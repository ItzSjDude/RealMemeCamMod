package android.os;

import java.util.HashMap;

/* loaded from: classes3.dex */
public interface ITheiaManagerExt {
    public static final String TAG = "ITheiaManagerExt";
    public static final HashMap<String, Boolean> TEHIA_RUS_MAP = new HashMap<>();
    public static final String THEIA_ACTIVITY_PAUSE_TIMEOUT_ENABLE = "activityPauseTimedoutEvent";
    public static final String THEIA_APP_BOOT_TIMEOUT_ENABLE = "appBootTimeoutEvent";
    public static final String THEIA_BACK_KEY_ENABLE = "backKeyEvent";
    public static final long THEIA_EVENT_ACTIVITY_PAUSE_TIMEOUT = 2;
    public static final long THEIA_EVENT_ALL_WIN_DRAW_TIMEOUT = 260;
    public static final long THEIA_EVENT_ANR = 3;
    public static final long THEIA_EVENT_APP_BOOT_TIMEOUT = 1;
    public static final long THEIA_EVENT_APP_TRANSITION_TIMEOUT = 259;
    public static final long THEIA_EVENT_BACKKEY_PANIC = 3843;
    public static final String THEIA_EVENT_COMMON_ANR_ENABLE = "appAnr";
    public static final long THEIA_EVENT_COMMON_CRASH = 5;
    public static final String THEIA_EVENT_COMMON_CRASH_ENABLE = "appCrash";
    public static final long THEIA_EVENT_FRAMEWORK_BLOCK = 770;
    public static final long THEIA_EVENT_HARDWARE_ERROR = 2049;
    public static final long THEIA_EVENT_HECATE = 1041;
    public static final long THEIA_EVENT_HOMEKEY_PANIC = 3842;
    public static final long THEIA_EVENT_HUNGTASK = 1281;
    public static final long THEIA_EVENT_INIT_HANG = 1283;
    public static final int THEIA_EVENT_INVAILD = -1;
    public static final long THEIA_EVENT_LAUNCHER_ANR = 1538;
    public static final long THEIA_EVENT_LAUNCHER_CRASH = 1537;
    public static final long THEIA_EVENT_NFW = 257;
    public static final long THEIA_EVENT_PWK_LONGPRESS = 3844;
    public static final long THEIA_EVENT_PWK_MONITOR = 513;
    public static final long THEIA_EVENT_PWK_PANIC = 3841;
    public static final long THEIA_EVENT_SCREEN_FREEZE_TIMEOUT = 261;
    public static final long THEIA_EVENT_SENSOR_MONITOR_FAR = 516;
    public static final long THEIA_EVENT_SENSOR_MONITOR_NEAR = 515;
    public static final long THEIA_EVENT_SF_HANG = 1026;
    public static final long THEIA_EVENT_SF_HANG_WARNING = 1025;
    public static final long THEIA_EVENT_SYSTEMUI_ANR = 1794;
    public static final long THEIA_EVENT_SYSTEMUI_CRASH = 1793;
    public static final long THEIA_EVENT_SYSTEMUI_HUNG_WHEN_UNLOCK = 1797;
    public static final long THEIA_EVENT_SYSTEMUI_UITIMEOUT_STATUSBAR = 1795;
    public static final long THEIA_EVENT_SYSTEMUI_UITIMEOUT_WHEN_UNLOCK = 1796;
    public static final long THEIA_EVENT_SYSTEM_SERVER_HALF_WATCHDOG = 769;
    public static final long THEIA_EVENT_TOUCHPANEL_PANIC = 3845;
    public static final long THEIA_EVENT_TRANSPARENT_WINDOW = 258;
    public static final long THEIA_EVENT_TRIGGER_ERROR_UPLOAD = 3585;
    public static final long THEIA_EVENT_UITIMEOUT = 4;
    public static final String THEIA_EYE_FWK_BLOCK_ENABLE = "eyeFrameworkBlockEvent";
    public static final String THEIA_HALF_WATCHDOG_ENABLE = "halfWatchdogEvent";
    public static final String THEIA_HOME_KEY_ENABLE = "homeKeyEvent";
    public static final String THEIA_LAUNCHER_ANR_ENABLE = "launcherAnrEvent";
    public static final String THEIA_LAUNCHER_CRASH_ENABLE = "launcherCrashEvent";
    public static final int THEIA_LOGINFO_ANDROID_LOG = 1;
    public static final int THEIA_LOGINFO_ANR_TRACES = 4;
    public static final int THEIA_LOGINFO_ANR_TRACES_ONLY_CP = 268435456;
    public static final int THEIA_LOGINFO_APP_CRASH_HISTORY = 128;
    public static final int THEIA_LOGINFO_BINDER_INFO = 32;
    public static final int THEIA_LOGINFO_CPU_INFO = 256;
    public static final int THEIA_LOGINFO_CPU_INFO_NUM_RAW = 512;
    public static final int THEIA_LOGINFO_CPU_INFO_OVERALL_RAW = 1024;
    public static final int THEIA_LOGINFO_CPU_INFO_PER_PROCESS_RAW = 2048;
    public static final int THEIA_LOGINFO_DUMPSYS_ACTIVITY = 67108864;
    public static final int THEIA_LOGINFO_DUMPSYS_MEMINFO = 16;
    public static final int THEIA_LOGINFO_DUMPSYS_SF = 8;
    public static final int THEIA_LOGINFO_DUMPSYS_WINDOW = 134217728;
    public static final int THEIA_LOGINFO_EVENTS_LOG = 4096;
    public static final int THEIA_LOGINFO_FROZEN_INFO = 8192;
    public static final int THEIA_LOGINFO_INTERRUPTS_LOG = 16384;
    public static final int THEIA_LOGINFO_IO_INFO = 32768;
    public static final int THEIA_LOGINFO_IRQ_INFO = 65536;
    public static final int THEIA_LOGINFO_KERNEL_LOG = 2;
    public static final int THEIA_LOGINFO_NULL = 0;
    public static final int THEIA_LOGINFO_PACKAGE_INFO = 131072;
    public static final int THEIA_LOGINFO_PROC_MEM_INFO = 262144;
    public static final int THEIA_LOGINFO_PROP_LOG = 524288;
    public static final int THEIA_LOGINFO_RADIO_LOG = 1048576;
    public static final int THEIA_LOGINFO_SF_BACKTRACE = 2097152;
    public static final int THEIA_LOGINFO_SYSTRACE = 536870912;
    public static final int THEIA_LOGINFO_THEIA_DUMPSTATE = 64;
    public static final int THEIA_LOGINFO_THEIA_INFO = 4194304;
    public static final int THEIA_LOGINFO_THREAD_LIST_INFO = 8388608;
    public static final int THEIA_LOGINFO_TOP_INFO = 16777216;
    public static final int THEIA_LOGINFO_VMALLOC_INFO = 33554432;
    public static final String THEIA_NFW_ENABLE = "noFocusWindowEvent";
    public static final String THEIA_POINT_ENABLE = "pointEvent";
    public static final String THEIA_POWER_KEY_ENABLE = "powerKeyEvent";
    public static final String THEIA_SCREEN_FREEZE_TIMEOUT_ENABLE = "screenFreezeTimeoutEvent";
    public static final String THEIA_SCREEN_SHOT_ENABLE = "screenShotEvent";
    public static final String THEIA_SYSTEMUI_ANR_ENABLE = "systemuiAnrEvent";
    public static final String THEIA_SYSTEMUI_CRASH_ENABLE = "systemuiCrashEvent";
    public static final String THEIA_SYSTEMUI_HUNG_WHEN_UNLOCK_ENABLE = "systemuiHungWhenUnlockEvent";
    public static final String THEIA_SYSTEMUI_UITIMEOUT_STATUSBAR_ENABLE = "systemuiUiTimeoutStatusBarEvent";
    public static final String THEIA_SYSTEMUI_UITIMEOUT_WHEN_UNLOCK_ENABLE = "systemuiUiTimeoutWhenUnlockEvent";
    public static final String THEIA_TRANSITION_TIMEOUT_ENABLE = "transitionTimeoutEvent";
    public static final String THEIA_TRANSPARENT_WINDOW_ENABLE = "transparentWindowEvent";
    public static final String THEIA_UITIMEOUT_ENABLE = "uiTimeoutEvent";
    public static final String THEIA_WIN_DRAW_TIMEOUT_ENABLE = "winDrawTimeoutEvent";

    default void sendEvent(long theiaID, long timeStamp, int pid, int uid, long logInfo, String extraInfo) {
    }

    default long getTheiaEventTypeWhenANR(String pkgName) {
        return -1L;
    }

    default long getTheiaEventTypeWhenAppCrash(String pkgName) {
        return -1L;
    }
}
