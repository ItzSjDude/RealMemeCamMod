package android.app.admin;

import com.android.server.LocalServices;

/* loaded from: classes.dex */
public abstract class DeviceStateCache {
    public abstract boolean isDeviceProvisioned();

    protected DeviceStateCache() {
    }

    public static DeviceStateCache getInstance() {
        DevicePolicyManagerInternal dpmi = (DevicePolicyManagerInternal) LocalServices.getService(DevicePolicyManagerInternal.class);
        return dpmi != null ? dpmi.getDeviceStateCache() : EmptyDeviceStateCache.INSTANCE;
    }

    private static class EmptyDeviceStateCache extends DeviceStateCache {
        private static final EmptyDeviceStateCache INSTANCE = new EmptyDeviceStateCache();

        private EmptyDeviceStateCache() {
        }

        @Override // android.app.admin.DeviceStateCache
        public boolean isDeviceProvisioned() {
            return false;
        }
    }
}
