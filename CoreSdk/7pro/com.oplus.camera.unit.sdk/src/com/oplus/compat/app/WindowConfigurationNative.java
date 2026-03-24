package com.oplus.compat.app;

import android.app.WindowConfiguration;
import androidx.annotation.RequiresApi;
import com.oplus.compat.annotation.Blocked;
import com.oplus.compat.annotation.Permission;
import com.oplus.ocs.camera.common.util.ApsConstant;
import com.oplus.utils.reflect.RefClass;
import com.oplus.utils.reflect.RefInt;
/* loaded from: classes.dex */
public class WindowConfigurationNative {
    private static final String COMPONENT_NAME = "android.app.WindowConfiguration";
    private static final String KEY_RESULT = "result";
    private static final int STATUS_ERROR = Integer.MIN_VALUE;
    private static final String TAG = "WindowConfigurationNative";
    private static final String WINDOWING_MODE_FULLSCREEN_NAME = "WINDOWING_MODE_FULLSCREEN";
    @Permission(authStr = "WindowConfiguration", type = "epona")
    @Blocked
    @RequiresApi(api = ApsConstant.FEATURE_TYPE_AI_HDR)
    public static final int WINDOWING_MODE_FULLSCREEN = init(WINDOWING_MODE_FULLSCREEN_NAME);
    private static final String WINDOWING_MODE_SPLIT_SCREEN_PRIMARY_NAME = "WINDOWING_MODE_SPLIT_SCREEN_PRIMARY";
    @Permission(authStr = "WindowConfiguration", type = "epona")
    @Blocked
    @RequiresApi(api = ApsConstant.FEATURE_TYPE_AI_HDR)
    public static final int WINDOWING_MODE_SPLIT_SCREEN_PRIMARY = init(WINDOWING_MODE_SPLIT_SCREEN_PRIMARY_NAME);
    private static final String WINDOWING_MODE_SPLIT_SCREEN_SECONDARY_NAME = "WINDOWING_MODE_SPLIT_SCREEN_SECONDARY";
    @Permission(authStr = "WindowConfiguration", type = "epona")
    @Blocked
    @RequiresApi(api = ApsConstant.FEATURE_TYPE_AI_HDR)
    public static final int WINDOWING_MODE_SPLIT_SCREEN_SECONDARY = init(WINDOWING_MODE_SPLIT_SCREEN_SECONDARY_NAME);

    /* JADX INFO: Access modifiers changed from: private */
    /* loaded from: classes.dex */
    public static class ReflectInfo {
        public static RefInt WINDOWING_MODE_FULLSCREEN;
        public static RefInt WINDOWING_MODE_SPLIT_SCREEN_PRIMARY;
        public static RefInt WINDOWING_MODE_SPLIT_SCREEN_SECONDARY;

        private ReflectInfo() {
        }

        static {
            RefClass.load(ReflectInfo.class, WindowConfiguration.class);
        }
    }

    private WindowConfigurationNative() {
    }

    /* JADX WARN: Removed duplicated region for block: B:20:0x003f  */
    /* JADX WARN: Removed duplicated region for block: B:21:0x0041 A[RETURN] */
    /* JADX WARN: Removed duplicated region for block: B:23:0x0043 A[RETURN] */
    /* JADX WARN: Removed duplicated region for block: B:24:0x0044 A[RETURN] */
    /* JADX WARN: Removed duplicated region for block: B:51:0x00ab  */
    /* JADX WARN: Removed duplicated region for block: B:52:0x00ac A[Catch: Throwable -> 0x00c9, TryCatch #0 {Throwable -> 0x00c9, blocks: (B:2:0x0000, B:4:0x0013, B:19:0x003c, B:9:0x001e, B:12:0x0028, B:15:0x0031, B:26:0x0046, B:28:0x004c, B:30:0x006d, B:32:0x0078, B:34:0x007e, B:50:0x00a8, B:52:0x00ac, B:54:0x00b3, B:56:0x00ba, B:39:0x0089, B:42:0x0093, B:45:0x009c, B:58:0x00c1), top: B:64:0x0000 }] */
    /* JADX WARN: Removed duplicated region for block: B:54:0x00b3 A[Catch: Throwable -> 0x00c9, TryCatch #0 {Throwable -> 0x00c9, blocks: (B:2:0x0000, B:4:0x0013, B:19:0x003c, B:9:0x001e, B:12:0x0028, B:15:0x0031, B:26:0x0046, B:28:0x004c, B:30:0x006d, B:32:0x0078, B:34:0x007e, B:50:0x00a8, B:52:0x00ac, B:54:0x00b3, B:56:0x00ba, B:39:0x0089, B:42:0x0093, B:45:0x009c, B:58:0x00c1), top: B:64:0x0000 }] */
    /* JADX WARN: Removed duplicated region for block: B:56:0x00ba A[Catch: Throwable -> 0x00c9, TryCatch #0 {Throwable -> 0x00c9, blocks: (B:2:0x0000, B:4:0x0013, B:19:0x003c, B:9:0x001e, B:12:0x0028, B:15:0x0031, B:26:0x0046, B:28:0x004c, B:30:0x006d, B:32:0x0078, B:34:0x007e, B:50:0x00a8, B:52:0x00ac, B:54:0x00b3, B:56:0x00ba, B:39:0x0089, B:42:0x0093, B:45:0x009c, B:58:0x00c1), top: B:64:0x0000 }] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    private static int init(java.lang.String r8) {
        /*
            boolean r0 = com.oplus.compat.utils.util.VersionUtils.isS()     // Catch: java.lang.Throwable -> Lc9
            r1 = 0
            r2 = 2
            r3 = 2082159075(0x7c1b39e3, float:3.2239204E36)
            r4 = 524756245(0x1f472515, float:4.2170563E-20)
            r5 = -445665430(0xffffffffe56faf6a, float:-7.074259E22)
            r6 = -1
            r7 = 1
            if (r0 == 0) goto L46
            int r0 = r8.hashCode()     // Catch: java.lang.Throwable -> Lc9
            if (r0 == r5) goto L31
            if (r0 == r4) goto L28
            if (r0 == r3) goto L1e
            goto L3b
        L1e:
            java.lang.String r0 = "WINDOWING_MODE_SPLIT_SCREEN_PRIMARY"
            boolean r8 = r8.equals(r0)     // Catch: java.lang.Throwable -> Lc9
            if (r8 == 0) goto L3b
            r1 = r2
            goto L3c
        L28:
            java.lang.String r0 = "WINDOWING_MODE_SPLIT_SCREEN_SECONDARY"
            boolean r8 = r8.equals(r0)     // Catch: java.lang.Throwable -> Lc9
            if (r8 == 0) goto L3b
            goto L3c
        L31:
            java.lang.String r0 = "WINDOWING_MODE_FULLSCREEN"
            boolean r8 = r8.equals(r0)     // Catch: java.lang.Throwable -> Lc9
            if (r8 == 0) goto L3b
            r1 = r7
            goto L3c
        L3b:
            r1 = r6
        L3c:
            switch(r1) {
                case 0: goto L44;
                case 1: goto L43;
                case 2: goto L41;
                default: goto L3f;
            }     // Catch: java.lang.Throwable -> Lc9
        L3f:
            goto Ld3
        L41:
            r8 = 3
            return r8
        L43:
            return r7
        L44:
            r8 = 4
            return r8
        L46:
            boolean r0 = com.oplus.compat.utils.util.VersionUtils.isR()     // Catch: java.lang.Throwable -> Lc9
            if (r0 == 0) goto L78
            com.oplus.epona.Request$Builder r0 = new com.oplus.epona.Request$Builder     // Catch: java.lang.Throwable -> Lc9
            r0.<init>()     // Catch: java.lang.Throwable -> Lc9
            java.lang.String r1 = "android.app.WindowConfiguration"
            com.oplus.epona.Request$Builder r0 = r0.setComponentName(r1)     // Catch: java.lang.Throwable -> Lc9
            com.oplus.epona.Request$Builder r8 = r0.setActionName(r8)     // Catch: java.lang.Throwable -> Lc9
            com.oplus.epona.Request r8 = r8.build()     // Catch: java.lang.Throwable -> Lc9
            com.oplus.epona.internal.RealCall r8 = com.oplus.epona.Epona.newCall(r8)     // Catch: java.lang.Throwable -> Lc9
            com.oplus.epona.Response r8 = r8.execute()     // Catch: java.lang.Throwable -> Lc9
            boolean r0 = r8.isSuccessful()     // Catch: java.lang.Throwable -> Lc9
            if (r0 == 0) goto Ld3
            android.os.Bundle r8 = r8.getBundle()     // Catch: java.lang.Throwable -> Lc9
            java.lang.String r0 = "result"
            int r8 = r8.getInt(r0)     // Catch: java.lang.Throwable -> Lc9
            return r8
        L78:
            boolean r0 = com.oplus.compat.utils.util.VersionUtils.isQ()     // Catch: java.lang.Throwable -> Lc9
            if (r0 == 0) goto Lc1
            int r0 = r8.hashCode()     // Catch: java.lang.Throwable -> Lc9
            if (r0 == r5) goto L9c
            if (r0 == r4) goto L93
            if (r0 == r3) goto L89
            goto La6
        L89:
            java.lang.String r0 = "WINDOWING_MODE_SPLIT_SCREEN_PRIMARY"
            boolean r8 = r8.equals(r0)     // Catch: java.lang.Throwable -> Lc9
            if (r8 == 0) goto La6
            r1 = r2
            goto La7
        L93:
            java.lang.String r0 = "WINDOWING_MODE_SPLIT_SCREEN_SECONDARY"
            boolean r8 = r8.equals(r0)     // Catch: java.lang.Throwable -> Lc9
            if (r8 == 0) goto La6
            goto La7
        L9c:
            java.lang.String r0 = "WINDOWING_MODE_FULLSCREEN"
            boolean r8 = r8.equals(r0)     // Catch: java.lang.Throwable -> Lc9
            if (r8 == 0) goto La6
            r1 = r7
            goto La7
        La6:
            r1 = r6
        La7:
            r8 = 0
            switch(r1) {
                case 0: goto Lba;
                case 1: goto Lb3;
                case 2: goto Lac;
                default: goto Lab;
            }     // Catch: java.lang.Throwable -> Lc9
        Lab:
            goto Ld3
        Lac:
            com.oplus.utils.reflect.RefInt r0 = com.oplus.compat.app.WindowConfigurationNative.ReflectInfo.WINDOWING_MODE_SPLIT_SCREEN_PRIMARY     // Catch: java.lang.Throwable -> Lc9
            int r8 = r0.getWithException(r8)     // Catch: java.lang.Throwable -> Lc9
            return r8
        Lb3:
            com.oplus.utils.reflect.RefInt r0 = com.oplus.compat.app.WindowConfigurationNative.ReflectInfo.WINDOWING_MODE_FULLSCREEN     // Catch: java.lang.Throwable -> Lc9
            int r8 = r0.getWithException(r8)     // Catch: java.lang.Throwable -> Lc9
            return r8
        Lba:
            com.oplus.utils.reflect.RefInt r0 = com.oplus.compat.app.WindowConfigurationNative.ReflectInfo.WINDOWING_MODE_SPLIT_SCREEN_SECONDARY     // Catch: java.lang.Throwable -> Lc9
            int r8 = r0.getWithException(r8)     // Catch: java.lang.Throwable -> Lc9
            return r8
        Lc1:
            java.lang.String r8 = "WindowConfigurationNative"
            java.lang.String r0 = "not supported before R"
            android.util.Log.e(r8, r0)     // Catch: java.lang.Throwable -> Lc9
            goto Ld3
        Lc9:
            r8 = move-exception
            java.lang.String r0 = "WindowConfigurationNative"
            java.lang.String r8 = r8.toString()
            android.util.Log.e(r0, r8)
        Ld3:
            r8 = -2147483648(0xffffffff80000000, float:-0.0)
            return r8
        */
        throw new UnsupportedOperationException("Method not decompiled: com.oplus.compat.app.WindowConfigurationNative.init(java.lang.String):int");
    }
}
