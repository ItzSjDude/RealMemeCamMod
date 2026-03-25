package com.oplus.ocs.camera.consumer.apsAdapter;

import android.graphics.Bitmap;
import android.hardware.HardwareBuffer;
import android.hardware.camera2.CameraMetadata;
import android.media.Image;
import android.os.UserHandle;
import android.view.Surface;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import com.oplus.exif.OplusExifInterface;
import com.oplus.exif.OplusRational;
import com.oplus.ocs.camera.consumer.apsAdapter.adapter.ApsExifData;
import com.oplus.ocs.camera.consumer.apsAdapter.adapter.ApsParameters;
import com.oplus.ocs.camera.consumer.apsAdapter.adapter.ApsResult;
import java.lang.reflect.Method;
import java.util.Map;

/* JADX INFO: loaded from: classes.dex */
class APSClientKeyBase {
    static final /* synthetic */ boolean $assertionsDisabled = false;
    static final int ERROR_CODE_NO_ERR = 0;
    static final String KEY_ALGONODE_ENABLE = "algonode_enable";
    static final String KEY_ALGONODE_NAME = "algonode_name";
    static final String KEY_BASIC_TYPE_SUFFIX = "_BASIC_";
    static final String KEY_IMAGEREADER_HASH = "imagereader_hash";
    static final String KEY_OBJECT_TYPE_SUFFIX = "_OBJECT_";
    static final String KEY_PARAM_APSVERSION = "apsVersion";
    static final String KEY_PARAM_BITMAPOBJ = "bitmapobj";
    static final String KEY_PARAM_BUFFERPLANESDATA = "bufferPlanesData";
    static final String KEY_PARAM_CAMERAMETADATA = "cameraMetadata";
    static final String KEY_PARAM_CHECKOUT_OBJECT = "checkout_valid_object";
    static final String KEY_PARAM_CHECKOUT_RESULT = "checkout_valid_result";
    static final String KEY_PARAM_CLOSE_OBJECT = "close_object";
    static final String KEY_PARAM_CONSUMERPTR = "consumer_ptr";
    static final String KEY_PARAM_FRAMENUMBER = "frameNumber";
    static final String KEY_PARAM_HARDWAREBUFFEROBJ = "hardwarebufferobj";
    static final String KEY_PARAM_HEIFCODECTYPE = "heifCodecType";
    static final String KEY_PARAM_HWBUFFER = "hwBuffer";
    static final String KEY_PARAM_IMAGEBUFFERARRAY = "imageBufferArray";
    static final String KEY_PARAM_IMAGEBUFFEROBJ = "imagebufferobj";
    static final String KEY_PARAM_IMAGEOBJ = "imageobj";
    static final String KEY_PARAM_IMAGEREADER = "imageReader";
    static final String KEY_PARAM_ISCAMERAUNIT = "isCameraUnit";
    static final String KEY_PARAM_ISDETACHED = "isDetached";
    static final String KEY_PARAM_ISINC = "isInc";
    static final String KEY_PARAM_LOGICMETAOBJ = "logicmetaobj";
    static final String KEY_PARAM_METABUFFER = "metaBuffer";
    static final String KEY_PARAM_METABUFFEROBJ = "metaBufferObj";
    static final String KEY_PARAM_METADATA = "metadata";
    static final String KEY_PARAM_METAHWBUFFEROBJ = "metahwbufferobj";
    static final String KEY_PARAM_METAIMAGE = "metaImage";
    static final String KEY_PARAM_METAMAP = "metaMap";
    static final String KEY_PARAM_METAOBJ = "metaObj";
    static final String KEY_PARAM_METAREFOBJ = "metarefobj";
    static final String KEY_PARAM_NEEDMETADATA = "needMetadata";
    static final String KEY_PARAM_PARAMS = "params";
    static final String KEY_PARAM_PHYMETAOBJ = "phymetaobj";
    static final String KEY_PARAM_PIPELINENAME = "pipelineName";
    static final String KEY_PARAM_PREVIEWSURFACE = "previewSurface";
    static final String KEY_PARAM_PREVIEWSURFACEHASH = "previewSurfaceHash";
    static final String KEY_PARAM_RESULT = "result";
    static final String KEY_PARAM_ROLEVECTOR = "roleVector";
    static final String KEY_PARAM_SUB_HWBUFFER = "subHwBuffer";
    static final String KEY_PARAM_TARGETCAMERALOGICID = "targetCameraLogicId";
    static final String KEY_PARAM_TIMESTAMP = "time_stamp";
    static final String KEY_PARAM_USERID = "userId";
    static final String KEY_PARAM_VENDORTAGIDS = "vendorTagIds";
    static final String KEY_PARAM_WATERMARKBUFFER = "watermarkbuffer";
    static final String KEY_PARAM_WATERMARKHEIGHT = "watermark_height";
    static final String KEY_PARAM_WATERMARKREFWIDTH = "watermark_refwidth";
    static final String KEY_PARAM_WATERMARKWIDTH = "watermark_width";
    static final String KEY_PIPELINE_ENABLE = "pipeline_enable";
    static final String KEY_PIPELINE_NAME = "pipeline_name";
    static final String KEY_SFX_BUFFERPLANESCOLSTRIDE = "bufferPlanesColstride";
    static final String KEY_SFX_BUFFERPLANESDATA = "bufferPlanesData";
    static final String KEY_SFX_BUFFERPLANESHEIGHT = "bufferPlanesHeight";
    static final String KEY_SFX_BUFFERPLANESROWSTRIDE = "bufferPlanesRowstride";
    static final String KEY_SFX_BUFFERPLANESWIDTH = "bufferPlanesWidth";
    static final String KEY_SFX_CALLBACKIMGHEIFDEBUGDATA = "callBackImgHeifDebugData";
    static final String KEY_SFX_CALLBACKIMGHEIFDEBUGSIZE = "callBackImgHeifDebugSize";
    static final String KEY_SFX_CALLBACKIMGHEIFEXIFBUFFER = "callBackImgHeifExifBuffer";
    static final String KEY_SFX_CALLBACKIMGHEIFEXIFSIZE = "callBackImgHeifExifSize";
    static final String KEY_SFX_CALLBACKIMGHEIFFD = "callBackImgHeifFd";
    static final String KEY_SFX_CALLBACKIMGROTATION = "callBackImgRotation";
    static final String KEY_SFX_FILTER_BUFFER = "filterBuffer";
    static final String KEY_SFX_FRONT_DEPTH_BUFFER = "frontDepthBuffer";
    static final String KEY_SFX_FRONT_DEPTH_CONFIG_BUFFER = "frontDepthConfigBuffer";
    static final String KEY_SFX_FRONT_HAIRMASK_BUFFER = "frontHairmaskBuffer";
    static final String KEY_SFX_FRONT_MATTEINFO_BUFFER = "frontMatteinfoBuffer";
    static final String KEY_SFX_FRONT_NEGEVIMG_BUFFER = "frontNegevimgBuffer";
    static final String KEY_SFX_FRONT_SEGMENT_BUFFER = "frontSegmentBuffer";
    static final String KEY_SFX_HEIFENCODEFORMAT = "heifEncodeFormat";
    static final String KEY_SFX_LINEAR_MASK_BUFFER = "linearMaskBuffer";
    static final String KEY_SFX_LOCAL_HDR_BUFFER = "localHdfBuffer";
    static final String KEY_SFX_NEED = "needExifData";
    static final String KEY_SFX_REAR_DEPTH_BUFFER = "rearDepthBuffer";
    static final String KEY_SFX_REAR_DEPTH_CONFIG_BUFFER = "rearDepthConfigBuffer";
    static final String KEY_SFX_SRC_IMAGE_BLOCK_BUFFER = "srcImageBlockBuffer";
    static final String KEY_SFX_SRC_IMAGE_BUFFER = "srcImageBuffer";
    static final String KEY_SFX_WATER_MARK_BUFFER = "waterMarkBuffer";
    static final String KEY_SFX_WATER_MARK_CONFIG_BUFFER = "waterMarkConfigBuffer";
    static final String KEY_TYPE_BITMAP = "_BITMAP_OBJECT_";
    static final String KEY_TYPE_BITMAP_ARRAY = "_BITMAP_OBJECT_ARRAY_";
    static final String KEY_TYPE_BOOLEAN_ARRAY = "_BOOLEAN_BASIC_ARRAY_";
    static final String KEY_TYPE_BYTE = "_BYTE_BASIC_";
    static final String KEY_TYPE_CAMERAMETADATA = "_CAMERAMETADATA_OBJECT_";
    static final String KEY_TYPE_CAMERAMETADATA_ARRAY = "_CAMERAMETADATA_OBJECT_ARRAY_";
    static final String KEY_TYPE_CAMERAMETADATA_ARRAYMAP = "_CAMERAMETADATA_OBJECT_ARRAYMAP_";
    static final String KEY_TYPE_CAPTURERESULT = "_CAPTURERESULT_OBJECT_";
    static final String KEY_TYPE_CAPTURERESULT_ARRAY = "_CAPTURERESULT_OBJECT_ARRAY_";
    static final String KEY_TYPE_CHAR = "_CHAR_BASIC_";
    static final String KEY_TYPE_CHAR_ARRAY = "_CHAR_BASIC_ARRAY_";
    static final String KEY_TYPE_DOUBLE = "_DOUBLE_BASIC_";
    static final String KEY_TYPE_DOUBLE_ARRAY = "_DOUBLE_BASIC_ARRAY_";
    static final String KEY_TYPE_FLOAT = "_FLOAT_BASIC_";
    static final String KEY_TYPE_FLOAT_ARRAY = "_FLOAT_BASIC_ARRAY_";
    static final String KEY_TYPE_HARDWAREBUFFER = "_HARDWAREBUFFER_OBJECT_";
    static final String KEY_TYPE_HARDWAREBUFFER_ARRAY = "_HARDWAREBUFFER_OBJECT_ARRAY_";
    static final String KEY_TYPE_IMAGE = "_IMAGE_OBJECT_";
    static final String KEY_TYPE_IMAGEBUFFER = "_IMAGEBUFFER_OBJECT_";
    static final String KEY_TYPE_IMAGEBUFFER_ARRAY = "_IMAGEBUFFER_OBJECT_ARRAY_";
    static final String KEY_TYPE_IMAGEREADER = "_IMAGEREADER_OBJECT_";
    static final String KEY_TYPE_IMAGEREADER_ARRAY = "_IMAGEREADER_OBJECT_ARRAY_";
    static final String KEY_TYPE_IMAGE_ARRAY = "_IMAGE_OBJECT_ARRAY_";
    static final String KEY_TYPE_INT_ARRAY = "_INT_BASIC_ARRAY_";
    static final String KEY_TYPE_LONG_ARRAY = "_LONG_BASIC_ARRAY_";
    static final String KEY_TYPE_SHORT = "_SHORT_BASIC_";
    static final String KEY_TYPE_SHORT_ARRAY = "_SHORT_BASIC_ARRAY_";
    static final String KEY_TYPE_STRING_ARRAY = "_STRING_BASIC_ARRAY_";
    static final String KEY_TYPE_STRING_ARRAY_VALUE = "_STRING_BASIC_ARRAYVALUE_";
    static final String KEY_TYPE_SURFACE = "_SURFACE_OBJECT_";
    static final String KEY_TYPE_SURFACE_ARRAY = "_SURFACE_OBJECT_ARRAY_";
    static final String KEY_TYPE_TOTALCAPTURERESULT = "_TOTALCAPTURERESULT_OBJECT_";
    static final String KEY_TYPE_TOTALCAPTURERESULT_ARRAY = "_TOTALCAPTURERESULT_OBJECT_ARRAY_";
    static final int METHOD_FIND = 0;
    static final int METHOD_NOT_FIND = -1;
    static final String POST_ATTCH_HW_BUF = "attachHWBufToBufQEvent";
    static final String POST_BUFQ_ALC_ENABLE = "bufQAllocEnableEvent";
    static final String POST_EXCHG_HW_BUF = "exchgHWBufBtwBufQEvent";
    static final String POST_PROC_HEIF = "processHeifEvent";
    static final int RESULT_ERROR = -1;
    static final int RESULT_NO_ERROR = 0;
    private static final String TAG = "APSClientKeyBase";
    static final String KEY_PARAM_EXIFDATA = "exifData";
    static final String KEY_SFX_SENSORNAME = "sensorName";
    static final String KEY_TYPE_STRING = "_STRING_BASIC_";
    private static final String KEY_EXIF_SENSOR_NAME = buildKey("", KEY_PARAM_EXIFDATA, KEY_SFX_SENSORNAME, KEY_TYPE_STRING);
    static final String KEY_SFX_EXIFROTATE = "exifRotate";
    static final String KEY_TYPE_INT = "_INT_BASIC_";
    private static final String KEY_EXIF_ROTATE = buildKey("", KEY_PARAM_EXIFDATA, KEY_SFX_EXIFROTATE, KEY_TYPE_INT);
    static final String KEY_SFX_EXIFISO = "exifIso";
    static final String KEY_TYPE_LONG = "_LONG_BASIC_";
    private static final String KEY_EXIF_ISO = buildKey("", KEY_PARAM_EXIFDATA, KEY_SFX_EXIFISO, KEY_TYPE_LONG);
    static final String KEY_SFX_EXIFWHITEBALANCEMODE = "exifWhiteBalanceMode";
    private static final String KEY_EXIF_WHITE_BALANCE_MODE = buildKey("", KEY_PARAM_EXIFDATA, KEY_SFX_EXIFWHITEBALANCEMODE, KEY_TYPE_INT);
    static final String KEY_SFX_FLASHVALUE = "flashValue";
    private static final String KEY_EXIF_FLASH_VALUE = buildKey("", KEY_PARAM_EXIFDATA, KEY_SFX_FLASHVALUE, KEY_TYPE_INT);
    static final String KEY_SFX_EXIFLATITUDEREF = "exifLatitudeRef";
    private static final String KEY_EXIF_LATITUDE = buildKey("", KEY_PARAM_EXIFDATA, KEY_SFX_EXIFLATITUDEREF, KEY_TYPE_STRING);
    static final String KEY_SFX_EXIFLONGTITUDEREF = "exifLongitudeRef";
    private static final String KEY_EXIF_LONGITUDE = buildKey("", KEY_PARAM_EXIFDATA, KEY_SFX_EXIFLONGTITUDEREF, KEY_TYPE_STRING);
    static final String KEY_SFX_EXIFALTITUDEREF = "exifAltitudeRef";
    private static final String KEY_EXIF_ALTITUDE = buildKey("", KEY_PARAM_EXIFDATA, KEY_SFX_EXIFALTITUDEREF, KEY_TYPE_INT);
    static final String KEY_SFX_DOCEXIFGPSDATASTAMP = "docExifGpsDateStamp";
    private static final String KEY_EXIF_GPS_DATE_STAMP = buildKey("", KEY_PARAM_EXIFDATA, KEY_SFX_DOCEXIFGPSDATASTAMP, KEY_TYPE_STRING);
    static final String KEY_SFX_EXIFDATETIME = "exifDateTime";
    private static final String KEY_EXIF_DATE_TIME = buildKey("", KEY_PARAM_EXIFDATA, KEY_SFX_EXIFDATETIME, KEY_TYPE_STRING);
    static final String KEY_SFX_EXIFSUBDATETIME = "exifSubDateTime";
    private static final String KEY_EXIF_SUB_DATE_TIME = buildKey("", KEY_PARAM_EXIFDATA, KEY_SFX_EXIFSUBDATETIME, KEY_TYPE_STRING);
    static final String KEY_SFX_EXIFMODEL = "exifModel";
    private static final String KEY_EXIF_MODEL = buildKey("", KEY_PARAM_EXIFDATA, KEY_SFX_EXIFMODEL, KEY_TYPE_STRING);
    static final String KEY_SFX_EXIFMANUFACTURE = "exifManufacture";
    private static final String KEY_EXIF_MANUFACTURE = buildKey("", KEY_PARAM_EXIFDATA, KEY_SFX_EXIFMANUFACTURE, KEY_TYPE_STRING);
    static final String KEY_SFX_EXIFCOMMENTS = "exifComments";
    private static final String KEY_EXIF_COMMENTS = buildKey("", KEY_PARAM_EXIFDATA, KEY_SFX_EXIFCOMMENTS, KEY_TYPE_STRING);
    static final String KEY_SFX_MIRROR = "mirror";
    static final String KEY_TYPE_BOOLEAN = "_BOOLEAN_BASIC_";
    private static final String KEY_EXIF_MIRROR = buildKey("", KEY_PARAM_EXIFDATA, KEY_SFX_MIRROR, KEY_TYPE_BOOLEAN);
    static final String KEY_SFX_EXIFFNUMBERNUM = "exifFNumber_numerator";
    private static final String KEY_EXIF_FNUMBER_NUMERATOR = buildKey("", KEY_PARAM_EXIFDATA, KEY_SFX_EXIFFNUMBERNUM, KEY_TYPE_LONG);
    static final String KEY_SFX_EXIFFNUMBERDEN = "exifFNumber_denominator";
    private static final String KEY_EXIF_FNUMBER_DENOMINATOR = buildKey("", KEY_PARAM_EXIFDATA, KEY_SFX_EXIFFNUMBERDEN, KEY_TYPE_LONG);
    static final String KEY_SFX_EXIFEXPTIMENUM = "exifExpTime_numerator";
    private static final String KEY_EXIF_EXPTIME_NUMERATOR = buildKey("", KEY_PARAM_EXIFDATA, KEY_SFX_EXIFEXPTIMENUM, KEY_TYPE_LONG);
    static final String KEY_SFX_EXIFEXPTIMEDEN = "exifExpTime_denominator";
    private static final String KEY_EXIF_EXPTIME_DENOMINATOR = buildKey("", KEY_PARAM_EXIFDATA, KEY_SFX_EXIFEXPTIMEDEN, KEY_TYPE_LONG);
    static final String KEY_SFX_EXIFAPERTURENUM = "exifAperture_numerator";
    private static final String KEY_EXIF_APERTURE_NUMERATOR = buildKey("", KEY_PARAM_EXIFDATA, KEY_SFX_EXIFAPERTURENUM, KEY_TYPE_LONG);
    static final String KEY_SFX_EXIFAPERTUREDEN = "exifAperture_denominator";
    private static final String KEY_EXIF_APERTURE_DENOMINATOR = buildKey("", KEY_PARAM_EXIFDATA, KEY_SFX_EXIFAPERTUREDEN, KEY_TYPE_LONG);
    static final String KEY_SFX_EXIFEXPOSUREBIASNUM = "exifExposureBias_numerator";
    private static final String KEY_EXIF_EXPOSUREBIAS_NUMERATOR = buildKey("", KEY_PARAM_EXIFDATA, KEY_SFX_EXIFEXPOSUREBIASNUM, KEY_TYPE_LONG);
    static final String KEY_SFX_EXIFEXPOSUREBIASDEN = "exifExposureBias_denominator";
    private static final String KEY_EXIF_EXPOSUREBIAS_DENOMINATOR = buildKey("", KEY_PARAM_EXIFDATA, KEY_SFX_EXIFEXPOSUREBIASDEN, KEY_TYPE_LONG);
    static final String KEY_SFX_EXIFFOCALLENGTHNUM = "exifFocalLength_numerator";
    private static final String KEY_EXIF_FOCAL_LENGTH_NUMERATOR = buildKey("", KEY_PARAM_EXIFDATA, KEY_SFX_EXIFFOCALLENGTHNUM, KEY_TYPE_LONG);
    static final String KEY_SFX_EXIFFOCALLENGTHDEN = "exifFocalLength_denominator";
    private static final String KEY_EXIF_FOCAL_LENGTH_DENOMINATOR = buildKey("", KEY_PARAM_EXIFDATA, KEY_SFX_EXIFFOCALLENGTHDEN, KEY_TYPE_LONG);
    static final String KEY_SFX_EXIFLATITUDENUM = "exifLatitude_numerator";
    private static final String KEY_EXIF_LATITUDE_NUM_1 = buildKey("", KEY_PARAM_EXIFDATA, KEY_SFX_EXIFLATITUDENUM, ApsParameters.FLAG_ON, KEY_TYPE_LONG);
    static final String KEY_SFX_EXIFLATITUDEDEN = "exifLatitude_denominator";
    private static final String KEY_EXIF_LATITUDE_DEM_1 = buildKey("", KEY_PARAM_EXIFDATA, KEY_SFX_EXIFLATITUDEDEN, ApsParameters.FLAG_ON, KEY_TYPE_LONG);
    private static final String KEY_EXIF_LATITUDE_NUM_2 = buildKey("", KEY_PARAM_EXIFDATA, KEY_SFX_EXIFLATITUDENUM, OplusExifInterface.GpsMeasureMode.MODE_2_DIMENSIONAL, KEY_TYPE_LONG);
    private static final String KEY_EXIF_LATITUDE_DEM_2 = buildKey("", KEY_PARAM_EXIFDATA, KEY_SFX_EXIFLATITUDEDEN, OplusExifInterface.GpsMeasureMode.MODE_2_DIMENSIONAL, KEY_TYPE_LONG);
    private static final String KEY_EXIF_LATITUDE_NUM_3 = buildKey("", KEY_PARAM_EXIFDATA, KEY_SFX_EXIFLATITUDENUM, OplusExifInterface.GpsMeasureMode.MODE_3_DIMENSIONAL, KEY_TYPE_LONG);
    private static final String KEY_EXIF_LATITUDE_DEM_3 = buildKey("", KEY_PARAM_EXIFDATA, KEY_SFX_EXIFLATITUDEDEN, OplusExifInterface.GpsMeasureMode.MODE_3_DIMENSIONAL, KEY_TYPE_LONG);
    static final String KEY_SFX_EXIFLONGTITUDENUM = "exifLongitude_numerator";
    private static final String KEY_EXIF_LONGITUDE_NUM_1 = buildKey("", KEY_PARAM_EXIFDATA, KEY_SFX_EXIFLONGTITUDENUM, ApsParameters.FLAG_ON, KEY_TYPE_LONG);
    static final String KEY_SFX_EXIFLONGTITUDEDEN = "exifLongitude_denominator";
    private static final String KEY_EXIF_LONGITUDE_DEM_1 = buildKey("", KEY_PARAM_EXIFDATA, KEY_SFX_EXIFLONGTITUDEDEN, ApsParameters.FLAG_ON, KEY_TYPE_LONG);
    private static final String KEY_EXIF_LONGITUDE_NUM_2 = buildKey("", KEY_PARAM_EXIFDATA, KEY_SFX_EXIFLONGTITUDENUM, OplusExifInterface.GpsMeasureMode.MODE_2_DIMENSIONAL, KEY_TYPE_LONG);
    private static final String KEY_EXIF_LONGITUDE_DEM_2 = buildKey("", KEY_PARAM_EXIFDATA, KEY_SFX_EXIFLONGTITUDEDEN, OplusExifInterface.GpsMeasureMode.MODE_2_DIMENSIONAL, KEY_TYPE_LONG);
    private static final String KEY_EXIF_LONGITUDE_NUM_3 = buildKey("", KEY_PARAM_EXIFDATA, KEY_SFX_EXIFLONGTITUDENUM, OplusExifInterface.GpsMeasureMode.MODE_3_DIMENSIONAL, KEY_TYPE_LONG);
    private static final String KEY_EXIF_LONGITUDE_DEM_3 = buildKey("", KEY_PARAM_EXIFDATA, KEY_SFX_EXIFLONGTITUDEDEN, OplusExifInterface.GpsMeasureMode.MODE_3_DIMENSIONAL, KEY_TYPE_LONG);
    static final String KEY_SFX_EXIFALTITUDENUM = "exifAltitude_numerator";
    private static final String KEY_EXIF_ALTITUDE_NUM = buildKey("", KEY_PARAM_EXIFDATA, KEY_SFX_EXIFALTITUDENUM, KEY_TYPE_LONG);
    static final String KEY_SFX_EXIFALTITUDEEDEN = "exifAltitude_denominator";
    private static final String KEY_EXIF_ALTITUDE_DEM = buildKey("", KEY_PARAM_EXIFDATA, KEY_SFX_EXIFALTITUDEEDEN, KEY_TYPE_LONG);
    static final String KEY_SFX_DOCEXIFGPSTIMESTAMPNUM = "docExifGpsTimeStamp_numerator";
    private static final String KEY_EXIF_GPS_TIME_STAMP_NUM_1 = buildKey("", KEY_PARAM_EXIFDATA, KEY_SFX_DOCEXIFGPSTIMESTAMPNUM, ApsParameters.FLAG_ON, KEY_TYPE_LONG);
    static final String KEY_SFX_DOCEXIFGPSTIMESTAMPDEN = "docExifGpsTimeStamp_denominator";
    private static final String KEY_EXIF_GPS_TIME_STAMP_DEM_1 = buildKey("", KEY_PARAM_EXIFDATA, KEY_SFX_DOCEXIFGPSTIMESTAMPDEN, ApsParameters.FLAG_ON, KEY_TYPE_LONG);
    private static final String KEY_EXIF_GPS_TIME_STAMP_NUM_2 = buildKey("", KEY_PARAM_EXIFDATA, KEY_SFX_DOCEXIFGPSTIMESTAMPNUM, OplusExifInterface.GpsMeasureMode.MODE_2_DIMENSIONAL, KEY_TYPE_LONG);
    private static final String KEY_EXIF_GPS_TIME_STAMP_DEM_2 = buildKey("", KEY_PARAM_EXIFDATA, KEY_SFX_DOCEXIFGPSTIMESTAMPDEN, OplusExifInterface.GpsMeasureMode.MODE_2_DIMENSIONAL, KEY_TYPE_LONG);
    private static final String KEY_EXIF_GPS_TIME_STAMP_NUM_3 = buildKey("", KEY_PARAM_EXIFDATA, KEY_SFX_DOCEXIFGPSTIMESTAMPNUM, OplusExifInterface.GpsMeasureMode.MODE_3_DIMENSIONAL, KEY_TYPE_LONG);
    private static final String KEY_EXIF_GPS_TIME_STAMP_DEM_3 = buildKey("", KEY_PARAM_EXIFDATA, KEY_SFX_DOCEXIFGPSTIMESTAMPDEN, OplusExifInterface.GpsMeasureMode.MODE_3_DIMENSIONAL, KEY_TYPE_LONG);
    static final String KEY_SFX_APSSIZEDATATYPESIZE = "apsSizeDataType_size";
    private static final String KEY_EXIF_STATES_DEBUG_DATA_SIZE = buildKey("", KEY_PARAM_EXIFDATA, KEY_SFX_APSSIZEDATATYPESIZE, KEY_TYPE_LONG);
    static final String KEY_SFX_APSSIZEDATATYPEBUFFER = "apsSizeDataType_buffer";
    static final String KEY_TYPE_BYTE_ARRAY = "_BYTE_BASIC_ARRAY_";
    private static final String KEY_EXIF_STATES_DEBUG_DATA_BUFFER = buildKey("", KEY_PARAM_EXIFDATA, KEY_SFX_APSSIZEDATATYPEBUFFER, KEY_TYPE_BYTE_ARRAY);
    static final String KEY_SFX_SUPPORTDCIP3 = "supportDCIP3";
    private static final String KEY_EXIF_SUPPORT_DCIP3 = buildKey("", KEY_PARAM_EXIFDATA, KEY_SFX_SUPPORTDCIP3, KEY_TYPE_BOOLEAN);
    static final String KEY_SFX_SUPPORTLOCATION = "supportLocation";
    private static final String KEY_EXIF_LOCATION = buildKey("", KEY_PARAM_EXIFDATA, KEY_SFX_SUPPORTLOCATION, KEY_TYPE_BOOLEAN);
    static final String KEY_SFX_SUPPORTLOCATIONTIMESTAMP = "supportLocationTimeStamp";
    private static final String KEY_EXIF_LOCATION_TIME_STAMP = buildKey("", KEY_PARAM_EXIFDATA, KEY_SFX_SUPPORTLOCATIONTIMESTAMP, KEY_TYPE_BOOLEAN);
    static final String KEY_SFX_IMAGEWIDTH = "imageWidth";
    private static final String KEY_EXIF_IMAGE_WIDTH = buildKey("", KEY_PARAM_EXIFDATA, KEY_SFX_IMAGEWIDTH, KEY_TYPE_INT);
    static final String KEY_SFX_IMAGEHEIGHT = "imageHeight";
    private static final String KEY_EXIF_IMAGE_HEIGHT = buildKey("", KEY_PARAM_EXIFDATA, KEY_SFX_IMAGEHEIGHT, KEY_TYPE_INT);
    static final String KEY_SFX_TIFFYCRCBPOSITIONING = "tiffYcrcbPositioning";
    private static final String KEY_EXIF_TIFFYCRCBPOSITIONING = buildKey("", KEY_PARAM_EXIFDATA, KEY_SFX_TIFFYCRCBPOSITIONING, KEY_TYPE_INT);
    static final String KEY_SFX_TIFFRESOLUTIONUNIT = "tiffResolutionUnit";
    private static final String KEY_EXIF_TIFFRESOLUTIONUNIT = buildKey("", KEY_PARAM_EXIFDATA, KEY_SFX_TIFFRESOLUTIONUNIT, KEY_TYPE_INT);
    static final String KEY_SFX_TIFFXRESOLUTIONNUM = "tiffXResolution_numerator";
    private static final String KEY_EXIF_TIFF_X_RESOLUTION_NUM = buildKey("", KEY_PARAM_EXIFDATA, KEY_SFX_TIFFXRESOLUTIONNUM, KEY_TYPE_LONG);
    static final String KEY_SFX_TIFFXRESOLUTIONDEN = "tiffXResolution_denominator";
    private static final String KEY_EXIF_TIFF_X_RESOLUTION_DEM = buildKey("", KEY_PARAM_EXIFDATA, KEY_SFX_TIFFXRESOLUTIONDEN, KEY_TYPE_LONG);
    static final String KEY_SFX_TIFFYRESOLUTIONNUM = "tiffYResolution_numerator";
    private static final String KEY_EXIF_TIFF_Y_RESOLUTION_NUM = buildKey("", KEY_PARAM_EXIFDATA, KEY_SFX_TIFFYRESOLUTIONNUM, KEY_TYPE_LONG);
    static final String KEY_SFX_TIFFYRESOLUTIONDEN = "tiffYResolution_denominator";
    private static final String KEY_EXIF_TIFF_Y_RESOLUTION_DEM = buildKey("", KEY_PARAM_EXIFDATA, KEY_SFX_TIFFYRESOLUTIONDEN, KEY_TYPE_LONG);
    static final String KEY_SFX_EXIFEXPOSUREPROGRAM = "exifExposureProgram";
    private static final String KEY_EXIF_EXPOSURE_PROGRAM = buildKey("", KEY_PARAM_EXIFDATA, KEY_SFX_EXIFEXPOSUREPROGRAM, KEY_TYPE_INT);
    static final String KEY_SFX_EXIFVERSION = "exifVersion";
    private static final String KEY_EXIF_VERSION = buildKey("", KEY_PARAM_EXIFDATA, KEY_SFX_EXIFVERSION, KEY_TYPE_STRING);
    static final String KEY_SFX_EXIFCOMPONENTSCONFIGS = "exifComponentsConfig";
    private static final String KEY_EXIF_COMPONENTS_CONFIG = buildKey("", KEY_PARAM_EXIFDATA, KEY_SFX_EXIFCOMPONENTSCONFIGS, KEY_TYPE_STRING);
    static final String KEY_SFX_EXIFSHUTTERSPEEDNUM = "exifShutterSpeed_numerator";
    private static final String KEY_EXIF_SHUTTER_SPEED_NUM = buildKey("", KEY_PARAM_EXIFDATA, KEY_SFX_EXIFSHUTTERSPEEDNUM, KEY_TYPE_LONG);
    static final String KEY_SFX_EXIFSHUTTERSPEEDDEN = "exifShutterSpeed_denominator";
    private static final String KEY_EXIF_SHUTTER_SPEED_DEM = buildKey("", KEY_PARAM_EXIFDATA, KEY_SFX_EXIFSHUTTERSPEEDDEN, KEY_TYPE_LONG);
    static final String KEY_SFX_EXIFBRIGHTNESSNUM = "exifBrightness_numerator";
    private static final String KEY_EXIF_BRIGHTNESS_NUM = buildKey("", KEY_PARAM_EXIFDATA, KEY_SFX_EXIFBRIGHTNESSNUM, KEY_TYPE_LONG);
    static final String KEY_SFX_EXIFBRIGHTNESSDEN = "exifBrightness_denominator";
    private static final String KEY_EXIF_BRIGHTNESS_DEM = buildKey("", KEY_PARAM_EXIFDATA, KEY_SFX_EXIFBRIGHTNESSDEN, KEY_TYPE_LONG);
    static final String KEY_SFX_EXIFMAXAPERTURENUM = "exifMaxAperture_numerator";
    private static final String KEY_EXIF_MAX_APERTURE_NUM = buildKey("", KEY_PARAM_EXIFDATA, KEY_SFX_EXIFMAXAPERTURENUM, KEY_TYPE_LONG);
    static final String KEY_SFX_EXIFMAXAPERTUREDEN = "exifMaxAperture_denominator";
    private static final String KEY_EXIF_MAX_APERTURE_DEM = buildKey("", KEY_PARAM_EXIFDATA, KEY_SFX_EXIFMAXAPERTUREDEN, KEY_TYPE_LONG);
    static final String KEY_SFX_EXIFMETERINGMODE = "exifMeteringMode";
    private static final String KEY_EXIF_METERING_MODE = buildKey("", KEY_PARAM_EXIFDATA, KEY_SFX_EXIFMETERINGMODE, KEY_TYPE_INT);
    static final String KEY_SFX_EXIFMAKERNOTE = "exifMakerNote";
    private static final String KEY_EXIF_MAKER_NOTE = buildKey("", KEY_PARAM_EXIFDATA, KEY_SFX_EXIFMAKERNOTE, KEY_TYPE_STRING);
    static final String KEY_SFX_EXIFFLASHPIXVERSION = "exifFlashPixVersion";
    private static final String KEY_EXIF_FLASH_PIX_VERSION = buildKey("", KEY_PARAM_EXIFDATA, KEY_SFX_EXIFFLASHPIXVERSION, KEY_TYPE_STRING);
    static final String KEY_SFX_EXIFCOLORSPACE = "exifColorSpace";
    private static final String KEY_EXIF_COLOR_SPACE = buildKey("", KEY_PARAM_EXIFDATA, KEY_SFX_EXIFCOLORSPACE, KEY_TYPE_INT);
    static final String KEY_SFX_EXIFSENSINGMETHOD = "exifSensingMethod";
    private static final String KEY_EXIF_SENSING_METHOD = buildKey("", KEY_PARAM_EXIFDATA, KEY_SFX_EXIFSENSINGMETHOD, KEY_TYPE_INT);
    static final String KEY_SFX_EXIFSCENETYPE = "exifSceneType";
    private static final String KEY_EXIF_SCENE_TYPE = buildKey("", KEY_PARAM_EXIFDATA, KEY_SFX_EXIFSCENETYPE, KEY_TYPE_STRING);
    static final String KEY_SFX_EXIFEXPOSUREMODE = "exifExposureMode";
    private static final String KEY_EXIF_EXPOSURE_MODE = buildKey("", KEY_PARAM_EXIFDATA, KEY_SFX_EXIFEXPOSUREMODE, KEY_TYPE_INT);
    static final String KEY_SFX_EXIFFOCALLENGTH35MM = "exifFocalLength35mm";
    private static final String KEY_EXIF_FOCAL_LENGTH_35MM = buildKey("", KEY_PARAM_EXIFDATA, KEY_SFX_EXIFFOCALLENGTH35MM, KEY_TYPE_INT);
    static final String KEY_SFX_EXIFSCENECAPTURETYPE = "exifSceneCaptureType";
    private static final String KEY_EXIF_SCENE_CAPTURE_TYPE = buildKey("", KEY_PARAM_EXIFDATA, KEY_SFX_EXIFSCENECAPTURETYPE, KEY_TYPE_INT);
    static final String KEY_SFX_INTEROPINDEXSTR = "interopIndexStr";
    private static final String KEY_EXIF_INTEROP_INDEX = buildKey("", KEY_PARAM_EXIFDATA, KEY_SFX_INTEROPINDEXSTR, KEY_TYPE_STRING);
    static final String KEY_SFX_INTEROPVERSION = "interopVersion";
    private static final String KEY_EXIF_INTEROP_VERSION = buildKey("", KEY_PARAM_EXIFDATA, KEY_SFX_INTEROPVERSION, KEY_TYPE_STRING);
    static final String KEY_SFX_HEICQUALITY = "heicQuality";
    private static final String KEY_EXIF_HEIC_QUALITY = buildKey("", KEY_PARAM_EXIFDATA, KEY_SFX_HEICQUALITY, KEY_TYPE_INT);

    APSClientKeyBase() {
    }

    @NonNull
    protected static String buildKey(@NonNull String str, @NonNull String str2, @NonNull String str3, @NonNull String str4, @NonNull String str5) {
        String str6;
        if (!str.equals("") && (!str2.equals("") || !str3.equals("") || !str4.equals(""))) {
            str = str + "_";
        } else if (str.equals("")) {
            str = "";
        }
        if (!str2.equals("") && (!str3.equals("") || !str4.equals(""))) {
            str = str + str2 + "_";
        } else if (!str2.equals("")) {
            str = str + str2;
        }
        if (!str3.equals("") && !str4.equals("")) {
            str = str + str3 + "_";
        } else if (!str3.equals("")) {
            str = str + str3;
        }
        if (!str4.equals("")) {
            str = str + str4;
        }
        if (str5.equals("")) {
            str6 = "ERROR";
        } else {
            str6 = str + str5;
        }
        ApsAdapterLog.d(TAG, "key: " + str6);
        return str6;
    }

    @NonNull
    protected static String buildKey(String str, String str2, String str3, String str4) {
        return buildKey(str, str2, str3, "", str4);
    }

    @NonNull
    protected static String buildKey(String str, String str2, String str3) {
        return buildKey(str, str2, "", "", str3);
    }

    protected static void fillExifData(Map<String, Object> map, @NonNull ApsExifData apsExifData) {
        apsExifData.mSensorName = getString(map, KEY_EXIF_SENSOR_NAME);
        apsExifData.mExifRotate = getInt(map, KEY_EXIF_ROTATE);
        apsExifData.mExifIso = getLong(map, KEY_EXIF_ISO);
        apsExifData.mExifWhiteBalanceMode = getInt(map, KEY_EXIF_WHITE_BALANCE_MODE);
        apsExifData.mFlashValue = getInt(map, KEY_EXIF_FLASH_VALUE);
        apsExifData.mExifLatitudeRef = getString(map, KEY_EXIF_LATITUDE);
        apsExifData.mExifLongitudeRef = getString(map, KEY_EXIF_LONGITUDE);
        apsExifData.mExifAltitudeRef = getInt(map, KEY_EXIF_ALTITUDE);
        apsExifData.mDocExifGpsDateStamp = getString(map, KEY_EXIF_GPS_DATE_STAMP);
        apsExifData.mExifDateTime = getString(map, KEY_EXIF_DATE_TIME);
        apsExifData.mExifSubDateTime = getString(map, KEY_EXIF_SUB_DATE_TIME);
        apsExifData.mExifModel = getString(map, KEY_EXIF_MODEL);
        apsExifData.mExifManufacture = getString(map, KEY_EXIF_MANUFACTURE);
        apsExifData.mExifComments = getString(map, KEY_EXIF_COMMENTS);
        apsExifData.mbMirror = getBoolean(map, KEY_EXIF_MIRROR);
        apsExifData.mExifFNumber = new OplusRational(getLong(map, KEY_EXIF_FNUMBER_NUMERATOR), getLong(map, KEY_EXIF_FNUMBER_DENOMINATOR));
        apsExifData.mExifExpTime = new OplusRational(getLong(map, KEY_EXIF_EXPTIME_NUMERATOR), getLong(map, KEY_EXIF_EXPTIME_DENOMINATOR));
        apsExifData.mExifAperture = new OplusRational(getLong(map, KEY_EXIF_APERTURE_NUMERATOR), getLong(map, KEY_EXIF_APERTURE_DENOMINATOR));
        apsExifData.mExifExposureBias = new OplusRational(getLong(map, KEY_EXIF_EXPOSUREBIAS_NUMERATOR), getLong(map, KEY_EXIF_EXPOSUREBIAS_DENOMINATOR));
        apsExifData.mExifFocalLength = new OplusRational(getLong(map, KEY_EXIF_FOCAL_LENGTH_NUMERATOR), getLong(map, KEY_EXIF_FOCAL_LENGTH_DENOMINATOR));
        apsExifData.mExifLatitude = new OplusRational[]{new OplusRational(getLong(map, KEY_EXIF_LATITUDE_NUM_1), getLong(map, KEY_EXIF_LATITUDE_DEM_1)), new OplusRational(getLong(map, KEY_EXIF_LATITUDE_NUM_2), getLong(map, KEY_EXIF_LATITUDE_DEM_2)), new OplusRational(getLong(map, KEY_EXIF_LATITUDE_NUM_3), getLong(map, KEY_EXIF_LATITUDE_DEM_3))};
        apsExifData.mExifLongitude = new OplusRational[]{new OplusRational(getLong(map, KEY_EXIF_LONGITUDE_NUM_1), getLong(map, KEY_EXIF_LONGITUDE_DEM_1)), new OplusRational(getLong(map, KEY_EXIF_LONGITUDE_NUM_2), getLong(map, KEY_EXIF_LONGITUDE_DEM_2)), new OplusRational(getLong(map, KEY_EXIF_LONGITUDE_NUM_3), getLong(map, KEY_EXIF_LONGITUDE_DEM_3))};
        apsExifData.mExifAltitude = new OplusRational(getLong(map, KEY_EXIF_ALTITUDE_NUM), getLong(map, KEY_EXIF_ALTITUDE_DEM));
        apsExifData.mDocExifGpsTimeStamp = new OplusRational[]{new OplusRational(getLong(map, KEY_EXIF_GPS_TIME_STAMP_NUM_1), getLong(map, KEY_EXIF_GPS_TIME_STAMP_DEM_1)), new OplusRational(getLong(map, KEY_EXIF_GPS_TIME_STAMP_NUM_2), getLong(map, KEY_EXIF_GPS_TIME_STAMP_DEM_2)), new OplusRational(getLong(map, KEY_EXIF_GPS_TIME_STAMP_NUM_3), getLong(map, KEY_EXIF_GPS_TIME_STAMP_DEM_3))};
        apsExifData.mStatsDebugData = new ApsExifData.ApsSizeDataType();
        apsExifData.mStatsDebugData.mSize = getLong(map, KEY_EXIF_STATES_DEBUG_DATA_SIZE);
        apsExifData.mStatsDebugData.mBuffer = getByteArray(map, KEY_EXIF_STATES_DEBUG_DATA_BUFFER);
        apsExifData.mbSupportDCIP3 = getBoolean(map, KEY_EXIF_SUPPORT_DCIP3);
        apsExifData.mbSupportLocation = getBoolean(map, KEY_EXIF_LOCATION);
        apsExifData.mbSupportLocationTimeStamp = getBoolean(map, KEY_EXIF_LOCATION_TIME_STAMP);
        apsExifData.mImageWidth = getInt(map, KEY_EXIF_IMAGE_WIDTH);
        apsExifData.mImageHeight = getInt(map, KEY_EXIF_IMAGE_HEIGHT);
        apsExifData.mTiffYcrcbPositioning = getInt(map, KEY_EXIF_TIFFYCRCBPOSITIONING);
        apsExifData.mTiffResolutionUnit = getInt(map, KEY_EXIF_TIFFRESOLUTIONUNIT);
        apsExifData.mTiffXResolution = new OplusRational(getLong(map, KEY_EXIF_TIFF_X_RESOLUTION_NUM), getLong(map, KEY_EXIF_TIFF_X_RESOLUTION_DEM));
        apsExifData.mTiffYResolution = new OplusRational(getLong(map, KEY_EXIF_TIFF_Y_RESOLUTION_NUM), getLong(map, KEY_EXIF_TIFF_Y_RESOLUTION_DEM));
        apsExifData.mExifExposureProgram = getInt(map, KEY_EXIF_EXPOSURE_PROGRAM);
        apsExifData.mExifVersion = getString(map, KEY_EXIF_VERSION);
        apsExifData.mExifComponentsConfig = getString(map, KEY_EXIF_COMPONENTS_CONFIG);
        apsExifData.mExifShutterSpeed = new OplusRational(getLong(map, KEY_EXIF_SHUTTER_SPEED_NUM), getLong(map, KEY_EXIF_SHUTTER_SPEED_DEM));
        apsExifData.mExifBrightness = new OplusRational(getLong(map, KEY_EXIF_BRIGHTNESS_NUM), getLong(map, KEY_EXIF_BRIGHTNESS_DEM));
        apsExifData.mExifMaxAperture = new OplusRational(getLong(map, KEY_EXIF_MAX_APERTURE_NUM), getLong(map, KEY_EXIF_MAX_APERTURE_DEM));
        apsExifData.mExifMeteringMode = getInt(map, KEY_EXIF_METERING_MODE);
        apsExifData.mExifMakerNote = getString(map, KEY_EXIF_MAKER_NOTE);
        apsExifData.mExifFlashPixVersion = getString(map, KEY_EXIF_FLASH_PIX_VERSION);
        apsExifData.mExifColorSpace = getInt(map, KEY_EXIF_COLOR_SPACE);
        apsExifData.mExifSensingMethod = getInt(map, KEY_EXIF_SENSING_METHOD);
        apsExifData.mExifSceneType = getString(map, KEY_EXIF_SCENE_TYPE);
        apsExifData.mExifExposureMode = getInt(map, KEY_EXIF_EXPOSURE_MODE);
        apsExifData.mExifFocalLength35Mm = getInt(map, KEY_EXIF_FOCAL_LENGTH_35MM);
        apsExifData.mExifSceneCaptureType = getInt(map, KEY_EXIF_SCENE_CAPTURE_TYPE);
        apsExifData.mInteropIndexStr = getString(map, KEY_EXIF_INTEROP_INDEX);
        apsExifData.mInteropVersion = getString(map, KEY_EXIF_INTEROP_VERSION);
        apsExifData.mHeicQuality = getInt(map, KEY_EXIF_HEIC_QUALITY);
    }

    protected static boolean getBoolean(@NonNull Map<String, Object> map, String str) {
        Object obj = map.get(str);
        return obj != null && ((Boolean) obj).booleanValue();
    }

    protected static int getInt(@NonNull Map<String, Object> map, String str) {
        Object obj = map.get(str);
        if (obj != null) {
            return ((Integer) obj).intValue();
        }
        return 0;
    }

    protected static long getLong(@NonNull Map<String, Object> map, String str) {
        Object obj = map.get(str);
        if (obj != null) {
            return ((Long) obj).longValue();
        }
        return 0L;
    }

    @Nullable
    protected static String getString(@NonNull Map<String, Object> map, String str) {
        Object obj = map.get(str);
        if (obj != null) {
            return (String) obj;
        }
        return null;
    }

    @Nullable
    protected static byte[] getByteArray(@NonNull Map<String, Object> map, String str) {
        Object obj = map.get(str);
        if (obj != null) {
            return (byte[]) obj;
        }
        return null;
    }

    @Nullable
    protected static String[] getStringArray(@NonNull Map<String, Object> map, String str) {
        Object obj = map.get(str);
        if (obj != null) {
            return (String[]) obj;
        }
        return null;
    }

    int getCurrentUserId() {
        try {
            Method method = UserHandle.class.getMethod("myUserId", new Class[0]);
            method.setAccessible(true);
            Object objInvoke = method.invoke(null, new Object[0]);
            if (objInvoke instanceof Integer) {
                return ((Integer) objInvoke).intValue();
            }
            return -1;
        } catch (Exception unused) {
            ApsAdapterLog.e(TAG, "getCurrentUserId, error");
            return -1;
        }
    }

    String getKeySuffix(Object obj) {
        return obj instanceof Image ? KEY_TYPE_IMAGE : obj instanceof CameraMetadata ? KEY_TYPE_CAMERAMETADATA : obj instanceof HardwareBuffer ? KEY_TYPE_HARDWAREBUFFER : obj instanceof ApsResult.ImageBuffer ? KEY_TYPE_IMAGEBUFFER : obj instanceof Surface ? KEY_TYPE_SURFACE : obj instanceof Bitmap ? KEY_TYPE_BITMAP : obj instanceof byte[] ? KEY_TYPE_BYTE_ARRAY : "";
    }
}
