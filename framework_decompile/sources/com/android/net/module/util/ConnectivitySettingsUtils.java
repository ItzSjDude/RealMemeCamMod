package com.android.net.module.util;

import android.content.ContentResolver;
import android.content.Context;
import android.provider.Settings;
import android.text.TextUtils;

/* loaded from: classes4.dex */
public class ConnectivitySettingsUtils {
    public static final String PRIVATE_DNS_DEFAULT_MODE = "private_dns_default_mode";
    public static final String PRIVATE_DNS_MODE = "private_dns_mode";
    public static final int PRIVATE_DNS_MODE_OFF = 1;
    public static final String PRIVATE_DNS_MODE_OFF_STRING = "off";
    public static final int PRIVATE_DNS_MODE_OPPORTUNISTIC = 2;
    public static final String PRIVATE_DNS_MODE_OPPORTUNISTIC_STRING = "opportunistic";
    public static final int PRIVATE_DNS_MODE_PROVIDER_HOSTNAME = 3;
    public static final String PRIVATE_DNS_MODE_PROVIDER_HOSTNAME_STRING = "hostname";
    public static final String PRIVATE_DNS_SPECIFIER = "private_dns_specifier";

    public static String getPrivateDnsModeAsString(int mode) {
        switch (mode) {
            case 1:
                return "off";
            case 2:
                return PRIVATE_DNS_MODE_OPPORTUNISTIC_STRING;
            case 3:
                return PRIVATE_DNS_MODE_PROVIDER_HOSTNAME_STRING;
            default:
                throw new IllegalArgumentException("Invalid private dns mode: " + mode);
        }
    }

    /* JADX WARN: Can't fix incorrect switch cases order, some code will duplicate */
    /* JADX WARN: Removed duplicated region for block: B:14:0x002a  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    private static int getPrivateDnsModeAsInt(java.lang.String r3) {
        /*
            int r0 = r3.hashCode()
            r1 = 2
            r2 = 1
            switch(r0) {
                case -539229175: goto L1f;
                case -299803597: goto L15;
                case 109935: goto La;
                default: goto L9;
            }
        L9:
            goto L2a
        La:
            java.lang.String r0 = "off"
            boolean r0 = r3.equals(r0)
            if (r0 == 0) goto L9
            r0 = 0
            goto L2b
        L15:
            java.lang.String r0 = "hostname"
            boolean r0 = r3.equals(r0)
            if (r0 == 0) goto L9
            r0 = r2
            goto L2b
        L1f:
            java.lang.String r0 = "opportunistic"
            boolean r0 = r3.equals(r0)
            if (r0 == 0) goto L9
            r0 = r1
            goto L2b
        L2a:
            r0 = -1
        L2b:
            switch(r0) {
                case 0: goto L4a;
                case 1: goto L48;
                case 2: goto L47;
                default: goto L2e;
            }
        L2e:
            java.lang.IllegalArgumentException r0 = new java.lang.IllegalArgumentException
            java.lang.StringBuilder r1 = new java.lang.StringBuilder
            r1.<init>()
            java.lang.String r2 = "Invalid private dns mode: "
            java.lang.StringBuilder r1 = r1.append(r2)
            java.lang.StringBuilder r1 = r1.append(r3)
            java.lang.String r1 = r1.toString()
            r0.<init>(r1)
            throw r0
        L47:
            return r1
        L48:
            r0 = 3
            return r0
        L4a:
            return r2
        */
        throw new UnsupportedOperationException("Method not decompiled: com.android.net.module.util.ConnectivitySettingsUtils.getPrivateDnsModeAsInt(java.lang.String):int");
    }

    public static int getPrivateDnsMode(Context context) {
        ContentResolver cr = context.getContentResolver();
        String mode = Settings.Global.getString(cr, "private_dns_mode");
        if (TextUtils.isEmpty(mode)) {
            mode = Settings.Global.getString(cr, "private_dns_default_mode");
        }
        if (TextUtils.isEmpty(mode)) {
            return 2;
        }
        return getPrivateDnsModeAsInt(mode);
    }

    public static void setPrivateDnsMode(Context context, int mode) {
        if (mode != 1 && mode != 2 && mode != 3) {
            throw new IllegalArgumentException("Invalid private dns mode: " + mode);
        }
        Settings.Global.putString(context.getContentResolver(), "private_dns_mode", getPrivateDnsModeAsString(mode));
    }

    public static String getPrivateDnsHostname(Context context) {
        return Settings.Global.getString(context.getContentResolver(), "private_dns_specifier");
    }

    public static void setPrivateDnsHostname(Context context, String specifier) {
        Settings.Global.putString(context.getContentResolver(), "private_dns_specifier", specifier);
    }
}
