package android.hardware.devicestate;

import android.content.Context;
import android.hardware.devicestate.DeviceStateRequest;
import com.android.internal.R;
import com.android.internal.util.ArrayUtils;
import java.util.concurrent.Executor;
import java.util.function.Consumer;

/* loaded from: classes.dex */
public final class DeviceStateManager {
    public static final int DEVICE_STATE_CLOSE = 0;
    public static final int DEVICE_STATE_CLOSE_ALL = 100;
    public static final int DEVICE_STATE_HALFOPEN = 2;
    public static final int DEVICE_STATE_OPEN = 3;
    public static final int DEVICE_STATE_OPEN_ALL = 99;
    public static final int DEVICE_STATE_TENT = 1;
    public static final int INVALID_DEVICE_STATE = -1;
    public static final int MAXIMUM_DEVICE_STATE = 255;
    public static final int MINIMUM_DEVICE_STATE = 0;
    private final DeviceStateManagerGlobal mGlobal;

    public DeviceStateManager() {
        DeviceStateManagerGlobal global = DeviceStateManagerGlobal.getInstance();
        if (global == null) {
            throw new IllegalStateException("Failed to get instance of global device state manager.");
        }
        this.mGlobal = global;
    }

    public static boolean isFoldedDeviceState(int deviceState) {
        return deviceState == 0 || deviceState == 1 || deviceState == 100;
    }

    public int[] getSupportedStates() {
        return this.mGlobal.getSupportedStates();
    }

    public void requestState(DeviceStateRequest request, Executor executor, DeviceStateRequest.Callback callback) {
        this.mGlobal.requestState(request, executor, callback);
    }

    public void cancelStateRequest() {
        this.mGlobal.cancelStateRequest();
    }

    public void registerCallback(Executor executor, DeviceStateCallback callback) {
        this.mGlobal.registerDeviceStateCallback(callback, executor);
    }

    public void unregisterCallback(DeviceStateCallback callback) {
        this.mGlobal.unregisterDeviceStateCallback(callback);
    }

    public interface DeviceStateCallback {
        void onStateChanged(int i);

        default void onSupportedStatesChanged(int[] supportedStates) {
        }

        default void onBaseStateChanged(int state) {
        }
    }

    public static class FoldStateListener implements DeviceStateCallback {
        private Boolean lastResult;
        private final Consumer<Boolean> mDelegate;
        private final int[] mFoldedDeviceStates;

        public FoldStateListener(Context context, Consumer<Boolean> listener) {
            this.mFoldedDeviceStates = context.getResources().getIntArray(R.array.config_foldedDeviceStates);
            this.mDelegate = listener;
        }

        @Override // android.hardware.devicestate.DeviceStateManager.DeviceStateCallback
        public final void onStateChanged(int state) {
            boolean folded = ArrayUtils.contains(this.mFoldedDeviceStates, state);
            Boolean bool = this.lastResult;
            if (bool == null || !bool.equals(Boolean.valueOf(folded))) {
                this.lastResult = Boolean.valueOf(folded);
                this.mDelegate.accept(Boolean.valueOf(folded));
            }
        }
    }
}
