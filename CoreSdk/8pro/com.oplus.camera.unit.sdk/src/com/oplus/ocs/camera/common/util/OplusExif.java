package com.oplus.ocs.camera.common.util;

import android.hardware.camera2.CaptureResult;
import android.hardware.camera2.params.Face;
import com.oplus.exif.OplusExifTag;
import com.oplus.ocs.camera.consumer.apsAdapter.adapter.ApsCaptureResult;
import java.util.concurrent.ConcurrentHashMap;

/* JADX INFO: loaded from: classes.dex */
public class OplusExif {
    private static final String TAG = "OplusExif";
    private static ConcurrentHashMap<String, Integer> sExifTagMap = new ConcurrentHashMap<>();

    private static void initExifTagMap() {
        sExifTagMap.put("panorama_mode", 4);
        sExifTagMap.put("fastvideo_mode", 8);
        sExifTagMap.put("portrait_mode", 16);
        sExifTagMap.put("professional_mode", 256);
        sExifTagMap.put("sticker_mode", 512);
        sExifTagMap.put("night_mode", Integer.valueOf(OplusExifTag.EXIF_TAG_NIGHT_SCENE));
        sExifTagMap.put("id_photo_mode", Integer.valueOf(OplusExifTag.EXIF_TAG_AI_ID_PHOTO));
    }

    public static int getDateBaseExifTag(String str, int i) {
        if (sExifTagMap.isEmpty()) {
            initExifTagMap();
        }
        return (str == null || sExifTagMap.get(str) == null) ? i : sExifTagMap.get(str).intValue() | i;
    }

    public static String getExif(CameraRequestTag cameraRequestTag, ApsCaptureResult apsCaptureResult) {
        int dateBaseExifTag;
        if ("id_photo_mode".equals(cameraRequestTag.mCaptureMode) && apsCaptureResult.getTotalResult() != null) {
            Face[] faceArr = (Face[]) apsCaptureResult.getTotalResult().get(CaptureResult.STATISTICS_FACES);
            if (faceArr == null || 1 != faceArr.length) {
                cameraRequestTag.mExif &= -16385;
                dateBaseExifTag = getDateBaseExifTag("photo_mode", cameraRequestTag.mRearFrontCameraId);
            } else {
                dateBaseExifTag = getDateBaseExifTag(cameraRequestTag.mCaptureMode, cameraRequestTag.mRearFrontCameraId);
            }
        } else {
            dateBaseExifTag = getDateBaseExifTag(cameraRequestTag.mCaptureMode, cameraRequestTag.mRearFrontCameraId);
        }
        if (cameraRequestTag.mbSuperTextOpen && cameraRequestTag.mSuperTextVertices != null && cameraRequestTag.mSuperTextVertices.length() > 0) {
            dateBaseExifTag |= 4096;
        }
        return OplusExifTag.EXIF_TAG_PREFIX + (cameraRequestTag.mExif | dateBaseExifTag);
    }
}
