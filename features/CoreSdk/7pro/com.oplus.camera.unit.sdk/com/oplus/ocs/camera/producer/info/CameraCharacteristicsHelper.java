package com.oplus.ocs.camera.producer.info;

import android.content.Context;
import android.hardware.camera2.CameraAccessException;
import android.hardware.camera2.CameraCharacteristics;
import android.hardware.camera2.CameraManager;
import android.hardware.camera2.CaptureRequest;
import android.hardware.camera2.params.StreamConfigurationMap;
import android.util.Size;
import android.util.SparseArray;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import com.oplus.ocs.camera.appinterface.adapter.CameraAdapterUtils;
import com.oplus.ocs.camera.common.util.ApsConstant;
import com.oplus.ocs.camera.common.util.CameraConfigBase;
import com.oplus.ocs.camera.common.util.CameraConstant;
import com.oplus.ocs.camera.common.util.CameraUnitLog;
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
    private static final int DIVIDEND_360 = 360;
    private static final int DUAL_CAMERA_ID_NUMBERS = 3;
    public static final int HDR_MODE_ON = 1;
    public static final int MTK_VHDR_AVAILABLE = 3;
    private static final String TAG = "CameraCharacteristicsHelper";
    private static final int WHITE_BALANCE_UNIT_DISTANCE = 100;
    private static ArrayList<String> sBackCameraIds;
    private static ArrayList<String> sFrontCameraIds;
    private static Map<String, CameraIdType> sCameraIdTypeMap = new HashMap();
    private static Map<String, CameraCharacteristicsWrapper> sCameraCharacteristicsMap = new HashMap();
    private static SparseArray<CameraIdType> sCameraIdArray = new SparseArray<>();

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
            case ApsConstant.FEATURE_TYPE_AINR /* 18 */:
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

    public static void initialize(@NonNull Context context, @NonNull List<String> list) {
        CameraManager cameraManager = (CameraManager) context.getSystemService("camera");
        if (CameraUnitLog.isDebugLogOn()) {
            initCameraIdList(cameraManager);
        }
        sBackCameraIds = new ArrayList<>();
        sFrontCameraIds = new ArrayList<>();
        for (String str : list) {
            CameraCharacteristicsWrapper cameraCharacteristicsWrapper = null;
            try {
                cameraCharacteristicsWrapper = new CameraCharacteristicsWrapper(cameraManager.getCameraCharacteristics(str));
            } catch (CameraAccessException | IllegalArgumentException e) {
                CameraUnitLog.e(TAG, "initialize, get CameraCharacteristics failed for camera: " + str, e);
            }
            if (cameraCharacteristicsWrapper != null) {
                int[] iArr = (int[]) cameraCharacteristicsWrapper.get(CameraCharacteristicsWrapper.KEY_CUSTOM_CAMERA_TYPE);
                int i = iArr != null ? iArr[0] : -1;
                if (i > -1) {
                    String cameraTypeByTypeId = getCameraTypeByTypeId(i);
                    CameraUnitLog.v(TAG, "initialize, cameraId: " + str + ", cameraIdType: " + i + ", cameraType: " + cameraTypeByTypeId);
                    CameraIdType cameraIdType = new CameraIdType(cameraTypeByTypeId, Integer.parseInt(str));
                    sCameraIdTypeMap.put(cameraTypeByTypeId, cameraIdType);
                    sCameraIdArray.put(cameraIdType.getCameraId(), cameraIdType);
                    sCameraCharacteristicsMap.put(cameraTypeByTypeId, cameraCharacteristicsWrapper);
                } else {
                    CameraUnitLog.d(TAG, "initialize, cameraId : " + str + "'s cameraIdType is not configure!");
                }
                if (isFrontCamera(Integer.parseInt(str))) {
                    sFrontCameraIds.add(str);
                } else {
                    sBackCameraIds.add(str);
                }
            }
        }
        CameraIdType cameraIdType2 = new CameraIdType("rear_main_front_main", 100);
        sCameraIdTypeMap.put("rear_main_front_main", cameraIdType2);
        sCameraIdArray.put(100, cameraIdType2);
        CameraIdType cameraIdType3 = new CameraIdType(CameraConstant.CameraType.REAR_MAIN_FRONT_SUB_CAMERA, 101);
        sCameraIdTypeMap.put(CameraConstant.CameraType.REAR_MAIN_FRONT_SUB_CAMERA, cameraIdType3);
        sCameraIdArray.put(101, cameraIdType3);
        try {
            sCameraCharacteristicsMap.put("rear_main_front_main", new CameraCharacteristicsWrapper(cameraManager.getCameraCharacteristics("1")));
            sCameraCharacteristicsMap.put(CameraConstant.CameraType.REAR_MAIN_FRONT_SUB_CAMERA, new CameraCharacteristicsWrapper(cameraManager.getCameraCharacteristics("1")));
        } catch (CameraAccessException e2) {
            e2.printStackTrace();
        }
    }

    private static void initCameraIdList(CameraManager cameraManager) {
        try {
            String[] cameraIdList = cameraManager.getCameraIdList();
            if (cameraIdList == null || cameraIdList.length <= 0) {
                CameraUnitLog.e(TAG, "initCameraIdList,get CameraIdList from HAL is null");
                return;
            }
            for (String str : cameraIdList) {
                CameraUnitLog.d(TAG, "initCameraIdList,get CameraIdList from HAL,cameraId: " + str);
            }
        } catch (CameraAccessException e) {
            CameraUnitLog.e(TAG, "initCameraIdList,get CameraIdList from HAL failed, message:" + e.getMessage());
        }
    }

    public static CameraIdType getCameraIdType(String str) {
        return sCameraIdTypeMap.get(str);
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
        CameraIdType cameraIdType;
        CameraIdType cameraIdType2 = getCameraIdType("rear_wide");
        if (cameraIdType2 != null) {
            return cameraIdType2.getCameraId();
        }
        if (sBackCameraIds == null || 2 >= sBackCameraIds.size() || (cameraIdType = getCameraIdType(sBackCameraIds.get(sBackCameraIds.size() - 2))) == null) {
            return 0;
        }
        return cameraIdType.getCameraId();
    }

    public static int getRearMainCameraId() {
        CameraIdType cameraIdType;
        CameraIdType cameraIdType2 = getCameraIdType("rear_main");
        if (cameraIdType2 != null) {
            return cameraIdType2.getCameraId();
        }
        if (sBackCameraIds == null || sBackCameraIds.size() <= 0 || (cameraIdType = getCameraIdType(sBackCameraIds.get(0))) == null) {
            return 0;
        }
        return cameraIdType.getCameraId();
    }

    public static int getRearSATCameraId() {
        CameraIdType cameraIdType;
        CameraIdType cameraIdType2 = getCameraIdType("rear_sat");
        if (cameraIdType2 != null) {
            return cameraIdType2.getCameraId();
        }
        if (sBackCameraIds == null || 2 >= sBackCameraIds.size() || (cameraIdType = getCameraIdType(sBackCameraIds.get(sBackCameraIds.size() - 2))) == null) {
            return 0;
        }
        return cameraIdType.getCameraId();
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
        Object obj = getCameraInfo(i).get(CameraCharacteristics.LENS_FACING);
        return obj != null && ((Integer) obj).intValue() == 0;
    }

    public static CameraCharacteristics getCameraInfo(int i) {
        if (i <= getNumberOfCameras() - 1) {
            return sCameraCharacteristicsMap.get(sCameraIdArray.get(i).getCameraType()).get();
        }
        return sCameraCharacteristicsMap.get(sCameraIdArray.get(0).getCameraType()).get();
    }

    public static int getNumberOfCameras() {
        if (sCameraIdTypeMap != null) {
            return sCameraIdTypeMap.size();
        }
        return 0;
    }

    public static int getLogicalCameraType(String str) {
        int[] iArr;
        if (Util.isQcomPlatform()) {
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

    public static Size getSizeByFormat(String str, double d, int i) {
        CameraCharacteristicsWrapper cameraCharacteristicsWrapper = getCameraCharacteristicsWrapper(str);
        if (cameraCharacteristicsWrapper == null) {
            CameraUnitLog.w(TAG, "getSizeByFormat, get CameraCharacteristicsWrapper failed!!!");
            return null;
        }
        Size[] outputSizes = ((StreamConfigurationMap) cameraCharacteristicsWrapper.get(CameraCharacteristics.SCALER_STREAM_CONFIGURATION_MAP)).getOutputSizes(i);
        if ("rear_tele".equals(str) && 32 == i) {
            return Util.getImpreciseMaxSizeByRatio(outputSizes, d);
        }
        return Util.getMaxSizeByRatio(outputSizes, d);
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
        if (((Boolean) CameraAdapterUtils.getConfigValue(CameraConfigBase.KEY_SUPPORT_CONFIGURE_STREAM_SIZE_CUSTOM, false)).booleanValue() && (iArr = (int[]) cameraCharacteristicsWrapper.get(CameraCharacteristicsWrapper.KEY_CUSTOM_JPEG_SIZE)) != null) {
            for (int i3 = 0; i3 < iArr.length; i3++) {
                if (i3 % 2 == 0 && (i2 = i3 + 1) < iArr.length) {
                    arrayList.add(new Size(iArr[i3], iArr[i2]));
                }
            }
        }
        return Util.getMinSizeByRatio((Size[]) arrayList.toArray(new Size[arrayList.size()]), d);
    }

    /* JADX WARN: Code restructure failed: missing block: B:15:0x002d, code lost:
        r2[0] = r8[r4 + 1];
        r2[1] = r8[r4 + 2];
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static int[] getAvailableSmvrModes(java.lang.String r8, int r9) {
        /*
            com.oplus.ocs.camera.producer.info.CameraCharacteristicsWrapper r8 = getCameraCharacteristicsWrapper(r8)
            r0 = 0
            if (r8 != 0) goto Lf
            java.lang.String r8 = "CameraCharacteristicsHelper"
            java.lang.String r9 = "getAvailableSmvrModes, get CameraCharacteristicsWrapper failed!!!"
            com.oplus.ocs.camera.common.util.CameraUnitLog.w(r8, r9)
            return r0
        Lf:
            r1 = 2
            int[] r2 = new int[r1]
            android.hardware.camera2.CameraCharacteristics$Key<int[]> r3 = com.oplus.ocs.camera.producer.info.CameraCharacteristicsWrapper.KEY_MTK_SMVR_FEATURE_AVAILABLE_SMVR_MODES
            java.lang.Object r8 = r8.get(r3)
            int[] r8 = (int[]) r8
            if (r8 == 0) goto L68
            int r3 = r8.length     // Catch: java.lang.IndexOutOfBoundsException -> L5f
            if (r3 <= 0) goto L68
            r3 = 0
            r4 = r3
        L21:
            int r5 = r8.length     // Catch: java.lang.IndexOutOfBoundsException -> L5f
            r6 = 1
            if (r4 >= r5) goto L3c
            r5 = r8[r4]     // Catch: java.lang.IndexOutOfBoundsException -> L5f
            int r5 = r5 / 360
            int r7 = r9 / 360
            if (r5 != r7) goto L39
            int r9 = r4 + 1
            r9 = r8[r9]     // Catch: java.lang.IndexOutOfBoundsException -> L5f
            r2[r3] = r9     // Catch: java.lang.IndexOutOfBoundsException -> L5f
            int r4 = r4 + r1
            r8 = r8[r4]     // Catch: java.lang.IndexOutOfBoundsException -> L5f
            r2[r6] = r8     // Catch: java.lang.IndexOutOfBoundsException -> L5f
            goto L3c
        L39:
            int r4 = r4 + 1
            goto L21
        L3c:
            java.lang.String r8 = "CameraCharacteristicsHelper"
            java.lang.StringBuilder r9 = new java.lang.StringBuilder
            r9.<init>()
            java.lang.String r0 = "getAvailableSmvrModes, fps: "
            r9.append(r0)
            r0 = r2[r3]
            r9.append(r0)
            java.lang.String r0 = ", batch num: "
            r9.append(r0)
            r0 = r2[r6]
            r9.append(r0)
            java.lang.String r9 = r9.toString()
            com.oplus.ocs.camera.common.util.CameraUnitLog.d(r8, r9)
            return r2
        L5f:
            r8 = move-exception
            java.lang.String r9 = "CameraCharacteristicsHelper"
            java.lang.String r1 = "getAvailableSmvrModes, There is a problem with configure of the smvrfeature value."
            com.oplus.ocs.camera.common.util.CameraUnitLog.w(r9, r1, r8)
            return r0
        L68:
            return r0
        */
        throw new UnsupportedOperationException("Method not decompiled: com.oplus.ocs.camera.producer.info.CameraCharacteristicsHelper.getAvailableSmvrModes(java.lang.String, int):int[]");
    }

    public static List<CaptureRequest.Key<?>> getAvailableSessionKeys(String str) {
        CameraCharacteristicsWrapper cameraCharacteristicsWrapper = getCameraCharacteristicsWrapper(str);
        if (cameraCharacteristicsWrapper == null) {
            CameraUnitLog.w(TAG, "getAvailableSessionKeys, get CameraCharacteristicsWrapper failed!!!");
            return null;
        }
        return cameraCharacteristicsWrapper.get().getAvailableSessionKeys();
    }

    public static Size getTuningDataSurfaceSize(String str, String str2) {
        int[] iArr;
        CameraCharacteristicsWrapper cameraCharacteristicsWrapper = getCameraCharacteristicsWrapper(str);
        if ("tuning_data_yuv".equals(str2)) {
            iArr = (int[]) cameraCharacteristicsWrapper.get(CameraCharacteristicsWrapper.KEY_MTK_TUNING_DATA_YUV_SIZE);
        } else {
            iArr = "tuning_data_raw".equals(str2) ? (int[]) cameraCharacteristicsWrapper.get(CameraCharacteristicsWrapper.KEY_MTK_TUNING_DATA_RAW_SIZE) : null;
        }
        if (iArr == null || iArr.length < 2) {
            return null;
        }
        return new Size(iArr[0], iArr[1]);
    }

    public static List<Integer> getColorTemperatureValueList(String str) {
        CameraCharacteristics.Key<int[]> key;
        if (Util.isQcomPlatform()) {
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
        return sBackCameraIds != null && sBackCameraIds.size() >= 3;
    }

    public static boolean isSupportFrontDualCamera() {
        return sFrontCameraIds != null && sFrontCameraIds.size() >= 3;
    }

    public static boolean isSupportCShot(String str) {
        CameraCharacteristicsWrapper cameraCharacteristicsWrapper;
        boolean z;
        boolean z2;
        if (Util.isQcomPlatform() || (cameraCharacteristicsWrapper = sCameraCharacteristicsMap.get(str)) == null) {
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
}
