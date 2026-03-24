package com.android.internal.util;

import android.annotation.AppIdInt;
import android.annotation.ColorInt;
import android.annotation.FloatRange;
import android.annotation.IntRange;
import android.annotation.NonNull;
import android.annotation.Size;
import android.annotation.UserIdInt;
import android.content.Intent;
import android.content.pm.PackageManager;
import android.inputmethodservice.navigationbar.NavigationBarInflaterView;
import java.lang.annotation.Annotation;

/* loaded from: classes4.dex */
public class AnnotationValidations {
    private AnnotationValidations() {
    }

    public static void validate(Class<UserIdInt> annotation, UserIdInt ignored, int value) {
        if ((value != -10000 && value < -3) || value > 21474) {
            invalid(annotation, Integer.valueOf(value));
        }
    }

    public static void validate(Class<AppIdInt> annotation, AppIdInt ignored, int value) {
        if (value / 100000 != 0 || value < 0) {
            invalid(annotation, Integer.valueOf(value));
        }
    }

    public static void validate(Class<IntRange> annotation, IntRange ignored, int value, String paramName1, long param1, String paramName2, long param2) {
        validate(annotation, ignored, value, paramName1, param1);
        validate(annotation, ignored, value, paramName2, param2);
    }

    /* JADX WARN: Can't fix incorrect switch cases order, some code will duplicate */
    /* JADX WARN: Removed duplicated region for block: B:11:0x001d  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static void validate(java.lang.Class<android.annotation.IntRange> r2, android.annotation.IntRange r3, int r4, java.lang.String r5, long r6) {
        /*
            int r0 = r5.hashCode()
            switch(r0) {
                case 3707: goto L12;
                case 3151786: goto L8;
                default: goto L7;
            }
        L7:
            goto L1d
        L8:
            java.lang.String r0 = "from"
            boolean r0 = r5.equals(r0)
            if (r0 == 0) goto L7
            r0 = 0
            goto L1e
        L12:
            java.lang.String r0 = "to"
            boolean r0 = r5.equals(r0)
            if (r0 == 0) goto L7
            r0 = 1
            goto L1e
        L1d:
            r0 = -1
        L1e:
            switch(r0) {
                case 0: goto L33;
                case 1: goto L22;
                default: goto L21;
            }
        L21:
            goto L43
        L22:
            long r0 = (long) r4
            int r0 = (r0 > r6 ? 1 : (r0 == r6 ? 0 : -1))
            if (r0 <= 0) goto L43
            java.lang.Integer r0 = java.lang.Integer.valueOf(r4)
            java.lang.Long r1 = java.lang.Long.valueOf(r6)
            invalid(r2, r0, r5, r1)
            goto L43
        L33:
            long r0 = (long) r4
            int r0 = (r0 > r6 ? 1 : (r0 == r6 ? 0 : -1))
            if (r0 >= 0) goto L43
            java.lang.Integer r0 = java.lang.Integer.valueOf(r4)
            java.lang.Long r1 = java.lang.Long.valueOf(r6)
            invalid(r2, r0, r5, r1)
        L43:
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: com.android.internal.util.AnnotationValidations.validate(java.lang.Class, android.annotation.IntRange, int, java.lang.String, long):void");
    }

    public static void validate(Class<IntRange> annotation, IntRange ignored, long value, String paramName1, long param1, String paramName2, long param2) {
        validate(annotation, ignored, value, paramName1, param1);
        validate(annotation, ignored, value, paramName2, param2);
    }

    /* JADX WARN: Can't fix incorrect switch cases order, some code will duplicate */
    /* JADX WARN: Removed duplicated region for block: B:11:0x001d  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static void validate(java.lang.Class<android.annotation.IntRange> r2, android.annotation.IntRange r3, long r4, java.lang.String r6, long r7) {
        /*
            int r0 = r6.hashCode()
            switch(r0) {
                case 3707: goto L12;
                case 3151786: goto L8;
                default: goto L7;
            }
        L7:
            goto L1d
        L8:
            java.lang.String r0 = "from"
            boolean r0 = r6.equals(r0)
            if (r0 == 0) goto L7
            r0 = 0
            goto L1e
        L12:
            java.lang.String r0 = "to"
            boolean r0 = r6.equals(r0)
            if (r0 == 0) goto L7
            r0 = 1
            goto L1e
        L1d:
            r0 = -1
        L1e:
            switch(r0) {
                case 0: goto L32;
                case 1: goto L22;
                default: goto L21;
            }
        L21:
            goto L41
        L22:
            int r0 = (r4 > r7 ? 1 : (r4 == r7 ? 0 : -1))
            if (r0 <= 0) goto L41
            java.lang.Long r0 = java.lang.Long.valueOf(r4)
            java.lang.Long r1 = java.lang.Long.valueOf(r7)
            invalid(r2, r0, r6, r1)
            goto L41
        L32:
            int r0 = (r4 > r7 ? 1 : (r4 == r7 ? 0 : -1))
            if (r0 >= 0) goto L41
            java.lang.Long r0 = java.lang.Long.valueOf(r4)
            java.lang.Long r1 = java.lang.Long.valueOf(r7)
            invalid(r2, r0, r6, r1)
        L41:
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: com.android.internal.util.AnnotationValidations.validate(java.lang.Class, android.annotation.IntRange, long, java.lang.String, long):void");
    }

    public static void validate(Class<FloatRange> annotation, FloatRange ignored, float value, String paramName1, float param1, String paramName2, float param2) {
        validate(annotation, ignored, value, paramName1, param1);
        validate(annotation, ignored, value, paramName2, param2);
    }

    /* JADX WARN: Can't fix incorrect switch cases order, some code will duplicate */
    /* JADX WARN: Removed duplicated region for block: B:11:0x001d  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static void validate(java.lang.Class<android.annotation.FloatRange> r2, android.annotation.FloatRange r3, float r4, java.lang.String r5, float r6) {
        /*
            int r0 = r5.hashCode()
            switch(r0) {
                case 3707: goto L12;
                case 3151786: goto L8;
                default: goto L7;
            }
        L7:
            goto L1d
        L8:
            java.lang.String r0 = "from"
            boolean r0 = r5.equals(r0)
            if (r0 == 0) goto L7
            r0 = 0
            goto L1e
        L12:
            java.lang.String r0 = "to"
            boolean r0 = r5.equals(r0)
            if (r0 == 0) goto L7
            r0 = 1
            goto L1e
        L1d:
            r0 = -1
        L1e:
            switch(r0) {
                case 0: goto L32;
                case 1: goto L22;
                default: goto L21;
            }
        L21:
            goto L41
        L22:
            int r0 = (r4 > r6 ? 1 : (r4 == r6 ? 0 : -1))
            if (r0 <= 0) goto L41
            java.lang.Float r0 = java.lang.Float.valueOf(r4)
            java.lang.Float r1 = java.lang.Float.valueOf(r6)
            invalid(r2, r0, r5, r1)
            goto L41
        L32:
            int r0 = (r4 > r6 ? 1 : (r4 == r6 ? 0 : -1))
            if (r0 >= 0) goto L41
            java.lang.Float r0 = java.lang.Float.valueOf(r4)
            java.lang.Float r1 = java.lang.Float.valueOf(r6)
            invalid(r2, r0, r5, r1)
        L41:
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: com.android.internal.util.AnnotationValidations.validate(java.lang.Class, android.annotation.FloatRange, float, java.lang.String, float):void");
    }

    public static void validate(Class<NonNull> annotation, NonNull ignored, Object value) {
        if (value == null) {
            throw new NullPointerException();
        }
    }

    public static void validate(Class<Size> annotation, Size ignored, int value, String paramName1, int param1, String paramName2, int param2) {
        validate(annotation, ignored, value, paramName1, param1);
        validate(annotation, ignored, value, paramName2, param2);
    }

    /* JADX WARN: Can't fix incorrect switch cases order, some code will duplicate */
    /* JADX WARN: Removed duplicated region for block: B:17:0x0035  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static void validate(java.lang.Class<android.annotation.Size> r2, android.annotation.Size r3, int r4, java.lang.String r5, int r6) {
        /*
            int r0 = r5.hashCode()
            r1 = -1
            switch(r0) {
                case 107876: goto L2a;
                case 108114: goto L1f;
                case 111972721: goto L14;
                case 653829648: goto L9;
                default: goto L8;
            }
        L8:
            goto L35
        L9:
            java.lang.String r0 = "multiple"
            boolean r0 = r5.equals(r0)
            if (r0 == 0) goto L8
            r0 = 3
            goto L36
        L14:
            java.lang.String r0 = "value"
            boolean r0 = r5.equals(r0)
            if (r0 == 0) goto L8
            r0 = 0
            goto L36
        L1f:
            java.lang.String r0 = "min"
            boolean r0 = r5.equals(r0)
            if (r0 == 0) goto L8
            r0 = 1
            goto L36
        L2a:
            java.lang.String r0 = "max"
            boolean r0 = r5.equals(r0)
            if (r0 == 0) goto L8
            r0 = 2
            goto L36
        L35:
            r0 = r1
        L36:
            switch(r0) {
                case 0: goto L66;
                case 1: goto L58;
                case 2: goto L4a;
                case 3: goto L3a;
                default: goto L39;
            }
        L39:
            goto L75
        L3a:
            int r0 = r4 % r6
            if (r0 == 0) goto L75
            java.lang.Integer r0 = java.lang.Integer.valueOf(r4)
            java.lang.Integer r1 = java.lang.Integer.valueOf(r6)
            invalid(r2, r0, r5, r1)
            goto L75
        L4a:
            if (r4 <= r6) goto L75
            java.lang.Integer r0 = java.lang.Integer.valueOf(r4)
            java.lang.Integer r1 = java.lang.Integer.valueOf(r6)
            invalid(r2, r0, r5, r1)
            goto L75
        L58:
            if (r4 >= r6) goto L75
            java.lang.Integer r0 = java.lang.Integer.valueOf(r4)
            java.lang.Integer r1 = java.lang.Integer.valueOf(r6)
            invalid(r2, r0, r5, r1)
            goto L75
        L66:
            if (r6 == r1) goto L75
            if (r4 == r6) goto L75
            java.lang.Integer r0 = java.lang.Integer.valueOf(r4)
            java.lang.Integer r1 = java.lang.Integer.valueOf(r6)
            invalid(r2, r0, r5, r1)
        L75:
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: com.android.internal.util.AnnotationValidations.validate(java.lang.Class, android.annotation.Size, int, java.lang.String, int):void");
    }

    public static void validate(Class<PackageManager.PermissionResult> annotation, PackageManager.PermissionResult ignored, int value) {
        validateIntEnum(annotation, value, 0);
    }

    public static void validate(Class<PackageManager.PackageInfoFlagsBits> annotation, PackageManager.PackageInfoFlagsBits ignored, long value) {
        validateLongFlags(annotation, value, BitUtils.flagsUpTo(536870912));
    }

    public static void validate(Class<Intent.Flags> annotation, Intent.Flags ignored, int value) {
        validateIntFlags(annotation, value, BitUtils.flagsUpTo(Integer.MIN_VALUE));
    }

    @Deprecated
    public static void validate(Class<? extends Annotation> annotation, Annotation ignored, Object value, Object... params) {
    }

    @Deprecated
    public static void validate(Class<? extends Annotation> annotation, Annotation ignored, Object value) {
    }

    @Deprecated
    public static void validate(Class<? extends Annotation> annotation, Annotation ignored, int value, Object... params) {
    }

    public static void validate(Class<? extends Annotation> annotation, Annotation ignored, int value) {
        if ((("android.annotation".equals(annotation.getPackageName()) && annotation.getSimpleName().endsWith("Res")) || ColorInt.class.equals(annotation)) && value < 0) {
            invalid(annotation, Integer.valueOf(value));
        }
    }

    public static void validate(Class<? extends Annotation> annotation, Annotation ignored, long value) {
        if ("android.annotation".equals(annotation.getPackageName()) && annotation.getSimpleName().endsWith("Long") && value < 0) {
            invalid(annotation, Long.valueOf(value));
        }
    }

    private static void validateIntEnum(Class<? extends Annotation> annotation, int value, int lastValid) {
        if (value > lastValid) {
            invalid(annotation, Integer.valueOf(value));
        }
    }

    private static void validateIntFlags(Class<? extends Annotation> annotation, int value, int validBits) {
        if ((validBits & value) != validBits) {
            invalid(annotation, "0x" + Integer.toHexString(value));
        }
    }

    private static void validateLongFlags(Class<? extends Annotation> annotation, long value, int validBits) {
        if ((validBits & value) != validBits) {
            invalid(annotation, "0x" + Long.toHexString(value));
        }
    }

    private static void invalid(Class<? extends Annotation> annotation, Object value) {
        invalid("@" + annotation.getSimpleName(), value);
    }

    private static void invalid(Class<? extends Annotation> annotation, Object value, String paramName, Object param) {
        String paramPrefix = "value".equals(paramName) ? "" : paramName + " = ";
        invalid("@" + annotation.getSimpleName() + NavigationBarInflaterView.KEY_CODE_START + paramPrefix + param + NavigationBarInflaterView.KEY_CODE_END, value);
    }

    private static void invalid(String valueKind, Object value) {
        throw new IllegalStateException("Invalid " + valueKind + ": " + value);
    }
}
