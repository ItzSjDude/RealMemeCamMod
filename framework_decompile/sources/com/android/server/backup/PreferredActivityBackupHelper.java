package com.android.server.backup;

import android.app.backup.BlobBackupHelper;

/* loaded from: classes4.dex */
public class PreferredActivityBackupHelper extends BlobBackupHelper {
    private static final boolean DEBUG = false;
    private static final int STATE_VERSION = 4;
    private static final String TAG = "PreferredBackup";
    private final int mUserId;
    private static final String KEY_PREFERRED = "preferred-activity";
    private static final String KEY_DEFAULT_APPS = "default-apps";

    @Deprecated
    private static final String KEY_INTENT_VERIFICATION = "intent-verification";
    private static final String KEY_DOMAIN_VERIFICATION = "domain-verification";
    private static final String[] KEYS = {KEY_PREFERRED, KEY_DEFAULT_APPS, KEY_INTENT_VERIFICATION, KEY_DOMAIN_VERIFICATION};

    private @interface Key {
    }

    public PreferredActivityBackupHelper(int userId) {
        super(4, KEYS);
        this.mUserId = userId;
    }

    /* JADX WARN: Can't fix incorrect switch cases order, some code will duplicate */
    /* JADX WARN: Failed to restore switch over string. Please report as a decompilation issue */
    /* JADX WARN: Removed duplicated region for block: B:5:0x000f  */
    @Override // android.app.backup.BlobBackupHelper
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    protected byte[] getBackupPayload(java.lang.String r7) {
        /*
            r6 = this;
            java.lang.String r0 = "PreferredBackup"
            android.content.pm.IPackageManager r1 = android.app.AppGlobals.getPackageManager()
            r2 = -1
            r3 = 0
            int r4 = r7.hashCode()     // Catch: java.lang.Exception -> L69
            switch(r4) {
                case -696985986: goto L2f;
                case -549387132: goto L25;
                case -429170260: goto L1b;
                case 1336142555: goto L10;
                default: goto Lf;
            }     // Catch: java.lang.Exception -> L69
        Lf:
            goto L38
        L10:
            java.lang.String r4 = "preferred-activity"
            boolean r4 = r7.equals(r4)     // Catch: java.lang.Exception -> L69
            if (r4 == 0) goto Lf
            r2 = 0
            goto L38
        L1b:
            java.lang.String r4 = "intent-verification"
            boolean r4 = r7.equals(r4)     // Catch: java.lang.Exception -> L69
            if (r4 == 0) goto Lf
            r2 = 2
            goto L38
        L25:
            java.lang.String r4 = "domain-verification"
            boolean r4 = r7.equals(r4)     // Catch: java.lang.Exception -> L69
            if (r4 == 0) goto Lf
            r2 = 3
            goto L38
        L2f:
            java.lang.String r4 = "default-apps"
            boolean r4 = r7.equals(r4)     // Catch: java.lang.Exception -> L69
            if (r4 == 0) goto Lf
            r2 = 1
        L38:
            switch(r2) {
                case 0: goto L4b;
                case 1: goto L44;
                case 2: goto L43;
                case 3: goto L3c;
                default: goto L3b;
            }     // Catch: java.lang.Exception -> L69
        L3b:
            goto L52
        L3c:
            int r2 = r6.mUserId     // Catch: java.lang.Exception -> L69
            byte[] r0 = r1.getDomainVerificationBackup(r2)     // Catch: java.lang.Exception -> L69
            return r0
        L43:
            return r3
        L44:
            int r2 = r6.mUserId     // Catch: java.lang.Exception -> L69
            byte[] r0 = r1.getDefaultAppsBackup(r2)     // Catch: java.lang.Exception -> L69
            return r0
        L4b:
            int r2 = r6.mUserId     // Catch: java.lang.Exception -> L69
            byte[] r0 = r1.getPreferredActivityBackup(r2)     // Catch: java.lang.Exception -> L69
            return r0
        L52:
            java.lang.StringBuilder r2 = new java.lang.StringBuilder     // Catch: java.lang.Exception -> L69
            r2.<init>()     // Catch: java.lang.Exception -> L69
            java.lang.String r4 = "Unexpected backup key "
            java.lang.StringBuilder r2 = r2.append(r4)     // Catch: java.lang.Exception -> L69
            java.lang.StringBuilder r2 = r2.append(r7)     // Catch: java.lang.Exception -> L69
            java.lang.String r2 = r2.toString()     // Catch: java.lang.Exception -> L69
            android.util.Slog.w(r0, r2)     // Catch: java.lang.Exception -> L69
            goto L80
        L69:
            r2 = move-exception
            java.lang.StringBuilder r4 = new java.lang.StringBuilder
            r4.<init>()
            java.lang.String r5 = "Unable to store payload "
            java.lang.StringBuilder r4 = r4.append(r5)
            java.lang.StringBuilder r4 = r4.append(r7)
            java.lang.String r4 = r4.toString()
            android.util.Slog.e(r0, r4, r2)
        L80:
            return r3
        */
        throw new UnsupportedOperationException("Method not decompiled: com.android.server.backup.PreferredActivityBackupHelper.getBackupPayload(java.lang.String):byte[]");
    }

    /* JADX WARN: Can't fix incorrect switch cases order, some code will duplicate */
    /* JADX WARN: Removed duplicated region for block: B:5:0x000e  */
    @Override // android.app.backup.BlobBackupHelper
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    protected void applyRestoredPayload(java.lang.String r6, byte[] r7) {
        /*
            r5 = this;
            java.lang.String r0 = "PreferredBackup"
            android.content.pm.IPackageManager r1 = android.app.AppGlobals.getPackageManager()
            r2 = -1
            int r3 = r6.hashCode()     // Catch: java.lang.Exception -> L65
            switch(r3) {
                case -696985986: goto L2e;
                case -549387132: goto L24;
                case -429170260: goto L1a;
                case 1336142555: goto Lf;
                default: goto Le;
            }     // Catch: java.lang.Exception -> L65
        Le:
            goto L37
        Lf:
            java.lang.String r3 = "preferred-activity"
            boolean r3 = r6.equals(r3)     // Catch: java.lang.Exception -> L65
            if (r3 == 0) goto Le
            r2 = 0
            goto L37
        L1a:
            java.lang.String r3 = "intent-verification"
            boolean r3 = r6.equals(r3)     // Catch: java.lang.Exception -> L65
            if (r3 == 0) goto Le
            r2 = 2
            goto L37
        L24:
            java.lang.String r3 = "domain-verification"
            boolean r3 = r6.equals(r3)     // Catch: java.lang.Exception -> L65
            if (r3 == 0) goto Le
            r2 = 3
            goto L37
        L2e:
            java.lang.String r3 = "default-apps"
            boolean r3 = r6.equals(r3)     // Catch: java.lang.Exception -> L65
            if (r3 == 0) goto Le
            r2 = 1
        L37:
            switch(r2) {
                case 0: goto L48;
                case 1: goto L42;
                case 2: goto L41;
                case 3: goto L3b;
                default: goto L3a;
            }     // Catch: java.lang.Exception -> L65
        L3a:
            goto L4e
        L3b:
            int r2 = r5.mUserId     // Catch: java.lang.Exception -> L65
            r1.restoreDomainVerification(r7, r2)     // Catch: java.lang.Exception -> L65
            goto L64
        L41:
            goto L64
        L42:
            int r2 = r5.mUserId     // Catch: java.lang.Exception -> L65
            r1.restoreDefaultApps(r7, r2)     // Catch: java.lang.Exception -> L65
            goto L64
        L48:
            int r2 = r5.mUserId     // Catch: java.lang.Exception -> L65
            r1.restorePreferredActivities(r7, r2)     // Catch: java.lang.Exception -> L65
            goto L64
        L4e:
            java.lang.StringBuilder r2 = new java.lang.StringBuilder     // Catch: java.lang.Exception -> L65
            r2.<init>()     // Catch: java.lang.Exception -> L65
            java.lang.String r3 = "Unexpected restore key "
            java.lang.StringBuilder r2 = r2.append(r3)     // Catch: java.lang.Exception -> L65
            java.lang.StringBuilder r2 = r2.append(r6)     // Catch: java.lang.Exception -> L65
            java.lang.String r2 = r2.toString()     // Catch: java.lang.Exception -> L65
            android.util.Slog.w(r0, r2)     // Catch: java.lang.Exception -> L65
        L64:
            goto L7c
        L65:
            r2 = move-exception
            java.lang.StringBuilder r3 = new java.lang.StringBuilder
            r3.<init>()
            java.lang.String r4 = "Unable to restore key "
            java.lang.StringBuilder r3 = r3.append(r4)
            java.lang.StringBuilder r3 = r3.append(r6)
            java.lang.String r3 = r3.toString()
            android.util.Slog.e(r0, r3, r2)
        L7c:
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: com.android.server.backup.PreferredActivityBackupHelper.applyRestoredPayload(java.lang.String, byte[]):void");
    }
}
