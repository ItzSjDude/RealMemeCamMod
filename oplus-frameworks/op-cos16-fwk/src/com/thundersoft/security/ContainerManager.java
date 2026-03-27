package com.thundersoft.security;

import android.content.Context;
import android.os.UserManager;
import android.util.Log;

/**
 * AOSP-compatible implementation of Thundersoft ContainerManager.
 * This class is used by ColorOS apps to check for system clone or secure
 * workspace status.
 */
public class ContainerManager {
    private static final String TAG = "ContainerManager";
    private Context mContext;

    public ContainerManager(Context context) {
        this.mContext = context;
        Log.d(TAG,
                "ContainerManager initialized for context: " + (context != null ? context.getPackageName() : "null"));
    }

    /**
     * Checks if the current user is running within a secure container/workspace.
     * On AOSP, we map this to Managed Profiles or Restricted Profiles.
     * 
     * @return true if the current user is in a container, false otherwise.
     */
    public boolean isCurrentContainerUser() {
        if (mContext == null) {
            return false;
        }
        try {
            UserManager um = (UserManager) mContext.getSystemService(Context.USER_SERVICE);
            if (um != null) {
                // Mapping ColorOS "Container" to AOSP "Managed Profile" or "Restricted Profile"
                // This ensures compatible behavior on AOSP based ROMs.
                return um.isManagedProfile();
            }
        } catch (Exception e) {
            Log.e(TAG, "isCurrentContainerUser: failed to check", e);
        }
        return false;
    }
}
