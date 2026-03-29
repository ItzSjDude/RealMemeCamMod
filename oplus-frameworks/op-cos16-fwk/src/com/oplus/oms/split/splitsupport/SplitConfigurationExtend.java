package com.oplus.oms.split.splitsupport;

import android.content.Context;

public class SplitConfigurationExtend {
    private static final String TAG = "SplitConfigurationExtend";
    private boolean mCallbackOnMainThread;
    private Context mContext;
    private boolean mIsCustomizeOmsJsonStatus;
    private OmsJsonProvider mProvider;

    private SplitConfigurationExtend() {
        this.mIsCustomizeOmsJsonStatus = false;
        this.mCallbackOnMainThread = true;
    }

    public void setOmsJsonCustomProvider(OmsJsonProvider provider) {
        this.mProvider = provider;
    }

    public OmsJsonProvider getOmsJsonCustomProvider() {
        return this.mProvider;
    }

    public void setIsCustomizeOmsJsonStatus(Context context, boolean isCustomizeOms) {
        this.mIsCustomizeOmsJsonStatus = isCustomizeOms;
        this.mContext = context;
    }

    public boolean getIsCustomizeOmsJsonStatus() {
        return this.mIsCustomizeOmsJsonStatus;
    }

    public Context getIsCustomizeOmsJsonContext() {
        return this.mContext;
    }

    public void setCallbackOnMainThread(boolean callbackOnMainThread) {
        this.mCallbackOnMainThread = callbackOnMainThread;
    }

    public boolean getCallbackOnMainThread() {
        return this.mCallbackOnMainThread;
    }

    private static class InnerHolder {
        private static final SplitConfigurationExtend INSTANCE = new SplitConfigurationExtend();

        private InnerHolder() {
        }
    }

    public static SplitConfigurationExtend getInstance() {
        return InnerHolder.INSTANCE;
    }
}
