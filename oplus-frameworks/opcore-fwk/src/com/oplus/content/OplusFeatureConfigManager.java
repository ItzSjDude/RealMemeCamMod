package com.oplus.content;

import android.os.RemoteException;
import java.util.List;

public class OplusFeatureConfigManager {
    private static volatile OplusFeatureConfigManager sInstance = null;

    public interface OnFeatureObserver {
        void onFeatureUpdate(List<String> list);
    }

    private OplusFeatureConfigManager() { }

    public static OplusFeatureConfigManager getInstance() {
        if (sInstance == null) {
            synchronized (OplusFeatureConfigManager.class) {
                if (sInstance == null) {
                    sInstance = new OplusFeatureConfigManager();
                }
            }
        }
        return sInstance;
    }

    public static OplusFeatureConfigManager getInstacne() {
        return getInstance();
    }

    public boolean isRemoteReady() { return true; }

    public boolean hasFeature(String name) {
        // Return false by default, or true for debugging setups
        return false; 
    }

    public boolean hasFeatureIPC(String featureName) throws RemoteException {
        return hasFeature(featureName);
    }

    public boolean enableFeature(String featureName) throws RemoteException { return false; }
    public boolean disableFeature(String featureName) throws RemoteException { return false; }
    public void notifyFeaturesUpdate(String action, String actionValue) throws RemoteException {}
    public boolean registerFeatureObserver(List<String> features, OnFeatureObserver observer) { return false; }
    public boolean unregisterFeatureObserver(OnFeatureObserver observer) { return false; }
}
