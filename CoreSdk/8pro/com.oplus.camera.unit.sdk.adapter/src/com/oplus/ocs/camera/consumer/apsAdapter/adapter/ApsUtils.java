package com.oplus.ocs.camera.consumer.apsAdapter.adapter;

import android.app.ActivityManager;
import android.content.Context;
import android.graphics.ImageFormat;
import android.graphics.Rect;
import android.graphics.YuvImage;
import android.hardware.HardwareBuffer;
import android.hardware.camera2.CameraMetadata;
import android.hardware.camera2.CaptureRequest;
import android.hardware.camera2.CaptureResult;
import android.hardware.camera2.TotalCaptureResult;
import android.media.Image;
import android.media.ImageReader;
import android.text.TextUtils;
import android.util.ArrayMap;
import com.oplus.ocs.camera.consumer.apsAdapter.ApsAdapterLog;
import com.oplus.ocs.camera.consumer.apsAdapter.ApsContextHolder;
import com.oplus.ocs.camera.consumer.apsAdapter.update.UpdateHelper;
import java.io.ByteArrayOutputStream;
import java.io.Closeable;
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
    private static final int BIT_NUM_OF_BYTE = 8;
    public static final int INDEX_METADATA_ADDRESS = 0;
    public static final int INDEX_METADATA_FD = 1;
    public static final int INDEX_METADATA_SIZE = 2;
    private static final int INITIAL_LENGTH_VENDOR_TAG_CONFIG_MAP = 512;
    private static final int JPEG_QUALITY_NORMAL = 95;
    private static final String KEY_CAMERA_CHARACTERRISTICS = "mProperties";
    private static final String KEY_LOGICAL_CAMERA_SETTINGS = "mLogicalCameraSettings";
    private static final String KEY_MEATDATA_PTR = "mMetadataPtr";
    private static final String KEY_METHOD_DETACH_IMAGE = "detachImage";
    private static final String KEY_PHYSICAL_CAMERA_SETTINGS = "mPhysicalCameraSettings";
    private static final String KEY_REQUEST = "mRequest";
    public static final String METADATA = "surface_key_metadata";
    public static final int PARSE_SENSOR_CONFIG = 1;
    public static final int PARSE_VENDOR_TAG_CONFIG = 0;
    public static final String PICTURE = "surface_key_picture";
    public static final String PICTURE_MFNE = "surface_key_picture_mfnr";
    private static final String PLATFORM_SUFFIX_MTK = ".trustonic";
    private static final String PLATFORM_SUFFIX_QCOM = ".qti";
    public static final String PREVIEW = "surface_key_preview";
    public static final String PREVIEW_FRAME = "surface_key_preview_frame";
    public static final String PREVIEW_IN_PREVIEW = "surface_key_preview_in_preview";
    public static final int PROCESS_IMAGE_FAIL = -1;
    public static final String RECORDING = "surface_key_recording";
    public static final String REPROCESS = "surface_key_reprocess";
    public static final String REPROCESS_YUV = "surface_key_reprocess_yuv";
    private static final String SYSTEM_CAMERA_PACKNAME = "com.oplus.camera";
    private static final String TAG = "ApsUtils";
    public static final String TUNING_RAW = "surface_key_tuning_raw";
    public static final String TUNING_YUV = "surface_key_tuning_yuv";
    public static final String VENDOR_TAG_CONFIG_NAME = "oplus_camera_config";
    private static String sSimulationCaseId;
    public static final String CONFIG_JSON_PATH = getConfigJsonDirectory() + "/etc/camera/config/";
    private static HashMap<String, String> sVendorTagConfigMap = null;
    private static HashMap<String, String> sSensorConfigMap = null;
    private static boolean mbSupportOplusHardwareBuffer = true;
    private static boolean sIsQcomPlatform = false;
    private static HashMap<String, String> sAlgoSwitch = new HashMap<>();
    private static int sSimulationMode = 0;
    private static int sSimulationTimes = 0;

    public static String getConfigJsonDirectory() {
        return "/odm";
    }

    public static int getNumPlanesForFormat(int i) {
        return (i == 16 || i == 17 || i == 35 || i == 842094169) ? 2 : 1;
    }

    public static void setSimulationMode(int i) {
        if (i < 0 || i > 2) {
            return;
        }
        sSimulationMode = i;
    }

    public static int getSimulationMode() {
        return sSimulationMode;
    }

    public static void setSimulationTimes(int i) {
        if (i >= 0) {
            sSimulationTimes = i;
        }
    }

    public static int getSimulationTimes() {
        return sSimulationTimes;
    }

    public static void setSimulationCaseId(String str) {
        sSimulationCaseId = str;
    }

    public static String getSimulationCaseId() {
        return sSimulationCaseId;
    }

    public static void setAlgoSwitch(HashMap<String, String> hashMap) {
        sAlgoSwitch.clear();
        if (hashMap != null) {
            sAlgoSwitch.putAll(hashMap);
        }
    }

    public static HashMap<String, String> getTurnOffAlgoList() {
        return sAlgoSwitch;
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

    public static void setDefaultVendorTagConfigMap(HashMap<String, String> hashMap) {
        if (hashMap == null) {
            return;
        }
        DefaultUtill.setDefaultVendorTagConfigure(hashMap);
    }

    public static void initConfigData(String str, int i) {
        if (i == 0) {
            HashMap<String, String> hashMap = new HashMap<>(512);
            sVendorTagConfigMap = hashMap;
            setDefaultVendorTagConfigMap(hashMap);
        }
        if (str != null) {
            try {
                if (UpdateHelper.isNewConfigFormat(str)) {
                    JSONObject jSONObject = new JSONObject(str);
                    parseJsonArray(jSONObject.getJSONArray(UpdateHelper.CONFIG_FILE_DATA), i);
                    ApsAdapterLog.d(TAG, "initConfigData, new format with version: "
                            + jSONObject.getDouble(UpdateHelper.CONFIG_FILE_VERSION));
                } else {
                    parseJsonArray(new JSONArray(str), i);
                    ApsAdapterLog.d(TAG, "initConfigData, old format without version");
                }
            } catch (Exception e) {
                ApsAdapterLog.e(TAG, "initConfigData, e: " + e.getMessage());
            }
        }
    }

    public static String getVendorTagConfig(String str) {
        HashMap<String, String> hashMap = sVendorTagConfigMap;
        if (hashMap == null) {
            return null;
        }
        return hashMap.get(str);
    }

    public static boolean setVendorTagConfigRus(String str, String str2) {
        HashMap<String, String> hashMap = sVendorTagConfigMap;
        if (hashMap != null) {
            hashMap.put(str, str2);
            return true;
        }
        return false;
    }

    public static String getSensorConfig(String str) {
        HashMap<String, String> hashMap = sSensorConfigMap;
        if (hashMap == null) {
            return null;
        }
        return hashMap.get(str);
    }

    public static void parseJsonArray(JSONArray jSONArray, int i) throws JSONException {
        if (jSONArray == null) {
            return;
        }
        int length = jSONArray.length();
        if (i == 1) {
            sSensorConfigMap = new HashMap<>(length);
        }
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
        if ((obj instanceof TotalCaptureResult)
                && (physicalCameraResults = ((TotalCaptureResult) obj).getPhysicalCameraResults()) != null
                && !physicalCameraResults.isEmpty()) {
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
                for (Map.Entry entry : (java.util.Set<Map.Entry>) ((HashMap) declaredField2.get(captureRequest))
                        .entrySet()) {
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

    public static long getAvailMemory(Context context) {
        ActivityManager.MemoryInfo memoryInfo = new ActivityManager.MemoryInfo();
        try {
            ((ActivityManager) context.getSystemService("activity")).getMemoryInfo(memoryInfo);
        } catch (Exception e) {
            e.printStackTrace();
        }
        return memoryInfo.availMem;
    }

    public static HardwareBuffer getHardwareBuffer(Image image) {
        if (image == null) {
            return null;
        }
        if (mbSupportOplusHardwareBuffer) {
            try {
                Method declaredMethod = image.getClass().getDeclaredMethod("getOplusHardwareBuffer", new Class[0]);
                declaredMethod.setAccessible(true);
                return (HardwareBuffer) declaredMethod.invoke(image, new Object[0]);
            } catch (Exception unused) {
                mbSupportOplusHardwareBuffer = false;
                ApsAdapterLog.w(TAG, "getHardwareBuffer, getOplusHardwareBuffer has exception, use getHardwareBuffer");
                return image.getHardwareBuffer();
            }
        }
        return image.getHardwareBuffer();
    }

    public static byte[] convertNV21DataToJpeg(byte[] bArr, int i, int i2) {
        try {
            ByteArrayOutputStream byteArrayOutputStream = new ByteArrayOutputStream();
            YuvImage yuvImage = new YuvImage(bArr, 17, i, i2, null);
            yuvImage.compressToJpeg(new Rect(0, 0, yuvImage.getWidth(), yuvImage.getHeight()), JPEG_QUALITY_NORMAL,
                    byteArrayOutputStream);
            byte[] byteArray = byteArrayOutputStream.toByteArray();
            byteArrayOutputStream.close();
            return byteArray;
        } catch (Exception e) {
            ApsAdapterLog.e(TAG, "convertNV21DataToJpeg", e);
            return null;
        }
    }

    public static byte[] getYuvDataWithoutPadding(Image image, int i, byte[] bArr) {
        if (image == null || image.getFormat() != 35) {
            ApsAdapterLog.e(TAG, "getYuvDataWithoutPadding, only support YUV_420_888");
            return null;
        }
        int width = image.getWidth();
        int height = image.getHeight();
        int format = image.getFormat();
        Rect cropRect = image.getCropRect();
        int width2 = ((cropRect.width() * cropRect.height()) * ImageFormat.getBitsPerPixel(format)) / 8;
        if (bArr == null || bArr.length < width2) {
            bArr = new byte[width2];
        }
        Image.Plane[] planes = image.getPlanes();
        int i2 = 0;
        ByteBuffer buffer = planes[0].getBuffer();
        ByteBuffer buffer2 = planes[1].getBuffer();
        if (17 == i) {
            buffer2 = planes[2].getBuffer();
        }
        if (image.getPlanes()[0].getRowStride() == image.getWidth()) {
            buffer.get(bArr, 0, buffer.remaining());
            buffer2.get(bArr, buffer.position(), buffer2.remaining());
        } else {
            int rowStride = image.getPlanes()[0].getRowStride() - width;
            int i3 = 0;
            int i4 = 0;
            while (i3 < height) {
                buffer.get(bArr, i4, width);
                if (i3 != height - 1) {
                    buffer.position(buffer.position() + rowStride);
                }
                i3++;
                i4 += width;
            }
            while (true) {
                int i5 = height / 2;
                if (i2 >= i5) {
                    break;
                }
                if (i2 != i5 - 1) {
                    buffer2.get(bArr, i4, width);
                    buffer2.position(buffer2.position() + rowStride);
                } else {
                    buffer2.get(bArr, i4, width - 1);
                }
                i2++;
                i4 += width;
            }
        }
        return bArr;
    }

    public static void sdkLoadLibrary(String str) {
        ApsAdapterLog.d(TAG, "sdkLoadLibrary, libName: " + str + " ,isQcomPlatform: " + sIsQcomPlatform);
        try {
            System.loadLibrary(str);
        } catch (Throwable unused) {
            ApsAdapterLog.d(TAG, "sdkLoadLibrary, do not find lib in /product/lib64/");
            if (sIsQcomPlatform) {
                System.loadLibrary(str + PLATFORM_SUFFIX_QCOM);
                return;
            }
            System.loadLibrary(str + PLATFORM_SUFFIX_MTK);
        }
    }

    public static boolean loadLibrary(String str) {
        ApsAdapterLog.d(TAG, "loadLibrary, libName: " + str);
        try {
            System.loadLibrary(str);
            return true;
        } catch (Throwable unused) {
            ApsAdapterLog.e(TAG, "loadLibrary, do not find lib: " + str);
            return false;
        }
    }

    public static void setIsQcomPlatform(boolean z) {
        sIsQcomPlatform = z;
    }

    public static boolean isSystemCamera() {
        return SYSTEM_CAMERA_PACKNAME.equals(ApsContextHolder.getContext().getPackageName());
    }
}
