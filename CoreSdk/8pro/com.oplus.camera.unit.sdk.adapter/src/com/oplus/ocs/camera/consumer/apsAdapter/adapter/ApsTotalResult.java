package com.oplus.ocs.camera.consumer.apsAdapter.adapter;

import android.hardware.HardwareBuffer;
import android.hardware.camera2.TotalCaptureResult;
import android.media.Image;
import android.text.TextUtils;
import com.oplus.ocs.camera.consumer.apsAdapter.APSClient;
import com.oplus.ocs.camera.consumer.apsAdapter.ApsAdapterLog;
import com.oplus.ocs.camera.consumer.apsAdapter.ApsCameraMetadataKey;
import com.oplus.ocs.camera.consumer.apsAdapter.config.AlgoSwitchConfig;
import java.lang.reflect.Field;
import java.lang.reflect.Method;
import java.nio.charset.Charset;
import java.util.HashMap;
import java.util.List;

/* JADX INFO: loaded from: classes.dex */
public class ApsTotalResult {
    public static final Key<Integer> APS_AI_SCENE;
    public static final Key<Integer> APS_AI_TUNING_SCENE;
    public static final Key<Integer> APS_BOKEN_STATE;
    public static final Key<Long> APS_BUFFER_TIMESTAMP;
    public static final Key<Integer> APS_FRAME_ID;
    public static final Key<Integer> APS_GESTURE_ACTION_TYPE;
    public static final Key<Integer> APS_HDR_SCOPE;
    public static final Key<Integer> APS_LENS_DIRTY;
    private static final int APS_RESULT_DATA_LENGTH = 3;
    public static final Key<Integer> APS_VIDEO_EIS;
    public static final Key<Integer> SAT_ACTIVE_MAP;
    public static final Key<Integer> SAT_MASTER_CAMERA_ID;
    private static final String TAG = "ApsTotalResult";
    private static boolean sLibLoaded = false;
    private HardwareBuffer mMetaBuffer;
    private Image mMetaImage;
    private APSClient.MetaImageRefCounter mMetaImageRefCounter;
    private HashMap<Key, Object> mResults = new HashMap<>();
    private TotalCaptureResult mTotalResult;

    private native int build(Object obj, long j);

    private native int destroy(Object obj, Object obj2);

    static {
        APS_BOKEN_STATE = new Key<>("RTB_msg", Integer.TYPE);
        APS_AI_SCENE = new Key<>("ASD_scene_icon", Integer.TYPE);
        APS_AI_TUNING_SCENE = new Key<>("ASD_tuning_scene", Integer.TYPE);
        APS_HDR_SCOPE = new Key<>("ASD_hdr_scope", Integer.TYPE);
        SAT_MASTER_CAMERA_ID = new Key<>("sat_master_camera_id", Integer.TYPE);
        SAT_ACTIVE_MAP = new Key<>("sat_active_map", Integer.TYPE);
        APS_LENS_DIRTY = new Key<>("LSD_is_dirty", Integer.TYPE);
        APS_GESTURE_ACTION_TYPE = new Key<>("Gesture_action_type", Integer.TYPE);
        APS_VIDEO_EIS = new Key<>("video_eis_on", Integer.TYPE);
        APS_FRAME_ID = new Key<>("frameId", Integer.TYPE);
        APS_BUFFER_TIMESTAMP = new Key<>("buffer_Timestamp", Long.TYPE);
    }

    /* JADX INFO: Access modifiers changed from: private */
    static final class Key<T> {
        private String mName;

        private Key(String str, Class<T> cls) {
            this.mName = str;
        }
    }

    public ApsTotalResult(TotalCaptureResult totalCaptureResult, Image image, APSClient.MetaImageRefCounter metaImageRefCounter, long j) {
        this.mMetaBuffer = null;
        this.mTotalResult = totalCaptureResult;
        this.mMetaImage = image;
        this.mMetaImageRefCounter = metaImageRefCounter;
        if (totalCaptureResult != null || image == null || metaImageRefCounter == null) {
            if (totalCaptureResult != null) {
                parse();
                return;
            }
            return;
        }
        if (!sLibLoaded) {
            try {
                System.loadLibrary("JniMetaTransform");
                sLibLoaded = true;
            } catch (Exception e) {
                e.printStackTrace();
                ApsAdapterLog.e(TAG, "cannot find libJniMetaTransform.so");
            }
        }
        this.mMetaBuffer = ApsUtils.getHardwareBuffer(this.mMetaImage);
        long[] jArr = new long[2];
        Object emptyMetadataNative = getEmptyMetadataNative(jArr);
        if (build(this.mMetaBuffer, jArr[0]) < 0) {
            throw new IllegalStateException("meta buffer is invalid");
        }
        this.mTotalResult = generateTotalCaptureResult(emptyMetadataNative, j);
        parse();
    }

    private static Object getEmptyMetadataNative(long[] jArr) {
        Object objInvoke = null;
        try {
            Class<?> cls = Class.forName("android.hardware.camera2.OplusCameraManager");
            Field declaredField = cls.getDeclaredField("mInstance");
            Method declaredMethod = cls.getDeclaredMethod("getEmptyCameraMetadataNative", long[].class);
            declaredField.setAccessible(true);
            declaredMethod.setAccessible(true);
            objInvoke = declaredMethod.invoke(declaredField.get(null), jArr);
        } catch (Exception e) {
            e.printStackTrace();
        }
        if (objInvoke == null) {
            ApsAdapterLog.e(TAG, "getEmptyMetadataNative, can not get a metadataNative!");
        }
        return objInvoke;
    }

    private static TotalCaptureResult generateTotalCaptureResult(Object obj, long j) {
        TotalCaptureResult totalCaptureResult = null;
        try {
            Class<?> cls = Class.forName("android.hardware.camera2.OplusCameraManager");
            Field declaredField = cls.getDeclaredField("mInstance");
            Method declaredMethod = cls.getDeclaredMethod("generateTotalCaptureResult", Object.class, Long.TYPE);
            declaredField.setAccessible(true);
            declaredMethod.setAccessible(true);
            totalCaptureResult = (TotalCaptureResult) declaredMethod.invoke(declaredField.get(null), obj, Long.valueOf(j));
        } catch (Exception e) {
            e.printStackTrace();
        }
        if (totalCaptureResult == null) {
            ApsAdapterLog.e(TAG, "generateTotalCaptureResult, can not get a TotalCaptureResult!");
        }
        return totalCaptureResult;
    }

    public synchronized void setInvalid() {
        TotalCaptureResult totalCaptureResult;
        HardwareBuffer hardwareBuffer = this.mMetaBuffer;
        if (hardwareBuffer != null && (totalCaptureResult = this.mTotalResult) != null) {
            destroy(hardwareBuffer, totalCaptureResult);
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
        TotalCaptureResult totalCaptureResult;
        if (2 == AlgoSwitchConfig.getApsVersion() || (totalCaptureResult = this.mTotalResult) == null) {
            return;
        }
        byte[] bArr = null;
        try {
            bArr = (byte[]) totalCaptureResult.get(ApsCameraMetadataKey.KEY_APS_RESULT_DATA);
        } catch (Exception unused) {
            ApsAdapterLog.e(TAG, "parse, com.oplus.aps.result.data is undefined.");
        }
        if (bArr == null) {
            ApsAdapterLog.e(TAG, "apsResultData is null.");
            return;
        }
        List<String> listMatchBrackets = ApsUtils.matchBrackets(new String(bArr, Charset.defaultCharset()));
        if (listMatchBrackets == null) {
            ApsAdapterLog.e(TAG, "parse, parse result is null.");
            return;
        }
        for (String str : listMatchBrackets) {
            if (!TextUtils.isEmpty(str)) {
                String[] strArrSplit = str.split(";");
                if (strArrSplit == null || 3 != strArrSplit.length) {
                    ApsAdapterLog.e(TAG, "parse, invalid str: " + str);
                } else {
                    Key<Integer> key = APS_BOKEN_STATE;
                    if (((Key) key).mName.equals(strArrSplit[0])) {
                        this.mResults.put(key, Integer.valueOf(Integer.parseInt(strArrSplit[2])));
                    } else {
                        Key<Integer> key2 = APS_AI_SCENE;
                        if (((Key) key2).mName.equals(strArrSplit[0])) {
                            this.mResults.put(key2, Integer.valueOf(Integer.parseInt(strArrSplit[2])));
                        } else {
                            Key<Integer> key3 = APS_AI_TUNING_SCENE;
                            if (((Key) key3).mName.equals(strArrSplit[0])) {
                                this.mResults.put(key3, Integer.valueOf(Integer.parseInt(strArrSplit[2])));
                            } else {
                                Key<Integer> key4 = SAT_MASTER_CAMERA_ID;
                                if (((Key) key4).mName.equals(strArrSplit[0])) {
                                    this.mResults.put(key4, Integer.valueOf(Integer.parseInt(strArrSplit[2])));
                                } else {
                                    Key<Integer> key5 = SAT_ACTIVE_MAP;
                                    if (((Key) key5).mName.equals(strArrSplit[0])) {
                                        this.mResults.put(key5, Integer.valueOf(Integer.parseInt(strArrSplit[2])));
                                    } else {
                                        Key<Integer> key6 = APS_LENS_DIRTY;
                                        if (((Key) key6).mName.equals(strArrSplit[0])) {
                                            this.mResults.put(key6, Integer.valueOf(Integer.parseInt(strArrSplit[2])));
                                        } else {
                                            Key<Integer> key7 = APS_GESTURE_ACTION_TYPE;
                                            if (((Key) key7).mName.equals(strArrSplit[0])) {
                                                this.mResults.put(key7, Integer.valueOf(Integer.parseInt(strArrSplit[2])));
                                            } else {
                                                Key<Integer> key8 = APS_VIDEO_EIS;
                                                if (((Key) key8).mName.equals(strArrSplit[0])) {
                                                    this.mResults.put(key8, Integer.valueOf(Integer.parseInt(strArrSplit[2])));
                                                } else {
                                                    Key<Integer> key9 = APS_FRAME_ID;
                                                    if (((Key) key9).mName.equals(strArrSplit[0])) {
                                                        this.mResults.put(key9, Integer.valueOf(Integer.parseInt(strArrSplit[2])));
                                                    } else {
                                                        Key<Integer> key10 = APS_HDR_SCOPE;
                                                        if (((Key) key10).mName.equals(strArrSplit[0])) {
                                                            this.mResults.put(key10, Integer.valueOf(Integer.parseInt(strArrSplit[2])));
                                                        } else {
                                                            Key<Long> key11 = APS_BUFFER_TIMESTAMP;
                                                            if (((Key) key11).mName.equals(strArrSplit[0])) {
                                                                this.mResults.put(key11, Long.valueOf(Long.parseLong(strArrSplit[2])));
                                                            }
                                                        }
                                                    }
                                                }
                                            }
                                        }
                                    }
                                }
                            }
                        }
                    }
                }
            }
        }
    }
}
