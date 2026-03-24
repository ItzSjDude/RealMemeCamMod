package com.oplus.ocs.camera.producer.info;

import android.hardware.camera2.CameraCharacteristics;
import android.hardware.camera2.CaptureRequest;
import android.hardware.camera2.params.StreamConfigurationMap;
import android.util.Range;
import android.util.Size;
import android.util.SparseArray;
import androidx.annotation.Nullable;
import com.oplus.ocs.camera.common.util.CameraConfigBase;
import com.oplus.ocs.camera.common.util.CameraConstant;
import com.oplus.ocs.camera.common.util.CameraUnitLog;
import com.oplus.ocs.camera.common.util.PlatformUtil;
import com.oplus.ocs.camera.common.util.Util;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Collections;
import java.util.HashMap;
import java.util.HashSet;
import java.util.List;
import java.util.Map;
import java.util.Set;
/* loaded from: classes.dex */
public final class CameraCharacteristicsHelper {
    private static final int BATCH_NUM_RATE = 30;
    private static final int DIVIDEND_360 = 360;
    private static final int DUAL_CAMERA_ID_NUMBERS = 3;
    public static final int FPS_NOT_FIND = 0;
    private static final int FPS_RANGE_GROUP_NUMBERS = 5;
    private static final int FPS_RANGE_INDEX_FPS_LOWER = 3;
    private static final int FPS_RANGE_INDEX_FPS_UPPER = 4;
    private static final int FPS_RANGE_INDEX_OPERATION_MODE = 0;
    private static final int FPS_RANGE_INDEX_STREAM_HEIGHT = 2;
    private static final int FPS_RANGE_INDEX_STREAM_WIDTH = 1;
    public static final int HDR_MODE_ON = 1;
    public static final int MTK_VHDR_AVAILABLE = 3;
    private static final String REAR_MAIN_CAMERA_ID = "0";
    private static final String TAG = "CameraCharacteristicsHelper";
    private static final int WHITE_BALANCE_UNIT_DISTANCE = 100;
    private static Map<String, CameraIdType> sCameraIdTypeMap = new HashMap();
    private static Map<String, Map<String, Range<Integer>>> sCameraTypeStreamFpsRangesMap = new HashMap();
    private static Map<String, CameraCharacteristicsWrapper> sCameraCharacteristicsMap = new HashMap();
    private static SparseArray<CameraIdType> sCameraIdArray = new SparseArray<>();
    private static ArrayList<String> sBackCameraIds = null;
    private static ArrayList<String> sFrontCameraIds = null;

    private static String getCameraTypeByTypeId(int i) {
        switch (i) {
            case 0:
                return "rear_main";
            case 1:
                return "front_main";
            case 2:
                return "rear_wide";
            case 3:
                return "front_wide";
            case 4:
            case 5:
            case 7:
            case 9:
            case 18:
            default:
                return null;
            case 6:
                return "rear_tele";
            case 8:
                return "rear_portrait";
            case 10:
                return "front_dual";
            case 11:
                return "rear_second_portrait";
            case 12:
                return "rear_sat";
            case 13:
                return CameraConstant.CameraType.REAR_MONO_CAMERA_1;
            case 14:
                return CameraConstant.CameraType.REAR_MONO_CAMERA_2;
            case 15:
                return "rear_portrait_mono_1";
            case 16:
                return "rear_portrait_mono_2";
            case 17:
                return "rear_macro";
            case 19:
                return "rear_microscope";
            case 20:
                return "rear_main_front_main";
            case 21:
                return "rear_main_rear_wide";
            case 22:
                return "rear_wide_rear_tele";
            case 23:
                return "rear_main_rear_tele";
        }
    }

    private CameraCharacteristicsHelper() {
    }

    /* JADX WARN: Removed duplicated region for block: B:48:0x0077 A[SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:53:0x0020 A[SYNTHETIC] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static void initialize(@androidx.annotation.NonNull android.content.Context r11, @androidx.annotation.NonNull java.util.List<java.lang.String> r12) {
        /*
            Method dump skipped, instructions count: 341
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.oplus.ocs.camera.producer.info.CameraCharacteristicsHelper.initialize(android.content.Context, java.util.List):void");
    }

    private static Map<String, Range<Integer>> getStreamFpsRangesMap(int[] iArr) {
        HashMap hashMap = new HashMap();
        for (int i = 0; i < iArr.length; i += 5) {
            hashMap.put(iArr[i + 0] + "_" + iArr[i + 1] + "_" + iArr[i + 2], new Range(Integer.valueOf(iArr[i + 3]), Integer.valueOf(iArr[i + 4])));
        }
        return hashMap;
    }

    public static CameraIdType getCameraIdType(String str) {
        return sCameraIdTypeMap.get(str);
    }

    public static Map<String, Range<Integer>> getStreamFpsRangesMap(String str) {
        return sCameraTypeStreamFpsRangesMap.get(str);
    }

    public static List<String> getCameraList(String str) {
        Set<String> physicalCameraIds;
        if ("rear_main_front_main".equals(str)) {
            physicalCameraIds = new HashSet<>();
            physicalCameraIds.add(String.valueOf(getCameraIdType("rear_main").getCameraId()));
            physicalCameraIds.add(String.valueOf(getCameraIdType("front_main").getCameraId()));
        } else if (CameraConstant.CameraType.REAR_MAIN_FRONT_SUB_CAMERA.equals(str)) {
            physicalCameraIds = new HashSet<>();
            physicalCameraIds.add(String.valueOf(getCameraIdType("rear_main").getCameraId()));
            physicalCameraIds.add(String.valueOf(getCameraIdType("front_wide").getCameraId()));
        } else {
            physicalCameraIds = getCameraCharacteristicsWrapper(str).get().getPhysicalCameraIds();
        }
        if (physicalCameraIds.size() > 0) {
            ArrayList arrayList = new ArrayList();
            for (String str2 : physicalCameraIds) {
                arrayList.add(getCameraIdType(Integer.parseInt(str2)).getCameraType());
            }
            return arrayList;
        }
        return Collections.singletonList(str);
    }

    public static CameraIdType getCameraIdType(int i) {
        return sCameraIdArray.get(i);
    }

    public static CameraCharacteristicsWrapper getCameraCharacteristicsWrapper(String str) {
        return sCameraCharacteristicsMap.get(str);
    }

    public static int getRearSubCameraId() {
        CameraIdType cameraIdType = getCameraIdType("rear_wide");
        if (cameraIdType != null) {
            return cameraIdType.getCameraId();
        }
        ArrayList<String> arrayList = sBackCameraIds;
        if (arrayList == null || 2 >= arrayList.size()) {
            return 0;
        }
        ArrayList<String> arrayList2 = sBackCameraIds;
        CameraIdType cameraIdType2 = getCameraIdType(arrayList2.get(arrayList2.size() - 2));
        if (cameraIdType2 != null) {
            return cameraIdType2.getCameraId();
        }
        return 0;
    }

    public static int getRearMainCameraId() {
        CameraIdType cameraIdType;
        CameraIdType cameraIdType2 = getCameraIdType("rear_main");
        if (cameraIdType2 != null) {
            return cameraIdType2.getCameraId();
        }
        ArrayList<String> arrayList = sBackCameraIds;
        if (arrayList == null || arrayList.size() <= 0 || (cameraIdType = getCameraIdType(sBackCameraIds.get(0))) == null) {
            return 0;
        }
        return cameraIdType.getCameraId();
    }

    public static int getRearSATCameraId() {
        CameraIdType cameraIdType = getCameraIdType("rear_sat");
        if (cameraIdType != null) {
            return cameraIdType.getCameraId();
        }
        ArrayList<String> arrayList = sBackCameraIds;
        if (arrayList == null || 2 >= arrayList.size()) {
            return 0;
        }
        ArrayList<String> arrayList2 = sBackCameraIds;
        CameraIdType cameraIdType2 = getCameraIdType(arrayList2.get(arrayList2.size() - 2));
        if (cameraIdType2 != null) {
            return cameraIdType2.getCameraId();
        }
        return 0;
    }

    public static List<String> getAllSupportCameraType() {
        CameraUnitLog.traceBeginSection("getAllSupportCameraType");
        CameraConfigHelper.blockCameraIdTypeIfNeeded();
        ArrayList arrayList = new ArrayList();
        for (int i = 0; i < sCameraIdArray.size(); i++) {
            arrayList.add(sCameraIdArray.valueAt(i).getCameraType());
        }
        CameraUnitLog.traceEndSection("getAllSupportCameraType");
        return arrayList;
    }

    public static boolean isFrontCamera(int i) {
        return sFrontCameraIds.contains(String.valueOf(i));
    }

    public static CameraCharacteristics getCameraInfo(int i) {
        if (i <= getNumberOfCameras() - 1) {
            return sCameraCharacteristicsMap.get(sCameraIdArray.get(i).getCameraType()).get();
        }
        return sCameraCharacteristicsMap.get(sCameraIdArray.get(0).getCameraType()).get();
    }

    public static int getNumberOfCameras() {
        Map<String, CameraIdType> map = sCameraIdTypeMap;
        if (map != null) {
            return map.size();
        }
        return 0;
    }

    public static int getLogicalCameraType(String str) {
        int[] iArr;
        if (PlatformUtil.isQualcommPlatform()) {
            iArr = (int[]) getCameraCharacteristicsWrapper(str).get(CameraCharacteristicsWrapper.KEY_LOGICAL_CAMERA_TYPE);
        } else {
            iArr = (int[]) getCameraCharacteristicsWrapper(str).get(CameraCharacteristicsWrapper.KEY_OPLUS_LOGICAL_CAMERA_TYPE);
        }
        if (iArr != null && iArr.length > 0) {
            return iArr[0];
        }
        CameraUnitLog.e(TAG, "getLogicalCameraType, cameraTypeArray is null or the length is 0");
        return 0;
    }

    public static String[] getPhysicalCameraIds(String str) {
        CameraUnitLog.d(TAG, "getPhysicalCameraIds, cameraType: " + str);
        CameraCharacteristicsWrapper cameraCharacteristicsWrapper = getCameraCharacteristicsWrapper(str);
        int[] iArr = (int[]) cameraCharacteristicsWrapper.get(CameraCharacteristics.REQUEST_AVAILABLE_CAPABILITIES);
        if (iArr != null) {
            for (int i : iArr) {
                if (11 == i) {
                    Set<String> physicalCameraIds = cameraCharacteristicsWrapper.get().getPhysicalCameraIds();
                    CameraUnitLog.d(TAG, "getPhysicalCameraIds, physicalIds: " + physicalCameraIds);
                    return (String[]) physicalCameraIds.toArray(new String[0]);
                }
            }
            return null;
        }
        return null;
    }

    @Nullable
    public static Size getTuningSize(String str) {
        int[] iArr = (int[]) getCameraCharacteristicsWrapper(str).get(CameraCharacteristicsWrapper.KEY_MTK_TUNING_DATA_RAW_SIZE);
        if (iArr == null || iArr.length <= 1) {
            return null;
        }
        return new Size(iArr[0], iArr[1]);
    }

    public static Size[] getSizeListByFormat(String str, int i) {
        CameraCharacteristicsWrapper cameraCharacteristicsWrapper = getCameraCharacteristicsWrapper(str);
        if (cameraCharacteristicsWrapper == null) {
            CameraUnitLog.w(TAG, "getSizeByFormat, get CameraCharacteristicsWrapper failed!!!");
            return null;
        }
        StreamConfigurationMap streamConfigurationMap = cameraCharacteristicsWrapper.getStreamConfigurationMap();
        if (streamConfigurationMap != null) {
            return streamConfigurationMap.getOutputSizes(i);
        }
        return null;
    }

    public static Size getSizeByFormat(String str, double d, int i) {
        Size[] sizeListByFormat = getSizeListByFormat(str, i);
        if (sizeListByFormat == null) {
            CameraUnitLog.e(TAG, "getSizeByFormat, get CameraCharacteristicsWrapper failed!!!");
        }
        if ("rear_tele".equals(str) && 32 == i) {
            return Util.getImpreciseMaxSizeByRatio(sizeListByFormat, d);
        }
        if (538982489 == i || (((Boolean) CameraConfigHelper.getConfigValue(CameraConfigBase.KEY_REAR_SINGLE_BOKEH_SUPPORT, false)).booleanValue() && "rear_portrait_mono_1".equals(str))) {
            return Util.getOptimalPreviewSize(sizeListByFormat, d);
        }
        return Util.getMaxSizeByRatio(sizeListByFormat, d);
    }

    public static Size getSmallSizeByFormat(String str, double d, int i) {
        int[] iArr;
        int i2;
        CameraCharacteristicsWrapper cameraCharacteristicsWrapper = getCameraCharacteristicsWrapper(str);
        if (cameraCharacteristicsWrapper == null) {
            CameraUnitLog.w(TAG, "getSizeByFormat, get CameraCharacteristicsWrapper failed!!!");
            return null;
        }
        Size[] outputSizes = ((StreamConfigurationMap) cameraCharacteristicsWrapper.get(CameraCharacteristics.SCALER_STREAM_CONFIGURATION_MAP)).getOutputSizes(i);
        ArrayList arrayList = new ArrayList();
        arrayList.addAll(Arrays.asList(outputSizes));
        if (((Boolean) CameraConfigHelper.getConfigValue(CameraConfigBase.KEY_SUPPORT_CONFIGURE_STREAM_SIZE_CUSTOM, false)).booleanValue() && (iArr = (int[]) cameraCharacteristicsWrapper.get(CameraCharacteristicsWrapper.KEY_CUSTOM_JPEG_SIZE)) != null) {
            for (int i3 = 0; i3 < iArr.length; i3++) {
                if (i3 % 2 == 0 && (i2 = i3 + 1) < iArr.length) {
                    arrayList.add(new Size(iArr[i3], iArr[i2]));
                }
            }
        }
        return Util.getMinSizeByRatio((Size[]) arrayList.toArray(new Size[arrayList.size()]), d);
    }

    public static int[] getAvailableSmvrModes(String str, int i, int i2) {
        CameraCharacteristicsWrapper cameraCharacteristicsWrapper = getCameraCharacteristicsWrapper(str);
        if (cameraCharacteristicsWrapper == null) {
            CameraUnitLog.w(TAG, "getAvailableSmvrModes, get CameraCharacteristicsWrapper failed!!!");
            return null;
        }
        int[] iArr = new int[2];
        int[] iArr2 = (int[]) cameraCharacteristicsWrapper.get(CameraCharacteristicsWrapper.KEY_MTK_SMVR_FEATURE_AVAILABLE_SMVR_MODES);
        if (iArr2 != null) {
            try {
                if (iArr2.length > 0) {
                    int i3 = 0;
                    while (true) {
                        if (i3 >= iArr2.length) {
                            break;
                        } else if (iArr2[i3] / 360 == i / 360) {
                            iArr[0] = iArr2[i3 + 1];
                            iArr[1] = iArr2[i3 + 2];
                            break;
                        } else {
                            i3++;
                        }
                    }
                    if (!isFrontCamera(getCameraIdType(str).getCameraId()) && iArr[0] > i2 && i2 > 0) {
                        iArr[0] = i2;
                        iArr[1] = i2 / 30;
                    }
                    CameraUnitLog.d(TAG, "getAvailableSmvrModes, fps: " + iArr[0] + ", batch num: " + iArr[1] + ", videoFps: " + i2);
                    return iArr;
                }
            } catch (IndexOutOfBoundsException e) {
                CameraUnitLog.w(TAG, "getAvailableSmvrModes, There is a problem with configure of the smvrfeature value.", e);
            }
        }
        return null;
    }

    public static List<CaptureRequest.Key<?>> getAvailableSessionKeys(String str) {
        CameraCharacteristicsWrapper cameraCharacteristicsWrapper = getCameraCharacteristicsWrapper(str);
        if (cameraCharacteristicsWrapper == null) {
            CameraUnitLog.w(TAG, "getAvailableSessionKeys, get CameraCharacteristicsWrapper failed!!!");
            return null;
        }
        return cameraCharacteristicsWrapper.get().getAvailableSessionKeys();
    }

    public static int[] getTuningDataSurfaceSizes(String str, String str2) {
        CameraCharacteristicsWrapper cameraCharacteristicsWrapper = getCameraCharacteristicsWrapper(str);
        if ("tuning_data_yuv".equals(str2)) {
            return (int[]) cameraCharacteristicsWrapper.get(CameraCharacteristicsWrapper.KEY_MTK_TUNING_DATA_YUV_SIZE);
        }
        if ("tuning_data_raw".equals(str2)) {
            return (int[]) cameraCharacteristicsWrapper.get(CameraCharacteristicsWrapper.KEY_MTK_TUNING_DATA_RAW_SIZE);
        }
        return null;
    }

    public static Size getTuningDataSurfaceSize(String str, String str2) {
        int[] tuningDataSurfaceSizes = getTuningDataSurfaceSizes(str, str2);
        if (tuningDataSurfaceSizes == null || tuningDataSurfaceSizes.length < 2) {
            return null;
        }
        return new Size(tuningDataSurfaceSizes[0], tuningDataSurfaceSizes[1]);
    }

    public static List<Integer> getColorTemperatureValueList(String str) {
        CameraCharacteristics.Key<int[]> key;
        if (PlatformUtil.isQualcommPlatform()) {
            key = CameraCharacteristicsWrapper.KEY_QUALCOMM_COLOR_TEMPERATURE_RANGE;
        } else {
            key = CameraCharacteristicsWrapper.KEY_MTK_COLOR_TEMPERATURE_RANGE;
        }
        int[] iArr = (int[]) getCameraCharacteristicsWrapper(str).get(key);
        if (iArr == null) {
            CameraUnitLog.e(TAG, "get color temperature range failed, return null");
            return null;
        }
        int i = iArr[0];
        int i2 = ((iArr[1] - i) / 100) + 1;
        if (i2 <= 0) {
            CameraUnitLog.e(TAG, "getColorTemperatureValueList, return null, valueNum: " + i2);
            return null;
        }
        ArrayList arrayList = new ArrayList(i2);
        for (int i3 = 0; i3 < i2; i3++) {
            arrayList.add(Integer.valueOf((i3 * 100) + i));
        }
        return arrayList;
    }

    public static boolean isSupportBackDualCamera() {
        ArrayList<String> arrayList = sBackCameraIds;
        return arrayList != null && arrayList.size() >= 3;
    }

    public static boolean isSupportFrontDualCamera() {
        ArrayList<String> arrayList = sFrontCameraIds;
        return arrayList != null && arrayList.size() >= 3;
    }

    public static boolean isSupportCShot(String str) {
        CameraCharacteristicsWrapper cameraCharacteristicsWrapper;
        boolean z;
        boolean z2;
        if (PlatformUtil.isQualcommPlatform() || (cameraCharacteristicsWrapper = sCameraCharacteristicsMap.get(str)) == null) {
            return false;
        }
        int[] intArrayConfig = cameraCharacteristicsWrapper.getIntArrayConfig(CameraCharacteristicsWrapper.KEY_STATIC_CSHOT_SUPPORT);
        int[] intArrayConfig2 = cameraCharacteristicsWrapper.getIntArrayConfig(CameraCharacteristicsWrapper.KEY_STATIC_SUPPORT_EARLY_NOTIFY);
        if (intArrayConfig != null && intArrayConfig.length > 0) {
            for (int i : intArrayConfig) {
                if (i == 1) {
                    z = true;
                    break;
                }
            }
        }
        z = false;
        if (intArrayConfig2 != null && intArrayConfig2.length > 0) {
            for (int i2 : intArrayConfig2) {
                if (i2 == 1) {
                    z2 = true;
                    break;
                }
            }
        }
        z2 = false;
        return z && z2;
    }

    public static int[] getAvailableMultiCameraFeature(String str) {
        CameraCharacteristicsWrapper cameraCharacteristicsWrapper = getCameraCharacteristicsWrapper(str);
        if (cameraCharacteristicsWrapper == null) {
            CameraUnitLog.w(TAG, "getAvailableMultiCameraFeature, get CameraCharacteristicsWrapper failed!!!");
            return null;
        }
        return (int[]) cameraCharacteristicsWrapper.get(CameraCharacteristicsWrapper.KEY_FEATURE_AVAILABLE_MULTI_CAMERA_MODE);
    }
}
