package com.oplus.oms.split.splitload.extension;

import android.app.Application;
import android.content.Context;
import android.content.ContextWrapper;
import android.text.TextUtils;
import java.lang.reflect.InvocationTargetException;
import java.lang.reflect.Method;
import java.util.ArrayList;
import java.util.Collection;
import java.util.List;
import java.util.Map;

final class AABExtensionManagerImpl implements AABExtensionManager {
    private final SplitComponentInfoProvider mInfoProvider;
    private List<String> mSplitActivities;
    private Map<String, List<String>> mSplitActivitiesMap;
    private List<String> mSplitReceivers;
    private List<String> mSplitServices;

    
    public AABExtensionManagerImpl(SplitComponentInfoProvider infoProvider) {
        this.mInfoProvider = infoProvider;
    }

    @Override // com.oplus.oms.split.splitload.extension.AABExtensionManager
    public Application createApplication(ClassLoader classLoader, String splitName) throws AABExtensionException {
        Throwable error = null;
        if (this.mInfoProvider == null) {
            return null;
        }
        String applicationName = this.mInfoProvider.getSplitApplicationName(splitName);
        if (!TextUtils.isEmpty(applicationName)) {
            try {
                Class<?> appClass = classLoader.loadClass(applicationName);
                return (Application) appClass.getDeclaredConstructor(null).newInstance(new Object[0]);
            } catch (ClassNotFoundException | IllegalAccessException | InstantiationException | NoSuchMethodException | InvocationTargetException e) {
                error = e;
            }
        }
        if (error == null) {
            return null;
        }
        throw new AABExtensionException(error);
    }

    @Override // com.oplus.oms.split.splitload.extension.AABExtensionManager
    public void activeApplication(Application app, Context appContext) throws AABExtensionException {
        if (app != null) {
            Throwable error = null;
            try {
                Method method = ContextWrapper.class.getDeclaredMethod("attachBaseContext", Context.class);
                method.setAccessible(true);
                method.invoke(app, appContext);
            } catch (IllegalAccessException | NoSuchMethodException | InvocationTargetException e) {
                error = e;
            }
            if (error != null) {
                throw new AABExtensionException(error);
            }
        }
    }

    private Map<String, List<String>> getSplitActivitiesMap() {
        if (this.mSplitActivitiesMap == null && this.mInfoProvider != null) {
            this.mSplitActivitiesMap = this.mInfoProvider.getSplitActivitiesMap();
        }
        return this.mSplitActivitiesMap;
    }

    @Override // com.oplus.oms.split.splitload.extension.AABExtensionManager
    public boolean isSplitActivity(String name) {
        if (this.mSplitActivities == null && getSplitActivitiesMap() != null) {
            Collection<List<String>> values = getSplitActivitiesMap().values();
            List<String> allSplitActivities = new ArrayList<>(0);
            if (!values.isEmpty()) {
                for (List<String> activities : values) {
                    allSplitActivities.addAll(activities);
                }
            }
            this.mSplitActivities = allSplitActivities;
        }
        if (this.mSplitActivities == null) {
            return false;
        }
        return this.mSplitActivities.contains(name);
    }

    @Override // com.oplus.oms.split.splitload.extension.AABExtensionManager
    public String getSplitNameForComponent(String component) {
        if (this.mInfoProvider == null) {
            return null;
        }
        return this.mInfoProvider.getComponentMap().get(component);
    }

    @Override // com.oplus.oms.split.splitload.extension.AABExtensionManager
    public boolean isSplitService(String name) {
        if (this.mSplitServices == null && this.mInfoProvider != null) {
            this.mSplitServices = this.mInfoProvider.getSplitServices();
        }
        if (this.mSplitServices == null) {
            return false;
        }
        return this.mSplitServices.contains(name);
    }

    @Override // com.oplus.oms.split.splitload.extension.AABExtensionManager
    public boolean isSplitReceiver(String name) {
        if (this.mSplitReceivers == null && this.mInfoProvider != null) {
            this.mSplitReceivers = this.mInfoProvider.getSplitReceivers();
        }
        if (this.mSplitReceivers == null) {
            return false;
        }
        return this.mSplitReceivers.contains(name);
    }
}
