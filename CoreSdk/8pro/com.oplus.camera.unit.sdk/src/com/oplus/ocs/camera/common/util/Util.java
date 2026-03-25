package com.oplus.ocs.camera.common.util;

import android.app.ActivityManager;
import android.content.Context;
import android.graphics.ImageFormat;
import android.graphics.Rect;
import android.graphics.YuvImage;
import android.hardware.HardwareBuffer;
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

import com.oplus.ocs.camera.SdkConfig;
import com.oplus.ocs.camera.appinterface.CameraPreviewCallbackAdapter;
import com.oplus.ocs.camera.common.parameter.Parameter;
import com.oplus.ocs.camera.common.parameter.apsadapter.ApsDecisionParameter;
import com.oplus.ocs.camera.common.surface.SurfaceWrapper;
import com.oplus.ocs.camera.consumer.apsAdapter.ApsCameraRequestTag;
import com.oplus.ocs.camera.consumer.apsAdapter.adapter.ApsParameters;
import com.oplus.ocs.camera.consumer.apsAdapter.adapter.DefaultUtill;
import com.oplus.ocs.camera.consumer.apsAdapter.adapter.ImageCategory;
import com.oplus.ocs.camera.producer.info.CameraCharacteristicsHelper;
import com.oplus.ocs.camera.producer.info.CameraConfigHelper;
import java.io.ByteArrayOutputStream;
import java.io.File;
import java.io.FileOutputStream;
import java.io.IOException;
import java.lang.reflect.Field;
import java.lang.reflect.Method;
import java.nio.ByteBuffer;
import java.util.Arrays;
import java.util.Comparator;
import java.util.Iterator;
import java.util.LinkedList;
import java.util.List;
import java.util.Locale;
import java.util.Objects;
import java.util.concurrent.CopyOnWriteArrayList;
import java.util.function.Predicate;

/* JADX INFO: loaded from: classes.dex */
public class Util {
    private static final int ALIGN_64_BIT = 64;
    private static final int BIT_NUM_OF_BYTE = 8;
    private static final String FORMAT_BOOLEAN = "Boolean";
    private static final String FORMAT_BYTE = "byte";
    private static final String FORMAT_CHAR = "Character";
    private static final String FORMAT_DOUBLE = "Double";
    private static final String FORMAT_FLOAT = "Float";
    private static final String FORMAT_INT = "int";
    private static final String FORMAT_INTEGER = "Integer";
    private static final String FORMAT_LONG = "Long";
    private static final String FORMAT_SHORT = "Short";
    private static final String FORMAT_STRING = "String";
    private static final int JPEG_QUALITY_NORMAL = 95;
    private static final String KEY_IMAGEREADER_ACQUIRED_IMAGES = "mAcquiredImages";
    private static final double PICTURE_SIZE_ASPECT_TOLERANCE = 0.01d;
    private static final double PICTURE_SIZE_IMPRECISE_ASPECT_TOLERANCE = 0.05d;
    private static final int PREVIEW_ALGO_TURBO_HDR_INDEX = 0;
    public static final double RATIO_VALUE_4_3 = 1.3333333333333333d;
    private static final String SYSTEM_CAMERA_PACKNAME = "com.oplus.camera";
    private static final String TAG = "Util";
    private static final int UNSPECIFIED = -1;
    private static final String DEBUG_SAVE_PATH = Environment.getExternalStorageDirectory()
            + "/Android/data/com.oplus.camera/files/dump";
    private static int sScreenWidth = 0;
    private static int sScreenHeight = 0;
    private static ActivityManager mActivityManager = null;
    private static ActivityManager.MemoryInfo mMemoryInfo = null;
    private static Context mContext = null;
    private static long mTotalMemory = 0;
    private static long mAvailableMemory = 0;
    private static boolean mbSupportOplusHardwareBuffer = true;

    public static int clamp(int i, int i2, int i3) {
        return i > i3 ? i3 : i < i2 ? i2 : i;
    }

    public static byte[] convertNV21DataToJpeg(byte[] bArr, int i, int i2) {
        try {
            ByteArrayOutputStream byteArrayOutputStream = new ByteArrayOutputStream();
            try {
                YuvImage yuvImage = new YuvImage(bArr, 17, i, i2, null);
                yuvImage.compressToJpeg(new Rect(0, 0, yuvImage.getWidth(), yuvImage.getHeight()), 95,
                        byteArrayOutputStream);
                byte[] byteArray = byteArrayOutputStream.toByteArray();
                byteArrayOutputStream.close();
                return byteArray;
            } finally {
            }
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
        int iWidth = ((cropRect.width() * cropRect.height()) * ImageFormat.getBitsPerPixel(format)) / 8;
        if (bArr == null || bArr.length < iWidth) {
            bArr = new byte[iWidth];
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

    /*
     * JADX DEBUG: Another duplicated slice has different insns count: {[]},
     * finally: {[INVOKE, MOVE_EXCEPTION, INVOKE, MOVE_EXCEPTION] complete}
     */
    public static String saveBytesToFile(byte[] bArr, String str) {
        if (bArr == null || bArr.length == 0) {
            Log.e(TAG, "saveBytesToJpeg, bytes is empty");
            return null;
        }
        String str2 = DEBUG_SAVE_PATH;
        File file = new File(str2);
        if (!file.exists()) {
            file.mkdirs();
        }
        String absolutePath = new File(str2, str).getAbsolutePath();
        try {
            FileOutputStream fileOutputStream = new FileOutputStream(absolutePath);
            try {
                fileOutputStream.write(bArr);
                fileOutputStream.close();
            } finally {
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
        return new CameraImage(
                convertNV21DataToJpeg(getYuvDataWithoutPadding(image, 17, null), image.getWidth(), image.getHeight()),
                256, image.getWidth(), image.getHeight(), image.getWidth(), image.getHeight(), 90, image.getTimestamp(),
                false, str, 4);
    }

    /*
     * JADX DEBUG: Failed to insert an additional move for type inference into block
     * B:34:0x00b6
     */
    /*
     * JADX DEBUG: Multi-variable search result rejected for r3v2, resolved type:
     * java.io.ByteArrayOutputStream
     */
    /*
     * JADX DEBUG: Multi-variable search result rejected for r3v3, resolved type:
     * java.io.ByteArrayOutputStream
     */
    /*
     * JADX DEBUG: Multi-variable search result rejected for r3v4, resolved type:
     * java.io.ByteArrayOutputStream
     */
    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Removed duplicated region for block: B:51:0x00d7 */
    /*
     * JADX WARN: Removed duplicated region for block: B:63:0x00df
     * A[EXC_TOP_SPLITTER, SYNTHETIC]
     */
    /* JADX WARN: Removed duplicated region for block: B:74:? A[SYNTHETIC] */
    /*
     * Code decompiled incorrectly, please refer to instructions dump.
     */
    public static CameraImage buildRawImage(CameraRequestTag cameraRequestTag, Image image, CaptureResult captureResult,
            long j) throws Exception {
        ByteArrayOutputStream byteArrayOutputStream = null;
        Exception e = null;
        CameraUnitLog.v(TAG, "buildRawImage, rawImg: " + image + ", captureResult: " + captureResult + ", cameraType: "
                + cameraRequestTag.mCameraType);
        ByteArrayOutputStream byteArrayOutputStream2 = null;
        if (image != null) {
            try {
                if (32 == image.getFormat()) {
                    DngCreator dngCreator = new DngCreator(CameraCharacteristicsHelper
                            .getCameraCharacteristicsWrapper(cameraRequestTag.mCameraType).get(), captureResult);
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
                    String dngDescription = CameraConfigHelper.getDngDescription(cameraRequestTag.mCameraType);
                    dngCreator.setDescription(dngDescription);
                    try {
                        try {
                            byteArrayOutputStream = new ByteArrayOutputStream();
                            try {
                                dngCreator.writeImage(byteArrayOutputStream, image);
                                CameraImage cameraImage = new CameraImage(byteArrayOutputStream.toByteArray(), 32, 0, 0,
                                        image.getWidth(), image.getHeight(), cameraRequestTag.mOrientation, j, false,
                                        cameraRequestTag.mCameraType, 3);
                                if (image != null) {
                                    image.close();
                                }
                                dngCreator.close();
                                try {
                                    byteArrayOutputStream.close();
                                } catch (IOException e2) {
                                    e2.printStackTrace();
                                }
                                return cameraImage;
                            } catch (IOException e2) {
                                e = e2;
                                e.printStackTrace();
                                if (image != null) {
                                    image.close();
                                }
                                dngCreator.close();
                                if (byteArrayOutputStream != null) {
                                    try {
                                        byteArrayOutputStream.close();
                                    } catch (IOException e3) {
                                        e3.printStackTrace();
                                    }
                                }
                                return null;
                            }
                        } catch (Throwable th) {
                            byteArrayOutputStream2 = null;
                            Throwable th2 = th;
                            if (image != null) {
                                image.close();
                            }
                            dngCreator.close();
                            if (byteArrayOutputStream2 != null) {
                                try {
                                    byteArrayOutputStream2.close();
                                    throw new Exception(th2);
                                } catch (IOException e4) {
                                    e4.printStackTrace();
                                    throw new Exception(th2);
                                }
                            }
                            throw new Exception(th2);
                        }
                    } catch (IOException e5) {
                        e = e5;
                        byteArrayOutputStream = null;
                    } catch (Throwable th3) {
                        th = th3;
                        Throwable th22 = th;
                        if (image != null) {
                        }
                        dngCreator.close();
                        if (byteArrayOutputStream2 != null) {
                        }
                    }
                }
            } catch (IllegalStateException e6) {
                CameraUnitLog.v(TAG, "buildRawImage, " + e6);
            }
        }
        return null;
    }

    public static Rect getCropRegionForZoom(Float f, String str) {
        Rect rect = (Rect) CameraCharacteristicsHelper.getCameraCharacteristicsWrapper(str)
                .get(CameraCharacteristics.SENSOR_INFO_ACTIVE_ARRAY_SIZE);
        Rect rect2 = new Rect();
        int iWidth = rect.width() / 2;
        int iHeight = rect.height() / 2;
        int iWidth2 = (int) (rect.width() / (f.floatValue() * 2.0f));
        int iHeight2 = (int) (rect.height() / (f.floatValue() * 2.0f));
        rect2.set(iWidth - iWidth2, iHeight - iHeight2, iWidth + iWidth2, iHeight + iHeight2);
        return rect2;
    }

    /*
     * JADX DEBUG: Multi-variable search result rejected for r1v21, resolved type:
     * byte[]
     */
    /*
     * JADX DEBUG: Multi-variable search result rejected for r2v0, resolved type:
     * java.lang.String
     */
    /* JADX WARN: Multi-variable type inference failed */
    public static <T> T getValue(String str, String str2) {
        if (FORMAT_BYTE.equals(str)) {
            return (T) new byte[Integer.parseInt(str2)];
        }
        if (FORMAT_SHORT.equals(str)) {
            return (T) new Short(str2);
        }
        if (FORMAT_INTEGER.equals(str) || FORMAT_INT.equals(str)) {
            return (T) Integer.valueOf(str2);
        }
        if (FORMAT_LONG.equals(str)) {
            return (T) Long.valueOf(str2);
        }
        if (FORMAT_DOUBLE.equals(str)) {
            return (T) Double.valueOf(str2);
        }
        if (FORMAT_FLOAT.equalsIgnoreCase(str)) {
            return (T) Float.valueOf(str2);
        }
        if (FORMAT_BOOLEAN.equalsIgnoreCase(str)) {
            return (T) Boolean.valueOf(str2);
        }
        if (FORMAT_CHAR.equals(str)) {
            return (T) Character.valueOf(str2.toCharArray()[0]);
        }
        if (FORMAT_STRING.equalsIgnoreCase(str)) {
            return (T) str2;
        }
        return null;
    }

    public static void initScreenHeightWidth() {
        Display.Mode mode = ((WindowManager) ContextHolder.getContext().getSystemService("window")).getDefaultDisplay()
                .getMode();
        int physicalHeight = mode.getPhysicalHeight();
        int physicalWidth = mode.getPhysicalWidth();
        sScreenHeight = Math.max(physicalHeight, physicalWidth);
        sScreenWidth = Math.min(physicalHeight, physicalWidth);
        CameraUnitLog.e(TAG,
                "initScreenHeightWidth sScreenHeight: " + sScreenHeight + ", sScreenWidth: " + sScreenWidth);
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
        setContext(context);
        try {
            mActivityManager.getMemoryInfo(mMemoryInfo);
            mTotalMemory = mMemoryInfo.totalMem;
        } catch (Exception unused) {
        }
        CameraUnitLog.e(TAG, "getTotalMemory, mi.totalMem" + mTotalMemory);
        return mTotalMemory;
    }

    public static long getAvailMemory(Context context) {
        setContext(context);
        try {
            mActivityManager.getMemoryInfo(mMemoryInfo);
            mAvailableMemory = mMemoryInfo.availMem;
        } catch (Exception unused) {
        }
        return mAvailableMemory;
    }

    public static void setContext(Context context) {
        if (mContext != context && context != null) {
            mContext = context;
            mActivityManager = (ActivityManager) context.getSystemService("activity");
            CameraUnitLog.e(TAG, "setContext, mContext: " + mContext + ", mActivityManager: " + mActivityManager);
        }
        if (mMemoryInfo == null) {
            mMemoryInfo = new ActivityManager.MemoryInfo();
        }
    }

    public static ApsCameraRequestTag createApsRequestTag(CameraRequestTag cameraRequestTag,
            ImageCategory.MetaItemInfo metaItemInfo) {
        ApsCameraRequestTag apsCameraRequestTag = new ApsCameraRequestTag();
        if (metaItemInfo != null && metaItemInfo.get(ParameterKeys.KEY_LOGIC_CAMERA_ID) != null) {
            apsCameraRequestTag.mbFrontCamera = CameraCharacteristicsHelper
                    .isFrontCamera(((Integer) metaItemInfo.get(ParameterKeys.KEY_LOGIC_CAMERA_ID)).intValue());
        }
        if (cameraRequestTag != null) {
            apsCameraRequestTag.mbInThirdApp = cameraRequestTag.mbInThirdApp;
        }
        apsCameraRequestTag.mbQcom = PlatformUtil.isQualcommPlatform();
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
            if (Math.abs((((double) size2.getWidth()) / ((double) size2.getHeight())) - d) <= 0.01d
                    && (size == null || size.getHeight() < size2.getHeight())) {
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

    public static Size getOptimalPreviewSize(Size[] sizeArr, double d) {
        Size size = null;
        if (sizeArr == null) {
            return null;
        }
        int iAbs = Integer.MAX_VALUE;
        int iAbs2 = Integer.MAX_VALUE;
        for (Size size2 : sizeArr) {
            if (Math.abs((((double) size2.getWidth()) / ((double) size2.getHeight())) - d) <= 0.01d) {
                int iAbs3 = Math.abs(size2.getHeight() - sScreenWidth);
                if (iAbs3 < iAbs2) {
                    iAbs2 = Math.abs(size2.getHeight() - sScreenWidth);
                } else if (iAbs3 != iAbs2 || size2.getHeight() <= sScreenWidth) {
                }
                size = size2;
            }
        }
        if (size == null) {
            for (Size size3 : sizeArr) {
                if (Math.abs(size3.getHeight() - sScreenWidth) < iAbs) {
                    iAbs = Math.abs(size3.getHeight() - sScreenWidth);
                    size = size3;
                }
            }
        }
        if (size != null) {
            CameraUnitLog.v(TAG, "getOptimalPreviewSize, screen: " + sScreenWidth + "x" + sScreenHeight
                    + ", targetRatio: " + d + ", optimalSize: " + size.getHeight() + "x" + size.getWidth());
        } else {
            CameraUnitLog.e(TAG, "getOptimalPreviewSize, optimalSize is null");
        }
        return size;
    }

    public static Size getImpreciseMaxSizeByRatio(Size[] sizeArr, double d) {
        return getImpreciseMaxSizeByRatio(sizeArr, d, -1);
    }

    public static Size getImpreciseMaxSizeByRatio(Size[] sizeArr, double d, int i) {
        Size size = null;
        if (sizeArr != null && sizeArr.length != 0) {
            for (Size size2 : sizeArr) {
                if (Math.abs((((double) size2.getWidth()) / ((double) size2.getHeight()))
                        - d) <= PICTURE_SIZE_IMPRECISE_ASPECT_TOLERANCE
                        && ((-1 == i || size2.getHeight() <= i)
                                && (size == null || size.getHeight() < size2.getHeight()))) {
                    size = size2;
                }
            }
            if (size != null) {
                CameraUnitLog.v(TAG, "getImpreciseMaxSizeByRatio, size: " + size.getHeight() + "x" + size.getWidth()
                        + ", targetRatio: " + d);
            } else {
                CameraUnitLog.e(TAG, "getImpreciseMaxSizeByRatio, optimalSize is null");
            }
        }
        return size;
    }

    public static Size getMinSizeByRatio(Size[] sizeArr, double d) {
        Size size = null;
        if (sizeArr != null && sizeArr.length != 0) {
            for (Size size2 : sizeArr) {
                if (Math.abs((((double) size2.getWidth()) / ((double) size2.getHeight())) - d) <= 0.01d
                        && (size == null || size2.getHeight() < size.getHeight())) {
                    size = size2;
                }
            }
            if (size != null) {
                CameraUnitLog.v(TAG,
                        "getMinSizeByRatio, size: " + size.getHeight() + "x" + size.getWidth() + ", targetRatio: " + d);
            } else {
                CameraUnitLog.e(TAG, "getMinSizeByRatio, optimalSize is null");
            }
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
            int i5 = iArr[i4];
            if (i5 < i2) {
                i3 = i4;
                i2 = i5;
            }
        }
        return i3;
    }

    public static int getNightStateDecision(CameraPreviewCallbackAdapter.PreviewResult previewResult) {
        int iIntValue = previewResult != null
                ? ((Integer) previewResult.get(ApsDecisionParameter.KEY_PREVIEW_FEATURE_TYPE)).intValue()
                : 0;
        if (48 == iIntValue || 49 == iIntValue || 50 == iIntValue) {
            return ((Integer) previewResult.get(ApsDecisionParameter.KEY_PREVIEW_TURBO_RAW_SCENE)).intValue();
        }
        if (9 == iIntValue || 10 == iIntValue || 11 == iIntValue || 13 == iIntValue || 29 == iIntValue
                || 14 == iIntValue || 21 == iIntValue || 31 == iIntValue || 35 == iIntValue || 40 == iIntValue
                || 32 == iIntValue || 41 == iIntValue) {
            return ((Integer) previewResult.get(ApsDecisionParameter.KEY_PREVIEW_SUPER_NIGHT_SCENE)).intValue();
        }
        return 0;
    }

    public static String[] joinAppAndHalAlgoFlag(String[] strArr, String[] strArr2) {
        if (strArr == null || strArr.length <= 0) {
            return (strArr2 == null || strArr2.length == 0) ? new String[] { ApsParameters.ALGO_NAME_NONE } : strArr2;
        }
        if (strArr2 == null || strArr2.length == 0) {
            return strArr;
        }
        String[] strArr3 = new String[strArr2.length + strArr.length];
        System.arraycopy(strArr2, 0, strArr3, 0, strArr2.length);
        System.arraycopy(strArr, 0, strArr3, strArr2.length, strArr.length);
        return strArr3;
    }

    public static boolean isAIOrPoitraitNight(CameraPreviewCallbackAdapter.PreviewResult previewResult) {
        String[] strArr;
        if (previewResult == null
                || (strArr = (String[]) previewResult.get(ApsDecisionParameter.KEY_PREVIEW_ALGO_FLAG)) == null
                || strArr.length <= 0) {
            return false;
        }
        return ParameterKeys.ALGO_NAME_SUPERNIGHT.equals(strArr[0])
                || ParameterKeys.ALGO_NAME_FRONT_PORTRAIT_SUPERNIGHT.equals(strArr[0]);
    }

    public static boolean isTurboHdr(CameraPreviewCallbackAdapter.PreviewResult previewResult) {
        if (previewResult == null) {
            CameraUnitLog.e(TAG, "isTurboHdr, previewResult is null , return false.");
            return false;
        }
        String[] strArr = (String[]) previewResult.get(ApsDecisionParameter.KEY_PREVIEW_ALGO_FLAG);
        if (strArr == null || strArr.length <= 0) {
            return false;
        }
        return ParameterKeys.ALGO_NAME_TURBO_HDR.equals(strArr[0]);
    }

    public static boolean isHdrOn(CameraPreviewCallbackAdapter.PreviewResult previewResult) {
        if (previewResult == null) {
            return false;
        }
        int iIntValue = ((Integer) previewResult.get(ApsDecisionParameter.KEY_PREVIEW_FEATURE_TYPE)).intValue();
        int iIntValue2 = ((Integer) previewResult.get(ApsDecisionParameter.KEY_PREVIEW_SCENE_MODE)).intValue();
        boolean z = 4 == iIntValue || 8 == iIntValue || 16 == iIntValue || 24 == iIntValue || 26 == iIntValue
                || 30 == iIntValue || 34 == iIntValue || 27 == iIntValue || 28 == iIntValue || 32 == iIntValue
                || 36 == iIntValue || 37 == iIntValue || 42 == iIntValue || 43 == iIntValue || 27 == iIntValue2
                || 28 == iIntValue2 || 45 == iIntValue || 47 == iIntValue;
        CameraUnitLog.d(TAG, "isHdrOn, isHdrOn: " + z);
        return z;
    }

    public static boolean isBokehHDR(CameraPreviewCallbackAdapter.PreviewResult previewResult) {
        if (previewResult == null) {
            return false;
        }
        int iIntValue = ((Integer) previewResult.get(ApsDecisionParameter.KEY_PREVIEW_SCENE_MODE)).intValue();
        return 12 == iIntValue || 13 == iIntValue || 30 == iIntValue;
    }

    public static Size[] parserSizeLists(String str) {
        String[] strArrSplit = str.toUpperCase().split("X");
        int length = strArrSplit.length / 2;
        Size[] sizeArr = new Size[length];
        for (int i = 0; i < length; i++) {
            int i2 = i * 2;
            sizeArr[i] = new Size(Integer.parseInt(strArrSplit[i2]), Integer.parseInt(strArrSplit[i2 + 1]));
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

    public static void dumpSessionConfig(SessionConfiguration sessionConfiguration,
            LinkedList<SurfaceWrapper> linkedList, String str) {
        if (SdkConfig.META_DUMP) {
            CameraUnitLog.d(TAG, "dumpSessionConfig: ========================================");
            CameraUnitLog.d(TAG, "dumpSessionConfig: camera device id: " + str);
            CameraUnitLog.d(TAG,
                    "dumpSessionConfig: Session Num: 0x" + Integer.toHexString(sessionConfiguration.getSessionType()));
            InputConfiguration inputConfiguration = sessionConfiguration.getInputConfiguration();
            CameraUnitLog.d(TAG, "dumpSessionConfig: inputConfiguration:" + inputConfiguration);
            if (inputConfiguration != null) {
                CameraUnitLog.d(TAG, String.format(Locale.ENGLISH, "dumpSessionConfig: inputConfiguration: %dx%d:%d",
                        Integer.valueOf(inputConfiguration.getWidth()), Integer.valueOf(inputConfiguration.getHeight()),
                        Integer.valueOf(inputConfiguration.getFormat())));
            }
            List<OutputConfiguration> outputConfigurations = sessionConfiguration.getOutputConfigurations();
            Iterator<SurfaceWrapper> it = linkedList.iterator();
            while (it.hasNext()) {
                CameraUnitLog.d(TAG, "dumpSessionConfig: surfaceWrapper: " + it.next());
            }
            CameraUnitLog.d(TAG, "dumpSessionConfig: outputConfigurations: " + outputConfigurations);
            if (outputConfigurations != null) {
                Iterator<OutputConfiguration> it2 = outputConfigurations.iterator();
                while (it2.hasNext()) {
                    List<Surface> surfaces = it2.next().getSurfaces();
                    CameraUnitLog.d(TAG, "dumpSessionConfig: surfaceList: " + surfaces);
                    Iterator<Surface> it3 = surfaces.iterator();
                    while (it3.hasNext()) {
                        CameraUnitLog.d(TAG, "dumpSessionConfig: surface: " + it3.next().toString());
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
        CameraUnitLog.e(TAG, "dumpSessionConfig, createCaptureSession with operation mode: 0x"
                + Integer.toHexString(sessionConfiguration.getSessionType()).toUpperCase(Locale.ENGLISH));
    }

    public static void dumpCaptureRequest(CaptureRequest captureRequest, String str) {
        if (captureRequest != null) {
            captureRequest.getKeys();
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
            String str = "FrameFlag_" + i + "_frameNumber_" + j + "_metaTimeStamp_" + j2 + "_RAW_" + image.getWidth()
                    + "x" + image.getHeight() + "_" + image.getTimestamp() + ".raw";
            saveBytesToFile(bArr, str);
            CameraUnitLog.d(TAG, "dumpRawSensorImage, dump raw image success, saved at " + DEBUG_SAVE_PATH + str);
        }
    }

    public static boolean isSystemCamera() {
        return isSystemCameraPackage(ContextHolder.getContext().getPackageName());
    }

    public static boolean isSystemCameraPackage(String str) {
        return SYSTEM_CAMERA_PACKNAME.equals(str);
    }

    public static boolean isFileExist(String str) {
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
        return (Size) Arrays.stream(sizeArr).filter(new Predicate() { // from class:
                                                                      // com.oplus.ocs.camera.common.util.Util$$ExternalSyntheticLambda0
            @Override // java.util.function.Predicate
            public final boolean test(Object obj) {
                return Objects.nonNull((Size) obj);
            }
        }).max(new Comparator() { // from class: com.oplus.ocs.camera.common.util.Util$$ExternalSyntheticLambda1
            @Override // java.util.Comparator
            public final int compare(Object obj, Object obj2) {
                return Util.lambda$getMaxSize$0((Size) obj, (Size) obj2);
            }
        }).orElse(null);
    }

    /*
     * JADX DEBUG: Can't inline method, not implemented redirect type for insn:
     * 0x0012: ARITH (wrap:int:0x0008: ARITH (wrap:int:0x0000: INVOKE (r1v0
     * android.util.Size) VIRTUAL call: android.util.Size.getWidth():int A[MD:():int
     * (c), WRAPPED] (LINE:947)) * (wrap:int:0x0004: INVOKE (r1v0 android.util.Size)
     * VIRTUAL call: android.util.Size.getHeight():int A[MD:():int (c), WRAPPED])
     * A[WRAPPED] (LINE:947)) - (wrap:int:0x0011: ARITH (wrap:int:0x0009: INVOKE
     * (r2v0 android.util.Size) VIRTUAL call: android.util.Size.getWidth():int
     * A[MD:():int (c), WRAPPED]) * (wrap:int:0x000d: INVOKE (r2v0
     * android.util.Size) VIRTUAL call: android.util.Size.getHeight():int
     * A[MD:():int (c), WRAPPED]) A[WRAPPED]) (LINE:947)
     */
    static /* synthetic */ int lambda$getMaxSize$0(Size size, Size size2) {
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
            CopyOnWriteArrayList<Image> copyOnWriteArrayList = (CopyOnWriteArrayList) declaredField.get(imageReader);
            if (copyOnWriteArrayList == null) {
                CameraUnitLog.w(TAG, "dealWithImageOverflow, list is null");
                return;
            }
            int size = copyOnWriteArrayList.size();
            if (size >= i) {
                CameraUnitLog.w(TAG, "dealWithImageOverflow, originSize: " + size + ", maxImage: " + i);
                for (Image image : copyOnWriteArrayList) {
                    if (copyOnWriteArrayList.size() <= size / 2) {
                        return;
                    }
                    if (image != null) {
                        image.close();
                        copyOnWriteArrayList.remove(image);
                    }
                }
            }
        } catch (Exception unused) {
        }
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
                CameraUnitLog.w(TAG, "getHardwareBuffer, getOplusHardwareBuffer has exception, use getHardwareBuffer");
                return image.getHardwareBuffer();
            }
        }
        return image.getHardwareBuffer();
    }

    public static int compareSize(Size size, Size size2) {
        if (size.equals(size2)) {
            return 0;
        }
        return (size.getWidth() * size.getHeight()) - (size2.getWidth() * size2.getHeight());
    }

    public static boolean getSystemPropertiesBoolean(String str, boolean z) {
        try {
            Method declaredMethod = Class.forName("android.os.SystemProperties").getDeclaredMethod("getBoolean",
                    String.class, Boolean.TYPE);
            declaredMethod.setAccessible(true);
            return ((Boolean) declaredMethod.invoke(null, str, Boolean.valueOf(z))).booleanValue();
        } catch (Exception unused) {
            Log.e(TAG, "getSystemPropertiesBoolean, reflect error");
            return z;
        }
    }

    public static String getSystemPropertiesString(String str, String str2) {
        try {
            Method declaredMethod = Class.forName("android.os.SystemProperties").getDeclaredMethod("get", String.class,
                    String.class);
            declaredMethod.setAccessible(true);
            return (String) declaredMethod.invoke(null, str, str2);
        } catch (Exception unused) {
            Log.e(TAG, "getSystemPropertiesString, reflect error");
            return str2;
        }
    }

    public static int byteArrayToInt(byte[] bArr) {
        return ((bArr[0] & 255) << 24) | (bArr[3] & 255) | ((bArr[2] & 255) << 8) | ((bArr[1] & 255) << 16);
    }

    public static boolean isSupportOfflineNight(String str) {
        if ("1".equals(CameraConfigHelper.getConfigValue(DefaultUtill.KEY_NIGHT_OFFLINE_R2Y))) {
            return ("1".equals(CameraConfigHelper.getConfigValue(DefaultUtill.KEY_OFFLINE_R2Y_DISABLE_IN_NIGHT_MODE))
                    && "night_mode".equals(str)) ? false : true;
        }
        return false;
    }
}
