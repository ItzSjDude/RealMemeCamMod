package com.oplus.ocs.camera.appinterface.adapter;

import android.hardware.camera2.CaptureFailure;
import com.oplus.ocs.camera.common.parameter.apsadapter.ApsCaptureResultParameter;
import com.oplus.ocs.camera.common.parameter.apsadapter.ApsExifDataParameter;
import com.oplus.ocs.camera.common.parameter.apsadapter.ApsExtendDataParameter;
import com.oplus.ocs.camera.common.parameter.apsadapter.ApsImageCategoryParameter;
import com.oplus.ocs.camera.common.util.ParameterKeys;
import com.oplus.ocs.camera.consumer.apsAdapter.adapter.ApsCaptureResult;
import com.oplus.ocs.camera.consumer.apsAdapter.adapter.ApsExifData;
import com.oplus.ocs.camera.consumer.apsAdapter.adapter.ApsExtendData;
import com.oplus.ocs.camera.consumer.apsAdapter.adapter.ApsResult;
import com.oplus.ocs.camera.consumer.apsAdapter.adapter.ImageCategory;
/* loaded from: classes.dex */
public class PictureResultHelper extends CameraBaseResultHelper {
    private CaptureFailure mCaptureFailure = null;

    @Override // com.oplus.ocs.camera.appinterface.adapter.CameraBaseResultHelper
    public void setApsResult(ApsResult apsResult) {
        super.setApsResult(apsResult);
        if (apsResult != null) {
            setApsExifData(apsResult.mExifData);
            setApsExtendData(apsResult.mExtendData);
        }
    }

    public void setImageCategory(ImageCategory.ImageItemInfo imageItemInfo, ImageCategory.MetaItemInfo metaItemInfo) {
        if (imageItemInfo != null) {
            this.mBaseParameter.set(ApsImageCategoryParameter.KEY_IMAGE_CATEGORY_HEIGHT, (Integer) imageItemInfo.get(ParameterKeys.KEY_IMAGE_HEIGHT));
            this.mBaseParameter.set(ApsImageCategoryParameter.KEY_IMAGE_CATEGORY_WIDTH, (Integer) imageItemInfo.get(ParameterKeys.KEY_IMAGE_WIDTH));
            this.mBaseParameter.set(ApsImageCategoryParameter.KEY_IMAGE_CATEGORY_BURST_SHOT, (Boolean) imageItemInfo.get(ParameterKeys.KEY_BURST_SHOT));
            this.mBaseParameter.set(ApsImageCategoryParameter.KEY_IMAGE_CATEGORY_BURST_COUNT, (Integer) imageItemInfo.get(ParameterKeys.KEY_BURST_COUNT));
            this.mBaseParameter.set(ApsImageCategoryParameter.KEY_IMAGE_CATEGORY_BURST_SHOT_FLAG_ID, (Long) imageItemInfo.get(ParameterKeys.KEY_BURST_SHOT_FLAG_ID));
            this.mBaseParameter.set(ApsImageCategoryParameter.KEY_IMAGE_CATEGORY_CSHOT_PATH, (String) imageItemInfo.get(ParameterKeys.KEY_CSHOT_PATH));
            this.mBaseParameter.set(ApsImageCategoryParameter.KEY_IMAGE_CATEGORY_REC_BURST_NUMBER, (Integer) imageItemInfo.get(ParameterKeys.KEY_REC_BURST_NUMBER));
            this.mBaseParameter.set(ApsImageCategoryParameter.KEY_IMAGE_CATEGORY_DATE, (Long) imageItemInfo.get(ParameterKeys.KEY_DATE));
            this.mBaseParameter.set(ApsImageCategoryParameter.KEY_IMAGE_CATEGORY_FORMAT, (Integer) imageItemInfo.get(ParameterKeys.KEY_IMAGE_FORMAT));
            this.mBaseParameter.set(ApsImageCategoryParameter.KEY_IMAGE_CATEGORY_IMAGE_TIME_STAMP, (Long) imageItemInfo.get(ParameterKeys.KEY_TIME_STAMP));
        }
        if (metaItemInfo != null) {
            this.mBaseParameter.set(ApsImageCategoryParameter.KEY_IMAGE_CATEGORY_WATERMARK_PATH, (String) metaItemInfo.get(ParameterKeys.KEY_WATERMARK_PATH));
            this.mBaseParameter.set(ApsImageCategoryParameter.KEY_IMAGE_CATEGORY_MERGE_IDENTITY, (Long) metaItemInfo.get(ParameterKeys.KEY_MERGE_IDENTITY));
            this.mBaseParameter.set(ApsImageCategoryParameter.KEY_IMAGE_CATEGORY_META_TIME_STAMP, (Long) metaItemInfo.get(ParameterKeys.KEY_TIME_STAMP));
            this.mBaseParameter.set(ApsImageCategoryParameter.KEY_IMAGE_CATEGORY_SUPER_TEXT_ENABLE, (String) metaItemInfo.get(ParameterKeys.KEY_SUPER_TEXT_ENABLE));
            this.mBaseParameter.set(ApsImageCategoryParameter.KEY_IMAGE_CATEGORY_CUSTOM_BEAUTY_PARAM, (int[]) metaItemInfo.get(ParameterKeys.KEY_CUSTOM_BEAUTY_PARAM));
            this.mBaseParameter.set(ApsImageCategoryParameter.KEY_RESULT_CAPTURE_FOR_VIDEO, (Boolean) metaItemInfo.get(ParameterKeys.KEY_CAPTURE_FOR_VIDEO));
            this.mBaseParameter.set(ApsImageCategoryParameter.KEY_IMAGE_CATEGORY_END_OF_CAPTURE, (Boolean) metaItemInfo.get(ParameterKeys.KEY_END_OF_CAPTURE));
        }
        this.mBaseParameter.set(ApsImageCategoryParameter.KEY_IMAGE_CATEGORY_IS_VALID, Boolean.valueOf((imageItemInfo == null || metaItemInfo == null) ? false : true));
    }

    public void setApsCaptureResult(ApsCaptureResult apsCaptureResult) {
        if (apsCaptureResult != null) {
            this.mBaseParameter.set(ApsCaptureResultParameter.KEY_CAPTURE_FRAME_NUMBER, Long.valueOf(apsCaptureResult.mFrameNumber));
            this.mBaseParameter.set(ApsCaptureResultParameter.KEY_CAPTURE_TIME_STAMP, apsCaptureResult.mSensorTimestamp);
            this.mBaseParameter.set(ApsCaptureResultParameter.KEY_CAPTURE_SENSITIVITY, apsCaptureResult.mSensorSensitivity);
            this.mBaseParameter.set(ApsCaptureResultParameter.KEY_CAPTURE_EXPOSURE_TIME, apsCaptureResult.mSensorExposureTime);
            this.mBaseParameter.set(ApsCaptureResultParameter.KEY_CAPTURE_FOCAL_LENGTH, apsCaptureResult.mFocalLength);
            this.mBaseParameter.set(ApsCaptureResultParameter.KEY_CAPTURE_LENS_APERTURE, apsCaptureResult.mLensAperture);
            this.mBaseParameter.set(ApsCaptureResultParameter.KEY_CAPTURE_AWB_MODE, apsCaptureResult.mAwbMode);
            this.mBaseParameter.set(ApsCaptureResultParameter.KEY_CAPTURE_SENSOR_MASK, apsCaptureResult.mSensorMask);
            this.mBaseParameter.set(ApsCaptureResultParameter.KEY_CAPTURE_MASTER_PIPELINE, apsCaptureResult.mMasterPipeline);
            this.mBaseParameter.set(ApsCaptureResultParameter.KEY_CAPTURE_UPSCALE_INPUT_SIZE, apsCaptureResult.mUpscaleInputSize);
            this.mBaseParameter.set(ApsCaptureResultParameter.KEY_CAPTURE_UPSCALE_OUT_SIZE, apsCaptureResult.mUpscaleOutputSize);
        }
    }

    private void setApsExifData(ApsExifData apsExifData) {
        if (apsExifData != null) {
            this.mBaseParameter.set(ApsExifDataParameter.KEY_EXIF_SENSOR_NAME, apsExifData.mSensorName);
            this.mBaseParameter.set(ApsExifDataParameter.KEY_EXIF_ROTATE, Integer.valueOf(apsExifData.mExifRotate));
            this.mBaseParameter.set(ApsExifDataParameter.KEY_EXIF_ISO, Long.valueOf(apsExifData.mExifIso));
            this.mBaseParameter.set(ApsExifDataParameter.KEY_EXIF_WHITE_BALANCE_MODE, Integer.valueOf(apsExifData.mExifWhiteBalanceMode));
            this.mBaseParameter.set(ApsExifDataParameter.KEY_EXIF_FLASH_VALUE, Integer.valueOf(apsExifData.mFlashValue));
            this.mBaseParameter.set(ApsExifDataParameter.KEY_EXIF_LATITUDE_REF, apsExifData.mExifLatitudeRef);
            this.mBaseParameter.set(ApsExifDataParameter.KEY_EXIF_LONGITUDE_REF, apsExifData.mExifLongitudeRef);
            this.mBaseParameter.set(ApsExifDataParameter.KEY_EXIF_ALTITUDE_REF, Integer.valueOf(apsExifData.mExifAltitudeRef));
            this.mBaseParameter.set(ApsExifDataParameter.KEY_EXIF_GPS_DATE_STAMP, apsExifData.mDocExifGpsDateStamp);
            this.mBaseParameter.set(ApsExifDataParameter.KEY_EXIF_DATE_TIME, apsExifData.mExifDateTime);
            this.mBaseParameter.set(ApsExifDataParameter.KEY_EXIF_SUB_DATE_TIME, apsExifData.mExifSubDateTime);
            this.mBaseParameter.set(ApsExifDataParameter.KEY_EXIF_MODEL, apsExifData.mExifModel);
            this.mBaseParameter.set(ApsExifDataParameter.KEY_EXIF_MANUFACTURE, apsExifData.mExifManufacture);
            this.mBaseParameter.set(ApsExifDataParameter.KEY_EXIF_COMMENTS, apsExifData.mExifComments);
            this.mBaseParameter.set(ApsExifDataParameter.KEY_EXIF_MIRROR, Boolean.valueOf(apsExifData.mbMirror));
            this.mBaseParameter.set(ApsExifDataParameter.KEY_EXIF_NUMBER, apsExifData.mExifFNumber);
            this.mBaseParameter.set(ApsExifDataParameter.KEY_EXIF_EXP_TIME, apsExifData.mExifExpTime);
            this.mBaseParameter.set(ApsExifDataParameter.KEY_EXIF_APERTURE, apsExifData.mExifAperture);
            this.mBaseParameter.set(ApsExifDataParameter.KEY_EXIF_EXPOSURE_BIAS, apsExifData.mExifExposureBias);
            this.mBaseParameter.set(ApsExifDataParameter.KEY_EXIF_FOCAL_LENGTH, apsExifData.mExifFocalLength);
            this.mBaseParameter.set(ApsExifDataParameter.KEY_EXIF_LATITUDE, apsExifData.mExifLatitude);
            this.mBaseParameter.set(ApsExifDataParameter.KEY_EXIF_LONGITUDE, apsExifData.mExifLongitude);
            this.mBaseParameter.set(ApsExifDataParameter.KEY_EXIF_ALTITUDE, apsExifData.mExifAltitude);
            this.mBaseParameter.set(ApsExifDataParameter.KEY_EXIF_GPS_TIME_STAMP, apsExifData.mDocExifGpsTimeStamp);
            this.mBaseParameter.set(ApsExifDataParameter.KEY_EXIF_SUPPORT_DCIP3, Boolean.valueOf(apsExifData.mbSupportDCIP3));
            this.mBaseParameter.set(ApsExifDataParameter.KEY_EXIF_SUPPORT_LOCATION, Boolean.valueOf(apsExifData.mbSupportLocation));
            this.mBaseParameter.set(ApsExifDataParameter.KEY_EXIF_SUPPORT_LOCATION_TIME_STAMP, Boolean.valueOf(apsExifData.mbSupportLocationTimeStamp));
            this.mBaseParameter.set(ApsExifDataParameter.KEY_EXIF_IMAGE_WIDTH, Integer.valueOf(apsExifData.mImageWidth));
            this.mBaseParameter.set(ApsExifDataParameter.KEY_EXIF_IMAGE_HEIGHT, Integer.valueOf(apsExifData.mImageHeight));
            this.mBaseParameter.set(ApsExifDataParameter.KEY_EXIF_TIFFYCRCB_POSITIONING, Integer.valueOf(apsExifData.mTiffYcrcbPositioning));
            this.mBaseParameter.set(ApsExifDataParameter.KEY_EXIF_TIFF_RESOLUTION_UNIT, Integer.valueOf(apsExifData.mTiffResolutionUnit));
            this.mBaseParameter.set(ApsExifDataParameter.KEY_EXIF_TIFFX_RESOLUTIION, apsExifData.mTiffXResolution);
            this.mBaseParameter.set(ApsExifDataParameter.KEY_EXIF_TIFFY_RESOLUTION, apsExifData.mTiffYResolution);
            this.mBaseParameter.set(ApsExifDataParameter.KEY_EXIF_EXPOSURE_PROGRAM, Integer.valueOf(apsExifData.mExifExposureProgram));
            this.mBaseParameter.set(ApsExifDataParameter.KEY_EXIF_VERSION, apsExifData.mExifVersion);
            this.mBaseParameter.set(ApsExifDataParameter.KEY_EXIF_COMPONENT_CONFIG, apsExifData.mExifComponentsConfig);
            this.mBaseParameter.set(ApsExifDataParameter.KEY_EXIF_SHUTTER_SPEED, apsExifData.mExifShutterSpeed);
            this.mBaseParameter.set(ApsExifDataParameter.KEY_EXIF_BRIGHTNESS, apsExifData.mExifBrightness);
            this.mBaseParameter.set(ApsExifDataParameter.KEY_EXIF_MAX_APERTURE, apsExifData.mExifMaxAperture);
            this.mBaseParameter.set(ApsExifDataParameter.KEY_EXIF_METERING_MODE, Integer.valueOf(apsExifData.mExifMeteringMode));
            this.mBaseParameter.set(ApsExifDataParameter.KEY_EXIF_MAKER_NOTE, apsExifData.mExifMakerNote);
            this.mBaseParameter.set(ApsExifDataParameter.KEY_EXIF_FLASH_PIX_VERSION, apsExifData.mExifFlashPixVersion);
            this.mBaseParameter.set(ApsExifDataParameter.KEY_EXIF_COLOR_SPACE, Integer.valueOf(apsExifData.mExifColorSpace));
            this.mBaseParameter.set(ApsExifDataParameter.KEY_EXIF_SENSING_METHOD, Integer.valueOf(apsExifData.mExifSensingMethod));
            this.mBaseParameter.set(ApsExifDataParameter.KEY_EXIF_SCENE_TYPE, apsExifData.mExifSceneType);
            this.mBaseParameter.set(ApsExifDataParameter.KEY_EXIF_EXPOSURE_MODE, Integer.valueOf(apsExifData.mExifExposureMode));
            this.mBaseParameter.set(ApsExifDataParameter.KEY_EXIF_FOCAL_LENGTH_35MM, Integer.valueOf(apsExifData.mExifFocalLength35Mm));
            this.mBaseParameter.set(ApsExifDataParameter.KEY_EXIF_SCENE_CAPTURE_TYPE, Integer.valueOf(apsExifData.mExifSceneCaptureType));
            this.mBaseParameter.set(ApsExifDataParameter.KEY_EXIF_INTEROP_INDEX_STR, apsExifData.mInteropIndexStr);
            this.mBaseParameter.set(ApsExifDataParameter.KEY_EXIF_INTEROP_VERSION, apsExifData.mInteropVersion);
            this.mBaseParameter.set(ApsExifDataParameter.KEY_EXIF_HEIC_QUALITY, Integer.valueOf(apsExifData.mHeicQuality));
        }
    }

    private void setApsExtendData(ApsExtendData apsExtendData) {
        if (apsExtendData != null) {
            this.mBaseParameter.set(ApsExtendDataParameter.KEY_LINEAR_MASK, apsExtendData.mLinearMask);
            this.mBaseParameter.set(ApsExtendDataParameter.KEY_LOCAL_HDR_DATA, apsExtendData.mLocalHDRData);
            this.mBaseParameter.set(ApsExtendDataParameter.KEY_SRC_IMAGE, apsExtendData.mSrcImage);
            this.mBaseParameter.set(ApsExtendDataParameter.KEY_SRC_IMAGE_BLOCK, apsExtendData.mSrcImageBlock);
            this.mBaseParameter.set(ApsExtendDataParameter.KEY_WATERMARK, apsExtendData.mWatermark);
            this.mBaseParameter.set(ApsExtendDataParameter.KEY_WATERMARK_CONFIG, apsExtendData.mWatermarkConfig);
            this.mBaseParameter.set(ApsExtendDataParameter.KEY_REAR_DEPTH, apsExtendData.mRearDepth);
            this.mBaseParameter.set(ApsExtendDataParameter.KEY_REAR_DEPTH_CONFIG, apsExtendData.mRearDepthConfig);
            this.mBaseParameter.set(ApsExtendDataParameter.KEY_FRONT_DEPTH, apsExtendData.mFrontDepth);
            this.mBaseParameter.set(ApsExtendDataParameter.KEY_FRONT_DEPTH_CONFIG, apsExtendData.mFrontDepthConfig);
            this.mBaseParameter.set(ApsExtendDataParameter.KEY_FRONT_SEGMENT, apsExtendData.mFrontSegment);
            this.mBaseParameter.set(ApsExtendDataParameter.KEY_FRONT_HAIR_MASK, apsExtendData.mFrontHairmask);
            this.mBaseParameter.set(ApsExtendDataParameter.KEY_FRONT_MATTE_INFO, apsExtendData.mFrontMatteinfo);
            this.mBaseParameter.set(ApsExtendDataParameter.KEY_FRONT_NEGEVIMG, apsExtendData.mFrontNegevimg);
            this.mBaseParameter.set(ApsExtendDataParameter.KEY_FILTER, apsExtendData.mFilter);
            this.mBaseParameter.set(ApsExtendDataParameter.KEY_DEPTH_RULE_CONFIG, apsExtendData.mDepthRuleConfig);
        }
    }

    public void setCaptureFailure(CaptureFailure captureFailure) {
        this.mCaptureFailure = captureFailure;
    }

    public CaptureFailure getCaptureFailure() {
        return this.mCaptureFailure;
    }
}
