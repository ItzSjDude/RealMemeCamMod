package com.oplus.ocs.camera.appinterface.adapter;

import android.util.ArrayMap;
import com.oplus.ocs.camera.common.parameter.apsadapter.ApsAlgoSwitchConfigParameter;
import com.oplus.ocs.camera.consumer.apsAdapter.config.AlgoSwitchConfig;
/* loaded from: classes.dex */
public class CameraAlgoSwitchConfigUtil {

    /* loaded from: classes.dex */
    public static class PreviewConfig {
        private ApsAlgoSwitchConfigParameter mParameter = new ApsAlgoSwitchConfigParameter();
        private ArrayMap<String, Component> mComponentMap = new ArrayMap<>();

        /* JADX INFO: Access modifiers changed from: package-private */
        public PreviewConfig(AlgoSwitchConfig.PreviewConfig previewConfig) {
            this.mParameter.set(ApsAlgoSwitchConfigParameter.KEY_PREVIEW_CONFIG_CAMERA_MODE, previewConfig.mCameraMode);
            this.mParameter.set(ApsAlgoSwitchConfigParameter.KEY_PREVIEW_CONFIG_CAMERA_ID, Integer.valueOf(previewConfig.mCameraId));
            this.mParameter.set(ApsAlgoSwitchConfigParameter.KEY_PREVIEW_CONFIG_CAMERA_NUM, Integer.valueOf(previewConfig.mCameraNum));
            this.mParameter.set(ApsAlgoSwitchConfigParameter.KEY_PREVIEW_CONFIG_CAMERA_PREV_VIDEO, Integer.valueOf(previewConfig.mIsSeparateStreamForPrevAndVideo));
            for (int i = 0; i < previewConfig.mComponentMap.size(); i++) {
                this.mComponentMap.put(previewConfig.mComponentMap.keyAt(i), new Component(previewConfig.mComponentMap.valueAt(i)));
            }
        }

        public <T> T get(String str, Class<T> cls, T t) {
            return (T) this.mParameter.get(str, cls);
        }

        public ArrayMap<String, Component> getComonentMap() {
            return this.mComponentMap;
        }
    }

    /* loaded from: classes.dex */
    public static class CaptureConfig {
        private ApsAlgoSwitchConfigParameter mParameter = new ApsAlgoSwitchConfigParameter();

        /* JADX INFO: Access modifiers changed from: package-private */
        public CaptureConfig(AlgoSwitchConfig.CaptureConfig captureConfig) {
            this.mParameter.set(ApsAlgoSwitchConfigParameter.KEY_CAPTURE_CONFIG_CAMERA_MODE, captureConfig.mCameraMode);
            this.mParameter.set(ApsAlgoSwitchConfigParameter.KEY_CAPTURE_CONFIG_CAMERA_ID, Integer.valueOf(captureConfig.mCameraId));
            this.mParameter.set(ApsAlgoSwitchConfigParameter.KEY_CAPTURE_CONFIG_ENABLE, Boolean.valueOf(captureConfig.mbEnable));
            this.mParameter.set(ApsAlgoSwitchConfigParameter.KEY_CAPTURE_CONFIG_ALGO, captureConfig.mAlgos);
        }

        public <T> T get(String str, Class<T> cls, T t) {
            return (T) this.mParameter.get(str, cls);
        }
    }

    /* loaded from: classes.dex */
    public static class Component {
        private ApsAlgoSwitchConfigParameter mParameter = new ApsAlgoSwitchConfigParameter();

        Component(AlgoSwitchConfig.PreviewConfig.Component component) {
            this.mParameter.set(ApsAlgoSwitchConfigParameter.KEY_COMPONENT_ENABLE, Boolean.valueOf(component.mbEnable));
            this.mParameter.set(ApsAlgoSwitchConfigParameter.KEY_COMPONENT_MASTER_INPUT_WIDTH, Integer.valueOf(component.mMasterInputWidth));
            this.mParameter.set(ApsAlgoSwitchConfigParameter.KEY_COMPONENT_MASTER_INPUT_HEIGHT, Integer.valueOf(component.mMasterInputHeight));
            this.mParameter.set(ApsAlgoSwitchConfigParameter.KEY_COMPONENT_SLAVE_INPUT_WIDTH, Integer.valueOf(component.mSlaveInputWidth));
            this.mParameter.set(ApsAlgoSwitchConfigParameter.KEY_COMPONENT_SLAVE_INPUT_HEIGHT, Integer.valueOf(component.mSlaveInputHeight));
            this.mParameter.set(ApsAlgoSwitchConfigParameter.KEY_COMPONENT_THIRD_INPUT_WIDTH, Integer.valueOf(component.mThirdInputWidth));
            this.mParameter.set(ApsAlgoSwitchConfigParameter.KEY_COMPONENT_THIRD_INPUT_HEIGHT, Integer.valueOf(component.mThirdInputHeight));
            this.mParameter.set(ApsAlgoSwitchConfigParameter.KEY_COMPONENT_OUTPUT_WIDTH, Integer.valueOf(component.mOutputWidth));
            this.mParameter.set(ApsAlgoSwitchConfigParameter.KEY_COMPONENT_OUTPUT_HEIGHT, Integer.valueOf(component.mOutputHeight));
            this.mParameter.set(ApsAlgoSwitchConfigParameter.KEY_COMPONENT_FRAME_SKIP_CNT, Integer.valueOf(component.mFrameSkipCnt));
            this.mParameter.set(ApsAlgoSwitchConfigParameter.KEY_COMPONENT_PIPELINE_COPY_FROM, component.mPipelineCopyFrom);
            this.mParameter.set(ApsAlgoSwitchConfigParameter.KEY_COMPONENT_ALGO_NODE_COPY_FROM, component.mAlgoNodeCopyFrom);
            this.mParameter.set(ApsAlgoSwitchConfigParameter.KEY_COMPONENT_ALGO_LIST, component.mAlgoList);
        }

        public <T> T get(String str, Class<T> cls) {
            return (T) this.mParameter.get(str, cls);
        }
    }
}
