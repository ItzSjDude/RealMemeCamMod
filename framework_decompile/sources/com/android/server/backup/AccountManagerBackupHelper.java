package com.android.server.backup;

import android.accounts.AccountManagerInternal;
import android.app.backup.BlobBackupHelper;
import android.util.Slog;
import com.android.server.LocalServices;

/* loaded from: classes4.dex */
public class AccountManagerBackupHelper extends BlobBackupHelper {
    private static final boolean DEBUG = false;
    private static final String KEY_ACCOUNT_ACCESS_GRANTS = "account_access_grants";
    private static final int STATE_VERSION = 1;
    private static final String TAG = "AccountsBackup";

    public AccountManagerBackupHelper() {
        super(1, KEY_ACCOUNT_ACCESS_GRANTS);
    }

    @Override // android.app.backup.BlobBackupHelper
    protected byte[] getBackupPayload(String key) {
        AccountManagerInternal am = (AccountManagerInternal) LocalServices.getService(AccountManagerInternal.class);
        try {
            switch (key) {
                case "account_access_grants":
                    return am.backupAccountAccessPermissions(0);
                default:
                    Slog.w(TAG, "Unexpected backup key " + key);
                    break;
            }
        } catch (Exception e) {
            Slog.e(TAG, "Unable to store payload " + key, e);
        }
        return new byte[0];
    }

    @Override // android.app.backup.BlobBackupHelper
    protected void applyRestoredPayload(String key, byte[] payload) {
        AccountManagerInternal am = (AccountManagerInternal) LocalServices.getService(AccountManagerInternal.class);
        try {
            switch (key) {
                case "account_access_grants":
                    am.restoreAccountAccessPermissions(payload, 0);
                    break;
                default:
                    Slog.w(TAG, "Unexpected restore key " + key);
                    break;
            }
        } catch (Exception e) {
            Slog.e(TAG, "Unable to restore key " + key, e);
        }
    }
}
