package com.oplus.ocs.camera.consumer.apsAdapter;

import android.graphics.Bitmap;
import android.graphics.Rect;
import android.hardware.HardwareBuffer;
import android.hardware.camera2.CameraMetadata;
import android.media.Image;
import android.media.ImageReader;
import android.os.ConditionVariable;
import android.os.Handler;
import android.os.Looper;
import android.os.Message;
import android.view.Surface;
import com.oplus.ocs.camera.consumer.apsAdapter.APSClientWrapper;
import com.oplus.ocs.camera.consumer.apsAdapter.adapter.ApsAdapterDecision;
import com.oplus.ocs.camera.consumer.apsAdapter.adapter.ApsCaptureParam;
import com.oplus.ocs.camera.consumer.apsAdapter.adapter.ApsCaptureRequestParam;
import com.oplus.ocs.camera.consumer.apsAdapter.adapter.ApsExifData;
import com.oplus.ocs.camera.consumer.apsAdapter.adapter.ApsInitParameter;
import com.oplus.ocs.camera.consumer.apsAdapter.adapter.ApsParameters;
import com.oplus.ocs.camera.consumer.apsAdapter.adapter.ApsPreviewDecisionParam;
import com.oplus.ocs.camera.consumer.apsAdapter.adapter.ApsPreviewParam;
import com.oplus.ocs.camera.consumer.apsAdapter.adapter.ApsResult;
import com.oplus.ocs.camera.consumer.apsAdapter.adapter.ApsUtils;
import com.oplus.ocs.camera.consumer.apsAdapter.adapter.ApsWatermarkParam;
import com.oplus.ocs.camera.consumer.apsAdapter.config.AlgoSwitchConfig;
import com.oplus.ocs.camera.consumer.apsAdapter.jniVersion.CmdJniVersion;
import com.oplus.ocs.camera.consumer.apsAdapter.jniVersion.DefaultJniVersion;
import com.oplus.ocs.camera.consumer.apsAdapter.jniVersion.JniVersionBase;
import com.oplus.ocs.camera.consumer.apsAdapter.jniVersion.JniVersionFactory;
import java.lang.ref.WeakReference;
import java.util.Arrays;
import java.util.HashMap;
import java.util.Iterator;
import java.util.LinkedHashMap;
import java.util.Map;

/* JADX INFO: loaded from: classes.dex */
public class APSClient {
    private static final String APS_PIPELINE_NAME_ASD = "pipeline_asd";
    private static final String APS_PIPELINE_NAME_CAPTURE = "pipeline_capture";
    private static final String APS_PIPELINE_NAME_DEFAULT = "pipeline_default";
    private static final String APS_PIPELINE_NAME_PREVIEW = "pipeline_preview";
    private static final String APS_PIPELINE_NAME_VIDEO = "pipeline_video";
    private static final String BASE_VERSION = "V001.000.000";
    private static final int CAMERA_MSG_HEIF_CODEC = 3;
    private static final int CAMERA_MSG_HEIF_THUMB = 4;
    private static final int CAMERA_MSG_JPEG_DATA = 1;
    private static final int CAMERA_MSG_PREVIEW_DATA = 2;
    private static final int CAMERA_MSG_SERVER_DIED = 255;
    private static final String COMPATIABLE_VERSION = "V000.000.001";
    private static final String KEY_ALGONODE_ENABLE = "algonode_enable";
    private static final String KEY_ALGONODE_NAME = "algonode_name";
    private static final String KEY_ALGO_VISUALIZATION_ENABLE = "algo_visualization_enable";
    private static final String KEY_ALGO_VISUALIZATION_KEY = "algo_visualization_key";
    private static final String KEY_ALGO_VISUALIZATION_VALUE = "algo_visualization_value";
    private static final String KEY_APS_INIT_MODE = "aps_init_mode";
    private static final String KEY_APS_MODULE = "aps_module";
    private static final String KEY_APS_PROC_TIMES = "resultinfo_aps_proc_times";
    private static final String KEY_AUTO_TRANSMIT_BY_UNIT = "auto_transmit_by_unit";
    protected static final String KEY_BITMAP_OBJ = "bitmapobj";
    private static final String KEY_CAMERA_ID = "camera_id";
    public static final String KEY_CAPTURE_ALGO_LIST = "capture_algo_list";
    private static final String KEY_CAPTURE_ERROR_CODE = "capture_error_code";
    private static final String KEY_CONSUMER_PTR = "consumer_ptr";
    private static final String KEY_DECISION_AISHUTTER_ENABLE = "previewdecision_aishutter_enable";
    private static final String KEY_DECISION_AIS_STATE = "previewdecision_ais_state";
    private static final String KEY_DECISION_ALGO_LIST = "previewdecision_algolist";
    private static final String KEY_DECISION_ASD_MOVING_OBJECT = "previewdecision_asd_moving_object";
    private static final String KEY_DECISION_ASD_MSG_SCENE_VALUE = "previewdecision_asd_msg_scene_value";
    private static final String KEY_DECISION_BRACKET_MODE = "previewdecision_bracket_mode";
    private static final String KEY_DECISION_BURST_CAPTURE_ALGO_LIST = "previewdecision_burstalgolist";
    private static final String KEY_DECISION_CAMERAID = "previewdecision_cameraid";
    private static final String KEY_DECISION_CAPTURE_INTENT = "previewdecision_capture_intent";
    private static final String KEY_DECISION_CAPTURE_INTERVAL = "previewdecision_capture_interval";
    private static final String KEY_DECISION_CAPTURE_MFNR_CNT = "algo_remapping_capture_mfnr_cnt";
    private static final String KEY_DECISION_CAPTURE_MODE = "previewdecision_capture_mode";
    private static final String KEY_DECISION_CAPTURE_NO_NEED_MATCH_META = "previewdecision_capture_noneed_match_meta";
    private static final String KEY_DECISION_CAPTURE_SURFACE = "previewdecision_capture_surface";
    private static final String KEY_DECISION_CAPTURE_TURBORAW_CNT = "algo_remapping_capture_turboraw_cnt";
    private static final String KEY_DECISION_ET_LIST = "previewdecision_etlist";
    private static final String KEY_DECISION_EV_LIST = "previewdecision_evlist";
    private static final String KEY_DECISION_FEATURE_TYPE = "previewdecision_feature_type";
    private static final String KEY_DECISION_HDR_BRIGHTEN_INDEX = "previewdecision_hdr_brighten_index";
    private static final String KEY_DECISION_HDR_STATE = "previewdecision_hdr_state";
    private static final String KEY_DECISION_IS_COUNTER_RESET = "algo_remapping_is_counter_reset";
    private static final String KEY_DECISION_IS_HDR_FUSION = "algo_remapping_is_hdr_fusion";
    private static final String KEY_DECISION_IS_MOTION_SCENE = "algo_remapping_motion_scene";
    private static final String KEY_DECISION_IS_SWITCH_ALGO = "algo_remapping_is_remapped";
    private static final String KEY_DECISION_MASTER_PIPELINE = "previewdecision_master_pipeline";
    private static final String KEY_DECISION_META_INDEX = "previewdecision_meta_index";
    private static final String KEY_DECISION_MFSR_FRAME_CNT = "previewdecision_mfsr_frame_count";
    private static final String KEY_DECISION_MULTI_FRAME_CNT = "previewdecision_multiframecnt";
    private static final String KEY_DECISION_NIGHT_TOTAL_EXP = "previewdecision_night_total_exptime";
    private static final String KEY_DECISION_OFFLINE_NIGHT_EXP_TIME = "previewdecision_turbo_fusion_night_total_exptime";
    private static final String KEY_DECISION_OFFLINE_NIGHT_SHUTTER_WAIT_TIME = "previewdecision_turbo_fusion_night_shutter_wait_time";
    private static final String KEY_DECISION_PORTRAIT_HDR_TYPE = "previewdecision_portrait_hdr_type";
    private static final String KEY_DECISION_PRECOLLECT_FRAME_CNT = "previewdecision_precollect_frame_count";
    private static final String KEY_DECISION_QUICK_JPEG = "previewdecision_quick_jpeg";
    private static final String KEY_DECISION_REQUEST_FORMAT = "previewdecision_request_format";
    private static final String KEY_DECISION_REQUEST_MIXED_FORMAT = "previewdecision_request_mixed_format";
    private static final String KEY_DECISION_SCENE_MODE = "previewdecision_scene_mode";
    private static final String KEY_DECISION_SENSORMASK = "previewdecision_sensormask";
    private static final String KEY_DECISION_SENSOR_MODE = "previewdecision_sensor_mode";
    private static final String KEY_DECISION_SEQUENCE_ID = "previewdecision_sequenceid";
    private static final String KEY_DECISION_SHOW_HDR_ICON = "previewdecision_show_hdr_icon";
    private static final String KEY_DECISION_SPECIFIC_PROCESS_ALGO = "previewdecision_specificprocessalgo";
    private static final String KEY_DECISION_SUPERNIGHT_SCENE = "previewdecision_supernight_scene";
    private static final String KEY_DECISION_SWITCH_BEFORE_ALGO = "algo_remapping_original_type";
    private static final String KEY_DECISION_SWITCH_CAUSE = "algo_remapping_remap_cause";
    private static final String KEY_DECISION_SWITCH_CURRENT_ALGO = "algo_remapping_remap_type";
    private static final String KEY_DECISION_THERMAL_ALGO_MASK = "previewdecision_thermal_algo_mask";
    private static final String KEY_DECISION_THUMBNAIL_INDEX = "previewdecision_thumbnail_index";
    private static final String KEY_DECISION_TRIGGER_NIGHT_SE = "previewdecision_trigger_night_se";
    private static final String KEY_DECISION_TURBORAW_SCENE = "previewdecision_turboraw_scene";
    private static final String KEY_DECISION_ZOOM_FEATURE = "previewdecision_zoom_feature";
    private static final String KEY_DRAWTEXT_BRACKET_MODE = "drawtext_bracket_mode";
    private static final String KEY_DRAWTEXT_FEATURE_TYPE = "drawtext_feature_type";
    private static final String KEY_DRAWTEXT_HDR_TYPE = "drawtext_hdr_type";
    private static final String KEY_DRAWTEXT_SCENE_MODE = "drawtext_scene_mode";
    private static final String KEY_FACE_BEAUTY_ENABLE = "face_beauty_enable";
    private static final String KEY_FILTER_ENABLE = "filter_enable";
    private static final String KEY_FLOWINGWATER_ENABLE = "flowing_water_enable";
    protected static final String KEY_HARDWAREBUFFER_OBJ = "hardwarebufferobj";
    private static final String KEY_HAS_IMAGEREADER = "has_imagereader";
    protected static final String KEY_IMAGE_BUFFER_OBJ = "imagebufferobj";
    protected static final String KEY_IMAGE_OBJ = "imageobj";
    private static final String KEY_INPUT_HEIGHT = "buffer_input_height";
    private static final String KEY_INPUT_SCANLINE = "buffer_input_scanline";
    private static final String KEY_INPUT_STRIDE = "buffer_input_stride";
    private static final String KEY_INPUT_WIDTH = "buffer_input_width";
    private static final String KEY_IS_REPROCESS_FRAME = "is_reprocess_frame";
    protected static final String KEY_LOGICAMETA_OBJ = "logicmetaobj";
    protected static final String KEY_META_HWBUFFER_OBJ = "metahwbufferobj";
    protected static final String KEY_META_OBJ = "metarefobj";
    private static final String KEY_MULTI_CAMERA_MODE = "multicamera_camera_mode";
    private static final String KEY_NEON_ENABLE = "neon_enable";
    protected static final String KEY_PHYSICALMETA_OBJ = "phymetaobj";
    private static final String KEY_PIPELINE_ENABLE = "pipeline_enable";
    private static final String KEY_PIPELINE_NAME = "pipeline_name";
    private static final String KEY_PI_ENABLE = "pi_enable";
    private static final String KEY_PREVIEWCFG_CAMERA_ID = "previewcfg_camera_id";
    private static final String KEY_PREVIEWCFG_CAMERA_MODE = "previewcfg_camera_mode";
    private static final String KEY_PREVIEWCFG_CAMERA_NUM = "previewcfg_camera_num";
    private static final String KEY_PREVIEWCFG_COMP_ALGOLIST = "previewcfg_component_algolist";
    private static final String KEY_PREVIEWCFG_COMP_ALGONODE_COPYFROM = "previewcfg_component_algonode_copyfrom";
    private static final String KEY_PREVIEWCFG_COMP_ENABLE = "previewcfg_component_enable";
    private static final String KEY_PREVIEWCFG_COMP_MASTETHEIGHT = "previewcfg_component_masterheight";
    private static final String KEY_PREVIEWCFG_COMP_MASTETWIDTH = "previewcfg_component_masterwidth";
    private static final String KEY_PREVIEWCFG_COMP_NAME = "previewcfg_component_componentname";
    private static final String KEY_PREVIEWCFG_COMP_OUTPUTHEIGHT = "previewcfg_component_outputheight";
    private static final String KEY_PREVIEWCFG_COMP_OUTPUTWIDTH = "previewcfg_component_outputwidth";
    private static final String KEY_PREVIEWCFG_COMP_PIPELINE_COPYFROM = "previewcfg_component_pipeline_copyfrom";
    private static final String KEY_PREVIEWCFG_COMP_SKIP_CNT = "previewcfg_component_skip_cnt";
    private static final String KEY_PREVIEWCFG_COMP_SLAVEHEIGHT = "previewcfg_component_slaveheight";
    private static final String KEY_PREVIEWCFG_COMP_SLAVEWIDTH = "previewcfg_component_slavewidth";
    private static final String KEY_PREVIEWCFG_COMP_THIRDHEIGHT = "previewcfg_component_thirdheight";
    private static final String KEY_PREVIEWCFG_COMP_THIRDWIDTH = "previewcfg_component_thirdwidth";
    private static final String KEY_PREVIEWCFG_IS_SEPARATE_VIDEO = "previewcfg_mIsSeparateStreamForPrevAndVideo";
    private static final String KEY_PREVIEWCFG_NUM_COMPONENT = "previewcfg_num_component";
    private static final String KEY_PREVIEW_AICOLOR = "preview_aicolor";
    private static final String KEY_PREVIEW_ANTIBANDING = "preview_antibanding";
    private static final String KEY_PREVIEW_ASD = "preview_asd";
    private static final String KEY_PREVIEW_DECISION_FORMAT_LIST = "previewdecision_request_format_list";
    private static final String KEY_PREVIEW_ERROR_CODE = "preview_error_code";
    private static final String KEY_PREVIEW_LSD = "preview_lsd";
    private static final String KEY_PREVIEW_PF = "preview_pf";
    private static final String KEY_PREVIEW_RECTIFY = "preview_rectify";
    private static final String KEY_PREVIEW_RTB = "preview_rtb";
    private static final String KEY_PREVIEW_VIDEO_HYPERLAPSE = "preview_video_hyperlapse";
    private static final String KEY_PROCESS_TYPE = "process_type";
    private static final String KEY_RECORDING_CAPTURE = "recording_capture";
    private static final String KEY_RESULT_APP_ALGOFLAG = "resultinfo_app_algoflag";
    private static final String KEY_RESULT_APS_INIT_FINISH = "resultinfo_algoInterface_init_done";
    private static final String KEY_RESULT_BUFFER_TYPE = "resultinfo_buffer_type";
    private static final String KEY_RESULT_CROP_BOTTOM = "resultinfo_crop_bottom";
    private static final String KEY_RESULT_CROP_LEFT = "resultinfo_crop_left";
    private static final String KEY_RESULT_CROP_RIGHT = "resultinfo_crop_right";
    private static final String KEY_RESULT_CROP_TOP = "resultinfo_crop_top";
    private static final String KEY_RESULT_FRAME_ID = "resultinfo_frame_id";
    private static final String KEY_RESULT_HAS_STRESULT = "resultinfo_has_st_result";
    private static final String KEY_RESULT_HEIF_PROCESS_APS = "resultinfo_heif_encode_in_aps";
    private static final String KEY_RESULT_HEIGHT = "resultinfo_height";
    private static final String KEY_RESULT_IDENTITY = "resultinfo_identity";
    private static final String KEY_RESULT_IS_LASTVIDEOFRAME = "resultinfo_is_last_videoframe";
    private static final String KEY_RESULT_IS_MOTION_DETECTED = "resultinfo_is_motion_detected";
    private static final String KEY_RESULT_IS_NEED_DETACH = "resultinfo_is_need_detach";
    private static final String KEY_RESULT_IS_START_INTERPOLATION_FRAME = "resultinfo_is_start_interoplation";
    private static final String KEY_RESULT_MESH_PTR = "photo_3d_mesh_ptr";
    private static final String KEY_RESULT_MESSAGE_TYPE = "resultinfo_message_type";
    private static final String KEY_RESULT_NOISE_REDUCTION_STRENGTH = "resultinfo_noise_reduction_strength";
    private static final String KEY_RESULT_PIPELINE_NAME = "resultinfo_pipeline_name";
    private static final String KEY_RESULT_REF_TIMESTAMP = "resultinfo_ref_timestamp";
    private static final String KEY_RESULT_ROTATION = "resultinfo_rotation";
    private static final String KEY_RESULT_SCANLINE = "resultinfo_scanline";
    private static final String KEY_RESULT_STRIDE = "resultinfo_stride";
    private static final String KEY_RESULT_ST_HEIGHT = "resultinfo_st_height";
    private static final String KEY_RESULT_ST_WIDTH = "resultinfo_st_width";
    private static final String KEY_RESULT_WIDTH = "resultinfo_width";
    protected static final String KEY_RUNTIME_CNT_PENDING = "runtimeinfo_mProcessCntPending";
    protected static final String KEY_RUNTIME_MEMSIZE = "runtimeinfo_mInputMemSize";
    protected static final String KEY_RUNTIME_SINGLEALGO_MAXMEM = "runtimeinfo_mSingleAlgoMaxRunMem";
    protected static final String KEY_RUNTIME_TOTAL_TIME = "runtimeinfo_mTotalTimeEstimate";
    private static final String KEY_SCP_ENABLE = "scp_enable";
    protected static final String KEY_STATICMETA_OBJ = "staticmetaobj";
    private static final String KEY_STREAMER_ENABLE = "streamer_enable";
    private static final String KEY_SUPER_RAW_ENABLE = "superraw_enable";
    protected static final String KEY_SURFACE_OBJ = "surfaceobj";
    private static final String KEY_TRIPOD_ENABLE = "tripod_enable";
    private static final String KEY_ULTRA_HIGHRES_ENABLE = "ultra_highres_enable";
    private static final String KEY_WATERMARK_BITMAP_OBJ = "waterwarkbmpobj";
    private static final String KEY_WATERMARK_HEIGHT = "watermark_height";
    protected static final String KEY_WATERMARK_OBJ = "waterwarkobj";
    private static final String KEY_WATERMARK_REF_WIDTH = "watermark_refwidth";
    private static final String KEY_WATERMARK_WIDTH = "watermark_width";
    private static final String KEY_ZOOM_RATIO = "zoom_ratio";
    private static final int PROCESS_TYPE_ADD_FRAME_BUFF = 4;
    private static final int PROCESS_TYPE_BEFORE_CAPTURE = 11;
    private static final int PROCESS_TYPE_CLEAR = 6;
    private static final int PROCESS_TYPE_GET_RUNTIME_INFO = 1;
    private static final int PROCESS_TYPE_INIT = 2;
    private static final int PROCESS_TYPE_NONE = 0;
    private static final int PROCESS_TYPE_PROCESS_BITMAP = 12;
    private static final int PROCESS_TYPE_PROCESS_IMAGES = 5;
    private static final int PROCESS_TYPE_RELEASE_BUFFER = 7;
    private static final int PROCESS_TYPE_SET_ALGONODE_ENABLE = 10;
    private static final int PROCESS_TYPE_SET_PIPELINE_ENABLE = 9;
    private static final int PROCESS_TYPE_START_CAPTURE = 14;
    private static final int PROCESS_TYPE_STOP = 8;
    private static final int PROCESS_TYPE_UNINIT = 3;
    private static final String TAG = "APSClient";
    private static final String VALUE_RESERVE = "reserve";
    private static long sLogInterval;
    private APSClientWrapper mAPSClientWrapper;
    private BufferCallback mBufferCallback;
    private EventHandler mEventHandler;
    private HeifCodecCallback mHeifCodecCallback;
    private JniVersionBase mJniVersion;
    private MetaImageRefCounter mMetaImageRefCounter;
    private boolean mbAPSClientJNICmdVersion;
    private volatile boolean mbNewJniVersion = false;
    private String[] mCaptureInitParams = null;
    private ApsParameters mCaptureApsParameters = null;
    private ConditionVariable mProcessImageConditionVariable = new ConditionVariable(true);
    private int mAlgoSwitchVersion = -1;

    public static class APSRuntimeInfo {
        public int mInputMemSize = 0;
        public int mSingleAlgoMaxRunMem = 0;
        public int mTotalTimeEstimate = 0;
        public int mProcessCntPending = 0;
    }

    public interface BufferCallback {
        void onCaptureCallback(ApsResult apsResult);

        void onPreviewCallback(ApsResult apsResult);

        void onServiceDied();
    }

    public interface HeifCodecCallback {
        void initHeifCodec(long j);

        void processHeifCodec(long j, HardwareBuffer hardwareBuffer, ApsExifData apsExifData, int i, int i2);

        void setHeicProcessInApp(boolean z);

        void uninitHeifCodec(long j);
    }

    private native int addFrameBuff(ApsCaptureParam apsCaptureParam, Object obj);

    private native int addFrameBuff(String[] strArr, Object[] objArr, String[] strArr2);

    private native int addPreviewFrameBuff(ApsPreviewParam apsPreviewParam, ApsWatermarkParam apsWatermarkParam);

    private native int algoInit(ApsInitParameter apsInitParameter, Object obj);

    private native int algoInit(String[] strArr, Object[] objArr, String[] strArr2, String[] strArr3);

    private native void attachPreviewSurface(int i, Surface surface, int i2);

    private native int clear(Object obj);

    private native int create(Object obj);

    private native int destroy();

    private native void detachPreviewSurface(int i);

    private native int exchangeBuffer(Surface surface, Surface surface2, int i, int i2, long j);

    private native String getAPSVersion();

    private native String[] getParameters(String[] strArr, Object[] objArr, String[] strArr2);

    private native APSRuntimeInfo getRuntimeInfo(Object obj);

    private native ApsAdapterDecision.DecisionResult previewDecision(ApsPreviewDecisionParam apsPreviewDecisionParam, Object obj);

    private native String[] previewDecision(ApsPreviewDecisionParam apsPreviewDecisionParam, String[] strArr, CameraMetadata cameraMetadata);

    private native int processImages(String[] strArr, Object[] objArr, String[] strArr2, byte[] bArr);

    private native int processImages(String[] strArr, String[] strArr2, ApsWatermarkParam apsWatermarkParam, Object obj);

    private native int releaseBuffer(String str, HardwareBuffer hardwareBuffer, Object obj);

    private native Rect[] roiTranslate(Rect[] rectArr);

    private native int setBufferQAllocEnable(Surface surface, boolean z);

    private native int setEnableAPSAlgoNode(String str, boolean z, Object obj);

    private native int setEnableAPSPipeline(String str, boolean z, Object obj);

    private native int setParameters(String[] strArr, Object[] objArr, String[] strArr2);

    private native void setRequestMetadata(ApsCaptureRequestParam apsCaptureRequestParam);

    private native int stop(int i, Object obj);

    private native int unint(int i, String[] strArr, String[] strArr2, Object obj);

    private native int unint(String[] strArr, Object[] objArr, String[] strArr2);

    protected native int createClient(Object obj);

    protected native int destroyClient();

    protected native int transact(int i, Map<String, Object> map, Map<String, Object> map2);

    public static class MetaImageRefCounter {
        private static final int MAX_REF_CNT_WITH_VIDEO_IMAGE = 35;
        private static final int MAX_REF_LEN = 6;
        private static final int TYPE_APP = 4;
        private static final int TYPE_APS_ASD = 2;
        private static final int TYPE_APS_PREVIEW = 0;
        private static final int TYPE_APS_VIDEO = 1;
        private LinkedHashMap<Image, int[]> metaBufferMap;
        private Object metaBufferMapLock = new Object();
        private int[] availablePipelines = new int[6];
        private long mFirstTimeStampWithVideoImage = 0;
        private int mCntWithVideoImage = 0;

        public MetaImageRefCounter() {
            this.metaBufferMap = null;
            this.metaBufferMap = new LinkedHashMap<>();
        }

        public boolean setMetaImageRef(Object obj, String str, boolean z) {
            if (obj == null) {
                return false;
            }
            Image image = (Image) obj;
            synchronized (this.metaBufferMapLock) {
                if (this.metaBufferMap.get(image) == null) {
                    return false;
                }
                if (z) {
                    if ("pipeline_asd".equals(str)) {
                        int[] iArr = this.metaBufferMap.get(image);
                        iArr[2] = iArr[2] + 1;
                    } else if (str == null) {
                        int[] iArr2 = this.metaBufferMap.get(image);
                        iArr2[4] = iArr2[4] + 1;
                    }
                    return true;
                }
                if (("pipeline_preview".equals(str) || "pipeline_default".equals(str)) && this.metaBufferMap.get(image)[0] > 0) {
                    int[] iArr3 = this.metaBufferMap.get(image);
                    iArr3[0] = iArr3[0] - 1;
                } else if ("pipeline_video".equals(str) && this.metaBufferMap.get(image)[1] > 0) {
                    int[] iArr4 = this.metaBufferMap.get(image);
                    iArr4[1] = iArr4[1] - 1;
                } else if ("pipeline_asd".equals(str) && this.metaBufferMap.get(image)[2] > 0) {
                    int[] iArr5 = this.metaBufferMap.get(image);
                    iArr5[2] = iArr5[2] - 1;
                } else if (this.metaBufferMap.get(image)[4] > 0) {
                    int[] iArr6 = this.metaBufferMap.get(image);
                    iArr6[4] = iArr6[4] - 1;
                }
                int[] iArr7 = this.metaBufferMap.get(image);
                for (int i = 0; i < iArr7.length; i++) {
                    if (iArr7[i] > 0) {
                        ApsAdapterLog.v(APSClient.TAG, "MetaImageRefCounter, metaObj: " + image + " " + i + "(preview-" + iArr7[0] + " video-" + iArr7[1] + " asd-" + iArr7[2] + " app-" + iArr7[4] + ") still ref ");
                        return true;
                    }
                }
                image.close();
                this.metaBufferMap.remove(image);
                ApsAdapterLog.v(APSClient.TAG, "MetaImageRefCounter, metaObj: " + image + ", close meta image");
                return true;
            }
        }

        public boolean initMetaMap(ApsPreviewParam apsPreviewParam) {
            boolean z;
            boolean z2;
            boolean z3;
            if (apsPreviewParam.getMetaBuffer() == null) {
                return false;
            }
            Image image = apsPreviewParam.getMetaBuffer().getImage();
            boolean videoImageAddToAps = apsPreviewParam.getVideoImageAddToAps();
            int[] role = apsPreviewParam.getRole();
            if (role != null) {
                z = false;
                z2 = false;
                for (int i : role) {
                    if (i >= 100) {
                        z = true;
                    } else {
                        z2 = true;
                    }
                }
            } else {
                z = false;
                z2 = false;
            }
            if (videoImageAddToAps) {
                removeVideoImageRefBefore(apsPreviewParam, z);
            }
            synchronized (this.metaBufferMapLock) {
                int[] iArr = new int[6];
                for (int i2 = 0; i2 < 6; i2++) {
                    iArr[i2] = 0;
                }
                if (videoImageAddToAps) {
                    iArr[1] = 1;
                } else {
                    this.mFirstTimeStampWithVideoImage = 0L;
                }
                iArr[0] = 1;
                iArr[4] = 1;
                if (this.metaBufferMap == null) {
                    this.metaBufferMap = new LinkedHashMap<>();
                }
                if (this.metaBufferMap.get(image) == null) {
                    this.metaBufferMap.put(image, iArr);
                    z3 = true;
                } else {
                    if (z2 && !apsPreviewParam.getIsMatchedMetadata()) {
                        int[] iArr2 = this.metaBufferMap.get(image);
                        iArr2[0] = iArr2[0] + 1;
                    }
                    z3 = false;
                }
                StringBuilder sb = new StringBuilder();
                sb.append("MetaImageRefCounter, initMetaMap metaObj: ");
                sb.append(image);
                sb.append(" value(0,1,2,4): (");
                sb.append(this.metaBufferMap.get(image)[0]);
                sb.append(",");
                sb.append(this.metaBufferMap.get(image)[1]);
                sb.append(",");
                sb.append(this.metaBufferMap.get(image)[2]);
                sb.append(",");
                sb.append(this.metaBufferMap.get(image)[4]);
                sb.append(") metaBufferMap size: ");
                sb.append(this.metaBufferMap.size());
                sb.append(" videoImageAddToAps: ");
                sb.append(videoImageAddToAps);
                sb.append(" role: ");
                sb.append(apsPreviewParam.getRole() == null ? null : Integer.valueOf(apsPreviewParam.getRole()[0]));
                sb.append(" mCntWithVideoImage: ");
                sb.append(this.mCntWithVideoImage);
                sb.append(" getIsMatchedMetadata: ");
                sb.append(apsPreviewParam.getIsMatchedMetadata());
                ApsAdapterLog.v(APSClient.TAG, sb.toString());
            }
            return z3;
        }

        /* JADX WARN: Removed duplicated region for block: B:27:0x0059  */
        /* JADX WARN: Removed duplicated region for block: B:28:0x0079  */
        /*
            Code decompiled incorrectly, please refer to instructions dump.
        */
        public void decMetaRefZeroToRemove(long j, int i, int i2) {
            boolean z;
            LinkedHashMap<Image, int[]> linkedHashMap = this.metaBufferMap;
            if (linkedHashMap == null) {
                return;
            }
            Iterator<Map.Entry<Image, int[]>> it = linkedHashMap.entrySet().iterator();
            int i3 = 0;
            while (it.hasNext()) {
                Map.Entry<Image, int[]> next = it.next();
                Image key = next.getKey();
                int[] value = next.getValue();
                try {
                } catch (Throwable th) {
                    th.printStackTrace();
                    it.remove();
                    ApsAdapterLog.e(APSClient.TAG, "MetaImageRefCounter, decMetaRefZeroToRemove metaObj: " + key + " already closed,  continue");
                }
                if (key.getTimestamp() < j || 0 == j) {
                    if (this.metaBufferMap.get(key)[i] == 1) {
                        for (int i4 = 0; i4 < value.length; i4++) {
                            if (i4 != i && value[i4] > 0) {
                                z = false;
                                break;
                            }
                        }
                        z = true;
                        if (!z) {
                            ApsAdapterLog.v(APSClient.TAG, "MetaImageRefCounter, decMetaRefZeroToRemove metaObj: " + key + ", close meta image");
                            key.close();
                            it.remove();
                            i3++;
                        } else if (this.metaBufferMap.get(key)[i] > 0) {
                            int[] iArr = this.metaBufferMap.get(key);
                            iArr[i] = iArr[i] - 1;
                            i3++;
                            ApsAdapterLog.v(APSClient.TAG, "MetaImageRefCounter, decMetaRefZeroToRemove metaObj: " + key + " pipelineName: " + i + " - 1");
                        }
                        if (i2 > 0 && i3 >= i2) {
                            return;
                        }
                    } else {
                        z = false;
                        if (!z) {
                        }
                        if (i2 > 0) {
                            continue;
                        }
                    }
                }
            }
        }

        public void removeVideoImageRefBefore(ApsPreviewParam apsPreviewParam, boolean z) {
            if (!z) {
                int i = this.mCntWithVideoImage + 1;
                this.mCntWithVideoImage = i;
                if (MAX_REF_CNT_WITH_VIDEO_IMAGE <= i) {
                    synchronized (this.metaBufferMapLock) {
                        decMetaRefZeroToRemove(0L, 1, 1);
                        ApsAdapterLog.v(APSClient.TAG, "MetaImageRefCounter, removeVideoImageRefBefore one, metaBufferMap size: " + this.metaBufferMap.size());
                    }
                    this.mCntWithVideoImage--;
                    return;
                }
                return;
            }
            this.mCntWithVideoImage = 0;
            synchronized (this.metaBufferMapLock) {
                if (this.mFirstTimeStampWithVideoImage == 0) {
                    long timeStamp = apsPreviewParam.getTimeStamp();
                    this.mFirstTimeStampWithVideoImage = timeStamp;
                    decMetaRefZeroToRemove(timeStamp, 1, 0);
                    ApsAdapterLog.v(APSClient.TAG, "MetaImageRefCounter, removeVideoImageRefBefore");
                }
            }
        }

        public void checkToRemoveVideoImageRefOnLastFrame() {
            ApsAdapterLog.i(APSClient.TAG, "MetaImageRefCounter, checkToRemoveVideoImageRefOnLastFrame");
            synchronized (this.metaBufferMapLock) {
                decMetaRefZeroToRemove(0L, 1, 0);
                this.mFirstTimeStampWithVideoImage = 0L;
            }
        }

        public void onAddImageToApsFail(ApsPreviewParam apsPreviewParam, boolean z) {
            boolean z2;
            boolean z3;
            Image image = apsPreviewParam.getMetaBuffer().getImage();
            ApsAdapterLog.v(APSClient.TAG, "MetaImageRefCounter, onAddImageToApsFail " + image);
            synchronized (this.metaBufferMapLock) {
                if (z) {
                    this.metaBufferMap.remove(image);
                    image.close();
                } else {
                    int[] role = apsPreviewParam.getRole();
                    if (role != null) {
                        z2 = false;
                        z3 = false;
                        for (int i : role) {
                            if (i > 100) {
                                z3 = true;
                            } else {
                                z2 = true;
                            }
                        }
                    } else {
                        z2 = false;
                        z3 = false;
                    }
                    if (z2) {
                        setMetaImageRef(apsPreviewParam.getMetaBuffer().getImage(), "pipeline_preview", false);
                    }
                    if (z3) {
                        setMetaImageRef(apsPreviewParam.getMetaBuffer().getImage(), "pipeline_video", false);
                    }
                }
            }
        }

        public void flushImage() {
            synchronized (this.metaBufferMapLock) {
                decMetaRefZeroToRemove(0L, 4, 0);
                ApsAdapterLog.v(APSClient.TAG, "MetaImageRefCounter, flushImage, metaBufferMap size: " + this.metaBufferMap.size());
            }
        }
    }

    private static void setMetaImageRef(Object obj, Object obj2, String str, boolean z) {
        APSClient aPSClient = (APSClient) ((WeakReference) obj).get();
        if (aPSClient == null || obj2 == null) {
            return;
        }
        aPSClient.mMetaImageRefCounter.setMetaImageRef(obj2, str, z);
    }

    public void flushImage() {
        this.mMetaImageRefCounter.flushImage();
    }

    public APSClient(String str) {
        this.mBufferCallback = null;
        this.mHeifCodecCallback = null;
        this.mMetaImageRefCounter = null;
        this.mEventHandler = null;
        this.mbAPSClientJNICmdVersion = true;
        this.mBufferCallback = null;
        this.mHeifCodecCallback = null;
        this.mMetaImageRefCounter = new MetaImageRefCounter();
        JniVersionBase jniVersionBaseCreateJniVersion = JniVersionFactory.createJniVersion(str);
        this.mJniVersion = jniVersionBaseCreateJniVersion;
        if ((jniVersionBaseCreateJniVersion instanceof CmdJniVersion) && ApsUtils.loadLibrary(jniVersionBaseCreateJniVersion.getJniLibraryName())) {
            this.mAPSClientWrapper = APSClientWrapper.Stub.asInterface(this);
        } else {
            if (!(this.mJniVersion instanceof DefaultJniVersion)) {
                this.mJniVersion = JniVersionFactory.createJniVersion("V001.000.000");
            }
            ApsUtils.sdkLoadLibrary(this.mJniVersion.getJniLibraryName());
            this.mbAPSClientJNICmdVersion = false;
        }
        ApsAdapterLog.e(TAG, "APSClient, classloader" + getClass().getClassLoader() + ", mbAPSClientJNICmdVersion: " + this.mbAPSClientJNICmdVersion + ", jniVersion: " + str);
        if (Looper.myLooper() != null) {
            this.mEventHandler = new EventHandler(Looper.myLooper());
        } else if (Looper.getMainLooper() != null) {
            this.mEventHandler = new EventHandler(Looper.getMainLooper());
        } else {
            this.mEventHandler = null;
        }
    }

    public void setDataCallback(BufferCallback bufferCallback) {
        this.mBufferCallback = bufferCallback;
    }

    public void setHeifCodecCallback(HeifCodecCallback heifCodecCallback) {
        this.mHeifCodecCallback = heifCodecCallback;
    }

    public int connect(int i) {
        int iCreate;
        this.mAlgoSwitchVersion = i;
        boolean z = this.mbAPSClientJNICmdVersion;
        String aPSVersion = COMPATIABLE_VERSION;
        if (z) {
            this.mbNewJniVersion = true;
            iCreate = this.mAPSClientWrapper.create(new WeakReference(this));
        } else {
            iCreate = create(new WeakReference(this));
            try {
                aPSVersion = getAPSVersion();
            } catch (Throwable th) {
                th.printStackTrace();
                ApsAdapterLog.e(TAG, "connect, error: getAPSVersion is not implemented");
            }
            this.mbNewJniVersion = aPSVersion.compareToIgnoreCase("V001.000.000") >= 0;
        }
        ApsAdapterLog.i(TAG, "connect, APS JNI version: " + aPSVersion + ", mbNewJniVersion: " + this.mbNewJniVersion + ", mbAPSClientJNICmdVersion: " + this.mbAPSClientJNICmdVersion + ", mAlgoSwitchVersion: " + this.mAlgoSwitchVersion);
        return iCreate;
    }

    protected int getAlgoSwitchVersion() {
        return this.mAlgoSwitchVersion;
    }

    protected static void postEventFromNative(Object obj, Object obj2) {
        APSClient aPSClient = (APSClient) ((WeakReference) obj).get();
        ApsResult apsResult = obj2 != null ? (ApsResult) obj2 : null;
        if (aPSClient == null || apsResult == null) {
            ApsAdapterLog.i(TAG, "postEventFromNative, apsclient or apsResults is null, return");
            return;
        }
        if (aPSClient.mbNewJniVersion) {
            ApsAdapterLog.v(TAG, "postEventFromNative, resultString: " + Arrays.toString(apsResult.mResultString));
            String[] strArr = apsResult.mResultString;
            if (apsResult.mResultString != null) {
                HashMap map = new HashMap(strArr.length / 2);
                for (int i = 0; i < strArr.length - 1; i += 2) {
                    map.put(strArr[i], strArr[i + 1]);
                }
                apsResult.mRotation = Integer.parseInt((String) map.get(KEY_RESULT_ROTATION));
                apsResult.mIdentity = Long.parseLong((String) map.get(KEY_RESULT_IDENTITY));
                apsResult.mAppAlgoFlag = Long.parseLong((String) map.get(KEY_RESULT_APP_ALGOFLAG));
                apsResult.mWidth = Integer.parseInt((String) map.get(KEY_RESULT_WIDTH));
                apsResult.mHeight = Integer.parseInt((String) map.get(KEY_RESULT_HEIGHT));
                apsResult.mStride = Integer.parseInt((String) map.get(KEY_RESULT_STRIDE));
                apsResult.mScanline = Integer.parseInt((String) map.get(KEY_RESULT_SCANLINE));
                apsResult.mSTWidth = Integer.parseInt((String) map.get(KEY_RESULT_ST_WIDTH));
                apsResult.mSTHeight = Integer.parseInt((String) map.get(KEY_RESULT_ST_HEIGHT));
                apsResult.mbHasSTResult = Boolean.parseBoolean((String) map.get(KEY_RESULT_HAS_STRESULT));
                apsResult.mBufferType = Integer.parseInt((String) map.get(KEY_RESULT_BUFFER_TYPE));
                apsResult.mCropLeft = Integer.parseInt((String) map.get(KEY_RESULT_CROP_LEFT));
                apsResult.mCropTop = Integer.parseInt((String) map.get(KEY_RESULT_CROP_TOP));
                apsResult.mCropRight = Integer.parseInt((String) map.get(KEY_RESULT_CROP_RIGHT));
                apsResult.mCropBottom = Integer.parseInt((String) map.get(KEY_RESULT_CROP_BOTTOM));
                apsResult.mMessageType = Integer.parseInt((String) map.get(KEY_RESULT_MESSAGE_TYPE));
                apsResult.mPipelineName = (String) map.get(KEY_RESULT_PIPELINE_NAME);
                apsResult.mIsLastVideoFrame = Integer.parseInt((String) map.get(KEY_RESULT_IS_LASTVIDEOFRAME));
                apsResult.mIsStartInterpolationFrame = Integer.parseInt((String) map.get(KEY_RESULT_IS_START_INTERPOLATION_FRAME));
                apsResult.mIsMotionDetected = Integer.parseInt((String) map.get(KEY_RESULT_IS_MOTION_DETECTED));
                apsResult.mbNeedDetach = Boolean.parseBoolean((String) map.get(KEY_RESULT_IS_NEED_DETACH));
                apsResult.mbHeifProcessInAps = Boolean.parseBoolean((String) map.get(KEY_RESULT_HEIF_PROCESS_APS));
                apsResult.mApsInitFinish = (String) map.get(KEY_RESULT_APS_INIT_FINISH);
                apsResult.mFrameId = Integer.parseInt((String) map.get(KEY_RESULT_FRAME_ID));
                if (map.containsKey(KEY_RESULT_NOISE_REDUCTION_STRENGTH)) {
                    apsResult.mNoiseReductionStrength = Integer.parseInt((String) map.get(KEY_RESULT_NOISE_REDUCTION_STRENGTH));
                }
                if (map.containsKey(KEY_RESULT_REF_TIMESTAMP)) {
                    apsResult.mRefTimestamp = Long.parseLong((String) map.get(KEY_RESULT_REF_TIMESTAMP));
                }
                if (map.containsKey(KEY_PREVIEW_ERROR_CODE)) {
                    apsResult.mPreviewErrorCode = (String) map.get(KEY_PREVIEW_ERROR_CODE);
                }
                if (map.containsKey(KEY_CAPTURE_ERROR_CODE)) {
                    apsResult.mCaptureErrorCode = (String) map.get(KEY_CAPTURE_ERROR_CODE);
                }
                if (map.containsKey(KEY_RESULT_MESH_PTR)) {
                    apsResult.mMeshPtr = Long.parseLong((String) map.get(KEY_RESULT_MESH_PTR));
                }
                if (map.containsKey(KEY_APS_PROC_TIMES)) {
                    String[] strArrSplit = ((String) map.get(KEY_APS_PROC_TIMES)).split(",");
                    apsResult.mProcTimes = new HashMap<>(strArrSplit.length);
                    for (String str : strArrSplit) {
                        String[] strArrSplit2 = str.split(":");
                        if (strArrSplit2.length == 2) {
                            try {
                                apsResult.mProcTimes.put(strArrSplit2[0], Long.valueOf(Long.parseLong(strArrSplit2[1])));
                            } catch (NumberFormatException e) {
                                e.printStackTrace();
                            }
                        }
                    }
                }
                if (2 == apsResult.mMessageType && (("pipeline_default".equals(apsResult.mPipelineName) || "pipeline_preview".equals(apsResult.mPipelineName)) && (-1 == apsResult.mRefTimestamp || 0 == apsResult.mRefTimestamp))) {
                    try {
                        ApsAdapterDecision.DecisionResult decisionResult = new ApsAdapterDecision.DecisionResult();
                        String str2 = (String) map.get(KEY_DECISION_CAMERAID);
                        if (str2 != null) {
                            decisionResult.mCameraId = Integer.parseInt(str2);
                        }
                        String str3 = (String) map.get(KEY_DECISION_CAPTURE_MODE);
                        if (str3 != null) {
                            decisionResult.mCaptureMode = str3;
                        }
                        String str4 = (String) map.get(KEY_DECISION_REQUEST_FORMAT);
                        if (str4 != null) {
                            decisionResult.mRequestFormat = Integer.parseInt(str4);
                        }
                        String str5 = (String) map.get(KEY_DECISION_MULTI_FRAME_CNT);
                        if (str5 != null) {
                            decisionResult.mMultiFrameCount = Integer.parseInt(str5);
                        }
                        String str6 = (String) map.get(KEY_DECISION_THUMBNAIL_INDEX);
                        if (str6 != null) {
                            decisionResult.mThumbnailIndex = Integer.parseInt(str6);
                        }
                        String str7 = (String) map.get(KEY_DECISION_META_INDEX);
                        if (str7 != null) {
                            decisionResult.mMetaIndex = Integer.parseInt(str7);
                        }
                        String str8 = (String) map.get(KEY_DECISION_SUPERNIGHT_SCENE);
                        if (str8 != null) {
                            decisionResult.mSuperNightScene = Integer.parseInt(str8);
                        }
                        String str9 = (String) map.get(KEY_DECISION_TURBORAW_SCENE);
                        if (str9 != null) {
                            decisionResult.mTurboRawScene = Integer.parseInt(str9);
                        }
                        String str10 = (String) map.get(KEY_DECISION_NIGHT_TOTAL_EXP);
                        if (str10 != null) {
                            decisionResult.mNightTotalExpTime = Integer.parseInt(str10);
                        }
                        String str11 = (String) map.get(KEY_DECISION_OFFLINE_NIGHT_EXP_TIME);
                        if (str11 != null) {
                            decisionResult.mOfflineNightExpTime = Integer.parseInt(str11);
                        }
                        String str12 = (String) map.get(KEY_DECISION_OFFLINE_NIGHT_SHUTTER_WAIT_TIME);
                        if (str12 != null) {
                            decisionResult.mOfflineNightShutterWaitTime = Integer.parseInt(str12);
                        }
                        String str13 = (String) map.get(KEY_DECISION_THERMAL_ALGO_MASK);
                        if (str13 != null) {
                            decisionResult.mThermalAlgoMask = Integer.parseInt(str13);
                        }
                        String str14 = (String) map.get(KEY_DECISION_SCENE_MODE);
                        if (str14 != null) {
                            decisionResult.mApsDecisionSceneMode = Integer.parseInt(str14);
                        }
                        String str15 = (String) map.get(KEY_DECISION_SHOW_HDR_ICON);
                        if (str15 != null) {
                            decisionResult.mApsDecisionShowHdrIcon = Integer.parseInt(str15);
                        }
                        String str16 = (String) map.get(KEY_DECISION_CAPTURE_INTERVAL);
                        if (str16 != null) {
                            decisionResult.mApsDecisionCaptureInterval = Integer.parseInt(str16);
                        }
                        String str17 = (String) map.get(KEY_DECISION_FEATURE_TYPE);
                        if (str17 != null) {
                            decisionResult.mApsDecisionFeatureType = Integer.parseInt(str17);
                        }
                        String str18 = (String) map.get(KEY_DECISION_ASD_MOVING_OBJECT);
                        if (str18 != null) {
                            decisionResult.mAsdMovingObject = Integer.parseInt(str18);
                        }
                        String str19 = (String) map.get(KEY_DECISION_ALGO_LIST);
                        if (str19 != null) {
                            decisionResult.mApsAlgoFlag = str19.split(",");
                        }
                        String str20 = (String) map.get(KEY_DECISION_EV_LIST);
                        if (str20 != null) {
                            decisionResult.mCaptureEVList = StringToInt(str20.split(","));
                        }
                        String str21 = (String) map.get(KEY_DECISION_ET_LIST);
                        if (str21 != null) {
                            decisionResult.mCaptureETList = StringToLong(str21.split(","));
                        }
                        String str22 = (String) map.get(KEY_DECISION_SENSORMASK);
                        if (str22 != null) {
                            decisionResult.mSensorMask = StringToInt(str22.split(","));
                        }
                        String str23 = (String) map.get(KEY_DECISION_MASTER_PIPELINE);
                        if (str23 != null) {
                            decisionResult.mMasterPipeline = Integer.parseInt(str23);
                        }
                        String str24 = (String) map.get(KEY_DECISION_SENSOR_MODE);
                        if (str24 != null) {
                            decisionResult.mPreviewSensorMode = Integer.parseInt(str24);
                        }
                        String str25 = (String) map.get(KEY_DECISION_BRACKET_MODE);
                        if (str25 != null) {
                            decisionResult.mApsBracketMode = Integer.parseInt(str25);
                        }
                        String str26 = (String) map.get(KEY_DECISION_MFSR_FRAME_CNT);
                        if (str26 != null) {
                            decisionResult.mMFSRFrameCount = Integer.parseInt(str26);
                        }
                        String str27 = (String) map.get(KEY_DECISION_SEQUENCE_ID);
                        if (str27 != null) {
                            decisionResult.mSequenceId = Integer.parseInt(str27);
                        }
                        String str28 = (String) map.get(KEY_DECISION_SPECIFIC_PROCESS_ALGO);
                        if (str28 != null) {
                            decisionResult.mSpecificProcessAlgo = Integer.parseInt(str28);
                        }
                        String str29 = (String) map.get(KEY_DRAWTEXT_BRACKET_MODE);
                        if (str29 != null) {
                            decisionResult.mDrawTextBracketMode = str29;
                        }
                        String str30 = (String) map.get(KEY_DRAWTEXT_SCENE_MODE);
                        if (str30 != null) {
                            decisionResult.mDrawTextSceneMode = str30;
                        }
                        String str31 = (String) map.get(KEY_DRAWTEXT_FEATURE_TYPE);
                        if (str31 != null) {
                            decisionResult.mDrawTextFeatureType = str31;
                        }
                        String str32 = (String) map.get(KEY_DRAWTEXT_HDR_TYPE);
                        if (str32 != null) {
                            decisionResult.mDrawTextHdrType = str32;
                        }
                        String str33 = (String) map.get(KEY_PREVIEW_ASD);
                        if (str33 != null) {
                            decisionResult.mPreviewASD = str33;
                        }
                        String str34 = (String) map.get(KEY_PREVIEW_ANTIBANDING);
                        if (str34 != null) {
                            decisionResult.mPreViewAntiBanding = str34;
                        }
                        String str35 = (String) map.get(KEY_PREVIEW_RECTIFY);
                        if (str35 != null) {
                            decisionResult.mPreviewRectify = str35;
                        }
                        String str36 = (String) map.get(KEY_PREVIEW_PF);
                        if (str36 != null) {
                            decisionResult.mPreviewPF = str36;
                        }
                        String str37 = (String) map.get(KEY_PREVIEW_LSD);
                        if (str37 != null) {
                            decisionResult.mPreviewLSD = str37;
                        }
                        String str38 = (String) map.get(KEY_PREVIEW_RTB);
                        if (str38 != null) {
                            decisionResult.mPreviewRTB = str38;
                        }
                        String str39 = (String) map.get(KEY_PREVIEW_AICOLOR);
                        if (str39 != null) {
                            decisionResult.mPreviewAiColor = str39;
                        }
                        String str40 = (String) map.get(KEY_PREVIEW_VIDEO_HYPERLAPSE);
                        if (str40 != null) {
                            decisionResult.mPreviewVideoHyperLapse = str40;
                        }
                        String str41 = (String) map.get(KEY_ALGO_VISUALIZATION_KEY);
                        if (str41 != null) {
                            decisionResult.mAlgoVisualizationKey = str41;
                        }
                        String str42 = (String) map.get(KEY_ALGO_VISUALIZATION_VALUE);
                        if (str42 != null) {
                            decisionResult.mAlgoVisualizationValue = str42;
                        }
                        String str43 = (String) map.get(KEY_DECISION_MFSR_FRAME_CNT);
                        if (str43 != null) {
                            decisionResult.mMFSRFrameCount = Integer.parseInt(str43);
                        }
                        String str44 = (String) map.get(KEY_DECISION_PRECOLLECT_FRAME_CNT);
                        if (str44 != null) {
                            decisionResult.mPreCollectFrameCount = Integer.parseInt(str44);
                        }
                        String str45 = (String) map.get(KEY_DECISION_ZOOM_FEATURE);
                        if (str45 != null) {
                            decisionResult.mSupportCaptureZoomFeature = Integer.parseInt(str45);
                        }
                        String str46 = (String) map.get(KEY_DECISION_AISHUTTER_ENABLE);
                        if (str46 != null) {
                            decisionResult.mbAIShutter = Boolean.parseBoolean(str46);
                        }
                        String str47 = (String) map.get(KEY_DECISION_REQUEST_MIXED_FORMAT);
                        if (str47 != null) {
                            decisionResult.mbRequestMixedFormat = Boolean.parseBoolean(str47);
                        }
                        String str48 = (String) map.get(KEY_DECISION_HDR_BRIGHTEN_INDEX);
                        if (str48 != null) {
                            decisionResult.mHdrBrightenIndex = Integer.parseInt(str48);
                        }
                        String str49 = (String) map.get(KEY_DECISION_CAPTURE_NO_NEED_MATCH_META);
                        if (str49 != null) {
                            decisionResult.mCaptureNoNeedMatchMeta = Integer.parseInt(str49);
                        }
                        String str50 = (String) map.get(KEY_DECISION_AIS_STATE);
                        if (str50 != null) {
                            decisionResult.mAISState = Integer.parseInt(str50);
                        }
                        String str51 = (String) map.get(KEY_DECISION_CAPTURE_INTENT);
                        if (str51 != null) {
                            decisionResult.mCaptureIntent = Integer.parseInt(str51);
                        }
                        String str52 = (String) map.get(KEY_DECISION_CAPTURE_SURFACE);
                        if (str52 != null) {
                            decisionResult.mCaptureSurface = Integer.parseInt(str52);
                        }
                        String str53 = (String) map.get(KEY_DECISION_QUICK_JPEG);
                        if (str53 != null) {
                            decisionResult.mSupportQuickJpeg = Integer.parseInt(str53);
                        }
                        String str54 = (String) map.get(KEY_DECISION_PORTRAIT_HDR_TYPE);
                        if (str54 != null) {
                            decisionResult.mPortraitHdrType = str54;
                        }
                        String str55 = (String) map.get(KEY_DECISION_PORTRAIT_HDR_TYPE);
                        if (str55 != null) {
                            decisionResult.mPortraitHdrType = str55;
                        }
                        String str56 = (String) map.get(KEY_DECISION_BURST_CAPTURE_ALGO_LIST);
                        if (str56 != null) {
                            decisionResult.mApsBurstCaptureAlgoList = str56.split(",");
                        }
                        String str57 = (String) map.get(KEY_PREVIEW_DECISION_FORMAT_LIST);
                        if (str57 != null) {
                            String[] strArrSplit3 = str57.split(",");
                            decisionResult.mRequestFormatList = new int[strArrSplit3.length];
                            for (int i2 = 0; i2 < strArrSplit3.length; i2++) {
                                decisionResult.mRequestFormatList[i2] = Integer.parseInt(strArrSplit3[i2]);
                            }
                        }
                        String str58 = (String) map.get(KEY_DECISION_HDR_STATE);
                        if (str58 != null) {
                            decisionResult.mHDRState = str58;
                        }
                        String str59 = (String) map.get(KEY_DECISION_TRIGGER_NIGHT_SE);
                        if (str59 != null) {
                            decisionResult.mTriggerNightSe = Integer.parseInt(str59);
                        }
                        String str60 = (String) map.get(KEY_AUTO_TRANSMIT_BY_UNIT);
                        if (str60 != null) {
                            decisionResult.mAutoTransmitStr = str60;
                        }
                        String str61 = (String) map.get(KEY_DECISION_IS_SWITCH_ALGO);
                        if (str61 != null) {
                            decisionResult.mSwitchAlgoFlag = Integer.parseInt(str61);
                        }
                        String str62 = (String) map.get(KEY_DECISION_SWITCH_BEFORE_ALGO);
                        if (str62 != null) {
                            decisionResult.mBeforeAlgoFeatureType = Integer.parseInt(str62);
                        }
                        String str63 = (String) map.get(KEY_DECISION_SWITCH_CURRENT_ALGO);
                        if (str63 != null) {
                            decisionResult.mCurrentAlgoFeatureType = Integer.parseInt(str63);
                        }
                        String str64 = (String) map.get(KEY_DECISION_CAPTURE_TURBORAW_CNT);
                        if (str64 != null) {
                            decisionResult.mCaptureTurborawCnt = Integer.parseInt(str64);
                        }
                        String str65 = (String) map.get(KEY_DECISION_CAPTURE_MFNR_CNT);
                        if (str65 != null) {
                            decisionResult.mCaptureMFNRCnt = Integer.parseInt(str65);
                        }
                        String str66 = (String) map.get(KEY_DECISION_IS_COUNTER_RESET);
                        if (str66 != null) {
                            decisionResult.mIsCounterRest = Integer.parseInt(str66);
                        }
                        String str67 = (String) map.get(KEY_DECISION_SWITCH_CAUSE);
                        if (str67 != null) {
                            decisionResult.mSwitchCause = Integer.parseInt(str67);
                        }
                        String str68 = (String) map.get(KEY_DECISION_IS_HDR_FUSION);
                        if (str68 != null) {
                            decisionResult.mIsHdrFusion = Integer.parseInt(str68);
                        }
                        String str69 = (String) map.get(KEY_DECISION_IS_MOTION_SCENE);
                        if (str69 != null) {
                            decisionResult.mIsMotionScene = Integer.parseInt(str69);
                        }
                        apsResult.mDecisionResult = decisionResult;
                        apsResult.mMetaImageRefCounter = aPSClient.mMetaImageRefCounter;
                    } catch (Exception e2) {
                        ApsAdapterLog.e(TAG, map.toString());
                        ApsAdapterLog.e(TAG, Arrays.toString(apsResult.mResultString));
                        e2.printStackTrace();
                        throw new RuntimeException(e2);
                    }
                } else {
                    ApsAdapterLog.v(TAG, "postEventFromNative callback result: " + apsResult);
                }
                if (aPSClient.mMetaImageRefCounter != null) {
                    if (apsResult.getMetaImage() != null) {
                        aPSClient.mMetaImageRefCounter.setMetaImageRef(apsResult.getMetaImage(), apsResult.mPipelineName, false);
                    }
                    if (apsResult.mIsLastVideoFrame != 0) {
                        aPSClient.mMetaImageRefCounter.checkToRemoveVideoImageRefOnLastFrame();
                    }
                }
            }
        }
        if (2 == apsResult.mMessageType) {
            long jCurrentTimeMillis = System.currentTimeMillis();
            if (jCurrentTimeMillis - sLogInterval > 3000) {
                sLogInterval = jCurrentTimeMillis;
                dumpApsCallbackInfos(apsResult);
            }
        } else {
            dumpApsCallbackInfos(apsResult);
        }
        if (2 == apsResult.mMessageType) {
            long j = apsResult.mIdentity;
            ApsAdapterLog.traceBegin("postEventFromNative, timestamp: " + j, "54pv_postEventFromNative", j);
            aPSClient.mBufferCallback.onPreviewCallback(apsResult);
            ApsAdapterLog.traceEnd("postEventFromNative, timestamp: " + j, "54pv_postEventFromNative");
            return;
        }
        if (aPSClient.mEventHandler != null) {
            aPSClient.mEventHandler.sendMessage(aPSClient.mEventHandler.obtainMessage(apsResult.mMessageType, apsResult));
        }
    }

    private static void dumpApsCallbackInfos(ApsResult apsResult) {
        ApsAdapterLog.d(TAG, "dumpApsCallbackInfos, result: " + apsResult.toString());
    }

    private class EventHandler extends Handler {
        public EventHandler(Looper looper) {
            super(looper);
        }

        @Override // android.os.Handler
        public void handleMessage(Message message) {
            ApsAdapterLog.d(APSClient.TAG, "handleMessage, type: " + message.what + ", mBufferCallback: " + APSClient.this.mBufferCallback);
            if (APSClient.this.mBufferCallback == null) {
                ApsAdapterLog.e(APSClient.TAG, "handleMessage, mBufferCallback is null");
                return;
            }
            if (message.obj == null) {
                ApsAdapterLog.e(APSClient.TAG, "handleMessage, msg object is null, return");
                return;
            }
            ApsResult apsResult = (ApsResult) message.obj;
            int i = message.what;
            if (i != 1) {
                if (i == APSClient.CAMERA_MSG_SERVER_DIED) {
                    APSClient.this.mBufferCallback.onServiceDied();
                    return;
                } else if (i != 3 && i != 4) {
                    ApsAdapterLog.e(APSClient.TAG, "handleMessage, the message type is error, please check, return");
                    return;
                }
            }
            APSClient.this.mBufferCallback.onCaptureCallback(apsResult);
        }
    }

    public void hypnusSetAction(int i, int i2) {
        ApsAdapterLog.i(TAG, "hypnusSetAction, action: " + i + ", timeout: " + i2);
    }

    public void initHeifCodec(long j) {
        ApsAdapterLog.e(TAG, "initHeifCodec, identity: " + j);
        this.mHeifCodecCallback.initHeifCodec(j);
    }

    public void processHeifCodec(long j, HardwareBuffer hardwareBuffer, ApsExifData apsExifData, int i, int i2) {
        ApsAdapterLog.e(TAG, "processHeifCodec");
        this.mHeifCodecCallback.processHeifCodec(j, hardwareBuffer, apsExifData, i, i2);
    }

    public void uninitHeifCodec(long j) {
        ApsAdapterLog.e(TAG, "uninitHeifCodec");
        this.mHeifCodecCallback.uninitHeifCodec(j);
    }

    public void setHeicProcessInApp(boolean z) {
        this.mHeifCodecCallback.setHeicProcessInApp(z);
    }

    public static class ApsObjectsInfo {
        private Object[] mObjects = null;
        private String[] mObjInfo = null;

        public void addObjInfo(String str, Object obj) {
            Object[] objArr = this.mObjects;
            if (objArr != null) {
                this.mObjects = Arrays.copyOf(objArr, objArr.length + 1);
            } else {
                this.mObjects = new Object[1];
            }
            Object[] objArr2 = this.mObjects;
            objArr2[objArr2.length - 1] = obj;
            String[] strArr = this.mObjInfo;
            if (strArr != null) {
                this.mObjInfo = (String[]) Arrays.copyOf(strArr, strArr.length + 1);
            } else {
                this.mObjInfo = new String[1];
            }
            String[] strArr2 = this.mObjInfo;
            strArr2[strArr2.length - 1] = str;
        }

        public Object[] getObjects() {
            return this.mObjects;
        }

        public String[] getObjInfo() {
            return this.mObjInfo;
        }
    }

    private static int[] StringToInt(String[] strArr) {
        int[] iArr = new int[strArr.length];
        for (int i = 0; i < strArr.length; i++) {
            iArr[i] = Integer.parseInt(strArr[i]);
        }
        return iArr;
    }

    private static long[] StringToLong(String[] strArr) {
        long[] jArr = new long[strArr.length];
        for (int i = 0; i < strArr.length; i++) {
            jArr[i] = Long.parseLong(strArr[i]);
        }
        return jArr;
    }

    public static String[] mergeArrays(String[] strArr, String[] strArr2) {
        if (strArr == null) {
            return strArr2;
        }
        if (strArr2 == null) {
            return strArr;
        }
        String[] strArr3 = new String[strArr.length + strArr2.length];
        System.arraycopy(strArr, 0, strArr3, 0, strArr.length);
        System.arraycopy(strArr2, 0, strArr3, strArr.length, strArr2.length);
        return strArr3;
    }

    public int algoInit(ApsInitParameter apsInitParameter) {
        if (this.mbNewJniVersion) {
            ApsParameters apsParameters = new ApsParameters();
            String[] strArr = apsInitParameter.mParameters;
            apsParameters.set(KEY_APS_MODULE, String.valueOf(apsInitParameter.mApsModule));
            setHeicProcessInApp(apsInitParameter.mbHeicProcessInApp);
            if (apsInitParameter.mInitAlgo != null) {
                apsParameters.set(KEY_CAPTURE_ALGO_LIST, Arrays.toString(apsInitParameter.mInitAlgo).replace('[', ' ').replace(']', ' '));
            }
            ApsObjectsInfo apsObjectsInfo = new ApsObjectsInfo();
            apsObjectsInfo.addObjInfo(KEY_STATICMETA_OBJ, apsInitParameter.mMetadata);
            if (apsInitParameter.mVideoSurface != null) {
                apsObjectsInfo.addObjInfo(KEY_SURFACE_OBJ, apsInitParameter.mVideoSurface);
            }
            AlgoSwitchConfig.PreviewConfig previewConfig = apsInitParameter.mPreviewConfig;
            if (previewConfig != null) {
                apsParameters.set(KEY_PREVIEWCFG_CAMERA_MODE, previewConfig.mCameraMode);
                apsParameters.set(KEY_PREVIEWCFG_CAMERA_ID, Integer.toString(previewConfig.mCameraId));
                apsParameters.set(KEY_PREVIEWCFG_CAMERA_NUM, Integer.toString(previewConfig.mCameraNum));
                apsParameters.set(KEY_PREVIEWCFG_IS_SEPARATE_VIDEO, Integer.toString(previewConfig.mIsSeparateStreamForPrevAndVideo));
                apsParameters.set(KEY_PREVIEWCFG_NUM_COMPONENT, Integer.toString(previewConfig.mComponentMap.size()));
                for (int i = 0; i < previewConfig.mComponentMap.size(); i++) {
                    AlgoSwitchConfig.PreviewConfig.Component componentValueAt = previewConfig.mComponentMap.valueAt(i);
                    apsParameters.set(KEY_PREVIEWCFG_COMP_NAME + i, previewConfig.mComponentMap.keyAt(i));
                    apsParameters.set(KEY_PREVIEWCFG_COMP_ENABLE + i, Boolean.toString(componentValueAt.mbEnable));
                    apsParameters.set(KEY_PREVIEWCFG_COMP_MASTETWIDTH + i, Integer.toString(componentValueAt.mMasterInputWidth));
                    apsParameters.set(KEY_PREVIEWCFG_COMP_MASTETHEIGHT + i, Integer.toString(componentValueAt.mMasterInputHeight));
                    apsParameters.set(KEY_PREVIEWCFG_COMP_SLAVEWIDTH + i, Integer.toString(componentValueAt.mSlaveInputWidth));
                    apsParameters.set(KEY_PREVIEWCFG_COMP_SLAVEHEIGHT + i, Integer.toString(componentValueAt.mSlaveInputHeight));
                    apsParameters.set(KEY_PREVIEWCFG_COMP_THIRDWIDTH + i, Integer.toString(componentValueAt.mThirdInputWidth));
                    apsParameters.set(KEY_PREVIEWCFG_COMP_THIRDHEIGHT + i, Integer.toString(componentValueAt.mThirdInputHeight));
                    apsParameters.set(KEY_PREVIEWCFG_COMP_OUTPUTWIDTH + i, Integer.toString(componentValueAt.mOutputWidth));
                    apsParameters.set(KEY_PREVIEWCFG_COMP_OUTPUTHEIGHT + i, Integer.toString(componentValueAt.mOutputHeight));
                    apsParameters.set(KEY_PREVIEWCFG_COMP_SKIP_CNT + i, Integer.toString(componentValueAt.mFrameSkipCnt));
                    apsParameters.set(KEY_PREVIEWCFG_COMP_PIPELINE_COPYFROM + i, componentValueAt.mPipelineCopyFrom);
                    apsParameters.set(KEY_PREVIEWCFG_COMP_ALGONODE_COPYFROM + i, componentValueAt.mAlgoNodeCopyFrom);
                    apsParameters.set(KEY_PREVIEWCFG_COMP_ALGOLIST + i, Arrays.toString(componentValueAt.mAlgoList).replace('[', ' ').replace(']', ' '));
                }
            }
            String[] strArrMergeArrays = mergeArrays(strArr, apsParameters.getParameters());
            if (apsInitParameter.mApsModule == 2) {
                this.mCaptureApsParameters = apsParameters;
                this.mCaptureInitParams = strArr;
            }
            String[] objInfo = apsObjectsInfo.getObjInfo();
            Object[] objects = apsObjectsInfo.getObjects();
            if (this.mbAPSClientJNICmdVersion) {
                return this.mAPSClientWrapper.algoInit(objInfo, objects, strArrMergeArrays, apsInitParameter.mVendorTags);
            }
            return algoInit(objInfo, objects, strArrMergeArrays, apsInitParameter.mVendorTags);
        }
        return algoInit(apsInitParameter, null);
    }

    public int startCapture(ApsParameters apsParameters) {
        String[] parameters;
        ApsParameters apsParameters2 = this.mCaptureApsParameters;
        if (apsParameters2 != null) {
            apsParameters2.remove(KEY_CAPTURE_ALGO_LIST);
            parameters = this.mCaptureApsParameters.getParameters();
        } else {
            ApsAdapterLog.e(TAG, "mCaptureApsParameters is null");
            parameters = null;
        }
        if (!this.mbAPSClientJNICmdVersion) {
            apsParameters.set(KEY_PROCESS_TYPE, Integer.toString(14));
        }
        String[] strArrMergeArrays = mergeArrays(mergeArrays(this.mCaptureInitParams, parameters), apsParameters.getParameters());
        ApsAdapterLog.i(TAG, "startCapture, mergeParams: " + Arrays.toString(strArrMergeArrays));
        if (this.mbAPSClientJNICmdVersion) {
            return this.mAPSClientWrapper.startCapture(strArrMergeArrays);
        }
        return setParameters(null, null, strArrMergeArrays);
    }

    public int beforeCapture(ApsParameters apsParameters) {
        if (this.mbAPSClientJNICmdVersion) {
            return this.mAPSClientWrapper.beforeCapture(apsParameters);
        }
        apsParameters.set(KEY_PROCESS_TYPE, Integer.toString(11));
        return setParameters(null, null, apsParameters.getParameters());
    }

    public int addFrameBuff(ApsCaptureParam apsCaptureParam, String[] strArr, String[] strArr2, ApsWatermarkParam apsWatermarkParam) {
        int iAddFrameBuff;
        String[] cropSize;
        if (this.mbNewJniVersion) {
            ApsParameters apsParameters = new ApsParameters();
            ApsObjectsInfo apsObjectsInfo = new ApsObjectsInfo();
            apsObjectsInfo.addObjInfo(KEY_IMAGE_BUFFER_OBJ, apsCaptureParam.getImageBuffer());
            apsParameters.set(ApsParameters.KEY_FRAME_NUMBER.getName(), String.valueOf(apsCaptureParam.getFrameNumber()));
            apsParameters.set(ApsParameters.KEY_PROCESS_IMAGE_IDENTITY, String.valueOf(apsCaptureParam.getImageBuffer().getTimestamp()));
            apsParameters.set(KEY_IS_REPROCESS_FRAME, String.valueOf(apsCaptureParam.getIsReprocessFrame()));
            apsParameters.set(ApsParameters.KEY_IMAGE_ROLE.getName(), String.valueOf(apsCaptureParam.getRole()));
            apsParameters.set(ApsParameters.KEY_MAX_HOLD_IMAGES.getName(), String.valueOf(apsCaptureParam.getMaxHoldImages()));
            apsParameters.set(ApsParameters.KEY_PREFER_ADD_FRAME_TYPE.getName(), String.valueOf(apsCaptureParam.getPreferType()));
            apsParameters.set(ApsParameters.KEY_VIDEO_SNAPSHOT.getName(), String.valueOf(apsCaptureParam.getIsVideoSnapshot()));
            apsParameters.set(ApsParameters.KEY_RAW_SYNC_PROCESS_FLAG.getName(), String.valueOf(apsCaptureParam.isRawSyncProcess()));
            apsParameters.set(ApsParameters.KEY_SPECIFIC_APS_PROCESS_ALGO.getName(), String.valueOf(apsCaptureParam.getSpecificAlgo()));
            apsParameters.set(ApsParameters.KEY_10BITS_ENABLE.getName(), apsCaptureParam.get10BitsEnable());
            apsParameters.set(ApsParameters.KEY_INPUT_EVLIST.getName(), apsCaptureParam.getCaptureEvList());
            apsParameters.set(ApsParameters.KEY_TIME_STAMP.getName(), String.valueOf(apsCaptureParam.getImageBuffer().getTimestamp()));
            if (strArr2 != null) {
                apsParameters.set(KEY_CAPTURE_ALGO_LIST, Arrays.toString(strArr2).replace('[', ' ').replace(']', ' '));
            }
            int[] inputSize = apsCaptureParam.getInputSize();
            if (inputSize != null && inputSize.length > 0 && !apsCaptureParam.getIsMbMixedFormatRawFrame()) {
                apsParameters.set(KEY_INPUT_WIDTH, String.valueOf(inputSize[0]));
                apsParameters.set(KEY_INPUT_HEIGHT, String.valueOf(inputSize[1]));
                apsParameters.set(KEY_INPUT_STRIDE, String.valueOf(inputSize[2]));
                apsParameters.set(KEY_INPUT_SCANLINE, String.valueOf(inputSize[3]));
            } else {
                ApsAdapterLog.v(TAG, "addFrameBuff, inputSize: " + Arrays.toString(inputSize) + ", mbMixedFormatRawFrame: " + apsCaptureParam.getIsMbMixedFormatRawFrame());
            }
            if (apsCaptureParam.isRawSyncProcess() && (cropSize = apsCaptureParam.getCropSize()) != null && cropSize.length > 0) {
                apsParameters.set(ApsParameters.KEY_CROP_WIDTH.getName(), cropSize[0]);
                apsParameters.set(ApsParameters.KEY_CROP_HEIGHT.getName(), cropSize[1]);
            }
            CameraMetadata logicMeta = apsCaptureParam.getLogicMeta();
            CameraMetadata physicMeta = apsCaptureParam.getPhysicMeta();
            HardwareBuffer hardwareBuffer = apsCaptureParam.getImageBuffer().getHardwareBuffer();
            ImageReader imageReader = apsCaptureParam.getImageBuffer().getImageReader();
            Image image = apsCaptureParam.getImageBuffer().getImage();
            if (imageReader != null) {
                apsParameters.set(KEY_HAS_IMAGEREADER, String.valueOf(true));
            }
            if (image != null) {
                apsObjectsInfo.addObjInfo(KEY_IMAGE_OBJ, image);
            }
            if (hardwareBuffer != null) {
                apsObjectsInfo.addObjInfo(KEY_HARDWAREBUFFER_OBJ, hardwareBuffer);
            }
            if (apsCaptureParam.getMetaBuffer() != null) {
                apsObjectsInfo.addObjInfo(KEY_META_HWBUFFER_OBJ, apsCaptureParam.getMetaBuffer().getHardwareBuffer());
            }
            if (logicMeta != null && (4 != apsCaptureParam.getRole() || 6 != apsCaptureParam.getRole())) {
                apsObjectsInfo.addObjInfo(KEY_LOGICAMETA_OBJ, logicMeta);
            }
            if (physicMeta != null && (4 != apsCaptureParam.getRole() || 6 != apsCaptureParam.getRole())) {
                apsObjectsInfo.addObjInfo(KEY_PHYSICALMETA_OBJ, physicMeta);
            }
            if (apsWatermarkParam != null) {
                apsParameters.set(KEY_WATERMARK_REF_WIDTH, String.valueOf(apsWatermarkParam.getRefWidth()));
                apsParameters.set(KEY_WATERMARK_WIDTH, String.valueOf(apsWatermarkParam.getWatermarkWidth()));
                apsParameters.set(KEY_WATERMARK_HEIGHT, String.valueOf(apsWatermarkParam.getWatermarkHeight()));
                ApsAdapterLog.v(TAG, "addFrameBuff, watermark: " + apsWatermarkParam.toString());
            }
            String[] objInfo = apsObjectsInfo.getObjInfo();
            Object[] objects = apsObjectsInfo.getObjects();
            String[] strArrMergeArrays = mergeArrays(strArr, apsParameters.getParameters());
            ApsAdapterLog.e(TAG, "addFrameBuff, objInfo: " + Arrays.toString(objInfo) + ", objects: " + Arrays.toString(objects) + ", newParameters: " + Arrays.toString(strArrMergeArrays));
            if (this.mbAPSClientJNICmdVersion) {
                iAddFrameBuff = this.mAPSClientWrapper.addFrameBuff(objInfo, objects, strArrMergeArrays);
            } else {
                iAddFrameBuff = addFrameBuff(objInfo, objects, strArrMergeArrays);
            }
            if (apsCaptureParam.getMetaBuffer() == null) {
                return iAddFrameBuff;
            }
            apsCaptureParam.getMetaBuffer().getHardwareBuffer().close();
            this.mMetaImageRefCounter.setMetaImageRef(apsCaptureParam.getMetaBuffer().getImage(), null, false);
            return iAddFrameBuff;
        }
        return addFrameBuff(apsCaptureParam, null);
    }

    public int processImages(String[] strArr, String[] strArr2, ApsWatermarkParam apsWatermarkParam) {
        Bitmap bitmap;
        int iProcessImages;
        byte[] watermarkBuffer = null;
        if (this.mbNewJniVersion) {
            ApsParameters apsParameters = new ApsParameters();
            ApsAdapterLog.e(TAG, "CameraUnitTest, processImages");
            ApsAdapterLog.traceBegin("CameraUnit.processImages");
            if (apsWatermarkParam != null) {
                apsParameters.set(KEY_WATERMARK_REF_WIDTH, String.valueOf(apsWatermarkParam.getRefWidth()));
                apsParameters.set(KEY_WATERMARK_WIDTH, String.valueOf(apsWatermarkParam.getWatermarkWidth()));
                apsParameters.set(KEY_WATERMARK_HEIGHT, String.valueOf(apsWatermarkParam.getWatermarkHeight()));
                watermarkBuffer = apsWatermarkParam.getWatermarkBuffer();
                bitmap = apsWatermarkParam.getBitmap();
                ApsAdapterLog.v(TAG, "processImages, watermark: " + apsWatermarkParam.toString());
            } else {
                bitmap = null;
            }
            ApsAdapterLog.traceEnd("CameraUnit.processImages");
            if (strArr2 != null) {
                apsParameters.set(KEY_CAPTURE_ALGO_LIST, Arrays.toString(strArr2).replace('[', ' ').replace(']', ' '));
            }
            ApsObjectsInfo apsObjectsInfo = new ApsObjectsInfo();
            if (watermarkBuffer != null) {
                apsObjectsInfo.addObjInfo(KEY_WATERMARK_OBJ, watermarkBuffer);
            }
            if (bitmap != null) {
                apsObjectsInfo.addObjInfo(KEY_WATERMARK_BITMAP_OBJ, bitmap);
            }
            String[] objInfo = apsObjectsInfo.getObjInfo();
            Object[] objects = apsObjectsInfo.getObjects();
            String[] strArrMergeArrays = mergeArrays(apsParameters.getParameters(), strArr);
            ApsAdapterLog.v(TAG, "processImages, objInfo: " + Arrays.toString(objInfo) + ", objects: " + Arrays.toString(objects) + ", processParameters: " + Arrays.toString(strArrMergeArrays));
            this.mProcessImageConditionVariable.close();
            if (this.mbAPSClientJNICmdVersion) {
                iProcessImages = this.mAPSClientWrapper.processImages(objInfo, objects, strArrMergeArrays, watermarkBuffer);
            } else {
                iProcessImages = processImages(objInfo, objects, strArrMergeArrays, watermarkBuffer);
            }
            this.mProcessImageConditionVariable.open();
            return iProcessImages;
        }
        return processImages(strArr, strArr2, apsWatermarkParam, (Object) null);
    }

    public Bitmap processBitmap(Bitmap bitmap, CameraMetadata cameraMetadata, ApsParameters apsParameters) {
        if (this.mbAPSClientJNICmdVersion) {
            this.mAPSClientWrapper.processBitmap(bitmap, cameraMetadata, apsParameters);
        } else {
            apsParameters.set(KEY_PROCESS_TYPE, Integer.toString(12));
            setParameters(new String[]{KEY_BITMAP_OBJ, KEY_LOGICAMETA_OBJ}, new Object[]{bitmap, cameraMetadata}, apsParameters.getParameters());
        }
        return bitmap;
    }

    public ApsAdapterDecision.DecisionResult previewDecision(ApsPreviewDecisionParam apsPreviewDecisionParam) {
        String[] strArrPreviewDecision;
        if (this.mbNewJniVersion) {
            ApsParameters apsParameters = new ApsParameters();
            apsParameters.set(KEY_MULTI_CAMERA_MODE, String.valueOf(apsPreviewDecisionParam.getMultiCameraMode()));
            apsParameters.set(KEY_CAMERA_ID, String.valueOf(apsPreviewDecisionParam.getCameraId()));
            apsParameters.set(ApsParameters.KEY_LOGIC_CAMERA_ID.getName(), String.valueOf(apsPreviewDecisionParam.getLogicalCameraId()));
            apsParameters.set(KEY_PI_ENABLE, String.valueOf(apsPreviewDecisionParam.getPiEnable()));
            apsParameters.set(KEY_ALGO_VISUALIZATION_ENABLE, String.valueOf(apsPreviewDecisionParam.getAlgoVisualizationEnable()));
            apsParameters.set(KEY_TRIPOD_ENABLE, String.valueOf(apsPreviewDecisionParam.getTripodEnable()));
            apsParameters.set(KEY_ZOOM_RATIO, String.valueOf(apsPreviewDecisionParam.getZoomRatio()));
            apsParameters.set(KEY_ULTRA_HIGHRES_ENABLE, String.valueOf(apsPreviewDecisionParam.getUltraHighResolutionEnable()));
            apsParameters.set(KEY_SCP_ENABLE, String.valueOf(apsPreviewDecisionParam.getSCPEnable()));
            apsParameters.set(KEY_FILTER_ENABLE, String.valueOf(apsPreviewDecisionParam.getFilterEnable()));
            apsParameters.set(KEY_FACE_BEAUTY_ENABLE, String.valueOf(apsPreviewDecisionParam.getFaceBeautyEnable()));
            apsParameters.set(KEY_SUPER_RAW_ENABLE, String.valueOf(apsPreviewDecisionParam.getSuperRawEnable()));
            apsParameters.set(KEY_NEON_ENABLE, String.valueOf(apsPreviewDecisionParam.getNeonEnable()));
            apsParameters.set(KEY_STREAMER_ENABLE, String.valueOf(apsPreviewDecisionParam.getStreamerEnable()));
            apsParameters.set(ApsParameters.KEY_CAPTURE_MODE.getName(), apsPreviewDecisionParam.getCaptureMode());
            apsParameters.set(KEY_RECORDING_CAPTURE, String.valueOf(apsPreviewDecisionParam.getRecordingCaptureState()));
            apsParameters.set(ApsParameters.KEY_AVAI_MEMORY, String.valueOf(apsPreviewDecisionParam.getAvailMem()));
            if (apsPreviewDecisionParam.getAlgoHashMap() != null && !apsPreviewDecisionParam.getAlgoHashMap().isEmpty()) {
                apsParameters.setAll(apsPreviewDecisionParam.getAlgoHashMap());
            }
            String[] parameters = apsParameters.getParameters();
            ApsAdapterLog.v(TAG, "previewdecision, processParameters: " + Arrays.toString(parameters));
            if (this.mbAPSClientJNICmdVersion) {
                strArrPreviewDecision = this.mAPSClientWrapper.previewDecision(parameters, apsPreviewDecisionParam.getMetadata());
            } else {
                strArrPreviewDecision = previewDecision(apsPreviewDecisionParam, parameters, apsPreviewDecisionParam.getMetadata());
            }
            ApsAdapterLog.v(TAG, "previewdecision, result: " + Arrays.toString(strArrPreviewDecision));
            if (strArrPreviewDecision == null) {
                return null;
            }
            HashMap map = new HashMap(strArrPreviewDecision.length / 2);
            for (int i = 0; i < strArrPreviewDecision.length - 1; i += 2) {
                map.put(strArrPreviewDecision[i], strArrPreviewDecision[i + 1]);
            }
            ApsAdapterDecision.DecisionResult decisionResult = new ApsAdapterDecision.DecisionResult();
            decisionResult.mCameraId = Integer.parseInt((String) map.get(KEY_DECISION_CAMERAID));
            decisionResult.mCaptureMode = (String) map.get(KEY_DECISION_CAPTURE_MODE);
            decisionResult.mRequestFormat = Integer.parseInt((String) map.get(KEY_DECISION_REQUEST_FORMAT));
            decisionResult.mMultiFrameCount = Integer.parseInt((String) map.get(KEY_DECISION_MULTI_FRAME_CNT));
            decisionResult.mThumbnailIndex = Integer.parseInt((String) map.get(KEY_DECISION_THUMBNAIL_INDEX));
            decisionResult.mMetaIndex = Integer.parseInt((String) map.get(KEY_DECISION_META_INDEX));
            decisionResult.mSuperNightScene = Integer.parseInt((String) map.get(KEY_DECISION_SUPERNIGHT_SCENE));
            decisionResult.mTurboRawScene = Integer.parseInt((String) map.get(KEY_DECISION_TURBORAW_SCENE));
            decisionResult.mNightTotalExpTime = Integer.parseInt((String) map.get(KEY_DECISION_NIGHT_TOTAL_EXP));
            decisionResult.mOfflineNightExpTime = Integer.parseInt((String) map.get(KEY_DECISION_OFFLINE_NIGHT_EXP_TIME));
            decisionResult.mOfflineNightShutterWaitTime = Integer.parseInt((String) map.get(KEY_DECISION_OFFLINE_NIGHT_SHUTTER_WAIT_TIME));
            decisionResult.mApsDecisionSceneMode = Integer.parseInt((String) map.get(KEY_DECISION_SCENE_MODE));
            decisionResult.mApsDecisionFeatureType = Integer.parseInt((String) map.get(KEY_DECISION_FEATURE_TYPE));
            decisionResult.mApsAlgoFlag = ((String) map.get(KEY_DECISION_ALGO_LIST)).split(",");
            decisionResult.mCaptureEVList = StringToInt(((String) map.get(KEY_DECISION_EV_LIST)).split(","));
            decisionResult.mCaptureETList = StringToLong(((String) map.get(KEY_DECISION_ET_LIST)).split(","));
            decisionResult.mSensorMask = StringToInt(((String) map.get(KEY_DECISION_SENSORMASK)).split(","));
            decisionResult.mMasterPipeline = Integer.parseInt((String) map.get(KEY_DECISION_MASTER_PIPELINE));
            decisionResult.mFrameId = Integer.parseInt((String) map.get(KEY_RESULT_FRAME_ID));
            decisionResult.mApsBracketMode = Integer.parseInt((String) map.get(KEY_DECISION_BRACKET_MODE));
            decisionResult.mMFSRFrameCount = Integer.parseInt((String) map.get(KEY_DECISION_MFSR_FRAME_CNT));
            decisionResult.mSequenceId = Integer.parseInt((String) map.get(KEY_DECISION_SEQUENCE_ID));
            decisionResult.mPreCollectFrameCount = Integer.parseInt((String) map.get(KEY_DECISION_PRECOLLECT_FRAME_CNT));
            decisionResult.mSpecificProcessAlgo = Integer.parseInt((String) map.get(KEY_DECISION_SPECIFIC_PROCESS_ALGO));
            decisionResult.mSupportCaptureZoomFeature = Integer.parseInt((String) map.get(KEY_DECISION_ZOOM_FEATURE));
            decisionResult.mDrawTextBracketMode = (String) map.get(KEY_DRAWTEXT_BRACKET_MODE);
            decisionResult.mDrawTextSceneMode = (String) map.get(KEY_DRAWTEXT_SCENE_MODE);
            decisionResult.mDrawTextFeatureType = (String) map.get(KEY_DRAWTEXT_FEATURE_TYPE);
            decisionResult.mDrawTextHdrType = (String) map.get(KEY_DRAWTEXT_HDR_TYPE);
            decisionResult.mPreviewASD = (String) map.get(KEY_PREVIEW_ASD);
            decisionResult.mPreViewAntiBanding = (String) map.get(KEY_PREVIEW_ANTIBANDING);
            decisionResult.mPreviewRectify = (String) map.get(KEY_PREVIEW_RECTIFY);
            decisionResult.mPreviewPF = (String) map.get(KEY_PREVIEW_PF);
            decisionResult.mPreviewLSD = (String) map.get(KEY_PREVIEW_LSD);
            decisionResult.mPreviewRTB = (String) map.get(KEY_PREVIEW_RTB);
            decisionResult.mPreviewAiColor = (String) map.get(KEY_PREVIEW_AICOLOR);
            decisionResult.mPreviewVideoHyperLapse = (String) map.get(KEY_PREVIEW_VIDEO_HYPERLAPSE);
            decisionResult.mAlgoVisualizationKey = (String) map.get(KEY_ALGO_VISUALIZATION_KEY);
            decisionResult.mAlgoVisualizationValue = (String) map.get(KEY_ALGO_VISUALIZATION_VALUE);
            String str = (String) map.get(KEY_DECISION_BURST_CAPTURE_ALGO_LIST);
            if (str != null) {
                decisionResult.mApsBurstCaptureAlgoList = str.split(",");
            }
            if (map.get(KEY_DECISION_ASD_MOVING_OBJECT) != null) {
                decisionResult.mAsdMovingObject = Integer.parseInt((String) map.get(KEY_DECISION_ASD_MOVING_OBJECT));
            }
            if (map.get(KEY_DECISION_CAPTURE_INTENT) != null) {
                decisionResult.mCaptureIntent = Integer.parseInt((String) map.get(KEY_DECISION_CAPTURE_INTENT));
            }
            if (map.get(KEY_DECISION_SHOW_HDR_ICON) != null) {
                decisionResult.mApsDecisionShowHdrIcon = Integer.parseInt((String) map.get(KEY_DECISION_SHOW_HDR_ICON));
            }
            if (map.get(KEY_DECISION_CAPTURE_INTERVAL) != null) {
                decisionResult.mApsDecisionCaptureInterval = Integer.parseInt((String) map.get(KEY_DECISION_CAPTURE_INTERVAL));
            }
            if (map.get(KEY_DECISION_CAPTURE_SURFACE) != null) {
                decisionResult.mCaptureSurface = Integer.parseInt((String) map.get(KEY_DECISION_CAPTURE_SURFACE));
            }
            if (map.get(KEY_DECISION_QUICK_JPEG) != null) {
                decisionResult.mSupportQuickJpeg = Integer.parseInt((String) map.get(KEY_DECISION_QUICK_JPEG));
            }
            if (map.get(KEY_DECISION_PORTRAIT_HDR_TYPE) != null) {
                decisionResult.mPortraitHdrType = (String) map.get(KEY_DECISION_PORTRAIT_HDR_TYPE);
            }
            if (map.get(KEY_DECISION_ASD_MSG_SCENE_VALUE) != null) {
                decisionResult.mAsdSceneValue = Integer.parseInt((String) map.get(KEY_DECISION_ASD_MSG_SCENE_VALUE));
            }
            if (map.get(KEY_DECISION_AISHUTTER_ENABLE) != null) {
                decisionResult.mbAIShutter = Boolean.parseBoolean((String) map.get(KEY_DECISION_AISHUTTER_ENABLE));
            }
            if (map.get(KEY_DECISION_REQUEST_MIXED_FORMAT) != null) {
                decisionResult.mbRequestMixedFormat = Boolean.parseBoolean((String) map.get(KEY_DECISION_REQUEST_MIXED_FORMAT));
            }
            if (map.get(KEY_DECISION_HDR_BRIGHTEN_INDEX) != null) {
                decisionResult.mHdrBrightenIndex = Integer.parseInt((String) map.get(KEY_DECISION_HDR_BRIGHTEN_INDEX));
            }
            if (map.get(KEY_DECISION_CAPTURE_NO_NEED_MATCH_META) != null) {
                decisionResult.mCaptureNoNeedMatchMeta = Integer.parseInt((String) map.get(KEY_DECISION_CAPTURE_NO_NEED_MATCH_META));
            }
            ApsAdapterLog.v(TAG, "previewdecision, cameraID: " + decisionResult.mCameraId + ", mMultiFrameCount: " + decisionResult.mMultiFrameCount + ", algoList: " + Arrays.toString(decisionResult.mApsAlgoFlag) + ", et list: " + Arrays.toString(decisionResult.mCaptureETList) + ", capture intent: " + decisionResult.mCaptureIntent);
            return decisionResult;
        }
        return previewDecision(apsPreviewDecisionParam, null);
    }

    public int unint(int i, String[] strArr, String[] strArr2) {
        if (this.mbNewJniVersion) {
            ApsParameters apsParameters = new ApsParameters();
            apsParameters.set(KEY_PROCESS_TYPE, Integer.toString(3));
            if (strArr2 != null) {
                apsParameters.set(KEY_CAPTURE_ALGO_LIST, Arrays.toString(strArr2).replace('[', ' ').replace(']', ' '));
            }
            apsParameters.set(KEY_APS_MODULE, String.valueOf(i));
            String[] parameters = apsParameters.getParameters();
            if (strArr != null) {
                parameters = mergeArrays(parameters, strArr);
            }
            if (2 == i) {
                ApsAdapterLog.d(TAG, "unint, before block module capture");
                this.mProcessImageConditionVariable.block();
                ApsAdapterLog.d(TAG, "unint, after block module capture");
            }
            if (this.mbAPSClientJNICmdVersion) {
                return this.mAPSClientWrapper.unint(null, null, parameters);
            }
            return unint((String[]) null, (Object[]) null, parameters);
        }
        return unint(i, strArr, strArr2, null);
    }

    public int stop(int i) {
        if (this.mbNewJniVersion) {
            if (this.mbAPSClientJNICmdVersion) {
                return this.mAPSClientWrapper.stop(i);
            }
            ApsParameters apsParameters = new ApsParameters();
            apsParameters.set(KEY_PROCESS_TYPE, Integer.toString(8));
            return setParameters(null, null, apsParameters.getParameters());
        }
        return stop(i, null);
    }

    public int clear() {
        ApsAdapterLog.i(TAG, "clear");
        if (this.mbNewJniVersion) {
            if (this.mbAPSClientJNICmdVersion) {
                return this.mAPSClientWrapper.clear();
            }
            ApsParameters apsParameters = new ApsParameters();
            apsParameters.set(KEY_PROCESS_TYPE, String.valueOf(6));
            return setParameters(null, null, apsParameters.getParameters());
        }
        return clear(null);
    }

    public int releaseBuffer(String str, HardwareBuffer hardwareBuffer) {
        if (this.mbNewJniVersion) {
            if (!hardwareBuffer.isClosed()) {
                if (this.mbAPSClientJNICmdVersion) {
                    return this.mAPSClientWrapper.releaseBuffer(str, hardwareBuffer);
                }
                ApsParameters apsParameters = new ApsParameters();
                apsParameters.set(KEY_PROCESS_TYPE, String.valueOf(7));
                apsParameters.set(KEY_PIPELINE_NAME, str);
                String[] parameters = apsParameters.getParameters();
                ApsObjectsInfo apsObjectsInfo = new ApsObjectsInfo();
                apsObjectsInfo.addObjInfo(KEY_HARDWAREBUFFER_OBJ, hardwareBuffer);
                return setParameters(apsObjectsInfo.getObjInfo(), apsObjectsInfo.getObjects(), parameters);
            }
            ApsAdapterLog.v(TAG, "releaseBuffer, buffer already released");
            return 0;
        }
        return releaseBuffer(str, hardwareBuffer, null);
    }

    public APSRuntimeInfo getRuntimeInfo() {
        APSRuntimeInfo aPSRuntimeInfo = null;
        if (this.mbNewJniVersion) {
            if (this.mbAPSClientJNICmdVersion) {
                return this.mAPSClientWrapper.getRuntimeInfo();
            }
            ApsParameters apsParameters = new ApsParameters();
            apsParameters.set(KEY_PROCESS_TYPE, String.valueOf(1));
            String[] parameters = apsParameters.getParameters();
            ApsAdapterLog.v(TAG, "getRuntimeInfo, params: " + Arrays.toString(parameters));
            String[] parameters2 = getParameters(null, null, parameters);
            ApsAdapterLog.v(TAG, "getRuntimeInfo, result: " + Arrays.toString(parameters2));
            if (parameters2 != null) {
                HashMap map = new HashMap(parameters2.length / 2);
                for (int i = 0; i < parameters2.length - 1; i += 2) {
                    map.put(parameters2[i], parameters2[i + 1]);
                }
                aPSRuntimeInfo = new APSRuntimeInfo();
                aPSRuntimeInfo.mInputMemSize = Integer.parseInt((String) map.get(KEY_RUNTIME_MEMSIZE));
                aPSRuntimeInfo.mSingleAlgoMaxRunMem = Integer.parseInt((String) map.get(KEY_RUNTIME_SINGLEALGO_MAXMEM));
                aPSRuntimeInfo.mTotalTimeEstimate = Integer.parseInt((String) map.get(KEY_RUNTIME_TOTAL_TIME));
                aPSRuntimeInfo.mProcessCntPending = Integer.parseInt((String) map.get(KEY_RUNTIME_CNT_PENDING));
                ApsAdapterLog.v(TAG, "getRuntimeInfo, result mInputMemSize: " + aPSRuntimeInfo.mInputMemSize + ", mSingleAlgoMaxRunMem: " + aPSRuntimeInfo.mSingleAlgoMaxRunMem + ", mTotalTimeEstimate: " + aPSRuntimeInfo.mTotalTimeEstimate + ", mProcessCntPending: " + aPSRuntimeInfo.mProcessCntPending);
            }
            return aPSRuntimeInfo;
        }
        return getRuntimeInfo(null);
    }

    public int setEnableAPSPipeline(String str, boolean z) {
        if (this.mbNewJniVersion) {
            if (this.mbAPSClientJNICmdVersion) {
                return this.mAPSClientWrapper.setEnableAPSPipeline(str, z);
            }
            ApsParameters apsParameters = new ApsParameters();
            apsParameters.set(KEY_PROCESS_TYPE, Integer.toString(9));
            apsParameters.set(KEY_PIPELINE_NAME, str);
            apsParameters.set(KEY_PIPELINE_ENABLE, Boolean.toString(z));
            String[] parameters = apsParameters.getParameters();
            ApsAdapterLog.v(TAG, "setEnableAPSPipeline, param: " + Arrays.toString(parameters));
            return setParameters(null, null, parameters);
        }
        return setEnableAPSPipeline(str, z, null);
    }

    public int setEnableAPSAlgoNode(String str, boolean z) {
        if (this.mbNewJniVersion) {
            if (this.mbAPSClientJNICmdVersion) {
                return this.mAPSClientWrapper.setEnableAPSAlgoNode(str, z);
            }
            ApsParameters apsParameters = new ApsParameters();
            apsParameters.set(KEY_PROCESS_TYPE, Integer.toString(10));
            apsParameters.set(KEY_ALGONODE_NAME, str);
            apsParameters.set(KEY_ALGONODE_ENABLE, Boolean.toString(z));
            String[] parameters = apsParameters.getParameters();
            ApsAdapterLog.v(TAG, "setEnableAPSAlgoNode, param: " + Arrays.toString(parameters));
            return setParameters(null, null, parameters);
        }
        return setEnableAPSAlgoNode(str, z, null);
    }

    public void updateThumbnailMap(ApsResult apsResult) {
        this.mEventHandler.sendMessage(this.mEventHandler.obtainMessage(4, apsResult));
    }

    public int addPreviewFrameBuffToAPS(ApsPreviewParam apsPreviewParam, ApsWatermarkParam apsWatermarkParam) {
        int iAddPreviewFrameBuff;
        boolean zInitMetaMap = this.mMetaImageRefCounter.initMetaMap(apsPreviewParam);
        if (this.mbAPSClientJNICmdVersion) {
            iAddPreviewFrameBuff = this.mAPSClientWrapper.addPreviewFrameBuff(apsPreviewParam, apsWatermarkParam);
        } else {
            iAddPreviewFrameBuff = addPreviewFrameBuff(apsPreviewParam, apsWatermarkParam);
        }
        if (iAddPreviewFrameBuff != 0 && apsPreviewParam.getMetaBuffer() != null) {
            this.mMetaImageRefCounter.onAddImageToApsFail(apsPreviewParam, zInitMetaMap);
        }
        return iAddPreviewFrameBuff;
    }

    public int destroy(int i) {
        if (this.mbAPSClientJNICmdVersion) {
            return this.mAPSClientWrapper.destroy();
        }
        return destroy();
    }

    public Rect[] roiTranslate(Rect[] rectArr, int i) {
        if (this.mbAPSClientJNICmdVersion) {
            return this.mAPSClientWrapper.roiTranslate(rectArr);
        }
        return roiTranslate(rectArr);
    }

    public void setRequestMetadata(ApsCaptureRequestParam apsCaptureRequestParam, int i) {
        if (this.mbAPSClientJNICmdVersion) {
            this.mAPSClientWrapper.setRequestMetadata(apsCaptureRequestParam);
        } else {
            setRequestMetadata(apsCaptureRequestParam);
        }
    }

    public void attachPreviewSurface(int i, Surface surface, int i2, int i3) {
        if (this.mbAPSClientJNICmdVersion) {
            this.mAPSClientWrapper.attachPreviewSurface(i, surface, i2);
        } else {
            attachPreviewSurface(i, surface, i2);
        }
    }

    public void detachPreviewSurface(int i, int i2) {
        if (this.mbAPSClientJNICmdVersion) {
            this.mAPSClientWrapper.detachPreviewSurface(i);
        } else {
            detachPreviewSurface(i);
        }
    }

    protected void setMetaImageRefCounter(Object obj, String str, boolean z) {
        if (obj != null) {
            this.mMetaImageRefCounter.setMetaImageRef(obj, str, z);
        }
    }

    private static int onTransact(Object obj, int i, HashMap<String, Object> map, HashMap<String, Object> map2) {
        return APSClientCallback.onTransact(obj, i, map, map2);
    }
}
