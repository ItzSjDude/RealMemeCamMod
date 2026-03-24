package com.oplus.ocs.camera.common.util;

import android.app.ActivityManager;
import android.content.Context;
import android.graphics.ImageFormat;
import android.graphics.Point;
import android.graphics.Rect;
import android.graphics.YuvImage;
import android.hardware.camera2.CameraCharacteristics;
import android.hardware.camera2.CaptureRequest;
import android.hardware.camera2.CaptureResult;
import android.hardware.camera2.DngCreator;
import android.hardware.camera2.params.InputConfiguration;
import android.hardware.camera2.params.OutputConfiguration;
import android.hardware.camera2.params.SessionConfiguration;
import android.location.Location;
import android.media.Image;
import android.media.ImageReader;
import android.os.Environment;
import android.util.Log;
import android.util.Size;
import android.view.Display;
import android.view.Surface;
import android.view.WindowManager;
import com.android.tools.r8.annotations.SynthesizedClassMap;
import com.oplus.ocs.camera.SdkConfig;
import com.oplus.ocs.camera.appinterface.CameraPreviewCallbackAdapter;
import com.oplus.ocs.camera.common.parameter.Parameter;
import com.oplus.ocs.camera.common.parameter.apsadapter.ApsDecisionParameter;
import com.oplus.ocs.camera.common.surface.SurfaceWrapper;
import com.oplus.ocs.camera.consumer.apsAdapter.ApsCameraRequestTag;
import com.oplus.ocs.camera.consumer.apsAdapter.adapter.ImageCategory;
import com.oplus.ocs.camera.producer.info.CameraCharacteristicsHelper;
import com.oplus.ocs.camera.producer.info.CameraConfigHelper;
import java.io.ByteArrayOutputStream;
import java.io.File;
import java.io.FileOutputStream;
import java.io.IOException;
import java.lang.reflect.Field;
import java.nio.ByteBuffer;
import java.util.Arrays;
import java.util.Comparator;
import java.util.Iterator;
import java.util.LinkedList;
import java.util.List;
import java.util.Locale;
import java.util.Map;
import java.util.Objects;
import java.util.concurrent.CopyOnWriteArrayList;
import java.util.function.Predicate;
@SynthesizedClassMap({$$Lambda$bdDB5qtJ9up3KI34bjHEph1ELg.class, $$Lambda$Util$nLzO2shkziW4k8DaZ81WDGTDiVM.class})
/* loaded from: classes.dex */
public class Util {
    private static final int ALIGN_64_BIT = 64;
    private static final int BIT_NUM_OF_BYTE = 8;
    private static final String DEBUG_SAVE_PATH = Environment.getExternalStorageDirectory() + "/Android/data/com.oplus.camera/files/dump";
    private static final String FORMAT_BOOLEAN = "Boolean";
    private static final String FORMAT_BYTE = "byte";
    private static final String FORMAT_CHAR = "Character";
    private static final String FORMAT_DOUBLE = "Double";
    private static final String FORMAT_FLOAT = "Float";
    private static final String FORMAT_INTEGER = "Integer";
    private static final String FORMAT_LONG = "Long";
    private static final String FORMAT_SHORT = "Short";
    private static final String FORMAT_STRING = "String";
    private static final int JPEG_QUALITY_NORMAL = 95;
    private static final String KEY_IMAGEREADER_ACQUIRED_IMAGES = "mAcquiredImages";
    private static final double PICTURE_SIZE_ASPECT_TOLERANCE = 0.01d;
    private static final double PICTURE_SIZE_IMPRECISE_ASPECT_TOLERANCE = 0.05d;
    private static final String PLATFORM_SUFFIX_MTK = ".trustonic";
    private static final String PLATFORM_SUFFIX_QCOM = ".qti";
    public static final double RATIO_VALUE_4_3 = 1.3333333333333333d;
    private static final String SYSTEM_CAMERA_PACKNAME = "com.oplus.camera";
    private static final String TAG = "Util";
    private static final int UNSPECIFIED = -1;
    private static int sScreenHeight;
    private static int sScreenWidth;

    public static int clamp(int i, int i2, int i3) {
        return i > i3 ? i3 : i < i2 ? i2 : i;
    }

    public static byte[] convertNV21DataToJpeg(byte[] bArr, int i, int i2) {
        try {
            ByteArrayOutputStream byteArrayOutputStream = new ByteArrayOutputStream();
            YuvImage yuvImage = new YuvImage(bArr, 17, i, i2, null);
            yuvImage.compressToJpeg(new Rect(0, 0, yuvImage.getWidth(), yuvImage.getHeight()), 95, byteArrayOutputStream);
            byte[] byteArray = byteArrayOutputStream.toByteArray();
            if (byteArrayOutputStream != null) {
                byteArrayOutputStream.close();
            }
            return byteArray;
        } catch (Exception e) {
            CameraUnitLog.e(TAG, "convertNV21DataToJpeg", e);
            return null;
        }
    }

    public static byte[] getYuvDataWithoutPadding(Image image, int i, byte[] bArr) {
        if (image == null || image.getFormat() != 35) {
            CameraUnitLog.e(TAG, "getYuvDataWithoutPadding, only support YUV_420_888");
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

    public static byte[] getYUVDataWidthPadding(Image image, int i) {
        if (image == null || image.getFormat() != 35) {
            CameraUnitLog.e(TAG, "getYUVDataWidthPadding, only support YUV_420_888");
            return null;
        }
        int format = image.getFormat();
        int height = image.getHeight();
        int rowStride = image.getPlanes()[0].getRowStride();
        if (height % 64 != 0) {
            height = ((height / 64) + 1) * 64;
        }
        int i2 = rowStride * height;
        byte[] bArr = new byte[(ImageFormat.getBitsPerPixel(format) * i2) / 8];
        Image.Plane[] planes = image.getPlanes();
        ByteBuffer buffer = planes[0].getBuffer();
        ByteBuffer buffer2 = planes[1].getBuffer();
        if (17 == i) {
            buffer2 = planes[2].getBuffer();
        }
        buffer.get(bArr, 0, buffer.remaining());
        buffer2.get(bArr, i2, buffer2.remaining());
        buffer.position(0);
        buffer2.position(0);
        return bArr;
    }

    public static String saveBytesToFile(byte[] bArr, String str) {
        if (bArr == null || bArr.length == 0) {
            Log.e(TAG, "saveBytesToJpeg, bytes is empty");
            return null;
        }
        File file = new File(DEBUG_SAVE_PATH);
        if (!file.exists()) {
            file.mkdirs();
        }
        String absolutePath = new File(DEBUG_SAVE_PATH, str).getAbsolutePath();
        try {
            FileOutputStream fileOutputStream = new FileOutputStream(absolutePath);
            fileOutputStream.write(bArr);
            if (fileOutputStream != null) {
                fileOutputStream.close();
            }
        } catch (IOException e) {
            CameraUnitLog.e(TAG, "saveBytesToFile", e);
        }
        return absolutePath;
    }

    public static byte[] getYuvDataWithoutPadding(Image image, int i) {
        return getYuvDataWithoutPadding(image, i, null);
    }

    public static CameraImage buildJpegImage(Image image, String str) {
        return new CameraImage(convertNV21DataToJpeg(getYuvDataWithoutPadding(image, 17, null), image.getWidth(), image.getHeight()), 256, image.getWidth(), image.getHeight(), image.getWidth(), image.getHeight(), 90, image.getTimestamp(), str, 4);
    }

    public static CameraImage buildRawImage(CameraRequestTag cameraRequestTag, Image image, CaptureResult captureResult, long j) {
        Throwable th;
        ByteArrayOutputStream byteArrayOutputStream;
        IOException iOException;
        CameraUnitLog.v(TAG, "buildRawImage, rawImg: " + image + ", captureResult: " + captureResult + ", cameraType: " + cameraRequestTag.mCameraType);
        if (image != null) {
            try {
                if (32 == image.getFormat()) {
                    DngCreator dngCreator = new DngCreator(CameraCharacteristicsHelper.getCameraCharacteristicsWrapper(cameraRequestTag.mCameraType).get(), captureResult);
                    int i = cameraRequestTag.mOrientation;
                    if (i == 90) {
                        dngCreator.setOrientation(6);
                    } else if (i == 180) {
                        dngCreator.setOrientation(3);
                    } else if (i == 270) {
                        dngCreator.setOrientation(8);
                    }
                    Location location = cameraRequestTag.mLocation;
                    if (location != null) {
                        dngCreator.setLocation(location);
                    }
                    if (isQcomPlatform()) {
                        dngCreator.setDescription(CameraConfigHelper.getDngDescription(cameraRequestTag.mCameraType));
                    }
                    try {
                        byteArrayOutputStream = new ByteArrayOutputStream();
                        try {
                            try {
                                dngCreator.writeImage(byteArrayOutputStream, image);
                                CameraImage cameraImage = new CameraImage(byteArrayOutputStream.toByteArray(), 32, 0, 0, image.getWidth(), image.getHeight(), cameraRequestTag.mOrientation, j, cameraRequestTag.mCameraType, 3);
                                if (image != null) {
                                    image.close();
                                }
                                if (dngCreator != null) {
                                    dngCreator.close();
                                }
                                if (byteArrayOutputStream != null) {
                                    try {
                                        byteArrayOutputStream.close();
                                    } catch (IOException e) {
                                        e.printStackTrace();
                                    }
                                }
                                return cameraImage;
                            } catch (Throwable th2) {
                                th = th2;
                                if (image != null) {
                                    image.close();
                                }
                                if (dngCreator != null) {
                                    dngCreator.close();
                                }
                                if (byteArrayOutputStream != null) {
                                    try {
                                        byteArrayOutputStream.close();
                                    } catch (IOException e2) {
                                        e2.printStackTrace();
                                    }
                                }
                                throw th;
                            }
                        } catch (IOException e3) {
                            iOException = e3;
                            iOException.printStackTrace();
                            if (image != null) {
                                image.close();
                            }
                            if (dngCreator != null) {
                                dngCreator.close();
                            }
                            if (byteArrayOutputStream != null) {
                                try {
                                    byteArrayOutputStream.close();
                                } catch (IOException e4) {
                                    e4.printStackTrace();
                                }
                            }
                            return null;
                        }
                    } catch (IOException e5) {
                        iOException = e5;
                        byteArrayOutputStream = null;
                    } catch (Throwable th3) {
                        th = th3;
                        byteArrayOutputStream = null;
                    }
                }
            } catch (IllegalStateException e6) {
                CameraUnitLog.v(TAG, "buildRawImage, " + e6);
                return null;
            }
        }
        return null;
    }

    public static boolean isQcomPlatform() {
        Map<String, String> deviceInfoMap = CameraConfigHelper.getDeviceInfoMap();
        if (deviceInfoMap.size() == 0 || !deviceInfoMap.containsKey("platform")) {
            throw new RuntimeException("deviceInfo should be configured and initialized!");
        }
        return "qcom".equals(deviceInfoMap.get("platform"));
    }

    public static Rect getCropRegionForZoom(Float f, String str) {
        Rect rect = (Rect) CameraCharacteristicsHelper.getCameraCharacteristicsWrapper(str).get(CameraCharacteristics.SENSOR_INFO_ACTIVE_ARRAY_SIZE);
        Rect rect2 = new Rect();
        int width = rect.width() / 2;
        int height = rect.height() / 2;
        int width2 = (int) (rect.width() / (f.floatValue() * 2.0f));
        int height2 = (int) (rect.height() / (f.floatValue() * 2.0f));
        rect2.set(width - width2, height - height2, width + width2, height + height2);
        return rect2;
    }

    /* JADX WARN: Multi-variable type inference failed */
    public static <T> T getValue(String str, String str2) {
        if (FORMAT_BYTE.equals(str)) {
            return (T) new byte[Integer.parseInt(str2)];
        }
        if (FORMAT_SHORT.equals(str)) {
            return (T) new Short(str2);
        }
        if (FORMAT_INTEGER.equals(str)) {
            return (T) Integer.valueOf(str2);
        }
        if (FORMAT_LONG.equals(str)) {
            return (T) Long.valueOf(str2);
        }
        if (FORMAT_DOUBLE.equals(str)) {
            return (T) Double.valueOf(str2);
        }
        if (FORMAT_FLOAT.equals(str)) {
            return (T) Float.valueOf(str2);
        }
        if (FORMAT_BOOLEAN.equals(str)) {
            return (T) Boolean.valueOf(str2);
        }
        if (FORMAT_CHAR.equals(str)) {
            return (T) Character.valueOf(str2.toCharArray()[0]);
        }
        if (FORMAT_STRING.equals(str)) {
            return str2;
        }
        return null;
    }

    public static void initScreenHeightWidth() {
        Display defaultDisplay = ((WindowManager) ContextHolder.getContext().getSystemService("window")).getDefaultDisplay();
        Point point = new Point();
        defaultDisplay.getRealSize(point);
        sScreenHeight = Math.max(point.x, point.y);
        sScreenWidth = Math.min(point.x, point.y);
    }

    public static int getScreenHeight() {
        if (sScreenHeight == 0) {
            initScreenHeightWidth();
        }
        return sScreenHeight;
    }

    public static int getScreenWidth() {
        if (sScreenWidth == 0) {
            initScreenHeightWidth();
        }
        return sScreenWidth;
    }

    public static long getTotalMemory(Context context) {
        ActivityManager activityManager = (ActivityManager) context.getSystemService("activity");
        ActivityManager.MemoryInfo memoryInfo = new ActivityManager.MemoryInfo();
        try {
            activityManager.getMemoryInfo(memoryInfo);
        } catch (Exception unused) {
        }
        CameraUnitLog.e(TAG, "getTotalMemory, mi.totalMem" + memoryInfo.totalMem);
        return memoryInfo.totalMem;
    }

    public static long getAvailMemory(Context context) {
        ActivityManager activityManager = (ActivityManager) context.getSystemService("activity");
        ActivityManager.MemoryInfo memoryInfo = new ActivityManager.MemoryInfo();
        try {
            activityManager.getMemoryInfo(memoryInfo);
        } catch (Exception unused) {
        }
        CameraUnitLog.e(TAG, "getAvailMemory, mi.availMem" + memoryInfo.availMem);
        return memoryInfo.availMem;
    }

    public static ApsCameraRequestTag createApsRequestTag(CameraRequestTag cameraRequestTag, ImageCategory.MetaItemInfo metaItemInfo) {
        ApsCameraRequestTag apsCameraRequestTag = new ApsCameraRequestTag();
        if (metaItemInfo != null && metaItemInfo.get(ParameterKeys.KEY_LOGIC_CAMERA_ID) != null) {
            apsCameraRequestTag.mbFrontCamera = CameraCharacteristicsHelper.isFrontCamera(((Integer) metaItemInfo.get(ParameterKeys.KEY_LOGIC_CAMERA_ID)).intValue());
        }
        if (cameraRequestTag != null) {
            apsCameraRequestTag.mbInThirdApp = cameraRequestTag.mbInThirdApp;
        }
        apsCameraRequestTag.mbQcom = isQcomPlatform();
        apsCameraRequestTag.mbPIAI = false;
        apsCameraRequestTag.mTag = cameraRequestTag;
        return apsCameraRequestTag;
    }

    public static Size getMaxSizeByRatio(List<Size> list, double d) {
        Size[] sizeArr = new Size[list.size()];
        list.toArray(sizeArr);
        return getMaxSizeByRatio(sizeArr, d);
    }

    public static Size getMaxSizeByRatio(Size[] sizeArr, double d) {
        Size size = null;
        if (sizeArr == null || sizeArr.length == 0) {
            CameraUnitLog.w(TAG, "getMaxSizeByRatio, sizes is null or size is 0.");
            return null;
        }
        CameraUnitLog.d(TAG, "getMaxSizeByRatio, sizes: " + Arrays.toString(sizeArr) + ", targetRatio: " + d);
        for (Size size2 : sizeArr) {
            if (Math.abs((size2.getWidth() / size2.getHeight()) - d) <= 0.01d && (size == null || size.getHeight() < size2.getHeight())) {
                size = size2;
            }
        }
        if (size != null) {
            CameraUnitLog.v(TAG, "getMaxSizeByRatio, size: " + size + ", targetRatio: " + d);
        } else {
            CameraUnitLog.e(TAG, "getMaxSizeByRatio, optimalSize is null");
        }
        return size;
    }

    public static Size getImpreciseMaxSizeByRatio(Size[] sizeArr, double d) {
        return getImpreciseMaxSizeByRatio(sizeArr, d, -1);
    }

    public static Size getImpreciseMaxSizeByRatio(Size[] sizeArr, double d, int i) {
        Size size = null;
        if (sizeArr == null || sizeArr.length == 0) {
            return null;
        }
        for (Size size2 : sizeArr) {
            if (Math.abs((size2.getWidth() / size2.getHeight()) - d) <= PICTURE_SIZE_IMPRECISE_ASPECT_TOLERANCE && ((-1 == i || size2.getHeight() <= i) && (size == null || size.getHeight() < size2.getHeight()))) {
                size = size2;
            }
        }
        if (size != null) {
            CameraUnitLog.v(TAG, "getImpreciseMaxSizeByRatio, size: " + size.getHeight() + "x" + size.getWidth() + ", targetRatio: " + d);
        } else {
            CameraUnitLog.e(TAG, "getImpreciseMaxSizeByRatio, optimalSize is null");
        }
        return size;
    }

    public static Size getMinSizeByRatio(Size[] sizeArr, double d) {
        Size size = null;
        if (sizeArr == null || sizeArr.length == 0) {
            return null;
        }
        for (Size size2 : sizeArr) {
            if (Math.abs((size2.getWidth() / size2.getHeight()) - d) <= 0.01d && (size == null || size2.getHeight() < size.getHeight())) {
                size = size2;
            }
        }
        if (size != null) {
            CameraUnitLog.v(TAG, "getMinSizeByRatio, size: " + size.getHeight() + "x" + size.getWidth() + ", targetRatio: " + d);
        } else {
            CameraUnitLog.e(TAG, "getMinSizeByRatio, optimalSize is null");
        }
        return size;
    }

    public static boolean supportAlgo(String[] strArr, String str) {
        if (strArr != null) {
            for (String str2 : strArr) {
                if (str2 != null && str2.equals(str)) {
                    return true;
                }
            }
        }
        return false;
    }

    public static int getIndexOfNegativeEv(int[] iArr, int i) {
        int i2 = iArr[0];
        int i3 = 0;
        for (int i4 = 0; i4 < i; i4++) {
            if (iArr[i4] < i2) {
                i2 = iArr[i4];
                i3 = i4;
            }
        }
        return i3;
    }

    public static int getNightStateDecision(CameraPreviewCallbackAdapter.PreviewResult previewResult) {
        int intValue = previewResult != null ? ((Integer) previewResult.get(ApsDecisionParameter.KEY_PREVIEW_FEATURE_TYPE)).intValue() : 0;
        if (9 == intValue || 10 == intValue || 11 == intValue || 13 == intValue || 29 == intValue || 14 == intValue || 21 == intValue || 31 == intValue || 35 == intValue || 40 == intValue || 41 == intValue) {
            return ((Integer) previewResult.get(ApsDecisionParameter.KEY_PREVIEW_SUPER_NIGHT_SCENE)).intValue();
        }
        return 0;
    }

    public static boolean isHdrOn(CameraPreviewCallbackAdapter.PreviewResult previewResult) {
        boolean z = false;
        if (previewResult == null) {
            return false;
        }
        int intValue = ((Integer) previewResult.get(ApsDecisionParameter.KEY_PREVIEW_FEATURE_TYPE)).intValue();
        int intValue2 = ((Integer) previewResult.get(ApsDecisionParameter.KEY_PREVIEW_SCENE_MODE)).intValue();
        z = (4 == intValue || 8 == intValue || 16 == intValue || 24 == intValue || 26 == intValue || 30 == intValue || 34 == intValue || 27 == intValue || 28 == intValue || 32 == intValue || 36 == intValue || 37 == intValue || 27 == intValue2 || 28 == intValue2) ? true : true;
        CameraUnitLog.d(TAG, "isHdrOn, isHdrOn: " + z);
        return z;
    }

    public static boolean isBokehHDR(CameraPreviewCallbackAdapter.PreviewResult previewResult) {
        if (previewResult == null) {
            return false;
        }
        int intValue = ((Integer) previewResult.get(ApsDecisionParameter.KEY_PREVIEW_SCENE_MODE)).intValue();
        return 12 == intValue || 13 == intValue || 30 == intValue;
    }

    public static Size[] parserSizeLists(String str) {
        String[] split = str.toUpperCase().split("X");
        Size[] sizeArr = new Size[split.length / 2];
        for (int i = 0; i < sizeArr.length; i++) {
            int i2 = i * 2;
            sizeArr[i] = new Size(Integer.parseInt(split[i2]), Integer.parseInt(split[i2 + 1]));
        }
        return sizeArr;
    }

    public static void dumpAvailableSessionKeys(String str) {
        if (SdkConfig.META_DUMP) {
            CameraUnitLog.d(TAG, "dumpAvailableSessionKeys, ========================================");
            Iterator<CaptureRequest.Key<?>> it = CameraCharacteristicsHelper.getAvailableSessionKeys(str).iterator();
            while (it.hasNext()) {
                CameraUnitLog.e(TAG, "dumpAvailableSessionKeys, available keys: " + it.next().getName());
            }
            CameraUnitLog.d(TAG, "dumpAvailableSessionKeys, ========================================");
        }
    }

    public static void dumpSessionConfig(SessionConfiguration sessionConfiguration, LinkedList<SurfaceWrapper> linkedList, String str) {
        if (SdkConfig.META_DUMP) {
            CameraUnitLog.d(TAG, "dumpSessionConfig: ========================================");
            CameraUnitLog.d(TAG, "dumpSessionConfig: camera device id: " + str);
            CameraUnitLog.d(TAG, "dumpSessionConfig: Session Num: 0x" + Integer.toHexString(sessionConfiguration.getSessionType()));
            InputConfiguration inputConfiguration = sessionConfiguration.getInputConfiguration();
            CameraUnitLog.d(TAG, "dumpSessionConfig: inputConfiguration:" + inputConfiguration);
            if (inputConfiguration != null) {
                CameraUnitLog.d(TAG, String.format(Locale.ENGLISH, "dumpSessionConfig: inputConfiguration: %dx%d:%d", Integer.valueOf(inputConfiguration.getWidth()), Integer.valueOf(inputConfiguration.getHeight()), Integer.valueOf(inputConfiguration.getFormat())));
            }
            List<OutputConfiguration> outputConfigurations = sessionConfiguration.getOutputConfigurations();
            Iterator<SurfaceWrapper> it = linkedList.iterator();
            while (it.hasNext()) {
                CameraUnitLog.d(TAG, "dumpSessionConfig: surfaceWrapper: " + it.next());
            }
            CameraUnitLog.d(TAG, "dumpSessionConfig: outputConfigurations: " + outputConfigurations);
            if (outputConfigurations != null) {
                for (OutputConfiguration outputConfiguration : outputConfigurations) {
                    List<Surface> surfaces = outputConfiguration.getSurfaces();
                    CameraUnitLog.d(TAG, "dumpSessionConfig: surfaceList: " + surfaces);
                    Iterator<Surface> it2 = surfaces.iterator();
                    while (it2.hasNext()) {
                        CameraUnitLog.d(TAG, "dumpSessionConfig: surface: " + it2.next().toString());
                    }
                }
            }
            CaptureRequest sessionParameters = sessionConfiguration.getSessionParameters();
            CameraUnitLog.d(TAG, "dumpSessionConfig: SessionRequest: " + sessionParameters);
            dumpCaptureRequest(sessionParameters, Parameter.ParameterStage.CONFIGURE);
            CameraUnitLog.d(TAG, "dumpSessionConfig: ========================================");
        } else {
            CameraUnitLog.d(TAG, "dumpSessionConfig: ignore du-to release version");
        }
        CameraUnitLog.e(TAG, "dumpSessionConfig, createCaptureSession with operation mode: 0x" + Integer.toHexString(sessionConfiguration.getSessionType()).toUpperCase(Locale.ENGLISH));
    }

    public static void dumpCaptureRequest(CaptureRequest captureRequest, String str) {
        if (captureRequest == null || captureRequest.getKeys() == null) {
        }
    }

    public static void dumpYuvImage(Image image) {
        if (image != null) {
            String str = "YUV_" + image.getWidth() + "x" + image.getHeight() + "_" + image.getTimestamp() + ".yuv";
            saveBytesToFile(getYuvDataWithoutPadding(image, 35), str);
            CameraUnitLog.d(TAG, "dumpYuvImage, dump yuv image success, saved at " + DEBUG_SAVE_PATH + str);
        }
    }

    public static void dumpRawSensorImage(Image image, int i, long j, long j2) {
        if (image != null) {
            ByteBuffer buffer = image.getPlanes()[0].getBuffer();
            buffer.position(0);
            byte[] bArr = new byte[buffer.limit() - buffer.position()];
            buffer.get(bArr);
            String str = "FrameFlag_" + i + "_frameNumber_" + j + "_metaTimeStamp_" + j2 + "_RAW_" + image.getWidth() + "x" + image.getHeight() + "_" + image.getTimestamp() + ".raw";
            saveBytesToFile(bArr, str);
            CameraUnitLog.d(TAG, "dumpRawSensorImage, dump raw image success, saved at " + DEBUG_SAVE_PATH + str);
        }
    }

    public static boolean isSystemCamera() {
        return SYSTEM_CAMERA_PACKNAME.equals(ContextHolder.getContext().getPackageName());
    }

    public static boolean isFileExit(String str) {
        try {
            File file = new File(str);
            if (file.exists()) {
                return file.isFile();
            }
            return false;
        } catch (Exception e) {
            CameraUnitLog.e(TAG, "isFileExist, path: " + str + " ,e: " + e.getMessage());
            return false;
        }
    }

    public static Size getMaxSize(Size[] sizeArr) {
        return (Size) Arrays.stream(sizeArr).filter(new Predicate() { // from class: com.oplus.ocs.camera.common.util.-$$Lambda$bdDB5qtJ9up3KI34bj-HEph1ELg
            @Override // java.util.function.Predicate
            public final boolean test(Object obj) {
                return Objects.nonNull((Size) obj);
            }
        }).max(new Comparator() { // from class: com.oplus.ocs.camera.common.util.-$$Lambda$Util$nLzO2shkziW4k8DaZ81WDGTDiVM
            @Override // java.util.Comparator
            public final int compare(Object obj, Object obj2) {
                return Util.lambda$getMaxSize$0((Size) obj, (Size) obj2);
            }
        }).orElse(null);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static /* synthetic */ int lambda$getMaxSize$0(Size size, Size size2) {
        return (size.getWidth() * size.getHeight()) - (size2.getWidth() * size2.getHeight());
    }

    public static void dealWithImageOverflow(ImageReader imageReader, int i) {
        if (imageReader == null) {
            CameraUnitLog.w(TAG, "dealWithImageOverflow, reader is null");
            return;
        }
        try {
            Field declaredField = imageReader.getClass().getDeclaredField(KEY_IMAGEREADER_ACQUIRED_IMAGES);
            declaredField.setAccessible(true);
            CopyOnWriteArrayList copyOnWriteArrayList = (CopyOnWriteArrayList) declaredField.get(imageReader);
            if (copyOnWriteArrayList == null) {
                CameraUnitLog.w(TAG, "dealWithImageOverflow, list is null");
                return;
            }
            int size = copyOnWriteArrayList.size();
            if (size >= i) {
                CameraUnitLog.w(TAG, "dealWithImageOverflow, originSize: " + size + ", maxImage: " + i);
                Iterator it = copyOnWriteArrayList.iterator();
                while (it.hasNext()) {
                    Image image = (Image) it.next();
                    if (copyOnWriteArrayList.size() <= size / 2) {
                        return;
                    }
                    if (image != null) {
                        image.close();
                        copyOnWriteArrayList.remove(image);
                    }
                }
            }
        } catch (Exception e) {
            CameraUnitLog.e(TAG, "dealWithImageOverflow, get acquired images error.", e);
        }
    }

    public static int compareSize(Size size, Size size2) {
        if (size.equals(size2)) {
            return 0;
        }
        return (size.getWidth() * size.getHeight()) - (size2.getWidth() * size2.getHeight());
    }

    public static void sdkLoadLibrary(String str) {
        CameraUnitLog.d(TAG, "sdkLoadLibrary, libName: " + str + " ,isQcomPlatform: " + isQcomPlatform());
        try {
            System.loadLibrary(str);
        } catch (Throwable unused) {
            CameraUnitLog.d(TAG, "sdkLoadLibrary, do not find lib in /product/lib64/");
            if (isQcomPlatform()) {
                System.loadLibrary(str + PLATFORM_SUFFIX_QCOM);
                return;
            }
            System.loadLibrary(str + PLATFORM_SUFFIX_MTK);
        }
    }
}
