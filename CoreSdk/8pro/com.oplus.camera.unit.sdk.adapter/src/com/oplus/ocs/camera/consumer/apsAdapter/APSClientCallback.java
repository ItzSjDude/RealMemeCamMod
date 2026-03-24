package com.oplus.ocs.camera.consumer.apsAdapter;

import android.hardware.HardwareBuffer;
import android.hardware.camera2.TotalCaptureResult;
import android.media.Image;
import androidx.annotation.NonNull;
import com.oplus.ocs.camera.common.parameter.apsadapter.ApsHelper;
import com.oplus.ocs.camera.consumer.apsAdapter.adapter.ApsExifData;
import com.oplus.ocs.camera.consumer.apsAdapter.adapter.ApsExtendData;
import com.oplus.ocs.camera.consumer.apsAdapter.adapter.ApsResult;
import java.lang.ref.WeakReference;
import java.util.Map;
/* loaded from: classes.dex */
class APSClientCallback extends APSClientKeyBase {
    private static final int FIRST_CALL_TRANSACTION = 1;
    private static final String TAG = "APSClientCallback";
    private static final int TRANSACTION_BUF_MANIPULATE = 7;
    private static final int TRANSACTION_CALLBACK_CAPTURE = 3;
    private static final int TRANSACTION_CALLBACK_PREVIEW = 4;
    private static final int TRANSACTION_CHECKOUT_OBJECT = 8;
    private static final int TRANSACTION_CLOSE_OBJECT = 5;
    private static final int TRANSACTION_DROP_FRAME = 9;
    private static final int TRANSACTION_RELEASE_IMAGE = 6;
    private static final int TRANSACTION_SET_METADATA_REF = 2;
    private static final String KEY_SET_METADATA_REF_IMAGE = buildKey("", "", "_IMAGE_OBJECT_");
    private static final String KEY_SET_METADATA_REF_PIPELINE_NAME = buildKey("", "pipelineName", "_STRING_BASIC_");
    private static final String KEY_SET_METADATA_REF_IS_INC = buildKey("", "isInc", "_BOOLEAN_BASIC_");
    private static final String KEY_CALLBACK_CAPTURE_RESULT_STRINGS = buildKey("", "result", "_STRING_BASIC_ARRAYVALUE_");
    private static final String KEY_CALLBACK_CAPTURE_BUFFER = buildKey("", "bufferPlanesData", "_BYTE_BASIC_ARRAY_");
    private static final String KEY_CALLBACK_CAPTURE_IS_NEED_EXIF = buildKey("", "exifData", "needExifData", "_BOOLEAN_BASIC_");
    private static final String KEY_CALLBACK_PREVIEW_IMAGE = buildKey("", "imageobj", "_IMAGE_OBJECT_");
    private static final String KEY_CALLBACK_PREVIEW_HARDWARE_BUFFER = buildKey("", "hwBuffer", "_HARDWAREBUFFER_OBJECT_");
    private static final String KEY_CALLBACK_PREVIEW_SUB_HARDWARE_BUFFER = buildKey("", "subHwBuffer", "_HARDWAREBUFFER_OBJECT_");
    private static final String KEY_CALLBACK_PREVIEW_METADATA = buildKey("", "metadata", "_TOTALCAPTURERESULT_OBJECT_");
    private static final String KEY_CALLBACK_PREVIEW_META_IMAGE = buildKey("", "metaImage", "_IMAGE_OBJECT_");
    private static final String KEY_CALLBACK_PREVIEW_RESULT_STRING = buildKey("", "result", "_STRING_BASIC_ARRAYVALUE_");
    private static final String KEY_BUF_MANIPULATE_BUFF_DATA = buildKey("", "bufferPlanesData", "_LONG_BASIC_");
    private static final String KEY_BUF_MANIPULATE_BUFF_TYPE = buildKey("", "heifCodecType", "_STRING_BASIC_");
    private static final String KEY_CLOSE_IIMAGEBUFFER = buildKey("", "close_object", "_IMAGEBUFFER_OBJECT_");
    private static final String KEY_CHECK_VALID_IMAGEBUFFER = buildKey("", "checkout_valid_object", "_IMAGEBUFFER_OBJECT_");
    private static final String KEY_CHECK_VALID_RESULT = buildKey("", "checkout_valid_result", "_INT_BASIC_");
    private static final String KEY_CALLBACK_CAPTURE_LINEARMASK = buildKey("", "linearMaskBuffer", "_BYTE_BASIC_ARRAY_");
    private static final String KEY_CALLBACK_CAPTURE_LOCALHDR = buildKey("", "localHdfBuffer", "_BYTE_BASIC_ARRAY_");
    private static final String KEY_CALLBACK_CAPTURE_SRCIMAGE = buildKey("", "srcImageBuffer", "_BYTE_BASIC_ARRAY_");
    private static final String KEY_CALLBACK_CAPTURE_SRCIMAGEBLOCK = buildKey("", "srcImageBlockBuffer", "_BYTE_BASIC_ARRAY_");
    private static final String KEY_CALLBACK_CAPTURE_WATERMARK = buildKey("", "waterMarkBuffer", "_BYTE_BASIC_ARRAY_");
    private static final String KEY_CALLBACK_CAPTURE_WATERMARKCONFIG = buildKey("", "waterMarkConfigBuffer", "_BYTE_BASIC_ARRAY_");
    private static final String KEY_CALLBACK_CAPTURE_REARDEPTH = buildKey("", "rearDepthBuffer", "_BYTE_BASIC_ARRAY_");
    private static final String KEY_CALLBACK_CAPTURE_FRONTDEPTH = buildKey("", "frontDepthBuffer", "_BYTE_BASIC_ARRAY_");
    private static final String KEY_CALLBACK_CAPTURE_FRONTSEGMEN = buildKey("", "frontSegmentBuffer", "_BYTE_BASIC_ARRAY_");
    private static final String KEY_CALLBACK_CAPTURE_FRONTHAIRMASK = buildKey("", "frontHairmaskBuffer", "_BYTE_BASIC_ARRAY_");
    private static final String KEY_CALLBACK_CAPTURE_FRONTMATTEINFO = buildKey("", "frontMatteinfoBuffer", "_BYTE_BASIC_ARRAY_");
    private static final String KEY_CALLBACK_CAPTURE_NEGEVIMG = buildKey("", "frontNegevimgBuffer", "_BYTE_BASIC_ARRAY_");
    private static final String KEY_CALLBACK_CAPTURE_FILTER = buildKey("", "filterBuffer", "_BYTE_BASIC_ARRAY_");
    private static final String KEY_CALLBACK_CAPTURE_REARDEPTHCONFIG = buildKey("", "rearDepthConfigBuffer", "_BYTE_BASIC_ARRAY_");
    private static final String KEY_CALLBACK_CAPTURE_FRONTDEPTHCONFIG = buildKey("", "frontDepthConfigBuffer", "_BYTE_BASIC_ARRAY_");

    APSClientCallback() {
    }

    /* JADX WARN: Can't fix incorrect switch cases order, some code will duplicate */
    public static int onTransact(@NonNull Object obj, int i, Map<String, Object> map, Map<String, Object> map2) {
        APSClient aPSClient = (APSClient) ((WeakReference) obj).get();
        switch (i) {
            case 2:
                processMetadataRef(aPSClient, map, map2);
                return 0;
            case 3:
                processCallbackCapture(obj, map, map2);
                return 0;
            case 4:
                processCallbackPreview(obj, map, map2);
                return 0;
            case 5:
                processCloseObject(map, map2);
                return 0;
            case 6:
                break;
            case 7:
                processManipulate(map, map2);
                break;
            case 8:
                processCheckoutObject(map, map2);
                return 0;
            default:
                ApsAdapterLog.e(TAG, "onTransact, not match this code: " + i);
                return -1;
        }
        return 0;
    }

    private static void processMetadataRef(APSClient aPSClient, Map<String, Object> map, Map<String, Object> map2) {
        Object obj = map.get(KEY_SET_METADATA_REF_IMAGE);
        String string = getString(map, KEY_SET_METADATA_REF_PIPELINE_NAME);
        boolean z = getBoolean(map, KEY_SET_METADATA_REF_IS_INC);
        ApsAdapterLog.i(TAG, "TRANSACTION_SET_METADATA_REF, imageObject: " + obj + ", pipelineName: " + string + ", isInc: " + z);
        if (obj == null || string == null) {
            return;
        }
        aPSClient.setMetaImageRefCounter(obj, string, z);
    }

    private static void processCallbackCapture(Object obj, Map<String, Object> map, Map<String, Object> map2) {
        ApsResult apsResult = new ApsResult();
        apsResult.mResultString = getStringArray(map, KEY_CALLBACK_CAPTURE_RESULT_STRINGS);
        apsResult.mCopyBuffer = getByteArray(map, KEY_CALLBACK_CAPTURE_BUFFER);
        boolean z = getBoolean(map, KEY_CALLBACK_CAPTURE_IS_NEED_EXIF);
        if (z) {
            ApsExifData apsExifData = new ApsExifData();
            fillExifData(map, apsExifData);
            apsResult.mExifData = apsExifData;
        }
        fillFileExtender(map, apsResult);
        StringBuilder sb = new StringBuilder();
        sb.append("TRANSACTION_CALLBACK_CAPTURE, mResultStringSize: ");
        sb.append(apsResult.mResultString != null ? apsResult.mResultString.length : 0);
        sb.append(", mCopyBuffer: ");
        sb.append(apsResult.mCopyBuffer != null ? apsResult.mCopyBuffer.length : 0);
        sb.append(", needExifData: ");
        sb.append(z);
        sb.append(", exifData: ");
        sb.append(apsResult.mExifData);
        ApsAdapterLog.i(TAG, sb.toString());
        APSClient.postEventFromNative(obj, apsResult);
    }

    private static void fillFileExtender(Map<String, Object> map, ApsResult apsResult) {
        apsResult.mExtendData = new ApsExtendData();
        apsResult.mExtendData.mLinearMask = getByteArray(map, KEY_CALLBACK_CAPTURE_LINEARMASK);
        apsResult.mExtendData.mLocalHDRData = getByteArray(map, KEY_CALLBACK_CAPTURE_LOCALHDR);
        apsResult.mExtendData.mSrcImage = getByteArray(map, KEY_CALLBACK_CAPTURE_SRCIMAGE);
        apsResult.mExtendData.mSrcImageBlock = getByteArray(map, KEY_CALLBACK_CAPTURE_SRCIMAGEBLOCK);
        apsResult.mExtendData.mWatermark = getByteArray(map, KEY_CALLBACK_CAPTURE_WATERMARK);
        apsResult.mExtendData.mWatermarkConfig = getByteArray(map, KEY_CALLBACK_CAPTURE_WATERMARKCONFIG);
        apsResult.mExtendData.mRearDepth = getByteArray(map, KEY_CALLBACK_CAPTURE_REARDEPTH);
        apsResult.mExtendData.mFrontDepth = getByteArray(map, KEY_CALLBACK_CAPTURE_FRONTDEPTH);
        apsResult.mExtendData.mFrontSegment = getByteArray(map, KEY_CALLBACK_CAPTURE_FRONTSEGMEN);
        apsResult.mExtendData.mFrontHairmask = getByteArray(map, KEY_CALLBACK_CAPTURE_FRONTHAIRMASK);
        apsResult.mExtendData.mFrontMatteinfo = getByteArray(map, KEY_CALLBACK_CAPTURE_FRONTMATTEINFO);
        apsResult.mExtendData.mFrontNegevimg = getByteArray(map, KEY_CALLBACK_CAPTURE_NEGEVIMG);
        apsResult.mExtendData.mFilter = getByteArray(map, KEY_CALLBACK_CAPTURE_FILTER);
        apsResult.mExtendData.mRearDepthConfig = getByteArray(map, KEY_CALLBACK_CAPTURE_REARDEPTHCONFIG);
        apsResult.mExtendData.mFrontDepthConfig = getByteArray(map, KEY_CALLBACK_CAPTURE_FRONTDEPTHCONFIG);
    }

    private static void processCallbackPreview(Object obj, Map<String, Object> map, Map<String, Object> map2) {
        Object obj2 = map.get(KEY_CALLBACK_PREVIEW_IMAGE);
        Object obj3 = map.get(KEY_CALLBACK_PREVIEW_HARDWARE_BUFFER);
        Object obj4 = map.get(KEY_CALLBACK_PREVIEW_SUB_HARDWARE_BUFFER);
        Object obj5 = map.get(KEY_CALLBACK_PREVIEW_METADATA);
        Object obj6 = map.get(KEY_CALLBACK_PREVIEW_META_IMAGE);
        String[] stringArray = getStringArray(map, KEY_CALLBACK_PREVIEW_RESULT_STRING);
        ApsResult apsResult = new ApsResult();
        if (obj2 instanceof Image) {
            apsResult.setImage((Image) obj2);
        } else {
            ApsAdapterLog.w(TAG, "TRANSACTION_CALLBACK_PREVIEW, imageObj: " + obj2);
        }
        if (obj3 instanceof HardwareBuffer) {
            apsResult.setHwBuffer((HardwareBuffer) obj3);
        } else {
            ApsAdapterLog.w(TAG, "TRANSACTION_CALLBACK_PREVIEW, hwBufferObj: " + obj3);
        }
        if (obj4 != null && (obj4 instanceof HardwareBuffer)) {
            apsResult.setSubHwBuffer((HardwareBuffer) obj4);
        }
        if (obj5 instanceof TotalCaptureResult) {
            apsResult.mMetadata = (TotalCaptureResult) obj5;
        } else {
            ApsAdapterLog.w(TAG, "TRANSACTION_CALLBACK_PREVIEW, metadataObj: " + obj5);
        }
        if (obj6 instanceof Image) {
            apsResult.setMetaImage((Image) obj6);
        } else {
            ApsAdapterLog.w(TAG, "TRANSACTION_CALLBACK_PREVIEW, metaImageObj: " + obj6);
        }
        apsResult.setResultString(stringArray);
        StringBuilder sb = new StringBuilder();
        sb.append("TRANSACTION_CALLBACK_PREVIEW, resultString: ");
        sb.append(stringArray != null ? stringArray.length : 0);
        ApsAdapterLog.i(TAG, sb.toString());
        APSClient.postEventFromNative(obj, apsResult);
    }

    private static void processManipulate(Map<String, Object> map, Map<String, Object> map2) {
        long j = getLong(map, KEY_BUF_MANIPULATE_BUFF_DATA);
        String string = getString(map, KEY_BUF_MANIPULATE_BUFF_TYPE);
        ApsAdapterLog.i(TAG, "TRANSACTION_CALLBACK_CAPTURE, bufferPlanesData: " + j + " bufManipulateType: " + string);
        string.hashCode();
        char c = 65535;
        switch (string.hashCode()) {
            case -1681737167:
                if (string.equals("processHeifEvent")) {
                    c = 0;
                    break;
                }
                break;
            case -1088185470:
                if (string.equals("attachHWBufToBufQEvent")) {
                    c = 1;
                    break;
                }
                break;
            case 1317553644:
                if (string.equals("exchgHWBufBtwBufQEvent")) {
                    c = 2;
                    break;
                }
                break;
            case 1815220416:
                if (string.equals("bufQAllocEnableEvent")) {
                    c = 3;
                    break;
                }
                break;
        }
        switch (c) {
            case 0:
                ApsHelper.postProcessHeifEvent(j);
                return;
            case 1:
                ApsHelper.postAttachHWBufToBufQEvent(j);
                return;
            case 2:
                ApsHelper.postExchgHWBufBtwBufQEvent(j);
                return;
            case 3:
                ApsHelper.postBufQAllocEnableEvent(j);
                return;
            default:
                return;
        }
    }

    private static void processCloseObject(Map<String, Object> map, Map<String, Object> map2) {
        Object obj = map.get(KEY_CLOSE_IIMAGEBUFFER);
        if (obj instanceof ApsResult.ImageBuffer) {
            StringBuilder sb = new StringBuilder();
            sb.append("TRANSACTION_CLOSE_IMAGE,  object: ");
            ApsResult.ImageBuffer imageBuffer = (ApsResult.ImageBuffer) obj;
            sb.append(imageBuffer);
            ApsAdapterLog.i(TAG, sb.toString());
            imageBuffer.close();
            return;
        }
        ApsAdapterLog.w(TAG, "TRANSACTION_CLOSE_IMAGE,  imageBuffer: " + obj);
    }

    /* JADX WARN: Removed duplicated region for block: B:14:0x0037  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    private static void processCheckoutObject(java.util.Map<java.lang.String, java.lang.Object> r4, java.util.Map<java.lang.String, java.lang.Object> r5) {
        /*
            java.lang.String r0 = com.oplus.ocs.camera.consumer.apsAdapter.APSClientCallback.KEY_CHECK_VALID_IMAGEBUFFER
            java.lang.Object r4 = r4.get(r0)
            boolean r0 = r4 instanceof com.oplus.ocs.camera.consumer.apsAdapter.adapter.ApsResult.ImageBuffer
            java.lang.String r1 = "APSClientCallback"
            r2 = 0
            if (r0 == 0) goto L1d
            com.oplus.ocs.camera.consumer.apsAdapter.adapter.ApsResult$ImageBuffer r4 = (com.oplus.ocs.camera.consumer.apsAdapter.adapter.ApsResult.ImageBuffer) r4
            android.hardware.HardwareBuffer r4 = r4.getHardwareBuffer()
            if (r4 == 0) goto L31
            boolean r4 = r4.isClosed()
            if (r4 != 0) goto L31
            r4 = 1
            goto L32
        L1d:
            java.lang.StringBuilder r0 = new java.lang.StringBuilder
            r0.<init>()
            java.lang.String r3 = "TRANSACTION_CHECKOUT_OBJECT, object: "
            r0.append(r3)
            r0.append(r4)
            java.lang.String r4 = r0.toString()
            com.oplus.ocs.camera.consumer.apsAdapter.ApsAdapterLog.w(r1, r4)
        L31:
            r4 = r2
        L32:
            java.lang.String r0 = com.oplus.ocs.camera.consumer.apsAdapter.APSClientCallback.KEY_CHECK_VALID_RESULT
            if (r4 == 0) goto L37
            goto L38
        L37:
            r2 = -1
        L38:
            java.lang.Integer r2 = java.lang.Integer.valueOf(r2)
            r5.put(r0, r2)
            java.lang.StringBuilder r5 = new java.lang.StringBuilder
            r5.<init>()
            java.lang.String r0 = "TRANSACTION_CHECKOUT_OBJECT valid: "
            r5.append(r0)
            r5.append(r4)
            java.lang.String r4 = r5.toString()
            com.oplus.ocs.camera.consumer.apsAdapter.ApsAdapterLog.i(r1, r4)
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: com.oplus.ocs.camera.consumer.apsAdapter.APSClientCallback.processCheckoutObject(java.util.Map, java.util.Map):void");
    }
}
