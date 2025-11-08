.class public Lcom/oplus/camera/aps/util/CameraApsExifData;
.super Ljava/lang/Object;
.source "CameraApsExifData.java"


# instance fields
.field public mDocExifGpsDateStamp:Ljava/lang/String;

.field public mDocExifGpsTimeStamp:[Lcom/oplus/exif/OplusRational;

.field public mExifAltitude:Lcom/oplus/exif/OplusRational;

.field public mExifAltitudeRef:I

.field public mExifAperture:Lcom/oplus/exif/OplusRational;

.field public mExifBrightness:Lcom/oplus/exif/OplusRational;

.field public mExifColorSpace:I

.field public mExifComments:Ljava/lang/String;

.field public mExifComponentsConfig:Ljava/lang/String;

.field public mExifDateTime:Ljava/lang/String;

.field public mExifExpTime:Lcom/oplus/exif/OplusRational;

.field public mExifExposureBias:Lcom/oplus/exif/OplusRational;

.field public mExifExposureMode:I

.field public mExifExposureProgram:I

.field public mExifFNumber:Lcom/oplus/exif/OplusRational;

.field public mExifFlashPixVersion:Ljava/lang/String;

.field public mExifFocalLength:Lcom/oplus/exif/OplusRational;

.field public mExifFocalLength35Mm:I

.field public mExifIso:J

.field public mExifLatitude:[Lcom/oplus/exif/OplusRational;

.field public mExifLatitudeRef:Ljava/lang/String;

.field public mExifLongitude:[Lcom/oplus/exif/OplusRational;

.field public mExifLongitudeRef:Ljava/lang/String;

.field public mExifMakerNote:Ljava/lang/String;

.field public mExifManufacture:Ljava/lang/String;

.field public mExifMaxAperture:Lcom/oplus/exif/OplusRational;

.field public mExifMeteringMode:I

.field public mExifModel:Ljava/lang/String;

.field public mExifRotate:I

.field public mExifSceneCaptureType:I

.field public mExifSceneType:Ljava/lang/String;

.field public mExifSensingMethod:I

.field public mExifShutterSpeed:Lcom/oplus/exif/OplusRational;

.field public mExifSubDateTime:Ljava/lang/String;

.field public mExifVersion:Ljava/lang/String;

.field public mExifWhiteBalanceMode:I

.field public mFlashValue:I

.field public mHeicQuality:I

.field public mImageHeight:I

.field public mImageWidth:I

.field public mInteropIndexStr:Ljava/lang/String;

.field public mInteropVersion:Ljava/lang/String;

.field public mSensorName:Ljava/lang/String;

.field public mTiffResolutionUnit:I

.field public mTiffXResolution:Lcom/oplus/exif/OplusRational;

.field public mTiffYResolution:Lcom/oplus/exif/OplusRational;

.field public mTiffYcrcbPositioning:I

.field public mbMirror:Z

.field public mbSupportDCIP3:Z

.field public mbSupportLocation:Z

.field public mbSupportLocationTimeStamp:Z


# direct methods
.method public constructor <init>(Lcom/oplus/ocs/camera/CameraPictureCallback$CameraPictureResult;)V
    .locals 2

    .line 64
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x3

    .line 29
    new-array v1, v0, [Lcom/oplus/exif/OplusRational;

    iput-object v1, p0, Lcom/oplus/camera/aps/util/CameraApsExifData;->mExifLatitude:[Lcom/oplus/exif/OplusRational;

    .line 30
    new-array v1, v0, [Lcom/oplus/exif/OplusRational;

    iput-object v1, p0, Lcom/oplus/camera/aps/util/CameraApsExifData;->mExifLongitude:[Lcom/oplus/exif/OplusRational;

    .line 32
    new-array v0, v0, [Lcom/oplus/exif/OplusRational;

    iput-object v0, p0, Lcom/oplus/camera/aps/util/CameraApsExifData;->mDocExifGpsTimeStamp:[Lcom/oplus/exif/OplusRational;

    if-eqz p1, :cond_0

    .line 65
    sget-object v0, Lcom/oplus/ocs/camera/CameraParameter;->EXIF_IMAGE_WIDTH:Lcom/oplus/ocs/camera/CameraParameter$CaptureResultKey;

    invoke-virtual {p1, v0}, Lcom/oplus/ocs/camera/CameraPictureCallback$CameraPictureResult;->get(Lcom/oplus/ocs/camera/CameraParameter$CaptureResultKey;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 66
    sget-object v0, Lcom/oplus/ocs/camera/CameraParameter;->EXIF_SENSOR_NAME:Lcom/oplus/ocs/camera/CameraParameter$CaptureResultKey;

    invoke-virtual {p1, v0}, Lcom/oplus/ocs/camera/CameraPictureCallback$CameraPictureResult;->get(Lcom/oplus/ocs/camera/CameraParameter$CaptureResultKey;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iput-object v0, p0, Lcom/oplus/camera/aps/util/CameraApsExifData;->mSensorName:Ljava/lang/String;

    .line 67
    sget-object v0, Lcom/oplus/ocs/camera/CameraParameter;->EXIF_ROTATE:Lcom/oplus/ocs/camera/CameraParameter$CaptureResultKey;

    invoke-virtual {p1, v0}, Lcom/oplus/ocs/camera/CameraPictureCallback$CameraPictureResult;->get(Lcom/oplus/ocs/camera/CameraParameter$CaptureResultKey;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    iput v0, p0, Lcom/oplus/camera/aps/util/CameraApsExifData;->mExifRotate:I

    .line 68
    sget-object v0, Lcom/oplus/ocs/camera/CameraParameter;->EXIF_ISO:Lcom/oplus/ocs/camera/CameraParameter$CaptureResultKey;

    invoke-virtual {p1, v0}, Lcom/oplus/ocs/camera/CameraPictureCallback$CameraPictureResult;->get(Lcom/oplus/ocs/camera/CameraParameter$CaptureResultKey;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/oplus/camera/aps/util/CameraApsExifData;->mExifIso:J

    .line 69
    sget-object v0, Lcom/oplus/ocs/camera/CameraParameter;->EXIF_WHITE_BALANCE_MODE:Lcom/oplus/ocs/camera/CameraParameter$CaptureResultKey;

    invoke-virtual {p1, v0}, Lcom/oplus/ocs/camera/CameraPictureCallback$CameraPictureResult;->get(Lcom/oplus/ocs/camera/CameraParameter$CaptureResultKey;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    iput v0, p0, Lcom/oplus/camera/aps/util/CameraApsExifData;->mExifWhiteBalanceMode:I

    .line 70
    sget-object v0, Lcom/oplus/ocs/camera/CameraParameter;->EXIF_FLASH_VALUE:Lcom/oplus/ocs/camera/CameraParameter$CaptureResultKey;

    invoke-virtual {p1, v0}, Lcom/oplus/ocs/camera/CameraPictureCallback$CameraPictureResult;->get(Lcom/oplus/ocs/camera/CameraParameter$CaptureResultKey;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    iput v0, p0, Lcom/oplus/camera/aps/util/CameraApsExifData;->mFlashValue:I

    .line 71
    sget-object v0, Lcom/oplus/ocs/camera/CameraParameter;->EXIF_LATITUDE_REF:Lcom/oplus/ocs/camera/CameraParameter$CaptureResultKey;

    invoke-virtual {p1, v0}, Lcom/oplus/ocs/camera/CameraPictureCallback$CameraPictureResult;->get(Lcom/oplus/ocs/camera/CameraParameter$CaptureResultKey;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iput-object v0, p0, Lcom/oplus/camera/aps/util/CameraApsExifData;->mExifLatitudeRef:Ljava/lang/String;

    .line 72
    sget-object v0, Lcom/oplus/ocs/camera/CameraParameter;->EXIF_LONGITUDE_REF:Lcom/oplus/ocs/camera/CameraParameter$CaptureResultKey;

    invoke-virtual {p1, v0}, Lcom/oplus/ocs/camera/CameraPictureCallback$CameraPictureResult;->get(Lcom/oplus/ocs/camera/CameraParameter$CaptureResultKey;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iput-object v0, p0, Lcom/oplus/camera/aps/util/CameraApsExifData;->mExifLongitudeRef:Ljava/lang/String;

    .line 73
    sget-object v0, Lcom/oplus/ocs/camera/CameraParameter;->EXIF_ALTITUDE_REF:Lcom/oplus/ocs/camera/CameraParameter$CaptureResultKey;

    invoke-virtual {p1, v0}, Lcom/oplus/ocs/camera/CameraPictureCallback$CameraPictureResult;->get(Lcom/oplus/ocs/camera/CameraParameter$CaptureResultKey;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    iput v0, p0, Lcom/oplus/camera/aps/util/CameraApsExifData;->mExifAltitudeRef:I

    .line 74
    sget-object v0, Lcom/oplus/ocs/camera/CameraParameter;->EXIF_GPS_DATE_STAMP:Lcom/oplus/ocs/camera/CameraParameter$CaptureResultKey;

    invoke-virtual {p1, v0}, Lcom/oplus/ocs/camera/CameraPictureCallback$CameraPictureResult;->get(Lcom/oplus/ocs/camera/CameraParameter$CaptureResultKey;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iput-object v0, p0, Lcom/oplus/camera/aps/util/CameraApsExifData;->mDocExifGpsDateStamp:Ljava/lang/String;

    .line 75
    sget-object v0, Lcom/oplus/ocs/camera/CameraParameter;->EXIF_DATE_TIME:Lcom/oplus/ocs/camera/CameraParameter$CaptureResultKey;

    invoke-virtual {p1, v0}, Lcom/oplus/ocs/camera/CameraPictureCallback$CameraPictureResult;->get(Lcom/oplus/ocs/camera/CameraParameter$CaptureResultKey;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iput-object v0, p0, Lcom/oplus/camera/aps/util/CameraApsExifData;->mExifDateTime:Ljava/lang/String;

    .line 76
    sget-object v0, Lcom/oplus/ocs/camera/CameraParameter;->EXIF_SUB_DATE_TIME:Lcom/oplus/ocs/camera/CameraParameter$CaptureResultKey;

    invoke-virtual {p1, v0}, Lcom/oplus/ocs/camera/CameraPictureCallback$CameraPictureResult;->get(Lcom/oplus/ocs/camera/CameraParameter$CaptureResultKey;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iput-object v0, p0, Lcom/oplus/camera/aps/util/CameraApsExifData;->mExifSubDateTime:Ljava/lang/String;

    .line 77
    sget-object v0, Lcom/oplus/ocs/camera/CameraParameter;->EXIF_MODEL:Lcom/oplus/ocs/camera/CameraParameter$CaptureResultKey;

    invoke-virtual {p1, v0}, Lcom/oplus/ocs/camera/CameraPictureCallback$CameraPictureResult;->get(Lcom/oplus/ocs/camera/CameraParameter$CaptureResultKey;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iput-object v0, p0, Lcom/oplus/camera/aps/util/CameraApsExifData;->mExifModel:Ljava/lang/String;

    .line 78
    sget-object v0, Lcom/oplus/ocs/camera/CameraParameter;->EXIF_MANUFACTURE:Lcom/oplus/ocs/camera/CameraParameter$CaptureResultKey;

    invoke-virtual {p1, v0}, Lcom/oplus/ocs/camera/CameraPictureCallback$CameraPictureResult;->get(Lcom/oplus/ocs/camera/CameraParameter$CaptureResultKey;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iput-object v0, p0, Lcom/oplus/camera/aps/util/CameraApsExifData;->mExifManufacture:Ljava/lang/String;

    .line 79
    sget-object v0, Lcom/oplus/ocs/camera/CameraParameter;->EXIF_COMMENTS:Lcom/oplus/ocs/camera/CameraParameter$CaptureResultKey;

    invoke-virtual {p1, v0}, Lcom/oplus/ocs/camera/CameraPictureCallback$CameraPictureResult;->get(Lcom/oplus/ocs/camera/CameraParameter$CaptureResultKey;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iput-object v0, p0, Lcom/oplus/camera/aps/util/CameraApsExifData;->mExifComments:Ljava/lang/String;

    .line 80
    sget-object v0, Lcom/oplus/ocs/camera/CameraParameter;->EXIF_MIRROR:Lcom/oplus/ocs/camera/CameraParameter$CaptureResultKey;

    invoke-virtual {p1, v0}, Lcom/oplus/ocs/camera/CameraPictureCallback$CameraPictureResult;->get(Lcom/oplus/ocs/camera/CameraParameter$CaptureResultKey;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    iput-boolean v0, p0, Lcom/oplus/camera/aps/util/CameraApsExifData;->mbMirror:Z

    .line 82
    sget-object v0, Lcom/oplus/ocs/camera/CameraParameter;->EXIF_NUMBER:Lcom/oplus/ocs/camera/CameraParameter$CaptureResultKey;

    invoke-virtual {p1, v0}, Lcom/oplus/ocs/camera/CameraPictureCallback$CameraPictureResult;->get(Lcom/oplus/ocs/camera/CameraParameter$CaptureResultKey;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/oplus/exif/OplusRational;

    iput-object v0, p0, Lcom/oplus/camera/aps/util/CameraApsExifData;->mExifFNumber:Lcom/oplus/exif/OplusRational;

    .line 83
    sget-object v0, Lcom/oplus/ocs/camera/CameraParameter;->EXIF_EXP_TIME:Lcom/oplus/ocs/camera/CameraParameter$CaptureResultKey;

    invoke-virtual {p1, v0}, Lcom/oplus/ocs/camera/CameraPictureCallback$CameraPictureResult;->get(Lcom/oplus/ocs/camera/CameraParameter$CaptureResultKey;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/oplus/exif/OplusRational;

    iput-object v0, p0, Lcom/oplus/camera/aps/util/CameraApsExifData;->mExifExpTime:Lcom/oplus/exif/OplusRational;

    .line 84
    sget-object v0, Lcom/oplus/ocs/camera/CameraParameter;->EXIF_APERTURE:Lcom/oplus/ocs/camera/CameraParameter$CaptureResultKey;

    invoke-virtual {p1, v0}, Lcom/oplus/ocs/camera/CameraPictureCallback$CameraPictureResult;->get(Lcom/oplus/ocs/camera/CameraParameter$CaptureResultKey;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/oplus/exif/OplusRational;

    iput-object v0, p0, Lcom/oplus/camera/aps/util/CameraApsExifData;->mExifAperture:Lcom/oplus/exif/OplusRational;

    .line 85
    sget-object v0, Lcom/oplus/ocs/camera/CameraParameter;->EXIF_EXPOSURE_BIAS:Lcom/oplus/ocs/camera/CameraParameter$CaptureResultKey;

    invoke-virtual {p1, v0}, Lcom/oplus/ocs/camera/CameraPictureCallback$CameraPictureResult;->get(Lcom/oplus/ocs/camera/CameraParameter$CaptureResultKey;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/oplus/exif/OplusRational;

    iput-object v0, p0, Lcom/oplus/camera/aps/util/CameraApsExifData;->mExifExposureBias:Lcom/oplus/exif/OplusRational;

    .line 86
    sget-object v0, Lcom/oplus/ocs/camera/CameraParameter;->EXIF_FOCAL_LENGTH:Lcom/oplus/ocs/camera/CameraParameter$CaptureResultKey;

    invoke-virtual {p1, v0}, Lcom/oplus/ocs/camera/CameraPictureCallback$CameraPictureResult;->get(Lcom/oplus/ocs/camera/CameraParameter$CaptureResultKey;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/oplus/exif/OplusRational;

    iput-object v0, p0, Lcom/oplus/camera/aps/util/CameraApsExifData;->mExifFocalLength:Lcom/oplus/exif/OplusRational;

    .line 87
    sget-object v0, Lcom/oplus/ocs/camera/CameraParameter;->EXIF_LATITUDE:Lcom/oplus/ocs/camera/CameraParameter$CaptureResultKey;

    invoke-virtual {p1, v0}, Lcom/oplus/ocs/camera/CameraPictureCallback$CameraPictureResult;->get(Lcom/oplus/ocs/camera/CameraParameter$CaptureResultKey;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/oplus/exif/OplusRational;

    iput-object v0, p0, Lcom/oplus/camera/aps/util/CameraApsExifData;->mExifLatitude:[Lcom/oplus/exif/OplusRational;

    .line 88
    sget-object v0, Lcom/oplus/ocs/camera/CameraParameter;->EXIF_LONGITUDE:Lcom/oplus/ocs/camera/CameraParameter$CaptureResultKey;

    invoke-virtual {p1, v0}, Lcom/oplus/ocs/camera/CameraPictureCallback$CameraPictureResult;->get(Lcom/oplus/ocs/camera/CameraParameter$CaptureResultKey;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/oplus/exif/OplusRational;

    iput-object v0, p0, Lcom/oplus/camera/aps/util/CameraApsExifData;->mExifLongitude:[Lcom/oplus/exif/OplusRational;

    .line 89
    sget-object v0, Lcom/oplus/ocs/camera/CameraParameter;->EXIF_ALTITUDE:Lcom/oplus/ocs/camera/CameraParameter$CaptureResultKey;

    invoke-virtual {p1, v0}, Lcom/oplus/ocs/camera/CameraPictureCallback$CameraPictureResult;->get(Lcom/oplus/ocs/camera/CameraParameter$CaptureResultKey;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/oplus/exif/OplusRational;

    iput-object v0, p0, Lcom/oplus/camera/aps/util/CameraApsExifData;->mExifAltitude:Lcom/oplus/exif/OplusRational;

    .line 90
    sget-object v0, Lcom/oplus/ocs/camera/CameraParameter;->EXIF_GPS_TIME_STAMP:Lcom/oplus/ocs/camera/CameraParameter$CaptureResultKey;

    invoke-virtual {p1, v0}, Lcom/oplus/ocs/camera/CameraPictureCallback$CameraPictureResult;->get(Lcom/oplus/ocs/camera/CameraParameter$CaptureResultKey;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/oplus/exif/OplusRational;

    iput-object v0, p0, Lcom/oplus/camera/aps/util/CameraApsExifData;->mDocExifGpsTimeStamp:[Lcom/oplus/exif/OplusRational;

    .line 91
    sget-object v0, Lcom/oplus/ocs/camera/CameraParameter;->EXIF_SUPPORT_DCIP3:Lcom/oplus/ocs/camera/CameraParameter$CaptureResultKey;

    invoke-virtual {p1, v0}, Lcom/oplus/ocs/camera/CameraPictureCallback$CameraPictureResult;->get(Lcom/oplus/ocs/camera/CameraParameter$CaptureResultKey;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    iput-boolean v0, p0, Lcom/oplus/camera/aps/util/CameraApsExifData;->mbSupportDCIP3:Z

    .line 92
    sget-object v0, Lcom/oplus/ocs/camera/CameraParameter;->EXIF_SUPPORT_LOCATION:Lcom/oplus/ocs/camera/CameraParameter$CaptureResultKey;

    invoke-virtual {p1, v0}, Lcom/oplus/ocs/camera/CameraPictureCallback$CameraPictureResult;->get(Lcom/oplus/ocs/camera/CameraParameter$CaptureResultKey;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    iput-boolean v0, p0, Lcom/oplus/camera/aps/util/CameraApsExifData;->mbSupportLocation:Z

    .line 93
    sget-object v0, Lcom/oplus/ocs/camera/CameraParameter;->EXIF_SUPPORT_LOCATION_TIME_STAMP:Lcom/oplus/ocs/camera/CameraParameter$CaptureResultKey;

    invoke-virtual {p1, v0}, Lcom/oplus/ocs/camera/CameraPictureCallback$CameraPictureResult;->get(Lcom/oplus/ocs/camera/CameraParameter$CaptureResultKey;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    iput-boolean v0, p0, Lcom/oplus/camera/aps/util/CameraApsExifData;->mbSupportLocationTimeStamp:Z

    .line 94
    sget-object v0, Lcom/oplus/ocs/camera/CameraParameter;->EXIF_IMAGE_WIDTH:Lcom/oplus/ocs/camera/CameraParameter$CaptureResultKey;

    invoke-virtual {p1, v0}, Lcom/oplus/ocs/camera/CameraPictureCallback$CameraPictureResult;->get(Lcom/oplus/ocs/camera/CameraParameter$CaptureResultKey;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    iput v0, p0, Lcom/oplus/camera/aps/util/CameraApsExifData;->mImageWidth:I

    .line 95
    sget-object v0, Lcom/oplus/ocs/camera/CameraParameter;->EXIF_IMAGE_HEIGHT:Lcom/oplus/ocs/camera/CameraParameter$CaptureResultKey;

    invoke-virtual {p1, v0}, Lcom/oplus/ocs/camera/CameraPictureCallback$CameraPictureResult;->get(Lcom/oplus/ocs/camera/CameraParameter$CaptureResultKey;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    iput v0, p0, Lcom/oplus/camera/aps/util/CameraApsExifData;->mImageHeight:I

    .line 96
    sget-object v0, Lcom/oplus/ocs/camera/CameraParameter;->EXIF_TIFFYCRCB_POSITIONING:Lcom/oplus/ocs/camera/CameraParameter$CaptureResultKey;

    invoke-virtual {p1, v0}, Lcom/oplus/ocs/camera/CameraPictureCallback$CameraPictureResult;->get(Lcom/oplus/ocs/camera/CameraParameter$CaptureResultKey;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    iput v0, p0, Lcom/oplus/camera/aps/util/CameraApsExifData;->mTiffYcrcbPositioning:I

    .line 97
    sget-object v0, Lcom/oplus/ocs/camera/CameraParameter;->EXIF_TIFF_RESOLUTION_UNIT:Lcom/oplus/ocs/camera/CameraParameter$CaptureResultKey;

    invoke-virtual {p1, v0}, Lcom/oplus/ocs/camera/CameraPictureCallback$CameraPictureResult;->get(Lcom/oplus/ocs/camera/CameraParameter$CaptureResultKey;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    iput v0, p0, Lcom/oplus/camera/aps/util/CameraApsExifData;->mTiffResolutionUnit:I

    .line 98
    sget-object v0, Lcom/oplus/ocs/camera/CameraParameter;->EXIF_TIFFX_RESOLUTIION:Lcom/oplus/ocs/camera/CameraParameter$CaptureResultKey;

    invoke-virtual {p1, v0}, Lcom/oplus/ocs/camera/CameraPictureCallback$CameraPictureResult;->get(Lcom/oplus/ocs/camera/CameraParameter$CaptureResultKey;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/oplus/exif/OplusRational;

    iput-object v0, p0, Lcom/oplus/camera/aps/util/CameraApsExifData;->mTiffXResolution:Lcom/oplus/exif/OplusRational;

    .line 99
    sget-object v0, Lcom/oplus/ocs/camera/CameraParameter;->EXIF_TIFFY_RESOLUTION:Lcom/oplus/ocs/camera/CameraParameter$CaptureResultKey;

    invoke-virtual {p1, v0}, Lcom/oplus/ocs/camera/CameraPictureCallback$CameraPictureResult;->get(Lcom/oplus/ocs/camera/CameraParameter$CaptureResultKey;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/oplus/exif/OplusRational;

    iput-object v0, p0, Lcom/oplus/camera/aps/util/CameraApsExifData;->mTiffYResolution:Lcom/oplus/exif/OplusRational;

    .line 101
    sget-object v0, Lcom/oplus/ocs/camera/CameraParameter;->EXIF_EXPOSURE_PROGRAM:Lcom/oplus/ocs/camera/CameraParameter$CaptureResultKey;

    invoke-virtual {p1, v0}, Lcom/oplus/ocs/camera/CameraPictureCallback$CameraPictureResult;->get(Lcom/oplus/ocs/camera/CameraParameter$CaptureResultKey;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    iput v0, p0, Lcom/oplus/camera/aps/util/CameraApsExifData;->mExifExposureProgram:I

    .line 102
    sget-object v0, Lcom/oplus/ocs/camera/CameraParameter;->EXIF_VERSION:Lcom/oplus/ocs/camera/CameraParameter$CaptureResultKey;

    invoke-virtual {p1, v0}, Lcom/oplus/ocs/camera/CameraPictureCallback$CameraPictureResult;->get(Lcom/oplus/ocs/camera/CameraParameter$CaptureResultKey;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iput-object v0, p0, Lcom/oplus/camera/aps/util/CameraApsExifData;->mExifVersion:Ljava/lang/String;

    .line 103
    sget-object v0, Lcom/oplus/ocs/camera/CameraParameter;->EXIF_COMPONENT_CONFIG:Lcom/oplus/ocs/camera/CameraParameter$CaptureResultKey;

    invoke-virtual {p1, v0}, Lcom/oplus/ocs/camera/CameraPictureCallback$CameraPictureResult;->get(Lcom/oplus/ocs/camera/CameraParameter$CaptureResultKey;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iput-object v0, p0, Lcom/oplus/camera/aps/util/CameraApsExifData;->mExifComponentsConfig:Ljava/lang/String;

    .line 104
    sget-object v0, Lcom/oplus/ocs/camera/CameraParameter;->EXIF_SHUTTER_SPEED:Lcom/oplus/ocs/camera/CameraParameter$CaptureResultKey;

    invoke-virtual {p1, v0}, Lcom/oplus/ocs/camera/CameraPictureCallback$CameraPictureResult;->get(Lcom/oplus/ocs/camera/CameraParameter$CaptureResultKey;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/oplus/exif/OplusRational;

    iput-object v0, p0, Lcom/oplus/camera/aps/util/CameraApsExifData;->mExifShutterSpeed:Lcom/oplus/exif/OplusRational;

    .line 105
    sget-object v0, Lcom/oplus/ocs/camera/CameraParameter;->EXIF_BRIGHTNESS:Lcom/oplus/ocs/camera/CameraParameter$CaptureResultKey;

    invoke-virtual {p1, v0}, Lcom/oplus/ocs/camera/CameraPictureCallback$CameraPictureResult;->get(Lcom/oplus/ocs/camera/CameraParameter$CaptureResultKey;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/oplus/exif/OplusRational;

    iput-object v0, p0, Lcom/oplus/camera/aps/util/CameraApsExifData;->mExifBrightness:Lcom/oplus/exif/OplusRational;

    .line 107
    sget-object v0, Lcom/oplus/ocs/camera/CameraParameter;->EXIF_MAX_APERTURE:Lcom/oplus/ocs/camera/CameraParameter$CaptureResultKey;

    invoke-virtual {p1, v0}, Lcom/oplus/ocs/camera/CameraPictureCallback$CameraPictureResult;->get(Lcom/oplus/ocs/camera/CameraParameter$CaptureResultKey;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/oplus/exif/OplusRational;

    iput-object v0, p0, Lcom/oplus/camera/aps/util/CameraApsExifData;->mExifMaxAperture:Lcom/oplus/exif/OplusRational;

    .line 108
    sget-object v0, Lcom/oplus/ocs/camera/CameraParameter;->EXIF_METERING_MODE:Lcom/oplus/ocs/camera/CameraParameter$CaptureResultKey;

    invoke-virtual {p1, v0}, Lcom/oplus/ocs/camera/CameraPictureCallback$CameraPictureResult;->get(Lcom/oplus/ocs/camera/CameraParameter$CaptureResultKey;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    iput v0, p0, Lcom/oplus/camera/aps/util/CameraApsExifData;->mExifMeteringMode:I

    .line 109
    sget-object v0, Lcom/oplus/ocs/camera/CameraParameter;->EXIF_MAKER_NOTE:Lcom/oplus/ocs/camera/CameraParameter$CaptureResultKey;

    invoke-virtual {p1, v0}, Lcom/oplus/ocs/camera/CameraPictureCallback$CameraPictureResult;->get(Lcom/oplus/ocs/camera/CameraParameter$CaptureResultKey;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iput-object v0, p0, Lcom/oplus/camera/aps/util/CameraApsExifData;->mExifMakerNote:Ljava/lang/String;

    .line 110
    sget-object v0, Lcom/oplus/ocs/camera/CameraParameter;->EXIF_FLASH_PIX_VERSION:Lcom/oplus/ocs/camera/CameraParameter$CaptureResultKey;

    invoke-virtual {p1, v0}, Lcom/oplus/ocs/camera/CameraPictureCallback$CameraPictureResult;->get(Lcom/oplus/ocs/camera/CameraParameter$CaptureResultKey;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iput-object v0, p0, Lcom/oplus/camera/aps/util/CameraApsExifData;->mExifFlashPixVersion:Ljava/lang/String;

    .line 111
    sget-object v0, Lcom/oplus/ocs/camera/CameraParameter;->EXIF_COLOR_SPACE:Lcom/oplus/ocs/camera/CameraParameter$CaptureResultKey;

    invoke-virtual {p1, v0}, Lcom/oplus/ocs/camera/CameraPictureCallback$CameraPictureResult;->get(Lcom/oplus/ocs/camera/CameraParameter$CaptureResultKey;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    iput v0, p0, Lcom/oplus/camera/aps/util/CameraApsExifData;->mExifColorSpace:I

    .line 112
    sget-object v0, Lcom/oplus/ocs/camera/CameraParameter;->EXIF_SENSING_METHOD:Lcom/oplus/ocs/camera/CameraParameter$CaptureResultKey;

    invoke-virtual {p1, v0}, Lcom/oplus/ocs/camera/CameraPictureCallback$CameraPictureResult;->get(Lcom/oplus/ocs/camera/CameraParameter$CaptureResultKey;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    iput v0, p0, Lcom/oplus/camera/aps/util/CameraApsExifData;->mExifSensingMethod:I

    .line 113
    sget-object v0, Lcom/oplus/ocs/camera/CameraParameter;->EXIF_SCENE_TYPE:Lcom/oplus/ocs/camera/CameraParameter$CaptureResultKey;

    invoke-virtual {p1, v0}, Lcom/oplus/ocs/camera/CameraPictureCallback$CameraPictureResult;->get(Lcom/oplus/ocs/camera/CameraParameter$CaptureResultKey;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iput-object v0, p0, Lcom/oplus/camera/aps/util/CameraApsExifData;->mExifSceneType:Ljava/lang/String;

    .line 114
    sget-object v0, Lcom/oplus/ocs/camera/CameraParameter;->EXIF_EXPOSURE_MODE:Lcom/oplus/ocs/camera/CameraParameter$CaptureResultKey;

    invoke-virtual {p1, v0}, Lcom/oplus/ocs/camera/CameraPictureCallback$CameraPictureResult;->get(Lcom/oplus/ocs/camera/CameraParameter$CaptureResultKey;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    iput v0, p0, Lcom/oplus/camera/aps/util/CameraApsExifData;->mExifExposureMode:I

    .line 115
    sget-object v0, Lcom/oplus/ocs/camera/CameraParameter;->EXIF_FOCAL_LENGTH_35MM:Lcom/oplus/ocs/camera/CameraParameter$CaptureResultKey;

    invoke-virtual {p1, v0}, Lcom/oplus/ocs/camera/CameraPictureCallback$CameraPictureResult;->get(Lcom/oplus/ocs/camera/CameraParameter$CaptureResultKey;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    iput v0, p0, Lcom/oplus/camera/aps/util/CameraApsExifData;->mExifFocalLength35Mm:I

    .line 116
    sget-object v0, Lcom/oplus/ocs/camera/CameraParameter;->EXIF_SCENE_CAPTURE_TYPE:Lcom/oplus/ocs/camera/CameraParameter$CaptureResultKey;

    invoke-virtual {p1, v0}, Lcom/oplus/ocs/camera/CameraPictureCallback$CameraPictureResult;->get(Lcom/oplus/ocs/camera/CameraParameter$CaptureResultKey;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    iput v0, p0, Lcom/oplus/camera/aps/util/CameraApsExifData;->mExifSceneCaptureType:I

    .line 118
    sget-object v0, Lcom/oplus/ocs/camera/CameraParameter;->EXIF_INTEROP_INDEX_STR:Lcom/oplus/ocs/camera/CameraParameter$CaptureResultKey;

    invoke-virtual {p1, v0}, Lcom/oplus/ocs/camera/CameraPictureCallback$CameraPictureResult;->get(Lcom/oplus/ocs/camera/CameraParameter$CaptureResultKey;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iput-object v0, p0, Lcom/oplus/camera/aps/util/CameraApsExifData;->mInteropIndexStr:Ljava/lang/String;

    .line 119
    sget-object v0, Lcom/oplus/ocs/camera/CameraParameter;->EXIF_INTEROP_VERSION:Lcom/oplus/ocs/camera/CameraParameter$CaptureResultKey;

    invoke-virtual {p1, v0}, Lcom/oplus/ocs/camera/CameraPictureCallback$CameraPictureResult;->get(Lcom/oplus/ocs/camera/CameraParameter$CaptureResultKey;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iput-object v0, p0, Lcom/oplus/camera/aps/util/CameraApsExifData;->mInteropVersion:Ljava/lang/String;

    .line 120
    sget-object v0, Lcom/oplus/ocs/camera/CameraParameter;->EXIF_HEIC_QUALITY:Lcom/oplus/ocs/camera/CameraParameter$CaptureResultKey;

    invoke-virtual {p1, v0}, Lcom/oplus/ocs/camera/CameraPictureCallback$CameraPictureResult;->get(Lcom/oplus/ocs/camera/CameraParameter$CaptureResultKey;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    iput p1, p0, Lcom/oplus/camera/aps/util/CameraApsExifData;->mHeicQuality:I

    :cond_0
    return-void
.end method
