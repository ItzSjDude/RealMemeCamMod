package com.oplus.oms.split.splitload;

import android.app.Application;
import android.content.Context;
import android.content.Intent;
import android.os.Handler;
import android.os.Looper;
import com.oplus.oms.split.common.SplitConstants;
import com.oplus.oms.split.common.SplitLog;
import com.oplus.oms.split.splitreport.SplitLoadError;
import com.oplus.oms.split.splitreport.SplitReporterConstant;
import com.oplus.oms.split.splitreport.SplitReporterHelper;
import com.oplus.oms.split.splitreport.model.SplitReporterInfo;
import java.io.File;
import java.util.ArrayList;
import java.util.HashSet;
import java.util.Iterator;
import java.util.List;
import java.util.Set;


public final class SplitLoadHandler {
    private static final String TAG = "SplitLoadHandler";
    private final SplitActivator mActivator;
    private final SplitLoadManager mLoadManager;
    private final Handler mMainHandler = new Handler(Looper.getMainLooper());
    private final List<Intent> mSplitFileIntents;
    private final SplitLoaderWrapper mSplitLoader;

    
    public interface OnSplitLoadFinishListener {
        void onLoadFinish(List<SplitLoadError> list, String str, long j);
    }

    
    public SplitLoadHandler(SplitLoaderWrapper splitLoader, SplitLoadManager loadManager, List<Intent> splitFileIntents) {
        this.mSplitLoader = splitLoader;
        this.mLoadManager = loadManager;
        this.mSplitFileIntents = splitFileIntents;
        this.mActivator = new SplitActivator(loadManager.getContext());
    }

    
    public Handler getMainHandler() {
        return this.mMainHandler;
    }

    
    public void loadSplitsSync(OnSplitLoadFinishListener loadFinishListener) {
        loadSplits(loadFinishListener);
    }

    private void loadSplits(OnSplitLoadFinishListener loadFinishListener) {
        ClassLoader parent;
        long totalLoadStart = System.currentTimeMillis();
        Set<Split> loadedSpits = new HashSet<>();
        List<SplitLoadError> loadErrorInfos = new ArrayList<>(0);
        List<SplitReporterInfo> reporterInfoList = new ArrayList<>(this.mSplitFileIntents.size());
        ArrayList<String> loaded = new ArrayList<>();
        String processName = this.mLoadManager.mCurrentProcessName;
        Iterator<Intent> it = this.mSplitFileIntents.iterator();
        while (it.hasNext()) {
            Intent splitFileIntent = it.next();
            long loadStartTime = System.currentTimeMillis();
            String splitName = splitFileIntent.getStringExtra(SplitConstants.KEY_SPLIT_NAME);
            String splitVersion = String.valueOf(splitFileIntent.getIntExtra(SplitConstants.KEY_SPLIT_VERSION, -1));
            SplitReporterInfo reporterInfo = new SplitReporterInfo(splitName, splitVersion);
            long totalLoadStart2 = totalLoadStart;
            reporterInfo.setProcessName(processName);
            reporterInfo.setAction(SplitReporterConstant.SplitLoadCode.ACTION_PART_LOAD);
            reporterInfo.setResultCode(1);
            reporterInfoList.add(reporterInfo);
            if (checkSplitLoaded(splitName)) {
                SplitLog.d(TAG, "Split " + splitName + " has been loaded!", new Object[0]);
                reporterInfo.setTimeCost(System.currentTimeMillis() - loadStartTime);
                reporterInfo.setResultCode(2);
                processName = processName;
                totalLoadStart = totalLoadStart2;
                it = it;
            } else {
                String processName2 = processName;
                Iterator<Intent> it2 = it;
                String splitApkPath = splitFileIntent.getStringExtra(SplitConstants.KEY_APK);
                if (splitApkPath == null) {
                    reporterInfo.setTimeCost(System.currentTimeMillis() - loadStartTime);
                    reporterInfo.setResultCode(-100);
                    SplitLog.w(TAG, "Failed to read split " + splitName + " apk path", new Object[0]);
                    loadErrorInfos.add(new SplitLoadError(splitName, splitVersion, -100, new Exception("split apk path " + splitName + " is missing!")));
                    processName = processName2;
                    totalLoadStart = totalLoadStart2;
                    it = it2;
                } else {
                    String nativeLibPath = splitFileIntent.getStringExtra(SplitConstants.KEY_NATIVE_LIB_DIR);
                    List<String> addedDexPaths = splitFileIntent.getStringArrayListExtra(SplitConstants.KEY_ADDED_DEX);
                    SplitLog.d(TAG, "split name: " + splitName + ", origin native path: " + nativeLibPath + ",splitVersion:" + splitVersion, new Object[0]);
                    ClassLoader parent2 = this.mLoadManager.getOriginClassLoader();
                    boolean isIndependenceSplit = splitFileIntent.getBooleanExtra(SplitConstants.KEY_INDEPENDENT_SPLIT, false);
                    if (!isIndependenceSplit) {
                        parent = parent2;
                    } else {
                        ClassLoader parent3 = this.mLoadManager.getBootClassLoader();
                        parent = parent3;
                        SplitLog.d(TAG, "split name: " + splitName + " is independence APK", new Object[0]);
                    }
                    try {
                        ClassLoader classLoader = this.mSplitLoader.loadCode(parent, splitName, addedDexPaths, null, nativeLibPath == null ? null : new File(nativeLibPath), splitFileIntent.getStringArrayListExtra(SplitConstants.KEY_SPLIT_DEPENDENCIES));
                        try {
                            Application application = this.mActivator.createSplitApplication(classLoader, splitName);
                            try {
                                activateSplit(splitName, splitApkPath, application, classLoader);
                                loadedSpits.add(new Split(application, splitName, splitVersion, splitApkPath));
                                loaded.add(splitName);
                                reporterInfo.setTimeCost(System.currentTimeMillis() - loadStartTime);
                                loaded = loaded;
                                processName = processName2;
                                totalLoadStart = totalLoadStart2;
                                it = it2;
                            } catch (SplitLoadException e) {
                                reporterInfo.setTimeCost(System.currentTimeMillis() - loadStartTime);
                                reporterInfo.setResultCode(e.getErrorCode());
                                SplitLog.w(TAG, "activateSplit error", new Object[0]);
                                loadErrorInfos.add(new SplitLoadError(splitName, splitVersion, e.getErrorCode(), e.getCause()));
                                this.mSplitLoader.unloadCode(classLoader);
                                loaded = loaded;
                                processName = processName2;
                                totalLoadStart = totalLoadStart2;
                                it = it2;
                            }
                        } catch (SplitLoadException e2) {
                            reporterInfo.setTimeCost(System.currentTimeMillis() - loadStartTime);
                            reporterInfo.setResultCode(e2.getErrorCode());
                            SplitLog.e(TAG, "Failed to create " + splitName + " application ", e2);
                            loadErrorInfos.add(new SplitLoadError(splitName, splitVersion, e2.getErrorCode(), e2.getCause()));
                            this.mSplitLoader.unloadCode(classLoader);
                            loaded = loaded;
                            processName = processName2;
                            totalLoadStart = totalLoadStart2;
                            it = it2;
                        }
                    } catch (SplitLoadException e3) {
                        reporterInfo.setTimeCost(System.currentTimeMillis() - loadStartTime);
                        reporterInfo.setResultCode(e3.getErrorCode());
                        SplitLog.e(TAG, "Failed to load split " + splitName + " code!", e3);
                        loadErrorInfos.add(new SplitLoadError(splitName, splitVersion, e3.getErrorCode(), e3.getCause()));
                        loaded = loaded;
                        processName = processName2;
                        totalLoadStart = totalLoadStart2;
                        it = it2;
                    }
                }
            }
        }
        long totalLoadStart3 = totalLoadStart;
        this.mLoadManager.putSplits(loadedSpits);
        if (!reporterInfoList.isEmpty()) {
            SplitReporterHelper.reporter(SplitReporterConstant.LOAD_TAG, reporterInfoList);
        }
        if (loadFinishListener != null) {
            loadFinishListener.onLoadFinish(loadErrorInfos, this.mLoadManager.mCurrentProcessName, System.currentTimeMillis() - totalLoadStart3);
        }
    }

    private void activateSplit(String splitName, String splitApkPath, Application application, ClassLoader classLoader) throws SplitLoadException {
        try {
            this.mSplitLoader.loadResources(splitApkPath);
        } catch (SplitLoadException e) {
            SplitLog.e(TAG, "Failed to load " + splitApkPath + " resources", e);
        }
        try {
            this.mActivator.attachSplitApplication(application);
            try {
                this.mActivator.createAndActivateSplitContentProviders(classLoader, splitName);
                try {
                    this.mActivator.invokeOnCreateForSplitApplication(application);
                } catch (SplitLoadException e2) {
                    SplitLog.e(TAG, "Failed to invoke onCreate for " + splitName + " application", e2);
                    throw e2;
                }
            } catch (SplitLoadException e3) {
                SplitLog.e(TAG, "Failed to create " + splitName + " content-provider ", e3);
                throw e3;
            }
        } catch (SplitLoadException e4) {
            SplitLog.e(TAG, "Failed to attach " + splitName + " application", e4);
            throw e4;
        }
    }

    private boolean checkSplitLoaded(String splitName) {
        for (Split split : this.mLoadManager.getLoadedSplits()) {
            if (split.splitName.equals(splitName)) {
                return true;
            }
        }
        return false;
    }

    
    public Context getContext() {
        return this.mLoadManager.getContext();
    }
}
