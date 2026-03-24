package com.oplus.ocs.camera.consumer.debug;

import android.text.TextUtils;
import com.oplus.ocs.camera.common.util.Util;
import com.oplus.ocs.camera.consumer.apsAdapter.adapter.ApsAdapterInterface;
import com.oplus.ocs.camera.consumer.apsAdapter.adapter.ImageCategory;

/* JADX INFO: loaded from: classes.dex */
public class PropProvider {
    private static final String ALGO_PROP_DISABLE = "0";
    private static final String ALGO_PROP_ENABLE = "1";
    private static final String ALGO_PROP_NAME_MASTER = "camera.masterswitch";
    private static final String TAG = "PropProvider";
    private static volatile PropProvider mInstance;
    private CapturePropProvider mCaptureProvider;
    private PreviewPropProvider mPreviewProvider;
    private boolean mbMasterSwitch = false;

    private PropProvider() {
        this.mPreviewProvider = null;
        this.mCaptureProvider = null;
        checkMasterSwitch();
        this.mPreviewProvider = new PreviewPropProvider();
        this.mCaptureProvider = new CapturePropProvider();
    }

    public static PropProvider getInstance() {
        if (mInstance == null) {
            synchronized (PropProvider.class) {
                if (mInstance == null) {
                    mInstance = new PropProvider();
                }
            }
        }
        return mInstance;
    }

    private void checkMasterSwitch() {
        this.mbMasterSwitch = "1".equals(Util.getSystemPropertiesString(ALGO_PROP_NAME_MASTER, "0"));
    }

    public boolean isPreviewAlgoDisable(int i) {
        if (this.mbMasterSwitch) {
            return isPropDisable(this.mPreviewProvider.getAlgoProp(i));
        }
        return false;
    }

    public static boolean isPropDisable(String str) {
        if (TextUtils.isEmpty(str)) {
            return false;
        }
        return "0".equals(Util.getSystemPropertiesString(str, "1"));
    }

    public void setEnableAPSAlgoNode(ApsAdapterInterface apsAdapterInterface) {
        if (this.mbMasterSwitch) {
            this.mPreviewProvider.setEnableAPSAlgoNode(apsAdapterInterface);
        }
    }

    public void removeCaptureAlgo(ImageCategory.MetaItemInfo metaItemInfo) {
        if (this.mbMasterSwitch) {
            this.mCaptureProvider.removeCaptureAlgo(metaItemInfo);
        }
    }
}
