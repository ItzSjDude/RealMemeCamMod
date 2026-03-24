package com.oplus.android.internal.util;

import android.util.StatsEvent;
import android.util.StatsLog;

/* loaded from: classes4.dex */
public class OplusFrameworkStatsLog {
    public static final byte ANNOTATION_ID_EXCLUSIVE_STATE = 4;
    public static final byte ANNOTATION_ID_IS_UID = 1;
    public static final byte ANNOTATION_ID_PRIMARY_FIELD = 3;
    public static final byte ANNOTATION_ID_PRIMARY_FIELD_FIRST_UID = 5;
    public static final byte ANNOTATION_ID_STATE_NESTED = 8;
    public static final byte ANNOTATION_ID_TRIGGER_STATE_RESET = 7;
    public static final byte ANNOTATION_ID_TRUNCATE_TIMESTAMP = 2;
    public static final int OPLUS_MIDASD_ALARM_USAGE = 100002;
    public static final int OPLUS_MIDASD_BLUETOOTH_USAGE = 100008;
    public static final int OPLUS_MIDASD_CELLULAR_USAGE = 100007;
    public static final int OPLUS_MIDASD_CPU_USAGE = 100001;
    public static final int OPLUS_MIDASD_GNSS_USAGE = 100004;
    public static final int OPLUS_MIDASD_SENSOR_USAGE = 100005;
    public static final int OPLUS_MIDASD_WAKELOCK_USAGE = 100003;
    public static final int OPLUS_MIDASD_WIFI_USAGE = 100006;
    public static final int OPLUS_SKIP_FRAME = 100000;

    public static void write(int code, int arg1, int arg2, boolean arg3, long arg4, float arg5, long arg6, String arg7, String arg8, long arg9, boolean arg10) {
        StatsEvent.Builder builder = StatsEvent.newBuilder();
        builder.setAtomId(code);
        builder.writeInt(arg1);
        if (100000 == code) {
            builder.addBooleanAnnotation((byte) 1, true);
        }
        builder.writeInt(arg2);
        builder.writeBoolean(arg3);
        builder.writeLong(arg4);
        builder.writeFloat(arg5);
        builder.writeLong(arg6);
        builder.writeString(arg7);
        builder.writeString(arg8);
        builder.writeLong(arg9);
        builder.writeBoolean(arg10);
        builder.usePooledBuffer();
        StatsLog.write(builder.build());
    }

    public static void write(int code, int arg1, long arg2, long arg3, int arg4, int arg5, long arg6, long arg7) {
        StatsEvent.Builder builder = StatsEvent.newBuilder();
        builder.setAtomId(code);
        builder.writeInt(arg1);
        if (100005 == code) {
            builder.addBooleanAnnotation((byte) 1, true);
        }
        builder.writeLong(arg2);
        builder.writeLong(arg3);
        builder.writeInt(arg4);
        builder.writeInt(arg5);
        builder.writeLong(arg6);
        builder.writeLong(arg7);
        builder.usePooledBuffer();
        StatsLog.write(builder.build());
    }

    public static void write(int code, int arg1, long arg2, long arg3, int arg4, int arg5, long arg6, String arg7, long arg8) {
        StatsEvent.Builder builder = StatsEvent.newBuilder();
        builder.setAtomId(code);
        builder.writeInt(arg1);
        if (100002 == code) {
            builder.addBooleanAnnotation((byte) 1, true);
        }
        builder.writeLong(arg2);
        builder.writeLong(arg3);
        builder.writeInt(arg4);
        builder.writeInt(arg5);
        builder.writeLong(arg6);
        builder.writeString(arg7);
        builder.writeLong(arg8);
        builder.usePooledBuffer();
        StatsLog.write(builder.build());
    }

    public static void write(int code, int arg1, long arg2, long arg3, int arg4, long arg5, String arg6, long arg7) {
        StatsEvent.Builder builder = StatsEvent.newBuilder();
        builder.setAtomId(code);
        builder.writeInt(arg1);
        if (100003 == code) {
            builder.addBooleanAnnotation((byte) 1, true);
        }
        builder.writeLong(arg2);
        builder.writeLong(arg3);
        builder.writeInt(arg4);
        builder.writeLong(arg5);
        builder.writeString(arg6);
        builder.writeLong(arg7);
        builder.usePooledBuffer();
        StatsLog.write(builder.build());
    }

    public static void write(int code, int arg1, long arg2, long arg3, long arg4, long arg5, long arg6) {
        StatsEvent.Builder builder = StatsEvent.newBuilder();
        builder.setAtomId(code);
        builder.writeInt(arg1);
        if (100004 == code) {
            builder.addBooleanAnnotation((byte) 1, true);
        }
        if (100008 == code) {
            builder.addBooleanAnnotation((byte) 1, true);
        }
        builder.writeLong(arg2);
        builder.writeLong(arg3);
        builder.writeLong(arg4);
        builder.writeLong(arg5);
        builder.writeLong(arg6);
        builder.usePooledBuffer();
        StatsLog.write(builder.build());
    }

    public static void write(int code, int arg1, long arg2, long arg3, long arg4, long arg5, long arg6, long arg7, long arg8) {
        StatsEvent.Builder builder = StatsEvent.newBuilder();
        builder.setAtomId(code);
        builder.writeInt(arg1);
        if (100001 == code) {
            builder.addBooleanAnnotation((byte) 1, true);
        }
        builder.writeLong(arg2);
        builder.writeLong(arg3);
        builder.writeLong(arg4);
        builder.writeLong(arg5);
        builder.writeLong(arg6);
        builder.writeLong(arg7);
        builder.writeLong(arg8);
        builder.usePooledBuffer();
        StatsLog.write(builder.build());
    }

    public static void write(int code, int arg1, long arg2, long arg3, float arg4, float arg5, long arg6, long arg7, int arg8, long arg9, long arg10, long arg11) {
        StatsEvent.Builder builder = StatsEvent.newBuilder();
        builder.setAtomId(code);
        builder.writeInt(arg1);
        if (100006 == code) {
            builder.addBooleanAnnotation((byte) 1, true);
        }
        builder.writeLong(arg2);
        builder.writeLong(arg3);
        builder.writeFloat(arg4);
        builder.writeFloat(arg5);
        builder.writeLong(arg6);
        builder.writeLong(arg7);
        builder.writeInt(arg8);
        builder.writeLong(arg9);
        builder.writeLong(arg10);
        builder.writeLong(arg11);
        builder.usePooledBuffer();
        StatsLog.write(builder.build());
    }

    public static void write(int code, int arg1, long arg2, long arg3, float arg4, float arg5, long arg6, long arg7, long arg8, int arg9, long arg10) {
        StatsEvent.Builder builder = StatsEvent.newBuilder();
        builder.setAtomId(code);
        builder.writeInt(arg1);
        if (100007 == code) {
            builder.addBooleanAnnotation((byte) 1, true);
        }
        builder.writeLong(arg2);
        builder.writeLong(arg3);
        builder.writeFloat(arg4);
        builder.writeFloat(arg5);
        builder.writeLong(arg6);
        builder.writeLong(arg7);
        builder.writeLong(arg8);
        builder.writeInt(arg9);
        builder.writeLong(arg10);
        builder.usePooledBuffer();
        StatsLog.write(builder.build());
    }
}
