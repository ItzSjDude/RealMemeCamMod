.class public final Lcom/oplus/ocs/camera/CameraParameter;
.super Ljava/lang/Object;
.source "CameraParameter.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/oplus/ocs/camera/CameraParameter$PreviewResultKey;,
        Lcom/oplus/ocs/camera/CameraParameter$CaptureResultKey;,
        Lcom/oplus/ocs/camera/CameraParameter$PreviewKey;,
        Lcom/oplus/ocs/camera/CameraParameter$ConfigureKey;,
        Lcom/oplus/ocs/camera/CameraParameter$CaptureFailCode;,
        Lcom/oplus/ocs/camera/CameraParameter$TiltShiftParamKeys;,
        Lcom/oplus/ocs/camera/CameraParameter$VideoEffectParamKeys;,
        Lcom/oplus/ocs/camera/CameraParameter$WaterMarkParamKeys;,
        Lcom/oplus/ocs/camera/CameraParameter$RawValue;,
        Lcom/oplus/ocs/camera/CameraParameter$PortraitBodyType;,
        Lcom/oplus/ocs/camera/CameraParameter$BokehType;,
        Lcom/oplus/ocs/camera/CameraParameter$AiStablizationValues;,
        Lcom/oplus/ocs/camera/CameraParameter$AiNightVideoValues;,
        Lcom/oplus/ocs/camera/CameraParameter$NightVideo;,
        Lcom/oplus/ocs/camera/CameraParameter$RecordingState;,
        Lcom/oplus/ocs/camera/CameraParameter$FocusMode;,
        Lcom/oplus/ocs/camera/CameraParameter$FlashMode;,
        Lcom/oplus/ocs/camera/CameraParameter$VideoFps;,
        Lcom/oplus/ocs/camera/CameraParameter$VideoFpsValue;,
        Lcom/oplus/ocs/camera/CameraParameter$CommonByteStateValue;,
        Lcom/oplus/ocs/camera/CameraParameter$CommonStateValue;,
        Lcom/oplus/ocs/camera/CameraParameter$VideoEncoder;,
        Lcom/oplus/ocs/camera/CameraParameter$MonoFilterType;,
        Lcom/oplus/ocs/camera/CameraParameter$HyperLapse;,
        Lcom/oplus/ocs/camera/CameraParameter$VideoStabilizationMode;
    }
.end annotation


# static fields
.field public static final AE_REGIONS:Lcom/oplus/ocs/camera/CameraParameter$PreviewKey;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/oplus/ocs/camera/CameraParameter$PreviewKey<",
            "Landroid/graphics/RectF;",
            ">;"
        }
    .end annotation
.end field

.field public static final AF_REGIONS:Lcom/oplus/ocs/camera/CameraParameter$PreviewKey;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/oplus/ocs/camera/CameraParameter$PreviewKey<",
            "Landroid/graphics/RectF;",
            ">;"
        }
    .end annotation
.end field

.field public static final AI_HIGH_PIXEL_ENABLE:Lcom/oplus/ocs/camera/CameraParameter$ConfigureKey;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/oplus/ocs/camera/CameraParameter$ConfigureKey<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public static final AI_NIGHT_VIDEO_MODE:Lcom/oplus/ocs/camera/CameraParameter$ConfigureKey;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/oplus/ocs/camera/CameraParameter$ConfigureKey<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field public static final AI_PHOTO:Lcom/oplus/ocs/camera/CameraParameter$PreviewKey;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/oplus/ocs/camera/CameraParameter$PreviewKey<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public static final ALGO_VISUALIZATION_ENABLE:Lcom/oplus/ocs/camera/CameraParameter$PreviewKey;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/oplus/ocs/camera/CameraParameter$PreviewKey<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public static final ANTI_BANDING_ENABLE:Lcom/oplus/ocs/camera/CameraParameter$ConfigureKey;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/oplus/ocs/camera/CameraParameter$ConfigureKey<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public static final APS_PROC_TIMER:Lcom/oplus/ocs/camera/CameraParameter$CaptureResultKey;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/oplus/ocs/camera/CameraParameter$CaptureResultKey<",
            "Ljava/util/HashMap;",
            ">;"
        }
    .end annotation
.end field

.field public static final BLUR_LEVEL:Lcom/oplus/ocs/camera/CameraParameter$PreviewKey;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/oplus/ocs/camera/CameraParameter$PreviewKey<",
            "[F>;"
        }
    .end annotation
.end field

.field public static final BLUR_LEVEL_RANGE:Lcom/oplus/ocs/camera/CameraParameter$PreviewKey;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/oplus/ocs/camera/CameraParameter$PreviewKey<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field public static final BURST_SHOT_ENABLE:Lcom/oplus/ocs/camera/CameraParameter$PreviewKey;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/oplus/ocs/camera/CameraParameter$PreviewKey<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public static final BURST_SHOT_FLAG_ID:Lcom/oplus/ocs/camera/CameraParameter$PreviewKey;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/oplus/ocs/camera/CameraParameter$PreviewKey<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field

.field public static final BURST_SHOT_PATH:Lcom/oplus/ocs/camera/CameraParameter$PreviewKey;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/oplus/ocs/camera/CameraParameter$PreviewKey<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public static final CAPTURE_FAIL_CODE:Lcom/oplus/ocs/camera/CameraParameter$CaptureResultKey;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/oplus/ocs/camera/CameraParameter$CaptureResultKey<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field public static final CAPTURE_FLIP_MODE_ENABLE:Lcom/oplus/ocs/camera/CameraParameter$PreviewKey;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/oplus/ocs/camera/CameraParameter$PreviewKey<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field public static final CAPTURE_FOR_VIDEO:Lcom/oplus/ocs/camera/CameraParameter$PreviewKey;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/oplus/ocs/camera/CameraParameter$PreviewKey<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field public static final CAPTURE_HDR_MODE:Lcom/oplus/ocs/camera/CameraParameter$PreviewKey;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/oplus/ocs/camera/CameraParameter$PreviewKey<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public static final CAPTURE_RESULT_FIRST_EXPOSURE_TIME:Lcom/oplus/ocs/camera/CameraParameter$CaptureResultKey;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/oplus/ocs/camera/CameraParameter$CaptureResultKey<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field

.field public static final CAPTURE_RESULT_NIGHT_TOTAL_EXPTIME:Lcom/oplus/ocs/camera/CameraParameter$CaptureResultKey;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/oplus/ocs/camera/CameraParameter$CaptureResultKey<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field

.field public static final CAPTURE_TIME:Lcom/oplus/ocs/camera/CameraParameter$PreviewKey;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/oplus/ocs/camera/CameraParameter$PreviewKey<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field

.field public static final CAPTURE_WITH_DETACH:Lcom/oplus/ocs/camera/CameraParameter$PreviewKey;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/oplus/ocs/camera/CameraParameter$PreviewKey<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field public static final COLOR_TEMPERATURE:Lcom/oplus/ocs/camera/CameraParameter$PreviewKey;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/oplus/ocs/camera/CameraParameter$PreviewKey<",
            "[I>;"
        }
    .end annotation
.end field

.field public static final COLOR_TEMPERATURE_RANGE:Lcom/oplus/ocs/camera/CameraParameter$PreviewKey;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/oplus/ocs/camera/CameraParameter$PreviewKey<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field public static final EXIF_ALTITUDE:Lcom/oplus/ocs/camera/CameraParameter$CaptureResultKey;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/oplus/ocs/camera/CameraParameter$CaptureResultKey<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field public static final EXIF_ALTITUDE_REF:Lcom/oplus/ocs/camera/CameraParameter$CaptureResultKey;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/oplus/ocs/camera/CameraParameter$CaptureResultKey<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field public static final EXIF_APERTURE:Lcom/oplus/ocs/camera/CameraParameter$CaptureResultKey;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/oplus/ocs/camera/CameraParameter$CaptureResultKey<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field public static final EXIF_BRIGHTNESS:Lcom/oplus/ocs/camera/CameraParameter$CaptureResultKey;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/oplus/ocs/camera/CameraParameter$CaptureResultKey<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field public static final EXIF_COLOR_SPACE:Lcom/oplus/ocs/camera/CameraParameter$CaptureResultKey;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/oplus/ocs/camera/CameraParameter$CaptureResultKey<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field public static final EXIF_COMMENTS:Lcom/oplus/ocs/camera/CameraParameter$CaptureResultKey;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/oplus/ocs/camera/CameraParameter$CaptureResultKey<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public static final EXIF_COMPONENT_CONFIG:Lcom/oplus/ocs/camera/CameraParameter$CaptureResultKey;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/oplus/ocs/camera/CameraParameter$CaptureResultKey<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public static final EXIF_DATE_TIME:Lcom/oplus/ocs/camera/CameraParameter$CaptureResultKey;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/oplus/ocs/camera/CameraParameter$CaptureResultKey<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public static final EXIF_EXPOSURE_BIAS:Lcom/oplus/ocs/camera/CameraParameter$CaptureResultKey;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/oplus/ocs/camera/CameraParameter$CaptureResultKey<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field public static final EXIF_EXPOSURE_MODE:Lcom/oplus/ocs/camera/CameraParameter$CaptureResultKey;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/oplus/ocs/camera/CameraParameter$CaptureResultKey<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field public static final EXIF_EXPOSURE_PROGRAM:Lcom/oplus/ocs/camera/CameraParameter$CaptureResultKey;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/oplus/ocs/camera/CameraParameter$CaptureResultKey<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field public static final EXIF_EXP_TIME:Lcom/oplus/ocs/camera/CameraParameter$CaptureResultKey;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/oplus/ocs/camera/CameraParameter$CaptureResultKey<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field public static final EXIF_FLASH_PIX_VERSION:Lcom/oplus/ocs/camera/CameraParameter$CaptureResultKey;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/oplus/ocs/camera/CameraParameter$CaptureResultKey<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public static final EXIF_FLASH_VALUE:Lcom/oplus/ocs/camera/CameraParameter$CaptureResultKey;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/oplus/ocs/camera/CameraParameter$CaptureResultKey<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field public static final EXIF_FOCAL_LENGTH:Lcom/oplus/ocs/camera/CameraParameter$CaptureResultKey;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/oplus/ocs/camera/CameraParameter$CaptureResultKey<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field public static final EXIF_FOCAL_LENGTH_35MM:Lcom/oplus/ocs/camera/CameraParameter$CaptureResultKey;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/oplus/ocs/camera/CameraParameter$CaptureResultKey<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field public static final EXIF_GPS_DATE_STAMP:Lcom/oplus/ocs/camera/CameraParameter$CaptureResultKey;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/oplus/ocs/camera/CameraParameter$CaptureResultKey<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public static final EXIF_GPS_TIME_STAMP:Lcom/oplus/ocs/camera/CameraParameter$CaptureResultKey;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/oplus/ocs/camera/CameraParameter$CaptureResultKey<",
            "[",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field public static final EXIF_HEIC_QUALITY:Lcom/oplus/ocs/camera/CameraParameter$CaptureResultKey;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/oplus/ocs/camera/CameraParameter$CaptureResultKey<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field public static final EXIF_IMAGE_HEIGHT:Lcom/oplus/ocs/camera/CameraParameter$CaptureResultKey;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/oplus/ocs/camera/CameraParameter$CaptureResultKey<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field public static final EXIF_IMAGE_WIDTH:Lcom/oplus/ocs/camera/CameraParameter$CaptureResultKey;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/oplus/ocs/camera/CameraParameter$CaptureResultKey<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field public static final EXIF_INTEROP_INDEX_STR:Lcom/oplus/ocs/camera/CameraParameter$CaptureResultKey;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/oplus/ocs/camera/CameraParameter$CaptureResultKey<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public static final EXIF_INTEROP_VERSION:Lcom/oplus/ocs/camera/CameraParameter$CaptureResultKey;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/oplus/ocs/camera/CameraParameter$CaptureResultKey<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public static final EXIF_ISO:Lcom/oplus/ocs/camera/CameraParameter$CaptureResultKey;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/oplus/ocs/camera/CameraParameter$CaptureResultKey<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field

.field public static final EXIF_LATITUDE:Lcom/oplus/ocs/camera/CameraParameter$CaptureResultKey;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/oplus/ocs/camera/CameraParameter$CaptureResultKey<",
            "[",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field public static final EXIF_LATITUDE_REF:Lcom/oplus/ocs/camera/CameraParameter$CaptureResultKey;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/oplus/ocs/camera/CameraParameter$CaptureResultKey<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public static final EXIF_LONGITUDE:Lcom/oplus/ocs/camera/CameraParameter$CaptureResultKey;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/oplus/ocs/camera/CameraParameter$CaptureResultKey<",
            "[",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field public static final EXIF_LONGITUDE_REF:Lcom/oplus/ocs/camera/CameraParameter$CaptureResultKey;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/oplus/ocs/camera/CameraParameter$CaptureResultKey<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public static final EXIF_MAKER_NOTE:Lcom/oplus/ocs/camera/CameraParameter$CaptureResultKey;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/oplus/ocs/camera/CameraParameter$CaptureResultKey<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public static final EXIF_MANUFACTURE:Lcom/oplus/ocs/camera/CameraParameter$CaptureResultKey;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/oplus/ocs/camera/CameraParameter$CaptureResultKey<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public static final EXIF_MAX_APERTURE:Lcom/oplus/ocs/camera/CameraParameter$CaptureResultKey;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/oplus/ocs/camera/CameraParameter$CaptureResultKey<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field public static final EXIF_METERING_MODE:Lcom/oplus/ocs/camera/CameraParameter$CaptureResultKey;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/oplus/ocs/camera/CameraParameter$CaptureResultKey<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field public static final EXIF_MIRROR:Lcom/oplus/ocs/camera/CameraParameter$CaptureResultKey;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/oplus/ocs/camera/CameraParameter$CaptureResultKey<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field public static final EXIF_MODEL:Lcom/oplus/ocs/camera/CameraParameter$CaptureResultKey;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/oplus/ocs/camera/CameraParameter$CaptureResultKey<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public static final EXIF_NUMBER:Lcom/oplus/ocs/camera/CameraParameter$CaptureResultKey;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/oplus/ocs/camera/CameraParameter$CaptureResultKey<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field public static final EXIF_ROTATE:Lcom/oplus/ocs/camera/CameraParameter$CaptureResultKey;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/oplus/ocs/camera/CameraParameter$CaptureResultKey<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field public static final EXIF_SCENE_CAPTURE_TYPE:Lcom/oplus/ocs/camera/CameraParameter$CaptureResultKey;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/oplus/ocs/camera/CameraParameter$CaptureResultKey<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field public static final EXIF_SCENE_TYPE:Lcom/oplus/ocs/camera/CameraParameter$CaptureResultKey;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/oplus/ocs/camera/CameraParameter$CaptureResultKey<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public static final EXIF_SENSING_METHOD:Lcom/oplus/ocs/camera/CameraParameter$CaptureResultKey;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/oplus/ocs/camera/CameraParameter$CaptureResultKey<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field public static final EXIF_SENSOR_NAME:Lcom/oplus/ocs/camera/CameraParameter$CaptureResultKey;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/oplus/ocs/camera/CameraParameter$CaptureResultKey<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public static final EXIF_SHUTTER_SPEED:Lcom/oplus/ocs/camera/CameraParameter$CaptureResultKey;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/oplus/ocs/camera/CameraParameter$CaptureResultKey<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field public static final EXIF_SUB_DATE_TIME:Lcom/oplus/ocs/camera/CameraParameter$CaptureResultKey;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/oplus/ocs/camera/CameraParameter$CaptureResultKey<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public static final EXIF_SUPPORT_DCIP3:Lcom/oplus/ocs/camera/CameraParameter$CaptureResultKey;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/oplus/ocs/camera/CameraParameter$CaptureResultKey<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field public static final EXIF_SUPPORT_LOCATION:Lcom/oplus/ocs/camera/CameraParameter$CaptureResultKey;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/oplus/ocs/camera/CameraParameter$CaptureResultKey<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field public static final EXIF_SUPPORT_LOCATION_TIME_STAMP:Lcom/oplus/ocs/camera/CameraParameter$CaptureResultKey;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/oplus/ocs/camera/CameraParameter$CaptureResultKey<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field public static final EXIF_TIFFX_RESOLUTIION:Lcom/oplus/ocs/camera/CameraParameter$CaptureResultKey;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/oplus/ocs/camera/CameraParameter$CaptureResultKey<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field public static final EXIF_TIFFYCRCB_POSITIONING:Lcom/oplus/ocs/camera/CameraParameter$CaptureResultKey;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/oplus/ocs/camera/CameraParameter$CaptureResultKey<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field public static final EXIF_TIFFY_RESOLUTION:Lcom/oplus/ocs/camera/CameraParameter$CaptureResultKey;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/oplus/ocs/camera/CameraParameter$CaptureResultKey<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field public static final EXIF_TIFF_RESOLUTION_UNIT:Lcom/oplus/ocs/camera/CameraParameter$CaptureResultKey;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/oplus/ocs/camera/CameraParameter$CaptureResultKey<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field public static final EXIF_VERSION:Lcom/oplus/ocs/camera/CameraParameter$CaptureResultKey;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/oplus/ocs/camera/CameraParameter$CaptureResultKey<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public static final EXIF_WHITE_BALANCE_MODE:Lcom/oplus/ocs/camera/CameraParameter$CaptureResultKey;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/oplus/ocs/camera/CameraParameter$CaptureResultKey<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field public static final FACE_BEAUTY_ENABLE:Lcom/oplus/ocs/camera/CameraParameter$PreviewKey;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/oplus/ocs/camera/CameraParameter$PreviewKey<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public static final FACE_BEAUTY_PARAM:Lcom/oplus/ocs/camera/CameraParameter$PreviewKey;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/oplus/ocs/camera/CameraParameter$PreviewKey<",
            "[I>;"
        }
    .end annotation
.end field

.field public static final FACE_BEAUTY_VERSION:Lcom/oplus/ocs/camera/CameraParameter$PreviewKey;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/oplus/ocs/camera/CameraParameter$PreviewKey<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public static final FACE_DERED_EYE:Lcom/oplus/ocs/camera/CameraParameter$PreviewKey;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/oplus/ocs/camera/CameraParameter$PreviewKey<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public static final FACE_RECTIFY_ENABLE:Lcom/oplus/ocs/camera/CameraParameter$PreviewKey;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/oplus/ocs/camera/CameraParameter$PreviewKey<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field public static final FILTER_OPEN:Lcom/oplus/ocs/camera/CameraParameter$PreviewKey;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/oplus/ocs/camera/CameraParameter$PreviewKey<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field public static final FILTER_TYPE:Lcom/oplus/ocs/camera/CameraParameter$PreviewKey;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/oplus/ocs/camera/CameraParameter$PreviewKey<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public static final FILTER_WITHVIGNETTE:Lcom/oplus/ocs/camera/CameraParameter$PreviewKey;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/oplus/ocs/camera/CameraParameter$PreviewKey<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field public static final FISH_EYE_MODE:Lcom/oplus/ocs/camera/CameraParameter$PreviewKey;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/oplus/ocs/camera/CameraParameter$PreviewKey<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field public static final FLASH_MODE:Lcom/oplus/ocs/camera/CameraParameter$PreviewKey;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/oplus/ocs/camera/CameraParameter$PreviewKey<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public static final FOCUS_MODE:Lcom/oplus/ocs/camera/CameraParameter$PreviewKey;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/oplus/ocs/camera/CameraParameter$PreviewKey<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field public static final FOCUS_PEAKING_ENABLE:Lcom/oplus/ocs/camera/CameraParameter$PreviewKey;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/oplus/ocs/camera/CameraParameter$PreviewKey<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field public static final FRAME_FLAG:Lcom/oplus/ocs/camera/CameraParameter$PreviewKey;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/oplus/ocs/camera/CameraParameter$PreviewKey<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field public static final HASSELBLAD_XPAN_CROP_REGION:Lcom/oplus/ocs/camera/CameraParameter$PreviewKey;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/oplus/ocs/camera/CameraParameter$PreviewKey<",
            "[I>;"
        }
    .end annotation
.end field

.field public static final HAS_SUPER_TEXT_RESULT:Lcom/oplus/ocs/camera/CameraParameter$CaptureResultKey;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/oplus/ocs/camera/CameraParameter$CaptureResultKey<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field public static final HEIF_PROCESS_IN_APS:Lcom/oplus/ocs/camera/CameraParameter$CaptureResultKey;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/oplus/ocs/camera/CameraParameter$CaptureResultKey<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field public static final HIGH_PICTURE_SIZE_ENABLE:Lcom/oplus/ocs/camera/CameraParameter$ConfigureKey;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/oplus/ocs/camera/CameraParameter$ConfigureKey<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public static final HVXSHDR_MODE_ENABLE:Lcom/oplus/ocs/camera/CameraParameter$ConfigureKey;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/oplus/ocs/camera/CameraParameter$ConfigureKey<",
            "Ljava/lang/Byte;",
            ">;"
        }
    .end annotation
.end field

.field public static final HYPER_LAPSE:Lcom/oplus/ocs/camera/CameraParameter$ConfigureKey;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/oplus/ocs/camera/CameraParameter$ConfigureKey<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public static final IMAGE_CATEGORY_BURST_COUNT:Lcom/oplus/ocs/camera/CameraParameter$CaptureResultKey;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/oplus/ocs/camera/CameraParameter$CaptureResultKey<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field public static final IMAGE_CATEGORY_BURST_SHOT:Lcom/oplus/ocs/camera/CameraParameter$CaptureResultKey;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/oplus/ocs/camera/CameraParameter$CaptureResultKey<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field public static final IMAGE_CATEGORY_BURST_SHOT_FLAG_ID:Lcom/oplus/ocs/camera/CameraParameter$CaptureResultKey;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/oplus/ocs/camera/CameraParameter$CaptureResultKey<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field

.field public static final IMAGE_CATEGORY_CSHOT_PATH:Lcom/oplus/ocs/camera/CameraParameter$CaptureResultKey;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/oplus/ocs/camera/CameraParameter$CaptureResultKey<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public static final IMAGE_CATEGORY_CUSTOM_BEAUTY_PARAM:Lcom/oplus/ocs/camera/CameraParameter$CaptureResultKey;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/oplus/ocs/camera/CameraParameter$CaptureResultKey<",
            "[I>;"
        }
    .end annotation
.end field

.field public static final IMAGE_CATEGORY_DATE:Lcom/oplus/ocs/camera/CameraParameter$CaptureResultKey;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/oplus/ocs/camera/CameraParameter$CaptureResultKey<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field

.field public static final IMAGE_CATEGORY_END_OF_CAPTURE:Lcom/oplus/ocs/camera/CameraParameter$CaptureResultKey;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/oplus/ocs/camera/CameraParameter$CaptureResultKey<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field public static final IMAGE_CATEGORY_FORMAT:Lcom/oplus/ocs/camera/CameraParameter$CaptureResultKey;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/oplus/ocs/camera/CameraParameter$CaptureResultKey<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field public static final IMAGE_CATEGORY_HEIGHT:Lcom/oplus/ocs/camera/CameraParameter$CaptureResultKey;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/oplus/ocs/camera/CameraParameter$CaptureResultKey<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field public static final IMAGE_CATEGORY_IMAGE_TIME_STAMP:Lcom/oplus/ocs/camera/CameraParameter$CaptureResultKey;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/oplus/ocs/camera/CameraParameter$CaptureResultKey<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field

.field public static final IMAGE_CATEGORY_IS_VALID:Lcom/oplus/ocs/camera/CameraParameter$CaptureResultKey;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/oplus/ocs/camera/CameraParameter$CaptureResultKey<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field public static final IMAGE_CATEGORY_MERGE_IDENTITY:Lcom/oplus/ocs/camera/CameraParameter$CaptureResultKey;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/oplus/ocs/camera/CameraParameter$CaptureResultKey<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field

.field public static final IMAGE_CATEGORY_META_TIME_STAMP:Lcom/oplus/ocs/camera/CameraParameter$CaptureResultKey;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/oplus/ocs/camera/CameraParameter$CaptureResultKey<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field

.field public static final IMAGE_CATEGORY_REC_BURST_NUMBER:Lcom/oplus/ocs/camera/CameraParameter$CaptureResultKey;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/oplus/ocs/camera/CameraParameter$CaptureResultKey<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field public static final IMAGE_CATEGORY_SUPER_TEXT_ENABLE:Lcom/oplus/ocs/camera/CameraParameter$CaptureResultKey;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/oplus/ocs/camera/CameraParameter$CaptureResultKey<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public static final IMAGE_CATEGORY_WATERMARK_PATH:Lcom/oplus/ocs/camera/CameraParameter$CaptureResultKey;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/oplus/ocs/camera/CameraParameter$CaptureResultKey<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public static final IMAGE_CATEGORY_WIDTH:Lcom/oplus/ocs/camera/CameraParameter$CaptureResultKey;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/oplus/ocs/camera/CameraParameter$CaptureResultKey<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field public static final IS_FROM_MAIN_MENU:Lcom/oplus/ocs/camera/CameraParameter$PreviewKey;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/oplus/ocs/camera/CameraParameter$PreviewKey<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field public static final KEY_ALGO_VISUALIZATION_KEY:Lcom/oplus/ocs/camera/CameraParameter$PreviewResultKey;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/oplus/ocs/camera/CameraParameter$PreviewResultKey<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public static final KEY_ALGO_VISUALIZATION_VALUE:Lcom/oplus/ocs/camera/CameraParameter$PreviewResultKey;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/oplus/ocs/camera/CameraParameter$PreviewResultKey<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public static final KEY_CALLER_PACKAGE_NAME:Lcom/oplus/ocs/camera/CameraParameter$ConfigureKey;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/oplus/ocs/camera/CameraParameter$ConfigureKey<",
            "[B>;"
        }
    .end annotation
.end field

.field public static final KEY_CAMERA_RESULT_APS_INIT_FINISH:Lcom/oplus/ocs/camera/CameraParameter$PreviewResultKey;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/oplus/ocs/camera/CameraParameter$PreviewResultKey<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public static final KEY_CAMERA_RESULT_REF_TIMESTAMP:Lcom/oplus/ocs/camera/CameraParameter$PreviewResultKey;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/oplus/ocs/camera/CameraParameter$PreviewResultKey<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field

.field public static final KEY_DUAL_SCENE_MASTER:Lcom/oplus/ocs/camera/CameraParameter$ConfigureKey;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/oplus/ocs/camera/CameraParameter$ConfigureKey<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field public static final KEY_EDGE_FILTER_ENABLE:Lcom/oplus/ocs/camera/CameraParameter$PreviewKey;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/oplus/ocs/camera/CameraParameter$PreviewKey<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field public static final KEY_EDGE_FILTER_PARAM:Lcom/oplus/ocs/camera/CameraParameter$PreviewKey;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/oplus/ocs/camera/CameraParameter$PreviewKey<",
            "[",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public static final KEY_EXPLORER_CHIP_STATE:Lcom/oplus/ocs/camera/CameraParameter$ConfigureKey;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/oplus/ocs/camera/CameraParameter$ConfigureKey<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field public static final KEY_EXPLORER_ENABLE:Lcom/oplus/ocs/camera/CameraParameter$ConfigureKey;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/oplus/ocs/camera/CameraParameter$ConfigureKey<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public static final KEY_GESTURE_ENABLE:Lcom/oplus/ocs/camera/CameraParameter$PreviewKey;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/oplus/ocs/camera/CameraParameter$PreviewKey<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public static final KEY_IS_FROM_MAIN_MENU:Lcom/oplus/ocs/camera/CameraParameter$ConfigureKey;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/oplus/ocs/camera/CameraParameter$ConfigureKey<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field public static final KEY_MOVIE_HDR_ENABLE:Lcom/oplus/ocs/camera/CameraParameter$ConfigureKey;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/oplus/ocs/camera/CameraParameter$ConfigureKey<",
            "Ljava/lang/Byte;",
            ">;"
        }
    .end annotation
.end field

.field public static final KEY_MOVIE_LOG_ENABLE:Lcom/oplus/ocs/camera/CameraParameter$ConfigureKey;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/oplus/ocs/camera/CameraParameter$ConfigureKey<",
            "Ljava/lang/Byte;",
            ">;"
        }
    .end annotation
.end field

.field public static final KEY_NIGHT_OFFLINE_R2Y:Lcom/oplus/ocs/camera/CameraParameter$PreviewKey;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/oplus/ocs/camera/CameraParameter$PreviewKey<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field public static final KEY_REQUEST_ZSL_MODE:Lcom/oplus/ocs/camera/CameraParameter$ConfigureKey;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/oplus/ocs/camera/CameraParameter$ConfigureKey<",
            "[B>;"
        }
    .end annotation
.end field

.field public static final KEY_SINGLE_BLUR_ALGONAME:Lcom/oplus/ocs/camera/CameraParameter$PreviewKey;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/oplus/ocs/camera/CameraParameter$PreviewKey<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public static final KEY_SINGLE_BLUR_LEVEL:Lcom/oplus/ocs/camera/CameraParameter$PreviewKey;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/oplus/ocs/camera/CameraParameter$PreviewKey<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field public static final KEY_SINGLE_BLUR_SHOW:Lcom/oplus/ocs/camera/CameraParameter$PreviewKey;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/oplus/ocs/camera/CameraParameter$PreviewKey<",
            "Ljava/lang/Float;",
            ">;"
        }
    .end annotation
.end field

.field public static final KEY_SINGLE_PORTRAIT_EFFECT_MODE:Lcom/oplus/ocs/camera/CameraParameter$PreviewKey;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/oplus/ocs/camera/CameraParameter$PreviewKey<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field public static final KEY_ZOOM_RATION_CONFIGURE:Lcom/oplus/ocs/camera/CameraParameter$ConfigureKey;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/oplus/ocs/camera/CameraParameter$ConfigureKey<",
            "Ljava/lang/Float;",
            ">;"
        }
    .end annotation
.end field

.field public static final MAKEUP_STATE:Lcom/oplus/ocs/camera/CameraParameter$ConfigureKey;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/oplus/ocs/camera/CameraParameter$ConfigureKey<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field public static final MAKEUP_TYPE:Lcom/oplus/ocs/camera/CameraParameter$PreviewKey;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/oplus/ocs/camera/CameraParameter$PreviewKey<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public static final MAKEUP_VALUE:Lcom/oplus/ocs/camera/CameraParameter$PreviewKey;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/oplus/ocs/camera/CameraParameter$PreviewKey<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field public static final MESH_PTR:Lcom/oplus/ocs/camera/CameraParameter$CaptureResultKey;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/oplus/ocs/camera/CameraParameter$CaptureResultKey<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field

.field public static final MIRROR_ENABLE:Lcom/oplus/ocs/camera/CameraParameter$ConfigureKey;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/oplus/ocs/camera/CameraParameter$ConfigureKey<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public static final MONO_FILTER_TYPE:Lcom/oplus/ocs/camera/CameraParameter$ConfigureKey;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/oplus/ocs/camera/CameraParameter$ConfigureKey<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public static final MOVIE_HDR_ENABLE:Lcom/oplus/ocs/camera/CameraParameter$PreviewKey;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/oplus/ocs/camera/CameraParameter$PreviewKey<",
            "Ljava/lang/Byte;",
            ">;"
        }
    .end annotation
.end field

.field public static final MOVIE_LOG_ENABLE:Lcom/oplus/ocs/camera/CameraParameter$PreviewKey;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/oplus/ocs/camera/CameraParameter$PreviewKey<",
            "Ljava/lang/Byte;",
            ">;"
        }
    .end annotation
.end field

.field public static final NOISE_REDUCTION_STRENGTH:Lcom/oplus/ocs/camera/CameraParameter$CaptureResultKey;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/oplus/ocs/camera/CameraParameter$CaptureResultKey<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field public static final PHOTO_10BIT_ENABLE:Lcom/oplus/ocs/camera/CameraParameter$ConfigureKey;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/oplus/ocs/camera/CameraParameter$ConfigureKey<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public static final PICTURE_EXIF_FLAG:Lcom/oplus/ocs/camera/CameraParameter$PreviewKey;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/oplus/ocs/camera/CameraParameter$PreviewKey<",
            "[I>;"
        }
    .end annotation
.end field

.field public static final PICTURE_IDENTITY:Lcom/oplus/ocs/camera/CameraParameter$CaptureResultKey;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/oplus/ocs/camera/CameraParameter$CaptureResultKey<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field

.field public static final PICTURE_VISUALIZATION_ENABLE:Lcom/oplus/ocs/camera/CameraParameter$PreviewKey;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/oplus/ocs/camera/CameraParameter$PreviewKey<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public static final PORTAIT_BODY_TYPE:Lcom/oplus/ocs/camera/CameraParameter$ConfigureKey;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/oplus/ocs/camera/CameraParameter$ConfigureKey<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public static final PORTAIT_BOKEH_TYPE:Lcom/oplus/ocs/camera/CameraParameter$ConfigureKey;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/oplus/ocs/camera/CameraParameter$ConfigureKey<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public static final PORTRAIT_NEON_ENABLE:Lcom/oplus/ocs/camera/CameraParameter$PreviewKey;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/oplus/ocs/camera/CameraParameter$PreviewKey<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public static final PORTRAIT_STREAMER_ENABLE:Lcom/oplus/ocs/camera/CameraParameter$ConfigureKey;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/oplus/ocs/camera/CameraParameter$ConfigureKey<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public static final PREVIEW_AIS_BRACKET:Lcom/oplus/ocs/camera/CameraParameter$PreviewKey;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/oplus/ocs/camera/CameraParameter$PreviewKey<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field public static final PREVIEW_AIS_DCT_AINR_SUPPORT:Lcom/oplus/ocs/camera/CameraParameter$PreviewKey;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/oplus/ocs/camera/CameraParameter$PreviewKey<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field public static final PREVIEW_AIS_DCT_SUPPORT:Lcom/oplus/ocs/camera/CameraParameter$PreviewKey;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/oplus/ocs/camera/CameraParameter$PreviewKey<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field public static final PREVIEW_BRACKET_MODE:Lcom/oplus/ocs/camera/CameraParameter$PreviewKey;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/oplus/ocs/camera/CameraParameter$PreviewKey<",
            "[I>;"
        }
    .end annotation
.end field

.field public static final PREVIEW_IN_PREVIEW_ENABLE:Lcom/oplus/ocs/camera/CameraParameter$PreviewKey;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/oplus/ocs/camera/CameraParameter$PreviewKey<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public static final PREVIEW_RESULT_ACTIVE_MAP:Lcom/oplus/ocs/camera/CameraParameter$PreviewResultKey;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/oplus/ocs/camera/CameraParameter$PreviewResultKey<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field public static final PREVIEW_RESULT_AICOLOR:Lcom/oplus/ocs/camera/CameraParameter$PreviewResultKey;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/oplus/ocs/camera/CameraParameter$PreviewResultKey<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public static final PREVIEW_RESULT_AIS_STATE:Lcom/oplus/ocs/camera/CameraParameter$PreviewResultKey;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/oplus/ocs/camera/CameraParameter$PreviewResultKey<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field public static final PREVIEW_RESULT_AI_SCENE:Lcom/oplus/ocs/camera/CameraParameter$PreviewResultKey;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/oplus/ocs/camera/CameraParameter$PreviewResultKey<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field public static final PREVIEW_RESULT_AI_SHUTTER:Lcom/oplus/ocs/camera/CameraParameter$PreviewResultKey;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/oplus/ocs/camera/CameraParameter$PreviewResultKey<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field public static final PREVIEW_RESULT_ALGO_FLAG:Lcom/oplus/ocs/camera/CameraParameter$PreviewResultKey;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/oplus/ocs/camera/CameraParameter$PreviewResultKey<",
            "[",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public static final PREVIEW_RESULT_ANTIBANDING:Lcom/oplus/ocs/camera/CameraParameter$PreviewResultKey;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/oplus/ocs/camera/CameraParameter$PreviewResultKey<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public static final PREVIEW_RESULT_ASD:Lcom/oplus/ocs/camera/CameraParameter$PreviewResultKey;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/oplus/ocs/camera/CameraParameter$PreviewResultKey<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public static final PREVIEW_RESULT_BOKEN_STATE:Lcom/oplus/ocs/camera/CameraParameter$PreviewResultKey;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/oplus/ocs/camera/CameraParameter$PreviewResultKey<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field public static final PREVIEW_RESULT_BRACKET_MODE:Lcom/oplus/ocs/camera/CameraParameter$PreviewResultKey;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/oplus/ocs/camera/CameraParameter$PreviewResultKey<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field public static final PREVIEW_RESULT_CAMERA_ID:Lcom/oplus/ocs/camera/CameraParameter$PreviewResultKey;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/oplus/ocs/camera/CameraParameter$PreviewResultKey<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field public static final PREVIEW_RESULT_CAMERA_IMAGE:Lcom/oplus/ocs/camera/CameraParameter$PreviewResultKey;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/oplus/ocs/camera/CameraParameter$PreviewResultKey<",
            "Landroid/media/Image;",
            ">;"
        }
    .end annotation
.end field

.field public static final PREVIEW_RESULT_CAMERA_MODE:Lcom/oplus/ocs/camera/CameraParameter$PreviewResultKey;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/oplus/ocs/camera/CameraParameter$PreviewResultKey<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public static final PREVIEW_RESULT_CAMERA_TYPE:Lcom/oplus/ocs/camera/CameraParameter$PreviewResultKey;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/oplus/ocs/camera/CameraParameter$PreviewResultKey<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public static final PREVIEW_RESULT_CAPTURE_EV_LIST:Lcom/oplus/ocs/camera/CameraParameter$PreviewResultKey;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/oplus/ocs/camera/CameraParameter$PreviewResultKey<",
            "[I>;"
        }
    .end annotation
.end field

.field public static final PREVIEW_RESULT_CROP_BOTTOM:Lcom/oplus/ocs/camera/CameraParameter$PreviewResultKey;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/oplus/ocs/camera/CameraParameter$PreviewResultKey<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field public static final PREVIEW_RESULT_CROP_LEFT:Lcom/oplus/ocs/camera/CameraParameter$PreviewResultKey;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/oplus/ocs/camera/CameraParameter$PreviewResultKey<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field public static final PREVIEW_RESULT_CROP_RIGHT:Lcom/oplus/ocs/camera/CameraParameter$PreviewResultKey;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/oplus/ocs/camera/CameraParameter$PreviewResultKey<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field public static final PREVIEW_RESULT_CROP_TOP:Lcom/oplus/ocs/camera/CameraParameter$PreviewResultKey;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/oplus/ocs/camera/CameraParameter$PreviewResultKey<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field public static final PREVIEW_RESULT_DRAWTEXT_BRACKET_MODE:Lcom/oplus/ocs/camera/CameraParameter$PreviewResultKey;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/oplus/ocs/camera/CameraParameter$PreviewResultKey<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public static final PREVIEW_RESULT_DRAWTEXT_FEATURE_TYPE:Lcom/oplus/ocs/camera/CameraParameter$PreviewResultKey;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/oplus/ocs/camera/CameraParameter$PreviewResultKey<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public static final PREVIEW_RESULT_DRAWTEXT_HDR_TYPE:Lcom/oplus/ocs/camera/CameraParameter$PreviewResultKey;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/oplus/ocs/camera/CameraParameter$PreviewResultKey<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public static final PREVIEW_RESULT_DRAWTEXT_SCENE_MODE:Lcom/oplus/ocs/camera/CameraParameter$PreviewResultKey;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/oplus/ocs/camera/CameraParameter$PreviewResultKey<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public static final PREVIEW_RESULT_FEATURE_TYPE:Lcom/oplus/ocs/camera/CameraParameter$PreviewResultKey;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/oplus/ocs/camera/CameraParameter$PreviewResultKey<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field public static final PREVIEW_RESULT_FRAME_ID:Lcom/oplus/ocs/camera/CameraParameter$PreviewResultKey;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/oplus/ocs/camera/CameraParameter$PreviewResultKey<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field public static final PREVIEW_RESULT_GESTURE_ACTION_TYPE:Lcom/oplus/ocs/camera/CameraParameter$PreviewResultKey;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/oplus/ocs/camera/CameraParameter$PreviewResultKey<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field public static final PREVIEW_RESULT_HARDWARE_BUFFER:Lcom/oplus/ocs/camera/CameraParameter$PreviewResultKey;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/oplus/ocs/camera/CameraParameter$PreviewResultKey<",
            "Landroid/hardware/HardwareBuffer;",
            ">;"
        }
    .end annotation
.end field

.field public static final PREVIEW_RESULT_HDR_SCOPE:Lcom/oplus/ocs/camera/CameraParameter$PreviewResultKey;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/oplus/ocs/camera/CameraParameter$PreviewResultKey<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field public static final PREVIEW_RESULT_HEIGHT:Lcom/oplus/ocs/camera/CameraParameter$PreviewResultKey;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/oplus/ocs/camera/CameraParameter$PreviewResultKey<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field public static final PREVIEW_RESULT_IDENTITY:Lcom/oplus/ocs/camera/CameraParameter$PreviewResultKey;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/oplus/ocs/camera/CameraParameter$PreviewResultKey<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field

.field public static final PREVIEW_RESULT_IMAGE_IS_VALID:Lcom/oplus/ocs/camera/CameraParameter$PreviewResultKey;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/oplus/ocs/camera/CameraParameter$PreviewResultKey<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field public static final PREVIEW_RESULT_IMAGE_TIME_STAMP:Lcom/oplus/ocs/camera/CameraParameter$PreviewResultKey;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/oplus/ocs/camera/CameraParameter$PreviewResultKey<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field

.field public static final PREVIEW_RESULT_LAST_VDIEO_FRAME:Lcom/oplus/ocs/camera/CameraParameter$PreviewResultKey;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/oplus/ocs/camera/CameraParameter$PreviewResultKey<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field public static final PREVIEW_RESULT_LENS_DIRTY:Lcom/oplus/ocs/camera/CameraParameter$PreviewResultKey;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/oplus/ocs/camera/CameraParameter$PreviewResultKey<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field public static final PREVIEW_RESULT_LSD:Lcom/oplus/ocs/camera/CameraParameter$PreviewResultKey;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/oplus/ocs/camera/CameraParameter$PreviewResultKey<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public static final PREVIEW_RESULT_MASTER_CAMERA_ID:Lcom/oplus/ocs/camera/CameraParameter$PreviewResultKey;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/oplus/ocs/camera/CameraParameter$PreviewResultKey<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field public static final PREVIEW_RESULT_MASTER_PIPELINE:Lcom/oplus/ocs/camera/CameraParameter$PreviewResultKey;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/oplus/ocs/camera/CameraParameter$PreviewResultKey<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field public static final PREVIEW_RESULT_META_INDEX:Lcom/oplus/ocs/camera/CameraParameter$PreviewResultKey;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/oplus/ocs/camera/CameraParameter$PreviewResultKey<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field public static final PREVIEW_RESULT_MFSR_FRAME_COUNT:Lcom/oplus/ocs/camera/CameraParameter$PreviewResultKey;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/oplus/ocs/camera/CameraParameter$PreviewResultKey<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field public static final PREVIEW_RESULT_MOTION_DETECTED:Lcom/oplus/ocs/camera/CameraParameter$PreviewResultKey;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/oplus/ocs/camera/CameraParameter$PreviewResultKey<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field public static final PREVIEW_RESULT_MULTI_FRAME_COUNT:Lcom/oplus/ocs/camera/CameraParameter$PreviewResultKey;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/oplus/ocs/camera/CameraParameter$PreviewResultKey<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field public static final PREVIEW_RESULT_NIGHT_TOTAL_EXPTIME:Lcom/oplus/ocs/camera/CameraParameter$PreviewResultKey;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/oplus/ocs/camera/CameraParameter$PreviewResultKey<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field public static final PREVIEW_RESULT_OFFLINE_NIGHT_EXPTIME:Lcom/oplus/ocs/camera/CameraParameter$PreviewResultKey;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/oplus/ocs/camera/CameraParameter$PreviewResultKey<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field public static final PREVIEW_RESULT_PF:Lcom/oplus/ocs/camera/CameraParameter$PreviewResultKey;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/oplus/ocs/camera/CameraParameter$PreviewResultKey<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public static final PREVIEW_RESULT_RECTIFY:Lcom/oplus/ocs/camera/CameraParameter$PreviewResultKey;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/oplus/ocs/camera/CameraParameter$PreviewResultKey<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public static final PREVIEW_RESULT_REQUEST_FORMAT:Lcom/oplus/ocs/camera/CameraParameter$PreviewResultKey;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/oplus/ocs/camera/CameraParameter$PreviewResultKey<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field public static final PREVIEW_RESULT_RTB:Lcom/oplus/ocs/camera/CameraParameter$PreviewResultKey;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/oplus/ocs/camera/CameraParameter$PreviewResultKey<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public static final PREVIEW_RESULT_SCENE_MODE:Lcom/oplus/ocs/camera/CameraParameter$PreviewResultKey;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/oplus/ocs/camera/CameraParameter$PreviewResultKey<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field public static final PREVIEW_RESULT_SENSOR_MASK:Lcom/oplus/ocs/camera/CameraParameter$PreviewResultKey;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/oplus/ocs/camera/CameraParameter$PreviewResultKey<",
            "[I>;"
        }
    .end annotation
.end field

.field public static final PREVIEW_RESULT_SHOW_HDR_ICON:Lcom/oplus/ocs/camera/CameraParameter$PreviewResultKey;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/oplus/ocs/camera/CameraParameter$PreviewResultKey<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field public static final PREVIEW_RESULT_START_INTERPOLATION_FRAME:Lcom/oplus/ocs/camera/CameraParameter$PreviewResultKey;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/oplus/ocs/camera/CameraParameter$PreviewResultKey<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field public static final PREVIEW_RESULT_SUPER_NIGHT_SCENE:Lcom/oplus/ocs/camera/CameraParameter$PreviewResultKey;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/oplus/ocs/camera/CameraParameter$PreviewResultKey<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field public static final PREVIEW_RESULT_SUPPORT_ZOOM_FEATURE:Lcom/oplus/ocs/camera/CameraParameter$PreviewResultKey;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/oplus/ocs/camera/CameraParameter$PreviewResultKey<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field public static final PREVIEW_RESULT_THUMBNAIL_INDEX:Lcom/oplus/ocs/camera/CameraParameter$PreviewResultKey;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/oplus/ocs/camera/CameraParameter$PreviewResultKey<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field public static final PREVIEW_RESULT_TUNING_SCENE:Lcom/oplus/ocs/camera/CameraParameter$PreviewResultKey;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/oplus/ocs/camera/CameraParameter$PreviewResultKey<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field public static final PREVIEW_RESULT_VIDEO_EIS:Lcom/oplus/ocs/camera/CameraParameter$PreviewResultKey;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/oplus/ocs/camera/CameraParameter$PreviewResultKey<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field public static final PREVIEW_RESULT_VIDEO_HYPERLAPSE:Lcom/oplus/ocs/camera/CameraParameter$PreviewResultKey;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/oplus/ocs/camera/CameraParameter$PreviewResultKey<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public static final PREVIEW_RESULT_WIDTH:Lcom/oplus/ocs/camera/CameraParameter$PreviewResultKey;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/oplus/ocs/camera/CameraParameter$PreviewResultKey<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field public static final QUICK_JPEG:Lcom/oplus/ocs/camera/CameraParameter$PreviewKey;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/oplus/ocs/camera/CameraParameter$PreviewKey<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field public static final QUICK_JPEG_SWITCH:Lcom/oplus/ocs/camera/CameraParameter$ConfigureKey;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/oplus/ocs/camera/CameraParameter$ConfigureKey<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field public static final QUICK_VIDEO_RECORD_ENABLE:Lcom/oplus/ocs/camera/CameraParameter$PreviewKey;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/oplus/ocs/camera/CameraParameter$PreviewKey<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public static final RAW_CONTROL:Lcom/oplus/ocs/camera/CameraParameter$PreviewKey;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/oplus/ocs/camera/CameraParameter$PreviewKey<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public static final REAR_MIRROR_ENABLE:Lcom/oplus/ocs/camera/CameraParameter$PreviewKey;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/oplus/ocs/camera/CameraParameter$PreviewKey<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field public static final REQUEST_TAG:Lcom/oplus/ocs/camera/CameraParameter$PreviewKey;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/oplus/ocs/camera/CameraParameter$PreviewKey<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field public static final RESULT_CAPTURE_FOR_VIDEO:Lcom/oplus/ocs/camera/CameraParameter$CaptureResultKey;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/oplus/ocs/camera/CameraParameter$CaptureResultKey<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field public static final RESULT_REQUEST_TAG:Lcom/oplus/ocs/camera/CameraParameter$CaptureResultKey;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/oplus/ocs/camera/CameraParameter$CaptureResultKey<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field public static final SAT_NONE_ZOOM_RATIO:Lcom/oplus/ocs/camera/CameraParameter$PreviewKey;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/oplus/ocs/camera/CameraParameter$PreviewKey<",
            "Ljava/lang/Float;",
            ">;"
        }
    .end annotation
.end field

.field public static final SESSION_REQUEST_CROP_REGION:Lcom/oplus/ocs/camera/CameraParameter$ConfigureKey;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/oplus/ocs/camera/CameraParameter$ConfigureKey<",
            "[I>;"
        }
    .end annotation
.end field

.field public static final SHUTTER_BUTTON_CLICK_TIME:Lcom/oplus/ocs/camera/CameraParameter$PreviewKey;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/oplus/ocs/camera/CameraParameter$PreviewKey<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field

.field public static final SLOW_VIDEO_INTELLIGENT_HIGH_FRAME_ENABLE:Lcom/oplus/ocs/camera/CameraParameter$ConfigureKey;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/oplus/ocs/camera/CameraParameter$ConfigureKey<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public static final SLOW_VIDEO_MOTION_DETECT_COORDINATE:Lcom/oplus/ocs/camera/CameraParameter$ConfigureKey;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/oplus/ocs/camera/CameraParameter$ConfigureKey<",
            "Landroid/graphics/RectF;",
            ">;"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final STARBURST_MODE:Lcom/oplus/ocs/camera/CameraParameter$PreviewKey;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/oplus/ocs/camera/CameraParameter$PreviewKey<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field public static final STAR_VIDEO_ENABLE:Lcom/oplus/ocs/camera/CameraParameter$PreviewKey;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/oplus/ocs/camera/CameraParameter$PreviewKey<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public static final SUPER_CLEAR_PORTRAIT_ENABLE:Lcom/oplus/ocs/camera/CameraParameter$PreviewKey;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/oplus/ocs/camera/CameraParameter$PreviewKey<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public static final SUPER_TEXT_ENABLE:Lcom/oplus/ocs/camera/CameraParameter$PreviewKey;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/oplus/ocs/camera/CameraParameter$PreviewKey<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field public static final SUPER_TEXT_HEIGHT:Lcom/oplus/ocs/camera/CameraParameter$CaptureResultKey;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/oplus/ocs/camera/CameraParameter$CaptureResultKey<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field public static final SUPER_TEXT_VERTICES:Lcom/oplus/ocs/camera/CameraParameter$PreviewKey;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/oplus/ocs/camera/CameraParameter$PreviewKey<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public static final SUPER_TEXT_WIDTH:Lcom/oplus/ocs/camera/CameraParameter$CaptureResultKey;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/oplus/ocs/camera/CameraParameter$CaptureResultKey<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field public static final TILT_SHIFT_ENABLE:Lcom/oplus/ocs/camera/CameraParameter$PreviewKey;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/oplus/ocs/camera/CameraParameter$PreviewKey<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field public static final TILT_SHIFT_PARAM:Lcom/oplus/ocs/camera/CameraParameter$PreviewKey;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/oplus/ocs/camera/CameraParameter$PreviewKey<",
            "Landroid/os/Bundle;",
            ">;"
        }
    .end annotation
.end field

.field public static final TORCH_FLASH_ENABLE:Lcom/oplus/ocs/camera/CameraParameter$ConfigureKey;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/oplus/ocs/camera/CameraParameter$ConfigureKey<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public static final TRIPOD_MODE_ENABLE:Lcom/oplus/ocs/camera/CameraParameter$PreviewKey;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/oplus/ocs/camera/CameraParameter$PreviewKey<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field public static final ULTRA_HIGH_RESOLUTION_ENABLE:Lcom/oplus/ocs/camera/CameraParameter$PreviewKey;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/oplus/ocs/camera/CameraParameter$PreviewKey<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public static final VIDEO_10BIT_ENABLE:Lcom/oplus/ocs/camera/CameraParameter$ConfigureKey;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/oplus/ocs/camera/CameraParameter$ConfigureKey<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public static final VIDEO_3HDR_MODE:Lcom/oplus/ocs/camera/CameraParameter$ConfigureKey;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/oplus/ocs/camera/CameraParameter$ConfigureKey<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public static final VIDEO_BITRATE:Lcom/oplus/ocs/camera/CameraParameter$ConfigureKey;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/oplus/ocs/camera/CameraParameter$ConfigureKey<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field public static final VIDEO_BLUR:Lcom/oplus/ocs/camera/CameraParameter$ConfigureKey;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/oplus/ocs/camera/CameraParameter$ConfigureKey<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public static final VIDEO_BLUR_ENABLE:Lcom/oplus/ocs/camera/CameraParameter$PreviewKey;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/oplus/ocs/camera/CameraParameter$PreviewKey<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public static final VIDEO_BLUR_PARAMS:Lcom/oplus/ocs/camera/CameraParameter$PreviewKey;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/oplus/ocs/camera/CameraParameter$PreviewKey<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public static final VIDEO_DYNAMIC_FPS:Lcom/oplus/ocs/camera/CameraParameter$ConfigureKey;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/oplus/ocs/camera/CameraParameter$ConfigureKey<",
            "Landroid/util/Range;",
            ">;"
        }
    .end annotation
.end field

.field public static final VIDEO_EFFECT_PARAM:Lcom/oplus/ocs/camera/CameraParameter$PreviewKey;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/oplus/ocs/camera/CameraParameter$PreviewKey<",
            "Landroid/os/Bundle;",
            ">;"
        }
    .end annotation
.end field

.field public static final VIDEO_EIS_RECORD_STATE:Lcom/oplus/ocs/camera/CameraParameter$PreviewKey;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/oplus/ocs/camera/CameraParameter$PreviewKey<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field public static final VIDEO_ENCODER:Lcom/oplus/ocs/camera/CameraParameter$ConfigureKey;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/oplus/ocs/camera/CameraParameter$ConfigureKey<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public static final VIDEO_FOVC_MODE:Lcom/oplus/ocs/camera/CameraParameter$ConfigureKey;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/oplus/ocs/camera/CameraParameter$ConfigureKey<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public static final VIDEO_FPS:Lcom/oplus/ocs/camera/CameraParameter$ConfigureKey;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/oplus/ocs/camera/CameraParameter$ConfigureKey<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public static final VIDEO_FUSION_EFFECT:Lcom/oplus/ocs/camera/CameraParameter$PreviewKey;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/oplus/ocs/camera/CameraParameter$PreviewKey<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field public static final VIDEO_NEON_ENABLE:Lcom/oplus/ocs/camera/CameraParameter$PreviewKey;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/oplus/ocs/camera/CameraParameter$PreviewKey<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public static final VIDEO_NEON_PARAMS:Lcom/oplus/ocs/camera/CameraParameter$PreviewKey;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/oplus/ocs/camera/CameraParameter$PreviewKey<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public static final VIDEO_NIGHT_MODE:Lcom/oplus/ocs/camera/CameraParameter$ConfigureKey;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/oplus/ocs/camera/CameraParameter$ConfigureKey<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public static final VIDEO_RETENTION_OPEN:Lcom/oplus/ocs/camera/CameraParameter$PreviewKey;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/oplus/ocs/camera/CameraParameter$PreviewKey<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public static final VIDEO_STABILIZATION_MODE:Lcom/oplus/ocs/camera/CameraParameter$ConfigureKey;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/oplus/ocs/camera/CameraParameter$ConfigureKey<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public static final WATERMARK_CAPTURE_ENABLE:Lcom/oplus/ocs/camera/CameraParameter$PreviewKey;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/oplus/ocs/camera/CameraParameter$PreviewKey<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public static final WATERMARK_PARAM:Lcom/oplus/ocs/camera/CameraParameter$PreviewKey;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/oplus/ocs/camera/CameraParameter$PreviewKey<",
            "Landroid/os/Bundle;",
            ">;"
        }
    .end annotation
.end field

.field public static final WATERMARK_VIDEO_ENABLE:Lcom/oplus/ocs/camera/CameraParameter$ConfigureKey;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/oplus/ocs/camera/CameraParameter$ConfigureKey<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public static final ZOOM_ACTIVE:Lcom/oplus/ocs/camera/CameraParameter$PreviewKey;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/oplus/ocs/camera/CameraParameter$PreviewKey<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field public static final ZOOM_RATIO:Lcom/oplus/ocs/camera/CameraParameter$PreviewKey;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/oplus/ocs/camera/CameraParameter$PreviewKey<",
            "Ljava/lang/Float;",
            ">;"
        }
    .end annotation
.end field

.field public static final ZOOM_TARGET:Lcom/oplus/ocs/camera/CameraParameter$PreviewKey;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/oplus/ocs/camera/CameraParameter$PreviewKey<",
            "Ljava/lang/Float;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 10

    .line 49
    new-instance v0, Lcom/oplus/ocs/camera/CameraParameter$ConfigureKey;

    const-class v1, Ljava/lang/String;

    const/4 v2, 0x0

    const-string v3, "com.oplus.configure.video.fps"

    invoke-direct {v0, v3, v1, v2}, Lcom/oplus/ocs/camera/CameraParameter$ConfigureKey;-><init>(Ljava/lang/String;Ljava/lang/Class;Lcom/oplus/ocs/camera/CameraParameter$1;)V

    sput-object v0, Lcom/oplus/ocs/camera/CameraParameter;->VIDEO_FPS:Lcom/oplus/ocs/camera/CameraParameter$ConfigureKey;

    .line 56
    new-instance v0, Lcom/oplus/ocs/camera/CameraParameter$ConfigureKey;

    const-class v1, Landroid/util/Range;

    const-string v3, "com.oplus.configure.video.dynamic.fps"

    invoke-direct {v0, v3, v1, v2}, Lcom/oplus/ocs/camera/CameraParameter$ConfigureKey;-><init>(Ljava/lang/String;Ljava/lang/Class;Lcom/oplus/ocs/camera/CameraParameter$1;)V

    sput-object v0, Lcom/oplus/ocs/camera/CameraParameter;->VIDEO_DYNAMIC_FPS:Lcom/oplus/ocs/camera/CameraParameter$ConfigureKey;

    .line 62
    new-instance v0, Lcom/oplus/ocs/camera/CameraParameter$ConfigureKey;

    const-class v1, Ljava/lang/String;

    const-string v3, "com.oplus.configure.video.stabilization"

    invoke-direct {v0, v3, v1, v2}, Lcom/oplus/ocs/camera/CameraParameter$ConfigureKey;-><init>(Ljava/lang/String;Ljava/lang/Class;Lcom/oplus/ocs/camera/CameraParameter$1;)V

    sput-object v0, Lcom/oplus/ocs/camera/CameraParameter;->VIDEO_STABILIZATION_MODE:Lcom/oplus/ocs/camera/CameraParameter$ConfigureKey;

    .line 68
    new-instance v0, Lcom/oplus/ocs/camera/CameraParameter$ConfigureKey;

    const-class v1, Ljava/lang/String;

    const-string v3, "com.oplus.configure.video.3hdr"

    invoke-direct {v0, v3, v1, v2}, Lcom/oplus/ocs/camera/CameraParameter$ConfigureKey;-><init>(Ljava/lang/String;Ljava/lang/Class;Lcom/oplus/ocs/camera/CameraParameter$1;)V

    sput-object v0, Lcom/oplus/ocs/camera/CameraParameter;->VIDEO_3HDR_MODE:Lcom/oplus/ocs/camera/CameraParameter$ConfigureKey;

    .line 71
    new-instance v0, Lcom/oplus/ocs/camera/CameraParameter$ConfigureKey;

    const-class v1, Ljava/lang/String;

    const-string v3, "com.oplus.configure.video.night"

    invoke-direct {v0, v3, v1, v2}, Lcom/oplus/ocs/camera/CameraParameter$ConfigureKey;-><init>(Ljava/lang/String;Ljava/lang/Class;Lcom/oplus/ocs/camera/CameraParameter$1;)V

    sput-object v0, Lcom/oplus/ocs/camera/CameraParameter;->VIDEO_NIGHT_MODE:Lcom/oplus/ocs/camera/CameraParameter$ConfigureKey;

    .line 76
    new-instance v0, Lcom/oplus/ocs/camera/CameraParameter$ConfigureKey;

    const-class v1, Ljava/lang/String;

    const-string v3, "com.oplus.feature.video.10bit.enable"

    invoke-direct {v0, v3, v1, v2}, Lcom/oplus/ocs/camera/CameraParameter$ConfigureKey;-><init>(Ljava/lang/String;Ljava/lang/Class;Lcom/oplus/ocs/camera/CameraParameter$1;)V

    sput-object v0, Lcom/oplus/ocs/camera/CameraParameter;->VIDEO_10BIT_ENABLE:Lcom/oplus/ocs/camera/CameraParameter$ConfigureKey;

    .line 82
    new-instance v0, Lcom/oplus/ocs/camera/CameraParameter$ConfigureKey;

    const-class v1, Ljava/lang/String;

    const-string v3, "com.oplus.video.blur.enable"

    invoke-direct {v0, v3, v1, v2}, Lcom/oplus/ocs/camera/CameraParameter$ConfigureKey;-><init>(Ljava/lang/String;Ljava/lang/Class;Lcom/oplus/ocs/camera/CameraParameter$1;)V

    sput-object v0, Lcom/oplus/ocs/camera/CameraParameter;->VIDEO_BLUR:Lcom/oplus/ocs/camera/CameraParameter$ConfigureKey;

    .line 88
    new-instance v0, Lcom/oplus/ocs/camera/CameraParameter$ConfigureKey;

    const-class v1, Ljava/lang/String;

    const-string v4, "com.oplus.feature.photo.10bit.enable"

    invoke-direct {v0, v4, v1, v2}, Lcom/oplus/ocs/camera/CameraParameter$ConfigureKey;-><init>(Ljava/lang/String;Ljava/lang/Class;Lcom/oplus/ocs/camera/CameraParameter$1;)V

    sput-object v0, Lcom/oplus/ocs/camera/CameraParameter;->PHOTO_10BIT_ENABLE:Lcom/oplus/ocs/camera/CameraParameter$ConfigureKey;

    .line 94
    new-instance v0, Lcom/oplus/ocs/camera/CameraParameter$ConfigureKey;

    const-class v1, Ljava/lang/String;

    const-string v4, "com.oplus.feature.photo.highPicture.enable"

    invoke-direct {v0, v4, v1, v2}, Lcom/oplus/ocs/camera/CameraParameter$ConfigureKey;-><init>(Ljava/lang/String;Ljava/lang/Class;Lcom/oplus/ocs/camera/CameraParameter$1;)V

    sput-object v0, Lcom/oplus/ocs/camera/CameraParameter;->HIGH_PICTURE_SIZE_ENABLE:Lcom/oplus/ocs/camera/CameraParameter$ConfigureKey;

    .line 100
    new-instance v0, Lcom/oplus/ocs/camera/CameraParameter$ConfigureKey;

    const-class v1, Ljava/lang/String;

    const-string v4, "com.oplus.feature.ai.high.pixel.enable"

    invoke-direct {v0, v4, v1, v2}, Lcom/oplus/ocs/camera/CameraParameter$ConfigureKey;-><init>(Ljava/lang/String;Ljava/lang/Class;Lcom/oplus/ocs/camera/CameraParameter$1;)V

    sput-object v0, Lcom/oplus/ocs/camera/CameraParameter;->AI_HIGH_PIXEL_ENABLE:Lcom/oplus/ocs/camera/CameraParameter$ConfigureKey;

    .line 103
    new-instance v0, Lcom/oplus/ocs/camera/CameraParameter$ConfigureKey;

    const-class v1, Ljava/lang/Integer;

    const-string v4, "com.oplus.explorer.chip.state"

    invoke-direct {v0, v4, v1, v2}, Lcom/oplus/ocs/camera/CameraParameter$ConfigureKey;-><init>(Ljava/lang/String;Ljava/lang/Class;Lcom/oplus/ocs/camera/CameraParameter$1;)V

    sput-object v0, Lcom/oplus/ocs/camera/CameraParameter;->KEY_EXPLORER_CHIP_STATE:Lcom/oplus/ocs/camera/CameraParameter$ConfigureKey;

    .line 106
    new-instance v0, Lcom/oplus/ocs/camera/CameraParameter$ConfigureKey;

    const-class v1, Ljava/lang/String;

    const-string v4, "com.oplus.configure.explorer.enable"

    invoke-direct {v0, v4, v1, v2}, Lcom/oplus/ocs/camera/CameraParameter$ConfigureKey;-><init>(Ljava/lang/String;Ljava/lang/Class;Lcom/oplus/ocs/camera/CameraParameter$1;)V

    sput-object v0, Lcom/oplus/ocs/camera/CameraParameter;->KEY_EXPLORER_ENABLE:Lcom/oplus/ocs/camera/CameraParameter$ConfigureKey;

    .line 111
    new-instance v0, Lcom/oplus/ocs/camera/CameraParameter$ConfigureKey;

    const-class v1, Ljava/lang/Integer;

    const-string v4, "com.oplus.makeup.state"

    invoke-direct {v0, v4, v1, v2}, Lcom/oplus/ocs/camera/CameraParameter$ConfigureKey;-><init>(Ljava/lang/String;Ljava/lang/Class;Lcom/oplus/ocs/camera/CameraParameter$1;)V

    sput-object v0, Lcom/oplus/ocs/camera/CameraParameter;->MAKEUP_STATE:Lcom/oplus/ocs/camera/CameraParameter$ConfigureKey;

    .line 117
    new-instance v0, Lcom/oplus/ocs/camera/CameraParameter$ConfigureKey;

    const-class v1, Ljava/lang/String;

    const-string v4, "com.oplus.feature.antibanding.enable"

    invoke-direct {v0, v4, v1, v2}, Lcom/oplus/ocs/camera/CameraParameter$ConfigureKey;-><init>(Ljava/lang/String;Ljava/lang/Class;Lcom/oplus/ocs/camera/CameraParameter$1;)V

    sput-object v0, Lcom/oplus/ocs/camera/CameraParameter;->ANTI_BANDING_ENABLE:Lcom/oplus/ocs/camera/CameraParameter$ConfigureKey;

    .line 123
    new-instance v0, Lcom/oplus/ocs/camera/CameraParameter$ConfigureKey;

    const-class v1, Ljava/lang/String;

    const-string v4, "com.oplus.feature.mirror.enable"

    invoke-direct {v0, v4, v1, v2}, Lcom/oplus/ocs/camera/CameraParameter$ConfigureKey;-><init>(Ljava/lang/String;Ljava/lang/Class;Lcom/oplus/ocs/camera/CameraParameter$1;)V

    sput-object v0, Lcom/oplus/ocs/camera/CameraParameter;->MIRROR_ENABLE:Lcom/oplus/ocs/camera/CameraParameter$ConfigureKey;

    .line 129
    new-instance v0, Lcom/oplus/ocs/camera/CameraParameter$ConfigureKey;

    const-class v1, Ljava/lang/String;

    const-string v4, "com.oplus.camera.watermark.video.enable"

    invoke-direct {v0, v4, v1, v2}, Lcom/oplus/ocs/camera/CameraParameter$ConfigureKey;-><init>(Ljava/lang/String;Ljava/lang/Class;Lcom/oplus/ocs/camera/CameraParameter$1;)V

    sput-object v0, Lcom/oplus/ocs/camera/CameraParameter;->WATERMARK_VIDEO_ENABLE:Lcom/oplus/ocs/camera/CameraParameter$ConfigureKey;

    .line 136
    new-instance v0, Lcom/oplus/ocs/camera/CameraParameter$ConfigureKey;

    const-class v1, Ljava/lang/String;

    const-string v4, "com.oplus.configure.video.fovc"

    invoke-direct {v0, v4, v1, v2}, Lcom/oplus/ocs/camera/CameraParameter$ConfigureKey;-><init>(Ljava/lang/String;Ljava/lang/Class;Lcom/oplus/ocs/camera/CameraParameter$1;)V

    sput-object v0, Lcom/oplus/ocs/camera/CameraParameter;->VIDEO_FOVC_MODE:Lcom/oplus/ocs/camera/CameraParameter$ConfigureKey;

    .line 142
    new-instance v0, Lcom/oplus/ocs/camera/CameraParameter$ConfigureKey;

    const-class v1, Ljava/lang/String;

    const-string v4, "com.oplus.configure.video.encoder"

    invoke-direct {v0, v4, v1, v2}, Lcom/oplus/ocs/camera/CameraParameter$ConfigureKey;-><init>(Ljava/lang/String;Ljava/lang/Class;Lcom/oplus/ocs/camera/CameraParameter$1;)V

    sput-object v0, Lcom/oplus/ocs/camera/CameraParameter;->VIDEO_ENCODER:Lcom/oplus/ocs/camera/CameraParameter$ConfigureKey;

    .line 148
    new-instance v0, Lcom/oplus/ocs/camera/CameraParameter$ConfigureKey;

    const-class v1, Ljava/lang/Integer;

    const-string v4, "com.oplus.configure.video.bitrate"

    invoke-direct {v0, v4, v1, v2}, Lcom/oplus/ocs/camera/CameraParameter$ConfigureKey;-><init>(Ljava/lang/String;Ljava/lang/Class;Lcom/oplus/ocs/camera/CameraParameter$1;)V

    sput-object v0, Lcom/oplus/ocs/camera/CameraParameter;->VIDEO_BITRATE:Lcom/oplus/ocs/camera/CameraParameter$ConfigureKey;

    .line 154
    new-instance v0, Lcom/oplus/ocs/camera/CameraParameter$ConfigureKey;

    const-class v1, Ljava/lang/String;

    const-string v4, "com.oplus.portrait.bokeh.type"

    invoke-direct {v0, v4, v1, v2}, Lcom/oplus/ocs/camera/CameraParameter$ConfigureKey;-><init>(Ljava/lang/String;Ljava/lang/Class;Lcom/oplus/ocs/camera/CameraParameter$1;)V

    sput-object v0, Lcom/oplus/ocs/camera/CameraParameter;->PORTAIT_BOKEH_TYPE:Lcom/oplus/ocs/camera/CameraParameter$ConfigureKey;

    .line 160
    new-instance v0, Lcom/oplus/ocs/camera/CameraParameter$ConfigureKey;

    const-class v1, Ljava/lang/String;

    const-string v4, "com.oplus.portrait.body.type"

    invoke-direct {v0, v4, v1, v2}, Lcom/oplus/ocs/camera/CameraParameter$ConfigureKey;-><init>(Ljava/lang/String;Ljava/lang/Class;Lcom/oplus/ocs/camera/CameraParameter$1;)V

    sput-object v0, Lcom/oplus/ocs/camera/CameraParameter;->PORTAIT_BODY_TYPE:Lcom/oplus/ocs/camera/CameraParameter$ConfigureKey;

    .line 166
    new-instance v0, Lcom/oplus/ocs/camera/CameraParameter$ConfigureKey;

    const-class v1, Ljava/lang/String;

    const-string v4, "com.oplus.configure.fastvideo.hyperLapse"

    invoke-direct {v0, v4, v1, v2}, Lcom/oplus/ocs/camera/CameraParameter$ConfigureKey;-><init>(Ljava/lang/String;Ljava/lang/Class;Lcom/oplus/ocs/camera/CameraParameter$1;)V

    sput-object v0, Lcom/oplus/ocs/camera/CameraParameter;->HYPER_LAPSE:Lcom/oplus/ocs/camera/CameraParameter$ConfigureKey;

    .line 172
    new-instance v0, Lcom/oplus/ocs/camera/CameraParameter$ConfigureKey;

    const-class v1, Ljava/lang/Integer;

    const-string v4, "com.oplus.video.stabilization.mode"

    invoke-direct {v0, v4, v1, v2}, Lcom/oplus/ocs/camera/CameraParameter$ConfigureKey;-><init>(Ljava/lang/String;Ljava/lang/Class;Lcom/oplus/ocs/camera/CameraParameter$1;)V

    sput-object v0, Lcom/oplus/ocs/camera/CameraParameter;->AI_NIGHT_VIDEO_MODE:Lcom/oplus/ocs/camera/CameraParameter$ConfigureKey;

    .line 178
    new-instance v0, Lcom/oplus/ocs/camera/CameraParameter$ConfigureKey;

    const-class v1, Ljava/lang/String;

    const-string v4, "com.oplus.slow.video.intelligent.high.frame.enable"

    invoke-direct {v0, v4, v1, v2}, Lcom/oplus/ocs/camera/CameraParameter$ConfigureKey;-><init>(Ljava/lang/String;Ljava/lang/Class;Lcom/oplus/ocs/camera/CameraParameter$1;)V

    sput-object v0, Lcom/oplus/ocs/camera/CameraParameter;->SLOW_VIDEO_INTELLIGENT_HIGH_FRAME_ENABLE:Lcom/oplus/ocs/camera/CameraParameter$ConfigureKey;

    .line 187
    new-instance v0, Lcom/oplus/ocs/camera/CameraParameter$ConfigureKey;

    const-class v1, Landroid/graphics/RectF;

    const-string v4, "com.oplus.slow.video.motion.detect.coordinate"

    invoke-direct {v0, v4, v1, v2}, Lcom/oplus/ocs/camera/CameraParameter$ConfigureKey;-><init>(Ljava/lang/String;Ljava/lang/Class;Lcom/oplus/ocs/camera/CameraParameter$1;)V

    sput-object v0, Lcom/oplus/ocs/camera/CameraParameter;->SLOW_VIDEO_MOTION_DETECT_COORDINATE:Lcom/oplus/ocs/camera/CameraParameter$ConfigureKey;

    .line 193
    new-instance v0, Lcom/oplus/ocs/camera/CameraParameter$ConfigureKey;

    sget-object v1, Ljava/lang/Byte;->TYPE:Ljava/lang/Class;

    const-string v4, "com.oplus.movie.hdr.enable"

    invoke-direct {v0, v4, v1, v2}, Lcom/oplus/ocs/camera/CameraParameter$ConfigureKey;-><init>(Ljava/lang/String;Ljava/lang/Class;Lcom/oplus/ocs/camera/CameraParameter$1;)V

    sput-object v0, Lcom/oplus/ocs/camera/CameraParameter;->KEY_MOVIE_HDR_ENABLE:Lcom/oplus/ocs/camera/CameraParameter$ConfigureKey;

    .line 196
    new-instance v0, Lcom/oplus/ocs/camera/CameraParameter$ConfigureKey;

    sget-object v1, Ljava/lang/Byte;->TYPE:Ljava/lang/Class;

    const-string v5, "com.oplus.movie.log.enable"

    invoke-direct {v0, v5, v1, v2}, Lcom/oplus/ocs/camera/CameraParameter$ConfigureKey;-><init>(Ljava/lang/String;Ljava/lang/Class;Lcom/oplus/ocs/camera/CameraParameter$1;)V

    sput-object v0, Lcom/oplus/ocs/camera/CameraParameter;->KEY_MOVIE_LOG_ENABLE:Lcom/oplus/ocs/camera/CameraParameter$ConfigureKey;

    .line 202
    new-instance v0, Lcom/oplus/ocs/camera/CameraParameter$ConfigureKey;

    const-class v1, [I

    const-string v6, "com.oplus.multicamfeature.multiCamConfigScalerCropRegion"

    invoke-direct {v0, v6, v1, v2}, Lcom/oplus/ocs/camera/CameraParameter$ConfigureKey;-><init>(Ljava/lang/String;Ljava/lang/Class;Lcom/oplus/ocs/camera/CameraParameter$1;)V

    sput-object v0, Lcom/oplus/ocs/camera/CameraParameter;->SESSION_REQUEST_CROP_REGION:Lcom/oplus/ocs/camera/CameraParameter$ConfigureKey;

    .line 209
    new-instance v0, Lcom/oplus/ocs/camera/CameraParameter$ConfigureKey;

    const-class v1, Ljava/lang/String;

    const-string v6, "com.oplus.torch.flash.enable"

    invoke-direct {v0, v6, v1, v2}, Lcom/oplus/ocs/camera/CameraParameter$ConfigureKey;-><init>(Ljava/lang/String;Ljava/lang/Class;Lcom/oplus/ocs/camera/CameraParameter$1;)V

    sput-object v0, Lcom/oplus/ocs/camera/CameraParameter;->TORCH_FLASH_ENABLE:Lcom/oplus/ocs/camera/CameraParameter$ConfigureKey;

    .line 212
    new-instance v0, Lcom/oplus/ocs/camera/CameraParameter$ConfigureKey;

    const-class v1, Ljava/lang/Boolean;

    const-string v6, "com.oplus.quick.jpeg.switch"

    invoke-direct {v0, v6, v1, v2}, Lcom/oplus/ocs/camera/CameraParameter$ConfigureKey;-><init>(Ljava/lang/String;Ljava/lang/Class;Lcom/oplus/ocs/camera/CameraParameter$1;)V

    sput-object v0, Lcom/oplus/ocs/camera/CameraParameter;->QUICK_JPEG_SWITCH:Lcom/oplus/ocs/camera/CameraParameter$ConfigureKey;

    .line 215
    new-instance v0, Lcom/oplus/ocs/camera/CameraParameter$ConfigureKey;

    sget-object v1, Ljava/lang/Byte;->TYPE:Ljava/lang/Class;

    const-string v6, "com.oplus.hvxshdr.mode.enable"

    invoke-direct {v0, v6, v1, v2}, Lcom/oplus/ocs/camera/CameraParameter$ConfigureKey;-><init>(Ljava/lang/String;Ljava/lang/Class;Lcom/oplus/ocs/camera/CameraParameter$1;)V

    sput-object v0, Lcom/oplus/ocs/camera/CameraParameter;->HVXSHDR_MODE_ENABLE:Lcom/oplus/ocs/camera/CameraParameter$ConfigureKey;

    .line 221
    new-instance v0, Lcom/oplus/ocs/camera/CameraParameter$ConfigureKey;

    const-class v1, Ljava/lang/String;

    const-string v6, "com.oplus.portrait.streamer.enable"

    invoke-direct {v0, v6, v1, v2}, Lcom/oplus/ocs/camera/CameraParameter$ConfigureKey;-><init>(Ljava/lang/String;Ljava/lang/Class;Lcom/oplus/ocs/camera/CameraParameter$1;)V

    sput-object v0, Lcom/oplus/ocs/camera/CameraParameter;->PORTRAIT_STREAMER_ENABLE:Lcom/oplus/ocs/camera/CameraParameter$ConfigureKey;

    .line 227
    new-instance v0, Lcom/oplus/ocs/camera/CameraParameter$ConfigureKey;

    const-class v1, [B

    const-string v6, "com.oplus.caller.package.name"

    invoke-direct {v0, v6, v1, v2}, Lcom/oplus/ocs/camera/CameraParameter$ConfigureKey;-><init>(Ljava/lang/String;Ljava/lang/Class;Lcom/oplus/ocs/camera/CameraParameter$1;)V

    sput-object v0, Lcom/oplus/ocs/camera/CameraParameter;->KEY_CALLER_PACKAGE_NAME:Lcom/oplus/ocs/camera/CameraParameter$ConfigureKey;

    .line 233
    new-instance v0, Lcom/oplus/ocs/camera/CameraParameter$ConfigureKey;

    const-class v1, [B

    const-string v6, "com.oplus.control.capture.zsl.mode"

    invoke-direct {v0, v6, v1, v2}, Lcom/oplus/ocs/camera/CameraParameter$ConfigureKey;-><init>(Ljava/lang/String;Ljava/lang/Class;Lcom/oplus/ocs/camera/CameraParameter$1;)V

    sput-object v0, Lcom/oplus/ocs/camera/CameraParameter;->KEY_REQUEST_ZSL_MODE:Lcom/oplus/ocs/camera/CameraParameter$ConfigureKey;

    .line 239
    new-instance v0, Lcom/oplus/ocs/camera/CameraParameter$ConfigureKey;

    const-class v1, Ljava/lang/String;

    const-string v6, "com.oplus.mono.filter.type"

    invoke-direct {v0, v6, v1, v2}, Lcom/oplus/ocs/camera/CameraParameter$ConfigureKey;-><init>(Ljava/lang/String;Ljava/lang/Class;Lcom/oplus/ocs/camera/CameraParameter$1;)V

    sput-object v0, Lcom/oplus/ocs/camera/CameraParameter;->MONO_FILTER_TYPE:Lcom/oplus/ocs/camera/CameraParameter$ConfigureKey;

    .line 245
    new-instance v0, Lcom/oplus/ocs/camera/CameraParameter$ConfigureKey;

    const-class v1, Ljava/lang/Integer;

    const-string v6, "com.oplus.dualscene.master"

    invoke-direct {v0, v6, v1, v2}, Lcom/oplus/ocs/camera/CameraParameter$ConfigureKey;-><init>(Ljava/lang/String;Ljava/lang/Class;Lcom/oplus/ocs/camera/CameraParameter$1;)V

    sput-object v0, Lcom/oplus/ocs/camera/CameraParameter;->KEY_DUAL_SCENE_MASTER:Lcom/oplus/ocs/camera/CameraParameter$ConfigureKey;

    .line 252
    new-instance v0, Lcom/oplus/ocs/camera/CameraParameter$ConfigureKey;

    const-class v1, Ljava/lang/Float;

    const-string v6, "com.oplus.original.zoomRatio"

    invoke-direct {v0, v6, v1, v2}, Lcom/oplus/ocs/camera/CameraParameter$ConfigureKey;-><init>(Ljava/lang/String;Ljava/lang/Class;Lcom/oplus/ocs/camera/CameraParameter$1;)V

    sput-object v0, Lcom/oplus/ocs/camera/CameraParameter;->KEY_ZOOM_RATION_CONFIGURE:Lcom/oplus/ocs/camera/CameraParameter$ConfigureKey;

    .line 258
    new-instance v0, Lcom/oplus/ocs/camera/CameraParameter$ConfigureKey;

    const-class v1, Ljava/lang/Boolean;

    const-string v6, "com.oplus.camera.is.from.main.menu"

    invoke-direct {v0, v6, v1, v2}, Lcom/oplus/ocs/camera/CameraParameter$ConfigureKey;-><init>(Ljava/lang/String;Ljava/lang/Class;Lcom/oplus/ocs/camera/CameraParameter$1;)V

    sput-object v0, Lcom/oplus/ocs/camera/CameraParameter;->KEY_IS_FROM_MAIN_MENU:Lcom/oplus/ocs/camera/CameraParameter$ConfigureKey;

    .line 269
    new-instance v0, Lcom/oplus/ocs/camera/CameraParameter$PreviewKey;

    const-class v1, Ljava/lang/String;

    const-string v6, "com.oplus.preview.capture.hdrMode"

    invoke-direct {v0, v6, v1, v2}, Lcom/oplus/ocs/camera/CameraParameter$PreviewKey;-><init>(Ljava/lang/String;Ljava/lang/Class;Lcom/oplus/ocs/camera/CameraParameter$1;)V

    sput-object v0, Lcom/oplus/ocs/camera/CameraParameter;->CAPTURE_HDR_MODE:Lcom/oplus/ocs/camera/CameraParameter$PreviewKey;

    .line 275
    new-instance v0, Lcom/oplus/ocs/camera/CameraParameter$PreviewKey;

    const-class v1, Ljava/lang/String;

    const-string v6, "com.oplus.preview.flash.mode"

    invoke-direct {v0, v6, v1, v2}, Lcom/oplus/ocs/camera/CameraParameter$PreviewKey;-><init>(Ljava/lang/String;Ljava/lang/Class;Lcom/oplus/ocs/camera/CameraParameter$1;)V

    sput-object v0, Lcom/oplus/ocs/camera/CameraParameter;->FLASH_MODE:Lcom/oplus/ocs/camera/CameraParameter$PreviewKey;

    .line 281
    new-instance v0, Lcom/oplus/ocs/camera/CameraParameter$PreviewKey;

    const-class v1, Ljava/lang/Float;

    const-string v6, "com.oplus.preview.zoom.ratio"

    invoke-direct {v0, v6, v1, v2}, Lcom/oplus/ocs/camera/CameraParameter$PreviewKey;-><init>(Ljava/lang/String;Ljava/lang/Class;Lcom/oplus/ocs/camera/CameraParameter$1;)V

    sput-object v0, Lcom/oplus/ocs/camera/CameraParameter;->ZOOM_RATIO:Lcom/oplus/ocs/camera/CameraParameter$PreviewKey;

    .line 287
    new-instance v0, Lcom/oplus/ocs/camera/CameraParameter$PreviewKey;

    const-class v1, Ljava/lang/Float;

    const-string v6, "com.oplus.zoom.target"

    invoke-direct {v0, v6, v1, v2}, Lcom/oplus/ocs/camera/CameraParameter$PreviewKey;-><init>(Ljava/lang/String;Ljava/lang/Class;Lcom/oplus/ocs/camera/CameraParameter$1;)V

    sput-object v0, Lcom/oplus/ocs/camera/CameraParameter;->ZOOM_TARGET:Lcom/oplus/ocs/camera/CameraParameter$PreviewKey;

    .line 293
    new-instance v0, Lcom/oplus/ocs/camera/CameraParameter$PreviewKey;

    const-class v1, Ljava/lang/Boolean;

    const-string v6, "com.oplus.zoom.active"

    invoke-direct {v0, v6, v1, v2}, Lcom/oplus/ocs/camera/CameraParameter$PreviewKey;-><init>(Ljava/lang/String;Ljava/lang/Class;Lcom/oplus/ocs/camera/CameraParameter$1;)V

    sput-object v0, Lcom/oplus/ocs/camera/CameraParameter;->ZOOM_ACTIVE:Lcom/oplus/ocs/camera/CameraParameter$PreviewKey;

    .line 298
    new-instance v0, Lcom/oplus/ocs/camera/CameraParameter$PreviewKey;

    const-class v1, Ljava/lang/Integer;

    const-string v6, "com.oplus.preview.focus.mode"

    invoke-direct {v0, v6, v1, v2}, Lcom/oplus/ocs/camera/CameraParameter$PreviewKey;-><init>(Ljava/lang/String;Ljava/lang/Class;Lcom/oplus/ocs/camera/CameraParameter$1;)V

    sput-object v0, Lcom/oplus/ocs/camera/CameraParameter;->FOCUS_MODE:Lcom/oplus/ocs/camera/CameraParameter$PreviewKey;

    .line 304
    new-instance v0, Lcom/oplus/ocs/camera/CameraParameter$PreviewKey;

    const-class v1, Landroid/graphics/RectF;

    const-string v6, "com.oplus.preview.af.regions"

    invoke-direct {v0, v6, v1, v2}, Lcom/oplus/ocs/camera/CameraParameter$PreviewKey;-><init>(Ljava/lang/String;Ljava/lang/Class;Lcom/oplus/ocs/camera/CameraParameter$1;)V

    sput-object v0, Lcom/oplus/ocs/camera/CameraParameter;->AF_REGIONS:Lcom/oplus/ocs/camera/CameraParameter$PreviewKey;

    .line 309
    new-instance v0, Lcom/oplus/ocs/camera/CameraParameter$PreviewKey;

    const-class v1, Landroid/graphics/RectF;

    const-string v6, "com.oplus.preview.ae.regions"

    invoke-direct {v0, v6, v1, v2}, Lcom/oplus/ocs/camera/CameraParameter$PreviewKey;-><init>(Ljava/lang/String;Ljava/lang/Class;Lcom/oplus/ocs/camera/CameraParameter$1;)V

    sput-object v0, Lcom/oplus/ocs/camera/CameraParameter;->AE_REGIONS:Lcom/oplus/ocs/camera/CameraParameter$PreviewKey;

    .line 314
    new-instance v0, Lcom/oplus/ocs/camera/CameraParameter$PreviewKey;

    sget-object v1, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    const-string v6, "com.oplus.preview.tripod.mode"

    invoke-direct {v0, v6, v1, v2}, Lcom/oplus/ocs/camera/CameraParameter$PreviewKey;-><init>(Ljava/lang/String;Ljava/lang/Class;Lcom/oplus/ocs/camera/CameraParameter$1;)V

    sput-object v0, Lcom/oplus/ocs/camera/CameraParameter;->TRIPOD_MODE_ENABLE:Lcom/oplus/ocs/camera/CameraParameter$PreviewKey;

    .line 320
    new-instance v0, Lcom/oplus/ocs/camera/CameraParameter$PreviewKey;

    const-class v1, Ljava/lang/String;

    const-string v6, "com.oplus.gesture.capture.enable"

    invoke-direct {v0, v6, v1, v2}, Lcom/oplus/ocs/camera/CameraParameter$PreviewKey;-><init>(Ljava/lang/String;Ljava/lang/Class;Lcom/oplus/ocs/camera/CameraParameter$1;)V

    sput-object v0, Lcom/oplus/ocs/camera/CameraParameter;->KEY_GESTURE_ENABLE:Lcom/oplus/ocs/camera/CameraParameter$PreviewKey;

    .line 326
    new-instance v0, Lcom/oplus/ocs/camera/CameraParameter$PreviewKey;

    sget-object v1, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    const-string v6, "com.oplus.preview.starburst.mode"

    invoke-direct {v0, v6, v1, v2}, Lcom/oplus/ocs/camera/CameraParameter$PreviewKey;-><init>(Ljava/lang/String;Ljava/lang/Class;Lcom/oplus/ocs/camera/CameraParameter$1;)V

    sput-object v0, Lcom/oplus/ocs/camera/CameraParameter;->STARBURST_MODE:Lcom/oplus/ocs/camera/CameraParameter$PreviewKey;

    .line 332
    new-instance v0, Lcom/oplus/ocs/camera/CameraParameter$PreviewKey;

    sget-object v1, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    const-string v6, "com.oplus.preview.fisheye.mode"

    invoke-direct {v0, v6, v1, v2}, Lcom/oplus/ocs/camera/CameraParameter$PreviewKey;-><init>(Ljava/lang/String;Ljava/lang/Class;Lcom/oplus/ocs/camera/CameraParameter$1;)V

    sput-object v0, Lcom/oplus/ocs/camera/CameraParameter;->FISH_EYE_MODE:Lcom/oplus/ocs/camera/CameraParameter$PreviewKey;

    .line 338
    new-instance v0, Lcom/oplus/ocs/camera/CameraParameter$PreviewKey;

    sget-object v1, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    const-string v6, "com.oplus.preview.flip_mode"

    invoke-direct {v0, v6, v1, v2}, Lcom/oplus/ocs/camera/CameraParameter$PreviewKey;-><init>(Ljava/lang/String;Ljava/lang/Class;Lcom/oplus/ocs/camera/CameraParameter$1;)V

    sput-object v0, Lcom/oplus/ocs/camera/CameraParameter;->CAPTURE_FLIP_MODE_ENABLE:Lcom/oplus/ocs/camera/CameraParameter$PreviewKey;

    .line 344
    new-instance v0, Lcom/oplus/ocs/camera/CameraParameter$PreviewKey;

    const-class v1, [F

    const-string v6, "com.oplus.bokeh.level"

    invoke-direct {v0, v6, v1, v2}, Lcom/oplus/ocs/camera/CameraParameter$PreviewKey;-><init>(Ljava/lang/String;Ljava/lang/Class;Lcom/oplus/ocs/camera/CameraParameter$1;)V

    sput-object v0, Lcom/oplus/ocs/camera/CameraParameter;->BLUR_LEVEL:Lcom/oplus/ocs/camera/CameraParameter$PreviewKey;

    .line 349
    new-instance v0, Lcom/oplus/ocs/camera/CameraParameter$PreviewKey;

    const-class v1, [I

    const-string v6, "com.oplus.opx.CropInfo"

    invoke-direct {v0, v6, v1, v2}, Lcom/oplus/ocs/camera/CameraParameter$PreviewKey;-><init>(Ljava/lang/String;Ljava/lang/Class;Lcom/oplus/ocs/camera/CameraParameter$1;)V

    sput-object v0, Lcom/oplus/ocs/camera/CameraParameter;->HASSELBLAD_XPAN_CROP_REGION:Lcom/oplus/ocs/camera/CameraParameter$PreviewKey;

    .line 354
    new-instance v0, Lcom/oplus/ocs/camera/CameraParameter$PreviewKey;

    const-class v1, Ljava/lang/Integer;

    const-string v6, "com.oplus.blur.level.range"

    invoke-direct {v0, v6, v1, v2}, Lcom/oplus/ocs/camera/CameraParameter$PreviewKey;-><init>(Ljava/lang/String;Ljava/lang/Class;Lcom/oplus/ocs/camera/CameraParameter$1;)V

    sput-object v0, Lcom/oplus/ocs/camera/CameraParameter;->BLUR_LEVEL_RANGE:Lcom/oplus/ocs/camera/CameraParameter$PreviewKey;

    .line 360
    new-instance v0, Lcom/oplus/ocs/camera/CameraParameter$PreviewKey;

    const-class v1, Ljava/lang/Float;

    const-string v6, "com.oplus.sat.none.zoom.ratio"

    invoke-direct {v0, v6, v1, v2}, Lcom/oplus/ocs/camera/CameraParameter$PreviewKey;-><init>(Ljava/lang/String;Ljava/lang/Class;Lcom/oplus/ocs/camera/CameraParameter$1;)V

    sput-object v0, Lcom/oplus/ocs/camera/CameraParameter;->SAT_NONE_ZOOM_RATIO:Lcom/oplus/ocs/camera/CameraParameter$PreviewKey;

    .line 366
    new-instance v0, Lcom/oplus/ocs/camera/CameraParameter$PreviewKey;

    const-class v1, Ljava/lang/String;

    const-string v6, "com.oplus.super.text.vertices"

    invoke-direct {v0, v6, v1, v2}, Lcom/oplus/ocs/camera/CameraParameter$PreviewKey;-><init>(Ljava/lang/String;Ljava/lang/Class;Lcom/oplus/ocs/camera/CameraParameter$1;)V

    sput-object v0, Lcom/oplus/ocs/camera/CameraParameter;->SUPER_TEXT_VERTICES:Lcom/oplus/ocs/camera/CameraParameter$PreviewKey;

    .line 372
    new-instance v0, Lcom/oplus/ocs/camera/CameraParameter$PreviewKey;

    const-class v1, Ljava/lang/Boolean;

    const-string v6, "com.oplus.super.text.enable"

    invoke-direct {v0, v6, v1, v2}, Lcom/oplus/ocs/camera/CameraParameter$PreviewKey;-><init>(Ljava/lang/String;Ljava/lang/Class;Lcom/oplus/ocs/camera/CameraParameter$1;)V

    sput-object v0, Lcom/oplus/ocs/camera/CameraParameter;->SUPER_TEXT_ENABLE:Lcom/oplus/ocs/camera/CameraParameter$PreviewKey;

    .line 378
    new-instance v0, Lcom/oplus/ocs/camera/CameraParameter$PreviewKey;

    const-class v1, Ljava/lang/Object;

    const-string v6, "com.oplus.request.tag"

    invoke-direct {v0, v6, v1, v2}, Lcom/oplus/ocs/camera/CameraParameter$PreviewKey;-><init>(Ljava/lang/String;Ljava/lang/Class;Lcom/oplus/ocs/camera/CameraParameter$1;)V

    sput-object v0, Lcom/oplus/ocs/camera/CameraParameter;->REQUEST_TAG:Lcom/oplus/ocs/camera/CameraParameter$PreviewKey;

    .line 384
    new-instance v0, Lcom/oplus/ocs/camera/CameraParameter$PreviewKey;

    const-class v1, Ljava/lang/Long;

    const-string v7, "com.oplus.capture.time"

    invoke-direct {v0, v7, v1, v2}, Lcom/oplus/ocs/camera/CameraParameter$PreviewKey;-><init>(Ljava/lang/String;Ljava/lang/Class;Lcom/oplus/ocs/camera/CameraParameter$1;)V

    sput-object v0, Lcom/oplus/ocs/camera/CameraParameter;->CAPTURE_TIME:Lcom/oplus/ocs/camera/CameraParameter$PreviewKey;

    .line 390
    new-instance v0, Lcom/oplus/ocs/camera/CameraParameter$PreviewKey;

    const-class v1, Landroid/os/Bundle;

    const-string v7, "com.oplus.feature.watermark.param"

    invoke-direct {v0, v7, v1, v2}, Lcom/oplus/ocs/camera/CameraParameter$PreviewKey;-><init>(Ljava/lang/String;Ljava/lang/Class;Lcom/oplus/ocs/camera/CameraParameter$1;)V

    sput-object v0, Lcom/oplus/ocs/camera/CameraParameter;->WATERMARK_PARAM:Lcom/oplus/ocs/camera/CameraParameter$PreviewKey;

    .line 396
    new-instance v0, Lcom/oplus/ocs/camera/CameraParameter$PreviewKey;

    const-class v1, Ljava/lang/String;

    const-string v7, "com.oplus.preview.capture.ai"

    invoke-direct {v0, v7, v1, v2}, Lcom/oplus/ocs/camera/CameraParameter$PreviewKey;-><init>(Ljava/lang/String;Ljava/lang/Class;Lcom/oplus/ocs/camera/CameraParameter$1;)V

    sput-object v0, Lcom/oplus/ocs/camera/CameraParameter;->AI_PHOTO:Lcom/oplus/ocs/camera/CameraParameter$PreviewKey;

    .line 402
    new-instance v0, Lcom/oplus/ocs/camera/CameraParameter$PreviewKey;

    const-class v1, Ljava/lang/String;

    const-string v7, "com.oplus.camera.algo.visualization.enable"

    invoke-direct {v0, v7, v1, v2}, Lcom/oplus/ocs/camera/CameraParameter$PreviewKey;-><init>(Ljava/lang/String;Ljava/lang/Class;Lcom/oplus/ocs/camera/CameraParameter$1;)V

    sput-object v0, Lcom/oplus/ocs/camera/CameraParameter;->ALGO_VISUALIZATION_ENABLE:Lcom/oplus/ocs/camera/CameraParameter$PreviewKey;

    .line 408
    new-instance v0, Lcom/oplus/ocs/camera/CameraParameter$PreviewKey;

    const-class v1, Ljava/lang/String;

    const-string v7, "com.oplus.camera.filter.type"

    invoke-direct {v0, v7, v1, v2}, Lcom/oplus/ocs/camera/CameraParameter$PreviewKey;-><init>(Ljava/lang/String;Ljava/lang/Class;Lcom/oplus/ocs/camera/CameraParameter$1;)V

    sput-object v0, Lcom/oplus/ocs/camera/CameraParameter;->FILTER_TYPE:Lcom/oplus/ocs/camera/CameraParameter$PreviewKey;

    .line 414
    new-instance v0, Lcom/oplus/ocs/camera/CameraParameter$PreviewKey;

    const-class v1, Ljava/lang/Boolean;

    const-string v7, "com.oplus.camera.filter.open"

    invoke-direct {v0, v7, v1, v2}, Lcom/oplus/ocs/camera/CameraParameter$PreviewKey;-><init>(Ljava/lang/String;Ljava/lang/Class;Lcom/oplus/ocs/camera/CameraParameter$1;)V

    sput-object v0, Lcom/oplus/ocs/camera/CameraParameter;->FILTER_OPEN:Lcom/oplus/ocs/camera/CameraParameter$PreviewKey;

    .line 420
    new-instance v0, Lcom/oplus/ocs/camera/CameraParameter$PreviewKey;

    const-class v1, Ljava/lang/String;

    const-string v7, "com.oplus.camera.video.retention.open"

    invoke-direct {v0, v7, v1, v2}, Lcom/oplus/ocs/camera/CameraParameter$PreviewKey;-><init>(Ljava/lang/String;Ljava/lang/Class;Lcom/oplus/ocs/camera/CameraParameter$1;)V

    sput-object v0, Lcom/oplus/ocs/camera/CameraParameter;->VIDEO_RETENTION_OPEN:Lcom/oplus/ocs/camera/CameraParameter$PreviewKey;

    .line 426
    new-instance v0, Lcom/oplus/ocs/camera/CameraParameter$PreviewKey;

    const-class v1, Ljava/lang/String;

    const-string v7, "com.oplus.camera.makeup.type"

    invoke-direct {v0, v7, v1, v2}, Lcom/oplus/ocs/camera/CameraParameter$PreviewKey;-><init>(Ljava/lang/String;Ljava/lang/Class;Lcom/oplus/ocs/camera/CameraParameter$1;)V

    sput-object v0, Lcom/oplus/ocs/camera/CameraParameter;->MAKEUP_TYPE:Lcom/oplus/ocs/camera/CameraParameter$PreviewKey;

    .line 432
    new-instance v0, Lcom/oplus/ocs/camera/CameraParameter$PreviewKey;

    const-class v1, Ljava/lang/Integer;

    const-string v7, "com.oplus.camera.makeup.value"

    invoke-direct {v0, v7, v1, v2}, Lcom/oplus/ocs/camera/CameraParameter$PreviewKey;-><init>(Ljava/lang/String;Ljava/lang/Class;Lcom/oplus/ocs/camera/CameraParameter$1;)V

    sput-object v0, Lcom/oplus/ocs/camera/CameraParameter;->MAKEUP_VALUE:Lcom/oplus/ocs/camera/CameraParameter$PreviewKey;

    .line 438
    new-instance v0, Lcom/oplus/ocs/camera/CameraParameter$PreviewKey;

    const-class v1, Ljava/lang/Boolean;

    const-string v7, "com.oplus.camera.filter.withvignette"

    invoke-direct {v0, v7, v1, v2}, Lcom/oplus/ocs/camera/CameraParameter$PreviewKey;-><init>(Ljava/lang/String;Ljava/lang/Class;Lcom/oplus/ocs/camera/CameraParameter$1;)V

    sput-object v0, Lcom/oplus/ocs/camera/CameraParameter;->FILTER_WITHVIGNETTE:Lcom/oplus/ocs/camera/CameraParameter$PreviewKey;

    .line 444
    new-instance v0, Lcom/oplus/ocs/camera/CameraParameter$PreviewKey;

    const-class v1, Ljava/lang/String;

    const-string v7, "com.oplus.camera.face.beauty.enable"

    invoke-direct {v0, v7, v1, v2}, Lcom/oplus/ocs/camera/CameraParameter$PreviewKey;-><init>(Ljava/lang/String;Ljava/lang/Class;Lcom/oplus/ocs/camera/CameraParameter$1;)V

    sput-object v0, Lcom/oplus/ocs/camera/CameraParameter;->FACE_BEAUTY_ENABLE:Lcom/oplus/ocs/camera/CameraParameter$PreviewKey;

    .line 450
    new-instance v0, Lcom/oplus/ocs/camera/CameraParameter$PreviewKey;

    const-class v1, Ljava/lang/String;

    const-string v7, "com.oplus.camera.face.beauty.version"

    invoke-direct {v0, v7, v1, v2}, Lcom/oplus/ocs/camera/CameraParameter$PreviewKey;-><init>(Ljava/lang/String;Ljava/lang/Class;Lcom/oplus/ocs/camera/CameraParameter$1;)V

    sput-object v0, Lcom/oplus/ocs/camera/CameraParameter;->FACE_BEAUTY_VERSION:Lcom/oplus/ocs/camera/CameraParameter$PreviewKey;

    .line 456
    new-instance v0, Lcom/oplus/ocs/camera/CameraParameter$PreviewKey;

    const-class v1, Ljava/lang/String;

    const-string v7, "com.oplus.camera.star.video.enable"

    invoke-direct {v0, v7, v1, v2}, Lcom/oplus/ocs/camera/CameraParameter$PreviewKey;-><init>(Ljava/lang/String;Ljava/lang/Class;Lcom/oplus/ocs/camera/CameraParameter$1;)V

    sput-object v0, Lcom/oplus/ocs/camera/CameraParameter;->STAR_VIDEO_ENABLE:Lcom/oplus/ocs/camera/CameraParameter$PreviewKey;

    .line 462
    new-instance v0, Lcom/oplus/ocs/camera/CameraParameter$PreviewKey;

    const-class v1, Ljava/lang/Integer;

    const-string v7, "com.oplus.frame.flag"

    invoke-direct {v0, v7, v1, v2}, Lcom/oplus/ocs/camera/CameraParameter$PreviewKey;-><init>(Ljava/lang/String;Ljava/lang/Class;Lcom/oplus/ocs/camera/CameraParameter$1;)V

    sput-object v0, Lcom/oplus/ocs/camera/CameraParameter;->FRAME_FLAG:Lcom/oplus/ocs/camera/CameraParameter$PreviewKey;

    .line 468
    new-instance v0, Lcom/oplus/ocs/camera/CameraParameter$PreviewKey;

    const-class v1, Ljava/lang/Boolean;

    const-string v7, "com.oplus.capture.for.video"

    invoke-direct {v0, v7, v1, v2}, Lcom/oplus/ocs/camera/CameraParameter$PreviewKey;-><init>(Ljava/lang/String;Ljava/lang/Class;Lcom/oplus/ocs/camera/CameraParameter$1;)V

    sput-object v0, Lcom/oplus/ocs/camera/CameraParameter;->CAPTURE_FOR_VIDEO:Lcom/oplus/ocs/camera/CameraParameter$PreviewKey;

    .line 474
    new-instance v0, Lcom/oplus/ocs/camera/CameraParameter$PreviewKey;

    const-class v1, Ljava/lang/Boolean;

    const-string v7, "rear.mirror.enable"

    invoke-direct {v0, v7, v1, v2}, Lcom/oplus/ocs/camera/CameraParameter$PreviewKey;-><init>(Ljava/lang/String;Ljava/lang/Class;Lcom/oplus/ocs/camera/CameraParameter$1;)V

    sput-object v0, Lcom/oplus/ocs/camera/CameraParameter;->REAR_MIRROR_ENABLE:Lcom/oplus/ocs/camera/CameraParameter$PreviewKey;

    .line 480
    new-instance v0, Lcom/oplus/ocs/camera/CameraParameter$PreviewKey;

    const-class v1, Ljava/lang/Long;

    const-string v7, "shutter.button.click.time"

    invoke-direct {v0, v7, v1, v2}, Lcom/oplus/ocs/camera/CameraParameter$PreviewKey;-><init>(Ljava/lang/String;Ljava/lang/Class;Lcom/oplus/ocs/camera/CameraParameter$1;)V

    sput-object v0, Lcom/oplus/ocs/camera/CameraParameter;->SHUTTER_BUTTON_CLICK_TIME:Lcom/oplus/ocs/camera/CameraParameter$PreviewKey;

    .line 486
    new-instance v0, Lcom/oplus/ocs/camera/CameraParameter$PreviewKey;

    const-class v1, Ljava/lang/String;

    const-string v7, "com.oplus.camera.picture.visualization.enable"

    invoke-direct {v0, v7, v1, v2}, Lcom/oplus/ocs/camera/CameraParameter$PreviewKey;-><init>(Ljava/lang/String;Ljava/lang/Class;Lcom/oplus/ocs/camera/CameraParameter$1;)V

    sput-object v0, Lcom/oplus/ocs/camera/CameraParameter;->PICTURE_VISUALIZATION_ENABLE:Lcom/oplus/ocs/camera/CameraParameter$PreviewKey;

    .line 492
    new-instance v0, Lcom/oplus/ocs/camera/CameraParameter$PreviewKey;

    const-class v1, [I

    const-string v7, "com.oplus.camera.face.param"

    invoke-direct {v0, v7, v1, v2}, Lcom/oplus/ocs/camera/CameraParameter$PreviewKey;-><init>(Ljava/lang/String;Ljava/lang/Class;Lcom/oplus/ocs/camera/CameraParameter$1;)V

    sput-object v0, Lcom/oplus/ocs/camera/CameraParameter;->FACE_BEAUTY_PARAM:Lcom/oplus/ocs/camera/CameraParameter$PreviewKey;

    .line 498
    new-instance v0, Lcom/oplus/ocs/camera/CameraParameter$PreviewKey;

    const-class v1, Ljava/lang/String;

    const-string v7, "com.oplus.camera.face.dered.eye.enable"

    invoke-direct {v0, v7, v1, v2}, Lcom/oplus/ocs/camera/CameraParameter$PreviewKey;-><init>(Ljava/lang/String;Ljava/lang/Class;Lcom/oplus/ocs/camera/CameraParameter$1;)V

    sput-object v0, Lcom/oplus/ocs/camera/CameraParameter;->FACE_DERED_EYE:Lcom/oplus/ocs/camera/CameraParameter$PreviewKey;

    .line 504
    new-instance v0, Lcom/oplus/ocs/camera/CameraParameter$PreviewKey;

    const-class v1, Ljava/lang/String;

    const-string v7, "com.oplus.camera.burst.shot.enable"

    invoke-direct {v0, v7, v1, v2}, Lcom/oplus/ocs/camera/CameraParameter$PreviewKey;-><init>(Ljava/lang/String;Ljava/lang/Class;Lcom/oplus/ocs/camera/CameraParameter$1;)V

    sput-object v0, Lcom/oplus/ocs/camera/CameraParameter;->BURST_SHOT_ENABLE:Lcom/oplus/ocs/camera/CameraParameter$PreviewKey;

    .line 510
    new-instance v0, Lcom/oplus/ocs/camera/CameraParameter$PreviewKey;

    const-class v1, Ljava/lang/String;

    const-string v7, "com.oplus.camera.burst.shot.path"

    invoke-direct {v0, v7, v1, v2}, Lcom/oplus/ocs/camera/CameraParameter$PreviewKey;-><init>(Ljava/lang/String;Ljava/lang/Class;Lcom/oplus/ocs/camera/CameraParameter$1;)V

    sput-object v0, Lcom/oplus/ocs/camera/CameraParameter;->BURST_SHOT_PATH:Lcom/oplus/ocs/camera/CameraParameter$PreviewKey;

    .line 516
    new-instance v0, Lcom/oplus/ocs/camera/CameraParameter$PreviewKey;

    const-class v1, Ljava/lang/Long;

    const-string v7, "com.oplus.camera.burst.shot.flag.id"

    invoke-direct {v0, v7, v1, v2}, Lcom/oplus/ocs/camera/CameraParameter$PreviewKey;-><init>(Ljava/lang/String;Ljava/lang/Class;Lcom/oplus/ocs/camera/CameraParameter$1;)V

    sput-object v0, Lcom/oplus/ocs/camera/CameraParameter;->BURST_SHOT_FLAG_ID:Lcom/oplus/ocs/camera/CameraParameter$PreviewKey;

    .line 522
    new-instance v0, Lcom/oplus/ocs/camera/CameraParameter$PreviewKey;

    const-class v1, Ljava/lang/String;

    const-string v7, "com.oplus.camera.watermark.capture.enable"

    invoke-direct {v0, v7, v1, v2}, Lcom/oplus/ocs/camera/CameraParameter$PreviewKey;-><init>(Ljava/lang/String;Ljava/lang/Class;Lcom/oplus/ocs/camera/CameraParameter$1;)V

    sput-object v0, Lcom/oplus/ocs/camera/CameraParameter;->WATERMARK_CAPTURE_ENABLE:Lcom/oplus/ocs/camera/CameraParameter$PreviewKey;

    .line 528
    new-instance v0, Lcom/oplus/ocs/camera/CameraParameter$PreviewKey;

    const-class v1, Ljava/lang/Integer;

    const-string v7, "com.oplus.color.temperature.range"

    invoke-direct {v0, v7, v1, v2}, Lcom/oplus/ocs/camera/CameraParameter$PreviewKey;-><init>(Ljava/lang/String;Ljava/lang/Class;Lcom/oplus/ocs/camera/CameraParameter$1;)V

    sput-object v0, Lcom/oplus/ocs/camera/CameraParameter;->COLOR_TEMPERATURE_RANGE:Lcom/oplus/ocs/camera/CameraParameter$PreviewKey;

    .line 534
    new-instance v0, Lcom/oplus/ocs/camera/CameraParameter$PreviewKey;

    const-class v1, [I

    const-string v7, "com.oplus.color.temperature"

    invoke-direct {v0, v7, v1, v2}, Lcom/oplus/ocs/camera/CameraParameter$PreviewKey;-><init>(Ljava/lang/String;Ljava/lang/Class;Lcom/oplus/ocs/camera/CameraParameter$1;)V

    sput-object v0, Lcom/oplus/ocs/camera/CameraParameter;->COLOR_TEMPERATURE:Lcom/oplus/ocs/camera/CameraParameter$PreviewKey;

    .line 541
    new-instance v0, Lcom/oplus/ocs/camera/CameraParameter$PreviewKey;

    const-class v1, Ljava/lang/String;

    const-string v7, "com.oplus.raw.control"

    invoke-direct {v0, v7, v1, v2}, Lcom/oplus/ocs/camera/CameraParameter$PreviewKey;-><init>(Ljava/lang/String;Ljava/lang/Class;Lcom/oplus/ocs/camera/CameraParameter$1;)V

    sput-object v0, Lcom/oplus/ocs/camera/CameraParameter;->RAW_CONTROL:Lcom/oplus/ocs/camera/CameraParameter$PreviewKey;

    .line 547
    new-instance v0, Lcom/oplus/ocs/camera/CameraParameter$PreviewKey;

    const-class v1, [I

    const-string v7, "com.oplus.picture.exif.flag"

    invoke-direct {v0, v7, v1, v2}, Lcom/oplus/ocs/camera/CameraParameter$PreviewKey;-><init>(Ljava/lang/String;Ljava/lang/Class;Lcom/oplus/ocs/camera/CameraParameter$1;)V

    sput-object v0, Lcom/oplus/ocs/camera/CameraParameter;->PICTURE_EXIF_FLAG:Lcom/oplus/ocs/camera/CameraParameter$PreviewKey;

    .line 553
    new-instance v0, Lcom/oplus/ocs/camera/CameraParameter$PreviewKey;

    const-class v1, Ljava/lang/String;

    invoke-direct {v0, v3, v1, v2}, Lcom/oplus/ocs/camera/CameraParameter$PreviewKey;-><init>(Ljava/lang/String;Ljava/lang/Class;Lcom/oplus/ocs/camera/CameraParameter$1;)V

    sput-object v0, Lcom/oplus/ocs/camera/CameraParameter;->VIDEO_BLUR_ENABLE:Lcom/oplus/ocs/camera/CameraParameter$PreviewKey;

    .line 559
    new-instance v0, Lcom/oplus/ocs/camera/CameraParameter$PreviewKey;

    const-class v1, Landroid/os/Bundle;

    const-string v3, "com.oplus.video.effect.param"

    invoke-direct {v0, v3, v1, v2}, Lcom/oplus/ocs/camera/CameraParameter$PreviewKey;-><init>(Ljava/lang/String;Ljava/lang/Class;Lcom/oplus/ocs/camera/CameraParameter$1;)V

    sput-object v0, Lcom/oplus/ocs/camera/CameraParameter;->VIDEO_EFFECT_PARAM:Lcom/oplus/ocs/camera/CameraParameter$PreviewKey;

    .line 565
    new-instance v0, Lcom/oplus/ocs/camera/CameraParameter$PreviewKey;

    const-class v1, Ljava/lang/String;

    const-string v3, "com.oplus.single.blur.algoname"

    invoke-direct {v0, v3, v1, v2}, Lcom/oplus/ocs/camera/CameraParameter$PreviewKey;-><init>(Ljava/lang/String;Ljava/lang/Class;Lcom/oplus/ocs/camera/CameraParameter$1;)V

    sput-object v0, Lcom/oplus/ocs/camera/CameraParameter;->KEY_SINGLE_BLUR_ALGONAME:Lcom/oplus/ocs/camera/CameraParameter$PreviewKey;

    .line 571
    new-instance v0, Lcom/oplus/ocs/camera/CameraParameter$PreviewKey;

    const-class v1, Ljava/lang/Integer;

    const-string v3, "com.oplus.single.portrait.effect.mode"

    invoke-direct {v0, v3, v1, v2}, Lcom/oplus/ocs/camera/CameraParameter$PreviewKey;-><init>(Ljava/lang/String;Ljava/lang/Class;Lcom/oplus/ocs/camera/CameraParameter$1;)V

    sput-object v0, Lcom/oplus/ocs/camera/CameraParameter;->KEY_SINGLE_PORTRAIT_EFFECT_MODE:Lcom/oplus/ocs/camera/CameraParameter$PreviewKey;

    .line 577
    new-instance v0, Lcom/oplus/ocs/camera/CameraParameter$PreviewKey;

    const-class v1, Ljava/lang/Integer;

    const-string v3, "com.oplus.single.blur.level"

    invoke-direct {v0, v3, v1, v2}, Lcom/oplus/ocs/camera/CameraParameter$PreviewKey;-><init>(Ljava/lang/String;Ljava/lang/Class;Lcom/oplus/ocs/camera/CameraParameter$1;)V

    sput-object v0, Lcom/oplus/ocs/camera/CameraParameter;->KEY_SINGLE_BLUR_LEVEL:Lcom/oplus/ocs/camera/CameraParameter$PreviewKey;

    .line 583
    new-instance v0, Lcom/oplus/ocs/camera/CameraParameter$PreviewKey;

    const-class v1, Ljava/lang/Float;

    const-string v3, "com.oplus.single.blur.show"

    invoke-direct {v0, v3, v1, v2}, Lcom/oplus/ocs/camera/CameraParameter$PreviewKey;-><init>(Ljava/lang/String;Ljava/lang/Class;Lcom/oplus/ocs/camera/CameraParameter$1;)V

    sput-object v0, Lcom/oplus/ocs/camera/CameraParameter;->KEY_SINGLE_BLUR_SHOW:Lcom/oplus/ocs/camera/CameraParameter$PreviewKey;

    .line 589
    new-instance v0, Lcom/oplus/ocs/camera/CameraParameter$PreviewKey;

    const-class v1, Ljava/lang/Boolean;

    const-string v3, "com.oplus.face_rectify.enable"

    invoke-direct {v0, v3, v1, v2}, Lcom/oplus/ocs/camera/CameraParameter$PreviewKey;-><init>(Ljava/lang/String;Ljava/lang/Class;Lcom/oplus/ocs/camera/CameraParameter$1;)V

    sput-object v0, Lcom/oplus/ocs/camera/CameraParameter;->FACE_RECTIFY_ENABLE:Lcom/oplus/ocs/camera/CameraParameter$PreviewKey;

    .line 595
    new-instance v0, Lcom/oplus/ocs/camera/CameraParameter$PreviewKey;

    const-class v1, Ljava/lang/Boolean;

    const-string v3, "com.oplus.tilt.shift.enable"

    invoke-direct {v0, v3, v1, v2}, Lcom/oplus/ocs/camera/CameraParameter$PreviewKey;-><init>(Ljava/lang/String;Ljava/lang/Class;Lcom/oplus/ocs/camera/CameraParameter$1;)V

    sput-object v0, Lcom/oplus/ocs/camera/CameraParameter;->TILT_SHIFT_ENABLE:Lcom/oplus/ocs/camera/CameraParameter$PreviewKey;

    .line 598
    new-instance v0, Lcom/oplus/ocs/camera/CameraParameter$PreviewKey;

    const-class v1, Landroid/os/Bundle;

    const-string v3, "com.oplus.tilt.shift.param"

    invoke-direct {v0, v3, v1, v2}, Lcom/oplus/ocs/camera/CameraParameter$PreviewKey;-><init>(Ljava/lang/String;Ljava/lang/Class;Lcom/oplus/ocs/camera/CameraParameter$1;)V

    sput-object v0, Lcom/oplus/ocs/camera/CameraParameter;->TILT_SHIFT_PARAM:Lcom/oplus/ocs/camera/CameraParameter$PreviewKey;

    .line 604
    new-instance v0, Lcom/oplus/ocs/camera/CameraParameter$PreviewKey;

    const-class v1, Ljava/lang/Byte;

    invoke-direct {v0, v4, v1, v2}, Lcom/oplus/ocs/camera/CameraParameter$PreviewKey;-><init>(Ljava/lang/String;Ljava/lang/Class;Lcom/oplus/ocs/camera/CameraParameter$1;)V

    sput-object v0, Lcom/oplus/ocs/camera/CameraParameter;->MOVIE_HDR_ENABLE:Lcom/oplus/ocs/camera/CameraParameter$PreviewKey;

    .line 610
    new-instance v0, Lcom/oplus/ocs/camera/CameraParameter$PreviewKey;

    const-class v1, Ljava/lang/Byte;

    invoke-direct {v0, v5, v1, v2}, Lcom/oplus/ocs/camera/CameraParameter$PreviewKey;-><init>(Ljava/lang/String;Ljava/lang/Class;Lcom/oplus/ocs/camera/CameraParameter$1;)V

    sput-object v0, Lcom/oplus/ocs/camera/CameraParameter;->MOVIE_LOG_ENABLE:Lcom/oplus/ocs/camera/CameraParameter$PreviewKey;

    .line 617
    new-instance v0, Lcom/oplus/ocs/camera/CameraParameter$PreviewKey;

    const-class v1, Ljava/lang/String;

    const-string v3, "com.oplus.quick.video.record.enable"

    invoke-direct {v0, v3, v1, v2}, Lcom/oplus/ocs/camera/CameraParameter$PreviewKey;-><init>(Ljava/lang/String;Ljava/lang/Class;Lcom/oplus/ocs/camera/CameraParameter$1;)V

    sput-object v0, Lcom/oplus/ocs/camera/CameraParameter;->QUICK_VIDEO_RECORD_ENABLE:Lcom/oplus/ocs/camera/CameraParameter$PreviewKey;

    .line 623
    new-instance v0, Lcom/oplus/ocs/camera/CameraParameter$PreviewKey;

    const-class v1, Ljava/lang/String;

    const-string v3, "com.oplus.preview.in.preview.enable"

    invoke-direct {v0, v3, v1, v2}, Lcom/oplus/ocs/camera/CameraParameter$PreviewKey;-><init>(Ljava/lang/String;Ljava/lang/Class;Lcom/oplus/ocs/camera/CameraParameter$1;)V

    sput-object v0, Lcom/oplus/ocs/camera/CameraParameter;->PREVIEW_IN_PREVIEW_ENABLE:Lcom/oplus/ocs/camera/CameraParameter$PreviewKey;

    .line 626
    new-instance v0, Lcom/oplus/ocs/camera/CameraParameter$PreviewKey;

    const-class v1, Ljava/lang/Boolean;

    const-string v3, "com.oplus.capture.with.detach"

    invoke-direct {v0, v3, v1, v2}, Lcom/oplus/ocs/camera/CameraParameter$PreviewKey;-><init>(Ljava/lang/String;Ljava/lang/Class;Lcom/oplus/ocs/camera/CameraParameter$1;)V

    sput-object v0, Lcom/oplus/ocs/camera/CameraParameter;->CAPTURE_WITH_DETACH:Lcom/oplus/ocs/camera/CameraParameter$PreviewKey;

    .line 629
    new-instance v0, Lcom/oplus/ocs/camera/CameraParameter$PreviewKey;

    const-class v1, Ljava/lang/Boolean;

    const-string v3, "com.oplus.quick.jpeg"

    invoke-direct {v0, v3, v1, v2}, Lcom/oplus/ocs/camera/CameraParameter$PreviewKey;-><init>(Ljava/lang/String;Ljava/lang/Class;Lcom/oplus/ocs/camera/CameraParameter$1;)V

    sput-object v0, Lcom/oplus/ocs/camera/CameraParameter;->QUICK_JPEG:Lcom/oplus/ocs/camera/CameraParameter$PreviewKey;

    .line 632
    new-instance v0, Lcom/oplus/ocs/camera/CameraParameter$PreviewKey;

    const-class v1, Ljava/lang/String;

    const-string v3, "com.oplus.video.neon.enable"

    invoke-direct {v0, v3, v1, v2}, Lcom/oplus/ocs/camera/CameraParameter$PreviewKey;-><init>(Ljava/lang/String;Ljava/lang/Class;Lcom/oplus/ocs/camera/CameraParameter$1;)V

    sput-object v0, Lcom/oplus/ocs/camera/CameraParameter;->VIDEO_NEON_ENABLE:Lcom/oplus/ocs/camera/CameraParameter$PreviewKey;

    .line 635
    new-instance v0, Lcom/oplus/ocs/camera/CameraParameter$PreviewKey;

    const-class v1, Ljava/lang/Integer;

    const-string v3, "com.oplus.video.fusion.status"

    invoke-direct {v0, v3, v1, v2}, Lcom/oplus/ocs/camera/CameraParameter$PreviewKey;-><init>(Ljava/lang/String;Ljava/lang/Class;Lcom/oplus/ocs/camera/CameraParameter$1;)V

    sput-object v0, Lcom/oplus/ocs/camera/CameraParameter;->VIDEO_FUSION_EFFECT:Lcom/oplus/ocs/camera/CameraParameter$PreviewKey;

    .line 638
    new-instance v0, Lcom/oplus/ocs/camera/CameraParameter$PreviewKey;

    const-class v1, Ljava/lang/String;

    const-string v3, "com.oplus.video.neon.params"

    invoke-direct {v0, v3, v1, v2}, Lcom/oplus/ocs/camera/CameraParameter$PreviewKey;-><init>(Ljava/lang/String;Ljava/lang/Class;Lcom/oplus/ocs/camera/CameraParameter$1;)V

    sput-object v0, Lcom/oplus/ocs/camera/CameraParameter;->VIDEO_NEON_PARAMS:Lcom/oplus/ocs/camera/CameraParameter$PreviewKey;

    .line 641
    new-instance v0, Lcom/oplus/ocs/camera/CameraParameter$PreviewKey;

    const-class v1, Ljava/lang/String;

    const-string v3, "com.oplus.video.blur.params"

    invoke-direct {v0, v3, v1, v2}, Lcom/oplus/ocs/camera/CameraParameter$PreviewKey;-><init>(Ljava/lang/String;Ljava/lang/Class;Lcom/oplus/ocs/camera/CameraParameter$1;)V

    sput-object v0, Lcom/oplus/ocs/camera/CameraParameter;->VIDEO_BLUR_PARAMS:Lcom/oplus/ocs/camera/CameraParameter$PreviewKey;

    .line 647
    new-instance v0, Lcom/oplus/ocs/camera/CameraParameter$PreviewKey;

    const-class v1, Ljava/lang/String;

    const-string v3, "com.oplus.super.clear.portrait.enable"

    invoke-direct {v0, v3, v1, v2}, Lcom/oplus/ocs/camera/CameraParameter$PreviewKey;-><init>(Ljava/lang/String;Ljava/lang/Class;Lcom/oplus/ocs/camera/CameraParameter$1;)V

    sput-object v0, Lcom/oplus/ocs/camera/CameraParameter;->SUPER_CLEAR_PORTRAIT_ENABLE:Lcom/oplus/ocs/camera/CameraParameter$PreviewKey;

    .line 653
    new-instance v0, Lcom/oplus/ocs/camera/CameraParameter$PreviewKey;

    const-class v1, Ljava/lang/String;

    const-string v3, "com.oplus.ultra.high.resolution.enable"

    invoke-direct {v0, v3, v1, v2}, Lcom/oplus/ocs/camera/CameraParameter$PreviewKey;-><init>(Ljava/lang/String;Ljava/lang/Class;Lcom/oplus/ocs/camera/CameraParameter$1;)V

    sput-object v0, Lcom/oplus/ocs/camera/CameraParameter;->ULTRA_HIGH_RESOLUTION_ENABLE:Lcom/oplus/ocs/camera/CameraParameter$PreviewKey;

    .line 659
    new-instance v0, Lcom/oplus/ocs/camera/CameraParameter$PreviewKey;

    const-class v1, Ljava/lang/String;

    const-string v3, "com.oplus.portrait.neon.enable"

    invoke-direct {v0, v3, v1, v2}, Lcom/oplus/ocs/camera/CameraParameter$PreviewKey;-><init>(Ljava/lang/String;Ljava/lang/Class;Lcom/oplus/ocs/camera/CameraParameter$1;)V

    sput-object v0, Lcom/oplus/ocs/camera/CameraParameter;->PORTRAIT_NEON_ENABLE:Lcom/oplus/ocs/camera/CameraParameter$PreviewKey;

    .line 665
    new-instance v0, Lcom/oplus/ocs/camera/CameraParameter$PreviewKey;

    const-class v1, Ljava/lang/Boolean;

    const-string v3, "com.oplus.focus.peaking.enable"

    invoke-direct {v0, v3, v1, v2}, Lcom/oplus/ocs/camera/CameraParameter$PreviewKey;-><init>(Ljava/lang/String;Ljava/lang/Class;Lcom/oplus/ocs/camera/CameraParameter$1;)V

    sput-object v0, Lcom/oplus/ocs/camera/CameraParameter;->FOCUS_PEAKING_ENABLE:Lcom/oplus/ocs/camera/CameraParameter$PreviewKey;

    .line 671
    new-instance v0, Lcom/oplus/ocs/camera/CameraParameter$PreviewKey;

    const-class v1, Ljava/lang/Boolean;

    const-string v3, "com.oplus.camera.edge.filter.enable"

    invoke-direct {v0, v3, v1, v2}, Lcom/oplus/ocs/camera/CameraParameter$PreviewKey;-><init>(Ljava/lang/String;Ljava/lang/Class;Lcom/oplus/ocs/camera/CameraParameter$1;)V

    sput-object v0, Lcom/oplus/ocs/camera/CameraParameter;->KEY_EDGE_FILTER_ENABLE:Lcom/oplus/ocs/camera/CameraParameter$PreviewKey;

    .line 677
    new-instance v0, Lcom/oplus/ocs/camera/CameraParameter$PreviewKey;

    const-class v1, [Ljava/lang/String;

    const-string v3, "com.oplus.camera.edge.filter.param"

    invoke-direct {v0, v3, v1, v2}, Lcom/oplus/ocs/camera/CameraParameter$PreviewKey;-><init>(Ljava/lang/String;Ljava/lang/Class;Lcom/oplus/ocs/camera/CameraParameter$1;)V

    sput-object v0, Lcom/oplus/ocs/camera/CameraParameter;->KEY_EDGE_FILTER_PARAM:Lcom/oplus/ocs/camera/CameraParameter$PreviewKey;

    .line 683
    new-instance v0, Lcom/oplus/ocs/camera/CameraParameter$PreviewKey;

    const-class v1, Ljava/lang/Integer;

    const-string v3, "com.oplus.night.offline.r2y"

    invoke-direct {v0, v3, v1, v2}, Lcom/oplus/ocs/camera/CameraParameter$PreviewKey;-><init>(Ljava/lang/String;Ljava/lang/Class;Lcom/oplus/ocs/camera/CameraParameter$1;)V

    sput-object v0, Lcom/oplus/ocs/camera/CameraParameter;->KEY_NIGHT_OFFLINE_R2Y:Lcom/oplus/ocs/camera/CameraParameter$PreviewKey;

    .line 689
    new-instance v0, Lcom/oplus/ocs/camera/CameraParameter$PreviewKey;

    const-class v1, Ljava/lang/Boolean;

    const-string v3, "com.oplus.camera.preview.is.from.main.menu"

    invoke-direct {v0, v3, v1, v2}, Lcom/oplus/ocs/camera/CameraParameter$PreviewKey;-><init>(Ljava/lang/String;Ljava/lang/Class;Lcom/oplus/ocs/camera/CameraParameter$1;)V

    sput-object v0, Lcom/oplus/ocs/camera/CameraParameter;->IS_FROM_MAIN_MENU:Lcom/oplus/ocs/camera/CameraParameter$PreviewKey;

    .line 696
    new-instance v0, Lcom/oplus/ocs/camera/CameraParameter$PreviewKey;

    const-class v1, Ljava/lang/Integer;

    const-string v3, "com.oplus.preview.eis.record.state"

    invoke-direct {v0, v3, v1, v2}, Lcom/oplus/ocs/camera/CameraParameter$PreviewKey;-><init>(Ljava/lang/String;Ljava/lang/Class;Lcom/oplus/ocs/camera/CameraParameter$1;)V

    sput-object v0, Lcom/oplus/ocs/camera/CameraParameter;->VIDEO_EIS_RECORD_STATE:Lcom/oplus/ocs/camera/CameraParameter$PreviewKey;

    .line 702
    new-instance v0, Lcom/oplus/ocs/camera/CameraParameter$PreviewKey;

    const-class v1, Ljava/lang/Integer;

    const-string v3, "com.oplus.preview.ais.dct.support"

    invoke-direct {v0, v3, v1, v2}, Lcom/oplus/ocs/camera/CameraParameter$PreviewKey;-><init>(Ljava/lang/String;Ljava/lang/Class;Lcom/oplus/ocs/camera/CameraParameter$1;)V

    sput-object v0, Lcom/oplus/ocs/camera/CameraParameter;->PREVIEW_AIS_DCT_SUPPORT:Lcom/oplus/ocs/camera/CameraParameter$PreviewKey;

    .line 708
    new-instance v0, Lcom/oplus/ocs/camera/CameraParameter$PreviewKey;

    const-class v1, Ljava/lang/Integer;

    const-string v3, "com.oplus.preview.ais.dct.ainr.support"

    invoke-direct {v0, v3, v1, v2}, Lcom/oplus/ocs/camera/CameraParameter$PreviewKey;-><init>(Ljava/lang/String;Ljava/lang/Class;Lcom/oplus/ocs/camera/CameraParameter$1;)V

    sput-object v0, Lcom/oplus/ocs/camera/CameraParameter;->PREVIEW_AIS_DCT_AINR_SUPPORT:Lcom/oplus/ocs/camera/CameraParameter$PreviewKey;

    .line 714
    new-instance v0, Lcom/oplus/ocs/camera/CameraParameter$PreviewKey;

    const-class v1, Ljava/lang/Integer;

    const-string v3, "com.oplus.preview.ais.bracket"

    invoke-direct {v0, v3, v1, v2}, Lcom/oplus/ocs/camera/CameraParameter$PreviewKey;-><init>(Ljava/lang/String;Ljava/lang/Class;Lcom/oplus/ocs/camera/CameraParameter$1;)V

    sput-object v0, Lcom/oplus/ocs/camera/CameraParameter;->PREVIEW_AIS_BRACKET:Lcom/oplus/ocs/camera/CameraParameter$PreviewKey;

    .line 720
    new-instance v0, Lcom/oplus/ocs/camera/CameraParameter$PreviewKey;

    const-class v1, [I

    const-string v3, "com.oplus.BracketMode"

    invoke-direct {v0, v3, v1, v2}, Lcom/oplus/ocs/camera/CameraParameter$PreviewKey;-><init>(Ljava/lang/String;Ljava/lang/Class;Lcom/oplus/ocs/camera/CameraParameter$1;)V

    sput-object v0, Lcom/oplus/ocs/camera/CameraParameter;->PREVIEW_BRACKET_MODE:Lcom/oplus/ocs/camera/CameraParameter$PreviewKey;

    .line 730
    new-instance v0, Lcom/oplus/ocs/camera/CameraParameter$CaptureResultKey;

    const-class v1, Ljava/lang/Boolean;

    const/4 v3, 0x0

    .line 731
    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const-string v5, "com.oplus.super.text.has_result"

    invoke-direct {v0, v5, v1, v4, v2}, Lcom/oplus/ocs/camera/CameraParameter$CaptureResultKey;-><init>(Ljava/lang/String;Ljava/lang/Class;Ljava/lang/Object;Lcom/oplus/ocs/camera/CameraParameter$1;)V

    sput-object v0, Lcom/oplus/ocs/camera/CameraParameter;->HAS_SUPER_TEXT_RESULT:Lcom/oplus/ocs/camera/CameraParameter$CaptureResultKey;

    .line 736
    new-instance v0, Lcom/oplus/ocs/camera/CameraParameter$CaptureResultKey;

    const-class v1, Ljava/lang/Integer;

    const-string v5, "com.oplus.super.text.width"

    .line 737
    invoke-direct {v0, v5, v1, v3, v2}, Lcom/oplus/ocs/camera/CameraParameter$CaptureResultKey;-><init>(Ljava/lang/String;Ljava/lang/Class;Ljava/lang/Object;Lcom/oplus/ocs/camera/CameraParameter$1;)V

    sput-object v0, Lcom/oplus/ocs/camera/CameraParameter;->SUPER_TEXT_WIDTH:Lcom/oplus/ocs/camera/CameraParameter$CaptureResultKey;

    .line 742
    new-instance v0, Lcom/oplus/ocs/camera/CameraParameter$CaptureResultKey;

    const-class v1, Ljava/lang/Integer;

    const-string v5, "com.oplus.super.text.height"

    .line 743
    invoke-direct {v0, v5, v1, v3, v2}, Lcom/oplus/ocs/camera/CameraParameter$CaptureResultKey;-><init>(Ljava/lang/String;Ljava/lang/Class;Ljava/lang/Object;Lcom/oplus/ocs/camera/CameraParameter$1;)V

    sput-object v0, Lcom/oplus/ocs/camera/CameraParameter;->SUPER_TEXT_HEIGHT:Lcom/oplus/ocs/camera/CameraParameter$CaptureResultKey;

    .line 748
    new-instance v0, Lcom/oplus/ocs/camera/CameraParameter$CaptureResultKey;

    const-class v1, Ljava/lang/Object;

    invoke-direct {v0, v6, v1, v2, v2}, Lcom/oplus/ocs/camera/CameraParameter$CaptureResultKey;-><init>(Ljava/lang/String;Ljava/lang/Class;Ljava/lang/Object;Lcom/oplus/ocs/camera/CameraParameter$1;)V

    sput-object v0, Lcom/oplus/ocs/camera/CameraParameter;->RESULT_REQUEST_TAG:Lcom/oplus/ocs/camera/CameraParameter$CaptureResultKey;

    .line 754
    new-instance v0, Lcom/oplus/ocs/camera/CameraParameter$CaptureResultKey;

    const-class v1, Ljava/lang/Integer;

    const-string v5, "com.oplus.capture.fail.code"

    .line 755
    invoke-direct {v0, v5, v1, v3, v2}, Lcom/oplus/ocs/camera/CameraParameter$CaptureResultKey;-><init>(Ljava/lang/String;Ljava/lang/Class;Ljava/lang/Object;Lcom/oplus/ocs/camera/CameraParameter$1;)V

    sput-object v0, Lcom/oplus/ocs/camera/CameraParameter;->CAPTURE_FAIL_CODE:Lcom/oplus/ocs/camera/CameraParameter$CaptureResultKey;

    .line 760
    new-instance v0, Lcom/oplus/ocs/camera/CameraParameter$CaptureResultKey;

    const-class v1, Ljava/lang/Long;

    const-wide/16 v5, 0x0

    .line 761
    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    const-string v6, "com.oplus.picture.identity"

    invoke-direct {v0, v6, v1, v5, v2}, Lcom/oplus/ocs/camera/CameraParameter$CaptureResultKey;-><init>(Ljava/lang/String;Ljava/lang/Class;Ljava/lang/Object;Lcom/oplus/ocs/camera/CameraParameter$1;)V

    sput-object v0, Lcom/oplus/ocs/camera/CameraParameter;->PICTURE_IDENTITY:Lcom/oplus/ocs/camera/CameraParameter$CaptureResultKey;

    .line 766
    new-instance v0, Lcom/oplus/ocs/camera/CameraParameter$CaptureResultKey;

    const-class v1, Ljava/lang/Integer;

    const-string v7, "com.oplus.image.category.height"

    .line 767
    invoke-direct {v0, v7, v1, v3, v2}, Lcom/oplus/ocs/camera/CameraParameter$CaptureResultKey;-><init>(Ljava/lang/String;Ljava/lang/Class;Ljava/lang/Object;Lcom/oplus/ocs/camera/CameraParameter$1;)V

    sput-object v0, Lcom/oplus/ocs/camera/CameraParameter;->IMAGE_CATEGORY_HEIGHT:Lcom/oplus/ocs/camera/CameraParameter$CaptureResultKey;

    .line 772
    new-instance v0, Lcom/oplus/ocs/camera/CameraParameter$CaptureResultKey;

    const-class v1, Ljava/lang/Integer;

    const-string v7, "com.oplus.image.category.width"

    .line 773
    invoke-direct {v0, v7, v1, v3, v2}, Lcom/oplus/ocs/camera/CameraParameter$CaptureResultKey;-><init>(Ljava/lang/String;Ljava/lang/Class;Ljava/lang/Object;Lcom/oplus/ocs/camera/CameraParameter$1;)V

    sput-object v0, Lcom/oplus/ocs/camera/CameraParameter;->IMAGE_CATEGORY_WIDTH:Lcom/oplus/ocs/camera/CameraParameter$CaptureResultKey;

    .line 778
    new-instance v0, Lcom/oplus/ocs/camera/CameraParameter$CaptureResultKey;

    const-class v1, Ljava/lang/Boolean;

    const-string v7, "com.oplus.image.category.burst_shot"

    .line 779
    invoke-direct {v0, v7, v1, v4, v2}, Lcom/oplus/ocs/camera/CameraParameter$CaptureResultKey;-><init>(Ljava/lang/String;Ljava/lang/Class;Ljava/lang/Object;Lcom/oplus/ocs/camera/CameraParameter$1;)V

    sput-object v0, Lcom/oplus/ocs/camera/CameraParameter;->IMAGE_CATEGORY_BURST_SHOT:Lcom/oplus/ocs/camera/CameraParameter$CaptureResultKey;

    .line 784
    new-instance v0, Lcom/oplus/ocs/camera/CameraParameter$CaptureResultKey;

    const-class v1, Ljava/lang/Integer;

    const-string v7, "com.oplus.image.category.burst_count"

    .line 785
    invoke-direct {v0, v7, v1, v3, v2}, Lcom/oplus/ocs/camera/CameraParameter$CaptureResultKey;-><init>(Ljava/lang/String;Ljava/lang/Class;Ljava/lang/Object;Lcom/oplus/ocs/camera/CameraParameter$1;)V

    sput-object v0, Lcom/oplus/ocs/camera/CameraParameter;->IMAGE_CATEGORY_BURST_COUNT:Lcom/oplus/ocs/camera/CameraParameter$CaptureResultKey;

    .line 790
    new-instance v0, Lcom/oplus/ocs/camera/CameraParameter$CaptureResultKey;

    const-class v1, Ljava/lang/Long;

    const-wide/16 v7, -0x1

    .line 791
    invoke-static {v7, v8}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v7

    const-string v8, "com.oplus.image.category.burst_shot_flag_id"

    invoke-direct {v0, v8, v1, v7, v2}, Lcom/oplus/ocs/camera/CameraParameter$CaptureResultKey;-><init>(Ljava/lang/String;Ljava/lang/Class;Ljava/lang/Object;Lcom/oplus/ocs/camera/CameraParameter$1;)V

    sput-object v0, Lcom/oplus/ocs/camera/CameraParameter;->IMAGE_CATEGORY_BURST_SHOT_FLAG_ID:Lcom/oplus/ocs/camera/CameraParameter$CaptureResultKey;

    .line 796
    new-instance v0, Lcom/oplus/ocs/camera/CameraParameter$CaptureResultKey;

    const-class v1, Ljava/lang/String;

    const-string v8, "com.oplus.image.category.cshot_path"

    invoke-direct {v0, v8, v1, v2, v2}, Lcom/oplus/ocs/camera/CameraParameter$CaptureResultKey;-><init>(Ljava/lang/String;Ljava/lang/Class;Ljava/lang/Object;Lcom/oplus/ocs/camera/CameraParameter$1;)V

    sput-object v0, Lcom/oplus/ocs/camera/CameraParameter;->IMAGE_CATEGORY_CSHOT_PATH:Lcom/oplus/ocs/camera/CameraParameter$CaptureResultKey;

    .line 802
    new-instance v0, Lcom/oplus/ocs/camera/CameraParameter$CaptureResultKey;

    const-class v1, Ljava/lang/Integer;

    const/4 v8, -0x1

    .line 803
    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    const-string v9, "com.oplus.image.category.rec_burst_number"

    invoke-direct {v0, v9, v1, v8, v2}, Lcom/oplus/ocs/camera/CameraParameter$CaptureResultKey;-><init>(Ljava/lang/String;Ljava/lang/Class;Ljava/lang/Object;Lcom/oplus/ocs/camera/CameraParameter$1;)V

    sput-object v0, Lcom/oplus/ocs/camera/CameraParameter;->IMAGE_CATEGORY_REC_BURST_NUMBER:Lcom/oplus/ocs/camera/CameraParameter$CaptureResultKey;

    .line 808
    new-instance v0, Lcom/oplus/ocs/camera/CameraParameter$CaptureResultKey;

    const-class v1, Ljava/lang/Long;

    const-string v9, "com.oplus.image.category.date"

    .line 809
    invoke-direct {v0, v9, v1, v5, v2}, Lcom/oplus/ocs/camera/CameraParameter$CaptureResultKey;-><init>(Ljava/lang/String;Ljava/lang/Class;Ljava/lang/Object;Lcom/oplus/ocs/camera/CameraParameter$1;)V

    sput-object v0, Lcom/oplus/ocs/camera/CameraParameter;->IMAGE_CATEGORY_DATE:Lcom/oplus/ocs/camera/CameraParameter$CaptureResultKey;

    .line 814
    new-instance v0, Lcom/oplus/ocs/camera/CameraParameter$CaptureResultKey;

    const-class v1, Ljava/lang/Integer;

    const-string v9, "com.oplus.image.category.image_format"

    .line 815
    invoke-direct {v0, v9, v1, v3, v2}, Lcom/oplus/ocs/camera/CameraParameter$CaptureResultKey;-><init>(Ljava/lang/String;Ljava/lang/Class;Ljava/lang/Object;Lcom/oplus/ocs/camera/CameraParameter$1;)V

    sput-object v0, Lcom/oplus/ocs/camera/CameraParameter;->IMAGE_CATEGORY_FORMAT:Lcom/oplus/ocs/camera/CameraParameter$CaptureResultKey;

    .line 820
    new-instance v0, Lcom/oplus/ocs/camera/CameraParameter$CaptureResultKey;

    const-class v1, Ljava/lang/Long;

    const-string v9, "com.oplus.image.category.image_time_stamp"

    .line 821
    invoke-direct {v0, v9, v1, v5, v2}, Lcom/oplus/ocs/camera/CameraParameter$CaptureResultKey;-><init>(Ljava/lang/String;Ljava/lang/Class;Ljava/lang/Object;Lcom/oplus/ocs/camera/CameraParameter$1;)V

    sput-object v0, Lcom/oplus/ocs/camera/CameraParameter;->IMAGE_CATEGORY_IMAGE_TIME_STAMP:Lcom/oplus/ocs/camera/CameraParameter$CaptureResultKey;

    .line 826
    new-instance v0, Lcom/oplus/ocs/camera/CameraParameter$CaptureResultKey;

    const-class v1, Ljava/lang/String;

    const-string v9, "com.oplus.image.category.watermark_path"

    invoke-direct {v0, v9, v1, v2, v2}, Lcom/oplus/ocs/camera/CameraParameter$CaptureResultKey;-><init>(Ljava/lang/String;Ljava/lang/Class;Ljava/lang/Object;Lcom/oplus/ocs/camera/CameraParameter$1;)V

    sput-object v0, Lcom/oplus/ocs/camera/CameraParameter;->IMAGE_CATEGORY_WATERMARK_PATH:Lcom/oplus/ocs/camera/CameraParameter$CaptureResultKey;

    .line 832
    new-instance v0, Lcom/oplus/ocs/camera/CameraParameter$CaptureResultKey;

    const-class v1, Ljava/lang/Long;

    const-string v9, "com.oplus.image.category.mergeIdentity"

    .line 833
    invoke-direct {v0, v9, v1, v7, v2}, Lcom/oplus/ocs/camera/CameraParameter$CaptureResultKey;-><init>(Ljava/lang/String;Ljava/lang/Class;Ljava/lang/Object;Lcom/oplus/ocs/camera/CameraParameter$1;)V

    sput-object v0, Lcom/oplus/ocs/camera/CameraParameter;->IMAGE_CATEGORY_MERGE_IDENTITY:Lcom/oplus/ocs/camera/CameraParameter$CaptureResultKey;

    .line 838
    new-instance v0, Lcom/oplus/ocs/camera/CameraParameter$CaptureResultKey;

    const-class v1, Ljava/lang/Boolean;

    const-string v7, "com.oplus.result.capture.for.video"

    .line 839
    invoke-direct {v0, v7, v1, v4, v2}, Lcom/oplus/ocs/camera/CameraParameter$CaptureResultKey;-><init>(Ljava/lang/String;Ljava/lang/Class;Ljava/lang/Object;Lcom/oplus/ocs/camera/CameraParameter$1;)V

    sput-object v0, Lcom/oplus/ocs/camera/CameraParameter;->RESULT_CAPTURE_FOR_VIDEO:Lcom/oplus/ocs/camera/CameraParameter$CaptureResultKey;

    .line 844
    new-instance v0, Lcom/oplus/ocs/camera/CameraParameter$CaptureResultKey;

    const-class v1, Ljava/lang/Long;

    const-string v7, "com.oplus.image.category.meta_time_stamp"

    .line 845
    invoke-direct {v0, v7, v1, v5, v2}, Lcom/oplus/ocs/camera/CameraParameter$CaptureResultKey;-><init>(Ljava/lang/String;Ljava/lang/Class;Ljava/lang/Object;Lcom/oplus/ocs/camera/CameraParameter$1;)V

    sput-object v0, Lcom/oplus/ocs/camera/CameraParameter;->IMAGE_CATEGORY_META_TIME_STAMP:Lcom/oplus/ocs/camera/CameraParameter$CaptureResultKey;

    .line 850
    new-instance v0, Lcom/oplus/ocs/camera/CameraParameter$CaptureResultKey;

    const-class v1, Ljava/lang/String;

    const-string v7, "com.oplus.image.category.super_text_enable"

    const-string v9, "0"

    invoke-direct {v0, v7, v1, v9, v2}, Lcom/oplus/ocs/camera/CameraParameter$CaptureResultKey;-><init>(Ljava/lang/String;Ljava/lang/Class;Ljava/lang/Object;Lcom/oplus/ocs/camera/CameraParameter$1;)V

    sput-object v0, Lcom/oplus/ocs/camera/CameraParameter;->IMAGE_CATEGORY_SUPER_TEXT_ENABLE:Lcom/oplus/ocs/camera/CameraParameter$CaptureResultKey;

    .line 856
    new-instance v0, Lcom/oplus/ocs/camera/CameraParameter$CaptureResultKey;

    const-class v1, [I

    const-string v7, "com.oplus.image.category.custom_beauty_param"

    invoke-direct {v0, v7, v1, v2, v2}, Lcom/oplus/ocs/camera/CameraParameter$CaptureResultKey;-><init>(Ljava/lang/String;Ljava/lang/Class;Ljava/lang/Object;Lcom/oplus/ocs/camera/CameraParameter$1;)V

    sput-object v0, Lcom/oplus/ocs/camera/CameraParameter;->IMAGE_CATEGORY_CUSTOM_BEAUTY_PARAM:Lcom/oplus/ocs/camera/CameraParameter$CaptureResultKey;

    .line 862
    new-instance v0, Lcom/oplus/ocs/camera/CameraParameter$CaptureResultKey;

    const-class v1, Ljava/lang/Boolean;

    const-string v7, "com.oplus.image.category.is_valid"

    .line 863
    invoke-direct {v0, v7, v1, v4, v2}, Lcom/oplus/ocs/camera/CameraParameter$CaptureResultKey;-><init>(Ljava/lang/String;Ljava/lang/Class;Ljava/lang/Object;Lcom/oplus/ocs/camera/CameraParameter$1;)V

    sput-object v0, Lcom/oplus/ocs/camera/CameraParameter;->IMAGE_CATEGORY_IS_VALID:Lcom/oplus/ocs/camera/CameraParameter$CaptureResultKey;

    .line 865
    new-instance v0, Lcom/oplus/ocs/camera/CameraParameter$CaptureResultKey;

    const-class v1, Ljava/lang/Boolean;

    const-string v7, "com.oplus.image.category.end_of_capture"

    .line 866
    invoke-direct {v0, v7, v1, v4, v2}, Lcom/oplus/ocs/camera/CameraParameter$CaptureResultKey;-><init>(Ljava/lang/String;Ljava/lang/Class;Ljava/lang/Object;Lcom/oplus/ocs/camera/CameraParameter$1;)V

    sput-object v0, Lcom/oplus/ocs/camera/CameraParameter;->IMAGE_CATEGORY_END_OF_CAPTURE:Lcom/oplus/ocs/camera/CameraParameter$CaptureResultKey;

    .line 871
    new-instance v0, Lcom/oplus/ocs/camera/CameraParameter$CaptureResultKey;

    const-class v1, Ljava/lang/Boolean;

    const-string v7, "com.oplus.result.heif_process_in_aps"

    .line 872
    invoke-direct {v0, v7, v1, v4, v2}, Lcom/oplus/ocs/camera/CameraParameter$CaptureResultKey;-><init>(Ljava/lang/String;Ljava/lang/Class;Ljava/lang/Object;Lcom/oplus/ocs/camera/CameraParameter$1;)V

    sput-object v0, Lcom/oplus/ocs/camera/CameraParameter;->HEIF_PROCESS_IN_APS:Lcom/oplus/ocs/camera/CameraParameter$CaptureResultKey;

    .line 877
    new-instance v0, Lcom/oplus/ocs/camera/CameraParameter$CaptureResultKey;

    const-class v1, Ljava/lang/Integer;

    const-string v7, "com.oplus.result.noise_reduction_strength"

    .line 878
    invoke-direct {v0, v7, v1, v3, v2}, Lcom/oplus/ocs/camera/CameraParameter$CaptureResultKey;-><init>(Ljava/lang/String;Ljava/lang/Class;Ljava/lang/Object;Lcom/oplus/ocs/camera/CameraParameter$1;)V

    sput-object v0, Lcom/oplus/ocs/camera/CameraParameter;->NOISE_REDUCTION_STRENGTH:Lcom/oplus/ocs/camera/CameraParameter$CaptureResultKey;

    .line 883
    new-instance v0, Lcom/oplus/ocs/camera/CameraParameter$CaptureResultKey;

    const-class v1, Ljava/util/HashMap;

    new-instance v7, Ljava/util/HashMap;

    invoke-direct {v7}, Ljava/util/HashMap;-><init>()V

    const-string v9, "com.oplus.result.aps_proc_timer"

    invoke-direct {v0, v9, v1, v7, v2}, Lcom/oplus/ocs/camera/CameraParameter$CaptureResultKey;-><init>(Ljava/lang/String;Ljava/lang/Class;Ljava/lang/Object;Lcom/oplus/ocs/camera/CameraParameter$1;)V

    sput-object v0, Lcom/oplus/ocs/camera/CameraParameter;->APS_PROC_TIMER:Lcom/oplus/ocs/camera/CameraParameter$CaptureResultKey;

    .line 889
    new-instance v0, Lcom/oplus/ocs/camera/CameraParameter$CaptureResultKey;

    const-class v1, Ljava/lang/Long;

    const-string v7, "com.oplus.result.mesh_ptr"

    .line 890
    invoke-direct {v0, v7, v1, v5, v2}, Lcom/oplus/ocs/camera/CameraParameter$CaptureResultKey;-><init>(Ljava/lang/String;Ljava/lang/Class;Ljava/lang/Object;Lcom/oplus/ocs/camera/CameraParameter$1;)V

    sput-object v0, Lcom/oplus/ocs/camera/CameraParameter;->MESH_PTR:Lcom/oplus/ocs/camera/CameraParameter$CaptureResultKey;

    .line 892
    new-instance v0, Lcom/oplus/ocs/camera/CameraParameter$CaptureResultKey;

    const-class v1, Ljava/lang/String;

    const-string v7, "com.oplus.exif.sensor_name"

    invoke-direct {v0, v7, v1, v2, v2}, Lcom/oplus/ocs/camera/CameraParameter$CaptureResultKey;-><init>(Ljava/lang/String;Ljava/lang/Class;Ljava/lang/Object;Lcom/oplus/ocs/camera/CameraParameter$1;)V

    sput-object v0, Lcom/oplus/ocs/camera/CameraParameter;->EXIF_SENSOR_NAME:Lcom/oplus/ocs/camera/CameraParameter$CaptureResultKey;

    .line 894
    new-instance v0, Lcom/oplus/ocs/camera/CameraParameter$CaptureResultKey;

    const-class v1, Ljava/lang/Integer;

    const-string v7, "com.oplus.exif.rotate"

    invoke-direct {v0, v7, v1, v2, v2}, Lcom/oplus/ocs/camera/CameraParameter$CaptureResultKey;-><init>(Ljava/lang/String;Ljava/lang/Class;Ljava/lang/Object;Lcom/oplus/ocs/camera/CameraParameter$1;)V

    sput-object v0, Lcom/oplus/ocs/camera/CameraParameter;->EXIF_ROTATE:Lcom/oplus/ocs/camera/CameraParameter$CaptureResultKey;

    .line 896
    new-instance v0, Lcom/oplus/ocs/camera/CameraParameter$CaptureResultKey;

    const-class v1, Ljava/lang/Long;

    const-string v7, "com.oplus.exif.iso"

    invoke-direct {v0, v7, v1, v2, v2}, Lcom/oplus/ocs/camera/CameraParameter$CaptureResultKey;-><init>(Ljava/lang/String;Ljava/lang/Class;Ljava/lang/Object;Lcom/oplus/ocs/camera/CameraParameter$1;)V

    sput-object v0, Lcom/oplus/ocs/camera/CameraParameter;->EXIF_ISO:Lcom/oplus/ocs/camera/CameraParameter$CaptureResultKey;

    .line 898
    new-instance v0, Lcom/oplus/ocs/camera/CameraParameter$CaptureResultKey;

    const-class v1, Ljava/lang/Integer;

    const-string v7, "com.oplus.exif.white_balance_mode"

    invoke-direct {v0, v7, v1, v2, v2}, Lcom/oplus/ocs/camera/CameraParameter$CaptureResultKey;-><init>(Ljava/lang/String;Ljava/lang/Class;Ljava/lang/Object;Lcom/oplus/ocs/camera/CameraParameter$1;)V

    sput-object v0, Lcom/oplus/ocs/camera/CameraParameter;->EXIF_WHITE_BALANCE_MODE:Lcom/oplus/ocs/camera/CameraParameter$CaptureResultKey;

    .line 900
    new-instance v0, Lcom/oplus/ocs/camera/CameraParameter$CaptureResultKey;

    const-class v1, Ljava/lang/Integer;

    const-string v7, "com.oplus.exif.flash_value"

    invoke-direct {v0, v7, v1, v2, v2}, Lcom/oplus/ocs/camera/CameraParameter$CaptureResultKey;-><init>(Ljava/lang/String;Ljava/lang/Class;Ljava/lang/Object;Lcom/oplus/ocs/camera/CameraParameter$1;)V

    sput-object v0, Lcom/oplus/ocs/camera/CameraParameter;->EXIF_FLASH_VALUE:Lcom/oplus/ocs/camera/CameraParameter$CaptureResultKey;

    .line 902
    new-instance v0, Lcom/oplus/ocs/camera/CameraParameter$CaptureResultKey;

    const-class v1, Ljava/lang/String;

    const-string v7, "com.oplus.exif.latitude_ref"

    invoke-direct {v0, v7, v1, v2, v2}, Lcom/oplus/ocs/camera/CameraParameter$CaptureResultKey;-><init>(Ljava/lang/String;Ljava/lang/Class;Ljava/lang/Object;Lcom/oplus/ocs/camera/CameraParameter$1;)V

    sput-object v0, Lcom/oplus/ocs/camera/CameraParameter;->EXIF_LATITUDE_REF:Lcom/oplus/ocs/camera/CameraParameter$CaptureResultKey;

    .line 904
    new-instance v0, Lcom/oplus/ocs/camera/CameraParameter$CaptureResultKey;

    const-class v1, Ljava/lang/String;

    const-string v7, "com.oplus.exif.longitude_ref"

    invoke-direct {v0, v7, v1, v2, v2}, Lcom/oplus/ocs/camera/CameraParameter$CaptureResultKey;-><init>(Ljava/lang/String;Ljava/lang/Class;Ljava/lang/Object;Lcom/oplus/ocs/camera/CameraParameter$1;)V

    sput-object v0, Lcom/oplus/ocs/camera/CameraParameter;->EXIF_LONGITUDE_REF:Lcom/oplus/ocs/camera/CameraParameter$CaptureResultKey;

    .line 906
    new-instance v0, Lcom/oplus/ocs/camera/CameraParameter$CaptureResultKey;

    const-class v1, Ljava/lang/Integer;

    const-string v7, "com.oplus.exif.altitude_ref"

    invoke-direct {v0, v7, v1, v2, v2}, Lcom/oplus/ocs/camera/CameraParameter$CaptureResultKey;-><init>(Ljava/lang/String;Ljava/lang/Class;Ljava/lang/Object;Lcom/oplus/ocs/camera/CameraParameter$1;)V

    sput-object v0, Lcom/oplus/ocs/camera/CameraParameter;->EXIF_ALTITUDE_REF:Lcom/oplus/ocs/camera/CameraParameter$CaptureResultKey;

    .line 908
    new-instance v0, Lcom/oplus/ocs/camera/CameraParameter$CaptureResultKey;

    const-class v1, Ljava/lang/String;

    const-string v7, "com.oplus.exif.gps_date_stamp"

    invoke-direct {v0, v7, v1, v2, v2}, Lcom/oplus/ocs/camera/CameraParameter$CaptureResultKey;-><init>(Ljava/lang/String;Ljava/lang/Class;Ljava/lang/Object;Lcom/oplus/ocs/camera/CameraParameter$1;)V

    sput-object v0, Lcom/oplus/ocs/camera/CameraParameter;->EXIF_GPS_DATE_STAMP:Lcom/oplus/ocs/camera/CameraParameter$CaptureResultKey;

    .line 910
    new-instance v0, Lcom/oplus/ocs/camera/CameraParameter$CaptureResultKey;

    const-class v1, Ljava/lang/String;

    const-string v7, "com.oplus.exif.date_time"

    invoke-direct {v0, v7, v1, v2, v2}, Lcom/oplus/ocs/camera/CameraParameter$CaptureResultKey;-><init>(Ljava/lang/String;Ljava/lang/Class;Ljava/lang/Object;Lcom/oplus/ocs/camera/CameraParameter$1;)V

    sput-object v0, Lcom/oplus/ocs/camera/CameraParameter;->EXIF_DATE_TIME:Lcom/oplus/ocs/camera/CameraParameter$CaptureResultKey;

    .line 912
    new-instance v0, Lcom/oplus/ocs/camera/CameraParameter$CaptureResultKey;

    const-class v1, Ljava/lang/String;

    const-string v7, "com.oplus.exif.sub_date_time"

    invoke-direct {v0, v7, v1, v2, v2}, Lcom/oplus/ocs/camera/CameraParameter$CaptureResultKey;-><init>(Ljava/lang/String;Ljava/lang/Class;Ljava/lang/Object;Lcom/oplus/ocs/camera/CameraParameter$1;)V

    sput-object v0, Lcom/oplus/ocs/camera/CameraParameter;->EXIF_SUB_DATE_TIME:Lcom/oplus/ocs/camera/CameraParameter$CaptureResultKey;

    .line 914
    new-instance v0, Lcom/oplus/ocs/camera/CameraParameter$CaptureResultKey;

    const-class v1, Ljava/lang/String;

    const-string v7, "com.oplus.exif.model"

    invoke-direct {v0, v7, v1, v2, v2}, Lcom/oplus/ocs/camera/CameraParameter$CaptureResultKey;-><init>(Ljava/lang/String;Ljava/lang/Class;Ljava/lang/Object;Lcom/oplus/ocs/camera/CameraParameter$1;)V

    sput-object v0, Lcom/oplus/ocs/camera/CameraParameter;->EXIF_MODEL:Lcom/oplus/ocs/camera/CameraParameter$CaptureResultKey;

    .line 916
    new-instance v0, Lcom/oplus/ocs/camera/CameraParameter$CaptureResultKey;

    const-class v1, Ljava/lang/String;

    const-string v7, "com.oplus.exif.manufacture"

    invoke-direct {v0, v7, v1, v2, v2}, Lcom/oplus/ocs/camera/CameraParameter$CaptureResultKey;-><init>(Ljava/lang/String;Ljava/lang/Class;Ljava/lang/Object;Lcom/oplus/ocs/camera/CameraParameter$1;)V

    sput-object v0, Lcom/oplus/ocs/camera/CameraParameter;->EXIF_MANUFACTURE:Lcom/oplus/ocs/camera/CameraParameter$CaptureResultKey;

    .line 918
    new-instance v0, Lcom/oplus/ocs/camera/CameraParameter$CaptureResultKey;

    const-class v1, Ljava/lang/String;

    const-string v7, "com.oplus.exif.comments"

    invoke-direct {v0, v7, v1, v2, v2}, Lcom/oplus/ocs/camera/CameraParameter$CaptureResultKey;-><init>(Ljava/lang/String;Ljava/lang/Class;Ljava/lang/Object;Lcom/oplus/ocs/camera/CameraParameter$1;)V

    sput-object v0, Lcom/oplus/ocs/camera/CameraParameter;->EXIF_COMMENTS:Lcom/oplus/ocs/camera/CameraParameter$CaptureResultKey;

    .line 920
    new-instance v0, Lcom/oplus/ocs/camera/CameraParameter$CaptureResultKey;

    const-class v1, Ljava/lang/Boolean;

    const-string v7, "com.oplus.exif.mirror"

    invoke-direct {v0, v7, v1, v2, v2}, Lcom/oplus/ocs/camera/CameraParameter$CaptureResultKey;-><init>(Ljava/lang/String;Ljava/lang/Class;Ljava/lang/Object;Lcom/oplus/ocs/camera/CameraParameter$1;)V

    sput-object v0, Lcom/oplus/ocs/camera/CameraParameter;->EXIF_MIRROR:Lcom/oplus/ocs/camera/CameraParameter$CaptureResultKey;

    .line 923
    new-instance v0, Lcom/oplus/ocs/camera/CameraParameter$CaptureResultKey;

    const-class v1, Ljava/lang/Object;

    const-string v7, "com.oplus.exif.number"

    invoke-direct {v0, v7, v1, v2, v2}, Lcom/oplus/ocs/camera/CameraParameter$CaptureResultKey;-><init>(Ljava/lang/String;Ljava/lang/Class;Ljava/lang/Object;Lcom/oplus/ocs/camera/CameraParameter$1;)V

    sput-object v0, Lcom/oplus/ocs/camera/CameraParameter;->EXIF_NUMBER:Lcom/oplus/ocs/camera/CameraParameter$CaptureResultKey;

    .line 925
    new-instance v0, Lcom/oplus/ocs/camera/CameraParameter$CaptureResultKey;

    const-class v1, Ljava/lang/Object;

    const-string v7, "com.oplus.exif.exp_time"

    invoke-direct {v0, v7, v1, v2, v2}, Lcom/oplus/ocs/camera/CameraParameter$CaptureResultKey;-><init>(Ljava/lang/String;Ljava/lang/Class;Ljava/lang/Object;Lcom/oplus/ocs/camera/CameraParameter$1;)V

    sput-object v0, Lcom/oplus/ocs/camera/CameraParameter;->EXIF_EXP_TIME:Lcom/oplus/ocs/camera/CameraParameter$CaptureResultKey;

    .line 927
    new-instance v0, Lcom/oplus/ocs/camera/CameraParameter$CaptureResultKey;

    const-class v1, Ljava/lang/Object;

    const-string v7, "com.oplus.exif.aperture"

    invoke-direct {v0, v7, v1, v2, v2}, Lcom/oplus/ocs/camera/CameraParameter$CaptureResultKey;-><init>(Ljava/lang/String;Ljava/lang/Class;Ljava/lang/Object;Lcom/oplus/ocs/camera/CameraParameter$1;)V

    sput-object v0, Lcom/oplus/ocs/camera/CameraParameter;->EXIF_APERTURE:Lcom/oplus/ocs/camera/CameraParameter$CaptureResultKey;

    .line 929
    new-instance v0, Lcom/oplus/ocs/camera/CameraParameter$CaptureResultKey;

    const-class v1, Ljava/lang/Object;

    const-string v7, "com.oplus.exif.exposure_bias"

    invoke-direct {v0, v7, v1, v2, v2}, Lcom/oplus/ocs/camera/CameraParameter$CaptureResultKey;-><init>(Ljava/lang/String;Ljava/lang/Class;Ljava/lang/Object;Lcom/oplus/ocs/camera/CameraParameter$1;)V

    sput-object v0, Lcom/oplus/ocs/camera/CameraParameter;->EXIF_EXPOSURE_BIAS:Lcom/oplus/ocs/camera/CameraParameter$CaptureResultKey;

    .line 931
    new-instance v0, Lcom/oplus/ocs/camera/CameraParameter$CaptureResultKey;

    const-class v1, Ljava/lang/Object;

    const-string v7, "com.oplus.exif.focal_length"

    invoke-direct {v0, v7, v1, v2, v2}, Lcom/oplus/ocs/camera/CameraParameter$CaptureResultKey;-><init>(Ljava/lang/String;Ljava/lang/Class;Ljava/lang/Object;Lcom/oplus/ocs/camera/CameraParameter$1;)V

    sput-object v0, Lcom/oplus/ocs/camera/CameraParameter;->EXIF_FOCAL_LENGTH:Lcom/oplus/ocs/camera/CameraParameter$CaptureResultKey;

    .line 933
    new-instance v0, Lcom/oplus/ocs/camera/CameraParameter$CaptureResultKey;

    const-class v1, [Ljava/lang/Object;

    const-string v7, "com.oplus.exif.latitude"

    invoke-direct {v0, v7, v1, v2, v2}, Lcom/oplus/ocs/camera/CameraParameter$CaptureResultKey;-><init>(Ljava/lang/String;Ljava/lang/Class;Ljava/lang/Object;Lcom/oplus/ocs/camera/CameraParameter$1;)V

    sput-object v0, Lcom/oplus/ocs/camera/CameraParameter;->EXIF_LATITUDE:Lcom/oplus/ocs/camera/CameraParameter$CaptureResultKey;

    .line 935
    new-instance v0, Lcom/oplus/ocs/camera/CameraParameter$CaptureResultKey;

    const-class v1, [Ljava/lang/Object;

    const-string v7, "com.oplus.exif.longitude"

    invoke-direct {v0, v7, v1, v2, v2}, Lcom/oplus/ocs/camera/CameraParameter$CaptureResultKey;-><init>(Ljava/lang/String;Ljava/lang/Class;Ljava/lang/Object;Lcom/oplus/ocs/camera/CameraParameter$1;)V

    sput-object v0, Lcom/oplus/ocs/camera/CameraParameter;->EXIF_LONGITUDE:Lcom/oplus/ocs/camera/CameraParameter$CaptureResultKey;

    .line 937
    new-instance v0, Lcom/oplus/ocs/camera/CameraParameter$CaptureResultKey;

    const-class v1, Ljava/lang/Object;

    const-string v7, "com.oplus.exif.altitude"

    invoke-direct {v0, v7, v1, v2, v2}, Lcom/oplus/ocs/camera/CameraParameter$CaptureResultKey;-><init>(Ljava/lang/String;Ljava/lang/Class;Ljava/lang/Object;Lcom/oplus/ocs/camera/CameraParameter$1;)V

    sput-object v0, Lcom/oplus/ocs/camera/CameraParameter;->EXIF_ALTITUDE:Lcom/oplus/ocs/camera/CameraParameter$CaptureResultKey;

    .line 939
    new-instance v0, Lcom/oplus/ocs/camera/CameraParameter$CaptureResultKey;

    const-class v1, [Ljava/lang/Object;

    const-string v7, "com.oplus.exif.gps_time_stamp"

    invoke-direct {v0, v7, v1, v2, v2}, Lcom/oplus/ocs/camera/CameraParameter$CaptureResultKey;-><init>(Ljava/lang/String;Ljava/lang/Class;Ljava/lang/Object;Lcom/oplus/ocs/camera/CameraParameter$1;)V

    sput-object v0, Lcom/oplus/ocs/camera/CameraParameter;->EXIF_GPS_TIME_STAMP:Lcom/oplus/ocs/camera/CameraParameter$CaptureResultKey;

    .line 942
    new-instance v0, Lcom/oplus/ocs/camera/CameraParameter$CaptureResultKey;

    const-class v1, Ljava/lang/Boolean;

    const-string v7, "com.oplus.exif.support_dcip3"

    invoke-direct {v0, v7, v1, v2, v2}, Lcom/oplus/ocs/camera/CameraParameter$CaptureResultKey;-><init>(Ljava/lang/String;Ljava/lang/Class;Ljava/lang/Object;Lcom/oplus/ocs/camera/CameraParameter$1;)V

    sput-object v0, Lcom/oplus/ocs/camera/CameraParameter;->EXIF_SUPPORT_DCIP3:Lcom/oplus/ocs/camera/CameraParameter$CaptureResultKey;

    .line 944
    new-instance v0, Lcom/oplus/ocs/camera/CameraParameter$CaptureResultKey;

    const-class v1, Ljava/lang/Boolean;

    const-string v7, "com.oplus.exif.support_location"

    invoke-direct {v0, v7, v1, v2, v2}, Lcom/oplus/ocs/camera/CameraParameter$CaptureResultKey;-><init>(Ljava/lang/String;Ljava/lang/Class;Ljava/lang/Object;Lcom/oplus/ocs/camera/CameraParameter$1;)V

    sput-object v0, Lcom/oplus/ocs/camera/CameraParameter;->EXIF_SUPPORT_LOCATION:Lcom/oplus/ocs/camera/CameraParameter$CaptureResultKey;

    .line 946
    new-instance v0, Lcom/oplus/ocs/camera/CameraParameter$CaptureResultKey;

    const-class v1, Ljava/lang/Boolean;

    const-string v7, "com.oplus.exif.support_location_time_stamp"

    invoke-direct {v0, v7, v1, v2, v2}, Lcom/oplus/ocs/camera/CameraParameter$CaptureResultKey;-><init>(Ljava/lang/String;Ljava/lang/Class;Ljava/lang/Object;Lcom/oplus/ocs/camera/CameraParameter$1;)V

    sput-object v0, Lcom/oplus/ocs/camera/CameraParameter;->EXIF_SUPPORT_LOCATION_TIME_STAMP:Lcom/oplus/ocs/camera/CameraParameter$CaptureResultKey;

    .line 948
    new-instance v0, Lcom/oplus/ocs/camera/CameraParameter$CaptureResultKey;

    const-class v1, Ljava/lang/Integer;

    const-string v7, "com.oplus.exif.image_width"

    invoke-direct {v0, v7, v1, v2, v2}, Lcom/oplus/ocs/camera/CameraParameter$CaptureResultKey;-><init>(Ljava/lang/String;Ljava/lang/Class;Ljava/lang/Object;Lcom/oplus/ocs/camera/CameraParameter$1;)V

    sput-object v0, Lcom/oplus/ocs/camera/CameraParameter;->EXIF_IMAGE_WIDTH:Lcom/oplus/ocs/camera/CameraParameter$CaptureResultKey;

    .line 950
    new-instance v0, Lcom/oplus/ocs/camera/CameraParameter$CaptureResultKey;

    const-class v1, Ljava/lang/Integer;

    const-string v7, "com.oplus.exif.image_height"

    invoke-direct {v0, v7, v1, v2, v2}, Lcom/oplus/ocs/camera/CameraParameter$CaptureResultKey;-><init>(Ljava/lang/String;Ljava/lang/Class;Ljava/lang/Object;Lcom/oplus/ocs/camera/CameraParameter$1;)V

    sput-object v0, Lcom/oplus/ocs/camera/CameraParameter;->EXIF_IMAGE_HEIGHT:Lcom/oplus/ocs/camera/CameraParameter$CaptureResultKey;

    .line 952
    new-instance v0, Lcom/oplus/ocs/camera/CameraParameter$CaptureResultKey;

    const-class v1, Ljava/lang/Integer;

    const-string v7, "com.oplus.exif.tiffycrcb_positioning"

    invoke-direct {v0, v7, v1, v2, v2}, Lcom/oplus/ocs/camera/CameraParameter$CaptureResultKey;-><init>(Ljava/lang/String;Ljava/lang/Class;Ljava/lang/Object;Lcom/oplus/ocs/camera/CameraParameter$1;)V

    sput-object v0, Lcom/oplus/ocs/camera/CameraParameter;->EXIF_TIFFYCRCB_POSITIONING:Lcom/oplus/ocs/camera/CameraParameter$CaptureResultKey;

    .line 954
    new-instance v0, Lcom/oplus/ocs/camera/CameraParameter$CaptureResultKey;

    const-class v1, Ljava/lang/Integer;

    const-string v7, "com.oplus.exif.tiff_resolution_unit"

    invoke-direct {v0, v7, v1, v2, v2}, Lcom/oplus/ocs/camera/CameraParameter$CaptureResultKey;-><init>(Ljava/lang/String;Ljava/lang/Class;Ljava/lang/Object;Lcom/oplus/ocs/camera/CameraParameter$1;)V

    sput-object v0, Lcom/oplus/ocs/camera/CameraParameter;->EXIF_TIFF_RESOLUTION_UNIT:Lcom/oplus/ocs/camera/CameraParameter$CaptureResultKey;

    .line 956
    new-instance v0, Lcom/oplus/ocs/camera/CameraParameter$CaptureResultKey;

    const-class v1, Ljava/lang/Object;

    const-string v7, "com.oplus.exif.tiffx_resolution"

    invoke-direct {v0, v7, v1, v2, v2}, Lcom/oplus/ocs/camera/CameraParameter$CaptureResultKey;-><init>(Ljava/lang/String;Ljava/lang/Class;Ljava/lang/Object;Lcom/oplus/ocs/camera/CameraParameter$1;)V

    sput-object v0, Lcom/oplus/ocs/camera/CameraParameter;->EXIF_TIFFX_RESOLUTIION:Lcom/oplus/ocs/camera/CameraParameter$CaptureResultKey;

    .line 958
    new-instance v0, Lcom/oplus/ocs/camera/CameraParameter$CaptureResultKey;

    const-class v1, Ljava/lang/Object;

    const-string v7, "com.oplus.exif.tiffy_resolution"

    invoke-direct {v0, v7, v1, v2, v2}, Lcom/oplus/ocs/camera/CameraParameter$CaptureResultKey;-><init>(Ljava/lang/String;Ljava/lang/Class;Ljava/lang/Object;Lcom/oplus/ocs/camera/CameraParameter$1;)V

    sput-object v0, Lcom/oplus/ocs/camera/CameraParameter;->EXIF_TIFFY_RESOLUTION:Lcom/oplus/ocs/camera/CameraParameter$CaptureResultKey;

    .line 961
    new-instance v0, Lcom/oplus/ocs/camera/CameraParameter$CaptureResultKey;

    const-class v1, Ljava/lang/Integer;

    const-string v7, "com.oplus.exif.exposure_program"

    invoke-direct {v0, v7, v1, v2, v2}, Lcom/oplus/ocs/camera/CameraParameter$CaptureResultKey;-><init>(Ljava/lang/String;Ljava/lang/Class;Ljava/lang/Object;Lcom/oplus/ocs/camera/CameraParameter$1;)V

    sput-object v0, Lcom/oplus/ocs/camera/CameraParameter;->EXIF_EXPOSURE_PROGRAM:Lcom/oplus/ocs/camera/CameraParameter$CaptureResultKey;

    .line 963
    new-instance v0, Lcom/oplus/ocs/camera/CameraParameter$CaptureResultKey;

    const-class v1, Ljava/lang/String;

    const-string v7, "com.oplus.exif.version"

    invoke-direct {v0, v7, v1, v2, v2}, Lcom/oplus/ocs/camera/CameraParameter$CaptureResultKey;-><init>(Ljava/lang/String;Ljava/lang/Class;Ljava/lang/Object;Lcom/oplus/ocs/camera/CameraParameter$1;)V

    sput-object v0, Lcom/oplus/ocs/camera/CameraParameter;->EXIF_VERSION:Lcom/oplus/ocs/camera/CameraParameter$CaptureResultKey;

    .line 965
    new-instance v0, Lcom/oplus/ocs/camera/CameraParameter$CaptureResultKey;

    const-class v1, Ljava/lang/String;

    const-string v7, "com.oplus.exif.component_config"

    invoke-direct {v0, v7, v1, v2, v2}, Lcom/oplus/ocs/camera/CameraParameter$CaptureResultKey;-><init>(Ljava/lang/String;Ljava/lang/Class;Ljava/lang/Object;Lcom/oplus/ocs/camera/CameraParameter$1;)V

    sput-object v0, Lcom/oplus/ocs/camera/CameraParameter;->EXIF_COMPONENT_CONFIG:Lcom/oplus/ocs/camera/CameraParameter$CaptureResultKey;

    .line 967
    new-instance v0, Lcom/oplus/ocs/camera/CameraParameter$CaptureResultKey;

    const-class v1, Ljava/lang/Object;

    const-string v7, "com.oplus.exif.shutter_speed"

    invoke-direct {v0, v7, v1, v2, v2}, Lcom/oplus/ocs/camera/CameraParameter$CaptureResultKey;-><init>(Ljava/lang/String;Ljava/lang/Class;Ljava/lang/Object;Lcom/oplus/ocs/camera/CameraParameter$1;)V

    sput-object v0, Lcom/oplus/ocs/camera/CameraParameter;->EXIF_SHUTTER_SPEED:Lcom/oplus/ocs/camera/CameraParameter$CaptureResultKey;

    .line 969
    new-instance v0, Lcom/oplus/ocs/camera/CameraParameter$CaptureResultKey;

    const-class v1, Ljava/lang/Object;

    const-string v7, "com.oplus.exif.brightness"

    invoke-direct {v0, v7, v1, v2, v2}, Lcom/oplus/ocs/camera/CameraParameter$CaptureResultKey;-><init>(Ljava/lang/String;Ljava/lang/Class;Ljava/lang/Object;Lcom/oplus/ocs/camera/CameraParameter$1;)V

    sput-object v0, Lcom/oplus/ocs/camera/CameraParameter;->EXIF_BRIGHTNESS:Lcom/oplus/ocs/camera/CameraParameter$CaptureResultKey;

    .line 971
    new-instance v0, Lcom/oplus/ocs/camera/CameraParameter$CaptureResultKey;

    const-class v1, Ljava/lang/Object;

    const-string v7, "com.oplus.exif.max_aperture"

    invoke-direct {v0, v7, v1, v2, v2}, Lcom/oplus/ocs/camera/CameraParameter$CaptureResultKey;-><init>(Ljava/lang/String;Ljava/lang/Class;Ljava/lang/Object;Lcom/oplus/ocs/camera/CameraParameter$1;)V

    sput-object v0, Lcom/oplus/ocs/camera/CameraParameter;->EXIF_MAX_APERTURE:Lcom/oplus/ocs/camera/CameraParameter$CaptureResultKey;

    .line 973
    new-instance v0, Lcom/oplus/ocs/camera/CameraParameter$CaptureResultKey;

    const-class v1, Ljava/lang/Integer;

    const-string v7, "com.oplus.exif.metering_mode"

    invoke-direct {v0, v7, v1, v2, v2}, Lcom/oplus/ocs/camera/CameraParameter$CaptureResultKey;-><init>(Ljava/lang/String;Ljava/lang/Class;Ljava/lang/Object;Lcom/oplus/ocs/camera/CameraParameter$1;)V

    sput-object v0, Lcom/oplus/ocs/camera/CameraParameter;->EXIF_METERING_MODE:Lcom/oplus/ocs/camera/CameraParameter$CaptureResultKey;

    .line 975
    new-instance v0, Lcom/oplus/ocs/camera/CameraParameter$CaptureResultKey;

    const-class v1, Ljava/lang/String;

    const-string v7, "com.oplus.exif.maker_note"

    invoke-direct {v0, v7, v1, v2, v2}, Lcom/oplus/ocs/camera/CameraParameter$CaptureResultKey;-><init>(Ljava/lang/String;Ljava/lang/Class;Ljava/lang/Object;Lcom/oplus/ocs/camera/CameraParameter$1;)V

    sput-object v0, Lcom/oplus/ocs/camera/CameraParameter;->EXIF_MAKER_NOTE:Lcom/oplus/ocs/camera/CameraParameter$CaptureResultKey;

    .line 977
    new-instance v0, Lcom/oplus/ocs/camera/CameraParameter$CaptureResultKey;

    const-class v1, Ljava/lang/String;

    const-string v7, "com.oplus.exif.flash_pix_version"

    invoke-direct {v0, v7, v1, v2, v2}, Lcom/oplus/ocs/camera/CameraParameter$CaptureResultKey;-><init>(Ljava/lang/String;Ljava/lang/Class;Ljava/lang/Object;Lcom/oplus/ocs/camera/CameraParameter$1;)V

    sput-object v0, Lcom/oplus/ocs/camera/CameraParameter;->EXIF_FLASH_PIX_VERSION:Lcom/oplus/ocs/camera/CameraParameter$CaptureResultKey;

    .line 979
    new-instance v0, Lcom/oplus/ocs/camera/CameraParameter$CaptureResultKey;

    const-class v1, Ljava/lang/Integer;

    const-string v7, "com.oplus.exif.color_space"

    invoke-direct {v0, v7, v1, v2, v2}, Lcom/oplus/ocs/camera/CameraParameter$CaptureResultKey;-><init>(Ljava/lang/String;Ljava/lang/Class;Ljava/lang/Object;Lcom/oplus/ocs/camera/CameraParameter$1;)V

    sput-object v0, Lcom/oplus/ocs/camera/CameraParameter;->EXIF_COLOR_SPACE:Lcom/oplus/ocs/camera/CameraParameter$CaptureResultKey;

    .line 981
    new-instance v0, Lcom/oplus/ocs/camera/CameraParameter$CaptureResultKey;

    const-class v1, Ljava/lang/Integer;

    const-string v7, "com.oplus.exif.sensing_method"

    invoke-direct {v0, v7, v1, v2, v2}, Lcom/oplus/ocs/camera/CameraParameter$CaptureResultKey;-><init>(Ljava/lang/String;Ljava/lang/Class;Ljava/lang/Object;Lcom/oplus/ocs/camera/CameraParameter$1;)V

    sput-object v0, Lcom/oplus/ocs/camera/CameraParameter;->EXIF_SENSING_METHOD:Lcom/oplus/ocs/camera/CameraParameter$CaptureResultKey;

    .line 983
    new-instance v0, Lcom/oplus/ocs/camera/CameraParameter$CaptureResultKey;

    const-class v1, Ljava/lang/String;

    const-string v7, "com.oplus.exif.scene_type"

    invoke-direct {v0, v7, v1, v2, v2}, Lcom/oplus/ocs/camera/CameraParameter$CaptureResultKey;-><init>(Ljava/lang/String;Ljava/lang/Class;Ljava/lang/Object;Lcom/oplus/ocs/camera/CameraParameter$1;)V

    sput-object v0, Lcom/oplus/ocs/camera/CameraParameter;->EXIF_SCENE_TYPE:Lcom/oplus/ocs/camera/CameraParameter$CaptureResultKey;

    .line 985
    new-instance v0, Lcom/oplus/ocs/camera/CameraParameter$CaptureResultKey;

    const-class v1, Ljava/lang/Integer;

    const-string v7, "com.oplus.exif.exposure_mode"

    invoke-direct {v0, v7, v1, v2, v2}, Lcom/oplus/ocs/camera/CameraParameter$CaptureResultKey;-><init>(Ljava/lang/String;Ljava/lang/Class;Ljava/lang/Object;Lcom/oplus/ocs/camera/CameraParameter$1;)V

    sput-object v0, Lcom/oplus/ocs/camera/CameraParameter;->EXIF_EXPOSURE_MODE:Lcom/oplus/ocs/camera/CameraParameter$CaptureResultKey;

    .line 987
    new-instance v0, Lcom/oplus/ocs/camera/CameraParameter$CaptureResultKey;

    const-class v1, Ljava/lang/Integer;

    const-string v7, "com.oplus.exif.focal_length_35mm"

    invoke-direct {v0, v7, v1, v2, v2}, Lcom/oplus/ocs/camera/CameraParameter$CaptureResultKey;-><init>(Ljava/lang/String;Ljava/lang/Class;Ljava/lang/Object;Lcom/oplus/ocs/camera/CameraParameter$1;)V

    sput-object v0, Lcom/oplus/ocs/camera/CameraParameter;->EXIF_FOCAL_LENGTH_35MM:Lcom/oplus/ocs/camera/CameraParameter$CaptureResultKey;

    .line 989
    new-instance v0, Lcom/oplus/ocs/camera/CameraParameter$CaptureResultKey;

    const-class v1, Ljava/lang/Integer;

    const-string v7, "com.oplus.exif.scene_capture_type"

    invoke-direct {v0, v7, v1, v2, v2}, Lcom/oplus/ocs/camera/CameraParameter$CaptureResultKey;-><init>(Ljava/lang/String;Ljava/lang/Class;Ljava/lang/Object;Lcom/oplus/ocs/camera/CameraParameter$1;)V

    sput-object v0, Lcom/oplus/ocs/camera/CameraParameter;->EXIF_SCENE_CAPTURE_TYPE:Lcom/oplus/ocs/camera/CameraParameter$CaptureResultKey;

    .line 991
    new-instance v0, Lcom/oplus/ocs/camera/CameraParameter$CaptureResultKey;

    const-class v1, Ljava/lang/String;

    const-string v7, "com.oplus.exif.interop_index_str"

    invoke-direct {v0, v7, v1, v2, v2}, Lcom/oplus/ocs/camera/CameraParameter$CaptureResultKey;-><init>(Ljava/lang/String;Ljava/lang/Class;Ljava/lang/Object;Lcom/oplus/ocs/camera/CameraParameter$1;)V

    sput-object v0, Lcom/oplus/ocs/camera/CameraParameter;->EXIF_INTEROP_INDEX_STR:Lcom/oplus/ocs/camera/CameraParameter$CaptureResultKey;

    .line 993
    new-instance v0, Lcom/oplus/ocs/camera/CameraParameter$CaptureResultKey;

    const-class v1, Ljava/lang/String;

    const-string v7, "com.oplus.exif.interop_version"

    invoke-direct {v0, v7, v1, v2, v2}, Lcom/oplus/ocs/camera/CameraParameter$CaptureResultKey;-><init>(Ljava/lang/String;Ljava/lang/Class;Ljava/lang/Object;Lcom/oplus/ocs/camera/CameraParameter$1;)V

    sput-object v0, Lcom/oplus/ocs/camera/CameraParameter;->EXIF_INTEROP_VERSION:Lcom/oplus/ocs/camera/CameraParameter$CaptureResultKey;

    .line 995
    new-instance v0, Lcom/oplus/ocs/camera/CameraParameter$CaptureResultKey;

    const-class v1, Ljava/lang/Integer;

    const-string v7, "com.oplus.exif.heic_quality"

    invoke-direct {v0, v7, v1, v2, v2}, Lcom/oplus/ocs/camera/CameraParameter$CaptureResultKey;-><init>(Ljava/lang/String;Ljava/lang/Class;Ljava/lang/Object;Lcom/oplus/ocs/camera/CameraParameter$1;)V

    sput-object v0, Lcom/oplus/ocs/camera/CameraParameter;->EXIF_HEIC_QUALITY:Lcom/oplus/ocs/camera/CameraParameter$CaptureResultKey;

    .line 1003
    new-instance v0, Lcom/oplus/ocs/camera/CameraParameter$PreviewResultKey;

    const-class v1, Ljava/lang/Integer;

    const-string v7, "com.oplus.result.width"

    .line 1004
    invoke-direct {v0, v7, v1, v3, v2}, Lcom/oplus/ocs/camera/CameraParameter$PreviewResultKey;-><init>(Ljava/lang/String;Ljava/lang/Class;Ljava/lang/Object;Lcom/oplus/ocs/camera/CameraParameter$1;)V

    sput-object v0, Lcom/oplus/ocs/camera/CameraParameter;->PREVIEW_RESULT_WIDTH:Lcom/oplus/ocs/camera/CameraParameter$PreviewResultKey;

    .line 1010
    new-instance v0, Lcom/oplus/ocs/camera/CameraParameter$PreviewResultKey;

    const-class v1, Ljava/lang/Integer;

    const-string v7, "com.oplus.result.crop_left"

    .line 1011
    invoke-direct {v0, v7, v1, v3, v2}, Lcom/oplus/ocs/camera/CameraParameter$PreviewResultKey;-><init>(Ljava/lang/String;Ljava/lang/Class;Ljava/lang/Object;Lcom/oplus/ocs/camera/CameraParameter$1;)V

    sput-object v0, Lcom/oplus/ocs/camera/CameraParameter;->PREVIEW_RESULT_CROP_LEFT:Lcom/oplus/ocs/camera/CameraParameter$PreviewResultKey;

    .line 1017
    new-instance v0, Lcom/oplus/ocs/camera/CameraParameter$PreviewResultKey;

    const-class v1, Ljava/lang/Integer;

    const-string v7, "com.oplus.result.crop_top"

    .line 1018
    invoke-direct {v0, v7, v1, v3, v2}, Lcom/oplus/ocs/camera/CameraParameter$PreviewResultKey;-><init>(Ljava/lang/String;Ljava/lang/Class;Ljava/lang/Object;Lcom/oplus/ocs/camera/CameraParameter$1;)V

    sput-object v0, Lcom/oplus/ocs/camera/CameraParameter;->PREVIEW_RESULT_CROP_TOP:Lcom/oplus/ocs/camera/CameraParameter$PreviewResultKey;

    .line 1024
    new-instance v0, Lcom/oplus/ocs/camera/CameraParameter$PreviewResultKey;

    const-class v1, Ljava/lang/Integer;

    const-string v7, "com.oplus.result.crop_right"

    .line 1025
    invoke-direct {v0, v7, v1, v3, v2}, Lcom/oplus/ocs/camera/CameraParameter$PreviewResultKey;-><init>(Ljava/lang/String;Ljava/lang/Class;Ljava/lang/Object;Lcom/oplus/ocs/camera/CameraParameter$1;)V

    sput-object v0, Lcom/oplus/ocs/camera/CameraParameter;->PREVIEW_RESULT_CROP_RIGHT:Lcom/oplus/ocs/camera/CameraParameter$PreviewResultKey;

    .line 1031
    new-instance v0, Lcom/oplus/ocs/camera/CameraParameter$PreviewResultKey;

    const-class v1, Ljava/lang/Integer;

    const-string v7, "com.oplus.result.crop_bottom"

    .line 1032
    invoke-direct {v0, v7, v1, v3, v2}, Lcom/oplus/ocs/camera/CameraParameter$PreviewResultKey;-><init>(Ljava/lang/String;Ljava/lang/Class;Ljava/lang/Object;Lcom/oplus/ocs/camera/CameraParameter$1;)V

    sput-object v0, Lcom/oplus/ocs/camera/CameraParameter;->PREVIEW_RESULT_CROP_BOTTOM:Lcom/oplus/ocs/camera/CameraParameter$PreviewResultKey;

    .line 1037
    new-instance v0, Lcom/oplus/ocs/camera/CameraParameter$PreviewResultKey;

    const-class v1, Ljava/lang/Integer;

    const-string v7, "com.oplus.result.height"

    .line 1038
    invoke-direct {v0, v7, v1, v3, v2}, Lcom/oplus/ocs/camera/CameraParameter$PreviewResultKey;-><init>(Ljava/lang/String;Ljava/lang/Class;Ljava/lang/Object;Lcom/oplus/ocs/camera/CameraParameter$1;)V

    sput-object v0, Lcom/oplus/ocs/camera/CameraParameter;->PREVIEW_RESULT_HEIGHT:Lcom/oplus/ocs/camera/CameraParameter$PreviewResultKey;

    .line 1043
    new-instance v0, Lcom/oplus/ocs/camera/CameraParameter$PreviewResultKey;

    const-class v1, Ljava/lang/Long;

    .line 1044
    invoke-direct {v0, v6, v1, v5, v2}, Lcom/oplus/ocs/camera/CameraParameter$PreviewResultKey;-><init>(Ljava/lang/String;Ljava/lang/Class;Ljava/lang/Object;Lcom/oplus/ocs/camera/CameraParameter$1;)V

    sput-object v0, Lcom/oplus/ocs/camera/CameraParameter;->PREVIEW_RESULT_IDENTITY:Lcom/oplus/ocs/camera/CameraParameter$PreviewResultKey;

    .line 1049
    new-instance v0, Lcom/oplus/ocs/camera/CameraParameter$PreviewResultKey;

    const-class v1, Ljava/lang/Integer;

    const-string v6, "com.oplus.result.motion_detected"

    .line 1050
    invoke-direct {v0, v6, v1, v3, v2}, Lcom/oplus/ocs/camera/CameraParameter$PreviewResultKey;-><init>(Ljava/lang/String;Ljava/lang/Class;Ljava/lang/Object;Lcom/oplus/ocs/camera/CameraParameter$1;)V

    sput-object v0, Lcom/oplus/ocs/camera/CameraParameter;->PREVIEW_RESULT_MOTION_DETECTED:Lcom/oplus/ocs/camera/CameraParameter$PreviewResultKey;

    .line 1055
    new-instance v0, Lcom/oplus/ocs/camera/CameraParameter$PreviewResultKey;

    const-class v1, Ljava/lang/Integer;

    const-string v6, "com.oplus.result.start_interpolation_frame"

    .line 1056
    invoke-direct {v0, v6, v1, v3, v2}, Lcom/oplus/ocs/camera/CameraParameter$PreviewResultKey;-><init>(Ljava/lang/String;Ljava/lang/Class;Ljava/lang/Object;Lcom/oplus/ocs/camera/CameraParameter$1;)V

    sput-object v0, Lcom/oplus/ocs/camera/CameraParameter;->PREVIEW_RESULT_START_INTERPOLATION_FRAME:Lcom/oplus/ocs/camera/CameraParameter$PreviewResultKey;

    .line 1061
    new-instance v0, Lcom/oplus/ocs/camera/CameraParameter$PreviewResultKey;

    const-class v1, Ljava/lang/Integer;

    const-string v6, "com.oplus.result.last_video_frame"

    .line 1062
    invoke-direct {v0, v6, v1, v3, v2}, Lcom/oplus/ocs/camera/CameraParameter$PreviewResultKey;-><init>(Ljava/lang/String;Ljava/lang/Class;Ljava/lang/Object;Lcom/oplus/ocs/camera/CameraParameter$1;)V

    sput-object v0, Lcom/oplus/ocs/camera/CameraParameter;->PREVIEW_RESULT_LAST_VDIEO_FRAME:Lcom/oplus/ocs/camera/CameraParameter$PreviewResultKey;

    .line 1067
    new-instance v0, Lcom/oplus/ocs/camera/CameraParameter$PreviewResultKey;

    const-class v1, Ljava/lang/String;

    const-string v6, "com.oplus.result.aps_init_finish"

    invoke-direct {v0, v6, v1, v2, v2}, Lcom/oplus/ocs/camera/CameraParameter$PreviewResultKey;-><init>(Ljava/lang/String;Ljava/lang/Class;Ljava/lang/Object;Lcom/oplus/ocs/camera/CameraParameter$1;)V

    sput-object v0, Lcom/oplus/ocs/camera/CameraParameter;->KEY_CAMERA_RESULT_APS_INIT_FINISH:Lcom/oplus/ocs/camera/CameraParameter$PreviewResultKey;

    .line 1073
    new-instance v0, Lcom/oplus/ocs/camera/CameraParameter$PreviewResultKey;

    const-class v1, Ljava/lang/Long;

    const-string v6, "com.oplus.result.ref_timestamp"

    .line 1074
    invoke-direct {v0, v6, v1, v5, v2}, Lcom/oplus/ocs/camera/CameraParameter$PreviewResultKey;-><init>(Ljava/lang/String;Ljava/lang/Class;Ljava/lang/Object;Lcom/oplus/ocs/camera/CameraParameter$1;)V

    sput-object v0, Lcom/oplus/ocs/camera/CameraParameter;->KEY_CAMERA_RESULT_REF_TIMESTAMP:Lcom/oplus/ocs/camera/CameraParameter$PreviewResultKey;

    .line 1079
    new-instance v0, Lcom/oplus/ocs/camera/CameraParameter$PreviewResultKey;

    const-class v1, Ljava/lang/Integer;

    const-string v6, "com.oplus.preview.request_format"

    .line 1080
    invoke-direct {v0, v6, v1, v3, v2}, Lcom/oplus/ocs/camera/CameraParameter$PreviewResultKey;-><init>(Ljava/lang/String;Ljava/lang/Class;Ljava/lang/Object;Lcom/oplus/ocs/camera/CameraParameter$1;)V

    sput-object v0, Lcom/oplus/ocs/camera/CameraParameter;->PREVIEW_RESULT_REQUEST_FORMAT:Lcom/oplus/ocs/camera/CameraParameter$PreviewResultKey;

    .line 1085
    new-instance v0, Lcom/oplus/ocs/camera/CameraParameter$PreviewResultKey;

    const-class v1, Ljava/lang/Integer;

    const-string v6, "com.oplus.preview.multi_frame_count"

    .line 1086
    invoke-direct {v0, v6, v1, v3, v2}, Lcom/oplus/ocs/camera/CameraParameter$PreviewResultKey;-><init>(Ljava/lang/String;Ljava/lang/Class;Ljava/lang/Object;Lcom/oplus/ocs/camera/CameraParameter$1;)V

    sput-object v0, Lcom/oplus/ocs/camera/CameraParameter;->PREVIEW_RESULT_MULTI_FRAME_COUNT:Lcom/oplus/ocs/camera/CameraParameter$PreviewResultKey;

    .line 1091
    new-instance v0, Lcom/oplus/ocs/camera/CameraParameter$PreviewResultKey;

    const-class v1, Ljava/lang/Integer;

    const-string v6, "com.oplus.preview.super_night_scene"

    .line 1092
    invoke-direct {v0, v6, v1, v3, v2}, Lcom/oplus/ocs/camera/CameraParameter$PreviewResultKey;-><init>(Ljava/lang/String;Ljava/lang/Class;Ljava/lang/Object;Lcom/oplus/ocs/camera/CameraParameter$1;)V

    sput-object v0, Lcom/oplus/ocs/camera/CameraParameter;->PREVIEW_RESULT_SUPER_NIGHT_SCENE:Lcom/oplus/ocs/camera/CameraParameter$PreviewResultKey;

    .line 1097
    new-instance v0, Lcom/oplus/ocs/camera/CameraParameter$PreviewResultKey;

    const-class v1, Ljava/lang/Integer;

    const/4 v6, 0x1

    .line 1098
    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    const-string v7, "com.oplus.preview.meta_index"

    invoke-direct {v0, v7, v1, v6, v2}, Lcom/oplus/ocs/camera/CameraParameter$PreviewResultKey;-><init>(Ljava/lang/String;Ljava/lang/Class;Ljava/lang/Object;Lcom/oplus/ocs/camera/CameraParameter$1;)V

    sput-object v0, Lcom/oplus/ocs/camera/CameraParameter;->PREVIEW_RESULT_META_INDEX:Lcom/oplus/ocs/camera/CameraParameter$PreviewResultKey;

    .line 1103
    new-instance v0, Lcom/oplus/ocs/camera/CameraParameter$PreviewResultKey;

    const-class v1, Ljava/lang/Integer;

    const-string v7, "com.oplus.preview.night_total_exptime"

    .line 1104
    invoke-direct {v0, v7, v1, v3, v2}, Lcom/oplus/ocs/camera/CameraParameter$PreviewResultKey;-><init>(Ljava/lang/String;Ljava/lang/Class;Ljava/lang/Object;Lcom/oplus/ocs/camera/CameraParameter$1;)V

    sput-object v0, Lcom/oplus/ocs/camera/CameraParameter;->PREVIEW_RESULT_NIGHT_TOTAL_EXPTIME:Lcom/oplus/ocs/camera/CameraParameter$PreviewResultKey;

    .line 1106
    new-instance v0, Lcom/oplus/ocs/camera/CameraParameter$PreviewResultKey;

    const-class v1, Ljava/lang/Integer;

    const-string v7, "com.oplus.preview.offline_night_exptime"

    .line 1107
    invoke-direct {v0, v7, v1, v3, v2}, Lcom/oplus/ocs/camera/CameraParameter$PreviewResultKey;-><init>(Ljava/lang/String;Ljava/lang/Class;Ljava/lang/Object;Lcom/oplus/ocs/camera/CameraParameter$1;)V

    sput-object v0, Lcom/oplus/ocs/camera/CameraParameter;->PREVIEW_RESULT_OFFLINE_NIGHT_EXPTIME:Lcom/oplus/ocs/camera/CameraParameter$PreviewResultKey;

    .line 1112
    new-instance v0, Lcom/oplus/ocs/camera/CameraParameter$PreviewResultKey;

    const-class v1, Ljava/lang/Integer;

    const-string v7, "com.oplus.preview.scene_mode"

    .line 1113
    invoke-direct {v0, v7, v1, v3, v2}, Lcom/oplus/ocs/camera/CameraParameter$PreviewResultKey;-><init>(Ljava/lang/String;Ljava/lang/Class;Ljava/lang/Object;Lcom/oplus/ocs/camera/CameraParameter$1;)V

    sput-object v0, Lcom/oplus/ocs/camera/CameraParameter;->PREVIEW_RESULT_SCENE_MODE:Lcom/oplus/ocs/camera/CameraParameter$PreviewResultKey;

    .line 1118
    new-instance v0, Lcom/oplus/ocs/camera/CameraParameter$PreviewResultKey;

    const-class v1, Ljava/lang/Integer;

    const-string v7, "com.oplus.preview.show_hdr_icon"

    .line 1119
    invoke-direct {v0, v7, v1, v3, v2}, Lcom/oplus/ocs/camera/CameraParameter$PreviewResultKey;-><init>(Ljava/lang/String;Ljava/lang/Class;Ljava/lang/Object;Lcom/oplus/ocs/camera/CameraParameter$1;)V

    sput-object v0, Lcom/oplus/ocs/camera/CameraParameter;->PREVIEW_RESULT_SHOW_HDR_ICON:Lcom/oplus/ocs/camera/CameraParameter$PreviewResultKey;

    .line 1124
    new-instance v0, Lcom/oplus/ocs/camera/CameraParameter$PreviewResultKey;

    const-class v1, Ljava/lang/Integer;

    const-string v7, "com.oplus.preview.feature_type"

    .line 1125
    invoke-direct {v0, v7, v1, v3, v2}, Lcom/oplus/ocs/camera/CameraParameter$PreviewResultKey;-><init>(Ljava/lang/String;Ljava/lang/Class;Ljava/lang/Object;Lcom/oplus/ocs/camera/CameraParameter$1;)V

    sput-object v0, Lcom/oplus/ocs/camera/CameraParameter;->PREVIEW_RESULT_FEATURE_TYPE:Lcom/oplus/ocs/camera/CameraParameter$PreviewResultKey;

    .line 1127
    new-instance v0, Lcom/oplus/ocs/camera/CameraParameter$PreviewResultKey;

    const-class v1, Ljava/lang/Integer;

    const-string v7, "com.oplus.preview.thumbnail_index"

    .line 1128
    invoke-direct {v0, v7, v1, v6, v2}, Lcom/oplus/ocs/camera/CameraParameter$PreviewResultKey;-><init>(Ljava/lang/String;Ljava/lang/Class;Ljava/lang/Object;Lcom/oplus/ocs/camera/CameraParameter$1;)V

    sput-object v0, Lcom/oplus/ocs/camera/CameraParameter;->PREVIEW_RESULT_THUMBNAIL_INDEX:Lcom/oplus/ocs/camera/CameraParameter$PreviewResultKey;

    .line 1130
    new-instance v0, Lcom/oplus/ocs/camera/CameraParameter$CaptureResultKey;

    const-class v1, Ljava/lang/Long;

    const-string v6, "com.oplus.capture.night_total_exptime"

    .line 1131
    invoke-direct {v0, v6, v1, v5, v2}, Lcom/oplus/ocs/camera/CameraParameter$CaptureResultKey;-><init>(Ljava/lang/String;Ljava/lang/Class;Ljava/lang/Object;Lcom/oplus/ocs/camera/CameraParameter$1;)V

    sput-object v0, Lcom/oplus/ocs/camera/CameraParameter;->CAPTURE_RESULT_NIGHT_TOTAL_EXPTIME:Lcom/oplus/ocs/camera/CameraParameter$CaptureResultKey;

    .line 1133
    new-instance v0, Lcom/oplus/ocs/camera/CameraParameter$CaptureResultKey;

    const-class v1, Ljava/lang/Long;

    const-string v6, "com.oplus.capture.first_exposure_time"

    .line 1134
    invoke-direct {v0, v6, v1, v5, v2}, Lcom/oplus/ocs/camera/CameraParameter$CaptureResultKey;-><init>(Ljava/lang/String;Ljava/lang/Class;Ljava/lang/Object;Lcom/oplus/ocs/camera/CameraParameter$1;)V

    sput-object v0, Lcom/oplus/ocs/camera/CameraParameter;->CAPTURE_RESULT_FIRST_EXPOSURE_TIME:Lcom/oplus/ocs/camera/CameraParameter$CaptureResultKey;

    .line 1139
    new-instance v0, Lcom/oplus/ocs/camera/CameraParameter$PreviewResultKey;

    const-class v1, [Ljava/lang/String;

    const-string v6, "com.oplus.preview.algo_flag"

    invoke-direct {v0, v6, v1, v2, v2}, Lcom/oplus/ocs/camera/CameraParameter$PreviewResultKey;-><init>(Ljava/lang/String;Ljava/lang/Class;Ljava/lang/Object;Lcom/oplus/ocs/camera/CameraParameter$1;)V

    sput-object v0, Lcom/oplus/ocs/camera/CameraParameter;->PREVIEW_RESULT_ALGO_FLAG:Lcom/oplus/ocs/camera/CameraParameter$PreviewResultKey;

    .line 1145
    new-instance v0, Lcom/oplus/ocs/camera/CameraParameter$PreviewResultKey;

    const-class v1, [I

    const-string v6, "com.oplus.preview.capture_ev_list"

    invoke-direct {v0, v6, v1, v2, v2}, Lcom/oplus/ocs/camera/CameraParameter$PreviewResultKey;-><init>(Ljava/lang/String;Ljava/lang/Class;Ljava/lang/Object;Lcom/oplus/ocs/camera/CameraParameter$1;)V

    sput-object v0, Lcom/oplus/ocs/camera/CameraParameter;->PREVIEW_RESULT_CAPTURE_EV_LIST:Lcom/oplus/ocs/camera/CameraParameter$PreviewResultKey;

    .line 1151
    new-instance v0, Lcom/oplus/ocs/camera/CameraParameter$PreviewResultKey;

    const-class v1, [I

    const-string v6, "com.oplus.preview.sensor_mask"

    invoke-direct {v0, v6, v1, v2, v2}, Lcom/oplus/ocs/camera/CameraParameter$PreviewResultKey;-><init>(Ljava/lang/String;Ljava/lang/Class;Ljava/lang/Object;Lcom/oplus/ocs/camera/CameraParameter$1;)V

    sput-object v0, Lcom/oplus/ocs/camera/CameraParameter;->PREVIEW_RESULT_SENSOR_MASK:Lcom/oplus/ocs/camera/CameraParameter$PreviewResultKey;

    .line 1157
    new-instance v0, Lcom/oplus/ocs/camera/CameraParameter$PreviewResultKey;

    const-class v1, Ljava/lang/Integer;

    const-string v6, "com.oplus.preview.master_pipeline"

    .line 1158
    invoke-direct {v0, v6, v1, v3, v2}, Lcom/oplus/ocs/camera/CameraParameter$PreviewResultKey;-><init>(Ljava/lang/String;Ljava/lang/Class;Ljava/lang/Object;Lcom/oplus/ocs/camera/CameraParameter$1;)V

    sput-object v0, Lcom/oplus/ocs/camera/CameraParameter;->PREVIEW_RESULT_MASTER_PIPELINE:Lcom/oplus/ocs/camera/CameraParameter$PreviewResultKey;

    .line 1163
    new-instance v0, Lcom/oplus/ocs/camera/CameraParameter$PreviewResultKey;

    const-class v1, Ljava/lang/Integer;

    const-string v6, "com.oplus.preview.bracket_mode"

    .line 1164
    invoke-direct {v0, v6, v1, v3, v2}, Lcom/oplus/ocs/camera/CameraParameter$PreviewResultKey;-><init>(Ljava/lang/String;Ljava/lang/Class;Ljava/lang/Object;Lcom/oplus/ocs/camera/CameraParameter$1;)V

    sput-object v0, Lcom/oplus/ocs/camera/CameraParameter;->PREVIEW_RESULT_BRACKET_MODE:Lcom/oplus/ocs/camera/CameraParameter$PreviewResultKey;

    .line 1169
    new-instance v0, Lcom/oplus/ocs/camera/CameraParameter$PreviewResultKey;

    const-class v1, Ljava/lang/String;

    const-string v6, "com.oplus.preview.drawtext_bracket_mode"

    invoke-direct {v0, v6, v1, v2, v2}, Lcom/oplus/ocs/camera/CameraParameter$PreviewResultKey;-><init>(Ljava/lang/String;Ljava/lang/Class;Ljava/lang/Object;Lcom/oplus/ocs/camera/CameraParameter$1;)V

    sput-object v0, Lcom/oplus/ocs/camera/CameraParameter;->PREVIEW_RESULT_DRAWTEXT_BRACKET_MODE:Lcom/oplus/ocs/camera/CameraParameter$PreviewResultKey;

    .line 1175
    new-instance v0, Lcom/oplus/ocs/camera/CameraParameter$PreviewResultKey;

    const-class v1, Ljava/lang/String;

    const-string v6, "com.oplus.preview.drawtext_scene_mode"

    invoke-direct {v0, v6, v1, v2, v2}, Lcom/oplus/ocs/camera/CameraParameter$PreviewResultKey;-><init>(Ljava/lang/String;Ljava/lang/Class;Ljava/lang/Object;Lcom/oplus/ocs/camera/CameraParameter$1;)V

    sput-object v0, Lcom/oplus/ocs/camera/CameraParameter;->PREVIEW_RESULT_DRAWTEXT_SCENE_MODE:Lcom/oplus/ocs/camera/CameraParameter$PreviewResultKey;

    .line 1181
    new-instance v0, Lcom/oplus/ocs/camera/CameraParameter$PreviewResultKey;

    const-class v1, Ljava/lang/String;

    const-string v6, "com.oplus.preview.drawtext_feature_type"

    invoke-direct {v0, v6, v1, v2, v2}, Lcom/oplus/ocs/camera/CameraParameter$PreviewResultKey;-><init>(Ljava/lang/String;Ljava/lang/Class;Ljava/lang/Object;Lcom/oplus/ocs/camera/CameraParameter$1;)V

    sput-object v0, Lcom/oplus/ocs/camera/CameraParameter;->PREVIEW_RESULT_DRAWTEXT_FEATURE_TYPE:Lcom/oplus/ocs/camera/CameraParameter$PreviewResultKey;

    .line 1187
    new-instance v0, Lcom/oplus/ocs/camera/CameraParameter$PreviewResultKey;

    const-class v1, Ljava/lang/String;

    const-string v6, "com.oplus.preview.drawtext_hdr_type"

    invoke-direct {v0, v6, v1, v2, v2}, Lcom/oplus/ocs/camera/CameraParameter$PreviewResultKey;-><init>(Ljava/lang/String;Ljava/lang/Class;Ljava/lang/Object;Lcom/oplus/ocs/camera/CameraParameter$1;)V

    sput-object v0, Lcom/oplus/ocs/camera/CameraParameter;->PREVIEW_RESULT_DRAWTEXT_HDR_TYPE:Lcom/oplus/ocs/camera/CameraParameter$PreviewResultKey;

    .line 1193
    new-instance v0, Lcom/oplus/ocs/camera/CameraParameter$PreviewResultKey;

    const-class v1, Ljava/lang/String;

    const-string v6, "com.oplus.preview.asd"

    invoke-direct {v0, v6, v1, v2, v2}, Lcom/oplus/ocs/camera/CameraParameter$PreviewResultKey;-><init>(Ljava/lang/String;Ljava/lang/Class;Ljava/lang/Object;Lcom/oplus/ocs/camera/CameraParameter$1;)V

    sput-object v0, Lcom/oplus/ocs/camera/CameraParameter;->PREVIEW_RESULT_ASD:Lcom/oplus/ocs/camera/CameraParameter$PreviewResultKey;

    .line 1199
    new-instance v0, Lcom/oplus/ocs/camera/CameraParameter$PreviewResultKey;

    const-class v1, Ljava/lang/String;

    const-string v6, "com.oplus.preview.antibanding"

    invoke-direct {v0, v6, v1, v2, v2}, Lcom/oplus/ocs/camera/CameraParameter$PreviewResultKey;-><init>(Ljava/lang/String;Ljava/lang/Class;Ljava/lang/Object;Lcom/oplus/ocs/camera/CameraParameter$1;)V

    sput-object v0, Lcom/oplus/ocs/camera/CameraParameter;->PREVIEW_RESULT_ANTIBANDING:Lcom/oplus/ocs/camera/CameraParameter$PreviewResultKey;

    .line 1205
    new-instance v0, Lcom/oplus/ocs/camera/CameraParameter$PreviewResultKey;

    const-class v1, Ljava/lang/String;

    const-string v6, "com.oplus.preview.rectify"

    invoke-direct {v0, v6, v1, v2, v2}, Lcom/oplus/ocs/camera/CameraParameter$PreviewResultKey;-><init>(Ljava/lang/String;Ljava/lang/Class;Ljava/lang/Object;Lcom/oplus/ocs/camera/CameraParameter$1;)V

    sput-object v0, Lcom/oplus/ocs/camera/CameraParameter;->PREVIEW_RESULT_RECTIFY:Lcom/oplus/ocs/camera/CameraParameter$PreviewResultKey;

    .line 1211
    new-instance v0, Lcom/oplus/ocs/camera/CameraParameter$PreviewResultKey;

    const-class v1, Ljava/lang/String;

    const-string v6, "com.oplus.preview.pf"

    invoke-direct {v0, v6, v1, v2, v2}, Lcom/oplus/ocs/camera/CameraParameter$PreviewResultKey;-><init>(Ljava/lang/String;Ljava/lang/Class;Ljava/lang/Object;Lcom/oplus/ocs/camera/CameraParameter$1;)V

    sput-object v0, Lcom/oplus/ocs/camera/CameraParameter;->PREVIEW_RESULT_PF:Lcom/oplus/ocs/camera/CameraParameter$PreviewResultKey;

    .line 1217
    new-instance v0, Lcom/oplus/ocs/camera/CameraParameter$PreviewResultKey;

    const-class v1, Ljava/lang/String;

    const-string v6, "com.oplus.preview.lsd"

    invoke-direct {v0, v6, v1, v2, v2}, Lcom/oplus/ocs/camera/CameraParameter$PreviewResultKey;-><init>(Ljava/lang/String;Ljava/lang/Class;Ljava/lang/Object;Lcom/oplus/ocs/camera/CameraParameter$1;)V

    sput-object v0, Lcom/oplus/ocs/camera/CameraParameter;->PREVIEW_RESULT_LSD:Lcom/oplus/ocs/camera/CameraParameter$PreviewResultKey;

    .line 1223
    new-instance v0, Lcom/oplus/ocs/camera/CameraParameter$PreviewResultKey;

    const-class v1, Ljava/lang/String;

    const-string v6, "com.oplus.preview.rtb"

    invoke-direct {v0, v6, v1, v2, v2}, Lcom/oplus/ocs/camera/CameraParameter$PreviewResultKey;-><init>(Ljava/lang/String;Ljava/lang/Class;Ljava/lang/Object;Lcom/oplus/ocs/camera/CameraParameter$1;)V

    sput-object v0, Lcom/oplus/ocs/camera/CameraParameter;->PREVIEW_RESULT_RTB:Lcom/oplus/ocs/camera/CameraParameter$PreviewResultKey;

    .line 1229
    new-instance v0, Lcom/oplus/ocs/camera/CameraParameter$PreviewResultKey;

    const-class v1, Ljava/lang/String;

    const-string v6, "com.oplus.preview.aicolor"

    invoke-direct {v0, v6, v1, v2, v2}, Lcom/oplus/ocs/camera/CameraParameter$PreviewResultKey;-><init>(Ljava/lang/String;Ljava/lang/Class;Ljava/lang/Object;Lcom/oplus/ocs/camera/CameraParameter$1;)V

    sput-object v0, Lcom/oplus/ocs/camera/CameraParameter;->PREVIEW_RESULT_AICOLOR:Lcom/oplus/ocs/camera/CameraParameter$PreviewResultKey;

    .line 1235
    new-instance v0, Lcom/oplus/ocs/camera/CameraParameter$PreviewResultKey;

    const-class v1, Ljava/lang/String;

    const-string v6, "com.oplus.preview.hyperlapse"

    invoke-direct {v0, v6, v1, v2, v2}, Lcom/oplus/ocs/camera/CameraParameter$PreviewResultKey;-><init>(Ljava/lang/String;Ljava/lang/Class;Ljava/lang/Object;Lcom/oplus/ocs/camera/CameraParameter$1;)V

    sput-object v0, Lcom/oplus/ocs/camera/CameraParameter;->PREVIEW_RESULT_VIDEO_HYPERLAPSE:Lcom/oplus/ocs/camera/CameraParameter$PreviewResultKey;

    .line 1241
    new-instance v0, Lcom/oplus/ocs/camera/CameraParameter$PreviewResultKey;

    const-class v1, Ljava/lang/String;

    const-string v6, "com.oplus.preview.algo.visualization.key"

    invoke-direct {v0, v6, v1, v2, v2}, Lcom/oplus/ocs/camera/CameraParameter$PreviewResultKey;-><init>(Ljava/lang/String;Ljava/lang/Class;Ljava/lang/Object;Lcom/oplus/ocs/camera/CameraParameter$1;)V

    sput-object v0, Lcom/oplus/ocs/camera/CameraParameter;->KEY_ALGO_VISUALIZATION_KEY:Lcom/oplus/ocs/camera/CameraParameter$PreviewResultKey;

    .line 1247
    new-instance v0, Lcom/oplus/ocs/camera/CameraParameter$PreviewResultKey;

    const-class v1, Ljava/lang/String;

    const-string v6, "com.oplus.preview.algo.visualization.value"

    invoke-direct {v0, v6, v1, v2, v2}, Lcom/oplus/ocs/camera/CameraParameter$PreviewResultKey;-><init>(Ljava/lang/String;Ljava/lang/Class;Ljava/lang/Object;Lcom/oplus/ocs/camera/CameraParameter$1;)V

    sput-object v0, Lcom/oplus/ocs/camera/CameraParameter;->KEY_ALGO_VISUALIZATION_VALUE:Lcom/oplus/ocs/camera/CameraParameter$PreviewResultKey;

    .line 1253
    new-instance v0, Lcom/oplus/ocs/camera/CameraParameter$PreviewResultKey;

    const-class v1, Ljava/lang/Integer;

    const-string v6, "com.oplus.preview.mfsr_frame_count"

    .line 1254
    invoke-direct {v0, v6, v1, v3, v2}, Lcom/oplus/ocs/camera/CameraParameter$PreviewResultKey;-><init>(Ljava/lang/String;Ljava/lang/Class;Ljava/lang/Object;Lcom/oplus/ocs/camera/CameraParameter$1;)V

    sput-object v0, Lcom/oplus/ocs/camera/CameraParameter;->PREVIEW_RESULT_MFSR_FRAME_COUNT:Lcom/oplus/ocs/camera/CameraParameter$PreviewResultKey;

    .line 1259
    new-instance v0, Lcom/oplus/ocs/camera/CameraParameter$PreviewResultKey;

    const-class v1, Ljava/lang/Integer;

    const-string v6, "com.oplus.preview.support_zoom_feature"

    .line 1260
    invoke-direct {v0, v6, v1, v3, v2}, Lcom/oplus/ocs/camera/CameraParameter$PreviewResultKey;-><init>(Ljava/lang/String;Ljava/lang/Class;Ljava/lang/Object;Lcom/oplus/ocs/camera/CameraParameter$1;)V

    sput-object v0, Lcom/oplus/ocs/camera/CameraParameter;->PREVIEW_RESULT_SUPPORT_ZOOM_FEATURE:Lcom/oplus/ocs/camera/CameraParameter$PreviewResultKey;

    .line 1265
    new-instance v0, Lcom/oplus/ocs/camera/CameraParameter$PreviewResultKey;

    const-class v1, Ljava/lang/Boolean;

    const-string v6, "com.oplus.preview.ai_shutter"

    .line 1266
    invoke-direct {v0, v6, v1, v4, v2}, Lcom/oplus/ocs/camera/CameraParameter$PreviewResultKey;-><init>(Ljava/lang/String;Ljava/lang/Class;Ljava/lang/Object;Lcom/oplus/ocs/camera/CameraParameter$1;)V

    sput-object v0, Lcom/oplus/ocs/camera/CameraParameter;->PREVIEW_RESULT_AI_SHUTTER:Lcom/oplus/ocs/camera/CameraParameter$PreviewResultKey;

    .line 1271
    new-instance v0, Lcom/oplus/ocs/camera/CameraParameter$PreviewResultKey;

    const-class v1, Ljava/lang/Integer;

    const-string v6, "com.oplus.preview.rtb_msg"

    .line 1272
    invoke-direct {v0, v6, v1, v8, v2}, Lcom/oplus/ocs/camera/CameraParameter$PreviewResultKey;-><init>(Ljava/lang/String;Ljava/lang/Class;Ljava/lang/Object;Lcom/oplus/ocs/camera/CameraParameter$1;)V

    sput-object v0, Lcom/oplus/ocs/camera/CameraParameter;->PREVIEW_RESULT_BOKEN_STATE:Lcom/oplus/ocs/camera/CameraParameter$PreviewResultKey;

    .line 1277
    new-instance v0, Lcom/oplus/ocs/camera/CameraParameter$PreviewResultKey;

    const-class v1, Ljava/lang/Integer;

    const-string v6, "com.oplus.preview.asd_scene_icon"

    .line 1278
    invoke-direct {v0, v6, v1, v3, v2}, Lcom/oplus/ocs/camera/CameraParameter$PreviewResultKey;-><init>(Ljava/lang/String;Ljava/lang/Class;Ljava/lang/Object;Lcom/oplus/ocs/camera/CameraParameter$1;)V

    sput-object v0, Lcom/oplus/ocs/camera/CameraParameter;->PREVIEW_RESULT_AI_SCENE:Lcom/oplus/ocs/camera/CameraParameter$PreviewResultKey;

    .line 1283
    new-instance v0, Lcom/oplus/ocs/camera/CameraParameter$PreviewResultKey;

    const-class v1, Ljava/lang/Integer;

    const-string v6, "com.oplus.preview.asd_tuning_scene"

    .line 1284
    invoke-direct {v0, v6, v1, v3, v2}, Lcom/oplus/ocs/camera/CameraParameter$PreviewResultKey;-><init>(Ljava/lang/String;Ljava/lang/Class;Ljava/lang/Object;Lcom/oplus/ocs/camera/CameraParameter$1;)V

    sput-object v0, Lcom/oplus/ocs/camera/CameraParameter;->PREVIEW_RESULT_TUNING_SCENE:Lcom/oplus/ocs/camera/CameraParameter$PreviewResultKey;

    .line 1289
    new-instance v0, Lcom/oplus/ocs/camera/CameraParameter$PreviewResultKey;

    const-class v1, Ljava/lang/Integer;

    const-string v6, "com.oplus.preview.asd_hdr_scope"

    .line 1290
    invoke-direct {v0, v6, v1, v3, v2}, Lcom/oplus/ocs/camera/CameraParameter$PreviewResultKey;-><init>(Ljava/lang/String;Ljava/lang/Class;Ljava/lang/Object;Lcom/oplus/ocs/camera/CameraParameter$1;)V

    sput-object v0, Lcom/oplus/ocs/camera/CameraParameter;->PREVIEW_RESULT_HDR_SCOPE:Lcom/oplus/ocs/camera/CameraParameter$PreviewResultKey;

    .line 1295
    new-instance v0, Lcom/oplus/ocs/camera/CameraParameter$PreviewResultKey;

    const-class v1, Ljava/lang/Integer;

    const-string v6, "com.oplus.preview.sat_master_camera_id"

    .line 1296
    invoke-direct {v0, v6, v1, v3, v2}, Lcom/oplus/ocs/camera/CameraParameter$PreviewResultKey;-><init>(Ljava/lang/String;Ljava/lang/Class;Ljava/lang/Object;Lcom/oplus/ocs/camera/CameraParameter$1;)V

    sput-object v0, Lcom/oplus/ocs/camera/CameraParameter;->PREVIEW_RESULT_MASTER_CAMERA_ID:Lcom/oplus/ocs/camera/CameraParameter$PreviewResultKey;

    .line 1301
    new-instance v0, Lcom/oplus/ocs/camera/CameraParameter$PreviewResultKey;

    const-class v1, Ljava/lang/Integer;

    const-string v6, "com.oplus.preview.sat_active_map"

    .line 1302
    invoke-direct {v0, v6, v1, v3, v2}, Lcom/oplus/ocs/camera/CameraParameter$PreviewResultKey;-><init>(Ljava/lang/String;Ljava/lang/Class;Ljava/lang/Object;Lcom/oplus/ocs/camera/CameraParameter$1;)V

    sput-object v0, Lcom/oplus/ocs/camera/CameraParameter;->PREVIEW_RESULT_ACTIVE_MAP:Lcom/oplus/ocs/camera/CameraParameter$PreviewResultKey;

    .line 1307
    new-instance v0, Lcom/oplus/ocs/camera/CameraParameter$PreviewResultKey;

    const-class v1, Ljava/lang/Integer;

    const-string v6, "com.oplus.preview.lsd_is_dirty"

    .line 1308
    invoke-direct {v0, v6, v1, v3, v2}, Lcom/oplus/ocs/camera/CameraParameter$PreviewResultKey;-><init>(Ljava/lang/String;Ljava/lang/Class;Ljava/lang/Object;Lcom/oplus/ocs/camera/CameraParameter$1;)V

    sput-object v0, Lcom/oplus/ocs/camera/CameraParameter;->PREVIEW_RESULT_LENS_DIRTY:Lcom/oplus/ocs/camera/CameraParameter$PreviewResultKey;

    .line 1313
    new-instance v0, Lcom/oplus/ocs/camera/CameraParameter$PreviewResultKey;

    const-class v1, Ljava/lang/Integer;

    const-string v6, "com.oplus.preview.gesture.action.type"

    .line 1314
    invoke-direct {v0, v6, v1, v3, v2}, Lcom/oplus/ocs/camera/CameraParameter$PreviewResultKey;-><init>(Ljava/lang/String;Ljava/lang/Class;Ljava/lang/Object;Lcom/oplus/ocs/camera/CameraParameter$1;)V

    sput-object v0, Lcom/oplus/ocs/camera/CameraParameter;->PREVIEW_RESULT_GESTURE_ACTION_TYPE:Lcom/oplus/ocs/camera/CameraParameter$PreviewResultKey;

    .line 1319
    new-instance v0, Lcom/oplus/ocs/camera/CameraParameter$PreviewResultKey;

    const-class v1, Ljava/lang/Integer;

    const-string v6, "com.oplus.preview.video_eis_on"

    .line 1320
    invoke-direct {v0, v6, v1, v3, v2}, Lcom/oplus/ocs/camera/CameraParameter$PreviewResultKey;-><init>(Ljava/lang/String;Ljava/lang/Class;Ljava/lang/Object;Lcom/oplus/ocs/camera/CameraParameter$1;)V

    sput-object v0, Lcom/oplus/ocs/camera/CameraParameter;->PREVIEW_RESULT_VIDEO_EIS:Lcom/oplus/ocs/camera/CameraParameter$PreviewResultKey;

    .line 1325
    new-instance v0, Lcom/oplus/ocs/camera/CameraParameter$PreviewResultKey;

    const-class v1, Ljava/lang/Integer;

    const-string v6, "com.oplus.preview.frame_id"

    .line 1326
    invoke-direct {v0, v6, v1, v3, v2}, Lcom/oplus/ocs/camera/CameraParameter$PreviewResultKey;-><init>(Ljava/lang/String;Ljava/lang/Class;Ljava/lang/Object;Lcom/oplus/ocs/camera/CameraParameter$1;)V

    sput-object v0, Lcom/oplus/ocs/camera/CameraParameter;->PREVIEW_RESULT_FRAME_ID:Lcom/oplus/ocs/camera/CameraParameter$PreviewResultKey;

    .line 1331
    new-instance v0, Lcom/oplus/ocs/camera/CameraParameter$PreviewResultKey;

    const-class v1, Ljava/lang/String;

    const-string v6, "com.oplus.result.camera.type"

    invoke-direct {v0, v6, v1, v2, v2}, Lcom/oplus/ocs/camera/CameraParameter$PreviewResultKey;-><init>(Ljava/lang/String;Ljava/lang/Class;Ljava/lang/Object;Lcom/oplus/ocs/camera/CameraParameter$1;)V

    sput-object v0, Lcom/oplus/ocs/camera/CameraParameter;->PREVIEW_RESULT_CAMERA_TYPE:Lcom/oplus/ocs/camera/CameraParameter$PreviewResultKey;

    .line 1337
    new-instance v0, Lcom/oplus/ocs/camera/CameraParameter$PreviewResultKey;

    const-class v1, Ljava/lang/String;

    const-string v6, "com.oplus.result.camera.mode"

    invoke-direct {v0, v6, v1, v2, v2}, Lcom/oplus/ocs/camera/CameraParameter$PreviewResultKey;-><init>(Ljava/lang/String;Ljava/lang/Class;Ljava/lang/Object;Lcom/oplus/ocs/camera/CameraParameter$1;)V

    sput-object v0, Lcom/oplus/ocs/camera/CameraParameter;->PREVIEW_RESULT_CAMERA_MODE:Lcom/oplus/ocs/camera/CameraParameter$PreviewResultKey;

    .line 1344
    new-instance v0, Lcom/oplus/ocs/camera/CameraParameter$PreviewResultKey;

    const-class v1, Landroid/media/Image;

    const-string v6, "com.oplus.result.image_buffer_image"

    invoke-direct {v0, v6, v1, v2, v2}, Lcom/oplus/ocs/camera/CameraParameter$PreviewResultKey;-><init>(Ljava/lang/String;Ljava/lang/Class;Ljava/lang/Object;Lcom/oplus/ocs/camera/CameraParameter$1;)V

    sput-object v0, Lcom/oplus/ocs/camera/CameraParameter;->PREVIEW_RESULT_CAMERA_IMAGE:Lcom/oplus/ocs/camera/CameraParameter$PreviewResultKey;

    .line 1351
    new-instance v0, Lcom/oplus/ocs/camera/CameraParameter$PreviewResultKey;

    const-class v1, Landroid/hardware/HardwareBuffer;

    const-string v6, "com.oplus.result.image_buffer_hardware_buffer"

    invoke-direct {v0, v6, v1, v2, v2}, Lcom/oplus/ocs/camera/CameraParameter$PreviewResultKey;-><init>(Ljava/lang/String;Ljava/lang/Class;Ljava/lang/Object;Lcom/oplus/ocs/camera/CameraParameter$1;)V

    sput-object v0, Lcom/oplus/ocs/camera/CameraParameter;->PREVIEW_RESULT_HARDWARE_BUFFER:Lcom/oplus/ocs/camera/CameraParameter$PreviewResultKey;

    .line 1357
    new-instance v0, Lcom/oplus/ocs/camera/CameraParameter$PreviewResultKey;

    const-class v1, Ljava/lang/Long;

    const-string v6, "com.oplus.result.image_buffer_time_stamp"

    .line 1358
    invoke-direct {v0, v6, v1, v5, v2}, Lcom/oplus/ocs/camera/CameraParameter$PreviewResultKey;-><init>(Ljava/lang/String;Ljava/lang/Class;Ljava/lang/Object;Lcom/oplus/ocs/camera/CameraParameter$1;)V

    sput-object v0, Lcom/oplus/ocs/camera/CameraParameter;->PREVIEW_RESULT_IMAGE_TIME_STAMP:Lcom/oplus/ocs/camera/CameraParameter$PreviewResultKey;

    .line 1363
    new-instance v0, Lcom/oplus/ocs/camera/CameraParameter$PreviewResultKey;

    const-class v1, Ljava/lang/Boolean;

    const-string v5, "com.oplus.result.image_buffer_is_valid"

    .line 1364
    invoke-direct {v0, v5, v1, v4, v2}, Lcom/oplus/ocs/camera/CameraParameter$PreviewResultKey;-><init>(Ljava/lang/String;Ljava/lang/Class;Ljava/lang/Object;Lcom/oplus/ocs/camera/CameraParameter$1;)V

    sput-object v0, Lcom/oplus/ocs/camera/CameraParameter;->PREVIEW_RESULT_IMAGE_IS_VALID:Lcom/oplus/ocs/camera/CameraParameter$PreviewResultKey;

    .line 1369
    new-instance v0, Lcom/oplus/ocs/camera/CameraParameter$PreviewResultKey;

    const-class v1, Ljava/lang/Integer;

    const-string v4, "com.oplus.preview.camera_id"

    .line 1370
    invoke-direct {v0, v4, v1, v8, v2}, Lcom/oplus/ocs/camera/CameraParameter$PreviewResultKey;-><init>(Ljava/lang/String;Ljava/lang/Class;Ljava/lang/Object;Lcom/oplus/ocs/camera/CameraParameter$1;)V

    sput-object v0, Lcom/oplus/ocs/camera/CameraParameter;->PREVIEW_RESULT_CAMERA_ID:Lcom/oplus/ocs/camera/CameraParameter$PreviewResultKey;

    .line 1375
    new-instance v0, Lcom/oplus/ocs/camera/CameraParameter$PreviewResultKey;

    const-class v1, Ljava/lang/Integer;

    const-string v4, "com.oplus.preview.ais_state"

    .line 1376
    invoke-direct {v0, v4, v1, v3, v2}, Lcom/oplus/ocs/camera/CameraParameter$PreviewResultKey;-><init>(Ljava/lang/String;Ljava/lang/Class;Ljava/lang/Object;Lcom/oplus/ocs/camera/CameraParameter$1;)V

    sput-object v0, Lcom/oplus/ocs/camera/CameraParameter;->PREVIEW_RESULT_AIS_STATE:Lcom/oplus/ocs/camera/CameraParameter$PreviewResultKey;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 43
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
