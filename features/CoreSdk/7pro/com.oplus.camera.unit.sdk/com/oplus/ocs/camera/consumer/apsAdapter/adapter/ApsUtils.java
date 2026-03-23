package com.oplus.ocs.camera.consumer.apsAdapter.adapter;

import android.app.ActivityManager;
import android.content.Context;
import android.hardware.camera2.CameraMetadata;
import android.hardware.camera2.CaptureRequest;
import android.hardware.camera2.CaptureResult;
import android.hardware.camera2.TotalCaptureResult;
import android.media.Image;
import android.media.ImageReader;
import android.text.TextUtils;
import androidx.collection.ArrayMap;
import com.oplus.ocs.camera.consumer.apsAdapter.ApsAdapterLog;
import java.io.Closeable;
import java.io.FileInputStream;
import java.lang.reflect.Field;
import java.lang.reflect.Method;
import java.nio.ByteBuffer;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;
import java.util.regex.Matcher;
import java.util.regex.Pattern;
import org.json.JSONArray;
import org.json.JSONException;
import org.json.JSONObject;
/* loaded from: classes.dex */
public class ApsUtils {
    public static final int APS_CONNECT_FAIL = -1;
    public static final int APS_CONNECT_SUCEESS = 0;
    public static final String CONFIG_JSON_PATH = getConfigJsonDirectory() + "/etc/camera/config/";
    public static final int INDEX_METADATA_ADDRESS = 0;
    public static final int INDEX_METADATA_FD = 1;
    public static final int INDEX_METADATA_SIZE = 2;
    private static final int INITIAL_LENGTH_VENDOR_TAG_CONFIG_MAP = 512;
    private static final String KEY_CAMERA_CHARACTERRISTICS = "mProperties";
    private static final String KEY_LOGICAL_CAMERA_SETTINGS = "mLogicalCameraSettings";
    private static final String KEY_MEATDATA_PTR = "mMetadataPtr";
    private static final String KEY_METHOD_DETACH_IMAGE = "detachImage";
    private static final String KEY_PHYSICAL_CAMERA_SETTINGS = "mPhysicalCameraSettings";
    private static final String KEY_REQUEST = "mRequest";
    public static final int PARSE_SENSOR_CONFIG = 1;
    public static final int PARSE_VENDOR_TAG_CONFIG = 0;
    public static final int PROCESS_IMAGE_FAIL = -1;
    private static final String TAG = "ApsUtils";
    public static final String VENDOR_TAG_CONFIG_NAME = "oplus_camera_config";
    private static HashMap<String, String> sSensorConfigMap;
    private static HashMap<String, String> sVendorTagConfigMap;

    public static String getConfigJsonDirectory() {
        return "/odm";
    }

    public static int getNumPlanesForFormat(int i) {
        if (i == 35 || i == 842094169) {
            return 2;
        }
        switch (i) {
            case 16:
            case 17:
                return 2;
            default:
                return 1;
        }
    }

    public static ByteBuffer[] getBuffers(int i, Image image, int i2) {
        ByteBuffer[] byteBufferArr = new ByteBuffer[i];
        if (32 != i2 && 256 != i2) {
            byteBufferArr[0] = image.getPlanes()[0].getBuffer();
            byteBufferArr[1] = image.getPlanes()[2].getBuffer();
        } else {
            byteBufferArr[0] = image.getPlanes()[0].getBuffer();
        }
        return byteBufferArr;
    }

    public static int[] getBufferStrideSize(int i, Image image) {
        int[] iArr = new int[i];
        for (int i2 = 0; i2 < i; i2++) {
            iArr[i2] = image.getPlanes()[i2].getRowStride();
        }
        return iArr;
    }

    public static int[] getBufferScanLineSize(int i, Image image, int i2) {
        int[] iArr = new int[i];
        if (32 != i2 && 256 != i2) {
            iArr[0] = image.getHeight();
            iArr[1] = image.getHeight() / 2;
        } else {
            iArr[0] = image.getHeight();
        }
        return iArr;
    }

    public static int[] getBufferSize(ByteBuffer[] byteBufferArr) {
        int[] iArr = new int[byteBufferArr.length];
        for (int i = 0; i < byteBufferArr.length; i++) {
            iArr[i] = byteBufferArr[i].limit();
        }
        return iArr;
    }

    private static Object getCameraMetadataNativeObj(CaptureRequest captureRequest) {
        try {
            Field declaredField = captureRequest.getClass().getDeclaredField(KEY_LOGICAL_CAMERA_SETTINGS);
            declaredField.setAccessible(true);
            return declaredField.get(captureRequest);
        } catch (Exception e) {
            ApsAdapterLog.e(TAG, "getCameraMetadataNativeObj, error.", e);
            return null;
        }
    }

    public static void setDefaultVendorTagConfigMap() {
        if (sVendorTagConfigMap == null) {
            return;
        }
        DefaultUtill.setDefaultVendorTagConfigure(sVendorTagConfigMap);
    }

    public static void initConfigData(String str, int i) {
        FileInputStream fileInputStream = null;
        try {
            try {
                fileInputStream = new FileInputStream(str);
            } catch (Exception e) {
                ApsAdapterLog.e(TAG, "initConfigData, e1: " + e.getMessage());
            }
            if (fileInputStream != null) {
                try {
                    byte[] bArr = new byte[fileInputStream.available()];
                    fileInputStream.read(bArr);
                    parseJson(new String(bArr, "UTF-8"), i);
                } catch (Exception e2) {
                    ApsAdapterLog.e(TAG, "initConfigData, e2: " + e2.getMessage());
                }
            }
        } finally {
            closeSilently(fileInputStream);
        }
    }

    public static String getVendorTagConfig(String str) {
        if (sVendorTagConfigMap == null) {
            return null;
        }
        return sVendorTagConfigMap.get(str);
    }

    public static boolean setVendorTagConfigRus(String str, String str2) {
        if (sVendorTagConfigMap != null) {
            sVendorTagConfigMap.put(str, str2);
            return true;
        }
        return false;
    }

    public static String getSensorConfig(String str) {
        if (sSensorConfigMap == null) {
            return null;
        }
        return sSensorConfigMap.get(str);
    }

    public static void parseJson(String str, int i) throws JSONException {
        JSONArray jSONArray = new JSONArray(str);
        int length = jSONArray.length();
        if (i == 0) {
            sVendorTagConfigMap = new HashMap<>(512);
        } else if (i == 1) {
            sSensorConfigMap = new HashMap<>(length);
        }
        setDefaultVendorTagConfigMap();
        for (int i2 = 0; i2 < length; i2++) {
            try {
                JSONObject jSONObject = jSONArray.getJSONObject(i2);
                if (i == 0) {
                    sVendorTagConfigMap.put(jSONObject.getString("VendorTag"), jSONObject.getString("Value"));
                } else if (i == 1) {
                    sSensorConfigMap.put(jSONObject.getString("Key"), jSONObject.getString("Value"));
                }
            } catch (JSONException e) {
                ApsAdapterLog.e(TAG, "parseJson, e: " + e.getMessage());
            }
        }
    }

    public static void closeSilently(Closeable closeable) {
        if (closeable == null) {
            return;
        }
        try {
            closeable.close();
        } catch (Throwable unused) {
        }
    }

    public static int[] stringConvertInt(String str, String str2) {
        if (str == null) {
            return null;
        }
        ApsAdapterLog.v(TAG, "stringConvertInt, str: " + str + ", separator: " + str2);
        try {
            String[] split = str.split(str2);
            int[] iArr = new int[split.length];
            for (int i = 0; i < split.length; i++) {
                iArr[i] = Integer.parseInt(split[i]);
            }
            return iArr;
        } catch (Exception e) {
            ApsAdapterLog.e(TAG, "stringConvertInt, e: " + e.getMessage());
            return null;
        }
    }

    public static int stringConvertInt(String str) {
        if (str == null) {
            return 0;
        }
        return Integer.parseInt(str);
    }

    public static ArrayMap<String, CameraMetadata> assembleMetaMap(Object obj, String str) {
        Map<String, CaptureResult> physicalCameraResults;
        if (obj == null || TextUtils.isEmpty(str)) {
            ApsAdapterLog.e(TAG, "assembleMetaPtrs, params error, result: " + obj + ", logicCameraId: " + str);
            return null;
        }
        ArrayMap<String, CameraMetadata> arrayMap = new ArrayMap<>();
        arrayMap.put(str, (CaptureResult) obj);
        if ((obj instanceof TotalCaptureResult) && (physicalCameraResults = ((TotalCaptureResult) obj).getPhysicalCameraResults()) != null && !physicalCameraResults.isEmpty()) {
            for (Map.Entry<String, CaptureResult> entry : physicalCameraResults.entrySet()) {
                arrayMap.put(entry.getKey(), entry.getValue());
            }
        }
        return arrayMap;
    }

    public static ArrayMap<String, Long> getCaptureRequestMetaDatas(CaptureRequest.Builder builder) {
        try {
            Field declaredField = builder.getClass().getDeclaredField(KEY_REQUEST);
            declaredField.setAccessible(true);
            CaptureRequest captureRequest = (CaptureRequest) declaredField.get(builder);
            ArrayMap<String, Long> arrayMap = new ArrayMap<>();
            try {
                Field declaredField2 = captureRequest.getClass().getDeclaredField(KEY_PHYSICAL_CAMERA_SETTINGS);
                declaredField2.setAccessible(true);
                for (Map.Entry entry : ((HashMap) declaredField2.get(captureRequest)).entrySet()) {
                    arrayMap.put((String) entry.getKey(), Long.valueOf(getMetadataPtr(entry.getValue())));
                }
                return arrayMap;
            } catch (Exception e) {
                ApsAdapterLog.e(TAG, "getCaptureRequestMetaDatas, get physical settings error.", e);
                return null;
            }
        } catch (Exception e2) {
            ApsAdapterLog.e(TAG, "getCaptureRequestMetaDatas, get request error.", e2);
            return null;
        }
    }

    public static long getMetadataPtr(Object obj) {
        if (obj == null) {
            ApsAdapterLog.e(TAG, "getMetadataPtr, can't get null metadata ptr.");
            return 0L;
        }
        try {
            Field declaredField = obj.getClass().getDeclaredField(KEY_MEATDATA_PTR);
            declaredField.setAccessible(true);
            return ((Long) declaredField.get(obj)).longValue();
        } catch (Exception e) {
            ApsAdapterLog.e(TAG, "getMetadataPtr, get ptr error.", e);
            return 0L;
        }
    }

    public static List<String> matchBrackets(String str) {
        ArrayList arrayList = new ArrayList();
        Matcher matcher = Pattern.compile("\\[(.*?)\\]").matcher(str);
        while (matcher.find()) {
            arrayList.add(matcher.group(1));
        }
        return arrayList;
    }

    public static void detachImage(ImageReader imageReader, Image image) {
        if (imageReader == null || image == null) {
            ApsAdapterLog.e(TAG, "detachImage, reader: " + imageReader + ", image: " + image);
            return;
        }
        try {
            Method declaredMethod = ImageReader.class.getDeclaredMethod(KEY_METHOD_DETACH_IMAGE, Image.class);
            declaredMethod.setAccessible(true);
            declaredMethod.invoke(imageReader, image);
            declaredMethod.setAccessible(false);
        } catch (Exception e) {
            ApsAdapterLog.e(TAG, "detachImage, error: " + e.getMessage());
        }
    }

    public static long getConsumerPtr(ImageReader imageReader) {
        if (imageReader != null) {
            try {
                Method declaredMethod = imageReader.getClass().getDeclaredMethod("nativeGetConsumer", new Class[0]);
                declaredMethod.setAccessible(true);
                return ((Long) declaredMethod.invoke(imageReader, new Object[0])).longValue();
            } catch (Exception e) {
                e.printStackTrace();
                return 0L;
            }
        }
        return 0L;
    }

    public static long getTotalMemory(Context context) {
        ActivityManager activityManager = (ActivityManager) context.getSystemService("activity");
        ActivityManager.MemoryInfo memoryInfo = new ActivityManager.MemoryInfo();
        try {
            activityManager.getMemoryInfo(memoryInfo);
        } catch (Exception unused) {
        }
        return memoryInfo.totalMem;
    }
}
