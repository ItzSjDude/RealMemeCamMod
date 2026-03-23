package com.oplus.ocs.camera.consumer.apsAdapter.adapter;

import android.hardware.HardwareBuffer;
import android.hardware.camera2.TotalCaptureResult;
import android.media.Image;
import android.text.TextUtils;
import com.oplus.ocs.camera.consumer.apsAdapter.APSClient;
import com.oplus.ocs.camera.consumer.apsAdapter.ApsAdapterLog;
import com.oplus.ocs.camera.consumer.apsAdapter.ApsCameraMetadataKey;
import com.oplus.ocs.camera.consumer.apsAdapter.config.AlgoSwitchConfig;
import com.oplus.shield.Constants;
import java.lang.reflect.Field;
import java.lang.reflect.Method;
import java.nio.charset.Charset;
import java.util.HashMap;
import java.util.List;
/* loaded from: classes.dex */
public class ApsTotalResult {
    private static final int APS_RESULT_DATA_LENGTH = 3;
    private static final String TAG = "ApsTotalResult";
    private static boolean sLibLoaded = false;
    private HardwareBuffer mMetaBuffer;
    private Image mMetaImage;
    private APSClient.MetaImageRefCounter mMetaImageRefCounter;
    private HashMap<Key, Object> mResults = new HashMap<>();
    private TotalCaptureResult mTotalResult;
    public static final Key<Integer> APS_BOKEN_STATE = new Key<>("RTB_msg", Integer.TYPE);
    public static final Key<Integer> APS_AI_SCENE = new Key<>("ASD_scene_icon", Integer.TYPE);
    public static final Key<Integer> APS_AI_TUNING_SCENE = new Key<>("ASD_tuning_scene", Integer.TYPE);
    public static final Key<Integer> APS_HDR_SCOPE = new Key<>("ASD_hdr_scope", Integer.TYPE);
    public static final Key<Integer> SAT_MASTER_CAMERA_ID = new Key<>("sat_master_camera_id", Integer.TYPE);
    public static final Key<Integer> SAT_ACTIVE_MAP = new Key<>("sat_active_map", Integer.TYPE);
    public static final Key<Integer> APS_LENS_DIRTY = new Key<>("LSD_is_dirty", Integer.TYPE);
    public static final Key<Integer> APS_GESTURE_ACTION_TYPE = new Key<>("Gesture_action_type", Integer.TYPE);
    public static final Key<Integer> APS_VIDEO_EIS = new Key<>("video_eis_on", Integer.TYPE);
    public static final Key<Integer> APS_FRAME_ID = new Key<>("frameId", Integer.TYPE);

    private native int build(Object obj, long j);

    private native int destroy(Object obj, Object obj2);

    /* JADX INFO: Access modifiers changed from: private */
    /* loaded from: classes.dex */
    public static final class Key<T> {
        private String mName;

        private Key(String str, Class<T> cls) {
            this.mName = "";
            this.mName = str;
        }
    }

    public ApsTotalResult(TotalCaptureResult totalCaptureResult, Image image, APSClient.MetaImageRefCounter metaImageRefCounter, long j) {
        this.mTotalResult = null;
        this.mMetaImage = null;
        this.mMetaBuffer = null;
        this.mMetaImageRefCounter = null;
        this.mTotalResult = totalCaptureResult;
        this.mMetaImage = image;
        this.mMetaImageRefCounter = metaImageRefCounter;
        if (this.mTotalResult == null && this.mMetaImage != null && metaImageRefCounter != null) {
            if (!sLibLoaded) {
                try {
                    System.loadLibrary("JniMetaTransform");
                    sLibLoaded = true;
                } catch (Exception e) {
                    e.printStackTrace();
                    ApsAdapterLog.e(TAG, "cannot find libJniMetaTransform.so");
                }
            }
            this.mMetaBuffer = this.mMetaImage.getHardwareBuffer();
            long[] jArr = new long[2];
            Object emptyMetadataNative = getEmptyMetadataNative(jArr);
            if (build(this.mMetaBuffer, jArr[0]) < 0) {
                throw new IllegalStateException("meta buffer is invalid");
            }
            this.mTotalResult = generateTotalCaptureResult(emptyMetadataNative, j);
            parse();
        } else if (this.mTotalResult != null) {
            parse();
        }
    }

    private static Object getEmptyMetadataNative(long[] jArr) {
        Object obj;
        try {
            Class<?> cls = Class.forName("android.hardware.camera2.OplusCameraManager");
            Field declaredField = cls.getDeclaredField("mInstance");
            Method declaredMethod = cls.getDeclaredMethod("getEmptyCameraMetadataNative", long[].class);
            declaredField.setAccessible(true);
            declaredMethod.setAccessible(true);
            obj = declaredMethod.invoke(declaredField.get(null), jArr);
        } catch (Exception e) {
            e.printStackTrace();
            obj = null;
        }
        if (obj == null) {
            ApsAdapterLog.e(TAG, "getEmptyMetadataNative, can not get a metadataNative!");
        }
        return obj;
    }

    private static TotalCaptureResult generateTotalCaptureResult(Object obj, long j) {
        TotalCaptureResult totalCaptureResult;
        try {
            Class<?> cls = Class.forName("android.hardware.camera2.OplusCameraManager");
            Field declaredField = cls.getDeclaredField("mInstance");
            Method declaredMethod = cls.getDeclaredMethod("generateTotalCaptureResult", Object.class, Long.TYPE);
            declaredField.setAccessible(true);
            declaredMethod.setAccessible(true);
            totalCaptureResult = (TotalCaptureResult) declaredMethod.invoke(declaredField.get(null), obj, Long.valueOf(j));
        } catch (Exception e) {
            e.printStackTrace();
            totalCaptureResult = null;
        }
        if (totalCaptureResult == null) {
            ApsAdapterLog.e(TAG, "generateTotalCaptureResult, can not get a TotalCaptureResult!");
        }
        return totalCaptureResult;
    }

    public synchronized void setInvalid() {
        if (this.mMetaBuffer != null && this.mTotalResult != null) {
            destroy(this.mMetaBuffer, this.mTotalResult);
            this.mMetaBuffer.close();
            this.mMetaBuffer = null;
            this.mMetaImageRefCounter.setMetaImageRef(this.mMetaImage, null, false);
            this.mTotalResult = null;
        }
    }

    public Image getMetaImage() {
        return this.mMetaImage;
    }

    protected void finalize() throws Throwable {
        try {
            setInvalid();
        } finally {
            super.finalize();
        }
    }

    public boolean containsKey(Key key) {
        return this.mResults.containsKey(key);
    }

    public <T> T get(Key<T> key) {
        T t;
        if (this.mResults.containsKey(key) && (t = (T) this.mResults.get(key)) != null) {
            return t;
        }
        return null;
    }

    public TotalCaptureResult getTotalResult() {
        return this.mTotalResult;
    }

    private void parse() {
        if (2 == AlgoSwitchConfig.getApsVersion() || this.mTotalResult == null) {
            return;
        }
        byte[] bArr = null;
        try {
            bArr = (byte[]) this.mTotalResult.get(ApsCameraMetadataKey.KEY_APS_RESULT_DATA);
        } catch (Exception unused) {
            ApsAdapterLog.e(TAG, "parse, com.oplus.aps.result.data is undefined.");
        }
        if (bArr == null) {
            ApsAdapterLog.e(TAG, "apsResultData is null.");
            return;
        }
        List<String> matchBrackets = ApsUtils.matchBrackets(new String(bArr, Charset.defaultCharset()));
        if (matchBrackets == null) {
            ApsAdapterLog.e(TAG, "parse, parse result is null.");
            return;
        }
        for (String str : matchBrackets) {
            if (!TextUtils.isEmpty(str)) {
                String[] split = str.split(Constants.SEMICOLON_REGEX);
                if (split == null || 3 != split.length) {
                    ApsAdapterLog.e(TAG, "parse, invalid str: " + str);
                } else if (!((Key) APS_BOKEN_STATE).mName.equals(split[0])) {
                    if (!((Key) APS_AI_SCENE).mName.equals(split[0])) {
                        if (!((Key) APS_AI_TUNING_SCENE).mName.equals(split[0])) {
                            if (!((Key) SAT_MASTER_CAMERA_ID).mName.equals(split[0])) {
                                if (!((Key) SAT_ACTIVE_MAP).mName.equals(split[0])) {
                                    if (!((Key) APS_LENS_DIRTY).mName.equals(split[0])) {
                                        if (!((Key) APS_GESTURE_ACTION_TYPE).mName.equals(split[0])) {
                                            if (!((Key) APS_VIDEO_EIS).mName.equals(split[0])) {
                                                if (!((Key) APS_FRAME_ID).mName.equals(split[0])) {
                                                    if (((Key) APS_HDR_SCOPE).mName.equals(split[0])) {
                                                        this.mResults.put(APS_HDR_SCOPE, Integer.valueOf(Integer.parseInt(split[2])));
                                                    }
                                                } else {
                                                    this.mResults.put(APS_FRAME_ID, Integer.valueOf(Integer.parseInt(split[2])));
                                                }
                                            } else {
                                                this.mResults.put(APS_VIDEO_EIS, Integer.valueOf(Integer.parseInt(split[2])));
                                            }
                                        } else {
                                            this.mResults.put(APS_GESTURE_ACTION_TYPE, Integer.valueOf(Integer.parseInt(split[2])));
                                        }
                                    } else {
                                        this.mResults.put(APS_LENS_DIRTY, Integer.valueOf(Integer.parseInt(split[2])));
                                    }
                                } else {
                                    this.mResults.put(SAT_ACTIVE_MAP, Integer.valueOf(Integer.parseInt(split[2])));
                                }
                            } else {
                                this.mResults.put(SAT_MASTER_CAMERA_ID, Integer.valueOf(Integer.parseInt(split[2])));
                            }
                        } else {
                            this.mResults.put(APS_AI_TUNING_SCENE, Integer.valueOf(Integer.parseInt(split[2])));
                        }
                    } else {
                        this.mResults.put(APS_AI_SCENE, Integer.valueOf(Integer.parseInt(split[2])));
                    }
                } else {
                    this.mResults.put(APS_BOKEN_STATE, Integer.valueOf(Integer.parseInt(split[2])));
                }
            }
        }
    }
}
