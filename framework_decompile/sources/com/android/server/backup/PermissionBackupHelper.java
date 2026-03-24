package com.android.server.backup;

import android.app.backup.BlobBackupHelper;
import android.permission.PermissionManagerInternal;
import android.util.Slog;
import com.android.server.LocalServices;

/* loaded from: classes4.dex */
public class PermissionBackupHelper extends BlobBackupHelper {
    private static final boolean DEBUG = false;
    private static final String KEY_PERMISSIONS = "permissions";
    private static final int STATE_VERSION = 1;
    private static final String TAG = "PermissionBackup";
    private final PermissionManagerInternal mPermissionManager;
    private final int mUserId;

    public PermissionBackupHelper(int userId) {
        super(1, "permissions");
        this.mUserId = userId;
        this.mPermissionManager = (PermissionManagerInternal) LocalServices.getService(PermissionManagerInternal.class);
    }

    @Override // android.app.backup.BlobBackupHelper
    protected byte[] getBackupPayload(String key) {
        try {
            switch (key) {
                case "permissions":
                    return this.mPermissionManager.backupRuntimePermissions(this.mUserId);
                default:
                    Slog.w(TAG, "Unexpected backup key " + key);
                    return null;
            }
        } catch (Exception e) {
            Slog.e(TAG, "Unable to store payload " + key, e);
            return null;
        }
    }

    @Override // android.app.backup.BlobBackupHelper
    protected void applyRestoredPayload(String key, byte[] payload) {
        try {
            switch (key) {
                case "permissions":
                    this.mPermissionManager.restoreRuntimePermissions(payload, this.mUserId);
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
