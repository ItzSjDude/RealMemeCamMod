package android.app;

import android.app.SystemServiceRegistry;

/* loaded from: classes.dex */
public interface ISystemServiceRegistryWrapper {
    default <T> void registerService(String serviceName, Class<T> serviceClass, SystemServiceRegistry.ServiceFetcher<T> serviceFetcher) {
    }
}
