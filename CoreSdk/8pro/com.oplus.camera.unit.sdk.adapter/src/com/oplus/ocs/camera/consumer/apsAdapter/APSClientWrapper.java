package com.oplus.ocs.camera.consumer.apsAdapter;

import android.graphics.Bitmap;
import android.graphics.Rect;
import android.hardware.HardwareBuffer;
import android.hardware.camera2.CameraMetadata;
import android.media.ImageReader;
import android.view.Surface;
import com.oplus.ocs.camera.consumer.apsAdapter.APSClient;
import com.oplus.ocs.camera.consumer.apsAdapter.adapter.ApsCaptureRequestParam;
import com.oplus.ocs.camera.consumer.apsAdapter.adapter.ApsParameters;
import com.oplus.ocs.camera.consumer.apsAdapter.adapter.ApsPreviewParam;
import com.oplus.ocs.camera.consumer.apsAdapter.adapter.ApsResult;
import com.oplus.ocs.camera.consumer.apsAdapter.adapter.ApsWatermarkParam;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.HashMap;
import java.util.List;

/* JADX INFO: loaded from: classes.dex */
interface APSClientWrapper {
    int addFrameBuff(String[] strArr, Object[] objArr, String[] strArr2);

    int addPreviewFrameBuff(ApsPreviewParam apsPreviewParam, ApsWatermarkParam apsWatermarkParam);

    int algoInit(String[] strArr, Object[] objArr, String[] strArr2, String[] strArr3);

    void attachPreviewSurface(int i, Surface surface, int i2);

    int beforeCapture(ApsParameters apsParameters);

    int clear();

    int create(Object obj);

    int destroy();

    void detachPreviewSurface(int i);

    String getAPSVersion();

    APSClient.APSRuntimeInfo getRuntimeInfo();

    String[] previewDecision(String[] strArr, CameraMetadata cameraMetadata);

    Bitmap processBitmap(Bitmap bitmap, CameraMetadata cameraMetadata, ApsParameters apsParameters);

    int processImages(String[] strArr, Object[] objArr, String[] strArr2, byte[] bArr);

    int releaseBuffer(String str, HardwareBuffer hardwareBuffer);

    Rect[] roiTranslate(Rect[] rectArr);

    int setEnableAPSAlgoNode(String str, boolean z);

    int setEnableAPSPipeline(String str, boolean z);

    void setRequestMetadata(ApsCaptureRequestParam apsCaptureRequestParam);

    int startCapture(String[] strArr);

    int stop(int i);

    int unint(String[] strArr, Object[] objArr, String[] strArr2);

    public static abstract class Stub implements APSClientWrapper {

        private static class Proxy extends APSClientKeyBase implements APSClientWrapper {
            private static final int FIRST_CALL_TRANSACTION = 1;
            private static final String KEY_CONSUMER_PTR = "consumer_ptr";
            private static final String KEY_FRAME_NUMBER = "frameNumber";
            private static final String KEY_FUNC_CLEAR = "clear";
            private static final String KEY_FUNC_DESTORY = "destroy";
            private static final String KEY_FUNC_GETRUNTIMEINFO = "getruntimeinfo";
            private static final String KEY_FUNC_RELEASEBUFF = "releasebuff";
            private static final String KEY_FUNC_ROITRANSLATE = "roitranslate";
            private static final String KEY_FUNC_SETREQUESTMETADATA = "setrequestmetadata";
            private static final String KEY_IS_DETACHED = "isDetached";
            private static final String KEY_NEED_METADATA = "needMetadata";
            private static final String KEY_TIME_STAMP = "time_stamp";
            private static final String KEY_WATERMARK_HEIGHT = "watermark_height";
            private static final String KEY_WATERMARK_REF_WIDTH = "watermark_refwidth";
            private static final String KEY_WATERMARK_WIDTH = "watermark_width";
            private static final String TAG = "APSClientWrapper";
            private static final int TRANSACTION_ADD_FRAME_BUFF = 6;
            private static final int TRANSACTION_ADD_PREVIEW_FRAME_BUFF = 9;
            private static final int TRANSACTION_ALGO_INIT = 4;
            private static final int TRANSACTION_ATTACH_PREVIEW_SURFACE = 12;
            private static final int TRANSACTION_BEFORE_CAPTURE = 20;
            private static final int TRANSACTION_CLEAR = 15;
            private static final int TRANSACTION_CREATE = 2;
            private static final int TRANSACTION_DESTROY = 3;
            private static final int TRANSACTION_DETACH_PREVIEW_SURFACE = 13;
            private static final int TRANSACTION_GET_APS_VERSION = 23;
            private static final int TRANSACTION_GET_RUNTIME_INFO = 17;
            private static final int TRANSACTION_PREVIEW_DECISION = 8;
            private static final int TRANSACTION_PROCESS_BITMAP = 21;
            private static final int TRANSACTION_PROCESS_IMAGE = 7;
            private static final int TRANSACTION_RELEASE_BUFFER = 16;
            private static final int TRANSACTION_ROI_TRANSLATE = 10;
            private static final int TRANSACTION_SET_ENABLE_APS_ALGO_NODE = 19;
            private static final int TRANSACTION_SET_ENABLE_APS_PIPELINE = 18;
            private static final int TRANSACTION_SET_REQUEST_METADATA = 11;
            private static final int TRANSACTION_START_CAPTURE = 22;
            private static final int TRANSACTION_STOP = 14;
            private static final int TRANSACTION_UNINT = 5;
            private final List<HashMap<String, Object>> mRecycleList = new ArrayList();
            private final APSClient mRemote;
            private static final String KEY_FUNC_CREATE = "create";
            private static final String KEY_CREATE_USER_ID = buildKey(KEY_FUNC_CREATE, "userId", "_INT_BASIC_");
            private static final String KEY_CREATE_IS_CAMERAUNIT = buildKey(KEY_FUNC_CREATE, "isCameraUnit", "_BOOLEAN_BASIC_");
            private static final String KEY_CREATE_APS_VERSION = buildKey(KEY_FUNC_CREATE, "apsVersion", "_INT_BASIC_");
            private static final String KEY_CREATE_RESULT = buildKey(KEY_FUNC_CREATE, "result", "_INT_BASIC_");
            private static final String KEY_FUNC_ALGOINIT = "algoinit";
            private static final String KYE_ALGO_INIT_PARAMS = buildKey(KEY_FUNC_ALGOINIT, "params", "_STRING_BASIC_ARRAYVALUE_");
            private static final String KEY_ALGO_INIT_VENDOR_TAG_IDS = buildKey(KEY_FUNC_ALGOINIT, "vendorTagIds", "_STRING_BASIC_ARRAYVALUE_");
            private static final String KEY_ALGO_INIT_RESULT = buildKey(KEY_FUNC_ALGOINIT, "result", "_INT_BASIC_");
            private static final String KEY_FUNC_UNINT = "unint";
            private static final String KEY_UNINT_PARAMS = buildKey(KEY_FUNC_UNINT, "params", "_STRING_BASIC_ARRAYVALUE_");
            private static final String KEY_UNINT_RESULT = buildKey(KEY_FUNC_UNINT, "result", "_INT_BASIC_");
            private static final String KEY_FUNC_ADDFRAMEBUFF = "addframebuff";
            private static final String KEY_ADD_FRAME_BUFF_PARAMS = buildKey(KEY_FUNC_ADDFRAMEBUFF, "params", "_STRING_BASIC_ARRAYVALUE_");
            private static final String KEY_ADD_FRAME_BUFF_RESULT = buildKey(KEY_FUNC_ADDFRAMEBUFF, "result", "_INT_BASIC_");
            private static final String KEY_FUNC_PROCESSIMAGES = "processimages";
            private static final String KEY_PROCESS_IMAGES_WATERMARK_BUFFER = buildKey(KEY_FUNC_PROCESSIMAGES, "watermarkbuffer", "_BYTE_BASIC_ARRAY_");
            private static final String KEY_PROCESS_IMAGES_PARAMS = buildKey(KEY_FUNC_PROCESSIMAGES, "params", "_STRING_BASIC_ARRAYVALUE_");
            private static final String KEY_FUNC_PREVIEWDECISION = "previewdecision";
            private static final String KEY_PREVIEW_DECISION_PARAMS = buildKey(KEY_FUNC_PREVIEWDECISION, "params", "_STRING_BASIC_ARRAYVALUE_");
            private static final String KEY_PREVIEW_DECISION_CAMERA_METADATA = buildKey(KEY_FUNC_PREVIEWDECISION, "cameraMetadata", "_CAMERAMETADATA_OBJECT_");
            private static final String KEY_PREVIEW_DECISION_RESULT = buildKey(KEY_FUNC_PREVIEWDECISION, "result", "_STRING_BASIC_ARRAYVALUE_");
            private static final String KEY_FUNC_ADDPREVIEWFRAMEBUFF = "addpreviewframebuff";
            private static final String KEY_PREVIEW_FRAME_IMAGE_BUFFER_ARRAY = buildKey(KEY_FUNC_ADDPREVIEWFRAMEBUFF, "imageBufferArray", "_IMAGEBUFFER_OBJECT_ARRAY_");
            private static final String KEY_PREVIEW_FRAME_META_BUFFER = buildKey(KEY_FUNC_ADDPREVIEWFRAMEBUFF, "metaBufferObj", "_IMAGEBUFFER_OBJECT_");
            private static final String KEY_PREVIEW_FRAME_META_IMAGE = buildKey(KEY_FUNC_ADDPREVIEWFRAMEBUFF, "metaImage", "_IMAGE_OBJECT_");
            private static final String KEY_PREVIEW_FRAME_META_HARDWAREBUFFER = buildKey(KEY_FUNC_ADDPREVIEWFRAMEBUFF, "metaBuffer", "_HARDWAREBUFFER_OBJECT_");
            private static final String KEY_PREVIEW_FRAME_META_OBJ = buildKey(KEY_FUNC_ADDPREVIEWFRAMEBUFF, "metaObj", "_CAPTURERESULT_OBJECT_");
            private static final String KEY_PREVIEW_FRAME_ROLES = buildKey(KEY_FUNC_ADDPREVIEWFRAMEBUFF, "roleVector", "_INT_BASIC_ARRAY_");
            private static final String KEY_PREVIEW_FRAME_META_MAP = buildKey(KEY_FUNC_ADDPREVIEWFRAMEBUFF, "metaMap", "_CAMERAMETADATA_OBJECT_ARRAYMAP_");
            private static final String KEY_PREVIEW_FRAME_WATERMARK_BUFFER = buildKey(KEY_FUNC_ADDPREVIEWFRAMEBUFF, "watermarkbuffer", "_BYTE_BASIC_ARRAY_");
            private static final String KEY_PREVIEW_FRAME_PARAMS_ARRAY = buildKey(KEY_FUNC_ADDPREVIEWFRAMEBUFF, "params", "_STRING_BASIC_ARRAYVALUE_");
            private static final String KEY_PREVIEW_FRAME_RESULT = buildKey(KEY_FUNC_ADDPREVIEWFRAMEBUFF, "result", "_INT_BASIC_");
            private static final String KEY_FUNC_ATTACHPREVIEWSURFACE = "attachpreviewsurface";
            private static final String KEY_ATTACH_PREVIEW_SURFACE_CAMERA_LOGIC_ID = buildKey(KEY_FUNC_ATTACHPREVIEWSURFACE, "targetCameraLogicId", "_INT_BASIC_");
            private static final String KEY_ATTACH_PREVIEW_SURFACE_SURFACE = buildKey(KEY_FUNC_ATTACHPREVIEWSURFACE, "previewSurface", "_SURFACE_OBJECT_");
            private static final String KEY_ATTACH_PREVIEW_SURFACE_SURFACE_HASH = buildKey(KEY_FUNC_ATTACHPREVIEWSURFACE, "previewSurfaceHash", "_INT_BASIC_");
            private static final String KEY_FUNC_DETACHPREVIEWSURFACE = "detachpreviewsurface";
            private static final String KEY_DETACH_PREVIEW_SURFACE_CAMERA_LOGIN_ID = buildKey(KEY_FUNC_DETACHPREVIEWSURFACE, "targetCameraLogicId", "_INT_BASIC_");
            private static final String KEY_FUNC_STOP = "stop";
            private static final String KEY_STOP_RESULT = buildKey(KEY_FUNC_STOP, "result", "_INT_BASIC_");
            private static final String KEY_GET_RUNTIME_INFO_MEM_SIZE = buildKey("", "runtimeinfo_mInputMemSize", "_INT_BASIC_");
            private static final String KEY_GET_RUNTIME_INFO_SINGLEALGO_MAXMEM = buildKey("", "runtimeinfo_mSingleAlgoMaxRunMem", "_INT_BASIC_");
            private static final String KEY_GET_RUNTIME_INFO_TOTAL_TIME = buildKey("", "runtimeinfo_mTotalTimeEstimate", "_INT_BASIC_");
            private static final String KEY_GET_RUNTIME_INFO_CNT_PENDING = buildKey("", "runtimeinfo_mProcessCntPending", "_INT_BASIC_");
            private static final String KEY_FUNC_SETENABLEAPSPIPELINE = "setenableapspipeline";
            private static final String KEY_SET_ENABLE_APS_PIPELINE_PARAM = buildKey(KEY_FUNC_SETENABLEAPSPIPELINE, "params", "_STRING_BASIC_ARRAYVALUE_");
            private static final String KEY_SET_ENABLE_APS_PIPELINE_RESULT = buildKey(KEY_FUNC_SETENABLEAPSPIPELINE, "result", "_INT_BASIC_");
            private static final String KEY_FUNC_SETENABLEAPSALGONODE = "setenableapsalgonode";
            private static final String KEY_SET_ENABLE_APS_ALGO_NODE_PARAM = buildKey(KEY_FUNC_SETENABLEAPSALGONODE, "params", "_STRING_BASIC_ARRAYVALUE_");
            private static final String KEY_SET_ENABLE_APS_ALGO_NODE_RESULT = buildKey(KEY_FUNC_SETENABLEAPSALGONODE, "result", "_INT_BASIC_");
            private static final String KEY_FUNC_BEFORECAPTURE = "beforecapture";
            private static final String KEY_BEFORE_CAPTURE_PARAM = buildKey(KEY_FUNC_BEFORECAPTURE, "params", "_STRING_BASIC_ARRAYVALUE_");
            private static final String KEY_BEFORE_CAPTURE_RESULT = buildKey(KEY_FUNC_BEFORECAPTURE, "result", "_INT_BASIC_");
            private static final String KEY_FUNC_PROCESSBITMAP = "processbitmap";
            private static final String KEY_PROCESS_BITMAP_PARAM = buildKey(KEY_FUNC_PROCESSBITMAP, "params", "_STRING_BASIC_ARRAYVALUE_");
            private static final String KEY_PROCESS_BITMAP_CAMERA_METADATA = buildKey(KEY_FUNC_PROCESSBITMAP, "logicmetaobj", "_CAMERAMETADATA_OBJECT_");
            private static final String KEY_PROCESS_BITMAP_BITMAP = buildKey(KEY_FUNC_PROCESSBITMAP, "bitmapobj", "_BITMAP_OBJECT_");
            private static final String KEY_FUNC_STARTCAPTURE = "startcapture";
            private static final String KEY_START_CAPTURE_PARAMS = buildKey(KEY_FUNC_STARTCAPTURE, "params", "_STRING_BASIC_ARRAYVALUE_");
            private static final String KEY_START_CAPTURE_RESULT = buildKey(KEY_FUNC_STARTCAPTURE, "result", "_INT_BASIC_");
            private static final String KEY_FUNC_GETAPSVERSION = "getapsversion";
            private static final String KEY_GET_VERSION_RESULT = buildKey(KEY_FUNC_GETAPSVERSION, "result", "_STRING_BASIC_");

            Proxy(APSClient aPSClient) {
                this.mRemote = aPSClient;
            }

            @Override // com.oplus.ocs.camera.consumer.apsAdapter.APSClientWrapper
            public int create(Object obj) {
                this.mRemote.createClient(obj);
                HashMap<String, Object> mapObtainMap = obtainMap();
                HashMap<String, Object> mapObtainMap2 = obtainMap();
                mapObtainMap.put(KEY_CREATE_USER_ID, Integer.valueOf(getCurrentUserId()));
                mapObtainMap.put(KEY_CREATE_IS_CAMERAUNIT, true);
                mapObtainMap.put(KEY_CREATE_APS_VERSION, Integer.valueOf(this.mRemote.getAlgoSwitchVersion()));
                if (this.mRemote.transact(2, mapObtainMap, mapObtainMap2) == -1) {
                    ApsAdapterLog.e(TAG, "APS has not implement this code: 2");
                }
                Object obj2 = mapObtainMap2.get(KEY_CREATE_RESULT);
                recycleMap(mapObtainMap);
                recycleMap(mapObtainMap2);
                if (!(obj2 instanceof Integer)) {
                    return -1;
                }
                ApsAdapterLog.d(TAG, "create, result: " + obj2);
                return ((Integer) obj2).intValue();
            }

            @Override // com.oplus.ocs.camera.consumer.apsAdapter.APSClientWrapper
            public int destroy() {
                HashMap<String, Object> mapObtainMap = obtainMap();
                HashMap<String, Object> mapObtainMap2 = obtainMap();
                if (this.mRemote.transact(3, mapObtainMap, mapObtainMap2) == -1) {
                    ApsAdapterLog.e(TAG, "APS has not implement this code: 3");
                }
                recycleMap(mapObtainMap);
                recycleMap(mapObtainMap2);
                this.mRemote.destroyClient();
                return 0;
            }

            @Override // com.oplus.ocs.camera.consumer.apsAdapter.APSClientWrapper
            public int algoInit(String[] strArr, Object[] objArr, String[] strArr2, String[] strArr3) {
                if (strArr2 == null || strArr3 == null) {
                    ApsAdapterLog.e(TAG, "algoInit, params or vendorTagIds is null! params: " + Arrays.toString(strArr2) + ", vendorTagIds: " + Arrays.toString(strArr3));
                    return -1;
                }
                HashMap<String, Object> mapObtainMap = obtainMap();
                HashMap<String, Object> mapObtainMap2 = obtainMap();
                int i = 0;
                if (strArr != null && objArr != null && strArr.length == objArr.length) {
                    int length = strArr.length;
                    while (i < length) {
                        mapObtainMap.put(buildKey(KEY_FUNC_ALGOINIT, strArr[i], getKeySuffix(objArr[i])), objArr[i]);
                        i++;
                    }
                    i = length;
                }
                mapObtainMap.put(KYE_ALGO_INIT_PARAMS, strArr2);
                mapObtainMap.put(KEY_ALGO_INIT_VENDOR_TAG_IDS, strArr3);
                ApsAdapterLog.i(TAG, "algoInit, paramsSize: " + strArr2.length + ", objectSize: " + i + ", vendorTagIdsSize: " + strArr3.length);
                if (this.mRemote.transact(4, mapObtainMap, mapObtainMap2) == -1) {
                    ApsAdapterLog.e(TAG, "APS has not implement this code: 4");
                }
                Object obj = mapObtainMap2.get(KEY_ALGO_INIT_RESULT);
                recycleMap(mapObtainMap);
                recycleMap(mapObtainMap2);
                if (!(obj instanceof Integer)) {
                    return -1;
                }
                ApsAdapterLog.d(TAG, "algoInit, result: " + obj);
                return ((Integer) obj).intValue();
            }

            @Override // com.oplus.ocs.camera.consumer.apsAdapter.APSClientWrapper
            public int unint(String[] strArr, Object[] objArr, String[] strArr2) {
                HashMap<String, Object> mapObtainMap = obtainMap();
                HashMap<String, Object> mapObtainMap2 = obtainMap();
                int i = 0;
                if (strArr != null && objArr != null && strArr.length == objArr.length) {
                    int length = strArr.length;
                    while (i < length) {
                        mapObtainMap.put(buildKey(KEY_FUNC_UNINT, strArr[i], getKeySuffix(objArr[i])), objArr[i]);
                        i++;
                    }
                    i = length;
                }
                mapObtainMap.put(KEY_UNINT_PARAMS, strArr2);
                ApsAdapterLog.i(TAG, "unint, paramsSize: " + strArr2.length + ", objectSize: " + i);
                if (this.mRemote.transact(5, mapObtainMap, mapObtainMap2) == -1) {
                    ApsAdapterLog.e(TAG, "APS has not implement this code: 5");
                }
                Object obj = mapObtainMap2.get(KEY_UNINT_RESULT);
                recycleMap(mapObtainMap);
                recycleMap(mapObtainMap2);
                if (!(obj instanceof Integer)) {
                    return -1;
                }
                ApsAdapterLog.d(TAG, "unint, result: " + obj);
                return ((Integer) obj).intValue();
            }

            @Override // com.oplus.ocs.camera.consumer.apsAdapter.APSClientWrapper
            public int addFrameBuff(String[] strArr, Object[] objArr, String[] strArr2) {
                ImageReader imageReader;
                if (strArr == null || objArr == null || strArr.length > objArr.length) {
                    ApsAdapterLog.e(TAG, "addFrameBuff, object input is invalid, objectsInfo: " + Arrays.toString(strArr) + ", objects: " + Arrays.toString(objArr));
                    return -1;
                }
                if (strArr2 == null) {
                    ApsAdapterLog.e(TAG, "addFrameBuff, params is null!");
                    return -1;
                }
                HashMap<String, Object> mapObtainMap = obtainMap();
                HashMap<String, Object> mapObtainMap2 = obtainMap();
                int length = strArr.length;
                ApsParameters apsParameters = new ApsParameters();
                for (int i = 0; i < length; i++) {
                    if (strArr[i].equals("imagebufferobj") && (imageReader = ((ApsResult.ImageBuffer) objArr[i]).getImageReader()) != null) {
                        apsParameters.set("imagereader_hash", String.valueOf(imageReader.hashCode()));
                    }
                    mapObtainMap.put(buildKey(KEY_FUNC_ADDFRAMEBUFF, strArr[i], getKeySuffix(objArr[i])), objArr[i]);
                }
                mapObtainMap.put(KEY_ADD_FRAME_BUFF_PARAMS, APSClient.mergeArrays(strArr2, apsParameters.getParameters()));
                ApsAdapterLog.i(TAG, "addFrameBuff, paramsSize: " + strArr2.length + ", objectSize: " + length);
                if (this.mRemote.transact(6, mapObtainMap, mapObtainMap2) == -1) {
                    ApsAdapterLog.e(TAG, "APS has not implement this code: 6");
                }
                Object obj = mapObtainMap2.get(KEY_ADD_FRAME_BUFF_RESULT);
                recycleMap(mapObtainMap);
                recycleMap(mapObtainMap2);
                if (!(obj instanceof Integer)) {
                    return -1;
                }
                ApsAdapterLog.d(TAG, "addFrameBuff, result: " + obj);
                return ((Integer) obj).intValue();
            }

            @Override // com.oplus.ocs.camera.consumer.apsAdapter.APSClientWrapper
            public int processImages(String[] strArr, Object[] objArr, String[] strArr2, byte[] bArr) {
                int length;
                if (strArr2 == null) {
                    ApsAdapterLog.e(TAG, "processImages, params is null!");
                    return -1;
                }
                HashMap<String, Object> mapObtainMap = obtainMap();
                HashMap<String, Object> mapObtainMap2 = obtainMap();
                if (strArr == null || objArr == null || strArr.length != objArr.length) {
                    length = 0;
                } else {
                    length = strArr.length;
                    for (int i = 0; i < length; i++) {
                        mapObtainMap.put(buildKey(KEY_FUNC_PROCESSIMAGES, strArr[i], getKeySuffix(objArr[i])), objArr[i]);
                    }
                }
                if (bArr != null) {
                    mapObtainMap.put(KEY_PROCESS_IMAGES_WATERMARK_BUFFER, bArr);
                }
                mapObtainMap.put(KEY_PROCESS_IMAGES_PARAMS, strArr2);
                ApsAdapterLog.i(TAG, "processImages, paramsSize: " + strArr2.length + ", objectSize: " + length);
                if (this.mRemote.transact(7, mapObtainMap, mapObtainMap2) == -1) {
                    ApsAdapterLog.e(TAG, "APS has not implement this code: 7");
                }
                recycleMap(mapObtainMap);
                recycleMap(mapObtainMap2);
                return 0;
            }

            @Override // com.oplus.ocs.camera.consumer.apsAdapter.APSClientWrapper
            public String[] previewDecision(String[] strArr, CameraMetadata cameraMetadata) {
                HashMap<String, Object> mapObtainMap = obtainMap();
                HashMap<String, Object> mapObtainMap2 = obtainMap();
                mapObtainMap.put(KEY_PREVIEW_DECISION_PARAMS, strArr);
                mapObtainMap.put(KEY_PREVIEW_DECISION_CAMERA_METADATA, cameraMetadata);
                ApsAdapterLog.i(TAG, "previewDecision, paramsSize: " + strArr.length + ", metadata: " + cameraMetadata);
                int iTransact = this.mRemote.transact(8, mapObtainMap, mapObtainMap2);
                if (iTransact == -1) {
                    ApsAdapterLog.e(TAG, "APS has not implement this code: 8");
                }
                Object obj = mapObtainMap2.get(KEY_PREVIEW_DECISION_RESULT);
                String[] strArr2 = obj != null ? (String[]) obj : null;
                StringBuilder sb = new StringBuilder();
                sb.append("previewDecision, ret: ");
                sb.append(iTransact);
                sb.append(", resultSize: ");
                sb.append(strArr2 != null ? strArr2.length : 0);
                ApsAdapterLog.i(TAG, sb.toString());
                recycleMap(mapObtainMap);
                recycleMap(mapObtainMap2);
                return strArr2;
            }

            /* JADX WARN: Type inference fix 'apply assigned field type' failed
            java.lang.UnsupportedOperationException: ArgType.getObject(), call class: class jadx.core.dex.instructions.args.ArgType$UnknownArg
            	at jadx.core.dex.instructions.args.ArgType.getObject(ArgType.java:593)
            	at jadx.core.dex.attributes.nodes.ClassTypeVarsAttr.getTypeVarsMapFor(ClassTypeVarsAttr.java:35)
            	at jadx.core.dex.nodes.utils.TypeUtils.replaceClassGenerics(TypeUtils.java:177)
            	at jadx.core.dex.visitors.typeinference.FixTypesVisitor.insertExplicitUseCast(FixTypesVisitor.java:397)
            	at jadx.core.dex.visitors.typeinference.FixTypesVisitor.tryFieldTypeWithNewCasts(FixTypesVisitor.java:359)
            	at jadx.core.dex.visitors.typeinference.FixTypesVisitor.applyFieldType(FixTypesVisitor.java:309)
            	at jadx.core.dex.visitors.typeinference.FixTypesVisitor.visit(FixTypesVisitor.java:94)
             */
            @Override // com.oplus.ocs.camera.consumer.apsAdapter.APSClientWrapper
            public int addPreviewFrameBuff(ApsPreviewParam apsPreviewParam, ApsWatermarkParam apsWatermarkParam) {
                if (apsPreviewParam == null) {
                    ApsAdapterLog.e(TAG, "addPreviewFrameBuff, apsPreviewParam is null!");
                    return -1;
                }
                HashMap<String, Object> mapObtainMap = obtainMap();
                HashMap<String, Object> mapObtainMap2 = obtainMap();
                ApsParameters apsParameters = new ApsParameters();
                apsParameters.set(KEY_FRAME_NUMBER, String.valueOf(apsPreviewParam.getFrameIdx()));
                apsParameters.set(KEY_TIME_STAMP, String.valueOf(apsPreviewParam.getTimeStamp()));
                apsParameters.set(KEY_NEED_METADATA, String.valueOf(apsPreviewParam.getNeedMetadata()));
                apsParameters.set(KEY_IS_DETACHED, String.valueOf(apsPreviewParam.getIsDetached()));
                apsParameters.set(KEY_CONSUMER_PTR, String.valueOf(apsPreviewParam.getConsumerPtr()));
                String[] processParamters = apsPreviewParam.getProcessParamters();
                processApsPreviewParam(apsPreviewParam, mapObtainMap);
                if (apsWatermarkParam != null) {
                    apsParameters.set(KEY_WATERMARK_REF_WIDTH, String.valueOf(apsWatermarkParam.getRefWidth()));
                    apsParameters.set(KEY_WATERMARK_WIDTH, String.valueOf(apsWatermarkParam.getWatermarkWidth()));
                    apsParameters.set(KEY_WATERMARK_HEIGHT, String.valueOf(apsWatermarkParam.getWatermarkHeight()));
                    if (apsWatermarkParam.getWatermarkBuffer() != null) {
                        mapObtainMap.put(KEY_PREVIEW_FRAME_WATERMARK_BUFFER, apsWatermarkParam.getWatermarkBuffer());
                    }
                }
                String[] strArrMergeArrays = APSClient.mergeArrays(processParamters, apsParameters.getParameters());
                mapObtainMap.put(KEY_PREVIEW_FRAME_PARAMS_ARRAY, strArrMergeArrays);
                if (ApsAdapterLog.isLogOn()) {
                    ApsAdapterLog.i(TAG, "addPreviewFrameBuff, paramsSize: " + strArrMergeArrays.length + ", MetaBuffer: " + apsPreviewParam.getMetaBuffer() + ", apsWatermarkParam: " + apsWatermarkParam + ", ImageBuff: " + Arrays.toString(apsPreviewParam.getImageBufferArray()));
                }
                if (this.mRemote.transact(9, mapObtainMap, mapObtainMap2) == -1) {
                    ApsAdapterLog.e(TAG, "APS has not implement this code: 9");
                }
                Object obj = mapObtainMap2.get(KEY_PREVIEW_FRAME_RESULT);
                recycleMap(mapObtainMap);
                recycleMap(mapObtainMap2);
                if (!(obj instanceof Integer)) {
                    return -1;
                }
                ApsAdapterLog.d(TAG, "addPreviewFrameBuff, result: " + obj);
                return ((Integer) obj).intValue();
            }

            @Override // com.oplus.ocs.camera.consumer.apsAdapter.APSClientWrapper
            public Rect[] roiTranslate(Rect[] rectArr) {
                if (rectArr == null) {
                    return new Rect[0];
                }
                int length = rectArr.length;
                Rect[] rectArr2 = new Rect[length];
                long jCurrentTimeMillis = System.currentTimeMillis();
                for (int i = 0; i < length; i++) {
                    int i2 = (length - 1) - i;
                    rectArr2[i].left = rectArr[i2].left;
                    rectArr2[i].top = rectArr[i2].top;
                    rectArr2[i].right = rectArr[i2].right;
                    rectArr2[i].bottom = rectArr[i2].bottom;
                }
                ApsAdapterLog.i(TAG, "roiTranslate, length: " + length + ", time: " + (System.currentTimeMillis() - jCurrentTimeMillis));
                return rectArr2;
            }

            @Override // com.oplus.ocs.camera.consumer.apsAdapter.APSClientWrapper
            public void setRequestMetadata(ApsCaptureRequestParam apsCaptureRequestParam) {
                HashMap<String, Object> mapObtainMap = obtainMap();
                HashMap<String, Object> mapObtainMap2 = obtainMap();
                if (this.mRemote.transact(11, mapObtainMap, mapObtainMap2) == -1) {
                    ApsAdapterLog.e(TAG, "APS has not implement this code: 11");
                }
                recycleMap(mapObtainMap);
                recycleMap(mapObtainMap2);
            }

            @Override // com.oplus.ocs.camera.consumer.apsAdapter.APSClientWrapper
            public void attachPreviewSurface(int i, Surface surface, int i2) {
                HashMap<String, Object> mapObtainMap = obtainMap();
                HashMap<String, Object> mapObtainMap2 = obtainMap();
                mapObtainMap.put(KEY_ATTACH_PREVIEW_SURFACE_CAMERA_LOGIC_ID, Integer.valueOf(i));
                mapObtainMap.put(KEY_ATTACH_PREVIEW_SURFACE_SURFACE, surface);
                mapObtainMap.put(KEY_ATTACH_PREVIEW_SURFACE_SURFACE_HASH, Integer.valueOf(i2));
                if (this.mRemote.transact(12, mapObtainMap, mapObtainMap2) == -1) {
                    ApsAdapterLog.e(TAG, "APS has not implement this code: 12");
                }
                recycleMap(mapObtainMap);
                recycleMap(mapObtainMap2);
            }

            @Override // com.oplus.ocs.camera.consumer.apsAdapter.APSClientWrapper
            public void detachPreviewSurface(int i) {
                HashMap<String, Object> mapObtainMap = obtainMap();
                HashMap<String, Object> mapObtainMap2 = obtainMap();
                mapObtainMap.put(KEY_DETACH_PREVIEW_SURFACE_CAMERA_LOGIN_ID, Integer.valueOf(i));
                if (this.mRemote.transact(13, mapObtainMap, mapObtainMap2) == -1) {
                    ApsAdapterLog.e(TAG, "APS has not implement this code: 13");
                }
                recycleMap(mapObtainMap);
                recycleMap(mapObtainMap2);
            }

            @Override // com.oplus.ocs.camera.consumer.apsAdapter.APSClientWrapper
            public int stop(int i) {
                HashMap<String, Object> mapObtainMap = obtainMap();
                HashMap<String, Object> mapObtainMap2 = obtainMap();
                if (this.mRemote.transact(14, mapObtainMap, mapObtainMap2) == -1) {
                    ApsAdapterLog.e(TAG, "APS has not implement this code: 14");
                }
                Object obj = mapObtainMap2.get(KEY_STOP_RESULT);
                recycleMap(mapObtainMap);
                recycleMap(mapObtainMap2);
                if (!(obj instanceof Integer)) {
                    return -1;
                }
                ApsAdapterLog.d(TAG, "stop, result: " + obj);
                return ((Integer) obj).intValue();
            }

            @Override // com.oplus.ocs.camera.consumer.apsAdapter.APSClientWrapper
            public int clear() {
                HashMap<String, Object> mapObtainMap = obtainMap();
                HashMap<String, Object> mapObtainMap2 = obtainMap();
                if (this.mRemote.transact(15, mapObtainMap, mapObtainMap2) == -1) {
                    ApsAdapterLog.e(TAG, "APS has not implement this code: 15");
                }
                recycleMap(mapObtainMap);
                recycleMap(mapObtainMap2);
                return 0;
            }

            @Override // com.oplus.ocs.camera.consumer.apsAdapter.APSClientWrapper
            public int releaseBuffer(String str, HardwareBuffer hardwareBuffer) {
                HashMap<String, Object> mapObtainMap = obtainMap();
                HashMap<String, Object> mapObtainMap2 = obtainMap();
                mapObtainMap.put("pipeline_name_STRING_BASIC_", str);
                mapObtainMap.put("hardwarebufferobj" + getKeySuffix(hardwareBuffer), hardwareBuffer);
                if (this.mRemote.transact(16, mapObtainMap, mapObtainMap2) == -1) {
                    ApsAdapterLog.e(TAG, "APS has not implement this code: 16");
                }
                Object obj = mapObtainMap2.get(buildKey(KEY_FUNC_RELEASEBUFF, "result", "_INT_BASIC_"));
                recycleMap(mapObtainMap);
                recycleMap(mapObtainMap2);
                if (!(obj instanceof Integer)) {
                    return -1;
                }
                ApsAdapterLog.d(TAG, "releaseBuffer, result: " + obj);
                return ((Integer) obj).intValue();
            }

            @Override // com.oplus.ocs.camera.consumer.apsAdapter.APSClientWrapper
            public APSClient.APSRuntimeInfo getRuntimeInfo() {
                HashMap<String, Object> mapObtainMap = obtainMap();
                HashMap<String, Object> mapObtainMap2 = obtainMap();
                if (this.mRemote.transact(17, mapObtainMap, mapObtainMap2) == -1) {
                    ApsAdapterLog.e(TAG, "APS has not implement this code: 17");
                }
                APSClient.APSRuntimeInfo aPSRuntimeInfo = new APSClient.APSRuntimeInfo();
                Object obj = mapObtainMap2.get(KEY_GET_RUNTIME_INFO_MEM_SIZE);
                if (obj != null) {
                    aPSRuntimeInfo.mInputMemSize = Integer.parseInt(String.valueOf(obj));
                }
                Object obj2 = mapObtainMap2.get(KEY_GET_RUNTIME_INFO_SINGLEALGO_MAXMEM);
                if (obj2 != null) {
                    aPSRuntimeInfo.mSingleAlgoMaxRunMem = Integer.parseInt(String.valueOf(obj2));
                }
                Object obj3 = mapObtainMap2.get(KEY_GET_RUNTIME_INFO_TOTAL_TIME);
                if (obj3 != null) {
                    aPSRuntimeInfo.mTotalTimeEstimate = Integer.parseInt(String.valueOf(obj3));
                }
                Object obj4 = mapObtainMap2.get(KEY_GET_RUNTIME_INFO_CNT_PENDING);
                if (obj4 != null) {
                    aPSRuntimeInfo.mProcessCntPending = Integer.parseInt(String.valueOf(obj4));
                }
                if (ApsAdapterLog.isLogOn()) {
                    ApsAdapterLog.i(TAG, "mInputMemSize: " + aPSRuntimeInfo.mInputMemSize + " mSingleAlgoMaxRunMem: " + aPSRuntimeInfo.mSingleAlgoMaxRunMem + " mTotalTimeEstimate: " + aPSRuntimeInfo.mTotalTimeEstimate + " mProcessCntPending: " + aPSRuntimeInfo.mProcessCntPending);
                }
                recycleMap(mapObtainMap);
                recycleMap(mapObtainMap2);
                return aPSRuntimeInfo;
            }

            @Override // com.oplus.ocs.camera.consumer.apsAdapter.APSClientWrapper
            public int setEnableAPSPipeline(String str, boolean z) {
                HashMap<String, Object> mapObtainMap = obtainMap();
                HashMap<String, Object> mapObtainMap2 = obtainMap();
                ApsParameters apsParameters = new ApsParameters();
                apsParameters.set("pipeline_name", str);
                apsParameters.set("pipeline_enable", Boolean.toString(z));
                mapObtainMap.put(KEY_SET_ENABLE_APS_PIPELINE_PARAM, apsParameters.getParameters());
                if (this.mRemote.transact(18, mapObtainMap, mapObtainMap2) == -1) {
                    ApsAdapterLog.e(TAG, "APS has not implement this code: 18");
                }
                Object obj = mapObtainMap2.get(KEY_SET_ENABLE_APS_PIPELINE_RESULT);
                recycleMap(mapObtainMap);
                recycleMap(mapObtainMap2);
                if (!(obj instanceof Integer)) {
                    return -1;
                }
                ApsAdapterLog.d(TAG, "setEnableAPSPipeline, result: " + obj);
                return ((Integer) obj).intValue();
            }

            @Override // com.oplus.ocs.camera.consumer.apsAdapter.APSClientWrapper
            public int setEnableAPSAlgoNode(String str, boolean z) {
                HashMap<String, Object> mapObtainMap = obtainMap();
                HashMap<String, Object> mapObtainMap2 = obtainMap();
                ApsParameters apsParameters = new ApsParameters();
                apsParameters.set("algonode_name", str);
                apsParameters.set("algonode_enable", Boolean.toString(z));
                mapObtainMap.put(KEY_SET_ENABLE_APS_ALGO_NODE_PARAM, apsParameters.getParameters());
                if (this.mRemote.transact(TRANSACTION_SET_ENABLE_APS_ALGO_NODE, mapObtainMap, mapObtainMap2) == -1) {
                    ApsAdapterLog.e(TAG, "APS has not implement this code: 19");
                }
                Object obj = mapObtainMap2.get(KEY_SET_ENABLE_APS_ALGO_NODE_RESULT);
                recycleMap(mapObtainMap);
                recycleMap(mapObtainMap2);
                if (!(obj instanceof Integer)) {
                    return -1;
                }
                ApsAdapterLog.d(TAG, "setEnableAPSAlgoNode, result: " + obj);
                return ((Integer) obj).intValue();
            }

            @Override // com.oplus.ocs.camera.consumer.apsAdapter.APSClientWrapper
            public int beforeCapture(ApsParameters apsParameters) {
                HashMap<String, Object> mapObtainMap = obtainMap();
                HashMap<String, Object> mapObtainMap2 = obtainMap();
                mapObtainMap.put(KEY_BEFORE_CAPTURE_PARAM, apsParameters.getParameters());
                ApsAdapterLog.i(TAG, "beforeCapture, paramsSize: " + apsParameters.getParameters().length);
                if (this.mRemote.transact(20, mapObtainMap, mapObtainMap2) == -1) {
                    ApsAdapterLog.e(TAG, "APS has not implement this code: 20");
                }
                Object obj = mapObtainMap2.get(KEY_BEFORE_CAPTURE_RESULT);
                recycleMap(mapObtainMap);
                recycleMap(mapObtainMap2);
                if (!(obj instanceof Integer)) {
                    return -1;
                }
                ApsAdapterLog.d(TAG, "beforecapture, result: " + obj);
                return ((Integer) obj).intValue();
            }

            @Override // com.oplus.ocs.camera.consumer.apsAdapter.APSClientWrapper
            public Bitmap processBitmap(Bitmap bitmap, CameraMetadata cameraMetadata, ApsParameters apsParameters) {
                HashMap<String, Object> mapObtainMap = obtainMap();
                HashMap<String, Object> mapObtainMap2 = obtainMap();
                mapObtainMap.put(KEY_PROCESS_BITMAP_PARAM, apsParameters.getParameters());
                mapObtainMap.put(KEY_PROCESS_BITMAP_CAMERA_METADATA, cameraMetadata);
                mapObtainMap.put(KEY_PROCESS_BITMAP_BITMAP, bitmap);
                ApsAdapterLog.i(TAG, "processBitmap, paramsSize: " + apsParameters.getParameters().length + ", metadata: " + cameraMetadata + ", bitmap: " + bitmap);
                int iTransact = this.mRemote.transact(TRANSACTION_PROCESS_BITMAP, mapObtainMap, mapObtainMap2);
                if (iTransact == -1) {
                    ApsAdapterLog.e(TAG, "APS has not implement this code: 21");
                }
                ApsAdapterLog.v(TAG, "processBitmap, ret: " + iTransact);
                recycleMap(mapObtainMap);
                recycleMap(mapObtainMap2);
                return bitmap;
            }

            @Override // com.oplus.ocs.camera.consumer.apsAdapter.APSClientWrapper
            public int startCapture(String[] strArr) {
                HashMap<String, Object> mapObtainMap = obtainMap();
                HashMap<String, Object> mapObtainMap2 = obtainMap();
                mapObtainMap.put(KEY_START_CAPTURE_PARAMS, strArr);
                ApsAdapterLog.i(TAG, "startCapture, paramsSize: " + strArr.length);
                if (this.mRemote.transact(TRANSACTION_START_CAPTURE, mapObtainMap, mapObtainMap2) == -1) {
                    ApsAdapterLog.e(TAG, "APS has not implement this code: 22");
                }
                Object obj = mapObtainMap2.get(KEY_START_CAPTURE_RESULT);
                recycleMap(mapObtainMap);
                recycleMap(mapObtainMap2);
                if (!(obj instanceof Integer)) {
                    return -1;
                }
                ApsAdapterLog.d(TAG, "startcapture, result: " + obj);
                return ((Integer) obj).intValue();
            }

            @Override // com.oplus.ocs.camera.consumer.apsAdapter.APSClientWrapper
            public String getAPSVersion() {
                HashMap<String, Object> mapObtainMap = obtainMap();
                HashMap<String, Object> mapObtainMap2 = obtainMap();
                if (this.mRemote.transact(23, mapObtainMap, mapObtainMap2) == -1) {
                    ApsAdapterLog.e(TAG, "APS has not implement this code: 23");
                }
                String str = (String) mapObtainMap2.get(KEY_GET_VERSION_RESULT);
                recycleMap(mapObtainMap);
                recycleMap(mapObtainMap2);
                return str;
            }

            private void processApsPreviewParam(ApsPreviewParam apsPreviewParam, HashMap<String, Object> map) {
                ApsResult.ImageBuffer[] imageBufferArray = apsPreviewParam.getImageBufferArray();
                if (imageBufferArray != null) {
                    map.put(KEY_PREVIEW_FRAME_IMAGE_BUFFER_ARRAY, imageBufferArray);
                    for (int i = 0; i < imageBufferArray.length; i++) {
                        map.put(buildKey(KEY_FUNC_ADDPREVIEWFRAMEBUFF, "imageBufferArray", String.valueOf(i), "_IMAGEBUFFER_OBJECT_"), imageBufferArray[i]);
                        if (imageBufferArray[i].getHardwareBuffer() != null && imageBufferArray[i].getImage() != null) {
                            map.put(buildKey(KEY_FUNC_ADDPREVIEWFRAMEBUFF, "imageBufferArray", String.valueOf(i), "_HARDWAREBUFFER_OBJECT_"), imageBufferArray[i].getHardwareBuffer());
                            map.put(buildKey(KEY_FUNC_ADDPREVIEWFRAMEBUFF, "imageBufferArray", String.valueOf(i), "_IMAGE_OBJECT_"), imageBufferArray[i].getImage());
                        }
                    }
                }
                if (apsPreviewParam.getMetaBuffer() != null) {
                    map.put(KEY_PREVIEW_FRAME_META_BUFFER, apsPreviewParam.getMetaBuffer());
                    if (apsPreviewParam.getMetaBuffer().getImage() != null) {
                        map.put(KEY_PREVIEW_FRAME_META_IMAGE, apsPreviewParam.getMetaBuffer().getImage());
                    }
                    if (apsPreviewParam.getMetaBuffer().getHardwareBuffer() != null) {
                        map.put(KEY_PREVIEW_FRAME_META_HARDWAREBUFFER, apsPreviewParam.getMetaBuffer().getHardwareBuffer());
                    }
                }
                if (apsPreviewParam.getMetaObj() != null) {
                    map.put(KEY_PREVIEW_FRAME_META_OBJ, apsPreviewParam.getMetaObj());
                }
                if (apsPreviewParam.getRole() != null) {
                    map.put(KEY_PREVIEW_FRAME_ROLES, apsPreviewParam.getRole());
                }
                if (apsPreviewParam.getMetadataPtr() != null) {
                    map.put(KEY_PREVIEW_FRAME_META_MAP, apsPreviewParam.getMetadataPtr());
                }
            }

            private synchronized HashMap<String, Object> obtainMap() {
                if (this.mRecycleList.size() > 0) {
                    return this.mRecycleList.remove(0);
                }
                return new HashMap<>();
            }

            private synchronized void recycleMap(HashMap<String, Object> map) {
                if (map != null) {
                    map.clear();
                    this.mRecycleList.add(map);
                }
            }
        }

        public static APSClientWrapper asInterface(APSClient aPSClient) {
            if (aPSClient == null) {
                return null;
            }
            return new Proxy(aPSClient);
        }
    }
}
