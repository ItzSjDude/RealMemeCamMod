package com.oplus.oms.split.splitload;

import android.content.Context;
import android.content.Intent;
import android.os.Looper;
import com.oplus.oms.split.splitload.SplitLoadHandler;
import com.oplus.oms.split.splitload.listener.OnSplitLoadListener;
import com.oplus.oms.split.splitreport.SplitLoadError;
import java.util.List;

abstract class SplitLoadTask implements SplitLoaderWrapper, Runnable, SplitLoadHandler.OnSplitLoadFinishListener {
    private final SplitLoadHandler mLoadHandler;
    private final OnSplitLoadListener mLoadListener;
    private SplitLoader mSplitLoader;

    
    public SplitLoadTask(SplitLoadManager loadManager, List<Intent> splitFileIntents, OnSplitLoadListener loadListener) {
        this.mLoadHandler = new SplitLoadHandler(this, loadManager, splitFileIntents);
        this.mLoadListener = loadListener;
    }

    
    public Context getContext() {
        return this.mLoadHandler.getContext();
    }

    
    public SplitLoader getSplitLoader() {
        if (this.mSplitLoader == null) {
            this.mSplitLoader = createSplitLoader();
        }
        return this.mSplitLoader;
    }

    @Override // com.oplus.oms.split.splitload.SplitLoaderWrapper
    public void loadResources(String splitApkPath) throws SplitLoadException {
        getSplitLoader().loadResources(splitApkPath);
    }

    @Override // java.lang.Runnable
    public final void run() {
        if (Looper.getMainLooper().getThread() == Thread.currentThread()) {
            this.mLoadHandler.loadSplitsSync(this);
        } else {
            synchronized (this) {
                this.mLoadHandler.getMainHandler().post(new Runnable() { // from class: com.oplus.oms.split.splitload.SplitLoadTask.1
                    @Override // java.lang.Runnable
                    public void run() {
                        synchronized (SplitLoadTask.this) {
                            SplitLoadTask.this.mLoadHandler.loadSplitsSync(SplitLoadTask.this);
                            SplitLoadTask.this.notifyAll();
                        }
                    }
                });
            }
        }
    }

    @Override // com.oplus.oms.split.splitload.SplitLoadHandler.OnSplitLoadFinishListener
    public void onLoadFinish(List<SplitLoadError> loadErrorSplits, String process, long totalTimeCost) {
        if (!loadErrorSplits.isEmpty()) {
            if (this.mLoadListener != null) {
                int lastErrorCode = loadErrorSplits.get(loadErrorSplits.size() - 1).getErrorCode();
                this.mLoadListener.onFailed(lastErrorCode);
                return;
            }
            return;
        }
        if (this.mLoadListener != null) {
            this.mLoadListener.onCompleted();
        }
    }
}
