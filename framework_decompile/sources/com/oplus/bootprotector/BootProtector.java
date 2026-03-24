package com.oplus.bootprotector;

import android.os.SystemProperties;
import android.util.Slog;
import android.util.Xml;
import java.io.FileInputStream;
import java.io.FileOutputStream;
import java.io.IOException;
import java.io.InputStream;
import java.io.OutputStream;
import java.nio.charset.StandardCharsets;
import org.xmlpull.v1.XmlPullParser;
import org.xmlpull.v1.XmlSerializer;

/* loaded from: classes4.dex */
public class BootProtector {
    private static final long BOOTTIME_THRESHOLD = 240000;
    private static final int FIRST_BOOT = 1;
    private static final int STARTCOUNT_THRESHOLD = 3;
    private static final String SYSPROP_BOOT_ABNORMAL = "sys.bootprotector.bootabnormal";
    private static final String SYSPROP_FIRST_BOOT_TIME = "sys.bootprotector.firstboottime";
    private static final String SYSPROP_START_COUNT = "sys.system_server.start_count";
    private static boolean sIsBootAbnormal;

    public static native void fileDetectAndRecoveryNative(String str);

    public static native void recordBootSuccessNative(String str);

    static {
        System.loadLibrary("bootprotectorjni");
        sIsBootAbnormal = false;
    }

    public static void runBootProtector(int startCount) {
        if (startCount == 1) {
            long firstBootTime = System.currentTimeMillis();
            SystemProperties.set(SYSPROP_FIRST_BOOT_TIME, String.valueOf(firstBootTime));
            return;
        }
        if (startCount == 3) {
            long nowBootTime = System.currentTimeMillis();
            long firstBootTime2 = SystemProperties.getLong(SYSPROP_FIRST_BOOT_TIME, 0L);
            boolean z = nowBootTime - firstBootTime2 < BOOTTIME_THRESHOLD;
            sIsBootAbnormal = z;
            if (z) {
                SystemProperties.set(SYSPROP_BOOT_ABNORMAL, "true");
                return;
            }
            return;
        }
        if (startCount == 4 && SystemProperties.getBoolean(SYSPROP_BOOT_ABNORMAL, false)) {
            fileDetectAndRecoveryNative("system_server");
        }
    }

    public static void recordBootSuccess() {
        if (SystemProperties.getBoolean(SYSPROP_BOOT_ABNORMAL, false)) {
            SystemProperties.set(SYSPROP_BOOT_ABNORMAL, "false");
            if (SystemProperties.getInt(SYSPROP_START_COUNT, 0) == 4) {
                recordBootSuccessNative("system_server");
            }
        }
    }

    public static int convertAbxXml(String inPath) throws IOException {
        Slog.d("bootprotector", "convert AbxXml: " + inPath);
        String outPath = inPath + ".bptmp";
        XmlPullParser in = Xml.newBinaryPullParser();
        XmlSerializer out = Xml.newSerializer();
        try {
            InputStream is = new FileInputStream(inPath);
            try {
                OutputStream os = new FileOutputStream(outPath);
                try {
                    in.setInput(is, StandardCharsets.UTF_8.name());
                    out.setOutput(os, StandardCharsets.UTF_8.name());
                    out.setFeature("http://xmlpull.org/v1/doc/features.html#indent-output", true);
                    Xml.copy(in, out);
                    out.flush();
                    os.close();
                    is.close();
                    return 0;
                } finally {
                }
            } finally {
            }
        } catch (Exception e) {
            return -1;
        }
    }
}
