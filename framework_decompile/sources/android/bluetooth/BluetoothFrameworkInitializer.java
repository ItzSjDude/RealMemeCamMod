package android.bluetooth;

import android.annotation.SystemApi;
import android.app.SystemServiceRegistry;
import android.content.Context;
import android.os.BluetoothServiceManager;
import java.util.function.Consumer;

@SystemApi(client = SystemApi.Client.MODULE_LIBRARIES)
/* loaded from: classes.dex */
public class BluetoothFrameworkInitializer {
    private static volatile Consumer<Context> sBinderCallsStatsInitializer;
    private static volatile BluetoothServiceManager sBluetoothServiceManager;

    private BluetoothFrameworkInitializer() {
    }

    public static void setBluetoothServiceManager(BluetoothServiceManager bluetoothServiceManager) {
        if (sBluetoothServiceManager != null) {
            throw new IllegalStateException("setBluetoothServiceManager called twice!");
        }
        if (bluetoothServiceManager == null) {
            throw new IllegalArgumentException("bluetoothServiceManager must not be null");
        }
        sBluetoothServiceManager = bluetoothServiceManager;
    }

    public static BluetoothServiceManager getBluetoothServiceManager() {
        return sBluetoothServiceManager;
    }

    public static void setBinderCallsStatsInitializer(Consumer<Context> binderCallsStatsConsumer) {
        if (sBinderCallsStatsInitializer != null) {
            throw new IllegalStateException("setBinderCallsStatsInitializer called twice!");
        }
        if (binderCallsStatsConsumer == null) {
            throw new IllegalArgumentException("binderCallsStatsConsumer must not be null");
        }
        sBinderCallsStatsInitializer = binderCallsStatsConsumer;
    }

    public static void initializeBinderCallsStats(Context context) {
        if (sBinderCallsStatsInitializer == null) {
            throw new IllegalStateException("sBinderCallsStatsInitializer has not been set");
        }
        sBinderCallsStatsInitializer.accept(context);
    }

    public static void registerServiceWrappers() {
        SystemServiceRegistry.registerContextAwareService("bluetooth", BluetoothManager.class, new SystemServiceRegistry.ContextAwareServiceProducerWithoutBinder() { // from class: android.bluetooth.BluetoothFrameworkInitializer$$ExternalSyntheticLambda0
            @Override // android.app.SystemServiceRegistry.ContextAwareServiceProducerWithoutBinder
            public final Object createService(Context context) {
                return BluetoothFrameworkInitializer.lambda$registerServiceWrappers$0(context);
            }
        });
    }

    static /* synthetic */ BluetoothManager lambda$registerServiceWrappers$0(Context context) {
        return new BluetoothManager(context);
    }
}
