package com.oplus.ocs.camera.consumer.apsAdapter.adapter;

import com.oplus.exif.OplusRational;
/* loaded from: classes.dex */
public class ApsExifData {
    public String mDocExifGpsDateStamp;
    public OplusRational mExifAltitude;
    public int mExifAltitudeRef;
    public OplusRational mExifAperture;
    public OplusRational mExifBrightness;
    public int mExifColorSpace;
    public String mExifComments;
    public String mExifComponentsConfig;
    public String mExifDateTime;
    public OplusRational mExifExpTime;
    public OplusRational mExifExposureBias;
    public int mExifExposureMode;
    public int mExifExposureProgram;
    public OplusRational mExifFNumber;
    public String mExifFlashPixVersion;
    public OplusRational mExifFocalLength;
    public int mExifFocalLength35Mm;
    public long mExifIso;
    public String mExifLatitudeRef;
    public String mExifLongitudeRef;
    public String mExifMakerNote;
    public String mExifManufacture;
    public OplusRational mExifMaxAperture;
    public int mExifMeteringMode;
    public String mExifModel;
    public int mExifRotate;
    public int mExifSceneCaptureType;
    public String mExifSceneType;
    public int mExifSensingMethod;
    public OplusRational mExifShutterSpeed;
    public String mExifSubDateTime;
    public String mExifVersion;
    public int mExifWhiteBalanceMode;
    public int mFlashValue;
    public int mHeicQuality;
    public int mImageHeight;
    public int mImageWidth;
    public String mInteropIndexStr;
    public String mInteropVersion;
    public String mSensorName;
    public ApsSizeDataType mStatsDebugData;
    public int mTiffResolutionUnit;
    public OplusRational mTiffXResolution;
    public OplusRational mTiffYResolution;
    public int mTiffYcrcbPositioning;
    public boolean mbMirror;
    public boolean mbSupportDCIP3;
    public boolean mbSupportLocation;
    public boolean mbSupportLocationTimeStamp;
    public OplusRational[] mExifLatitude = new OplusRational[3];
    public OplusRational[] mExifLongitude = new OplusRational[3];
    public OplusRational[] mDocExifGpsTimeStamp = new OplusRational[3];

    /* loaded from: classes.dex */
    public static class ApsSizeDataType {
        public byte[] mBuffer;
        public long mSize;
    }
}
