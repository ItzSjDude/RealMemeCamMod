.class public abstract Lcom/oplus/camera/capmode/w;
.super Lcom/oplus/camera/capmode/BaseMode;
.source "VideoMode.java"

# interfaces
.implements Lcom/oplus/camera/capmode/x$f;
.implements Lcom/oplus/camera/capmode/x$g;
.implements Lcom/oplus/camera/capmode/x$h;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/oplus/camera/capmode/w$a;,
        Lcom/oplus/camera/capmode/w$b;,
        Lcom/oplus/camera/capmode/w$c;
    }
.end annotation


# static fields
.field private static final APS_VIDEO_EIS:Ljava/lang/String; = "preview_video_eis"

.field private static final APS_VIDEO_SUPER_EIS:Ljava/lang/String; = "preview_video_supereis"

.field private static final AUDIO_BITRATE_ENHANCE:I = 0x4e200

.field private static final BRIGHTNESS_ALPHA_END:F = 0.0f

.field private static final BRIGHTNESS_ALPHA_START:F = 1.0f

.field private static final BRIGHTNESS_ANIM_DELAY_FIRST_STEP:I = 0x2710

.field private static final BRIGHTNESS_ANIM_DELAY_SECOND_STEP:I = 0x493e0

.field private static final BRIGHTNESS_ANIM_DURATION:I = 0x2710

.field private static final BRIGHTNESS_MODE_EXPONENTIAL:I = 0x1

.field private static final BRIGHTNESS_MODE_LINEAR:I = 0x0

.field private static final CAMERA_UNIT_RECORDING_STOP:I = 0x4

.field private static final CHECK_SD_SPACE_DELAY:I = 0x1388

.field private static final CIF_AUDIO_RATE_SCALE:I = 0x8

.field private static final CONTENT_VALUE_SIZE:I = 0x7

.field private static final DEFAULT_EXPONENTIAL_BRIGHTNESS:I = 0xbf

.field private static final DEFAULT_LINEAR_BRIGHTNESS:I = 0x82

.field protected static final DEFAULT_VIDEO_QUALITY:I = 0x4

.field private static final ERR_VIDEO_MALFORMED:I = -0x3ef

.field public static final KEY_IS_CAMERA_RECORDING:Ljava/lang/String; = "oplus_is_camera_recording"

.field public static final KEY_RECORD_FORBID:Ljava/lang/String; = "record_forbid"

.field private static final MAX_ADJUST_STEP_FOR_BRIGHTNESS:F = 20.0f

.field private static final MAX_VIDEO_SIZE:J = 0x100000000L

.field private static final MIRROR_TYPE_HORIZONTAL:I = 0x2

.field private static final MIRROR_TYPE_VERTICAL:I = 0x1

.field private static final MSG_CLEANUP_EMPTY_FILE:I = 0x4

.field private static final MSG_CODE_CHECK_SD_SPACE:I = 0x2

.field private static final MSG_CODE_ENABLE_SHUTTER_BUTTON:I = 0x4

.field private static final MSG_CODE_ENABLE_VIDEO_BUTTON:I = 0x3

.field private static final MSG_CODE_FINISH_AFTER_STOP:I = 0x9

.field private static final MSG_CODE_ON_START_ERROR:I = 0x5

.field private static final MSG_CODE_START_LOWER_BRIGHTNESS_FIRST_STEP:I = 0x6

.field private static final MSG_CODE_START_LOWER_BRIGHTNESS_SECOND_STEP:I = 0xd

.field private static final MSG_CODE_START_RECORDING:I = 0x7

.field private static final MSG_CODE_UPDATE_RECORD_TIME:I = 0x1

.field private static final MSG_DELETE_VIDEO_FILE:I = 0x3

.field private static final MSG_HIDE_HINT_VIEW:I = 0x8

.field private static final MSG_HIDE_HINT_VIEW_DELAY:I = 0xbb8

.field protected static final MSG_NO_MOVEMENT_DETECT:I = 0xc

.field private static final MSG_OPEN_RECORD_SIG:I = 0xc

.field private static final MSG_PREPARE_VIDEO_SURFACE:I = 0x6

.field private static final MSG_RECORD_START:I = 0x1

.field private static final MSG_RECORD_STOP:I = 0x2

.field protected static final MSG_SHOW_LONG_TIME_RECORDING_TEMPERATURE_TOAST:I = 0xb

.field private static final MSG_STOP_SHORT_VIDEO:I = 0x5

.field protected static final MSG_STOP_SHORT_VIDEO_DELAY:I = 0xa

.field private static final MTK_OTHER_VIDEO_BIT_RATE_REDUCE_SCALE:I = 0x4

.field private static final MTK_VIDEO_FRAME_RATE:I = 0x1e

.field public static final PREVIEW_FPS_120:I = 0x78

.field public static final PREVIEW_FPS_HIGH:I = 0x3c

.field public static final PREVIEW_FPS_LOW:I = 0x14

.field public static final PREVIEW_FPS_NORMAL:I = 0x1e

.field private static final RECORDING_MIN_TIME:I = 0x3e8

.field public static final RECORDING_STOP_COUNT_DOWN_SECONDS:I = 0x5

.field private static final RECORD_STARTED:I = 0x0

.field private static final RECORD_STARTING:I = 0x1

.field private static final RECORD_STOPPED:I = 0x2

.field private static final RECORD_STOPPING:I = 0x3

.field private static final RECRDSIG_TIMEOUT_DELAY:I = 0x1388

.field private static final SECOND_BRIGHTNESS_LIMIT:I = 0xb3

.field private static final TAG:Ljava/lang/String; = "VideoMode"

.field private static final TIME_INDICATOR_BLINK_SPACE:I = 0x6

.field private static final TIME_OPEN_RECORD_SIG_DELAY:I = 0x12c

.field private static final TIME_STOP_SOUND_DELAY:I = 0x64

.field private static final TIME_VIDEO_STOP_DELAY:I = 0x3e8

.field private static final UPDATE_RECORD_TIME_DELAY:I = 0x51

.field private static final VIDEO_1080P_BIT_RATE:I = 0x1036640

.field public static final VIDEO_1080P_HEIGHT:I = 0x438

.field public static final VIDEO_1080P_WIDTH:I = 0x780

.field private static final VIDEO_480P_HEIGHT:I = 0x1e0

.field private static final VIDEO_480P_WIDTH:I = 0x2d0

.field private static final VIDEO_4K_AUDIO_BIT_RATE:I = 0x26160

.field private static final VIDEO_4K_AUDIO_CHANNELS:I = 0x2

.field private static final VIDEO_4K_AUDIO_SAMPLE_RATE:I = 0xbb80

.field private static final VIDEO_4K_BIT_RATE:I = 0x5f5e100

.field public static final VIDEO_4K_FRAME_HEIGHT:I = 0x870

.field public static final VIDEO_4K_FRAME_WIDTH:I = 0xf00

.field private static final VIDEO_720P_BIT_RATE:I = 0x895440

.field public static final VIDEO_720P_HEIGHT:I = 0x2d0

.field public static final VIDEO_720P_WIDTH:I = 0x500

.field private static final VIDEO_8K_BIT_RATE:I = 0x6422c40

.field public static final VIDEO_8K_FRAME_HEIGHT:I = 0x10e0

.field public static final VIDEO_8K_FRAME_WIDTH:I = 0x1e00

.field private static final VIDEO_BIT_RATE_REDUCE_SCALE:I = 0x2

.field private static final VIDEO_BUTTON_DELAY:I = 0xc8

.field private static final VIDEO_CIF_BIT_RATE:I = 0xafc80

.field private static final VIDEO_CIF_HEIGHT:I = 0x120

.field private static final VIDEO_CIF_WIDTH:I = 0x160

.field public static final VIDEO_DEFAULT_FPS:Ljava/lang/String; = "30"

.field public static final VIDEO_FRAME_DEFAULT_USAGE:J = 0x80L

.field private static final VIDEO_QCIF_BIT_RATE:I = 0x2ee00

.field private static final VIDEO_QCIF_HEIGHT:I = 0x90

.field private static final VIDEO_QCIF_WIDTH:I = 0xb0

.field private static final VIDEO_SURFACE_IDLE:I = 0x0

.field private static final VIDEO_SURFACE_PREPARED:I = 0x2

.field private static final VIDEO_SURFACE_PREPARING:I = 0x1

.field private static final WAIT_FOR_VIDEO_DURATION:J = 0x14L


# instance fields
.field protected mAiEnhanceSceneChangeCount:I

.field protected mAiEnhanceSceneEnd:I

.field protected mAiEnhanceSceneStart:I

.field private mBrightnessAnimationListener:Lcom/oplus/camera/capmode/w$a;

.field private mBrightnessAnimator:Landroid/animation/ValueAnimator;

.field private mCameraErrorAlertDialogBuilder:Lcom/coui/appcompat/dialog/app/b;

.field private mCameraErrorPositiveButtonListener:Landroid/content/DialogInterface$OnClickListener;

.field private mCameraRecordingCallback:Lcom/oplus/ocs/camera/CameraRecordingCallback;

.field private mCheckStorageTask:Landroid/os/AsyncTask;

.field private mCount:I

.field protected mCurrentVideoFilename:Ljava/lang/String;

.field protected mCurrentVideoUri:Landroid/net/Uri;

.field protected mCurrentVideoValues:Landroid/content/ContentValues;

.field protected mDcsCCT:I

.field protected mDcsExp:J

.field protected mDcsIso:I

.field protected mDcsLux:F

.field protected mEndType:Ljava/lang/String;

.field private mFaceCountOnStop:I

.field protected mFileName:Ljava/lang/String;

.field protected mHandler:Landroid/os/Handler;

.field private mLastPausingTime:J

.field private mMaxVideoDurationInMs:I

.field private volatile mMediaRecorderState:I

.field private mNoiseFilter:Ljava/lang/String;

.field private mPGDialog:Landroidx/appcompat/app/f;

.field private mPauseClickTimes:I

.field private mPictureTakenTime:J

.field private final mPrepareVideoSurface:Landroid/os/ConditionVariable;

.field private mPreviewConfig:Lcom/oplus/camera/aps/util/AlgoSwitchConfig$PreviewConfig;

.field private mPreviewOkTime:J

.field private mPreviewVideoCostTime:J

.field protected mProfile:Landroid/media/CamcorderProfile;

.field private final mRecordFileNameChange:Landroid/os/ConditionVariable;

.field private mRecordHandler:Landroid/os/Handler;

.field private mRecordHandlerThread:Landroid/os/HandlerThread;

.field private final mRecordSig:Landroid/os/ConditionVariable;

.field protected mRecordingEndTemperature:F

.field protected mRecordingStartTemperature:F

.field private mRecordingStartTime:J

.field protected mRecordingTotalTime:J

.field protected mResouces:Landroid/content/res/Resources;

.field private mResumePauseRecordingTotalTime:J

.field private mShutterType:Ljava/lang/String;

.field private mSoundType:Ljava/lang/String;

.field private mStartRecordingFaceCount:I

.field private mStartRecordingOrientation:I

.field private mTotalPausingTime:J

.field private mVideoAeAfLock:Z

.field protected mVideoFileDescriptor:Landroid/os/ParcelFileDescriptor;

.field protected mVideoFilename:Ljava/lang/String;

.field protected mVideoOrientation:I

.field protected mVideoRecorder:Lcom/oplus/camera/capmode/x;

.field private final mVideoRecorderSig:Ljava/lang/Object;

.field private mVideoSavePath:Ljava/lang/String;

.field protected mVideoSizeType:Ljava/lang/String;

.field protected mVideoSurface:Landroid/view/Surface;

.field protected mVideoSurfaceLock:Ljava/lang/Object;

.field private volatile mVideoSurfaceState:I

.field private mVideoWatermarkOrientation:I

.field public mWaitRecordStarted:Landroid/os/ConditionVariable;

.field private mbBinauralRecordEnable:Z

.field private mbBroadcastPauseMusic:Z

.field private mbEisHalCache:Z

.field private mbGetDcsData:Z

.field protected mbHasDragIntelligentView:Z

.field protected mbLowBatteryDisabled:Z

.field private mbMediaLimitProcess:Z

.field private mbPictureTakenDuringRecord:Z

.field protected mbPipelineEnable:Z

.field private mbRecordAudio:Z

.field private mbShowHint:Z

.field private mbShowRecordingIndicator:Z

.field private mbStartFailue:Z

.field protected mbStopVideoFail:Z

.field private mbVideoFrameInAPS:Z


# direct methods
.method public constructor <init>(Landroid/app/Activity;Lcom/oplus/camera/capmode/a;Lcom/oplus/camera/ui/CameraUIInterface;Lcom/oplus/camera/ui/preview/a/t;)V
    .locals 4

    .line 354
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/oplus/camera/capmode/BaseMode;-><init>(Landroid/app/Activity;Lcom/oplus/camera/capmode/a;Lcom/oplus/camera/ui/CameraUIInterface;Lcom/oplus/camera/ui/preview/a/t;)V

    .line 256
    new-instance p2, Landroid/os/ConditionVariable;

    invoke-direct {p2}, Landroid/os/ConditionVariable;-><init>()V

    iput-object p2, p0, Lcom/oplus/camera/capmode/w;->mRecordSig:Landroid/os/ConditionVariable;

    .line 257
    new-instance p2, Landroid/os/ConditionVariable;

    invoke-direct {p2}, Landroid/os/ConditionVariable;-><init>()V

    iput-object p2, p0, Lcom/oplus/camera/capmode/w;->mPrepareVideoSurface:Landroid/os/ConditionVariable;

    .line 260
    new-instance p2, Landroid/os/ConditionVariable;

    const/4 p3, 0x1

    invoke-direct {p2, p3}, Landroid/os/ConditionVariable;-><init>(Z)V

    iput-object p2, p0, Lcom/oplus/camera/capmode/w;->mRecordFileNameChange:Landroid/os/ConditionVariable;

    .line 262
    new-instance p2, Ljava/lang/Object;

    invoke-direct {p2}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Lcom/oplus/camera/capmode/w;->mVideoRecorderSig:Ljava/lang/Object;

    .line 264
    new-instance p2, Landroid/os/ConditionVariable;

    invoke-direct {p2}, Landroid/os/ConditionVariable;-><init>()V

    iput-object p2, p0, Lcom/oplus/camera/capmode/w;->mWaitRecordStarted:Landroid/os/ConditionVariable;

    const/4 p2, 0x0

    .line 266
    iput-object p2, p0, Lcom/oplus/camera/capmode/w;->mResouces:Landroid/content/res/Resources;

    .line 267
    iput-object p2, p0, Lcom/oplus/camera/capmode/w;->mHandler:Landroid/os/Handler;

    const-string p4, "video_size_1080p"

    .line 268
    iput-object p4, p0, Lcom/oplus/camera/capmode/w;->mVideoSizeType:Ljava/lang/String;

    const-wide/16 v0, 0x0

    .line 269
    iput-wide v0, p0, Lcom/oplus/camera/capmode/w;->mRecordingTotalTime:J

    .line 270
    iput-object p2, p0, Lcom/oplus/camera/capmode/w;->mProfile:Landroid/media/CamcorderProfile;

    .line 271
    iput-object p2, p0, Lcom/oplus/camera/capmode/w;->mVideoSurface:Landroid/view/Surface;

    .line 272
    new-instance p4, Ljava/lang/Object;

    invoke-direct {p4}, Ljava/lang/Object;-><init>()V

    iput-object p4, p0, Lcom/oplus/camera/capmode/w;->mVideoSurfaceLock:Ljava/lang/Object;

    .line 273
    iput-object p2, p0, Lcom/oplus/camera/capmode/w;->mVideoRecorder:Lcom/oplus/camera/capmode/x;

    const-string p4, "normal"

    .line 274
    iput-object p4, p0, Lcom/oplus/camera/capmode/w;->mEndType:Ljava/lang/String;

    const/high16 p4, -0x40800000    # -1.0f

    .line 275
    iput p4, p0, Lcom/oplus/camera/capmode/w;->mRecordingStartTemperature:F

    .line 276
    iput p4, p0, Lcom/oplus/camera/capmode/w;->mRecordingEndTemperature:F

    const/4 p4, 0x0

    .line 277
    iput-boolean p4, p0, Lcom/oplus/camera/capmode/w;->mbStopVideoFail:Z

    const/4 v2, 0x0

    .line 278
    iput v2, p0, Lcom/oplus/camera/capmode/w;->mDcsLux:F

    .line 279
    iput p4, p0, Lcom/oplus/camera/capmode/w;->mDcsCCT:I

    .line 280
    iput p4, p0, Lcom/oplus/camera/capmode/w;->mDcsIso:I

    .line 281
    iput-wide v0, p0, Lcom/oplus/camera/capmode/w;->mDcsExp:J

    .line 282
    iput-boolean p4, p0, Lcom/oplus/camera/capmode/w;->mbPipelineEnable:Z

    .line 283
    iput p4, p0, Lcom/oplus/camera/capmode/w;->mAiEnhanceSceneStart:I

    .line 284
    iput p4, p0, Lcom/oplus/camera/capmode/w;->mAiEnhanceSceneEnd:I

    .line 285
    iput p4, p0, Lcom/oplus/camera/capmode/w;->mAiEnhanceSceneChangeCount:I

    const-string v2, ""

    .line 290
    iput-object v2, p0, Lcom/oplus/camera/capmode/w;->mFileName:Ljava/lang/String;

    .line 291
    iput-object p2, p0, Lcom/oplus/camera/capmode/w;->mCurrentVideoUri:Landroid/net/Uri;

    .line 292
    iput-object p2, p0, Lcom/oplus/camera/capmode/w;->mCurrentVideoValues:Landroid/content/ContentValues;

    .line 293
    iput p4, p0, Lcom/oplus/camera/capmode/w;->mVideoOrientation:I

    .line 294
    iput-boolean p4, p0, Lcom/oplus/camera/capmode/w;->mbHasDragIntelligentView:Z

    .line 295
    iput-object p2, p0, Lcom/oplus/camera/capmode/w;->mVideoFileDescriptor:Landroid/os/ParcelFileDescriptor;

    .line 296
    iput-boolean p4, p0, Lcom/oplus/camera/capmode/w;->mbLowBatteryDisabled:Z

    .line 298
    iput-object p2, p0, Lcom/oplus/camera/capmode/w;->mRecordHandler:Landroid/os/Handler;

    .line 299
    iput-object p2, p0, Lcom/oplus/camera/capmode/w;->mRecordHandlerThread:Landroid/os/HandlerThread;

    .line 301
    iput-object p2, p0, Lcom/oplus/camera/capmode/w;->mVideoSavePath:Ljava/lang/String;

    .line 302
    iput-object v2, p0, Lcom/oplus/camera/capmode/w;->mSoundType:Ljava/lang/String;

    .line 303
    iput-object v2, p0, Lcom/oplus/camera/capmode/w;->mNoiseFilter:Ljava/lang/String;

    .line 305
    iput p4, p0, Lcom/oplus/camera/capmode/w;->mCount:I

    const/4 v3, -0x1

    .line 306
    iput v3, p0, Lcom/oplus/camera/capmode/w;->mMaxVideoDurationInMs:I

    const/4 v3, 0x2

    .line 307
    iput v3, p0, Lcom/oplus/camera/capmode/w;->mMediaRecorderState:I

    .line 309
    iput-boolean p4, p0, Lcom/oplus/camera/capmode/w;->mbBroadcastPauseMusic:Z

    .line 310
    iput-boolean p3, p0, Lcom/oplus/camera/capmode/w;->mbShowRecordingIndicator:Z

    .line 311
    iput-boolean p3, p0, Lcom/oplus/camera/capmode/w;->mbRecordAudio:Z

    .line 312
    iput-boolean p4, p0, Lcom/oplus/camera/capmode/w;->mbShowHint:Z

    .line 313
    iput-boolean p4, p0, Lcom/oplus/camera/capmode/w;->mbVideoFrameInAPS:Z

    .line 314
    iput-boolean p4, p0, Lcom/oplus/camera/capmode/w;->mbStartFailue:Z

    .line 315
    iput-wide v0, p0, Lcom/oplus/camera/capmode/w;->mTotalPausingTime:J

    .line 316
    iput-wide v0, p0, Lcom/oplus/camera/capmode/w;->mLastPausingTime:J

    .line 317
    iput-wide v0, p0, Lcom/oplus/camera/capmode/w;->mRecordingStartTime:J

    .line 318
    iput p4, p0, Lcom/oplus/camera/capmode/w;->mPauseClickTimes:I

    .line 320
    iput-object p2, p0, Lcom/oplus/camera/capmode/w;->mPreviewConfig:Lcom/oplus/camera/aps/util/AlgoSwitchConfig$PreviewConfig;

    .line 322
    iput-object p2, p0, Lcom/oplus/camera/capmode/w;->mCheckStorageTask:Landroid/os/AsyncTask;

    .line 323
    iput-object p2, p0, Lcom/oplus/camera/capmode/w;->mBrightnessAnimator:Landroid/animation/ValueAnimator;

    .line 324
    iput-object p2, p0, Lcom/oplus/camera/capmode/w;->mBrightnessAnimationListener:Lcom/oplus/camera/capmode/w$a;

    .line 325
    iput-object p2, p0, Lcom/oplus/camera/capmode/w;->mCameraErrorAlertDialogBuilder:Lcom/coui/appcompat/dialog/app/b;

    .line 326
    iput-wide v0, p0, Lcom/oplus/camera/capmode/w;->mResumePauseRecordingTotalTime:J

    .line 327
    iput-boolean p4, p0, Lcom/oplus/camera/capmode/w;->mVideoAeAfLock:Z

    .line 328
    iput p4, p0, Lcom/oplus/camera/capmode/w;->mVideoSurfaceState:I

    .line 331
    iput p4, p0, Lcom/oplus/camera/capmode/w;->mStartRecordingOrientation:I

    .line 332
    iput p4, p0, Lcom/oplus/camera/capmode/w;->mStartRecordingFaceCount:I

    .line 333
    iput p4, p0, Lcom/oplus/camera/capmode/w;->mFaceCountOnStop:I

    .line 334
    iput-object v2, p0, Lcom/oplus/camera/capmode/w;->mShutterType:Ljava/lang/String;

    .line 335
    iput-boolean p4, p0, Lcom/oplus/camera/capmode/w;->mbPictureTakenDuringRecord:Z

    .line 336
    iput-wide v0, p0, Lcom/oplus/camera/capmode/w;->mPictureTakenTime:J

    .line 337
    iput-boolean p4, p0, Lcom/oplus/camera/capmode/w;->mbGetDcsData:Z

    .line 338
    iput-boolean p4, p0, Lcom/oplus/camera/capmode/w;->mbEisHalCache:Z

    .line 339
    iput-boolean p4, p0, Lcom/oplus/camera/capmode/w;->mbMediaLimitProcess:Z

    .line 340
    iput p4, p0, Lcom/oplus/camera/capmode/w;->mVideoWatermarkOrientation:I

    .line 341
    iput-boolean p4, p0, Lcom/oplus/camera/capmode/w;->mbBinauralRecordEnable:Z

    .line 342
    iput-object p2, p0, Lcom/oplus/camera/capmode/w;->mPGDialog:Landroidx/appcompat/app/f;

    .line 344
    new-instance p3, Lcom/oplus/camera/capmode/w$1;

    invoke-direct {p3, p0}, Lcom/oplus/camera/capmode/w$1;-><init>(Lcom/oplus/camera/capmode/w;)V

    iput-object p3, p0, Lcom/oplus/camera/capmode/w;->mCameraErrorPositiveButtonListener:Landroid/content/DialogInterface$OnClickListener;

    .line 2357
    new-instance p3, Lcom/oplus/camera/capmode/w$8;

    invoke-direct {p3, p0}, Lcom/oplus/camera/capmode/w$8;-><init>(Lcom/oplus/camera/capmode/w;)V

    iput-object p3, p0, Lcom/oplus/camera/capmode/w;->mCameraRecordingCallback:Lcom/oplus/ocs/camera/CameraRecordingCallback;

    .line 356
    invoke-virtual {p1}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object p3

    iput-object p3, p0, Lcom/oplus/camera/capmode/w;->mResouces:Landroid/content/res/Resources;

    .line 357
    new-instance p3, Lcom/oplus/camera/capmode/w$c;

    invoke-direct {p3, p0, p2}, Lcom/oplus/camera/capmode/w$c;-><init>(Lcom/oplus/camera/capmode/w;Lcom/oplus/camera/capmode/w$1;)V

    iput-object p3, p0, Lcom/oplus/camera/capmode/w;->mHandler:Landroid/os/Handler;

    .line 359
    new-instance p2, Lcom/oplus/camera/capmode/w$a;

    invoke-direct {p2, p0, p1}, Lcom/oplus/camera/capmode/w$a;-><init>(Lcom/oplus/camera/capmode/w;Landroid/app/Activity;)V

    iput-object p2, p0, Lcom/oplus/camera/capmode/w;->mBrightnessAnimationListener:Lcom/oplus/camera/capmode/w$a;

    .line 360
    new-array p1, v3, [F

    fill-array-data p1, :array_0

    invoke-static {p1}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object p1

    iput-object p1, p0, Lcom/oplus/camera/capmode/w;->mBrightnessAnimator:Landroid/animation/ValueAnimator;

    .line 361
    iget-object p1, p0, Lcom/oplus/camera/capmode/w;->mBrightnessAnimator:Landroid/animation/ValueAnimator;

    const-wide/16 p2, 0x2710

    invoke-virtual {p1, p2, p3}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 362
    iget-object p1, p0, Lcom/oplus/camera/capmode/w;->mBrightnessAnimator:Landroid/animation/ValueAnimator;

    iget-object p2, p0, Lcom/oplus/camera/capmode/w;->mBrightnessAnimationListener:Lcom/oplus/camera/capmode/w$a;

    invoke-virtual {p1, p2}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 364
    invoke-virtual {p0}, Lcom/oplus/camera/capmode/w;->initRecordThread()V

    return-void

    :array_0
    .array-data 4
        0x3f800000    # 1.0f
        0x0
    .end array-data
.end method

.method static synthetic access$100(Lcom/oplus/camera/capmode/w;)V
    .locals 0

    .line 141
    invoke-direct {p0}, Lcom/oplus/camera/capmode/w;->startVideoRecordThread()V

    return-void
.end method

.method static synthetic access$1000(Lcom/oplus/camera/capmode/w;)V
    .locals 0

    .line 141
    invoke-direct {p0}, Lcom/oplus/camera/capmode/w;->updateRecordingTime()V

    return-void
.end method

.method static synthetic access$1102(Lcom/oplus/camera/capmode/w;Landroid/os/AsyncTask;)Landroid/os/AsyncTask;
    .locals 0

    .line 141
    iput-object p1, p0, Lcom/oplus/camera/capmode/w;->mCheckStorageTask:Landroid/os/AsyncTask;

    return-object p1
.end method

.method static synthetic access$1300(Lcom/oplus/camera/capmode/w;IF)V
    .locals 0

    .line 141
    invoke-direct {p0, p1, p2}, Lcom/oplus/camera/capmode/w;->setScreenBrightness(IF)V

    return-void
.end method

.method static synthetic access$1400(Lcom/oplus/camera/capmode/w;)V
    .locals 0

    .line 141
    invoke-direct {p0}, Lcom/oplus/camera/capmode/w;->startVideoRecordHandler()V

    return-void
.end method

.method static synthetic access$1500(Lcom/oplus/camera/capmode/w;)Landroid/os/Handler;
    .locals 0

    .line 141
    iget-object p0, p0, Lcom/oplus/camera/capmode/w;->mRecordHandler:Landroid/os/Handler;

    return-object p0
.end method

.method static synthetic access$200(Lcom/oplus/camera/capmode/w;Ljava/lang/String;)V
    .locals 0

    .line 141
    invoke-direct {p0, p1}, Lcom/oplus/camera/capmode/w;->cleanupEmptyFile(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$300(Lcom/oplus/camera/capmode/w;)Z
    .locals 0

    .line 141
    invoke-direct {p0}, Lcom/oplus/camera/capmode/w;->prepareVideoSurface()Z

    move-result p0

    return p0
.end method

.method static synthetic access$400(Lcom/oplus/camera/capmode/w;)V
    .locals 0

    .line 141
    invoke-direct {p0}, Lcom/oplus/camera/capmode/w;->hideHintViewShowZoom()V

    return-void
.end method

.method static synthetic access$500(Lcom/oplus/camera/capmode/w;)Landroid/os/ConditionVariable;
    .locals 0

    .line 141
    iget-object p0, p0, Lcom/oplus/camera/capmode/w;->mRecordSig:Landroid/os/ConditionVariable;

    return-object p0
.end method

.method static synthetic access$600(Lcom/oplus/camera/capmode/w;)Z
    .locals 0

    .line 141
    iget-boolean p0, p0, Lcom/oplus/camera/capmode/w;->mbPictureTakenDuringRecord:Z

    return p0
.end method

.method static synthetic access$700(Lcom/oplus/camera/capmode/w;)J
    .locals 2

    .line 141
    iget-wide v0, p0, Lcom/oplus/camera/capmode/w;->mPictureTakenTime:J

    return-wide v0
.end method

.method static synthetic access$802(Lcom/oplus/camera/capmode/w;Landroidx/appcompat/app/f;)Landroidx/appcompat/app/f;
    .locals 0

    .line 141
    iput-object p1, p0, Lcom/oplus/camera/capmode/w;->mPGDialog:Landroidx/appcompat/app/f;

    return-object p1
.end method

.method static synthetic access$900(Lcom/oplus/camera/capmode/w;)V
    .locals 0

    .line 141
    invoke-direct {p0}, Lcom/oplus/camera/capmode/w;->restoreVideoPreviewState()V

    return-void
.end method

.method private canNotStopVideoRecordingImmediately()Z
    .locals 1

    .line 4270
    invoke-virtual {p0}, Lcom/oplus/camera/capmode/w;->isSatOpen()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "com.oplus.sat.use.hal"

    invoke-static {v0}, Lcom/oplus/camera/aps/config/CameraConfig;->getConfigBooleanValue(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 4271
    :cond_0
    invoke-virtual {p0}, Lcom/oplus/camera/capmode/w;->isRearSuperEISOpen()Z

    move-result v0

    if-eqz v0, :cond_1

    const-string v0, "com.oplus.aps.support.video.super.eis"

    .line 4272
    invoke-static {v0}, Lcom/oplus/camera/aps/config/CameraConfig;->getConfigBooleanValue(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_3

    .line 4273
    :cond_1
    invoke-virtual {p0}, Lcom/oplus/camera/capmode/w;->isHyperLapseOpen()Z

    move-result v0

    if-nez v0, :cond_3

    const-string v0, "key_intelligent_high_frame_usage_key"

    .line 4274
    invoke-virtual {p0, v0}, Lcom/oplus/camera/capmode/w;->getSupportFunction(Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_2

    goto :goto_0

    :cond_2
    const/4 p0, 0x0

    goto :goto_1

    :cond_3
    :goto_0
    const/4 p0, 0x1

    :goto_1
    return p0
.end method

.method private checkVideoFileReady(Ljava/lang/String;)Z
    .locals 7

    .line 1893
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "checkVideoFileReady, videoFilename: "

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string v0, "VideoMode"

    invoke-static {v0, p0}, Lcom/oplus/camera/e;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 1895
    new-instance p0, Ljava/io/File;

    invoke-direct {p0, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 1897
    invoke-virtual {p0}, Ljava/io/File;->exists()Z

    move-result v1

    const/4 v2, 0x1

    const-wide/16 v3, 0x0

    if-eqz v1, :cond_0

    invoke-virtual {p0}, Ljava/io/File;->length()J

    move-result-wide v5

    cmp-long p0, v5, v3

    if-lez p0, :cond_0

    return v2

    :cond_0
    const-wide/16 v5, 0x14

    .line 1902
    :try_start_0
    invoke-static {v5, v6}, Ljava/lang/Thread;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    .line 1904
    invoke-virtual {p0}, Ljava/lang/InterruptedException;->printStackTrace()V

    .line 1907
    :goto_0
    new-instance p0, Ljava/io/File;

    invoke-direct {p0, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 1908
    invoke-virtual {p0}, Ljava/io/File;->exists()Z

    move-result p1

    .line 1909
    invoke-virtual {p0}, Ljava/io/File;->length()J

    move-result-wide v5

    .line 1911
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "checkVideoFileReady, exist: "

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", fileLength: "

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Lcom/oplus/camera/e;->a(Ljava/lang/String;Ljava/lang/String;)V

    if-eqz p1, :cond_1

    cmp-long p0, v5, v3

    if-lez p0, :cond_1

    goto :goto_1

    :cond_1
    const/4 v2, 0x0

    :goto_1
    return v2
.end method

.method private cleanupEmptyFile(Ljava/lang/String;)V
    .locals 5

    const-string p0, "VideoMode"

    const-string v0, "cleanupEmptyFile"

    .line 2742
    invoke-static {p0, v0}, Lcom/oplus/camera/e;->a(Ljava/lang/String;Ljava/lang/String;)V

    if-eqz p1, :cond_0

    .line 2745
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 2747
    invoke-virtual {v0}, Ljava/io/File;->length()J

    move-result-wide v1

    const-wide/16 v3, 0x0

    cmp-long v1, v1, v3

    if-nez v1, :cond_0

    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2748
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "cleanupEmptyFile, Empty video file deleted: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Lcom/oplus/camera/e;->a(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method private convertOutputFormatToFileExt(I)Ljava/lang/String;
    .locals 0

    const/4 p0, 0x2

    if-ne p1, p0, :cond_0

    const-string p0, ".mp4"

    return-object p0

    :cond_0
    const-string p0, ".3gp"

    return-object p0
.end method

.method private convertOutputFormatToMimeType(I)Ljava/lang/String;
    .locals 0

    const/4 p0, 0x2

    if-ne p1, p0, :cond_0

    const-string p0, "video/mp4"

    return-object p0

    :cond_0
    const-string p0, "video/3gpp"

    return-object p0
.end method

.method private createName(J)Ljava/lang/String;
    .locals 1

    .line 2648
    new-instance v0, Ljava/util/Date;

    invoke-direct {v0, p1, p2}, Ljava/util/Date;-><init>(J)V

    .line 2650
    new-instance p1, Ljava/text/SimpleDateFormat;

    iget-object p0, p0, Lcom/oplus/camera/capmode/w;->mActivity:Landroid/app/Activity;

    .line 2651
    invoke-virtual {p0}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    const p2, 0x7f1004a1

    invoke-virtual {p0, p2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p0

    sget-object p2, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-direct {p1, p0, p2}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    .line 2653
    invoke-virtual {p1, v0}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private generateVideoFilename(I)V
    .locals 7

    .line 2673
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 2674
    invoke-direct {p0, v0, v1}, Lcom/oplus/camera/capmode/w;->createName(J)Ljava/lang/String;

    move-result-object v2

    .line 2677
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-direct {p0, p1}, Lcom/oplus/camera/capmode/w;->convertOutputFormatToFileExt(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 2678
    invoke-direct {p0, p1}, Lcom/oplus/camera/capmode/w;->convertOutputFormatToMimeType(I)Ljava/lang/String;

    move-result-object p1

    .line 2680
    invoke-virtual {p0}, Lcom/oplus/camera/capmode/w;->getVideoSavePath()Ljava/lang/String;

    move-result-object v4

    iput-object v4, p0, Lcom/oplus/camera/capmode/w;->mVideoSavePath:Ljava/lang/String;

    .line 2681
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v5, p0, Lcom/oplus/camera/capmode/w;->mVideoSavePath:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 2683
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "generateVideoFilename, path: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, ", mime: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    const-string v6, "VideoMode"

    invoke-static {v6, v5}, Lcom/oplus/camera/e;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 2685
    iput-object v3, p0, Lcom/oplus/camera/capmode/w;->mFileName:Ljava/lang/String;

    .line 2686
    iput-object v4, p0, Lcom/oplus/camera/capmode/w;->mVideoFilename:Ljava/lang/String;

    .line 2687
    new-instance v4, Landroid/content/ContentValues;

    const/4 v5, 0x7

    invoke-direct {v4, v5}, Landroid/content/ContentValues;-><init>(I)V

    iput-object v4, p0, Lcom/oplus/camera/capmode/w;->mCurrentVideoValues:Landroid/content/ContentValues;

    .line 2688
    iget-object v4, p0, Lcom/oplus/camera/capmode/w;->mCurrentVideoValues:Landroid/content/ContentValues;

    const-string v5, "title"

    invoke-virtual {v4, v5, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 2689
    iget-object v2, p0, Lcom/oplus/camera/capmode/w;->mCurrentVideoValues:Landroid/content/ContentValues;

    const-string v4, "_display_name"

    invoke-virtual {v2, v4, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 2690
    iget-object v2, p0, Lcom/oplus/camera/capmode/w;->mCurrentVideoValues:Landroid/content/ContentValues;

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    const-string v1, "datetaken"

    invoke-virtual {v2, v1, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 2691
    iget-object v0, p0, Lcom/oplus/camera/capmode/w;->mCurrentVideoValues:Landroid/content/ContentValues;

    const-string v1, "mime_type"

    invoke-virtual {v0, v1, p1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 2692
    iget-object p1, p0, Lcom/oplus/camera/capmode/w;->mCurrentVideoValues:Landroid/content/ContentValues;

    const/4 v0, 0x0

    invoke-static {v0}, Lcom/oplus/camera/Storage;->e(Lcom/oplus/camera/Storage$CameraPicture;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "relative_path"

    invoke-virtual {p1, v1, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 2693
    iget-object p1, p0, Lcom/oplus/camera/capmode/w;->mCurrentVideoValues:Landroid/content/ContentValues;

    const/4 v0, 0x1

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const-string v1, "is_pending"

    invoke-virtual {p1, v1, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 2695
    invoke-virtual {p0}, Lcom/oplus/camera/capmode/w;->isNeedGenerateUri()Z

    move-result p1

    if-eqz p1, :cond_0

    .line 2696
    iget-object p1, p0, Lcom/oplus/camera/capmode/w;->mActivity:Landroid/app/Activity;

    iget-object v0, p0, Lcom/oplus/camera/capmode/w;->mActivity:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-object v1, p0, Lcom/oplus/camera/capmode/w;->mCurrentVideoValues:Landroid/content/ContentValues;

    invoke-static {p1, v0, v1}, Lcom/oplus/camera/util/storage/a;->a(Landroid/content/Context;Landroid/content/ContentResolver;Landroid/content/ContentValues;)Landroid/net/Uri;

    move-result-object p1

    iput-object p1, p0, Lcom/oplus/camera/capmode/w;->mCurrentVideoUri:Landroid/net/Uri;

    .line 2700
    :try_start_0
    iget-object p1, p0, Lcom/oplus/camera/capmode/w;->mActivity:Landroid/app/Activity;

    invoke-virtual {p1}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p1

    iget-object v0, p0, Lcom/oplus/camera/capmode/w;->mCurrentVideoUri:Landroid/net/Uri;

    const-string v1, "rw"

    invoke-virtual {p1, v0, v1}, Landroid/content/ContentResolver;->openFileDescriptor(Landroid/net/Uri;Ljava/lang/String;)Landroid/os/ParcelFileDescriptor;

    move-result-object p1

    iput-object p1, p0, Lcom/oplus/camera/capmode/w;->mVideoFileDescriptor:Landroid/os/ParcelFileDescriptor;
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 2704
    invoke-virtual {p1}, Ljava/lang/SecurityException;->printStackTrace()V

    goto :goto_0

    :catch_1
    move-exception p1

    .line 2702
    invoke-virtual {p1}, Ljava/io/FileNotFoundException;->printStackTrace()V

    .line 2708
    :cond_0
    :goto_0
    iget-object p1, p0, Lcom/oplus/camera/capmode/w;->mCameraInterface:Lcom/oplus/camera/capmode/a;

    invoke-interface {p1}, Lcom/oplus/camera/capmode/a;->u()I

    move-result p1

    .line 2709
    iput p1, p0, Lcom/oplus/camera/capmode/w;->mVideoOrientation:I

    .line 2710
    iget-object p1, p0, Lcom/oplus/camera/capmode/w;->mCameraInterface:Lcom/oplus/camera/capmode/a;

    invoke-interface {p1}, Lcom/oplus/camera/capmode/a;->ae()Z

    move-result p1

    iput-boolean p1, p0, Lcom/oplus/camera/capmode/w;->mVideoAeAfLock:Z

    .line 2711
    invoke-virtual {p0}, Lcom/oplus/camera/capmode/w;->getProfile()Landroid/media/CamcorderProfile;

    move-result-object p1

    .line 2713
    iget-object v0, p0, Lcom/oplus/camera/capmode/w;->mCurrentVideoValues:Landroid/content/ContentValues;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget v2, p1, Landroid/media/CamcorderProfile;->videoFrameWidth:I

    .line 2714
    invoke-static {v2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "x"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p1, Landroid/media/CamcorderProfile;->videoFrameHeight:I

    invoke-static {v2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "resolution"

    .line 2713
    invoke-virtual {v0, v2, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 2715
    iget-object v0, p0, Lcom/oplus/camera/capmode/w;->mCurrentVideoValues:Landroid/content/ContentValues;

    iget v1, p1, Landroid/media/CamcorderProfile;->videoFrameWidth:I

    invoke-static {v1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v1

    const-string v2, "width"

    invoke-virtual {v0, v2, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 2716
    iget-object v0, p0, Lcom/oplus/camera/capmode/w;->mCurrentVideoValues:Landroid/content/ContentValues;

    iget p1, p1, Landroid/media/CamcorderProfile;->videoFrameHeight:I

    invoke-static {p1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object p1

    const-string v1, "height"

    invoke-virtual {v0, v1, p1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 2718
    iget-object p1, p0, Lcom/oplus/camera/capmode/w;->mCameraInterface:Lcom/oplus/camera/capmode/a;

    invoke-interface {p1}, Lcom/oplus/camera/capmode/a;->y()Landroid/location/Location;

    move-result-object p1

    if-eqz p1, :cond_1

    .line 2721
    iget-object v0, p0, Lcom/oplus/camera/capmode/w;->mCurrentVideoValues:Landroid/content/ContentValues;

    invoke-virtual {p1}, Landroid/location/Location;->getLatitude()D

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v1

    const-string v2, "latitude"

    invoke-virtual {v0, v2, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Double;)V

    .line 2722
    iget-object v0, p0, Lcom/oplus/camera/capmode/w;->mCurrentVideoValues:Landroid/content/ContentValues;

    invoke-virtual {p1}, Landroid/location/Location;->getLongitude()D

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object p1

    const-string v1, "longitude"

    invoke-virtual {v0, v1, p1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Double;)V

    .line 2725
    :cond_1
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "generateVideoFilename, New video filename: "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/oplus/camera/capmode/w;->mVideoFilename:Ljava/lang/String;

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v6, p0}, Lcom/oplus/camera/e;->a(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method private getDefaultVideoQuality(ILjava/lang/String;)Ljava/lang/String;
    .locals 0

    .line 3268
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result p0

    .line 3270
    invoke-static {p1, p0}, Landroid/media/CamcorderProfile;->hasProfile(II)Z

    move-result p0

    if-eqz p0, :cond_0

    return-object p2

    :cond_0
    const/4 p0, 0x1

    .line 3274
    invoke-static {p0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private getDimensionPixelSize(I)I
    .locals 0

    .line 2256
    iget-object p0, p0, Lcom/oplus/camera/capmode/w;->mResouces:Landroid/content/res/Resources;

    if-eqz p0, :cond_0

    .line 2257
    invoke-virtual {p0, p1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p0

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method private hideHintViewShowZoom()V
    .locals 3

    const-string v0, "VideoMode"

    const-string v1, "hideHintViewShowZoom"

    .line 3815
    invoke-static {v0, v1}, Lcom/oplus/camera/e;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 3817
    iget-boolean v0, p0, Lcom/oplus/camera/capmode/w;->mbStopVideoFail:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/oplus/camera/capmode/w;->mCameraInterface:Lcom/oplus/camera/capmode/a;

    if-eqz v0, :cond_0

    .line 3818
    iget-object v0, p0, Lcom/oplus/camera/capmode/w;->mCameraInterface:Lcom/oplus/camera/capmode/a;

    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-interface {v0, v2, v1}, Lcom/oplus/camera/capmode/a;->a(ZZ)V

    .line 3819
    iget-object p0, p0, Lcom/oplus/camera/capmode/w;->mCameraInterface:Lcom/oplus/camera/capmode/a;

    invoke-interface {p0, v2}, Lcom/oplus/camera/capmode/a;->d(Z)V

    :cond_0
    return-void
.end method

.method private initializeRecorder()V
    .locals 11

    const-string v0, "VideoMode"

    const-string v1, "initializeRecorder"

    .line 2797
    invoke-static {v0, v1}, Lcom/oplus/camera/e;->c(Ljava/lang/String;Ljava/lang/String;)V

    .line 2799
    iget-object v0, p0, Lcom/oplus/camera/capmode/w;->mActivity:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    .line 2802
    sget-object v1, Lcom/oplus/camera/Storage;->u:Ljava/lang/String;

    const-string v2, "on"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    const-wide/16 v2, 0x0

    if-eqz v1, :cond_0

    const-wide v4, 0x100000000L

    goto :goto_0

    :cond_0
    move-wide v4, v2

    .line 2804
    :goto_0
    iget-object v1, p0, Lcom/oplus/camera/capmode/w;->mCameraInterface:Lcom/oplus/camera/capmode/a;

    invoke-interface {v1}, Lcom/oplus/camera/capmode/a;->m()Z

    move-result v1

    if-eqz v1, :cond_1

    if-eqz v0, :cond_1

    const-string v1, "android.intent.extra.sizeLimit"

    .line 2805
    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getLong(Ljava/lang/String;)J

    move-result-wide v4

    :cond_1
    if-eqz v0, :cond_2

    .line 2809
    iget-object v1, p0, Lcom/oplus/camera/capmode/w;->mCameraInterface:Lcom/oplus/camera/capmode/a;

    invoke-interface {v1}, Lcom/oplus/camera/capmode/a;->m()Z

    move-result v1

    if-eqz v1, :cond_2

    const-string v1, "android.intent.extra.sizeLimit"

    .line 2810
    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getLong(Ljava/lang/String;)J

    move-result-wide v4

    .line 2814
    :cond_2
    new-instance v0, Lcom/oplus/camera/capmode/x;

    invoke-virtual {p0}, Lcom/oplus/camera/capmode/w;->isUseMediaCodec()Z

    move-result v1

    iget-object v6, p0, Lcom/oplus/camera/capmode/w;->mCameraInterface:Lcom/oplus/camera/capmode/a;

    invoke-interface {v6}, Lcom/oplus/camera/capmode/a;->al()F

    move-result v6

    invoke-direct {v0, v1, v6}, Lcom/oplus/camera/capmode/x;-><init>(ZF)V

    iput-object v0, p0, Lcom/oplus/camera/capmode/w;->mVideoRecorder:Lcom/oplus/camera/capmode/x;

    .line 2815
    iget-object v0, p0, Lcom/oplus/camera/capmode/w;->mVideoRecorder:Lcom/oplus/camera/capmode/x;

    invoke-virtual {p0}, Lcom/oplus/camera/capmode/w;->isNeedAudioEncode()Z

    move-result v1

    invoke-virtual {v0, v1}, Lcom/oplus/camera/capmode/x;->h(Z)V

    .line 2817
    iget-object v0, p0, Lcom/oplus/camera/capmode/w;->mVideoSurfaceLock:Ljava/lang/Object;

    monitor-enter v0

    .line 2818
    :try_start_0
    iget-object v1, p0, Lcom/oplus/camera/capmode/w;->mVideoSurface:Landroid/view/Surface;

    if-eqz v1, :cond_3

    .line 2819
    iget-object v1, p0, Lcom/oplus/camera/capmode/w;->mVideoRecorder:Lcom/oplus/camera/capmode/x;

    iget-object v6, p0, Lcom/oplus/camera/capmode/w;->mVideoSurface:Landroid/view/Surface;

    invoke-virtual {v1, v6}, Lcom/oplus/camera/capmode/x;->a(Landroid/view/Surface;)V

    .line 2821
    :cond_3
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2823
    iget-object v0, p0, Lcom/oplus/camera/capmode/w;->mVideoRecorder:Lcom/oplus/camera/capmode/x;

    iget-object v1, p0, Lcom/oplus/camera/capmode/w;->mCameraUIInterface:Lcom/oplus/camera/ui/CameraUIInterface;

    invoke-interface {v1}, Lcom/oplus/camera/ui/CameraUIInterface;->a()Lcom/oplus/camera/gl/GLRootView;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/oplus/camera/capmode/x;->a(Lcom/oplus/camera/gl/q;)V

    .line 2825
    invoke-virtual {p0}, Lcom/oplus/camera/capmode/w;->getProfile()Landroid/media/CamcorderProfile;

    move-result-object v0

    .line 2827
    iget-boolean v1, p0, Lcom/oplus/camera/capmode/w;->mbRecordAudio:Z

    const/4 v6, 0x5

    const/4 v7, -0x1

    if-eqz v1, :cond_4

    invoke-static {}, Lcom/oplus/camera/util/Util;->as()Z

    move-result v1

    if-eqz v1, :cond_4

    .line 2828
    iget-object v1, p0, Lcom/oplus/camera/capmode/w;->mVideoRecorder:Lcom/oplus/camera/capmode/x;

    invoke-virtual {v1, v6}, Lcom/oplus/camera/capmode/x;->a(I)V

    const/4 v1, 0x3

    .line 2829
    iput v1, v0, Landroid/media/CamcorderProfile;->audioCodec:I

    const-string v1, "com.oplus.feature.elevate.audio.bit.video.support"

    .line 2831
    invoke-static {v1}, Lcom/oplus/camera/aps/config/CameraConfig;->getConfigBooleanValue(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_5

    const v1, 0x4e200

    .line 2832
    iput v1, v0, Landroid/media/CamcorderProfile;->audioBitRate:I

    goto :goto_1

    .line 2835
    :cond_4
    iput v7, v0, Landroid/media/CamcorderProfile;->audioCodec:I

    .line 2838
    :cond_5
    :goto_1
    iget-object v1, p0, Lcom/oplus/camera/capmode/w;->mVideoRecorder:Lcom/oplus/camera/capmode/x;

    const/4 v8, 0x2

    invoke-virtual {v1, v8}, Lcom/oplus/camera/capmode/x;->f(I)V

    .line 2840
    iget-boolean v1, p0, Lcom/oplus/camera/capmode/w;->mbBinauralRecordEnable:Z

    invoke-direct {p0, v1}, Lcom/oplus/camera/capmode/w;->setBinauralRecordState(Z)V

    .line 2842
    invoke-virtual {p0}, Lcom/oplus/camera/capmode/w;->getVideoTitle()Ljava/lang/String;

    move-result-object v1

    .line 2844
    iget-boolean v9, p0, Lcom/oplus/camera/capmode/w;->mbBinauralRecordEnable:Z

    if-eqz v9, :cond_7

    if-eqz v1, :cond_6

    const-string v9, "binaural"

    .line 2846
    invoke-virtual {v1, v9}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    goto :goto_2

    :cond_6
    const-string v1, "binaural"

    :cond_7
    :goto_2
    if-eqz v1, :cond_8

    .line 2853
    iget-object v9, p0, Lcom/oplus/camera/capmode/w;->mVideoRecorder:Lcom/oplus/camera/capmode/x;

    invoke-virtual {p0}, Lcom/oplus/camera/capmode/w;->getVideoFileExifTag()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v10, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v9, v1}, Lcom/oplus/camera/capmode/x;->c(Ljava/lang/String;)V

    .line 2856
    :cond_8
    invoke-virtual {p0}, Lcom/oplus/camera/capmode/w;->checkVideoCodecAndReset()V

    .line 2857
    invoke-virtual {p0}, Lcom/oplus/camera/capmode/w;->getVideoCodec()Ljava/lang/String;

    move-result-object v1

    .line 2859
    invoke-virtual {p0}, Lcom/oplus/camera/capmode/w;->isVideo10BitOpen()Z

    move-result v9

    const/16 v10, 0x8

    if-eqz v9, :cond_9

    .line 2860
    iput v6, v0, Landroid/media/CamcorderProfile;->videoCodec:I

    .line 2861
    iget-object v1, p0, Lcom/oplus/camera/capmode/w;->mVideoRecorder:Lcom/oplus/camera/capmode/x;

    const/16 v6, 0x4000

    invoke-virtual {v1, v8, v6}, Lcom/oplus/camera/capmode/x;->b(II)V

    goto :goto_3

    :cond_9
    const-string v9, "H265"

    .line 2863
    invoke-virtual {v9, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_a

    .line 2864
    iput v6, v0, Landroid/media/CamcorderProfile;->videoCodec:I

    goto :goto_3

    :cond_a
    const-string v6, "H264"

    .line 2865
    invoke-virtual {v6, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_b

    .line 2866
    iput v8, v0, Landroid/media/CamcorderProfile;->videoCodec:I

    .line 2867
    iget-object v1, p0, Lcom/oplus/camera/capmode/w;->mVideoRecorder:Lcom/oplus/camera/capmode/x;

    const/16 v6, 0x800

    invoke-virtual {v1, v10, v6}, Lcom/oplus/camera/capmode/x;->b(II)V

    .line 2871
    :cond_b
    :goto_3
    invoke-static {}, Lcom/oplus/camera/util/Util;->C()Z

    move-result v1

    if-eqz v1, :cond_12

    .line 2872
    invoke-virtual {p0}, Lcom/oplus/camera/capmode/w;->isMirrorEnable()Z

    move-result v1

    if-nez v1, :cond_c

    iget-object v1, p0, Lcom/oplus/camera/capmode/w;->mCameraUIInterface:Lcom/oplus/camera/ui/CameraUIInterface;

    invoke-interface {v1}, Lcom/oplus/camera/ui/CameraUIInterface;->e()Z

    move-result v1

    if-eqz v1, :cond_f

    :cond_c
    invoke-virtual {p0}, Lcom/oplus/camera/capmode/w;->getMirror()Ljava/lang/String;

    move-result-object v1

    const-string v6, "off"

    invoke-static {v1, v6}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_f

    .line 2873
    iget-object v1, p0, Lcom/oplus/camera/capmode/w;->mCameraInterface:Lcom/oplus/camera/capmode/a;

    invoke-interface {v1}, Lcom/oplus/camera/capmode/a;->u()I

    move-result v1

    if-eqz v1, :cond_e

    const/16 v6, 0xb4

    if-ne v1, v6, :cond_d

    goto :goto_4

    .line 2878
    :cond_d
    iget-object v1, p0, Lcom/oplus/camera/capmode/w;->mVideoRecorder:Lcom/oplus/camera/capmode/x;

    const/4 v6, 0x1

    invoke-virtual {v1, v6}, Lcom/oplus/camera/capmode/x;->n(I)V

    goto :goto_5

    .line 2876
    :cond_e
    :goto_4
    iget-object v1, p0, Lcom/oplus/camera/capmode/w;->mVideoRecorder:Lcom/oplus/camera/capmode/x;

    invoke-virtual {v1, v8}, Lcom/oplus/camera/capmode/x;->n(I)V

    .line 2882
    :cond_f
    :goto_5
    invoke-virtual {p0}, Lcom/oplus/camera/capmode/w;->getVideoFrameRate()I

    move-result v1

    iput v1, v0, Landroid/media/CamcorderProfile;->videoFrameRate:I

    .line 2884
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "initializeRecorder, videoCodec: "

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v6, v0, Landroid/media/CamcorderProfile;->videoCodec:I

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v6, ", videoBitRate: "

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v6, v0, Landroid/media/CamcorderProfile;->videoBitRate:I

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v6, ", getNeedReduceBitRate(): "

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2885
    invoke-virtual {p0}, Lcom/oplus/camera/capmode/w;->getNeedReduceBitRate()Z

    move-result v6

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v6, "VideoMode"

    .line 2884
    invoke-static {v6, v1}, Lcom/oplus/camera/e;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 2896
    iget-object v1, p0, Lcom/oplus/camera/capmode/w;->mVideoRecorder:Lcom/oplus/camera/capmode/x;

    iget v6, p0, Lcom/oplus/camera/capmode/w;->mCameraId:I

    invoke-static {v6}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v1, v6, v0}, Lcom/oplus/camera/capmode/x;->a(Ljava/lang/String;Landroid/media/CamcorderProfile;)V

    .line 2898
    iget-object v1, p0, Lcom/oplus/camera/capmode/w;->mCameraInterface:Lcom/oplus/camera/capmode/a;

    invoke-interface {v1}, Lcom/oplus/camera/capmode/a;->m()Z

    move-result v1

    if-eqz v1, :cond_10

    .line 2899
    iget-object v1, p0, Lcom/oplus/camera/capmode/w;->mVideoRecorder:Lcom/oplus/camera/capmode/x;

    iget v6, v0, Landroid/media/CamcorderProfile;->videoBitRate:I

    invoke-virtual {v1, v6}, Lcom/oplus/camera/capmode/x;->g(I)V

    goto/16 :goto_a

    .line 2901
    :cond_10
    iget-object v1, p0, Lcom/oplus/camera/capmode/w;->mVideoRecorder:Lcom/oplus/camera/capmode/x;

    invoke-virtual {p0}, Lcom/oplus/camera/capmode/w;->getNeedReduceBitRate()Z

    move-result v6

    if-eqz v6, :cond_11

    .line 2902
    iget v6, v0, Landroid/media/CamcorderProfile;->videoBitRate:I

    div-int/2addr v6, v8

    goto :goto_6

    :cond_11
    iget v6, v0, Landroid/media/CamcorderProfile;->videoBitRate:I

    .line 2901
    :goto_6
    invoke-virtual {v1, v6}, Lcom/oplus/camera/capmode/x;->g(I)V

    goto/16 :goto_a

    .line 2905
    :cond_12
    iget-object v1, p0, Lcom/oplus/camera/capmode/w;->mProfile:Landroid/media/CamcorderProfile;

    iput v8, v1, Landroid/media/CamcorderProfile;->fileFormat:I

    .line 2906
    iget-object v6, p0, Lcom/oplus/camera/capmode/w;->mVideoRecorder:Lcom/oplus/camera/capmode/x;

    iget v1, v1, Landroid/media/CamcorderProfile;->fileFormat:I

    invoke-virtual {v6, v1}, Lcom/oplus/camera/capmode/x;->h(I)V

    .line 2907
    iget-object v1, p0, Lcom/oplus/camera/capmode/w;->mProfile:Landroid/media/CamcorderProfile;

    invoke-virtual {p0}, Lcom/oplus/camera/capmode/w;->getVideoFrameRate()I

    move-result v6

    iput v6, v1, Landroid/media/CamcorderProfile;->videoFrameRate:I

    .line 2908
    iget-object v1, p0, Lcom/oplus/camera/capmode/w;->mVideoRecorder:Lcom/oplus/camera/capmode/x;

    iget-object v6, p0, Lcom/oplus/camera/capmode/w;->mProfile:Landroid/media/CamcorderProfile;

    iget v6, v6, Landroid/media/CamcorderProfile;->videoFrameRate:I

    invoke-virtual {v1, v6}, Lcom/oplus/camera/capmode/x;->i(I)V

    .line 2909
    iget-object v1, p0, Lcom/oplus/camera/capmode/w;->mVideoRecorder:Lcom/oplus/camera/capmode/x;

    iget-object v6, p0, Lcom/oplus/camera/capmode/w;->mProfile:Landroid/media/CamcorderProfile;

    iget v6, v6, Landroid/media/CamcorderProfile;->videoFrameWidth:I

    iget-object v9, p0, Lcom/oplus/camera/capmode/w;->mProfile:Landroid/media/CamcorderProfile;

    iget v9, v9, Landroid/media/CamcorderProfile;->videoFrameHeight:I

    invoke-virtual {v1, v6, v9}, Lcom/oplus/camera/capmode/x;->a(II)V

    .line 2910
    iget-object v1, p0, Lcom/oplus/camera/capmode/w;->mVideoRecorder:Lcom/oplus/camera/capmode/x;

    iget-object v6, p0, Lcom/oplus/camera/capmode/w;->mProfile:Landroid/media/CamcorderProfile;

    iget v6, v6, Landroid/media/CamcorderProfile;->videoCodec:I

    invoke-virtual {v1, v6}, Lcom/oplus/camera/capmode/x;->j(I)V

    .line 2912
    iget-object v1, p0, Lcom/oplus/camera/capmode/w;->mCameraInterface:Lcom/oplus/camera/capmode/a;

    invoke-interface {v1}, Lcom/oplus/camera/capmode/a;->m()Z

    move-result v1

    if-eqz v1, :cond_13

    .line 2913
    iget-object v1, p0, Lcom/oplus/camera/capmode/w;->mVideoRecorder:Lcom/oplus/camera/capmode/x;

    iget v6, v0, Landroid/media/CamcorderProfile;->videoBitRate:I

    div-int/lit8 v6, v6, 0x4

    invoke-virtual {v1, v6}, Lcom/oplus/camera/capmode/x;->g(I)V

    goto :goto_8

    .line 2915
    :cond_13
    iget-object v1, p0, Lcom/oplus/camera/capmode/w;->mVideoRecorder:Lcom/oplus/camera/capmode/x;

    invoke-virtual {p0}, Lcom/oplus/camera/capmode/w;->getNeedReduceBitRate()Z

    move-result v6

    if-eqz v6, :cond_14

    .line 2916
    iget v6, v0, Landroid/media/CamcorderProfile;->videoBitRate:I

    div-int/2addr v6, v8

    goto :goto_7

    :cond_14
    iget v6, v0, Landroid/media/CamcorderProfile;->videoBitRate:I

    .line 2915
    :goto_7
    invoke-virtual {v1, v6}, Lcom/oplus/camera/capmode/x;->g(I)V

    .line 2919
    :goto_8
    iget-boolean v1, p0, Lcom/oplus/camera/capmode/w;->mbRecordAudio:Z

    if-eqz v1, :cond_17

    .line 2920
    iget-object v1, p0, Lcom/oplus/camera/capmode/w;->mVideoSizeType:Ljava/lang/String;

    const-string v6, "video_size_cif"

    invoke-virtual {v1, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_16

    iget-object v1, p0, Lcom/oplus/camera/capmode/w;->mVideoSizeType:Ljava/lang/String;

    const-string v6, "video_size_qcif"

    .line 2921
    invoke-virtual {v1, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_15

    goto :goto_9

    .line 2927
    :cond_15
    iget-object v1, p0, Lcom/oplus/camera/capmode/w;->mVideoRecorder:Lcom/oplus/camera/capmode/x;

    iget-object v6, p0, Lcom/oplus/camera/capmode/w;->mProfile:Landroid/media/CamcorderProfile;

    iget v6, v6, Landroid/media/CamcorderProfile;->audioBitRate:I

    invoke-virtual {v1, v6}, Lcom/oplus/camera/capmode/x;->b(I)V

    .line 2928
    iget-object v1, p0, Lcom/oplus/camera/capmode/w;->mVideoRecorder:Lcom/oplus/camera/capmode/x;

    iget-object v6, p0, Lcom/oplus/camera/capmode/w;->mProfile:Landroid/media/CamcorderProfile;

    iget v6, v6, Landroid/media/CamcorderProfile;->audioChannels:I

    invoke-virtual {v1, v6}, Lcom/oplus/camera/capmode/x;->c(I)V

    .line 2929
    iget-object v1, p0, Lcom/oplus/camera/capmode/w;->mVideoRecorder:Lcom/oplus/camera/capmode/x;

    iget-object v6, p0, Lcom/oplus/camera/capmode/w;->mProfile:Landroid/media/CamcorderProfile;

    iget v6, v6, Landroid/media/CamcorderProfile;->audioSampleRate:I

    invoke-virtual {v1, v6}, Lcom/oplus/camera/capmode/x;->d(I)V

    .line 2930
    iget-object v1, p0, Lcom/oplus/camera/capmode/w;->mVideoRecorder:Lcom/oplus/camera/capmode/x;

    iget-object v6, p0, Lcom/oplus/camera/capmode/w;->mProfile:Landroid/media/CamcorderProfile;

    iget v6, v6, Landroid/media/CamcorderProfile;->audioCodec:I

    invoke-virtual {v1, v6}, Lcom/oplus/camera/capmode/x;->e(I)V

    goto :goto_a

    .line 2922
    :cond_16
    :goto_9
    iget-object v1, p0, Lcom/oplus/camera/capmode/w;->mVideoRecorder:Lcom/oplus/camera/capmode/x;

    iget-object v6, p0, Lcom/oplus/camera/capmode/w;->mProfile:Landroid/media/CamcorderProfile;

    iget v6, v6, Landroid/media/CamcorderProfile;->audioBitRate:I

    div-int/2addr v6, v10

    invoke-virtual {v1, v6}, Lcom/oplus/camera/capmode/x;->b(I)V

    .line 2923
    iget-object v1, p0, Lcom/oplus/camera/capmode/w;->mVideoRecorder:Lcom/oplus/camera/capmode/x;

    iget-object v6, p0, Lcom/oplus/camera/capmode/w;->mProfile:Landroid/media/CamcorderProfile;

    iget v6, v6, Landroid/media/CamcorderProfile;->audioChannels:I

    invoke-virtual {v1, v6}, Lcom/oplus/camera/capmode/x;->c(I)V

    .line 2924
    iget-object v1, p0, Lcom/oplus/camera/capmode/w;->mVideoRecorder:Lcom/oplus/camera/capmode/x;

    iget-object v6, p0, Lcom/oplus/camera/capmode/w;->mProfile:Landroid/media/CamcorderProfile;

    iget v6, v6, Landroid/media/CamcorderProfile;->audioSampleRate:I

    div-int/2addr v6, v10

    invoke-virtual {v1, v6}, Lcom/oplus/camera/capmode/x;->d(I)V

    .line 2925
    iget-object v1, p0, Lcom/oplus/camera/capmode/w;->mVideoRecorder:Lcom/oplus/camera/capmode/x;

    iget-object v6, p0, Lcom/oplus/camera/capmode/w;->mProfile:Landroid/media/CamcorderProfile;

    iget v6, v6, Landroid/media/CamcorderProfile;->audioCodec:I

    invoke-virtual {v1, v6}, Lcom/oplus/camera/capmode/x;->e(I)V

    .line 2935
    :cond_17
    :goto_a
    invoke-direct {p0}, Lcom/oplus/camera/capmode/w;->updateSurroundRecord()V

    .line 2936
    iget-object v1, p0, Lcom/oplus/camera/capmode/w;->mVideoRecorder:Lcom/oplus/camera/capmode/x;

    iget-object v6, p0, Lcom/oplus/camera/capmode/w;->mCameraInterface:Lcom/oplus/camera/capmode/a;

    invoke-interface {v6}, Lcom/oplus/camera/capmode/a;->u()I

    move-result v6

    invoke-virtual {v1, v6}, Lcom/oplus/camera/capmode/x;->m(I)V

    .line 2938
    iget-object v1, p0, Lcom/oplus/camera/capmode/w;->mCameraInterface:Lcom/oplus/camera/capmode/a;

    invoke-interface {v1}, Lcom/oplus/camera/capmode/a;->y()Landroid/location/Location;

    move-result-object v1

    if-eqz v1, :cond_18

    .line 2941
    iget-object v6, p0, Lcom/oplus/camera/capmode/w;->mVideoRecorder:Lcom/oplus/camera/capmode/x;

    invoke-virtual {v1}, Landroid/location/Location;->getLatitude()D

    move-result-wide v8

    double-to-float v8, v8

    invoke-virtual {v1}, Landroid/location/Location;->getLongitude()D

    move-result-wide v9

    double-to-float v1, v9

    invoke-virtual {v6, v8, v1}, Lcom/oplus/camera/capmode/x;->a(FF)V

    .line 2945
    :cond_18
    invoke-virtual {p0}, Lcom/oplus/camera/capmode/w;->getTimeLapseSpeed()Ljava/lang/Double;

    move-result-object v1

    if-eqz v1, :cond_19

    .line 2948
    invoke-virtual {v1}, Ljava/lang/Double;->intValue()I

    move-result v1

    goto :goto_b

    :cond_19
    move v1, v7

    .line 2951
    :goto_b
    iget-object v6, p0, Lcom/oplus/camera/capmode/w;->mVideoRecorder:Lcom/oplus/camera/capmode/x;

    invoke-virtual {p0}, Lcom/oplus/camera/capmode/w;->isVideoTimeLapseTiltShiftOpen()Z

    move-result v8

    if-eqz v8, :cond_1a

    goto :goto_c

    :cond_1a
    move v1, v7

    :goto_c
    invoke-virtual {v6, v1}, Lcom/oplus/camera/capmode/x;->k(I)V

    const-string v1, "key_video_duration_limit"

    .line 2953
    invoke-virtual {p0, v1}, Lcom/oplus/camera/capmode/w;->getSupportFunction(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1b

    .line 2954
    iget-object v1, p0, Lcom/oplus/camera/capmode/w;->mVideoRecorder:Lcom/oplus/camera/capmode/x;

    const/16 v6, 0x3a98

    invoke-virtual {v1, v6}, Lcom/oplus/camera/capmode/x;->l(I)V

    goto :goto_d

    .line 2956
    :cond_1b
    iget-object v1, p0, Lcom/oplus/camera/capmode/w;->mVideoSizeType:Ljava/lang/String;

    iget v6, v0, Landroid/media/CamcorderProfile;->videoFrameRate:I

    invoke-static {v6}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p0, v1, v6}, Lcom/oplus/camera/capmode/w;->getRecordingMaxDuration(Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    if-lez v1, :cond_1d

    mul-int/lit16 v1, v1, 0x3e8

    .line 2961
    iget v6, p0, Lcom/oplus/camera/capmode/w;->mMaxVideoDurationInMs:I

    if-lez v6, :cond_1c

    if-le v1, v6, :cond_1c

    move v1, v6

    .line 2964
    :cond_1c
    iget-object v6, p0, Lcom/oplus/camera/capmode/w;->mVideoRecorder:Lcom/oplus/camera/capmode/x;

    invoke-virtual {v6, v1}, Lcom/oplus/camera/capmode/x;->l(I)V

    .line 2966
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "initializeRecorder, videoRecorder setMaxDuration: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v6, "VideoMode"

    invoke-static {v6, v1}, Lcom/oplus/camera/e;->a(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_d

    .line 2969
    :cond_1d
    iget-object v1, p0, Lcom/oplus/camera/capmode/w;->mVideoRecorder:Lcom/oplus/camera/capmode/x;

    iget v6, p0, Lcom/oplus/camera/capmode/w;->mMaxVideoDurationInMs:I

    invoke-virtual {v1, v6}, Lcom/oplus/camera/capmode/x;->l(I)V

    .line 2973
    :goto_d
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget v6, v0, Landroid/media/CamcorderProfile;->videoFrameWidth:I

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v6, "x"

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v6, v0, Landroid/media/CamcorderProfile;->videoFrameHeight:I

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 2974
    iget-object v6, p0, Lcom/oplus/camera/capmode/w;->mCameraUIInterface:Lcom/oplus/camera/ui/CameraUIInterface;

    iget v7, v0, Landroid/media/CamcorderProfile;->videoFrameWidth:I

    iget v8, v0, Landroid/media/CamcorderProfile;->videoFrameHeight:I

    invoke-interface {v6, v7, v8}, Lcom/oplus/camera/ui/CameraUIInterface;->b(II)V

    .line 2976
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "initializeRecorder, profile.videoFrameRate: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v7, v0, Landroid/media/CamcorderProfile;->videoFrameRate:I

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v7, ", profile.duration: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v7, v0, Landroid/media/CamcorderProfile;->duration:I

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v7, ", videoSize: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", profile.videoBitRate: "

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v0, v0, Landroid/media/CamcorderProfile;->videoBitRate:I

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "VideoMode"

    invoke-static {v1, v0}, Lcom/oplus/camera/e;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 2979
    iget-object v0, p0, Lcom/oplus/camera/capmode/w;->mCameraInterface:Lcom/oplus/camera/capmode/a;

    invoke-interface {v0}, Lcom/oplus/camera/capmode/a;->u()I

    move-result v0

    invoke-virtual {p0}, Lcom/oplus/camera/capmode/w;->getOrientationRectify()I

    move-result v1

    add-int/2addr v0, v1

    rem-int/lit16 v0, v0, 0x168

    .line 2981
    invoke-virtual {p0}, Lcom/oplus/camera/capmode/w;->isUseMediaCodec()Z

    move-result v1

    if-nez v1, :cond_1e

    .line 2982
    iget v1, p0, Lcom/oplus/camera/capmode/w;->mCameraId:I

    invoke-virtual {p0, v1, v0}, Lcom/oplus/camera/capmode/w;->getJpegOrientation(II)I

    move-result v0

    .line 2985
    :cond_1e
    iget-object v1, p0, Lcom/oplus/camera/capmode/w;->mVideoRecorder:Lcom/oplus/camera/capmode/x;

    invoke-virtual {v1, v0}, Lcom/oplus/camera/capmode/x;->o(I)V

    .line 2987
    iget-object v0, p0, Lcom/oplus/camera/capmode/w;->mVideoFileDescriptor:Landroid/os/ParcelFileDescriptor;

    if-eqz v0, :cond_1f

    .line 2988
    iget-object v1, p0, Lcom/oplus/camera/capmode/w;->mVideoRecorder:Lcom/oplus/camera/capmode/x;

    invoke-virtual {v0}, Landroid/os/ParcelFileDescriptor;->getFileDescriptor()Ljava/io/FileDescriptor;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/oplus/camera/capmode/x;->a(Ljava/io/FileDescriptor;)V

    goto :goto_e

    .line 2990
    :cond_1f
    iget-object v0, p0, Lcom/oplus/camera/capmode/w;->mVideoRecorder:Lcom/oplus/camera/capmode/x;

    iget-object v1, p0, Lcom/oplus/camera/capmode/w;->mVideoFilename:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/oplus/camera/capmode/x;->b(Ljava/lang/String;)V

    .line 2993
    :goto_e
    invoke-virtual {p0}, Lcom/oplus/camera/capmode/w;->getRealCaptureRate()Ljava/lang/Double;

    move-result-object v0

    if-eqz v0, :cond_20

    invoke-virtual {p0}, Lcom/oplus/camera/capmode/w;->getRealCaptureRate()Ljava/lang/Double;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v0

    const-wide/16 v6, 0x0

    cmpl-double v0, v0, v6

    if-lez v0, :cond_20

    .line 2994
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "initializeRecorder, setCaptureRate: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/oplus/camera/capmode/w;->getRealCaptureRate()Ljava/lang/Double;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "VideoMode"

    invoke-static {v1, v0}, Lcom/oplus/camera/e;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 2996
    iget-object v0, p0, Lcom/oplus/camera/capmode/w;->mVideoRecorder:Lcom/oplus/camera/capmode/x;

    invoke-virtual {p0}, Lcom/oplus/camera/capmode/w;->getRealCaptureRate()Ljava/lang/Double;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v6

    invoke-virtual {v0, v6, v7}, Lcom/oplus/camera/capmode/x;->a(D)V

    .line 2999
    :cond_20
    sget-object v0, Lcom/oplus/camera/Storage;->u:Ljava/lang/String;

    invoke-static {v0}, Lcom/oplus/camera/Storage;->c(Ljava/lang/String;)J

    move-result-wide v0

    cmp-long v2, v4, v2

    if-lez v2, :cond_21

    cmp-long v2, v4, v0

    if-gez v2, :cond_21

    move-wide v0, v4

    .line 3006
    :cond_21
    :try_start_1
    iget-object v2, p0, Lcom/oplus/camera/capmode/w;->mVideoRecorder:Lcom/oplus/camera/capmode/x;

    invoke-virtual {v2, v0, v1}, Lcom/oplus/camera/capmode/x;->a(J)V
    :try_end_1
    .catch Ljava/lang/RuntimeException; {:try_start_1 .. :try_end_1} :catch_0

    .line 3011
    :catch_0
    iget-object v2, p0, Lcom/oplus/camera/capmode/w;->mVideoRecorder:Lcom/oplus/camera/capmode/x;

    invoke-virtual {v2, p0}, Lcom/oplus/camera/capmode/x;->a(Lcom/oplus/camera/capmode/x$f;)V

    .line 3012
    iget-object v2, p0, Lcom/oplus/camera/capmode/w;->mVideoRecorder:Lcom/oplus/camera/capmode/x;

    invoke-virtual {v2, p0}, Lcom/oplus/camera/capmode/x;->a(Lcom/oplus/camera/capmode/x$h;)V

    .line 3013
    iget-object v2, p0, Lcom/oplus/camera/capmode/w;->mVideoRecorder:Lcom/oplus/camera/capmode/x;

    invoke-virtual {v2, p0}, Lcom/oplus/camera/capmode/x;->a(Lcom/oplus/camera/capmode/x$g;)V

    .line 3014
    iget-object v2, p0, Lcom/oplus/camera/capmode/w;->mVideoRecorder:Lcom/oplus/camera/capmode/x;

    invoke-virtual {p0, v2}, Lcom/oplus/camera/capmode/w;->onInitializeRecorder(Lcom/oplus/camera/capmode/x;)V

    .line 3016
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "initializeRecorder end, maxFileSize: "

    invoke-virtual {p0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v0, ", requestedSizeLimit: "

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string v0, "VideoMode"

    invoke-static {v0, p0}, Lcom/oplus/camera/e;->a(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :catchall_0
    move-exception p0

    .line 2821
    :try_start_2
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw p0
.end method

.method private isHalEisCache()Z
    .locals 1

    .line 4344
    iget-boolean v0, p0, Lcom/oplus/camera/capmode/w;->mbEisHalCache:Z

    if-nez v0, :cond_1

    .line 4345
    invoke-virtual {p0}, Lcom/oplus/camera/capmode/w;->isSatOpen()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "com.oplus.sat.use.hal"

    .line 4346
    invoke-static {v0}, Lcom/oplus/camera/aps/config/CameraConfig;->getConfigBooleanValue(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 4347
    invoke-virtual {p0}, Lcom/oplus/camera/capmode/w;->needApsToProcessVideoWatermark()Z

    move-result p0

    if-eqz p0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p0, 0x1

    :goto_1
    return p0
.end method

.method private isHalVideoWaterSlogan()Z
    .locals 0

    .line 4395
    invoke-virtual {p0}, Lcom/oplus/camera/capmode/w;->isSloganOpen()Z

    move-result p0

    if-eqz p0, :cond_0

    const-string p0, "com.oplus.video.watermark.hal.support"

    invoke-static {p0}, Lcom/oplus/camera/aps/config/CameraConfig;->getConfigBooleanValue(Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method private isVideoFrameProcessInAPS()Z
    .locals 6

    .line 2377
    iget-object v0, p0, Lcom/oplus/camera/capmode/w;->mPreviewConfig:Lcom/oplus/camera/aps/util/AlgoSwitchConfig$PreviewConfig;

    const/4 v1, 0x0

    if-eqz v0, :cond_5

    iget-object v0, v0, Lcom/oplus/camera/aps/util/AlgoSwitchConfig$PreviewConfig;->mComponentMap:Landroid/util/ArrayMap;

    if-nez v0, :cond_0

    goto :goto_2

    .line 2381
    :cond_0
    iget-object v0, p0, Lcom/oplus/camera/capmode/w;->mPreviewConfig:Lcom/oplus/camera/aps/util/AlgoSwitchConfig$PreviewConfig;

    iget-object v0, v0, Lcom/oplus/camera/aps/util/AlgoSwitchConfig$PreviewConfig;->mComponentMap:Landroid/util/ArrayMap;

    const-string v2, "video"

    invoke-virtual {v0, v2}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/oplus/camera/aps/util/AlgoSwitchConfig$PreviewConfig$Component;

    if-nez v0, :cond_1

    return v1

    .line 2387
    :cond_1
    iget-object v0, v0, Lcom/oplus/camera/aps/util/AlgoSwitchConfig$PreviewConfig$Component;->mAlgoList:[Ljava/lang/String;

    .line 2389
    invoke-static {v0}, Lcom/oplus/camera/util/Util;->a([Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    return v1

    .line 2393
    :cond_2
    array-length v2, v0

    move v3, v1

    :goto_0
    if-ge v3, v2, :cond_5

    aget-object v4, v0, v3

    const-string v5, "preview_video_supereis"

    .line 2394
    invoke-virtual {v5, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_4

    const-string v5, "preview_video_eis"

    .line 2395
    invoke-virtual {v5, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_4

    const-string v5, "key_intelligent_high_frame_usage_key"

    .line 2396
    invoke-virtual {p0, v5}, Lcom/oplus/camera/capmode/w;->getSupportFunction(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_3

    const-string v5, "preview_video_frc"

    .line 2397
    invoke-virtual {v5, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_3

    goto :goto_1

    :cond_3
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_4
    :goto_1
    const/4 p0, 0x1

    return p0

    :cond_5
    :goto_2
    return v1
.end method

.method private isVideoSurfacePrepared()Z
    .locals 1

    .line 1380
    iget p0, p0, Lcom/oplus/camera/capmode/w;->mVideoSurfaceState:I

    const/4 v0, 0x2

    if-ne p0, v0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method private isVideoSurfacePreparing()Z
    .locals 1

    .line 1384
    iget p0, p0, Lcom/oplus/camera/capmode/w;->mVideoSurfaceState:I

    const/4 v0, 0x1

    if-ne p0, v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method private matchRecModeToVideoQuality(Ljava/lang/String;)I
    .locals 5

    .line 3286
    iget-object v0, p0, Lcom/oplus/camera/capmode/w;->mVideoSizeType:Ljava/lang/String;

    const-string v1, "video_size_4kuhd"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const/4 v2, 0x5

    const/4 v3, 0x6

    if-eqz v0, :cond_0

    :goto_0
    move p1, v3

    goto :goto_1

    .line 3288
    :cond_0
    iget-object v0, p0, Lcom/oplus/camera/capmode/w;->mVideoSizeType:Ljava/lang/String;

    const-string v4, "video_size_1080p"

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    goto :goto_0

    .line 3290
    :cond_1
    iget-object v0, p0, Lcom/oplus/camera/capmode/w;->mVideoSizeType:Ljava/lang/String;

    const-string v4, "video_size_720p"

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    move p1, v2

    goto :goto_1

    .line 3292
    :cond_2
    iget-object v0, p0, Lcom/oplus/camera/capmode/w;->mVideoSizeType:Ljava/lang/String;

    const-string v4, "video_size_480p"

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    const/4 p1, 0x4

    goto :goto_1

    .line 3296
    :cond_3
    iget-object v0, p0, Lcom/oplus/camera/capmode/w;->mVideoSizeType:Ljava/lang/String;

    const-string v4, "video_size_cif"

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    const/4 p1, 0x3

    goto :goto_1

    .line 3298
    :cond_4
    iget-object v0, p0, Lcom/oplus/camera/capmode/w;->mVideoSizeType:Ljava/lang/String;

    const-string v4, "video_size_qcif"

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    const/4 p1, 0x2

    goto :goto_1

    .line 3301
    :cond_5
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    .line 3304
    :goto_1
    invoke-virtual {p0}, Lcom/oplus/camera/capmode/w;->isMultiVideoMode()Z

    move-result v0

    if-eqz v0, :cond_7

    const-string p1, "com.oplus.multi.video.mode.1080p.support"

    .line 3305
    invoke-static {p1}, Lcom/oplus/camera/aps/config/CameraConfig;->getConfigBooleanValue(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_6

    move p1, v3

    goto :goto_2

    :cond_6
    move p1, v2

    .line 3312
    :cond_7
    :goto_2
    invoke-virtual {p0}, Lcom/oplus/camera/capmode/w;->isFastVideoMode()Z

    move-result v0

    if-eqz v0, :cond_8

    .line 3313
    iget-object v0, p0, Lcom/oplus/camera/capmode/w;->mVideoSizeType:Ljava/lang/String;

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_8

    const-string v0, "com.oplus.feature.fast.video.resolution.switch"

    .line 3314
    invoke-static {v0}, Lcom/oplus/camera/aps/config/CameraConfig;->getConfigBooleanValue(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_8

    const/16 p1, 0x3f0

    .line 3319
    :cond_8
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "matchRecModeToVideoQuality, mVideoSizeType: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/oplus/camera/capmode/w;->mVideoSizeType:Ljava/lang/String;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, ", videoQuality: "

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string v0, "VideoMode"

    invoke-static {v0, p0}, Lcom/oplus/camera/e;->a(Ljava/lang/String;Ljava/lang/String;)V

    return p1
.end method

.method private pauseAudioPlayback()V
    .locals 5

    const-string v0, "VideoMode"

    const-string v1, "pauseAudioPlayback"

    .line 2611
    invoke-static {v0, v1}, Lcom/oplus/camera/e;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 2613
    iget-object v1, p0, Lcom/oplus/camera/capmode/w;->mActivity:Landroid/app/Activity;

    invoke-virtual {v1}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    const-string v2, "audio"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/media/AudioManager;

    const/4 v2, 0x0

    const/4 v3, 0x3

    const/4 v4, 0x2

    .line 2615
    invoke-virtual {v1, v2, v3, v4}, Landroid/media/AudioManager;->requestAudioFocus(Landroid/media/AudioManager$OnAudioFocusChangeListener;II)I

    move-result v1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_0

    .line 2618
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "pauseAudioPlayback, Not send broadcast to pause the background music: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Lcom/oplus/camera/e;->a(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v3, 0x0

    .line 2620
    iput-boolean v3, p0, Lcom/oplus/camera/capmode/w;->mbBroadcastPauseMusic:Z

    :cond_0
    if-nez v1, :cond_1

    .line 2624
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "pauseAudioPlayback, send broadcast to pause the background music: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/oplus/camera/e;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 2626
    iput-boolean v2, p0, Lcom/oplus/camera/capmode/w;->mbBroadcastPauseMusic:Z

    .line 2627
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.heytap.music.musicservicecommand.pause"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v1, "command"

    const-string v2, "VideoReqMusicPause"

    .line 2628
    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 2629
    iget-object p0, p0, Lcom/oplus/camera/capmode/w;->mActivity:Landroid/app/Activity;

    invoke-virtual {p0, v0}, Landroid/app/Activity;->sendBroadcast(Landroid/content/Intent;)V

    :cond_1
    return-void
.end method

.method private prepareVideoSurface()Z
    .locals 10

    const-string v0, "type_video"

    .line 3570
    invoke-virtual {p0, v0}, Lcom/oplus/camera/capmode/w;->needSurface(Ljava/lang/String;)Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_9

    iget-object v0, p0, Lcom/oplus/camera/capmode/w;->mPreferences:Landroid/content/SharedPreferences;

    if-eqz v0, :cond_9

    const-string v0, "VideoMode"

    const-string v2, "prepareVideoSurface"

    .line 3571
    invoke-static {v0, v2}, Lcom/oplus/camera/e;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 3573
    invoke-direct {p0, v1}, Lcom/oplus/camera/capmode/w;->setVideoSurfaceState(I)V

    .line 3574
    invoke-virtual {p0}, Lcom/oplus/camera/capmode/w;->beforeConfig()V

    .line 3575
    invoke-virtual {p0}, Lcom/oplus/camera/capmode/w;->readProfile()V

    const-string v0, "prepareVideoSurface"

    .line 3577
    invoke-static {v0}, Lcom/oplus/camera/e;->a(Ljava/lang/String;)V

    .line 3579
    new-instance v0, Lcom/oplus/camera/capmode/x;

    iget-object v2, p0, Lcom/oplus/camera/capmode/w;->mCameraInterface:Lcom/oplus/camera/capmode/a;

    invoke-interface {v2}, Lcom/oplus/camera/capmode/a;->al()F

    move-result v2

    const/4 v3, 0x0

    invoke-direct {v0, v3, v2}, Lcom/oplus/camera/capmode/x;-><init>(ZF)V

    .line 3581
    iget-object v2, p0, Lcom/oplus/camera/capmode/w;->mVideoSurfaceLock:Ljava/lang/Object;

    monitor-enter v2

    :try_start_0
    const-string v4, "com.oplus.feature.video.surface.release.support"

    .line 3582
    invoke-static {v4}, Lcom/oplus/camera/aps/config/CameraConfig;->getConfigBooleanValue(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 3583
    iget-object v4, p0, Lcom/oplus/camera/capmode/w;->mVideoSurface:Landroid/view/Surface;

    if-eqz v4, :cond_0

    .line 3584
    iget-object v4, p0, Lcom/oplus/camera/capmode/w;->mVideoSurface:Landroid/view/Surface;

    invoke-virtual {v4}, Landroid/view/Surface;->release()V

    .line 3587
    :cond_0
    invoke-static {}, Landroid/media/MediaCodec;->createPersistentInputSurface()Landroid/view/Surface;

    move-result-object v4

    iput-object v4, p0, Lcom/oplus/camera/capmode/w;->mVideoSurface:Landroid/view/Surface;

    goto :goto_0

    .line 3588
    :cond_1
    iget-object v4, p0, Lcom/oplus/camera/capmode/w;->mVideoSurface:Landroid/view/Surface;

    if-nez v4, :cond_2

    .line 3589
    invoke-static {}, Landroid/media/MediaCodec;->createPersistentInputSurface()Landroid/view/Surface;

    move-result-object v4

    iput-object v4, p0, Lcom/oplus/camera/capmode/w;->mVideoSurface:Landroid/view/Surface;

    .line 3592
    :cond_2
    :goto_0
    iget-object v4, p0, Lcom/oplus/camera/capmode/w;->mVideoSurface:Landroid/view/Surface;

    invoke-virtual {v0, v4}, Lcom/oplus/camera/capmode/x;->a(Landroid/view/Surface;)V

    .line 3593
    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/4 v2, 0x2

    .line 3595
    invoke-virtual {v0, v2}, Lcom/oplus/camera/capmode/x;->f(I)V

    .line 3596
    invoke-virtual {v0, v2}, Lcom/oplus/camera/capmode/x;->h(I)V

    .line 3597
    iget v4, p0, Lcom/oplus/camera/capmode/w;->mOrientation:I

    invoke-virtual {v0, v4}, Lcom/oplus/camera/capmode/x;->o(I)V

    .line 3599
    invoke-virtual {p0}, Lcom/oplus/camera/capmode/w;->getVideoCodec()Ljava/lang/String;

    move-result-object v4

    const/16 v5, 0x1e

    .line 3601
    invoke-virtual {v0, v5}, Lcom/oplus/camera/capmode/x;->i(I)V

    .line 3612
    iget-object v5, p0, Lcom/oplus/camera/capmode/w;->mProfile:Landroid/media/CamcorderProfile;

    iget v5, v5, Landroid/media/CamcorderProfile;->videoFrameWidth:I

    iget-object v6, p0, Lcom/oplus/camera/capmode/w;->mProfile:Landroid/media/CamcorderProfile;

    iget v6, v6, Landroid/media/CamcorderProfile;->videoFrameHeight:I

    invoke-virtual {v0, v5, v6}, Lcom/oplus/camera/capmode/x;->a(II)V

    const-string v5, "H264"

    .line 3615
    invoke-virtual {v5, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_3

    .line 3616
    invoke-virtual {v0, v2}, Lcom/oplus/camera/capmode/x;->j(I)V

    const/16 v4, 0x8

    const/16 v5, 0x800

    .line 3617
    invoke-virtual {v0, v4, v5}, Lcom/oplus/camera/capmode/x;->b(II)V

    .line 3619
    iget-object v4, p0, Lcom/oplus/camera/capmode/w;->mProfile:Landroid/media/CamcorderProfile;

    iget v4, v4, Landroid/media/CamcorderProfile;->videoBitRate:I

    invoke-virtual {v0, v4}, Lcom/oplus/camera/capmode/x;->g(I)V

    goto :goto_1

    :cond_3
    const-string v5, "H265"

    .line 3620
    invoke-virtual {v5, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_4

    const/4 v4, 0x5

    .line 3621
    invoke-virtual {v0, v4}, Lcom/oplus/camera/capmode/x;->j(I)V

    .line 3622
    iget-object v4, p0, Lcom/oplus/camera/capmode/w;->mProfile:Landroid/media/CamcorderProfile;

    iget v4, v4, Landroid/media/CamcorderProfile;->videoBitRate:I

    div-int/2addr v4, v2

    invoke-virtual {v0, v4}, Lcom/oplus/camera/capmode/x;->g(I)V

    .line 3624
    invoke-virtual {p0}, Lcom/oplus/camera/capmode/w;->isVideo10BitOpen()Z

    move-result v4

    if-eqz v4, :cond_4

    const/16 v4, 0x4000

    .line 3625
    invoke-virtual {v0, v2, v4}, Lcom/oplus/camera/capmode/x;->b(II)V

    :cond_4
    :goto_1
    const/4 v4, 0x0

    :try_start_1
    const-string v5, "VideoMode"

    const-string v6, "TempMediaRecorder"

    .line 3633
    invoke-static {v5, v6}, Ljava/io/File;->createTempFile(Ljava/lang/String;Ljava/lang/String;)Ljava/io/File;

    move-result-object v4
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_2

    :catch_0
    move-exception v5

    .line 3635
    invoke-virtual {v5}, Ljava/io/IOException;->printStackTrace()V

    :goto_2
    if-eqz v4, :cond_5

    .line 3639
    invoke-virtual {v4}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v5}, Lcom/oplus/camera/capmode/x;->b(Ljava/lang/String;)V

    goto :goto_3

    .line 3641
    :cond_5
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "prepareVideoSurface, setOutputFile failed, tempFile: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    const-string v6, "VideoMode"

    invoke-static {v6, v5}, Lcom/oplus/camera/e;->f(Ljava/lang/String;Ljava/lang/String;)V

    .line 3644
    :goto_3
    invoke-virtual {p0}, Lcom/oplus/camera/capmode/w;->getRealCaptureRate()Ljava/lang/Double;

    move-result-object v5

    .line 3646
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "prepareVideoSurface, captureRate: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    const-string v7, "VideoMode"

    invoke-static {v7, v6}, Lcom/oplus/camera/e;->a(Ljava/lang/String;Ljava/lang/String;)V

    if-eqz v5, :cond_6

    .line 3648
    invoke-virtual {v5}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v6

    const-wide/16 v8, 0x0

    cmpl-double v6, v6, v8

    if-lez v6, :cond_6

    .line 3649
    invoke-virtual {v5}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v5

    invoke-virtual {v0, v5, v6}, Lcom/oplus/camera/capmode/x;->a(D)V

    .line 3653
    :cond_6
    :try_start_2
    invoke-virtual {v0}, Lcom/oplus/camera/capmode/x;->e()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_4

    :catch_1
    move-exception v5

    .line 3655
    invoke-virtual {v5}, Ljava/io/IOException;->printStackTrace()V

    .line 3658
    :goto_4
    invoke-virtual {v0}, Lcom/oplus/camera/capmode/x;->d()Z

    .line 3660
    iget-boolean v0, p0, Lcom/oplus/camera/capmode/w;->mbMediaLimitProcess:Z

    if-eqz v0, :cond_7

    .line 3661
    invoke-static {}, Lcom/oplus/camera/ui/control/e;->d()V

    .line 3662
    iput-boolean v3, p0, Lcom/oplus/camera/capmode/w;->mbMediaLimitProcess:Z

    :cond_7
    if-eqz v4, :cond_8

    .line 3665
    invoke-virtual {v4}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_8

    .line 3666
    invoke-virtual {v4}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/oplus/camera/q/a;->c(Ljava/lang/String;)Z

    .line 3669
    :cond_8
    invoke-direct {p0, v2}, Lcom/oplus/camera/capmode/w;->setVideoSurfaceState(I)V

    .line 3670
    iget-object p0, p0, Lcom/oplus/camera/capmode/w;->mPrepareVideoSurface:Landroid/os/ConditionVariable;

    invoke-virtual {p0}, Landroid/os/ConditionVariable;->open()V

    const-string p0, "prepareVideoSurface"

    .line 3672
    invoke-static {p0}, Lcom/oplus/camera/e;->b(Ljava/lang/String;)V

    const-string p0, "VideoMode"

    const-string v0, "prepareVideoSurface, X"

    .line 3674
    invoke-static {p0, v0}, Lcom/oplus/camera/e;->b(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_5

    :catchall_0
    move-exception p0

    .line 3593
    :try_start_3
    monitor-exit v2
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    throw p0

    :cond_9
    :goto_5
    return v1
.end method

.method private recDisabledReturn()Z
    .locals 7

    const-string v0, "VideoMode"

    const-string v1, "recDisabledReturn"

    .line 2634
    invoke-static {v0, v1}, Lcom/oplus/camera/e;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 2637
    iget-boolean v0, p0, Lcom/oplus/camera/capmode/w;->mbLowBatteryDisabled:Z

    if-eqz v0, :cond_0

    .line 2638
    iget-object v1, p0, Lcom/oplus/camera/capmode/w;->mCameraUIInterface:Lcom/oplus/camera/ui/CameraUIInterface;

    const v2, 0x7f100230

    const/4 v3, -0x1

    const/4 v4, 0x1

    const/4 v5, 0x0

    const/4 v6, 0x0

    invoke-interface/range {v1 .. v6}, Lcom/oplus/camera/ui/CameraUIInterface;->a(IIZZZ)V

    const-string v0, "disable_code"

    const-string v1, "battery_video"

    .line 2640
    invoke-virtual {p0, v0, v1}, Lcom/oplus/camera/capmode/w;->reportReminderToDcs(Ljava/lang/String;Ljava/lang/String;)V

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method private releaseVideoRecorderWrapper()V
    .locals 4

    const-string v0, "VideoMode"

    const-string v1, "releaseVideoRecorderWrapper, Releasing media recorder."

    .line 1576
    invoke-static {v0, v1}, Lcom/oplus/camera/e;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 1578
    iget-object v0, p0, Lcom/oplus/camera/capmode/w;->mVideoRecorderSig:Ljava/lang/Object;

    monitor-enter v0

    .line 1579
    :try_start_0
    iget-object v1, p0, Lcom/oplus/camera/capmode/w;->mVideoRecorder:Lcom/oplus/camera/capmode/x;

    if-eqz v1, :cond_1

    .line 1580
    iget-object v1, p0, Lcom/oplus/camera/capmode/w;->mVideoFilename:Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 1581
    iget-object v1, p0, Lcom/oplus/camera/capmode/w;->mRecordHandler:Landroid/os/Handler;

    const/4 v2, 0x4

    iget-object v3, p0, Lcom/oplus/camera/capmode/w;->mVideoFilename:Ljava/lang/String;

    invoke-virtual {v1, v2, v3}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v1}, Landroid/os/Message;->sendToTarget()V

    .line 1584
    :cond_0
    iget-object v1, p0, Lcom/oplus/camera/capmode/w;->mVideoRecorder:Lcom/oplus/camera/capmode/x;

    invoke-virtual {v1}, Lcom/oplus/camera/capmode/x;->d()Z

    const/4 v1, 0x0

    .line 1585
    iput-object v1, p0, Lcom/oplus/camera/capmode/w;->mVideoRecorder:Lcom/oplus/camera/capmode/x;

    .line 1587
    :cond_1
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method private reportPauseClickMsg()V
    .locals 3

    .line 1332
    new-instance v0, Lcom/oplus/camera/statistics/model/VideoRecordMsgData;

    iget-object v1, p0, Lcom/oplus/camera/capmode/w;->mActivity:Landroid/app/Activity;

    invoke-direct {v0, v1}, Lcom/oplus/camera/statistics/model/VideoRecordMsgData;-><init>(Landroid/content/Context;)V

    const/4 v1, 0x1

    .line 1333
    invoke-virtual {v0, v1}, Lcom/oplus/camera/statistics/model/VideoRecordMsgData;->buildEvent(Z)V

    .line 1334
    iput v1, v0, Lcom/oplus/camera/statistics/model/VideoRecordMsgData;->mCaptureType:I

    .line 1335
    invoke-virtual {p0}, Lcom/oplus/camera/capmode/w;->getCameraMode()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/oplus/camera/statistics/model/VideoRecordMsgData;->mCaptureMode:Ljava/lang/String;

    .line 1336
    iget v1, p0, Lcom/oplus/camera/capmode/w;->mCameraId:I

    iput v1, v0, Lcom/oplus/camera/statistics/model/VideoRecordMsgData;->mCameraId:I

    .line 1337
    iget v1, p0, Lcom/oplus/camera/capmode/w;->mOrientation:I

    iput v1, v0, Lcom/oplus/camera/statistics/model/VideoRecordMsgData;->mOrientation:I

    .line 1338
    iget-wide v1, p0, Lcom/oplus/camera/capmode/w;->mRecordingTotalTime:J

    iput-wide v1, v0, Lcom/oplus/camera/statistics/model/VideoRecordMsgData;->mBeforePauseDuration:J

    .line 1339
    iget v1, p0, Lcom/oplus/camera/capmode/w;->mPauseClickTimes:I

    int-to-long v1, v1

    iput-wide v1, v0, Lcom/oplus/camera/statistics/model/VideoRecordMsgData;->mPauseTimes:J

    .line 1340
    invoke-virtual {p0, v0}, Lcom/oplus/camera/capmode/w;->onGetBeforeCaptureMsgCommonData(Lcom/oplus/camera/statistics/model/DcsMsgData;)Lcom/oplus/camera/statistics/model/DcsMsgData;

    .line 1341
    invoke-virtual {v0}, Lcom/oplus/camera/statistics/model/VideoRecordMsgData;->report()V

    return-void
.end method

.method private reportVideoRecordToDcs(Z)V
    .locals 18

    move-object/from16 v0, p0

    const/4 v1, 0x0

    .line 3907
    iput v1, v0, Lcom/oplus/camera/capmode/w;->mPauseClickTimes:I

    .line 3908
    new-instance v2, Lcom/oplus/camera/statistics/model/VideoRecordMsgData;

    invoke-static {}, Lcom/oplus/camera/util/Util;->l()Landroid/content/Context;

    move-result-object v3

    invoke-direct {v2, v3}, Lcom/oplus/camera/statistics/model/VideoRecordMsgData;-><init>(Landroid/content/Context;)V

    .line 3909
    iget-object v3, v0, Lcom/oplus/camera/capmode/w;->mCameraUIInterface:Lcom/oplus/camera/ui/CameraUIInterface;

    invoke-interface {v3}, Lcom/oplus/camera/ui/CameraUIInterface;->f()Z

    move-result v3

    iget-object v4, v0, Lcom/oplus/camera/capmode/w;->mCameraUIInterface:Lcom/oplus/camera/ui/CameraUIInterface;

    invoke-interface {v4}, Lcom/oplus/camera/ui/CameraUIInterface;->g()Z

    move-result v4

    invoke-static {v2, v3, v4}, Lcom/oplus/camera/statistics/DcsUtil;->fillSecondScreenStatus(Lcom/oplus/camera/statistics/model/DcsMsgData;ZZ)V

    .line 3910
    invoke-virtual/range {p0 .. p0}, Lcom/oplus/camera/capmode/w;->getCameraMode()Ljava/lang/String;

    move-result-object v3

    iput-object v3, v2, Lcom/oplus/camera/statistics/model/VideoRecordMsgData;->mCaptureMode:Ljava/lang/String;

    .line 3911
    invoke-virtual/range {p0 .. p0}, Lcom/oplus/camera/capmode/w;->isCaptureModeType()Z

    move-result v3

    const/4 v4, 0x1

    xor-int/2addr v3, v4

    iput v3, v2, Lcom/oplus/camera/statistics/model/VideoRecordMsgData;->mCaptureType:I

    .line 3912
    invoke-virtual/range {p0 .. p0}, Lcom/oplus/camera/capmode/w;->getCameraMode()Ljava/lang/String;

    move-result-object v3

    iput-object v3, v2, Lcom/oplus/camera/statistics/model/VideoRecordMsgData;->mVideoMode:Ljava/lang/String;

    .line 3913
    iget-wide v5, v0, Lcom/oplus/camera/capmode/w;->mRecordingTotalTime:J

    iput-wide v5, v2, Lcom/oplus/camera/statistics/model/VideoRecordMsgData;->mVideoTime:J

    .line 3914
    invoke-virtual/range {p0 .. p0}, Lcom/oplus/camera/capmode/w;->getVideoSizeType()Ljava/lang/String;

    move-result-object v3

    iput-object v3, v2, Lcom/oplus/camera/statistics/model/VideoRecordMsgData;->mVideoSizeType:Ljava/lang/String;

    .line 3915
    invoke-virtual/range {p0 .. p0}, Lcom/oplus/camera/capmode/w;->getFlashMode()Ljava/lang/String;

    move-result-object v3

    iput-object v3, v2, Lcom/oplus/camera/statistics/model/VideoRecordMsgData;->mFlashMode:Ljava/lang/String;

    .line 3916
    sget-object v3, Lcom/oplus/camera/Storage;->u:Ljava/lang/String;

    invoke-static {v3}, Lcom/oplus/camera/Storage;->c(Ljava/lang/String;)J

    move-result-wide v5

    const-wide/16 v7, 0x400

    div-long/2addr v5, v7

    iput-wide v5, v2, Lcom/oplus/camera/statistics/model/VideoRecordMsgData;->mAvaliableStorage:J

    .line 3917
    iget v3, v0, Lcom/oplus/camera/capmode/w;->mOrientation:I

    iput v3, v2, Lcom/oplus/camera/statistics/model/VideoRecordMsgData;->mOrientation:I

    .line 3918
    invoke-virtual/range {p0 .. p0}, Lcom/oplus/camera/capmode/w;->getVideoCodec()Ljava/lang/String;

    move-result-object v3

    iput-object v3, v2, Lcom/oplus/camera/statistics/model/VideoRecordMsgData;->mVideoCodec:Ljava/lang/String;

    .line 3919
    iget-object v3, v0, Lcom/oplus/camera/capmode/w;->mPreferences:Landroid/content/SharedPreferences;

    .line 3920
    invoke-static {}, Lcom/oplus/camera/util/Util;->l()Landroid/content/Context;

    move-result-object v5

    const v6, 0x7f100411

    invoke-virtual {v5, v6}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v5

    const-string v6, "pref_camera_storage_key"

    .line 3919
    invoke-interface {v3, v6, v5}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const-string v5, "on"

    invoke-virtual {v5, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    invoke-static {v3}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v3

    iput-object v3, v2, Lcom/oplus/camera/statistics/model/VideoRecordMsgData;->mIsSDCard:Ljava/lang/String;

    .line 3921
    invoke-static {}, Lcom/oplus/camera/util/Util;->aI()Z

    move-result v3

    const-string v6, "off"

    if-eqz v3, :cond_0

    move-object v3, v5

    goto :goto_0

    :cond_0
    move-object v3, v6

    :goto_0
    iput-object v3, v2, Lcom/oplus/camera/statistics/model/VideoRecordMsgData;->mMagneticShellStatus:Ljava/lang/String;

    const-string v3, "pref_video_super_eis_key"

    .line 3923
    invoke-virtual {v0, v3}, Lcom/oplus/camera/capmode/w;->getSupportFunction(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_1

    .line 3924
    iget-object v7, v0, Lcom/oplus/camera/capmode/w;->mPreferences:Landroid/content/SharedPreferences;

    invoke-interface {v7, v3, v6}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    iput-object v7, v2, Lcom/oplus/camera/statistics/model/VideoRecordMsgData;->mIsStablized:Ljava/lang/String;

    :cond_1
    const-string v7, "key_support_super_eis_wide_menu"

    .line 3927
    invoke-virtual {v0, v7}, Lcom/oplus/camera/capmode/w;->getSupportFunction(Ljava/lang/String;)Z

    move-result v8

    const-string v9, "ultra_on"

    const-string v10, "pref_super_eis_wide_key"

    const-string v11, "ultra_off"

    if-eqz v8, :cond_4

    .line 3928
    iget-object v8, v0, Lcom/oplus/camera/capmode/w;->mPreferences:Landroid/content/SharedPreferences;

    invoke-interface {v8, v3, v6}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v6, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_2

    .line 3929
    iput-object v11, v2, Lcom/oplus/camera/statistics/model/VideoRecordMsgData;->mUltraSteady:Ljava/lang/String;

    goto :goto_1

    .line 3931
    :cond_2
    iget-object v8, v0, Lcom/oplus/camera/capmode/w;->mPreferences:Landroid/content/SharedPreferences;

    invoke-interface {v8, v10, v1}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v8

    if-eqz v8, :cond_3

    .line 3932
    iput-object v9, v2, Lcom/oplus/camera/statistics/model/VideoRecordMsgData;->mUltraSteady:Ljava/lang/String;

    goto :goto_1

    .line 3934
    :cond_3
    iput-object v11, v2, Lcom/oplus/camera/statistics/model/VideoRecordMsgData;->mUltraSteady:Ljava/lang/String;

    .line 3939
    :cond_4
    :goto_1
    iget-object v8, v0, Lcom/oplus/camera/capmode/w;->mCameraInterface:Lcom/oplus/camera/capmode/a;

    invoke-interface {v8}, Lcom/oplus/camera/capmode/a;->m()Z

    move-result v8

    if-eqz v8, :cond_5

    const/4 v8, 0x3

    .line 3940
    invoke-static {v8}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v8

    iput-object v8, v2, Lcom/oplus/camera/statistics/model/VideoRecordMsgData;->mCameraEnterType:Ljava/lang/String;

    .line 3943
    :cond_5
    iget-object v8, v0, Lcom/oplus/camera/capmode/w;->mCameraInterface:Lcom/oplus/camera/capmode/a;

    invoke-interface {v8}, Lcom/oplus/camera/capmode/a;->ax()I

    move-result v8

    iput v8, v2, Lcom/oplus/camera/statistics/model/VideoRecordMsgData;->mCameraId:I

    const-string v8, "key_support_video_recorder"

    .line 3945
    invoke-virtual {v0, v8}, Lcom/oplus/camera/capmode/w;->getSupportFunction(Ljava/lang/String;)Z

    move-result v8

    const-string v12, "normal"

    if-eqz v8, :cond_7

    iget-boolean v8, v0, Lcom/oplus/camera/capmode/w;->mbFrontCamera:Z

    if-nez v8, :cond_7

    .line 3947
    iget-object v8, v0, Lcom/oplus/camera/capmode/w;->mSoundType:Ljava/lang/String;

    iput-object v8, v2, Lcom/oplus/camera/statistics/model/VideoRecordMsgData;->mVideoRecorderSound:Ljava/lang/String;

    .line 3948
    iget-object v8, v0, Lcom/oplus/camera/capmode/w;->mPreferences:Landroid/content/SharedPreferences;

    iget-boolean v13, v0, Lcom/oplus/camera/capmode/w;->mbFrontCamera:Z

    if-eqz v13, :cond_6

    const-string v13, "pref_sound_types_key_front"

    goto :goto_2

    :cond_6
    const-string v13, "pref_sound_types_key_rear"

    .line 3950
    :goto_2
    invoke-static {}, Lcom/oplus/camera/util/Util;->l()Landroid/content/Context;

    move-result-object v14

    const v15, 0x7f10049d

    invoke-virtual {v14, v15}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v14

    .line 3948
    invoke-interface {v8, v13, v14}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    iput-object v8, v0, Lcom/oplus/camera/capmode/w;->mSoundType:Ljava/lang/String;

    .line 3952
    iget-object v8, v0, Lcom/oplus/camera/capmode/w;->mSoundType:Ljava/lang/String;

    invoke-virtual {v12, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_7

    .line 3953
    iget-object v8, v0, Lcom/oplus/camera/capmode/w;->mNoiseFilter:Ljava/lang/String;

    iput-object v8, v2, Lcom/oplus/camera/statistics/model/VideoRecordMsgData;->mNoiseFilter:Ljava/lang/String;

    :cond_7
    const-string v8, "key_support_makeup"

    .line 3957
    invoke-virtual {v0, v8}, Lcom/oplus/camera/capmode/w;->getSupportFunction(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_9

    .line 3958
    invoke-virtual/range {p0 .. p0}, Lcom/oplus/camera/capmode/w;->getCurrMakeupIndex()I

    move-result v8

    if-nez v8, :cond_8

    .line 3961
    iput-object v6, v2, Lcom/oplus/camera/statistics/model/VideoRecordMsgData;->mMakeupType:Ljava/lang/String;

    .line 3962
    iput v1, v2, Lcom/oplus/camera/statistics/model/VideoRecordMsgData;->mMakeupValue:I

    goto :goto_3

    .line 3964
    :cond_8
    sget-object v13, Lcom/oplus/camera/statistics/model/DcsMsgData;->sKeyMakeupList:Ljava/util/List;

    invoke-interface {v13, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Ljava/lang/String;

    iput-object v13, v2, Lcom/oplus/camera/statistics/model/VideoRecordMsgData;->mMakeupType:Ljava/lang/String;

    .line 3965
    invoke-virtual {v0, v8}, Lcom/oplus/camera/capmode/w;->getMakeupItemValue(I)I

    move-result v8

    iput v8, v2, Lcom/oplus/camera/statistics/model/VideoRecordMsgData;->mMakeupValue:I

    :cond_9
    :goto_3
    const-string v8, "pref_zoom_key"

    .line 3969
    invoke-virtual {v0, v8}, Lcom/oplus/camera/capmode/w;->needUploadOplusStatistics(Ljava/lang/String;)Z

    move-result v13

    if-eqz v13, :cond_a

    .line 3970
    iget-object v13, v0, Lcom/oplus/camera/capmode/w;->mCameraInterface:Lcom/oplus/camera/capmode/a;

    invoke-interface {v13}, Lcom/oplus/camera/capmode/a;->ak()F

    move-result v13

    invoke-static {v13}, Ljava/lang/String;->valueOf(F)Ljava/lang/String;

    move-result-object v13

    iput-object v13, v2, Lcom/oplus/camera/statistics/model/VideoRecordMsgData;->mZoomValue:Ljava/lang/String;

    :cond_a
    const-string v13, "pref_watermark_function_key"

    .line 3973
    invoke-virtual {v0, v13}, Lcom/oplus/camera/capmode/w;->needUploadOplusStatistics(Ljava/lang/String;)Z

    move-result v13

    const-string v14, ""

    if-eqz v13, :cond_10

    invoke-virtual/range {p0 .. p0}, Lcom/oplus/camera/capmode/w;->isSloganOpen()Z

    move-result v13

    if-eqz v13, :cond_10

    .line 3974
    iget-object v13, v0, Lcom/oplus/camera/capmode/w;->mPreferences:Landroid/content/SharedPreferences;

    const-string v15, "pref_watermark_author_key"

    invoke-interface {v13, v15, v14}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    .line 3975
    invoke-static {v13}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v13

    if-eqz v13, :cond_b

    const-string v13, "0"

    goto :goto_4

    :cond_b
    const-string v13, "1"

    .line 3976
    :goto_4
    iput-object v13, v2, Lcom/oplus/camera/statistics/model/VideoRecordMsgData;->mIsCustomSlogan:Ljava/lang/String;

    .line 3978
    iget-object v13, v0, Lcom/oplus/camera/capmode/w;->mPreferences:Landroid/content/SharedPreferences;

    new-instance v15, Ljava/util/HashSet;

    invoke-direct {v15}, Ljava/util/HashSet;-><init>()V

    const-string v4, "pref_watermark_display_info_key"

    invoke-interface {v13, v4, v15}, Landroid/content/SharedPreferences;->getStringSet(Ljava/lang/String;Ljava/util/Set;)Ljava/util/Set;

    move-result-object v4

    if-eqz v4, :cond_f

    .line 3981
    invoke-interface {v4}, Ljava/util/Set;->isEmpty()Z

    move-result v13

    if-nez v13, :cond_f

    .line 3982
    invoke-static {}, Lcom/oplus/camera/util/Util;->l()Landroid/content/Context;

    move-result-object v13

    invoke-virtual {v13}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v13

    const v15, 0x7f030013

    invoke-virtual {v13, v15}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v13

    .line 3984
    aget-object v15, v13, v1

    invoke-interface {v4, v15}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v15

    const/16 v16, 0x1

    .line 3986
    aget-object v1, v13, v16

    invoke-interface {v4, v1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v1

    const/16 v17, 0x2

    .line 3988
    aget-object v13, v13, v17

    invoke-interface {v4, v13}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v15, :cond_c

    move-object v13, v5

    goto :goto_5

    :cond_c
    move-object v13, v6

    .line 3990
    :goto_5
    iput-object v13, v2, Lcom/oplus/camera/statistics/model/VideoRecordMsgData;->mIsModelSlogan:Ljava/lang/String;

    if-eqz v1, :cond_d

    move-object v1, v5

    goto :goto_6

    :cond_d
    move-object v1, v6

    .line 3991
    :goto_6
    iput-object v1, v2, Lcom/oplus/camera/statistics/model/VideoRecordMsgData;->mIsTimeSlogan:Ljava/lang/String;

    if-eqz v4, :cond_e

    move-object v1, v5

    goto :goto_7

    :cond_e
    move-object v1, v6

    .line 3992
    :goto_7
    iput-object v1, v2, Lcom/oplus/camera/statistics/model/VideoRecordMsgData;->mIsLocationSlogan:Ljava/lang/String;

    goto :goto_8

    :cond_f
    const/16 v16, 0x1

    .line 3995
    :goto_8
    iget-object v1, v0, Lcom/oplus/camera/capmode/w;->mPreferences:Landroid/content/SharedPreferences;

    const-string v4, "pref_watermark_position_key"

    invoke-interface {v1, v4, v14}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v2, Lcom/oplus/camera/statistics/model/VideoRecordMsgData;->mSloganLocate:Ljava/lang/String;

    .line 3997
    iget-object v1, v0, Lcom/oplus/camera/capmode/w;->mPreferences:Landroid/content/SharedPreferences;

    const-string v4, "pref_watermark_size_key"

    invoke-interface {v1, v4, v14}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v2, Lcom/oplus/camera/statistics/model/VideoRecordMsgData;->mSloganSize:Ljava/lang/String;

    goto :goto_9

    :cond_10
    move/from16 v16, v4

    .line 4001
    :goto_9
    iget-object v1, v0, Lcom/oplus/camera/capmode/w;->mPreferences:Landroid/content/SharedPreferences;

    .line 4002
    invoke-static {}, Lcom/oplus/camera/util/Util;->l()Landroid/content/Context;

    move-result-object v4

    const v13, 0x7f1004cc

    invoke-virtual {v4, v13}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v4

    const-string v13, "pref_video_hyper_lapse_key"

    .line 4001
    invoke-interface {v1, v13, v4}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v2, Lcom/oplus/camera/statistics/model/VideoRecordMsgData;->mMotionFastVideo:Ljava/lang/String;

    const-string v1, "func_video_hyper_lapse_process"

    .line 4004
    invoke-virtual {v0, v1}, Lcom/oplus/camera/capmode/w;->getSupportFunction(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_12

    iget-object v1, v2, Lcom/oplus/camera/statistics/model/VideoRecordMsgData;->mMotionFastVideo:Ljava/lang/String;

    invoke-virtual {v5, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_12

    .line 4005
    invoke-virtual/range {p0 .. p0}, Lcom/oplus/camera/capmode/w;->getHyperLapseRate()I

    move-result v1

    if-eqz v1, :cond_11

    .line 4006
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const/16 v4, 0x1e

    invoke-virtual/range {p0 .. p0}, Lcom/oplus/camera/capmode/w;->getHyperLapseRate()I

    move-result v13

    div-int/2addr v4, v13

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, "X"

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v2, Lcom/oplus/camera/statistics/model/VideoRecordMsgData;->mPosterizeTime:Ljava/lang/String;

    .line 4009
    :cond_11
    iget-object v1, v0, Lcom/oplus/camera/capmode/w;->mCameraUIInterface:Lcom/oplus/camera/ui/CameraUIInterface;

    invoke-interface {v1}, Lcom/oplus/camera/ui/CameraUIInterface;->y()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v2, Lcom/oplus/camera/statistics/model/VideoRecordMsgData;->mTouchXYMotionFastVideo:Ljava/lang/String;

    .line 4012
    :cond_12
    iget-object v1, v2, Lcom/oplus/camera/statistics/model/VideoRecordMsgData;->mMotionFastVideo:Ljava/lang/String;

    invoke-virtual {v6, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_13

    invoke-virtual/range {p0 .. p0}, Lcom/oplus/camera/capmode/w;->getTimeLapseSpeed()Ljava/lang/Double;

    move-result-object v1

    if-eqz v1, :cond_13

    .line 4013
    invoke-virtual/range {p0 .. p0}, Lcom/oplus/camera/capmode/w;->getTimeLapseSpeed()Ljava/lang/Double;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v2, Lcom/oplus/camera/statistics/model/VideoRecordMsgData;->mPosterizeTime:Ljava/lang/String;

    move-object v1, v5

    .line 4014
    invoke-virtual/range {p0 .. p0}, Lcom/oplus/camera/capmode/w;->getVideoTime()J

    move-result-wide v4

    iput-wide v4, v2, Lcom/oplus/camera/statistics/model/VideoRecordMsgData;->mGenerateTime:J

    goto :goto_a

    :cond_13
    move-object v1, v5

    .line 4017
    :goto_a
    invoke-virtual/range {p0 .. p0}, Lcom/oplus/camera/capmode/w;->getFaceBeautyCurrIndex()I

    move-result v4

    iput v4, v2, Lcom/oplus/camera/statistics/model/VideoRecordMsgData;->mSmooth:I

    .line 4019
    iget v4, v2, Lcom/oplus/camera/statistics/model/VideoRecordMsgData;->mSmooth:I

    const/16 v5, 0x66

    if-ne v4, v5, :cond_14

    .line 4020
    invoke-virtual/range {p0 .. p0}, Lcom/oplus/camera/capmode/w;->getCustomBeautyValues()[I

    move-result-object v4

    invoke-virtual {v2, v4}, Lcom/oplus/camera/statistics/model/VideoRecordMsgData;->parseFaceBeauty([I)V

    .line 4023
    :cond_14
    iget-object v4, v0, Lcom/oplus/camera/capmode/w;->mPreferences:Landroid/content/SharedPreferences;

    .line 4024
    invoke-static {}, Lcom/oplus/camera/util/Util;->l()Landroid/content/Context;

    move-result-object v5

    const v13, 0x7f100221

    invoke-virtual {v5, v13}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v5

    const-string v13, "pref_camera_recordlocation_key"

    .line 4023
    invoke-interface {v4, v13, v5}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    iput-object v4, v2, Lcom/oplus/camera/statistics/model/VideoRecordMsgData;->mIsRecordLocation:Ljava/lang/String;

    .line 4026
    iget-wide v4, v0, Lcom/oplus/camera/capmode/w;->mPreviewVideoCostTime:J

    iput-wide v4, v2, Lcom/oplus/camera/statistics/model/VideoRecordMsgData;->mPreviewCaptureCostTime:J

    .line 4028
    invoke-virtual/range {p0 .. p0}, Lcom/oplus/camera/capmode/w;->isMirrorEnable()Z

    move-result v4

    if-eqz v4, :cond_15

    .line 4029
    invoke-virtual/range {p0 .. p0}, Lcom/oplus/camera/capmode/w;->getMirror()Ljava/lang/String;

    move-result-object v4

    iput-object v4, v2, Lcom/oplus/camera/statistics/model/VideoRecordMsgData;->mIsMirror:Ljava/lang/String;

    .line 4032
    :cond_15
    invoke-virtual/range {p0 .. p0}, Lcom/oplus/camera/capmode/w;->getCameraMode()Ljava/lang/String;

    move-result-object v4

    const-string v5, "slowVideo"

    invoke-virtual {v5, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_16

    .line 4033
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual/range {p0 .. p0}, Lcom/oplus/camera/capmode/w;->getSlowVideoFps()I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, "fps"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    goto :goto_b

    :cond_16
    invoke-virtual/range {p0 .. p0}, Lcom/oplus/camera/capmode/w;->getVideoFps()I

    move-result v4

    invoke-static {v4}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v4

    :goto_b
    iput-object v4, v2, Lcom/oplus/camera/statistics/model/VideoRecordMsgData;->mVideoFps:Ljava/lang/String;

    const-string v4, "pref_filter_process_key"

    .line 4035
    invoke-virtual {v0, v4}, Lcom/oplus/camera/capmode/w;->needUploadOplusStatistics(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_18

    sget v4, Lcom/oplus/camera/ui/preview/a/j;->a:I

    invoke-virtual/range {p0 .. p0}, Lcom/oplus/camera/capmode/w;->getCurrFilterIndex()I

    move-result v5

    if-eq v4, v5, :cond_18

    .line 4036
    invoke-virtual/range {p0 .. p0}, Lcom/oplus/camera/capmode/w;->getCameraMode()Ljava/lang/String;

    move-result-object v4

    const-string v5, "microscopeVideo"

    invoke-virtual {v5, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_17

    .line 4037
    invoke-virtual/range {p0 .. p0}, Lcom/oplus/camera/capmode/w;->getCurrFilterIndex()I

    move-result v4

    invoke-virtual {v0, v4}, Lcom/oplus/camera/capmode/w;->getFilterType(I)Ljava/lang/String;

    move-result-object v4

    iput-object v4, v2, Lcom/oplus/camera/statistics/model/VideoRecordMsgData;->mAncFilterType:Ljava/lang/String;

    goto :goto_c

    .line 4039
    :cond_17
    invoke-virtual/range {p0 .. p0}, Lcom/oplus/camera/capmode/w;->getCurrFilterIndex()I

    move-result v4

    invoke-virtual {v0, v4}, Lcom/oplus/camera/capmode/w;->getFilterType(I)Ljava/lang/String;

    move-result-object v4

    iput-object v4, v2, Lcom/oplus/camera/statistics/model/VideoRecordMsgData;->mFilterType:Ljava/lang/String;

    :cond_18
    :goto_c
    const-string v4, "pref_camera_videoflashmode_key"

    .line 4043
    invoke-virtual {v0, v4}, Lcom/oplus/camera/capmode/w;->getSupportFunction(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_19

    const-string v4, "pref_camera_torch_mode_key"

    .line 4044
    invoke-virtual {v0, v4}, Lcom/oplus/camera/capmode/w;->getSupportFunction(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_1a

    .line 4045
    :cond_19
    invoke-virtual/range {p0 .. p0}, Lcom/oplus/camera/capmode/w;->getFlashMode()Ljava/lang/String;

    move-result-object v4

    iput-object v4, v2, Lcom/oplus/camera/statistics/model/VideoRecordMsgData;->mFlashMode:Ljava/lang/String;

    .line 4048
    :cond_1a
    iget-boolean v4, v0, Lcom/oplus/camera/capmode/w;->mbFrontCamera:Z

    if-nez v4, :cond_1b

    .line 4049
    iget-boolean v4, v0, Lcom/oplus/camera/capmode/w;->mVideoAeAfLock:Z

    invoke-static {v4}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v4

    iput-object v4, v2, Lcom/oplus/camera/statistics/model/VideoRecordMsgData;->mAeAfLock:Ljava/lang/String;

    .line 4052
    :cond_1b
    invoke-virtual {v0, v8}, Lcom/oplus/camera/capmode/w;->needUploadOplusStatistics(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_1c

    .line 4053
    iget-object v4, v0, Lcom/oplus/camera/capmode/w;->mCameraInterface:Lcom/oplus/camera/capmode/a;

    invoke-interface {v4}, Lcom/oplus/camera/capmode/a;->ak()F

    move-result v4

    invoke-static {v4}, Ljava/lang/String;->valueOf(F)Ljava/lang/String;

    move-result-object v4

    iput-object v4, v2, Lcom/oplus/camera/statistics/model/VideoRecordMsgData;->mZoomValue:Ljava/lang/String;

    .line 4056
    :cond_1c
    iget-object v4, v0, Lcom/oplus/camera/capmode/w;->mPreferences:Landroid/content/SharedPreferences;

    if-eqz v4, :cond_1d

    iget-object v4, v0, Lcom/oplus/camera/capmode/w;->mPreferences:Landroid/content/SharedPreferences;

    const-string v5, "pref_camera_statement_agree"

    const/4 v8, 0x0

    .line 4057
    invoke-interface {v4, v5, v8}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v4

    if-eqz v4, :cond_1d

    move/from16 v4, v16

    goto :goto_d

    :cond_1d
    const/4 v4, 0x0

    .line 4058
    :goto_d
    iget-object v5, v0, Lcom/oplus/camera/capmode/w;->mCameraInterface:Lcom/oplus/camera/capmode/a;

    invoke-interface {v5}, Lcom/oplus/camera/capmode/a;->y()Landroid/location/Location;

    move-result-object v5

    invoke-static {v2, v4, v5}, Lcom/oplus/camera/l/c;->a(Lcom/oplus/camera/statistics/model/VideoRecordMsgData;ZLandroid/location/Location;)V

    .line 4059
    invoke-virtual/range {p0 .. p0}, Lcom/oplus/camera/capmode/w;->getFlashMode()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/oplus/camera/a/a;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    iput-object v4, v2, Lcom/oplus/camera/statistics/model/VideoRecordMsgData;->mFlashTrigger:Ljava/lang/String;

    .line 4060
    iget-object v4, v0, Lcom/oplus/camera/capmode/w;->mCameraInterface:Lcom/oplus/camera/capmode/a;

    invoke-interface {v4}, Lcom/oplus/camera/capmode/a;->af()Ljava/lang/String;

    move-result-object v4

    iput-object v4, v2, Lcom/oplus/camera/statistics/model/VideoRecordMsgData;->mTouchXYValue:Ljava/lang/String;

    .line 4061
    iget-object v4, v0, Lcom/oplus/camera/capmode/w;->mCameraInterface:Lcom/oplus/camera/capmode/a;

    invoke-interface {v4}, Lcom/oplus/camera/capmode/a;->ai()I

    move-result v4

    invoke-static {v4}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v4

    iput-object v4, v2, Lcom/oplus/camera/statistics/model/VideoRecordMsgData;->mTouchEVValue:Ljava/lang/String;

    .line 4062
    iget-object v4, v0, Lcom/oplus/camera/capmode/w;->mPreferences:Landroid/content/SharedPreferences;

    .line 4063
    invoke-static {}, Lcom/oplus/camera/util/Util;->l()Landroid/content/Context;

    move-result-object v5

    const v8, 0x7f1004ff

    invoke-virtual {v5, v8}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v5

    const-string v8, "pref_volume_key_function_key"

    .line 4062
    invoke-interface {v4, v8, v5}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    iput-object v4, v2, Lcom/oplus/camera/statistics/model/VideoRecordMsgData;->mVolumeFunction:Ljava/lang/String;

    .line 4064
    iget-object v4, v0, Lcom/oplus/camera/capmode/w;->mPreferences:Landroid/content/SharedPreferences;

    .line 4065
    invoke-static {}, Lcom/oplus/camera/util/Util;->l()Landroid/content/Context;

    move-result-object v5

    const v8, 0x7f1003ef

    invoke-virtual {v5, v8}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v5

    const-string v8, "pref_camera_sound_key"

    .line 4064
    invoke-interface {v4, v8, v5}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    iput-object v4, v2, Lcom/oplus/camera/statistics/model/VideoRecordMsgData;->mIsShutterVoice:Ljava/lang/String;

    .line 4066
    iget v4, v0, Lcom/oplus/camera/capmode/w;->mFaceCountOnStop:I

    iput v4, v2, Lcom/oplus/camera/statistics/model/VideoRecordMsgData;->mFaceCount:I

    .line 4067
    iget v4, v0, Lcom/oplus/camera/capmode/w;->mSysBrightness:I

    iput v4, v2, Lcom/oplus/camera/statistics/model/VideoRecordMsgData;->mScreenBrightness:I

    const-string v4, "pref_none_sat_ultra_wide_angle_key"

    .line 4069
    invoke-virtual {v0, v4}, Lcom/oplus/camera/capmode/w;->getSupportFunction(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_1e

    .line 4070
    iget-object v5, v0, Lcom/oplus/camera/capmode/w;->mPreferences:Landroid/content/SharedPreferences;

    .line 4071
    invoke-static {}, Lcom/oplus/camera/util/Util;->l()Landroid/content/Context;

    move-result-object v8

    const v13, 0x7f1006dc

    invoke-virtual {v8, v13}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v8

    .line 4070
    invoke-interface {v5, v4, v8}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    iput-object v4, v2, Lcom/oplus/camera/statistics/model/VideoRecordMsgData;->mIsWideAngle:Ljava/lang/String;

    .line 4074
    :cond_1e
    invoke-virtual/range {p0 .. p0}, Lcom/oplus/camera/capmode/w;->isBlurOpen()Z

    move-result v4

    if-eqz v4, :cond_1f

    .line 4075
    invoke-virtual/range {p0 .. p0}, Lcom/oplus/camera/capmode/w;->getBlurIndex()I

    move-result v4

    iput v4, v2, Lcom/oplus/camera/statistics/model/VideoRecordMsgData;->mBlurLevel:I

    .line 4078
    :cond_1f
    iget v4, v0, Lcom/oplus/camera/capmode/w;->mStartRecordingOrientation:I

    iput v4, v2, Lcom/oplus/camera/statistics/model/VideoRecordMsgData;->mStartVideoRecordingOrientation:I

    .line 4079
    iget v4, v0, Lcom/oplus/camera/capmode/w;->mStartRecordingFaceCount:I

    iput v4, v2, Lcom/oplus/camera/statistics/model/VideoRecordMsgData;->mStartVideoRecordingFaceCount:I

    .line 4080
    invoke-static {}, Lcom/oplus/camera/util/Util;->l()Landroid/content/Context;

    move-result-object v4

    invoke-static {v4}, Lcom/oplus/camera/util/Util;->k(Landroid/content/Context;)J

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v4

    iput-object v4, v2, Lcom/oplus/camera/statistics/model/VideoRecordMsgData;->mMemoryValue:Ljava/lang/String;

    .line 4081
    iget-object v4, v0, Lcom/oplus/camera/capmode/w;->mCurrentVideoFilename:Ljava/lang/String;

    iput-object v4, v2, Lcom/oplus/camera/statistics/model/VideoRecordMsgData;->mFilePath:Ljava/lang/String;

    .line 4082
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v5, v0, Lcom/oplus/camera/capmode/w;->mShutterType:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, "|"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual/range {p0 .. p0}, Lcom/oplus/camera/capmode/w;->getCameraShutterType()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    iput-object v4, v2, Lcom/oplus/camera/statistics/model/VideoRecordMsgData;->mShutterType:Ljava/lang/String;

    const-string v4, "func_hdr"

    .line 4084
    invoke-virtual {v0, v4}, Lcom/oplus/camera/capmode/w;->getSupportFunction(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_20

    .line 4085
    invoke-virtual/range {p0 .. p0}, Lcom/oplus/camera/capmode/w;->getHDRKey()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Lcom/oplus/camera/capmode/w;->getHDRModeValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    iput-object v4, v2, Lcom/oplus/camera/statistics/model/VideoRecordMsgData;->mIs3HDR:Ljava/lang/String;

    :cond_20
    const-string v4, "func_ultra_night_video"

    .line 4088
    invoke-virtual {v0, v4}, Lcom/oplus/camera/capmode/w;->getSupportFunction(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_21

    .line 4089
    iget-object v4, v0, Lcom/oplus/camera/capmode/w;->mPreferences:Landroid/content/SharedPreferences;

    const-string v5, "key_ultra_night_video"

    invoke-interface {v4, v5, v6}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    iput-object v4, v2, Lcom/oplus/camera/statistics/model/VideoRecordMsgData;->mIsNightScene:Ljava/lang/String;

    .line 4092
    :cond_21
    iget-object v4, v0, Lcom/oplus/camera/capmode/w;->mOneCamera:Lcom/oplus/camera/e/d;

    .line 4093
    invoke-interface {v4}, Lcom/oplus/camera/e/d;->e()Lcom/oplus/camera/e/h;

    move-result-object v4

    invoke-virtual {v0, v4}, Lcom/oplus/camera/capmode/w;->getPictureSize(Lcom/oplus/camera/e/h;)Landroid/util/Size;

    move-result-object v4

    iget v5, v0, Lcom/oplus/camera/capmode/w;->mCameraId:I

    .line 4092
    invoke-static {v4, v5}, Lcom/oplus/camera/util/Util;->a(Landroid/util/Size;I)Ljava/lang/String;

    move-result-object v4

    iput-object v4, v2, Lcom/oplus/camera/statistics/model/VideoRecordMsgData;->mPicSizeType:Ljava/lang/String;

    .line 4095
    iget-object v4, v2, Lcom/oplus/camera/statistics/model/VideoRecordMsgData;->mPicSizeType:Ljava/lang/String;

    const-string v5, "16_9"

    invoke-virtual {v5, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_22

    const-string v4, "16:9"

    .line 4096
    iput-object v4, v2, Lcom/oplus/camera/statistics/model/VideoRecordMsgData;->mPicSizeType:Ljava/lang/String;

    :cond_22
    const-string v4, "func_enhancement_video"

    .line 4099
    invoke-virtual {v0, v4}, Lcom/oplus/camera/capmode/w;->getSupportFunction(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_23

    .line 4100
    iget-object v4, v0, Lcom/oplus/camera/capmode/w;->mPreferences:Landroid/content/SharedPreferences;

    iget-boolean v5, v0, Lcom/oplus/camera/capmode/w;->mbFrontCamera:Z

    .line 4101
    invoke-static {v5}, Lcom/oplus/camera/util/Util;->e(Z)Ljava/lang/String;

    move-result-object v5

    const-string v8, "key_ai_enhancement_video"

    .line 4100
    invoke-interface {v4, v8, v5}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    iput-object v4, v2, Lcom/oplus/camera/statistics/model/VideoRecordMsgData;->mIsAiEnhance:Ljava/lang/String;

    .line 4102
    iget v4, v0, Lcom/oplus/camera/capmode/w;->mAiEnhanceSceneStart:I

    iput v4, v2, Lcom/oplus/camera/statistics/model/VideoRecordMsgData;->mAiEnhanceSceneStart:I

    .line 4103
    iget v4, v0, Lcom/oplus/camera/capmode/w;->mAiEnhanceSceneEnd:I

    iput v4, v2, Lcom/oplus/camera/statistics/model/VideoRecordMsgData;->mAiEnhanceSceneEnd:I

    .line 4104
    iget v4, v0, Lcom/oplus/camera/capmode/w;->mAiEnhanceSceneChangeCount:I

    iput v4, v2, Lcom/oplus/camera/statistics/model/VideoRecordMsgData;->mAiEnhanceSceneChangeCount:I

    .line 4107
    :cond_23
    invoke-virtual {v0, v3}, Lcom/oplus/camera/capmode/w;->getSupportFunction(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_24

    .line 4108
    iget-object v4, v0, Lcom/oplus/camera/capmode/w;->mPreferences:Landroid/content/SharedPreferences;

    invoke-interface {v4, v3, v6}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    iput-object v4, v2, Lcom/oplus/camera/statistics/model/VideoRecordMsgData;->mIsStablized:Ljava/lang/String;

    .line 4115
    :cond_24
    invoke-virtual {v0, v7}, Lcom/oplus/camera/capmode/w;->getSupportFunction(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_27

    .line 4116
    iget-object v4, v0, Lcom/oplus/camera/capmode/w;->mPreferences:Landroid/content/SharedPreferences;

    invoke-interface {v4, v3, v6}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v6, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_25

    .line 4117
    iput-object v11, v2, Lcom/oplus/camera/statistics/model/VideoRecordMsgData;->mUltraSteady:Ljava/lang/String;

    goto :goto_e

    .line 4119
    :cond_25
    iget-object v3, v0, Lcom/oplus/camera/capmode/w;->mPreferences:Landroid/content/SharedPreferences;

    const/4 v4, 0x0

    invoke-interface {v3, v10, v4}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v3

    if-eqz v3, :cond_26

    .line 4120
    iput-object v9, v2, Lcom/oplus/camera/statistics/model/VideoRecordMsgData;->mUltraSteady:Ljava/lang/String;

    goto :goto_e

    .line 4122
    :cond_26
    iput-object v11, v2, Lcom/oplus/camera/statistics/model/VideoRecordMsgData;->mUltraSteady:Ljava/lang/String;

    :cond_27
    :goto_e
    const-string v3, "pref_10bits_heic_encode_key"

    .line 4127
    invoke-virtual {v0, v3}, Lcom/oplus/camera/capmode/w;->getSupportFunction(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_28

    .line 4128
    iget-object v4, v0, Lcom/oplus/camera/capmode/w;->mPreferences:Landroid/content/SharedPreferences;

    invoke-interface {v4, v3, v6}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    iput-object v3, v2, Lcom/oplus/camera/statistics/model/VideoRecordMsgData;->m10BitsEncode:Ljava/lang/String;

    .line 4132
    :cond_28
    iget-object v3, v0, Lcom/oplus/camera/capmode/w;->mEndType:Ljava/lang/String;

    invoke-virtual {v14, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_29

    .line 4133
    iput-object v12, v0, Lcom/oplus/camera/capmode/w;->mEndType:Ljava/lang/String;

    .line 4136
    :cond_29
    iget-object v3, v0, Lcom/oplus/camera/capmode/w;->mEndType:Ljava/lang/String;

    iput-object v3, v2, Lcom/oplus/camera/statistics/model/VideoRecordMsgData;->mEndType:Ljava/lang/String;

    .line 4137
    iget v3, v0, Lcom/oplus/camera/capmode/w;->mRecordingStartTemperature:F

    invoke-static {v3}, Ljava/lang/String;->valueOf(F)Ljava/lang/String;

    move-result-object v3

    iput-object v3, v2, Lcom/oplus/camera/statistics/model/VideoRecordMsgData;->mRecordingStartTemperature:Ljava/lang/String;

    .line 4138
    iget v3, v0, Lcom/oplus/camera/capmode/w;->mRecordingEndTemperature:F

    invoke-static {v3}, Ljava/lang/String;->valueOf(F)Ljava/lang/String;

    move-result-object v3

    iput-object v3, v2, Lcom/oplus/camera/statistics/model/VideoRecordMsgData;->mRecordingEndTemperature:Ljava/lang/String;

    .line 4139
    iget-boolean v3, v0, Lcom/oplus/camera/capmode/w;->mbFrontCamera:Z

    if-eqz v3, :cond_2a

    const-string v3, "front"

    goto :goto_f

    :cond_2a
    const-string v3, "rear"

    :goto_f
    iput-object v3, v2, Lcom/oplus/camera/statistics/model/VideoRecordMsgData;->mRearOrFront:Ljava/lang/String;

    const-string v3, "pref_camera_line_video"

    .line 4141
    invoke-virtual {v0, v3}, Lcom/oplus/camera/capmode/w;->getSupportFunction(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_2d

    .line 4142
    iget-object v4, v0, Lcom/oplus/camera/capmode/w;->mPreferences:Landroid/content/SharedPreferences;

    if-eqz v4, :cond_2b

    .line 4143
    iget-object v4, v0, Lcom/oplus/camera/capmode/w;->mPreferences:Landroid/content/SharedPreferences;

    invoke-interface {v4, v3, v6}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    iput-object v3, v2, Lcom/oplus/camera/statistics/model/VideoRecordMsgData;->mVideoAssistantLine:Ljava/lang/String;

    .line 4146
    :cond_2b
    iget-object v3, v0, Lcom/oplus/camera/capmode/w;->mPreferences:Landroid/content/SharedPreferences;

    const-string v4, "pref_assist_gradienter"

    invoke-interface {v3, v4, v6}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    iput-object v3, v2, Lcom/oplus/camera/statistics/model/VideoRecordMsgData;->mSpiritLevel:Ljava/lang/String;

    .line 4148
    iget-object v3, v2, Lcom/oplus/camera/statistics/model/VideoRecordMsgData;->mSpiritLevel:Ljava/lang/String;

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2c

    .line 4149
    iget-object v1, v0, Lcom/oplus/camera/capmode/w;->mCameraUIInterface:Lcom/oplus/camera/ui/CameraUIInterface;

    invoke-interface {v1}, Lcom/oplus/camera/ui/CameraUIInterface;->ap()Z

    move-result v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v2, Lcom/oplus/camera/statistics/model/VideoRecordMsgData;->mIsOverlap:Ljava/lang/String;

    .line 4152
    :cond_2c
    iget-object v1, v0, Lcom/oplus/camera/capmode/w;->mCameraUIInterface:Lcom/oplus/camera/ui/CameraUIInterface;

    invoke-interface {v1}, Lcom/oplus/camera/ui/CameraUIInterface;->ap()Z

    move-result v1

    if-eqz v1, :cond_2d

    .line 4153
    iget-object v1, v0, Lcom/oplus/camera/capmode/w;->mCameraUIInterface:Lcom/oplus/camera/ui/CameraUIInterface;

    invoke-interface {v1}, Lcom/oplus/camera/ui/CameraUIInterface;->aq()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v2, Lcom/oplus/camera/statistics/model/VideoRecordMsgData;->mHorizontalOrVertical:Ljava/lang/String;

    .line 4157
    :cond_2d
    invoke-virtual/range {p0 .. p0}, Lcom/oplus/camera/capmode/w;->isSlowVideoHighFrame()Z

    move-result v1

    if-eqz v1, :cond_2e

    .line 4158
    invoke-static/range {p1 .. p1}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v2, Lcom/oplus/camera/statistics/model/VideoRecordMsgData;->mIsDragBox:Ljava/lang/String;

    .line 4161
    :cond_2e
    invoke-virtual/range {p0 .. p0}, Lcom/oplus/camera/capmode/w;->supportBinauralRecord()Z

    move-result v1

    if-eqz v1, :cond_2f

    iget-boolean v1, v0, Lcom/oplus/camera/capmode/w;->mbBinauralRecordEnable:Z

    if-eqz v1, :cond_2f

    const-string v1, "binaural"

    .line 4162
    iput-object v1, v2, Lcom/oplus/camera/statistics/model/VideoRecordMsgData;->mVideoRecorderSound:Ljava/lang/String;

    .line 4165
    :cond_2f
    invoke-virtual {v0, v2}, Lcom/oplus/camera/capmode/w;->onGetBeforeCaptureMsgCommonData(Lcom/oplus/camera/statistics/model/DcsMsgData;)Lcom/oplus/camera/statistics/model/DcsMsgData;

    .line 4167
    invoke-virtual {v2}, Lcom/oplus/camera/statistics/model/VideoRecordMsgData;->report()V

    return-void
.end method

.method private restoreVideoPreviewState()V
    .locals 2

    const-wide/16 v0, 0x0

    .line 1608
    iput-wide v0, p0, Lcom/oplus/camera/capmode/w;->mTotalPausingTime:J

    .line 1609
    iput-wide v0, p0, Lcom/oplus/camera/capmode/w;->mLastPausingTime:J

    const/high16 v0, 0x437f0000    # 255.0f

    .line 1610
    iput v0, p0, Lcom/oplus/camera/capmode/w;->mBrightness:F

    .line 1612
    invoke-direct {p0}, Lcom/oplus/camera/capmode/w;->stopCheckStorageAsyncTask()V

    .line 1614
    iget-object v0, p0, Lcom/oplus/camera/capmode/w;->mCameraInterface:Lcom/oplus/camera/capmode/a;

    if-eqz v0, :cond_0

    sget-object v0, Lcom/oplus/camera/ui/inverse/e;->INS:Lcom/oplus/camera/ui/inverse/e;

    iget-object v1, p0, Lcom/oplus/camera/capmode/w;->mActivity:Landroid/app/Activity;

    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/oplus/camera/ui/inverse/e;->isInverseColor(I)Z

    move-result v0

    if-nez v0, :cond_0

    .line 1615
    iget-object v0, p0, Lcom/oplus/camera/capmode/w;->mCameraInterface:Lcom/oplus/camera/capmode/a;

    invoke-interface {v0}, Lcom/oplus/camera/capmode/a;->U()V

    .line 1618
    :cond_0
    iget-object v0, p0, Lcom/oplus/camera/capmode/w;->mHandler:Landroid/os/Handler;

    if-eqz v0, :cond_1

    .line 1619
    invoke-direct {p0}, Lcom/oplus/camera/capmode/w;->stopUpdateRecordTime()V

    .line 1621
    iget-object v0, p0, Lcom/oplus/camera/capmode/w;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 1622
    iget-object p0, p0, Lcom/oplus/camera/capmode/w;->mHandler:Landroid/os/Handler;

    const/4 v0, 0x3

    invoke-virtual {p0, v0}, Landroid/os/Handler;->removeMessages(I)V

    :cond_1
    return-void
.end method

.method private resumeAudioPlayback()V
    .locals 3

    .line 2590
    iget-object v0, p0, Lcom/oplus/camera/capmode/w;->mActivity:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "audio"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/AudioManager;

    .line 2593
    iget-boolean v1, p0, Lcom/oplus/camera/capmode/w;->mbBroadcastPauseMusic:Z

    const-string v2, "VideoMode"

    if-nez v1, :cond_0

    const/4 p0, 0x0

    .line 2594
    invoke-virtual {v0, p0}, Landroid/media/AudioManager;->abandonAudioFocus(Landroid/media/AudioManager$OnAudioFocusChangeListener;)I

    move-result p0

    .line 2596
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "resumeAudioPlayback, Not send broadcast to restore the background music: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v2, p0}, Lcom/oplus/camera/e;->a(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 2598
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "resumeAudioPlayback, send broadcast to restore the background music: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Lcom/oplus/camera/e;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 2600
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.heytap.music.musicservicecommand.resume"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v1, "command"

    const-string v2, "VideoReqMusicRestore"

    .line 2601
    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 2602
    iget-object p0, p0, Lcom/oplus/camera/capmode/w;->mActivity:Landroid/app/Activity;

    invoke-virtual {p0, v0}, Landroid/app/Activity;->sendBroadcast(Landroid/content/Intent;)V

    :goto_0
    return-void
.end method

.method private sendBoradCastToStopRecordSound()V
    .locals 2

    .line 3240
    new-instance v0, Landroid/content/Intent;

    const-string v1, "oplus.multimedia.soundrecorder.stopRecroderNormal"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 3241
    iget-object p0, p0, Lcom/oplus/camera/capmode/w;->mActivity:Landroid/app/Activity;

    invoke-virtual {p0, v0}, Landroid/app/Activity;->sendBroadcast(Landroid/content/Intent;)V

    return-void
.end method

.method private sendBoradCastToStopVideo()V
    .locals 2

    .line 3245
    new-instance v0, Landroid/content/Intent;

    const-string v1, "oplus.camera.record.start"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 3246
    iget-object p0, p0, Lcom/oplus/camera/capmode/w;->mActivity:Landroid/app/Activity;

    invoke-virtual {p0, v0}, Landroid/app/Activity;->sendBroadcast(Landroid/content/Intent;)V

    return-void
.end method

.method private setBinauralRecordState(Z)V
    .locals 3

    .line 3178
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "setBinauralRecordState, enable: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "VideoMode"

    invoke-static {v1, v0}, Lcom/oplus/camera/e;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 3180
    invoke-virtual {p0}, Lcom/oplus/camera/capmode/w;->supportBinauralRecord()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/oplus/camera/capmode/w;->mVideoRecorder:Lcom/oplus/camera/capmode/x;

    if-eqz v0, :cond_1

    .line 3181
    invoke-virtual {v0, p1}, Lcom/oplus/camera/capmode/x;->d(Z)V

    if-eqz p1, :cond_1

    .line 3184
    iget-object p1, p0, Lcom/oplus/camera/capmode/w;->mVideoRecorder:Lcom/oplus/camera/capmode/x;

    iget-boolean v0, p0, Lcom/oplus/camera/capmode/w;->mbFrontCamera:Z

    invoke-virtual {p1, v0}, Lcom/oplus/camera/capmode/x;->e(Z)V

    .line 3186
    iget-boolean p1, p0, Lcom/oplus/camera/capmode/w;->mbFrontCamera:Z

    if-eqz p1, :cond_0

    .line 3187
    iget-object p1, p0, Lcom/oplus/camera/capmode/w;->mVideoRecorder:Lcom/oplus/camera/capmode/x;

    iget-object v0, p0, Lcom/oplus/camera/capmode/w;->mPreferences:Landroid/content/SharedPreferences;

    iget-object v1, p0, Lcom/oplus/camera/capmode/w;->mActivity:Landroid/app/Activity;

    const v2, 0x7f10023d

    .line 3189
    invoke-virtual {v1, v2}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v1

    const-string v2, "pref_mirror_key"

    .line 3188
    invoke-interface {v0, v2, v1}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "on"

    .line 3187
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    invoke-virtual {p1, v0}, Lcom/oplus/camera/capmode/x;->f(Z)V

    .line 3192
    :cond_0
    iget-object p1, p0, Lcom/oplus/camera/capmode/w;->mCameraUIInterface:Lcom/oplus/camera/ui/CameraUIInterface;

    if-eqz p1, :cond_1

    .line 3193
    iget-object p0, p0, Lcom/oplus/camera/capmode/w;->mCameraUIInterface:Lcom/oplus/camera/ui/CameraUIInterface;

    invoke-interface {p0}, Lcom/oplus/camera/ui/CameraUIInterface;->v()V

    :cond_1
    return-void
.end method

.method private setRecordingParameter()V
    .locals 6

    .line 2455
    invoke-virtual {p0}, Lcom/oplus/camera/capmode/w;->getCurrFilterType()Ljava/lang/String;

    move-result-object v0

    .line 2456
    iget-object v1, p0, Lcom/oplus/camera/capmode/w;->mOneCamera:Lcom/oplus/camera/e/d;

    invoke-virtual {p0, v0}, Lcom/oplus/camera/capmode/w;->isFilterOpen(Ljava/lang/String;)Z

    move-result v2

    const-string v3, "func_filter_vignette"

    .line 2457
    invoke-virtual {p0, v3}, Lcom/oplus/camera/capmode/w;->getSupportFunction(Ljava/lang/String;)Z

    move-result v3

    const/4 v4, 0x1

    const/4 v5, 0x0

    if-eqz v3, :cond_0

    const-string v3, "oplus_video_filter_olympus"

    .line 2458
    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    move v3, v4

    goto :goto_0

    :cond_0
    move v3, v5

    .line 2456
    :goto_0
    invoke-interface {v1, v0, v2, v3}, Lcom/oplus/camera/e/d;->a(Ljava/lang/String;ZZ)V

    .line 2461
    iget-object v0, p0, Lcom/oplus/camera/capmode/w;->mOneCamera:Lcom/oplus/camera/e/d;

    invoke-virtual {p0}, Lcom/oplus/camera/capmode/w;->isFaceBeautyOrMakeupOpen()Z

    move-result v1

    const-string v2, "com.oplus.facebeauty.version"

    .line 2462
    invoke-static {v2}, Lcom/oplus/camera/aps/config/CameraConfig;->getConfigIntValue(Ljava/lang/String;)I

    move-result v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    .line 2463
    invoke-virtual {p0}, Lcom/oplus/camera/capmode/w;->getCustomBeautyValues()[I

    move-result-object v3

    invoke-static {v3}, Lcom/oplus/camera/util/Util;->a([I)[I

    move-result-object v3

    .line 2461
    invoke-interface {v0, v1, v2, v3}, Lcom/oplus/camera/e/d;->a(ZLjava/lang/String;[I)V

    .line 2466
    iget-object v0, p0, Lcom/oplus/camera/capmode/w;->mOneCamera:Lcom/oplus/camera/e/d;

    const-string v1, "func_dered_eye"

    invoke-virtual {p0, v1}, Lcom/oplus/camera/capmode/w;->getSupportFunction(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-virtual {p0}, Lcom/oplus/camera/capmode/w;->isFlashState()Z

    move-result v1

    if-eqz v1, :cond_1

    goto :goto_1

    :cond_1
    move v4, v5

    :goto_1
    invoke-interface {v0, v4}, Lcom/oplus/camera/e/d;->h(Z)V

    .line 2468
    invoke-direct {p0}, Lcom/oplus/camera/capmode/w;->setVideoWaterMarkParameter()V

    return-void
.end method

.method private setScreenBrightness(IF)V
    .locals 4

    .line 3250
    sget-object v0, Lcom/oplus/camera/ui/inverse/e;->INS:Lcom/oplus/camera/ui/inverse/e;

    iget-object v1, p0, Lcom/oplus/camera/capmode/w;->mActivity:Landroid/app/Activity;

    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/oplus/camera/ui/inverse/e;->isInverseColor(I)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    int-to-float v0, p1

    cmpl-float v1, p2, v0

    const-string v2, "VideoMode"

    if-lez v1, :cond_1

    .line 3256
    :try_start_0
    iget-object v1, p0, Lcom/oplus/camera/capmode/w;->mBrightnessAnimationListener:Lcom/oplus/camera/capmode/w$a;

    sub-float v3, p2, v0

    invoke-virtual {v1, p2, v3, v0}, Lcom/oplus/camera/capmode/w$a;->a(FFF)V

    .line 3258
    iget-object p0, p0, Lcom/oplus/camera/capmode/w;->mBrightnessAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {p0}, Landroid/animation/ValueAnimator;->start()V

    .line 3261
    :cond_1
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "setScreenBrightness, brightness: "

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, ", currBrightness: "

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v2, p0}, Lcom/oplus/camera/e;->a(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/NoSuchMethodError; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    const-string p0, "setScreenBrightness, no such method error."

    .line 3263
    invoke-static {v2, p0}, Lcom/oplus/camera/e;->f(Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    return-void
.end method

.method private setVideoSurfaceState(I)V
    .locals 2

    .line 1374
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "setVideoSurfaceState, mVideoSurfaceState: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/oplus/camera/capmode/w;->mVideoSurfaceState:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " => "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "VideoMode"

    invoke-static {v1, v0}, Lcom/oplus/camera/e;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 1376
    iput p1, p0, Lcom/oplus/camera/capmode/w;->mVideoSurfaceState:I

    return-void
.end method

.method private setVideoWaterMarkParameter()V
    .locals 5

    .line 2410
    invoke-virtual {p0}, Lcom/oplus/camera/capmode/w;->isSloganOpen()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 2411
    invoke-virtual {p0}, Lcom/oplus/camera/capmode/w;->isUseMediaCodec()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2412
    iget-object v0, p0, Lcom/oplus/camera/capmode/w;->mCameraInterface:Lcom/oplus/camera/capmode/a;

    invoke-interface {v0}, Lcom/oplus/camera/capmode/a;->u()I

    move-result v0

    rem-int/lit16 v0, v0, 0x168

    .line 2415
    iget-object v1, p0, Lcom/oplus/camera/capmode/w;->mPreviewEffectProcess:Lcom/oplus/camera/ui/preview/a/t;

    if-eqz v1, :cond_3

    .line 2416
    iget-object v1, p0, Lcom/oplus/camera/capmode/w;->mPreviewEffectProcess:Lcom/oplus/camera/ui/preview/a/t;

    invoke-interface {v1, v0}, Lcom/oplus/camera/ui/preview/a/t;->d(I)V

    .line 2417
    iget-object v1, p0, Lcom/oplus/camera/capmode/w;->mPreviewEffectProcess:Lcom/oplus/camera/ui/preview/a/t;

    iget-object v2, p0, Lcom/oplus/camera/capmode/w;->mCameraInterface:Lcom/oplus/camera/capmode/a;

    .line 2418
    invoke-interface {v2}, Lcom/oplus/camera/capmode/a;->aq()Lcom/oplus/camera/ad;

    move-result-object v2

    invoke-virtual {v2, v0}, Lcom/oplus/camera/ad;->a(I)Lcom/oplus/camera/c$a;

    move-result-object v0

    .line 2417
    invoke-interface {v1, v0}, Lcom/oplus/camera/ui/preview/a/t;->a(Lcom/oplus/camera/c$a;)V

    .line 2419
    iget-object p0, p0, Lcom/oplus/camera/capmode/w;->mPreviewEffectProcess:Lcom/oplus/camera/ui/preview/a/t;

    const/4 v0, 0x1

    invoke-interface {p0, v0}, Lcom/oplus/camera/ui/preview/a/t;->g(Z)V

    goto/16 :goto_1

    .line 2423
    :cond_0
    iget-object v0, p0, Lcom/oplus/camera/capmode/w;->mCameraInterface:Lcom/oplus/camera/capmode/a;

    invoke-interface {v0}, Lcom/oplus/camera/capmode/a;->aq()Lcom/oplus/camera/ad;

    move-result-object v0

    .line 2424
    iget-object v1, p0, Lcom/oplus/camera/capmode/w;->mCameraInterface:Lcom/oplus/camera/capmode/a;

    invoke-interface {v1}, Lcom/oplus/camera/capmode/a;->ar()Lcom/oplus/camera/c$a;

    move-result-object v1

    if-eqz v0, :cond_3

    if-eqz v1, :cond_3

    .line 2428
    invoke-virtual {v1}, Lcom/oplus/camera/c$a;->b()[B

    move-result-object v2

    if-eqz v2, :cond_3

    .line 2429
    invoke-virtual {v1}, Lcom/oplus/camera/c$a;->c()I

    move-result v2

    if-eqz v2, :cond_3

    .line 2430
    invoke-virtual {v1}, Lcom/oplus/camera/c$a;->a()Landroid/util/Size;

    move-result-object v2

    if-eqz v2, :cond_3

    .line 2431
    new-instance v2, Landroid/os/Bundle;

    invoke-direct {v2}, Landroid/os/Bundle;-><init>()V

    .line 2432
    invoke-virtual {p0}, Lcom/oplus/camera/capmode/w;->isSloganForceLandscape()Z

    move-result v3

    if-eqz v3, :cond_1

    const/16 v3, 0x10e

    goto :goto_0

    :cond_1
    iget v3, p0, Lcom/oplus/camera/capmode/w;->mVideoWatermarkOrientation:I

    :goto_0
    const-string v4, "orientation"

    .line 2433
    invoke-virtual {v2, v4, v3}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 2434
    invoke-virtual {v1}, Lcom/oplus/camera/c$a;->c()I

    move-result v3

    const-string v4, "refWidth"

    invoke-virtual {v2, v4, v3}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 2436
    invoke-virtual {v1}, Lcom/oplus/camera/c$a;->d()I

    move-result v3

    const-string v4, "watermark_border_x"

    .line 2435
    invoke-virtual {v2, v4, v3}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 2438
    invoke-virtual {v1}, Lcom/oplus/camera/c$a;->e()I

    move-result v3

    const-string v4, "watermark_border_y"

    .line 2437
    invoke-virtual {v2, v4, v3}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 2439
    invoke-virtual {v1}, Lcom/oplus/camera/c$a;->a()Landroid/util/Size;

    move-result-object v3

    const-string v4, "size"

    invoke-virtual {v2, v4, v3}, Landroid/os/Bundle;->putSize(Ljava/lang/String;Landroid/util/Size;)V

    .line 2440
    invoke-virtual {v0}, Lcom/oplus/camera/ad;->d()Ljava/lang/String;

    move-result-object v0

    const-string v3, "filePath"

    invoke-virtual {v2, v3, v0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 2441
    invoke-virtual {v1}, Lcom/oplus/camera/c$a;->b()[B

    move-result-object v0

    const-string v1, "buffer"

    invoke-virtual {v2, v1, v0}, Landroid/os/Bundle;->putByteArray(Ljava/lang/String;[B)V

    .line 2443
    iget-object p0, p0, Lcom/oplus/camera/capmode/w;->mOneCamera:Lcom/oplus/camera/e/d;

    invoke-interface {p0, v2}, Lcom/oplus/camera/e/d;->a(Landroid/os/Bundle;)V

    goto :goto_1

    .line 2447
    :cond_2
    iget-object v0, p0, Lcom/oplus/camera/capmode/w;->mPreviewEffectProcess:Lcom/oplus/camera/ui/preview/a/t;

    if-eqz v0, :cond_3

    .line 2448
    iget-object p0, p0, Lcom/oplus/camera/capmode/w;->mPreviewEffectProcess:Lcom/oplus/camera/ui/preview/a/t;

    const/4 v0, 0x0

    invoke-interface {p0, v0}, Lcom/oplus/camera/ui/preview/a/t;->a(Lcom/oplus/camera/c$a;)V

    :cond_3
    :goto_1
    return-void
.end method

.method private startVideoRecordHandler()V
    .locals 2

    .line 2199
    invoke-virtual {p0}, Lcom/oplus/camera/capmode/w;->startShutterButtonProgress()V

    .line 2200
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/oplus/camera/capmode/w;->mRecordingStartTime:J

    .line 2202
    invoke-direct {p0}, Lcom/oplus/camera/capmode/w;->updateRecordingTime()V

    .line 2203
    iget-object v0, p0, Lcom/oplus/camera/capmode/w;->mCameraUIInterface:Lcom/oplus/camera/ui/CameraUIInterface;

    const/4 v1, 0x1

    invoke-interface {v0, v1}, Lcom/oplus/camera/ui/CameraUIInterface;->e(Z)V

    .line 2204
    iget-object p0, p0, Lcom/oplus/camera/capmode/w;->mCameraInterface:Lcom/oplus/camera/capmode/a;

    invoke-interface {p0, v1}, Lcom/oplus/camera/capmode/a;->e(Z)V

    const-string p0, "VideoMode"

    const-string v0, "startVideoRecordHandler end"

    .line 2206
    invoke-static {p0, v0}, Lcom/oplus/camera/e;->a(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method private startVideoRecordThread()V
    .locals 8

    const-string v0, "VideoMode"

    const-string v1, "startVideoRecordThread"

    .line 2130
    invoke-static {v0, v1}, Lcom/oplus/camera/e;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 2132
    iget-boolean v1, p0, Lcom/oplus/camera/capmode/w;->mbPaused:Z

    if-eqz v1, :cond_0

    .line 2133
    iget-object p0, p0, Lcom/oplus/camera/capmode/w;->mRecordSig:Landroid/os/ConditionVariable;

    invoke-virtual {p0}, Landroid/os/ConditionVariable;->open()V

    return-void

    :cond_0
    const/4 v1, 0x5

    const/4 v2, 0x0

    const/4 v3, 0x1

    .line 2138
    :try_start_0
    iget-object v4, p0, Lcom/oplus/camera/capmode/w;->mVideoRecorder:Lcom/oplus/camera/capmode/x;

    invoke-virtual {v4}, Lcom/oplus/camera/capmode/x;->e()V

    .line 2140
    iget-object v4, p0, Lcom/oplus/camera/capmode/w;->mOneCamera:Lcom/oplus/camera/e/d;

    if-eqz v4, :cond_1

    invoke-static {}, Lcom/oplus/camera/util/Util;->C()Z

    move-result v4

    if-nez v4, :cond_1

    .line 2141
    iget-object v4, p0, Lcom/oplus/camera/capmode/w;->mOneCamera:Lcom/oplus/camera/e/d;

    invoke-virtual {p0}, Lcom/oplus/camera/capmode/w;->getVideoFpsRange()Landroid/util/Range;

    move-result-object v5

    invoke-interface {v4, v5}, Lcom/oplus/camera/e/d;->a(Landroid/util/Range;)V

    .line 2144
    :cond_1
    iget-object v4, p0, Lcom/oplus/camera/capmode/w;->mOneCamera:Lcom/oplus/camera/e/d;

    if-eqz v4, :cond_3

    .line 2145
    invoke-direct {p0}, Lcom/oplus/camera/capmode/w;->setRecordingParameter()V

    .line 2147
    invoke-virtual {p0}, Lcom/oplus/camera/capmode/w;->isUseMediaCodec()Z

    move-result v4

    if-nez v4, :cond_2

    .line 2148
    iget-object v4, p0, Lcom/oplus/camera/capmode/w;->mOneCamera:Lcom/oplus/camera/e/d;

    iget-object v5, p0, Lcom/oplus/camera/capmode/w;->mCameraRecordingCallback:Lcom/oplus/ocs/camera/CameraRecordingCallback;

    iget-object v6, p0, Lcom/oplus/camera/capmode/w;->mRecordHandler:Landroid/os/Handler;

    invoke-interface {v4, v5, v6}, Lcom/oplus/camera/e/d;->a(Lcom/oplus/ocs/camera/CameraRecordingCallback;Landroid/os/Handler;)V

    goto :goto_0

    .line 2151
    :cond_2
    iget-object v4, p0, Lcom/oplus/camera/capmode/w;->mOneCamera:Lcom/oplus/camera/e/d;

    invoke-interface {v4, v3}, Lcom/oplus/camera/e/d;->A(I)V

    .line 2155
    :cond_3
    :goto_0
    iget-object v4, p0, Lcom/oplus/camera/capmode/w;->mVideoRecorder:Lcom/oplus/camera/capmode/x;

    invoke-virtual {v4}, Lcom/oplus/camera/capmode/x;->b()Z

    move-result v4

    const-wide/16 v5, 0x0

    .line 2156
    iput-wide v5, p0, Lcom/oplus/camera/capmode/w;->mRecordingTotalTime:J

    .line 2158
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "startVideoRecordThread, start end, result: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v6, ", isUseMediaCodec: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2159
    invoke-virtual {p0}, Lcom/oplus/camera/capmode/w;->isUseMediaCodec()Z

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 2158
    invoke-static {v0, v5}, Lcom/oplus/camera/e;->a(Ljava/lang/String;Ljava/lang/String;)V

    if-eqz v4, :cond_7

    .line 2162
    iget-object v4, p0, Lcom/oplus/camera/capmode/w;->mPreviewEffectProcess:Lcom/oplus/camera/ui/preview/a/t;

    if-eqz v4, :cond_4

    .line 2163
    iget-object v4, p0, Lcom/oplus/camera/capmode/w;->mPreviewEffectProcess:Lcom/oplus/camera/ui/preview/a/t;

    invoke-interface {v4, v3}, Lcom/oplus/camera/ui/preview/a/t;->f(Z)V

    .line 2166
    :cond_4
    invoke-virtual {p0, v2}, Lcom/oplus/camera/capmode/w;->setVideoRecordState(I)V

    .line 2167
    iget-object v4, p0, Lcom/oplus/camera/capmode/w;->mWaitRecordStarted:Landroid/os/ConditionVariable;

    invoke-virtual {v4}, Landroid/os/ConditionVariable;->open()V

    .line 2169
    iget-object v4, p0, Lcom/oplus/camera/capmode/w;->mHandler:Landroid/os/Handler;

    const/16 v5, 0xa

    invoke-virtual {v4, v5}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v4

    if-eqz v4, :cond_5

    .line 2170
    iget-object v4, p0, Lcom/oplus/camera/capmode/w;->mHandler:Landroid/os/Handler;

    invoke-virtual {v4, v5}, Landroid/os/Handler;->removeMessages(I)V

    .line 2171
    iget-object v4, p0, Lcom/oplus/camera/capmode/w;->mHandler:Landroid/os/Handler;

    const-wide/16 v6, 0x3e8

    invoke-virtual {v4, v5, v6, v7}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 2174
    :cond_5
    iget-object v4, p0, Lcom/oplus/camera/capmode/w;->mHandler:Landroid/os/Handler;

    const/4 v5, 0x7

    invoke-virtual {v4, v5}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v4

    if-eqz v4, :cond_6

    .line 2175
    iget-object v4, p0, Lcom/oplus/camera/capmode/w;->mHandler:Landroid/os/Handler;

    invoke-virtual {v4, v5}, Landroid/os/Handler;->removeMessages(I)V

    .line 2178
    :cond_6
    iget-object v4, p0, Lcom/oplus/camera/capmode/w;->mHandler:Landroid/os/Handler;

    invoke-virtual {v4, v5}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    goto :goto_1

    .line 2179
    :cond_7
    invoke-virtual {p0}, Lcom/oplus/camera/capmode/w;->isUseMediaCodec()Z

    move-result v4

    if-eqz v4, :cond_8

    iget-boolean v4, p0, Lcom/oplus/camera/capmode/w;->mbDisplayOnLock:Z

    if-eqz v4, :cond_8

    .line 2180
    iget-object v4, p0, Lcom/oplus/camera/capmode/w;->mHandler:Landroid/os/Handler;

    invoke-virtual {v4, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2194
    :cond_8
    :goto_1
    iget-object p0, p0, Lcom/oplus/camera/capmode/w;->mRecordSig:Landroid/os/ConditionVariable;

    invoke-virtual {p0}, Landroid/os/ConditionVariable;->open()V

    goto :goto_3

    :catchall_0
    move-exception v0

    goto :goto_4

    :catch_0
    move-exception v4

    .line 2183
    :try_start_1
    iget-object v5, p0, Lcom/oplus/camera/capmode/w;->mActivity:Landroid/app/Activity;

    invoke-virtual {v5}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v5

    const-string v6, "audio"

    invoke-virtual {v5, v6}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/media/AudioManager;

    const-string v6, "record_forbid"

    .line 2184
    invoke-virtual {v5, v6}, Landroid/media/AudioManager;->getParameters(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 2186
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "startVideoRecordThread failed, mVideoFilename: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v7, p0, Lcom/oplus/camera/capmode/w;->mVideoFilename:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v7, ", value: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v0, v6, v4}, Lcom/oplus/camera/e;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 2189
    iput-boolean v3, p0, Lcom/oplus/camera/capmode/w;->mbStartFailue:Z

    .line 2190
    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_9

    const-string v0, "true"

    invoke-virtual {v0, v5}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_9

    move v0, v3

    goto :goto_2

    :cond_9
    move v0, v2

    :goto_2
    if-nez v0, :cond_a

    .line 2191
    invoke-virtual {p0}, Lcom/oplus/camera/capmode/w;->isUseMediaCodec()Z

    move-result v0

    if-nez v0, :cond_b

    iget-boolean v0, p0, Lcom/oplus/camera/capmode/w;->mbDisplayOnLock:Z

    if-eqz v0, :cond_b

    :cond_a
    move v2, v3

    .line 2192
    :cond_b
    iget-object v0, p0, Lcom/oplus/camera/capmode/w;->mHandler:Landroid/os/Handler;

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1

    :goto_3
    return-void

    .line 2194
    :goto_4
    iget-object p0, p0, Lcom/oplus/camera/capmode/w;->mRecordSig:Landroid/os/ConditionVariable;

    invoke-virtual {p0}, Landroid/os/ConditionVariable;->open()V

    .line 2195
    throw v0
.end method

.method private startVideoRecording()V
    .locals 11

    .line 2264
    iget-object v0, p0, Lcom/oplus/camera/capmode/w;->mActivity:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const/4 v1, 0x0

    const-string v2, "oplus.camera.video"

    invoke-static {v0, v2, v1}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    const/4 v2, 0x2

    const/4 v3, 0x1

    const-string v4, "VideoMode"

    if-ne v3, v0, :cond_0

    .line 2267
    invoke-virtual {p0, v2}, Lcom/oplus/camera/capmode/w;->setVideoRecordState(I)V

    .line 2268
    iget-object v5, p0, Lcom/oplus/camera/capmode/w;->mCameraUIInterface:Lcom/oplus/camera/ui/CameraUIInterface;

    const v6, 0x7f1001ee

    const/4 v7, -0x1

    const/4 v8, 0x1

    const/4 v9, 0x0

    const/4 v10, 0x0

    invoke-interface/range {v5 .. v10}, Lcom/oplus/camera/ui/CameraUIInterface;->a(IIZZZ)V

    const-string p0, "startVideoRecording, Can\'t start recording video due to high temperature, so return"

    .line 2271
    invoke-static {v4, p0}, Lcom/oplus/camera/e;->f(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    .line 2276
    :cond_0
    iget-object v0, p0, Lcom/oplus/camera/capmode/w;->mPreferences:Landroid/content/SharedPreferences;

    const/high16 v5, -0x40800000    # -1.0f

    const-string v6, "key_cur_temperature"

    invoke-interface {v0, v6, v5}, Landroid/content/SharedPreferences;->getFloat(Ljava/lang/String;F)F

    move-result v0

    iput v0, p0, Lcom/oplus/camera/capmode/w;->mRecordingStartTemperature:F

    .line 2278
    iget-object v0, p0, Lcom/oplus/camera/capmode/w;->mCameraInterface:Lcom/oplus/camera/capmode/a;

    invoke-interface {v0}, Lcom/oplus/camera/capmode/a;->K()Z

    move-result v0

    .line 2279
    iput-boolean v1, p0, Lcom/oplus/camera/capmode/w;->mbShowHint:Z

    .line 2280
    invoke-direct {p0}, Lcom/oplus/camera/capmode/w;->isVideoFrameProcessInAPS()Z

    move-result v1

    iput-boolean v1, p0, Lcom/oplus/camera/capmode/w;->mbVideoFrameInAPS:Z

    .line 2282
    iget-object v1, p0, Lcom/oplus/camera/capmode/w;->mRecordHandler:Landroid/os/Handler;

    const/16 v5, 0x8

    invoke-virtual {v1, v5}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 2283
    iget-object v1, p0, Lcom/oplus/camera/capmode/w;->mRecordHandler:Landroid/os/Handler;

    invoke-virtual {v1, v5}, Landroid/os/Handler;->removeMessages(I)V

    .line 2284
    invoke-direct {p0}, Lcom/oplus/camera/capmode/w;->hideHintViewShowZoom()V

    .line 2287
    :cond_1
    invoke-direct {p0}, Lcom/oplus/camera/capmode/w;->sendBoradCastToStopRecordSound()V

    .line 2288
    invoke-direct {p0}, Lcom/oplus/camera/capmode/w;->sendBoradCastToStopVideo()V

    if-nez v0, :cond_2

    .line 2291
    invoke-virtual {p0, v2}, Lcom/oplus/camera/capmode/w;->setVideoRecordState(I)V

    const-string p0, "startVideoRecording, ret is false, so return"

    .line 2293
    invoke-static {v4, p0}, Lcom/oplus/camera/e;->f(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    .line 2298
    :cond_2
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "startVideoRecording, mVideoRecorder: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/oplus/camera/capmode/w;->mVideoRecorder:Lcom/oplus/camera/capmode/x;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v4, v0}, Lcom/oplus/camera/e;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 2300
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    invoke-static {v0, v1}, Lcom/oplus/camera/perf/FluencyPerformance;->d(J)V

    .line 2302
    invoke-virtual {p0}, Lcom/oplus/camera/capmode/w;->is4k()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 2303
    iget-object v0, p0, Lcom/oplus/camera/capmode/w;->mActivity:Landroid/app/Activity;

    const-string v1, "camera_video_recorder"

    invoke-static {v0, v1}, Lcom/oplus/camera/util/Util;->e(Landroid/content/Context;Ljava/lang/String;)V

    .line 2306
    :cond_3
    invoke-direct {p0}, Lcom/oplus/camera/capmode/w;->updateVideoWatermarkResource()V

    .line 2307
    iget-object v0, p0, Lcom/oplus/camera/capmode/w;->mRecordHandler:Landroid/os/Handler;

    const/16 v1, 0xc

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 2308
    iget-object v0, p0, Lcom/oplus/camera/capmode/w;->mRecordHandler:Landroid/os/Handler;

    const/4 v1, 0x5

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    const-string v0, "key_intelligent_high_frame_usage_key"

    .line 2310
    invoke-virtual {p0, v0}, Lcom/oplus/camera/capmode/w;->getSupportFunction(Ljava/lang/String;)Z

    move-result v0

    const-wide/16 v5, 0xc8

    const/4 v1, 0x4

    if-eqz v0, :cond_4

    invoke-virtual {p0}, Lcom/oplus/camera/capmode/w;->isMotionDetectOpen()Z

    move-result v0

    if-eqz v0, :cond_5

    .line 2311
    :cond_4
    invoke-virtual {p0}, Lcom/oplus/camera/capmode/w;->needPostProcessAfterStopRecord()Z

    move-result v0

    if-nez v0, :cond_5

    .line 2312
    iget-object v0, p0, Lcom/oplus/camera/capmode/w;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v1, v5, v6}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 2315
    :cond_5
    invoke-virtual {p0}, Lcom/oplus/camera/capmode/w;->needPostProcessAfterStopRecord()Z

    move-result v0

    if-nez v0, :cond_6

    .line 2316
    iget-object v0, p0, Lcom/oplus/camera/capmode/w;->mHandler:Landroid/os/Handler;

    const/4 v7, 0x3

    invoke-virtual {v0, v7, v5, v6}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 2319
    :cond_6
    invoke-virtual {p0, v3}, Lcom/oplus/camera/capmode/w;->setVideoRecordState(I)V

    .line 2320
    iget-object v0, p0, Lcom/oplus/camera/capmode/w;->mRecordSig:Landroid/os/ConditionVariable;

    invoke-virtual {v0}, Landroid/os/ConditionVariable;->close()V

    const/4 v0, 0x0

    .line 2321
    iput-object v0, p0, Lcom/oplus/camera/capmode/w;->mCurrentVideoUri:Landroid/net/Uri;

    const-wide/16 v5, 0x0

    .line 2322
    iput-wide v5, p0, Lcom/oplus/camera/capmode/w;->mRecordingTotalTime:J

    .line 2324
    invoke-virtual {p0}, Lcom/oplus/camera/capmode/w;->initVideoFileDescriptor()Z

    move-result v0

    if-nez v0, :cond_7

    const-string p0, "startVideoRecording, init FileDescriptor fail"

    .line 2325
    invoke-static {v4, p0}, Lcom/oplus/camera/e;->f(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    .line 2330
    :cond_7
    invoke-direct {p0}, Lcom/oplus/camera/capmode/w;->initializeRecorder()V

    .line 2332
    invoke-direct {p0}, Lcom/oplus/camera/capmode/w;->pauseAudioPlayback()V

    .line 2333
    iget-object v0, p0, Lcom/oplus/camera/capmode/w;->mCameraInterface:Lcom/oplus/camera/capmode/a;

    invoke-interface {v0, v1}, Lcom/oplus/camera/capmode/a;->c(I)V

    .line 2335
    iget-object v0, p0, Lcom/oplus/camera/capmode/w;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x6

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 2336
    iget-object v0, p0, Lcom/oplus/camera/capmode/w;->mHandler:Landroid/os/Handler;

    const-wide/16 v5, 0x2710

    invoke-virtual {v0, v1, v5, v6}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    const-string v0, "com.oplus.camera.video.brightness.second.decrease.support"

    .line 2338
    invoke-static {v0}, Lcom/oplus/camera/aps/config/CameraConfig;->getConfigBooleanValue(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_8

    .line 2339
    iget-object v0, p0, Lcom/oplus/camera/capmode/w;->mHandler:Landroid/os/Handler;

    const/16 v1, 0xd

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 2340
    iget-object v0, p0, Lcom/oplus/camera/capmode/w;->mHandler:Landroid/os/Handler;

    const-wide/32 v5, 0x493e0

    invoke-virtual {v0, v1, v5, v6}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 2343
    :cond_8
    iget v0, p0, Lcom/oplus/camera/capmode/w;->mOrientation:I

    iput v0, p0, Lcom/oplus/camera/capmode/w;->mVideoWatermarkOrientation:I

    .line 2344
    iget-object v0, p0, Lcom/oplus/camera/capmode/w;->mRecordHandler:Landroid/os/Handler;

    invoke-virtual {v0, v3}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 2345
    iget-object v0, p0, Lcom/oplus/camera/capmode/w;->mCameraInterface:Lcom/oplus/camera/capmode/a;

    invoke-interface {v0}, Lcom/oplus/camera/capmode/a;->L()V

    .line 2346
    iget-object v0, p0, Lcom/oplus/camera/capmode/w;->mActivity:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    invoke-static {v0, v3}, Lcom/oplus/camera/l/c;->a(Landroid/content/ContentResolver;I)V

    .line 2347
    iget-object v0, p0, Lcom/oplus/camera/capmode/w;->mHandler:Landroid/os/Handler;

    const-wide/16 v5, 0x1388

    invoke-virtual {v0, v2, v5, v6}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 2348
    iget-object v0, p0, Lcom/oplus/camera/capmode/w;->mCameraInterface:Lcom/oplus/camera/capmode/a;

    invoke-interface {v0}, Lcom/oplus/camera/capmode/a;->u()I

    move-result v0

    iput v0, p0, Lcom/oplus/camera/capmode/w;->mStartRecordingOrientation:I

    .line 2349
    iget-object v0, p0, Lcom/oplus/camera/capmode/w;->mCameraInterface:Lcom/oplus/camera/capmode/a;

    invoke-interface {v0}, Lcom/oplus/camera/capmode/a;->aj()I

    move-result v0

    iput v0, p0, Lcom/oplus/camera/capmode/w;->mStartRecordingFaceCount:I

    .line 2350
    invoke-virtual {p0}, Lcom/oplus/camera/capmode/w;->getCameraShutterType()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/oplus/camera/capmode/w;->mShutterType:Ljava/lang/String;

    .line 2351
    iget-object p0, p0, Lcom/oplus/camera/capmode/w;->mCameraInterface:Lcom/oplus/camera/capmode/a;

    const-string v0, "normal"

    invoke-interface {p0, v0}, Lcom/oplus/camera/capmode/a;->a(Ljava/lang/String;)V

    const-string p0, "afterInitRecorder end"

    .line 2353
    invoke-static {v4, p0}, Lcom/oplus/camera/e;->a(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method private stopCheckStorageAsyncTask()V
    .locals 2

    .line 1591
    iget-object v0, p0, Lcom/oplus/camera/capmode/w;->mHandler:Landroid/os/Handler;

    if-eqz v0, :cond_0

    const/4 v1, 0x2

    .line 1592
    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 1595
    :cond_0
    iget-object v0, p0, Lcom/oplus/camera/capmode/w;->mCheckStorageTask:Landroid/os/AsyncTask;

    if-eqz v0, :cond_1

    const/4 v1, 0x1

    .line 1596
    invoke-virtual {v0, v1}, Landroid/os/AsyncTask;->cancel(Z)Z

    const/4 v0, 0x0

    .line 1597
    iput-object v0, p0, Lcom/oplus/camera/capmode/w;->mCheckStorageTask:Landroid/os/AsyncTask;

    :cond_1
    return-void
.end method

.method private stopUpdateRecordTime()V
    .locals 2

    .line 1602
    iget-object v0, p0, Lcom/oplus/camera/capmode/w;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1603
    iget-object p0, p0, Lcom/oplus/camera/capmode/w;->mHandler:Landroid/os/Handler;

    invoke-virtual {p0, v1}, Landroid/os/Handler;->removeMessages(I)V

    :cond_0
    return-void
.end method

.method private stopVideoRecording()Z
    .locals 14

    const-string v0, "stopVideoRecording fail, time is too short or stop fail, mVideoFilename: "

    const-string v1, "type_video"

    const-string v2, "type_video_frame"

    const-string v3, "VideoMode"

    const-string v4, "stopVideoRecording"

    .line 1627
    invoke-static {v3, v4}, Lcom/oplus/camera/e;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 1631
    invoke-virtual {p0}, Lcom/oplus/camera/capmode/w;->isVideoRecordStopping()Z

    move-result v4

    const/4 v5, 0x0

    if-eqz v4, :cond_19

    .line 1632
    iget-wide v6, p0, Lcom/oplus/camera/capmode/w;->mResumePauseRecordingTotalTime:J

    iget-wide v8, p0, Lcom/oplus/camera/capmode/w;->mRecordingTotalTime:J

    add-long/2addr v6, v8

    iput-wide v6, p0, Lcom/oplus/camera/capmode/w;->mResumePauseRecordingTotalTime:J

    const/4 v4, 0x5

    const/4 v6, 0x0

    const/4 v7, 0x1

    .line 1635
    :try_start_0
    iget-object v8, p0, Lcom/oplus/camera/capmode/w;->mVideoRecorder:Lcom/oplus/camera/capmode/x;

    invoke-virtual {v8}, Lcom/oplus/camera/capmode/x;->c()Z

    move-result v8
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 1637
    :try_start_1
    iget-object v9, p0, Lcom/oplus/camera/capmode/w;->mVideoFilename:Ljava/lang/String;

    iput-object v9, p0, Lcom/oplus/camera/capmode/w;->mCurrentVideoFilename:Ljava/lang/String;

    .line 1639
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "stopVideoRecording, mCurrentVideoFilename: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v10, p0, Lcom/oplus/camera/capmode/w;->mCurrentVideoFilename:Ljava/lang/String;

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v10, ", stopResult: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v8}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v3, v9}, Lcom/oplus/camera/e;->a(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/RuntimeException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1650
    iget-object v9, p0, Lcom/oplus/camera/capmode/w;->mOneCamera:Lcom/oplus/camera/e/d;

    if-eqz v9, :cond_0

    invoke-virtual {p0}, Lcom/oplus/camera/capmode/w;->isHyperLapseOpen()Z

    move-result v9

    if-nez v9, :cond_0

    invoke-virtual {p0}, Lcom/oplus/camera/capmode/w;->isUseMediaCodec()Z

    move-result v9

    if-nez v9, :cond_0

    .line 1651
    iget-object v9, p0, Lcom/oplus/camera/capmode/w;->mOneCamera:Lcom/oplus/camera/e/d;

    invoke-interface {v9}, Lcom/oplus/camera/e/d;->z()V

    .line 1654
    :cond_0
    iget-object v9, p0, Lcom/oplus/camera/capmode/w;->mOneCamera:Lcom/oplus/camera/e/d;

    if-eqz v9, :cond_1

    iget-object v9, p0, Lcom/oplus/camera/capmode/w;->mOneCamera:Lcom/oplus/camera/e/d;

    invoke-interface {v9}, Lcom/oplus/camera/e/d;->u()Z

    move-result v9

    if-eqz v9, :cond_1

    .line 1655
    iget-object v9, p0, Lcom/oplus/camera/capmode/w;->mOneCamera:Lcom/oplus/camera/e/d;

    invoke-interface {v9, v5}, Lcom/oplus/camera/e/d;->w(Z)V

    .line 1658
    :cond_1
    iget-object v9, p0, Lcom/oplus/camera/capmode/w;->mPreviewEffectProcess:Lcom/oplus/camera/ui/preview/a/t;

    if-eqz v9, :cond_2

    .line 1659
    iget-object v9, p0, Lcom/oplus/camera/capmode/w;->mPreviewEffectProcess:Lcom/oplus/camera/ui/preview/a/t;

    invoke-interface {v9, v6}, Lcom/oplus/camera/ui/preview/a/t;->a(Lcom/oplus/camera/c$a;)V

    .line 1662
    :cond_2
    iget-object v6, p0, Lcom/oplus/camera/capmode/w;->mCameraInterface:Lcom/oplus/camera/capmode/a;

    if-eqz v6, :cond_3

    iget-boolean v6, p0, Lcom/oplus/camera/capmode/w;->mbVideoFrameInAPS:Z

    if-nez v6, :cond_3

    .line 1663
    iget-object v6, p0, Lcom/oplus/camera/capmode/w;->mCameraInterface:Lcom/oplus/camera/capmode/a;

    invoke-interface {v6, v4}, Lcom/oplus/camera/capmode/a;->c(I)V

    .line 1666
    :cond_3
    invoke-virtual {p0}, Lcom/oplus/camera/capmode/w;->isUseMediaCodec()Z

    move-result v4

    if-eqz v4, :cond_5

    iget-wide v9, p0, Lcom/oplus/camera/capmode/w;->mRecordingTotalTime:J

    invoke-virtual {p0, v5}, Lcom/oplus/camera/capmode/w;->getRecordingMinTime(Z)I

    move-result v4

    int-to-long v11, v4

    cmp-long v4, v9, v11

    if-ltz v4, :cond_4

    if-nez v8, :cond_5

    .line 1667
    :cond_4
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/oplus/camera/capmode/w;->mVideoFilename:Ljava/lang/String;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0}, Lcom/oplus/camera/e;->f(Ljava/lang/String;Ljava/lang/String;)V

    move v5, v7

    .line 1676
    :cond_5
    invoke-direct {p0}, Lcom/oplus/camera/capmode/w;->releaseVideoRecorderWrapper()V

    .line 1678
    iget-object v0, p0, Lcom/oplus/camera/capmode/w;->mOneCamera:Lcom/oplus/camera/e/d;

    if-eqz v0, :cond_6

    iget-object v0, p0, Lcom/oplus/camera/capmode/w;->mOneCamera:Lcom/oplus/camera/e/d;

    .line 1679
    invoke-interface {v0, v1}, Lcom/oplus/camera/e/d;->d(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_6

    .line 1680
    invoke-virtual {p0}, Lcom/oplus/camera/capmode/w;->isUseMediaRecorderNotUseAPS()Z

    move-result v0

    if-eqz v0, :cond_6

    .line 1681
    iget-object p0, p0, Lcom/oplus/camera/capmode/w;->mOneCamera:Lcom/oplus/camera/e/d;

    invoke-interface {p0, v1}, Lcom/oplus/camera/e/d;->e(Ljava/lang/String;)V

    goto/16 :goto_5

    .line 1682
    :cond_6
    invoke-virtual {p0, v2}, Lcom/oplus/camera/capmode/w;->needSurface(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_19

    .line 1683
    invoke-virtual {p0}, Lcom/oplus/camera/capmode/w;->isUseMediaCodec()Z

    move-result v0

    if-nez v0, :cond_19

    .line 1684
    invoke-virtual {p0}, Lcom/oplus/camera/capmode/w;->isUseMediaRecorderNotUseAPS()Z

    move-result v0

    if-nez v0, :cond_19

    iget-object v0, p0, Lcom/oplus/camera/capmode/w;->mOneCamera:Lcom/oplus/camera/e/d;

    if-eqz v0, :cond_19

    .line 1686
    iget-object p0, p0, Lcom/oplus/camera/capmode/w;->mOneCamera:Lcom/oplus/camera/e/d;

    invoke-interface {p0, v2}, Lcom/oplus/camera/e/d;->e(Ljava/lang/String;)V

    goto/16 :goto_5

    :catchall_0
    move-exception v7

    goto/16 :goto_2

    :catch_0
    move-exception v9

    goto :goto_0

    :catchall_1
    move-exception v8

    move-object v13, v8

    move v8, v7

    move-object v7, v13

    goto/16 :goto_2

    :catch_1
    move-exception v9

    move v8, v7

    .line 1642
    :goto_0
    :try_start_2
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "stopVideoRecording fail, mVideoFilename: "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v11, p0, Lcom/oplus/camera/capmode/w;->mVideoFilename:Ljava/lang/String;

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v3, v10, v9}, Lcom/oplus/camera/e;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 1644
    iget-object v9, p0, Lcom/oplus/camera/capmode/w;->mVideoRecorder:Lcom/oplus/camera/capmode/x;

    if-eqz v9, :cond_7

    .line 1645
    iget-object v9, p0, Lcom/oplus/camera/capmode/w;->mVideoRecorder:Lcom/oplus/camera/capmode/x;

    invoke-virtual {v9, v5}, Lcom/oplus/camera/capmode/x;->d(Z)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 1650
    :cond_7
    iget-object v9, p0, Lcom/oplus/camera/capmode/w;->mOneCamera:Lcom/oplus/camera/e/d;

    if-eqz v9, :cond_8

    invoke-virtual {p0}, Lcom/oplus/camera/capmode/w;->isHyperLapseOpen()Z

    move-result v9

    if-nez v9, :cond_8

    invoke-virtual {p0}, Lcom/oplus/camera/capmode/w;->isUseMediaCodec()Z

    move-result v9

    if-nez v9, :cond_8

    .line 1651
    iget-object v9, p0, Lcom/oplus/camera/capmode/w;->mOneCamera:Lcom/oplus/camera/e/d;

    invoke-interface {v9}, Lcom/oplus/camera/e/d;->z()V

    .line 1654
    :cond_8
    iget-object v9, p0, Lcom/oplus/camera/capmode/w;->mOneCamera:Lcom/oplus/camera/e/d;

    if-eqz v9, :cond_9

    iget-object v9, p0, Lcom/oplus/camera/capmode/w;->mOneCamera:Lcom/oplus/camera/e/d;

    invoke-interface {v9}, Lcom/oplus/camera/e/d;->u()Z

    move-result v9

    if-eqz v9, :cond_9

    .line 1655
    iget-object v9, p0, Lcom/oplus/camera/capmode/w;->mOneCamera:Lcom/oplus/camera/e/d;

    invoke-interface {v9, v5}, Lcom/oplus/camera/e/d;->w(Z)V

    .line 1658
    :cond_9
    iget-object v9, p0, Lcom/oplus/camera/capmode/w;->mPreviewEffectProcess:Lcom/oplus/camera/ui/preview/a/t;

    if-eqz v9, :cond_a

    .line 1659
    iget-object v9, p0, Lcom/oplus/camera/capmode/w;->mPreviewEffectProcess:Lcom/oplus/camera/ui/preview/a/t;

    invoke-interface {v9, v6}, Lcom/oplus/camera/ui/preview/a/t;->a(Lcom/oplus/camera/c$a;)V

    .line 1662
    :cond_a
    iget-object v6, p0, Lcom/oplus/camera/capmode/w;->mCameraInterface:Lcom/oplus/camera/capmode/a;

    if-eqz v6, :cond_b

    iget-boolean v6, p0, Lcom/oplus/camera/capmode/w;->mbVideoFrameInAPS:Z

    if-nez v6, :cond_b

    .line 1663
    iget-object v6, p0, Lcom/oplus/camera/capmode/w;->mCameraInterface:Lcom/oplus/camera/capmode/a;

    invoke-interface {v6, v4}, Lcom/oplus/camera/capmode/a;->c(I)V

    .line 1666
    :cond_b
    invoke-virtual {p0}, Lcom/oplus/camera/capmode/w;->isUseMediaCodec()Z

    move-result v4

    if-eqz v4, :cond_d

    iget-wide v9, p0, Lcom/oplus/camera/capmode/w;->mRecordingTotalTime:J

    invoke-virtual {p0, v5}, Lcom/oplus/camera/capmode/w;->getRecordingMinTime(Z)I

    move-result v4

    int-to-long v4, v4

    cmp-long v4, v9, v4

    if-ltz v4, :cond_c

    if-nez v8, :cond_d

    .line 1667
    :cond_c
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/oplus/camera/capmode/w;->mVideoFilename:Ljava/lang/String;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0}, Lcom/oplus/camera/e;->f(Ljava/lang/String;Ljava/lang/String;)V

    .line 1676
    :cond_d
    invoke-direct {p0}, Lcom/oplus/camera/capmode/w;->releaseVideoRecorderWrapper()V

    .line 1678
    iget-object v0, p0, Lcom/oplus/camera/capmode/w;->mOneCamera:Lcom/oplus/camera/e/d;

    if-eqz v0, :cond_e

    iget-object v0, p0, Lcom/oplus/camera/capmode/w;->mOneCamera:Lcom/oplus/camera/e/d;

    .line 1679
    invoke-interface {v0, v1}, Lcom/oplus/camera/e/d;->d(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_e

    .line 1680
    invoke-virtual {p0}, Lcom/oplus/camera/capmode/w;->isUseMediaRecorderNotUseAPS()Z

    move-result v0

    if-eqz v0, :cond_e

    .line 1681
    iget-object p0, p0, Lcom/oplus/camera/capmode/w;->mOneCamera:Lcom/oplus/camera/e/d;

    invoke-interface {p0, v1}, Lcom/oplus/camera/e/d;->e(Ljava/lang/String;)V

    goto :goto_1

    .line 1682
    :cond_e
    invoke-virtual {p0, v2}, Lcom/oplus/camera/capmode/w;->needSurface(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_f

    .line 1683
    invoke-virtual {p0}, Lcom/oplus/camera/capmode/w;->isUseMediaCodec()Z

    move-result v0

    if-nez v0, :cond_f

    .line 1684
    invoke-virtual {p0}, Lcom/oplus/camera/capmode/w;->isUseMediaRecorderNotUseAPS()Z

    move-result v0

    if-nez v0, :cond_f

    iget-object v0, p0, Lcom/oplus/camera/capmode/w;->mOneCamera:Lcom/oplus/camera/e/d;

    if-eqz v0, :cond_f

    .line 1686
    iget-object p0, p0, Lcom/oplus/camera/capmode/w;->mOneCamera:Lcom/oplus/camera/e/d;

    invoke-interface {p0, v2}, Lcom/oplus/camera/e/d;->e(Ljava/lang/String;)V

    :cond_f
    :goto_1
    return v7

    .line 1650
    :goto_2
    iget-object v9, p0, Lcom/oplus/camera/capmode/w;->mOneCamera:Lcom/oplus/camera/e/d;

    if-eqz v9, :cond_10

    invoke-virtual {p0}, Lcom/oplus/camera/capmode/w;->isHyperLapseOpen()Z

    move-result v9

    if-nez v9, :cond_10

    invoke-virtual {p0}, Lcom/oplus/camera/capmode/w;->isUseMediaCodec()Z

    move-result v9

    if-nez v9, :cond_10

    .line 1651
    iget-object v9, p0, Lcom/oplus/camera/capmode/w;->mOneCamera:Lcom/oplus/camera/e/d;

    invoke-interface {v9}, Lcom/oplus/camera/e/d;->z()V

    .line 1654
    :cond_10
    iget-object v9, p0, Lcom/oplus/camera/capmode/w;->mOneCamera:Lcom/oplus/camera/e/d;

    if-eqz v9, :cond_11

    iget-object v9, p0, Lcom/oplus/camera/capmode/w;->mOneCamera:Lcom/oplus/camera/e/d;

    invoke-interface {v9}, Lcom/oplus/camera/e/d;->u()Z

    move-result v9

    if-eqz v9, :cond_11

    .line 1655
    iget-object v9, p0, Lcom/oplus/camera/capmode/w;->mOneCamera:Lcom/oplus/camera/e/d;

    invoke-interface {v9, v5}, Lcom/oplus/camera/e/d;->w(Z)V

    .line 1658
    :cond_11
    iget-object v9, p0, Lcom/oplus/camera/capmode/w;->mPreviewEffectProcess:Lcom/oplus/camera/ui/preview/a/t;

    if-eqz v9, :cond_12

    .line 1659
    iget-object v9, p0, Lcom/oplus/camera/capmode/w;->mPreviewEffectProcess:Lcom/oplus/camera/ui/preview/a/t;

    invoke-interface {v9, v6}, Lcom/oplus/camera/ui/preview/a/t;->a(Lcom/oplus/camera/c$a;)V

    .line 1662
    :cond_12
    iget-object v6, p0, Lcom/oplus/camera/capmode/w;->mCameraInterface:Lcom/oplus/camera/capmode/a;

    if-eqz v6, :cond_13

    iget-boolean v6, p0, Lcom/oplus/camera/capmode/w;->mbVideoFrameInAPS:Z

    if-nez v6, :cond_13

    .line 1663
    iget-object v6, p0, Lcom/oplus/camera/capmode/w;->mCameraInterface:Lcom/oplus/camera/capmode/a;

    invoke-interface {v6, v4}, Lcom/oplus/camera/capmode/a;->c(I)V

    .line 1666
    :cond_13
    invoke-virtual {p0}, Lcom/oplus/camera/capmode/w;->isUseMediaCodec()Z

    move-result v4

    if-eqz v4, :cond_15

    iget-wide v9, p0, Lcom/oplus/camera/capmode/w;->mRecordingTotalTime:J

    invoke-virtual {p0, v5}, Lcom/oplus/camera/capmode/w;->getRecordingMinTime(Z)I

    move-result v4

    int-to-long v4, v4

    cmp-long v4, v9, v4

    if-ltz v4, :cond_14

    if-nez v8, :cond_15

    .line 1667
    :cond_14
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/oplus/camera/capmode/w;->mVideoFilename:Ljava/lang/String;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0}, Lcom/oplus/camera/e;->f(Ljava/lang/String;Ljava/lang/String;)V

    .line 1676
    :cond_15
    invoke-direct {p0}, Lcom/oplus/camera/capmode/w;->releaseVideoRecorderWrapper()V

    .line 1678
    iget-object v0, p0, Lcom/oplus/camera/capmode/w;->mOneCamera:Lcom/oplus/camera/e/d;

    if-eqz v0, :cond_17

    iget-object v0, p0, Lcom/oplus/camera/capmode/w;->mOneCamera:Lcom/oplus/camera/e/d;

    .line 1679
    invoke-interface {v0, v1}, Lcom/oplus/camera/e/d;->d(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_17

    .line 1680
    invoke-virtual {p0}, Lcom/oplus/camera/capmode/w;->isUseMediaRecorderNotUseAPS()Z

    move-result v0

    if-nez v0, :cond_16

    goto :goto_3

    .line 1681
    :cond_16
    iget-object p0, p0, Lcom/oplus/camera/capmode/w;->mOneCamera:Lcom/oplus/camera/e/d;

    invoke-interface {p0, v1}, Lcom/oplus/camera/e/d;->e(Ljava/lang/String;)V

    goto :goto_4

    .line 1682
    :cond_17
    :goto_3
    invoke-virtual {p0, v2}, Lcom/oplus/camera/capmode/w;->needSurface(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_18

    .line 1683
    invoke-virtual {p0}, Lcom/oplus/camera/capmode/w;->isUseMediaCodec()Z

    move-result v0

    if-nez v0, :cond_18

    .line 1684
    invoke-virtual {p0}, Lcom/oplus/camera/capmode/w;->isUseMediaRecorderNotUseAPS()Z

    move-result v0

    if-nez v0, :cond_18

    iget-object v0, p0, Lcom/oplus/camera/capmode/w;->mOneCamera:Lcom/oplus/camera/e/d;

    if-eqz v0, :cond_18

    .line 1686
    iget-object p0, p0, Lcom/oplus/camera/capmode/w;->mOneCamera:Lcom/oplus/camera/e/d;

    invoke-interface {p0, v2}, Lcom/oplus/camera/e/d;->e(Ljava/lang/String;)V

    .line 1688
    :cond_18
    :goto_4
    throw v7

    :cond_19
    :goto_5
    return v5
.end method

.method private updateRecordingTime()V
    .locals 10

    .line 3110
    invoke-virtual {p0}, Lcom/oplus/camera/capmode/w;->isVideoRecordStarted()Z

    move-result v0

    if-nez v0, :cond_0

    .line 3111
    invoke-virtual {p0}, Lcom/oplus/camera/capmode/w;->resetTimeUi()V

    return-void

    .line 3116
    :cond_0
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    .line 3117
    iget-wide v2, p0, Lcom/oplus/camera/capmode/w;->mRecordingStartTime:J

    sub-long/2addr v0, v2

    iget-wide v2, p0, Lcom/oplus/camera/capmode/w;->mTotalPausingTime:J

    sub-long/2addr v0, v2

    .line 3118
    iput-wide v0, p0, Lcom/oplus/camera/capmode/w;->mRecordingTotalTime:J

    .line 3120
    invoke-virtual {p0, v0, v1}, Lcom/oplus/camera/capmode/w;->shouldAutoStop(J)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 3121
    invoke-virtual {p0}, Lcom/oplus/camera/capmode/w;->onVideoShutterButtonClick()V

    return-void

    :cond_1
    const-string v0, "support_video_count_down"

    .line 3125
    invoke-virtual {p0, v0}, Lcom/oplus/camera/capmode/w;->getSupportFunction(Ljava/lang/String;)Z

    move-result v7

    .line 3126
    invoke-virtual {p0}, Lcom/oplus/camera/capmode/w;->getVideoTimeLimit()J

    move-result-wide v8

    .line 3128
    iget-object v1, p0, Lcom/oplus/camera/capmode/w;->mCameraUIInterface:Lcom/oplus/camera/ui/CameraUIInterface;

    iget-wide v2, p0, Lcom/oplus/camera/capmode/w;->mRecordingTotalTime:J

    invoke-virtual {p0}, Lcom/oplus/camera/capmode/w;->getVideoTime()J

    move-result-wide v4

    iget-boolean v6, p0, Lcom/oplus/camera/capmode/w;->mbShowRecordingIndicator:Z

    invoke-interface/range {v1 .. v9}, Lcom/oplus/camera/ui/CameraUIInterface;->a(JJZZJ)V

    .line 3131
    iget v0, p0, Lcom/oplus/camera/capmode/w;->mCount:I

    if-nez v0, :cond_2

    .line 3132
    iget-object v0, p0, Lcom/oplus/camera/capmode/w;->mCameraInterface:Lcom/oplus/camera/capmode/a;

    iget-wide v1, p0, Lcom/oplus/camera/capmode/w;->mRecordingTotalTime:J

    invoke-interface {v0, v1, v2}, Lcom/oplus/camera/capmode/a;->a(J)V

    .line 3135
    :cond_2
    iget v0, p0, Lcom/oplus/camera/capmode/w;->mCount:I

    const/4 v1, 0x1

    add-int/2addr v0, v1

    iput v0, p0, Lcom/oplus/camera/capmode/w;->mCount:I

    .line 3136
    iget v0, p0, Lcom/oplus/camera/capmode/w;->mCount:I

    rem-int/lit8 v0, v0, 0x6

    iput v0, p0, Lcom/oplus/camera/capmode/w;->mCount:I

    .line 3138
    iget v0, p0, Lcom/oplus/camera/capmode/w;->mCount:I

    if-nez v0, :cond_3

    .line 3139
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "updateRecordingTime, mbShowRecordingIndicator: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v2, p0, Lcom/oplus/camera/capmode/w;->mbShowRecordingIndicator:Z

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, "->"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v2, p0, Lcom/oplus/camera/capmode/w;->mbShowRecordingIndicator:Z

    xor-int/2addr v2, v1

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v2, "VideoMode"

    invoke-static {v2, v0}, Lcom/oplus/camera/e;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 3142
    iget-boolean v0, p0, Lcom/oplus/camera/capmode/w;->mbShowRecordingIndicator:Z

    xor-int/2addr v0, v1

    iput-boolean v0, p0, Lcom/oplus/camera/capmode/w;->mbShowRecordingIndicator:Z

    .line 3145
    :cond_3
    iget-object p0, p0, Lcom/oplus/camera/capmode/w;->mHandler:Landroid/os/Handler;

    const-wide/16 v2, 0x51

    invoke-virtual {p0, v1, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    return-void
.end method

.method private updateSurroundRecord()V
    .locals 13

    const-string v0, "oplus.software.video.surround_record_support"

    .line 3021
    invoke-static {v0}, Lcom/oplus/camera/util/Util;->h(Ljava/lang/String;)Z

    move-result v1

    const-string v2, "panorama"

    const-string v3, "focusing"

    const-string v4, "pref_sound_types_key_front"

    const-string v5, "pref_sound_types_key_rear"

    const-string v6, ", modeType: "

    const-string v7, "VideoMode"

    const-string v8, "fastVideo"

    const-string v9, "movie"

    const-string v10, "slowVideo"

    const-string v11, "all_around"

    const-string v12, "normal"

    if-eqz v1, :cond_8

    .line 3022
    invoke-static {}, Lcom/oplus/camera/util/Util;->E()Z

    move-result v1

    if-eqz v1, :cond_8

    .line 3023
    invoke-virtual {p0}, Lcom/oplus/camera/capmode/w;->getCameraMode()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v10, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x1

    const/high16 v10, 0x3f800000    # 1.0f

    if-nez v0, :cond_6

    .line 3024
    invoke-virtual {p0}, Lcom/oplus/camera/capmode/w;->getCameraMode()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v9, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_6

    .line 3025
    invoke-virtual {p0}, Lcom/oplus/camera/capmode/w;->getCameraMode()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v8, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_6

    .line 3026
    invoke-virtual {p0}, Lcom/oplus/camera/capmode/w;->getVideoSizeType()Ljava/lang/String;

    move-result-object v0

    const-string v8, "video_size_8k"

    invoke-virtual {v8, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_3

    .line 3029
    :cond_0
    iget-object v0, p0, Lcom/oplus/camera/capmode/w;->mPreferences:Landroid/content/SharedPreferences;

    iget-boolean v8, p0, Lcom/oplus/camera/capmode/w;->mbFrontCamera:Z

    if-eqz v8, :cond_1

    goto :goto_0

    :cond_1
    move-object v4, v5

    :goto_0
    invoke-interface {v0, v4, v11}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 3032
    invoke-virtual {v11, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    .line 3033
    invoke-virtual {p0}, Lcom/oplus/camera/capmode/w;->getZoomValue()F

    move-result v4

    invoke-static {v4, v10}, Ljava/lang/Float;->compare(FF)I

    move-result v4

    if-eqz v4, :cond_2

    move v4, v1

    goto :goto_1

    :cond_2
    const/4 v4, 0x0

    :goto_1
    if-eqz v0, :cond_3

    const-string v5, "on"

    goto :goto_2

    :cond_3
    const-string v5, "off"

    .line 3034
    :goto_2
    iput-object v5, p0, Lcom/oplus/camera/capmode/w;->mNoiseFilter:Ljava/lang/String;

    if-eqz v0, :cond_5

    if-eqz v4, :cond_4

    move-object v2, v3

    .line 3038
    :cond_4
    iput-object v2, p0, Lcom/oplus/camera/capmode/w;->mSoundType:Ljava/lang/String;

    goto :goto_4

    .line 3040
    :cond_5
    iput-object v12, p0, Lcom/oplus/camera/capmode/w;->mSoundType:Ljava/lang/String;

    goto :goto_4

    .line 3027
    :cond_6
    :goto_3
    iput-object v12, p0, Lcom/oplus/camera/capmode/w;->mSoundType:Ljava/lang/String;

    .line 3044
    :goto_4
    iget-object v0, p0, Lcom/oplus/camera/capmode/w;->mVideoRecorder:Lcom/oplus/camera/capmode/x;

    iget-object v2, p0, Lcom/oplus/camera/capmode/w;->mNoiseFilter:Ljava/lang/String;

    iget-object v3, p0, Lcom/oplus/camera/capmode/w;->mSoundType:Ljava/lang/String;

    iget v4, p0, Lcom/oplus/camera/capmode/w;->mCameraId:I

    iget-object v5, p0, Lcom/oplus/camera/capmode/w;->mCameraInterface:Lcom/oplus/camera/capmode/a;

    invoke-interface {v5}, Lcom/oplus/camera/capmode/a;->u()I

    move-result v5

    invoke-virtual {v0, v2, v3, v4, v5}, Lcom/oplus/camera/capmode/x;->a(Ljava/lang/String;Ljava/lang/String;II)V

    .line 3045
    invoke-virtual {p0}, Lcom/oplus/camera/capmode/w;->getZoomValue()F

    move-result v0

    sub-float/2addr v0, v10

    const/high16 v2, 0x41200000    # 10.0f

    mul-float/2addr v0, v2

    float-to-int v0, v0

    if-gtz v0, :cond_7

    move v0, v1

    .line 3051
    :cond_7
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "initSoundType, soundType: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/oplus/camera/capmode/w;->mSoundType:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/oplus/camera/capmode/w;->getCameraMode()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ", mNoiseFilter: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/oplus/camera/capmode/w;->mNoiseFilter:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ", soundValue: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v7, v1}, Lcom/oplus/camera/e;->c(Ljava/lang/String;Ljava/lang/String;)V

    .line 3054
    iget-object v1, p0, Lcom/oplus/camera/capmode/w;->mVideoRecorder:Lcom/oplus/camera/capmode/x;

    invoke-virtual {p0}, Lcom/oplus/camera/capmode/w;->getZoomValue()F

    move-result p0

    invoke-virtual {v1, v0, p0}, Lcom/oplus/camera/capmode/x;->a(IF)V

    goto/16 :goto_9

    .line 3055
    :cond_8
    invoke-static {v0}, Lcom/oplus/camera/util/Util;->h(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_e

    .line 3056
    invoke-static {}, Lcom/oplus/camera/util/Util;->F()Z

    move-result v0

    if-eqz v0, :cond_e

    .line 3057
    invoke-virtual {p0}, Lcom/oplus/camera/capmode/w;->getCameraMode()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v10, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_d

    .line 3058
    invoke-virtual {p0}, Lcom/oplus/camera/capmode/w;->getCameraMode()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v9, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_d

    .line 3059
    invoke-virtual {p0}, Lcom/oplus/camera/capmode/w;->getCameraMode()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v8, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_9

    goto :goto_7

    .line 3062
    :cond_9
    iget-object v0, p0, Lcom/oplus/camera/capmode/w;->mPreferences:Landroid/content/SharedPreferences;

    iget-boolean v1, p0, Lcom/oplus/camera/capmode/w;->mbFrontCamera:Z

    if-eqz v1, :cond_a

    goto :goto_5

    :cond_a
    move-object v4, v5

    :goto_5
    invoke-interface {v0, v4, v11}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 3065
    invoke-virtual {v11, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_c

    .line 3068
    invoke-virtual {p0}, Lcom/oplus/camera/capmode/w;->getZoomValue()F

    move-result v0

    const v1, 0x3f8ccccd    # 1.1f

    cmpg-float v0, v0, v1

    if-gez v0, :cond_b

    goto :goto_6

    :cond_b
    move-object v2, v3

    .line 3069
    :goto_6
    iput-object v2, p0, Lcom/oplus/camera/capmode/w;->mSoundType:Ljava/lang/String;

    goto :goto_8

    .line 3071
    :cond_c
    iput-object v12, p0, Lcom/oplus/camera/capmode/w;->mSoundType:Ljava/lang/String;

    goto :goto_8

    .line 3060
    :cond_d
    :goto_7
    iput-object v12, p0, Lcom/oplus/camera/capmode/w;->mSoundType:Ljava/lang/String;

    .line 3075
    :goto_8
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "initAudioType, audioType: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/oplus/camera/capmode/w;->mSoundType:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/oplus/camera/capmode/w;->getCameraMode()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v7, v0}, Lcom/oplus/camera/e;->c(Ljava/lang/String;Ljava/lang/String;)V

    .line 3077
    iget-object v0, p0, Lcom/oplus/camera/capmode/w;->mVideoRecorder:Lcom/oplus/camera/capmode/x;

    iget-object v1, p0, Lcom/oplus/camera/capmode/w;->mSoundType:Ljava/lang/String;

    invoke-virtual {p0}, Lcom/oplus/camera/capmode/w;->getZoomValue()F

    move-result v2

    iget p0, p0, Lcom/oplus/camera/capmode/w;->mOrientation:I

    invoke-virtual {v0, v1, v2, p0}, Lcom/oplus/camera/capmode/x;->a(Ljava/lang/String;FI)V

    :cond_e
    :goto_9
    return-void
.end method

.method private updateVideoWatermarkResource()V
    .locals 9

    .line 2472
    invoke-virtual {p0}, Lcom/oplus/camera/capmode/w;->isSloganOpen()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/oplus/camera/capmode/w;->mCameraInterface:Lcom/oplus/camera/capmode/a;

    if-eqz v0, :cond_1

    const-string v0, "getVideoWatermark"

    .line 2473
    invoke-static {v0}, Lcom/oplus/camera/e;->a(Ljava/lang/String;)V

    .line 2475
    invoke-virtual {p0}, Lcom/oplus/camera/capmode/w;->isUseMediaCodec()Z

    move-result v1

    const/4 v2, 0x1

    xor-int/lit8 v4, v1, 0x1

    .line 2477
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "updateVideoWatermarkResource, needToSetToHal: "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v3, "VideoMode"

    invoke-static {v3, v1}, Lcom/oplus/camera/e;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 2479
    iget-object v1, p0, Lcom/oplus/camera/capmode/w;->mCameraInterface:Lcom/oplus/camera/capmode/a;

    invoke-interface {v1}, Lcom/oplus/camera/capmode/a;->y()Landroid/location/Location;

    .line 2480
    iget-object v3, p0, Lcom/oplus/camera/capmode/w;->mCameraInterface:Lcom/oplus/camera/capmode/a;

    .line 2481
    invoke-virtual {p0}, Lcom/oplus/camera/capmode/w;->isMovieMode()Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v2, 0x2

    :cond_0
    move v5, v2

    .line 2482
    invoke-virtual {p0}, Lcom/oplus/camera/capmode/w;->isSloganForceLandscape()Z

    move-result v6

    const/4 v7, 0x1

    const/4 v8, 0x0

    .line 2480
    invoke-interface/range {v3 .. v8}, Lcom/oplus/camera/capmode/a;->a(ZIZIZ)V

    .line 2484
    invoke-static {v0}, Lcom/oplus/camera/e;->b(Ljava/lang/String;)V

    :cond_1
    return-void
.end method

.method private videoSloganSupportAndOpen()Z
    .locals 1

    const-string v0, "pref_watermark_function_key"

    .line 4391
    invoke-virtual {p0, v0}, Lcom/oplus/camera/capmode/w;->getSupportFunction(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/oplus/camera/capmode/w;->isSloganOpen()Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method


# virtual methods
.method protected addVideoToMediaStore(Lcom/oplus/camera/ui/control/e$d;ZLjava/lang/String;)Z
    .locals 15
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "WrongConstant"
        }
    .end annotation

    move-object v1, p0

    const-string v2, "com.oplus.camera.NEW_VIDEO"

    const-string v3, "CameraTest Video Flie Save End, mCurrentVideoUri: "

    const-string v4, "VideoMode"

    const-string v0, "addVideoToMediaStore"

    .line 1926
    invoke-static {v4, v0}, Lcom/oplus/camera/e;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 1930
    invoke-static {}, Lcom/oplus/camera/Storage;->e()Ljava/lang/String;

    move-result-object v0

    const-string v5, "on"

    invoke-virtual {v5, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const/4 v5, 0x1

    const/4 v6, 0x0

    if-eqz v0, :cond_1

    invoke-static {v5}, Lcom/oplus/camera/Storage;->b(Z)Z

    move-result v0

    if-nez v0, :cond_1

    .line 1931
    iput-object v6, v1, Lcom/oplus/camera/capmode/w;->mCurrentVideoUri:Landroid/net/Uri;

    .line 1932
    iput-object v6, v1, Lcom/oplus/camera/capmode/w;->mCurrentVideoFilename:Ljava/lang/String;

    .line 1934
    iget-object v0, v1, Lcom/oplus/camera/capmode/w;->mCurrentVideoValues:Landroid/content/ContentValues;

    if-eqz v0, :cond_0

    .line 1935
    invoke-virtual {v0}, Landroid/content/ContentValues;->clear()V

    .line 1936
    iput-object v6, v1, Lcom/oplus/camera/capmode/w;->mCurrentVideoValues:Landroid/content/ContentValues;

    :cond_0
    const-string v0, "addVideoToMediaStore, Exception: sdcard has removed, so not add to mediaStore."

    .line 1939
    invoke-static {v4, v0}, Lcom/oplus/camera/e;->a(Ljava/lang/String;Ljava/lang/String;)V

    return v5

    .line 1944
    :cond_1
    iget-object v0, v1, Lcom/oplus/camera/capmode/w;->mVideoFileDescriptor:Landroid/os/ParcelFileDescriptor;

    const/4 v7, 0x0

    if-eqz v0, :cond_a

    iget-object v0, v1, Lcom/oplus/camera/capmode/w;->mCurrentVideoFilename:Ljava/lang/String;

    if-eqz v0, :cond_a

    iget-object v0, v1, Lcom/oplus/camera/capmode/w;->mCurrentVideoValues:Landroid/content/ContentValues;

    if-eqz v0, :cond_a

    .line 1945
    invoke-static/range {p3 .. p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 1946
    iget-object v0, v1, Lcom/oplus/camera/capmode/w;->mCurrentVideoValues:Landroid/content/ContentValues;

    invoke-virtual {p0}, Lcom/oplus/camera/capmode/w;->getVideoFileExifTag()Ljava/lang/String;

    move-result-object v8

    move-object/from16 v9, p3

    invoke-virtual {v8, v9}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    const-string v9, "title"

    invoke-virtual {v0, v9, v8}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1949
    :cond_2
    iget-object v0, v1, Lcom/oplus/camera/capmode/w;->mCurrentVideoValues:Landroid/content/ContentValues;

    new-instance v8, Ljava/io/File;

    iget-object v9, v1, Lcom/oplus/camera/capmode/w;->mCurrentVideoFilename:Ljava/lang/String;

    invoke-direct {v8, v9}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v8}, Ljava/io/File;->length()J

    move-result-wide v8

    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v8

    const-string v9, "_size"

    invoke-virtual {v0, v9, v8}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 1950
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v8

    .line 1951
    iget-object v0, v1, Lcom/oplus/camera/capmode/w;->mCurrentVideoValues:Landroid/content/ContentValues;

    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v8

    const-string v9, "datetaken"

    invoke-virtual {v0, v9, v8}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 1953
    iget-object v0, v1, Lcom/oplus/camera/capmode/w;->mCurrentVideoValues:Landroid/content/ContentValues;

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    const-string v9, "is_pending"

    invoke-virtual {v0, v9, v8}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 1955
    invoke-virtual {p0}, Lcom/oplus/camera/capmode/w;->needPostProcessAfterStopRecord()Z

    move-result v0

    const-wide/16 v8, 0x0

    if-nez v0, :cond_4

    iget-object v0, v1, Lcom/oplus/camera/capmode/w;->mCameraInterface:Lcom/oplus/camera/capmode/a;

    invoke-interface {v0}, Lcom/oplus/camera/capmode/a;->m()Z

    move-result v0

    if-nez v0, :cond_4

    .line 1959
    :try_start_0
    new-instance v10, Landroid/media/MediaMetadataRetriever;

    invoke-direct {v10}, Landroid/media/MediaMetadataRetriever;-><init>()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :try_start_1
    const-string v0, "addVideoToMediaStore, retriever.setDataSource"

    .line 1961
    invoke-static {v4, v0}, Lcom/oplus/camera/e;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 1963
    iget-object v0, v1, Lcom/oplus/camera/capmode/w;->mActivity:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iget-object v11, v1, Lcom/oplus/camera/capmode/w;->mCurrentVideoUri:Landroid/net/Uri;

    invoke-virtual {v10, v0, v11}, Landroid/media/MediaMetadataRetriever;->setDataSource(Landroid/content/Context;Landroid/net/Uri;)V

    const-string v0, "addVideoToMediaStore, retriever.extractMetadata"

    .line 1965
    invoke-static {v4, v0}, Lcom/oplus/camera/e;->a(Ljava/lang/String;Ljava/lang/String;)V

    const/16 v0, 0x9

    .line 1967
    invoke-virtual {v10, v0}, Landroid/media/MediaMetadataRetriever;->extractMetadata(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v11
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_2
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    :try_start_2
    const-string v0, "addVideoToMediaStore, retriever.getFrameAtTime"

    .line 1969
    invoke-static {v4, v0}, Lcom/oplus/camera/e;->a(Ljava/lang/String;Ljava/lang/String;)V

    const-wide/16 v13, -0x1

    .line 1971
    invoke-virtual {v10, v13, v14}, Landroid/media/MediaMetadataRetriever;->getFrameAtTime(J)Landroid/graphics/Bitmap;

    move-result-object v0

    sget v13, Lcom/oplus/camera/ui/control/ThumbImageView;->a:I

    invoke-static {v0, v13}, Lcom/oplus/camera/ui/control/e;->b(Landroid/graphics/Bitmap;I)Landroid/graphics/Bitmap;

    move-result-object v0

    move-object/from16 v13, p1

    iput-object v0, v13, Lcom/oplus/camera/ui/control/e$d;->m:Landroid/graphics/Bitmap;
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_3
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 1978
    :try_start_3
    invoke-virtual {v10}, Landroid/media/MediaMetadataRetriever;->release()V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0

    goto :goto_2

    :catch_0
    move-exception v0

    move-object v10, v0

    .line 1980
    invoke-virtual {v10}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_2

    :catchall_0
    move-exception v0

    move-object v1, v0

    move-object v10, v6

    goto :goto_0

    :catch_1
    move-object v10, v6

    :catch_2
    move-wide v11, v8

    :catch_3
    :try_start_4
    const-string v0, "addVideoToMediaStore, get video duration fail."

    .line 1974
    invoke-static {v4, v0}, Lcom/oplus/camera/e;->a(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    if-eqz v10, :cond_5

    .line 1978
    :try_start_5
    invoke-virtual {v10}, Landroid/media/MediaMetadataRetriever;->release()V
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_0

    goto :goto_2

    :catchall_1
    move-exception v0

    move-object v1, v0

    :goto_0
    if-eqz v10, :cond_3

    :try_start_6
    invoke-virtual {v10}, Landroid/media/MediaMetadataRetriever;->release()V
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_4

    goto :goto_1

    :catch_4
    move-exception v0

    move-object v2, v0

    .line 1980
    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V

    .line 1983
    :cond_3
    :goto_1
    throw v1

    :cond_4
    move-wide v11, v8

    .line 1986
    :cond_5
    :goto_2
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "addVideoToMediaStore, Video duration: "

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v11, v12}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v4, v0}, Lcom/oplus/camera/e;->a(Ljava/lang/String;Ljava/lang/String;)V

    cmp-long v0, v11, v8

    const-string v8, "duration"

    if-lez v0, :cond_6

    .line 1989
    iget-object v0, v1, Lcom/oplus/camera/capmode/w;->mCurrentVideoValues:Landroid/content/ContentValues;

    invoke-static {v11, v12}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v9

    invoke-virtual {v0, v8, v9}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    goto :goto_3

    .line 1991
    :cond_6
    iget-object v0, v1, Lcom/oplus/camera/capmode/w;->mCurrentVideoValues:Landroid/content/ContentValues;

    iget-wide v9, v1, Lcom/oplus/camera/capmode/w;->mRecordingTotalTime:J

    invoke-static {v9, v10}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v9

    invoke-virtual {v0, v8, v9}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 1997
    :goto_3
    :try_start_7
    invoke-static {}, Lcom/oplus/camera/util/Util;->l()Landroid/content/Context;

    move-result-object v0

    if-eqz v0, :cond_9

    .line 1998
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v8, 0x1e

    if-lt v0, v8, :cond_7

    .line 1999
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    const-string v8, "android:query-arg-do-async-scan"

    .line 2000
    invoke-virtual {v0, v8, v5}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 2001
    invoke-static {}, Lcom/oplus/camera/util/Util;->l()Landroid/content/Context;

    move-result-object v8

    invoke-virtual {v8}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v8

    iget-object v9, v1, Lcom/oplus/camera/capmode/w;->mCurrentVideoUri:Landroid/net/Uri;

    iget-object v10, v1, Lcom/oplus/camera/capmode/w;->mCurrentVideoValues:Landroid/content/ContentValues;

    invoke-virtual {v8, v9, v10, v0}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Landroid/os/Bundle;)I

    goto :goto_4

    .line 2003
    :cond_7
    invoke-static {}, Lcom/oplus/camera/util/Util;->l()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-object v8, v1, Lcom/oplus/camera/capmode/w;->mCurrentVideoUri:Landroid/net/Uri;

    iget-object v9, v1, Lcom/oplus/camera/capmode/w;->mCurrentVideoValues:Landroid/content/ContentValues;

    invoke-virtual {v0, v8, v9, v6, v6}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    .line 2006
    :goto_4
    new-instance v0, Ljava/io/File;

    iget-object v8, v1, Lcom/oplus/camera/capmode/w;->mVideoFilename:Ljava/lang/String;

    invoke-direct {v0, v8}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Lcom/oplus/camera/capmode/w;->updateVideoTypeExif(Ljava/io/File;)V

    .line 2009
    iget-boolean v0, v1, Lcom/oplus/camera/capmode/w;->mbDisplayOnLock:Z

    if-eqz v0, :cond_8

    .line 2010
    iget-object v0, v1, Lcom/oplus/camera/capmode/w;->mCurrentVideoUri:Landroid/net/Uri;

    if-eqz v0, :cond_8

    .line 2011
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    const-string v8, "media_id"

    .line 2012
    iget-object v9, v1, Lcom/oplus/camera/capmode/w;->mCurrentVideoUri:Landroid/net/Uri;

    invoke-static {v9}, Landroid/content/ContentUris;->parseId(Landroid/net/Uri;)J

    move-result-wide v9

    invoke-static {v9, v10}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v9

    invoke-virtual {v0, v8, v9}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    const-string v8, "content://com.open.gallery.smart.provider/locked_pictures"

    .line 2013
    invoke-static {v8}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v8

    .line 2015
    invoke-static {v8, v0}, Lcom/oplus/camera/util/d;->a(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;

    .line 2017
    iget-object v0, v1, Lcom/oplus/camera/capmode/w;->mCameraInterface:Lcom/oplus/camera/capmode/a;

    if-eqz v0, :cond_8

    .line 2018
    iget-object v0, v1, Lcom/oplus/camera/capmode/w;->mCameraInterface:Lcom/oplus/camera/capmode/a;

    invoke-interface {v0}, Lcom/oplus/camera/capmode/a;->aL()V

    .line 2023
    :cond_8
    invoke-static {}, Lcom/oplus/camera/util/Util;->l()Landroid/content/Context;

    move-result-object v0

    new-instance v8, Landroid/content/Intent;

    const-string v9, "android.hardware.action.NEW_VIDEO"

    iget-object v10, v1, Lcom/oplus/camera/capmode/w;->mCurrentVideoUri:Landroid/net/Uri;

    invoke-direct {v8, v9, v10}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    invoke-virtual {v0, v8}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 2025
    invoke-static {}, Lcom/oplus/camera/util/Util;->l()Landroid/content/Context;

    move-result-object v0

    iget-object v8, v1, Lcom/oplus/camera/capmode/w;->mVideoFilename:Ljava/lang/String;

    invoke-static {v0, v8}, Lcom/oplus/camera/util/Util;->a(Landroid/content/Context;Ljava/lang/String;)V

    .line 2026
    invoke-static {}, Lcom/oplus/camera/util/Util;->l()Landroid/content/Context;

    move-result-object v0

    iget-object v8, v1, Lcom/oplus/camera/capmode/w;->mCurrentVideoUri:Landroid/net/Uri;

    invoke-static {}, Lcom/oplus/camera/util/Util;->aP()Ljava/lang/String;

    move-result-object v9

    invoke-static {v0, v8, v2, v9}, Lcom/oplus/camera/util/Util;->a(Landroid/content/Context;Landroid/net/Uri;Ljava/lang/String;Ljava/lang/String;)V

    .line 2027
    invoke-static {}, Lcom/oplus/camera/util/Util;->l()Landroid/content/Context;

    move-result-object v0

    iget-object v8, v1, Lcom/oplus/camera/capmode/w;->mCurrentVideoUri:Landroid/net/Uri;

    const-string v9, "com.heytap.cloud"

    invoke-static {v0, v8, v2, v9}, Lcom/oplus/camera/util/Util;->a(Landroid/content/Context;Landroid/net/Uri;Ljava/lang/String;Ljava/lang/String;)V

    .line 2029
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "addVideoToMediaStore, Video mCurrentVideoUri: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, v1, Lcom/oplus/camera/capmode/w;->mCurrentVideoUri:Landroid/net/Uri;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v4, v0}, Lcom/oplus/camera/e;->a(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_5
    .catchall {:try_start_7 .. :try_end_7} :catchall_2

    .line 2044
    :cond_9
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, v1, Lcom/oplus/camera/capmode/w;->mCurrentVideoUri:Landroid/net/Uri;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v4, v0}, Lcom/oplus/camera/e;->f(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_6

    :catchall_2
    move-exception v0

    goto :goto_5

    :catch_5
    move-exception v0

    :try_start_8
    const-string v2, "addVideoToMediaStore, failed to add video to media store"

    .line 2034
    invoke-static {v4, v2, v0}, Lcom/oplus/camera/e;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 2036
    iput-object v6, v1, Lcom/oplus/camera/capmode/w;->mCurrentVideoUri:Landroid/net/Uri;

    .line 2037
    iput-object v6, v1, Lcom/oplus/camera/capmode/w;->mCurrentVideoFilename:Ljava/lang/String;
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_2

    .line 2044
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, v1, Lcom/oplus/camera/capmode/w;->mCurrentVideoUri:Landroid/net/Uri;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v4, v0}, Lcom/oplus/camera/e;->f(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_7

    :goto_5
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, v1, Lcom/oplus/camera/capmode/w;->mCurrentVideoUri:Landroid/net/Uri;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v4, v1}, Lcom/oplus/camera/e;->f(Ljava/lang/String;Ljava/lang/String;)V

    .line 2045
    throw v0

    :cond_a
    :goto_6
    move v5, v7

    .line 2048
    :goto_7
    invoke-virtual {p0}, Lcom/oplus/camera/capmode/w;->needPostProcessAfterStopRecord()Z

    move-result v0

    if-eqz v0, :cond_b

    .line 2049
    invoke-virtual {p0}, Lcom/oplus/camera/capmode/w;->processPlatformSlowVideo()V

    .line 2052
    :cond_b
    iget-object v0, v1, Lcom/oplus/camera/capmode/w;->mCurrentVideoValues:Landroid/content/ContentValues;

    if-eqz v0, :cond_c

    invoke-virtual {p0}, Lcom/oplus/camera/capmode/w;->needPostProcessAfterStopRecord()Z

    move-result v0

    if-nez v0, :cond_c

    invoke-virtual {p0}, Lcom/oplus/camera/capmode/w;->isDoubleExposureOpen()Z

    move-result v0

    if-nez v0, :cond_c

    .line 2053
    iget-object v0, v1, Lcom/oplus/camera/capmode/w;->mCurrentVideoValues:Landroid/content/ContentValues;

    invoke-virtual {v0}, Landroid/content/ContentValues;->clear()V

    .line 2054
    iput-object v6, v1, Lcom/oplus/camera/capmode/w;->mCurrentVideoValues:Landroid/content/ContentValues;

    .line 2057
    :cond_c
    iget-boolean v0, v1, Lcom/oplus/camera/capmode/w;->mbDestroyed:Z

    if-nez v0, :cond_d

    iget-object v0, v1, Lcom/oplus/camera/capmode/w;->mActivity:Landroid/app/Activity;

    if-eqz v0, :cond_d

    move/from16 v2, p2

    .line 2058
    invoke-direct {p0, v2}, Lcom/oplus/camera/capmode/w;->reportVideoRecordToDcs(Z)V

    :cond_d
    return v5
.end method

.method public afterStopRecording()V
    .locals 2

    .line 882
    iget-object v0, p0, Lcom/oplus/camera/capmode/w;->mCameraUIInterface:Lcom/oplus/camera/ui/CameraUIInterface;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/oplus/camera/capmode/w;->mCameraInterface:Lcom/oplus/camera/capmode/a;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/oplus/camera/capmode/w;->mCameraInterface:Lcom/oplus/camera/capmode/a;

    invoke-interface {v0}, Lcom/oplus/camera/capmode/a;->i()Z

    move-result v0

    if-nez v0, :cond_0

    .line 883
    iget-object p0, p0, Lcom/oplus/camera/capmode/w;->mCameraUIInterface:Lcom/oplus/camera/ui/CameraUIInterface;

    const/4 v0, 0x4

    const/4 v1, 0x1

    invoke-interface {p0, v0, v1}, Lcom/oplus/camera/ui/CameraUIInterface;->b(IZ)V

    :cond_0
    return-void
.end method

.method public beforeStartRecording()V
    .locals 3

    .line 862
    iget-object v0, p0, Lcom/oplus/camera/capmode/w;->mCameraInterface:Lcom/oplus/camera/capmode/a;

    if-eqz v0, :cond_0

    .line 863
    iget-object v0, p0, Lcom/oplus/camera/capmode/w;->mCameraInterface:Lcom/oplus/camera/capmode/a;

    invoke-interface {v0}, Lcom/oplus/camera/capmode/a;->H()Z

    .line 866
    :cond_0
    iget-object v0, p0, Lcom/oplus/camera/capmode/w;->mCameraInterface:Lcom/oplus/camera/capmode/a;

    const/4 v1, 0x1

    if-eqz v0, :cond_1

    .line 867
    iget-object v0, p0, Lcom/oplus/camera/capmode/w;->mCameraUIInterface:Lcom/oplus/camera/ui/CameraUIInterface;

    const/4 v2, 0x7

    invoke-interface {v0, v2, v1}, Lcom/oplus/camera/ui/CameraUIInterface;->f(IZ)V

    :cond_1
    const-string v0, "key_intelligent_high_frame_usage_key"

    .line 870
    invoke-virtual {p0, v0}, Lcom/oplus/camera/capmode/w;->getSupportFunction(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_2

    const-string v0, "key_quick_video"

    .line 871
    invoke-virtual {p0, v0}, Lcom/oplus/camera/capmode/w;->getSupportFunction(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 872
    invoke-virtual {p0}, Lcom/oplus/camera/capmode/w;->needPostProcessAfterStopRecord()Z

    move-result v0

    if-nez v0, :cond_2

    .line 873
    invoke-virtual {p0}, Lcom/oplus/camera/capmode/w;->showRecordingTimeUI()V

    :cond_2
    const/4 v0, 0x0

    .line 876
    iput-boolean v0, p0, Lcom/oplus/camera/capmode/w;->mbPictureTakenDuringRecord:Z

    .line 877
    iput-boolean v1, p0, Lcom/oplus/camera/capmode/w;->mbGetDcsData:Z

    return-void
.end method

.method public beforeSwitchCamera()V
    .locals 3

    .line 3556
    invoke-super {p0}, Lcom/oplus/camera/capmode/BaseMode;->beforeSwitchCamera()V

    .line 3558
    iget-object v0, p0, Lcom/oplus/camera/capmode/w;->mPrepareVideoSurface:Landroid/os/ConditionVariable;

    monitor-enter v0

    .line 3559
    :try_start_0
    iget-object v1, p0, Lcom/oplus/camera/capmode/w;->mRecordHandler:Landroid/os/Handler;

    const/4 v2, 0x6

    invoke-virtual {v1, v2}, Landroid/os/Handler;->removeMessages(I)V

    .line 3560
    iget-object v1, p0, Lcom/oplus/camera/capmode/w;->mRecordHandler:Landroid/os/Handler;

    invoke-virtual {v1, v2}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    const/4 v1, 0x5

    .line 3562
    iget-object v2, p0, Lcom/oplus/camera/capmode/w;->mCameraInterface:Lcom/oplus/camera/capmode/a;

    invoke-interface {v2}, Lcom/oplus/camera/capmode/a;->g()I

    move-result v2

    if-ne v1, v2, :cond_0

    .line 3563
    iget-object v1, p0, Lcom/oplus/camera/capmode/w;->mPrepareVideoSurface:Landroid/os/ConditionVariable;

    invoke-virtual {v1}, Landroid/os/ConditionVariable;->close()V

    .line 3564
    iget-object p0, p0, Lcom/oplus/camera/capmode/w;->mPrepareVideoSurface:Landroid/os/ConditionVariable;

    invoke-virtual {p0}, Landroid/os/ConditionVariable;->block()V

    .line 3566
    :cond_0
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public beforeSwitchToMode(Z)V
    .locals 1

    .line 3546
    invoke-super {p0, p1}, Lcom/oplus/camera/capmode/BaseMode;->beforeSwitchToMode(Z)V

    if-nez p1, :cond_0

    .line 3549
    iget-object p1, p0, Lcom/oplus/camera/capmode/w;->mRecordHandler:Landroid/os/Handler;

    const/4 v0, 0x6

    invoke-virtual {p1, v0}, Landroid/os/Handler;->removeMessages(I)V

    .line 3550
    iget-object p0, p0, Lcom/oplus/camera/capmode/w;->mRecordHandler:Landroid/os/Handler;

    invoke-virtual {p0, v0}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    :cond_0
    return-void
.end method

.method public checkVideoCodecAndReset()V
    .locals 2

    .line 3832
    invoke-static {}, Lcom/oplus/camera/util/Util;->at()Z

    move-result v0

    if-nez v0, :cond_0

    .line 3833
    invoke-virtual {p0}, Lcom/oplus/camera/capmode/w;->getVideoCodec()Ljava/lang/String;

    move-result-object v0

    const-string v1, "H265"

    .line 3835
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "VideoMode"

    const-string v1, "checkVideoCodecAndReset, reset video codec to default."

    .line 3836
    invoke-static {v0, v1}, Lcom/oplus/camera/e;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 3838
    iget-object v0, p0, Lcom/oplus/camera/capmode/w;->mPreferences:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 3839
    invoke-virtual {p0}, Lcom/oplus/camera/capmode/w;->getDefaultVideoCodec()Ljava/lang/String;

    move-result-object p0

    const-string v1, "pref_video_codec_key"

    invoke-interface {v0, v1, p0}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 3840
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    :cond_0
    return-void
.end method

.method protected closeVideoFileDescriptor()V
    .locals 3

    .line 1564
    iget-object v0, p0, Lcom/oplus/camera/capmode/w;->mVideoFileDescriptor:Landroid/os/ParcelFileDescriptor;

    if-eqz v0, :cond_0

    .line 1566
    :try_start_0
    invoke-virtual {v0}, Landroid/os/ParcelFileDescriptor;->close()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    const-string v1, "VideoMode"

    const-string v2, "closeVideoFileDescriptor, Fail to close fd"

    .line 1568
    invoke-static {v1, v2, v0}, Lcom/oplus/camera/e;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    :goto_0
    const/4 v0, 0x0

    .line 1571
    iput-object v0, p0, Lcom/oplus/camera/capmode/w;->mVideoFileDescriptor:Landroid/os/ParcelFileDescriptor;

    :cond_0
    return-void
.end method

.method protected configVideoBitRate()I
    .locals 0

    .line 697
    iget-object p0, p0, Lcom/oplus/camera/capmode/w;->mProfile:Landroid/media/CamcorderProfile;

    iget p0, p0, Landroid/media/CamcorderProfile;->videoBitRate:I

    return p0
.end method

.method public deleteCurrentVideo()V
    .locals 3

    const-string v0, "VideoMode"

    const-string v1, "deleteCurrentVideo"

    .line 1068
    invoke-static {v0, v1}, Lcom/oplus/camera/e;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 1071
    iget-object v0, p0, Lcom/oplus/camera/capmode/w;->mCurrentVideoFilename:Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 1072
    iget-object v1, p0, Lcom/oplus/camera/capmode/w;->mRecordHandler:Landroid/os/Handler;

    const/4 v2, 0x3

    invoke-virtual {v1, v2, v0}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    const/4 v0, 0x0

    .line 1073
    iput-object v0, p0, Lcom/oplus/camera/capmode/w;->mCurrentVideoFilename:Ljava/lang/String;

    .line 1076
    :cond_0
    iget-object p0, p0, Lcom/oplus/camera/capmode/w;->mCameraUIInterface:Lcom/oplus/camera/ui/CameraUIInterface;

    invoke-interface {p0}, Lcom/oplus/camera/ui/CameraUIInterface;->t()V

    return-void
.end method

.method protected deleteVideoFile(Ljava/lang/String;)V
    .locals 3

    .line 1538
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "deleteVideoFile, fileName: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "VideoMode"

    invoke-static {v1, v0}, Lcom/oplus/camera/e;->a(Ljava/lang/String;Ljava/lang/String;)V

    if-nez p1, :cond_0

    .line 1541
    iget-object p0, p0, Lcom/oplus/camera/capmode/w;->mRecordFileNameChange:Landroid/os/ConditionVariable;

    invoke-virtual {p0}, Landroid/os/ConditionVariable;->open()V

    return-void

    .line 1545
    :cond_0
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 1547
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    move-result v0

    if-nez v0, :cond_1

    .line 1548
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "deleteVideoFile, Could not delete "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Lcom/oplus/camera/e;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 1551
    :cond_1
    iget-object p1, p0, Lcom/oplus/camera/capmode/w;->mCurrentVideoUri:Landroid/net/Uri;

    if-eqz p1, :cond_2

    const/4 p1, 0x0

    .line 1553
    :try_start_0
    iget-object v0, p0, Lcom/oplus/camera/capmode/w;->mActivity:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-object v1, p0, Lcom/oplus/camera/capmode/w;->mCurrentVideoUri:Landroid/net/Uri;

    invoke-virtual {v0, v1, p1, p1}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    goto :goto_1

    :catch_0
    move-exception v0

    .line 1555
    :try_start_1
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1557
    :goto_0
    iput-object p1, p0, Lcom/oplus/camera/capmode/w;->mCurrentVideoUri:Landroid/net/Uri;

    goto :goto_2

    :goto_1
    iput-object p1, p0, Lcom/oplus/camera/capmode/w;->mCurrentVideoUri:Landroid/net/Uri;

    .line 1558
    throw v0

    .line 1560
    :cond_2
    :goto_2
    iget-object p0, p0, Lcom/oplus/camera/capmode/w;->mRecordFileNameChange:Landroid/os/ConditionVariable;

    invoke-virtual {p0}, Landroid/os/ConditionVariable;->open()V

    return-void
.end method

.method public doReturnToCaller(Z)V
    .locals 2

    .line 1051
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    if-eqz p1, :cond_0

    const/4 p1, -0x1

    .line 1056
    iget-object v1, p0, Lcom/oplus/camera/capmode/w;->mCurrentVideoUri:Landroid/net/Uri;

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    const/4 v1, 0x1

    .line 1057
    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    .line 1062
    :goto_0
    iget-object v1, p0, Lcom/oplus/camera/capmode/w;->mActivity:Landroid/app/Activity;

    invoke-virtual {v1, p1, v0}, Landroid/app/Activity;->setResult(ILandroid/content/Intent;)V

    .line 1063
    iget-object p0, p0, Lcom/oplus/camera/capmode/w;->mActivity:Landroid/app/Activity;

    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    return-void
.end method

.method protected enableVideoRecordingSound(Z)V
    .locals 2

    .line 3278
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "enableVideoRecordingSound, enable: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "VideoMode"

    invoke-static {v1, v0}, Lcom/oplus/camera/e;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 3280
    iput-boolean p1, p0, Lcom/oplus/camera/capmode/w;->mbRecordAudio:Z

    return-void
.end method

.method public forceStopVideoRecording(Z)V
    .locals 2

    .line 1018
    invoke-virtual {p0}, Lcom/oplus/camera/capmode/w;->isVideoRecordStarting()Z

    move-result v0

    if-eqz v0, :cond_1

    const-string v0, "VideoMode"

    const-string v1, "forceStopVideoRecording, mRecordSig.block"

    .line 1019
    invoke-static {v0, v1}, Lcom/oplus/camera/e;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 1021
    iget-object v1, p0, Lcom/oplus/camera/capmode/w;->mRecordSig:Landroid/os/ConditionVariable;

    invoke-virtual {v1}, Landroid/os/ConditionVariable;->close()V

    .line 1023
    invoke-virtual {p0}, Lcom/oplus/camera/capmode/w;->isVideoRecordStarted()Z

    move-result v1

    if-nez v1, :cond_0

    .line 1024
    iget-object v1, p0, Lcom/oplus/camera/capmode/w;->mRecordSig:Landroid/os/ConditionVariable;

    invoke-virtual {v1}, Landroid/os/ConditionVariable;->block()V

    :cond_0
    const-string v1, "forceStopVideoRecording, mRecordSig.block X"

    .line 1027
    invoke-static {v0, v1}, Lcom/oplus/camera/e;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 1030
    :cond_1
    invoke-virtual {p0}, Lcom/oplus/camera/capmode/w;->isVideoRecordStarted()Z

    move-result v0

    if-nez v0, :cond_2

    invoke-virtual {p0}, Lcom/oplus/camera/capmode/w;->isVideoRecordStarting()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 1031
    :cond_2
    invoke-virtual {p0, p1}, Lcom/oplus/camera/capmode/w;->onStopVideoRecording(Z)V

    :cond_3
    return-void
.end method

.method protected getAfterStoreRunnable()Lcom/oplus/camera/ui/control/e$c;
    .locals 1

    .line 451
    new-instance v0, Lcom/oplus/camera/capmode/w$3;

    invoke-direct {v0, p0}, Lcom/oplus/camera/capmode/w$3;-><init>(Lcom/oplus/camera/capmode/w;)V

    return-object v0
.end method

.method public getCameraFeature()Ljava/lang/String;
    .locals 2

    .line 627
    iget-boolean v0, p0, Lcom/oplus/camera/capmode/w;->mbDestroyed:Z

    if-eqz v0, :cond_0

    const/4 p0, 0x0

    return-object p0

    .line 631
    :cond_0
    invoke-virtual {p0}, Lcom/oplus/camera/capmode/w;->getVideoSizeType()Ljava/lang/String;

    move-result-object v0

    const-string v1, "video_size_4kuhd"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    const-string p0, "4kVideo"

    return-object p0

    .line 635
    :cond_1
    invoke-super {p0}, Lcom/oplus/camera/capmode/BaseMode;->getCameraFeature()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public getCanAddMenuOption(Ljava/lang/String;)Z
    .locals 1

    const-string v0, "pref_camera_timer_shutter_key"

    .line 853
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    const-string v0, "pref_camera_photo_ratio_key"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 857
    :cond_0
    invoke-super {p0, p1}, Lcom/oplus/camera/capmode/BaseMode;->getCanAddMenuOption(Ljava/lang/String;)Z

    move-result p0

    return p0

    :cond_1
    :goto_0
    const/4 p0, 0x0

    return p0
.end method

.method protected getCustomBeautyKeys()[Ljava/lang/String;
    .locals 0

    .line 4197
    sget-object p0, Lcom/oplus/camera/ui/CameraUIInterface;->KEY_VIDEO_CUSTOM_BEAUTY:[Ljava/lang/String;

    return-object p0
.end method

.method public getDefaultAFMode()I
    .locals 1

    .line 707
    invoke-virtual {p0}, Lcom/oplus/camera/capmode/w;->isVideoRecording()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/oplus/camera/capmode/w;->isTrackFocusOpen()Z

    move-result p0

    if-nez p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x3

    :goto_0
    return p0
.end method

.method public getDefaultVideoCodec()Ljava/lang/String;
    .locals 1

    .line 547
    iget-object p0, p0, Lcom/oplus/camera/capmode/w;->mActivity:Landroid/app/Activity;

    const v0, 0x7f100495

    invoke-virtual {p0, v0}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public getDefaultVideoSize()Ljava/lang/String;
    .locals 1

    .line 680
    iget-object p0, p0, Lcom/oplus/camera/capmode/w;->mActivity:Landroid/app/Activity;

    const v0, 0x7f1004ec

    invoke-virtual {p0, v0}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public getExpectedFrameRate()I
    .locals 0

    .line 4434
    invoke-virtual {p0}, Lcom/oplus/camera/capmode/w;->getVideoFps()I

    move-result p0

    return p0
.end method

.method protected getFaceBeautyModeIndex()I
    .locals 0

    const/4 p0, 0x1

    return p0
.end method

.method public getFilterEffectMenuPreferenceKey()Ljava/lang/String;
    .locals 1

    const-string v0, "pref_video_filter_menu"

    .line 771
    invoke-virtual {p0, v0}, Lcom/oplus/camera/capmode/w;->getSupportFunction(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string p0, "key_video_filter_index"

    return-object p0

    .line 775
    :cond_0
    invoke-super {p0}, Lcom/oplus/camera/capmode/BaseMode;->getFilterEffectMenuPreferenceKey()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method protected getFilterNameIdList(I)Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    const-string v0, "pref_video_filter_menu"

    .line 737
    invoke-virtual {p0, v0}, Lcom/oplus/camera/capmode/w;->getSupportFunction(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 738
    sget-object p0, Lcom/oplus/camera/ui/preview/a/j;->j:Lcom/oplus/camera/ui/preview/a/i;

    const/4 v0, 0x1

    if-ne v0, p1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    invoke-virtual {p0, v0}, Lcom/oplus/camera/ui/preview/a/i;->b(Z)Ljava/util/List;

    move-result-object p0

    return-object p0

    .line 741
    :cond_1
    invoke-super {p0, p1}, Lcom/oplus/camera/capmode/BaseMode;->getFilterNameIdList(I)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method protected getFilterTypeList(I)Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    const-string v0, "pref_video_filter_menu"

    .line 746
    invoke-virtual {p0, v0}, Lcom/oplus/camera/capmode/w;->getSupportFunction(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 747
    sget-object p0, Lcom/oplus/camera/ui/preview/a/j;->j:Lcom/oplus/camera/ui/preview/a/i;

    const/4 v0, 0x1

    if-ne v0, p1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    invoke-virtual {p0, v0}, Lcom/oplus/camera/ui/preview/a/i;->a(Z)Ljava/util/List;

    move-result-object p0

    return-object p0

    .line 750
    :cond_1
    invoke-super {p0, p1}, Lcom/oplus/camera/capmode/BaseMode;->getFilterTypeList(I)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method protected getGuideLineKey()Ljava/lang/String;
    .locals 0

    const-string p0, "pref_camera_line_video"

    return-object p0
.end method

.method protected getNeedReduceBitRate()Z
    .locals 2

    .line 2754
    invoke-virtual {p0}, Lcom/oplus/camera/capmode/w;->getVideoFps()I

    move-result v0

    const/16 v1, 0x78

    if-eq v1, v0, :cond_0

    iget-object v0, p0, Lcom/oplus/camera/capmode/w;->mVideoSizeType:Ljava/lang/String;

    const-string v1, "video_size_1080p"

    .line 2755
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/oplus/camera/capmode/w;->mVideoSizeType:Ljava/lang/String;

    const-string v1, "video_size_720p"

    .line 2756
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-static {}, Lcom/oplus/camera/util/Util;->C()Z

    move-result v0

    if-nez v0, :cond_1

    .line 2757
    :cond_0
    invoke-virtual {p0}, Lcom/oplus/camera/capmode/w;->getVideoCodec()Ljava/lang/String;

    move-result-object p0

    const-string v0, "H265"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_2

    :cond_1
    const/4 p0, 0x1

    goto :goto_0

    :cond_2
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public getPictureSize(Lcom/oplus/camera/e/h;)Landroid/util/Size;
    .locals 1

    .line 984
    invoke-virtual {p0}, Lcom/oplus/camera/capmode/w;->getProfile()Landroid/media/CamcorderProfile;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 989
    new-instance p0, Landroid/util/Size;

    iget p1, v0, Landroid/media/CamcorderProfile;->videoFrameWidth:I

    iget v0, v0, Landroid/media/CamcorderProfile;->videoFrameHeight:I

    invoke-direct {p0, p1, v0}, Landroid/util/Size;-><init>(II)V

    return-object p0

    .line 994
    :cond_0
    invoke-super {p0, p1}, Lcom/oplus/camera/capmode/BaseMode;->getPictureSize(Lcom/oplus/camera/e/h;)Landroid/util/Size;

    move-result-object p0

    return-object p0
.end method

.method public getProfile()Landroid/media/CamcorderProfile;
    .locals 0

    .line 1423
    iget-object p0, p0, Lcom/oplus/camera/capmode/w;->mProfile:Landroid/media/CamcorderProfile;

    return-object p0
.end method

.method protected getRealCaptureRate()Ljava/lang/Double;
    .locals 0

    const/4 p0, 0x0

    return-object p0
.end method

.method public getRealVideoTimeRatio()Ljava/lang/Float;
    .locals 0

    const/4 p0, 0x0

    return-object p0
.end method

.method protected getRecordingMaxDuration(Ljava/lang/String;Ljava/lang/String;)I
    .locals 0

    const/4 p0, -0x1

    return p0
.end method

.method protected getRecordingMinTime(Z)I
    .locals 0

    const/16 p0, 0x3e8

    return p0
.end method

.method public getResolutionBySizeType(Ljava/lang/String;)I
    .locals 0

    const-string p0, "video_size_4kuhd"

    .line 3797
    invoke-virtual {p0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_0

    const/16 p0, 0x870

    goto :goto_0

    :cond_0
    const-string p0, "video_size_1080p"

    .line 3799
    invoke-virtual {p0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_1

    const/16 p0, 0x438

    goto :goto_0

    :cond_1
    const-string p0, "video_size_720p"

    .line 3801
    invoke-virtual {p0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_2

    const/16 p0, 0x2d0

    goto :goto_0

    :cond_2
    const-string p0, "video_size_480p"

    .line 3803
    invoke-virtual {p0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_3

    const/16 p0, 0x1e0

    goto :goto_0

    :cond_3
    const-string p0, "video_size_cif"

    .line 3805
    invoke-virtual {p0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_4

    const/16 p0, 0x120

    goto :goto_0

    :cond_4
    const-string p0, "video_size_qcif"

    .line 3807
    invoke-virtual {p0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_5

    const/16 p0, 0x90

    goto :goto_0

    :cond_5
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public getResumePauseRecordingTotalTime()J
    .locals 2

    .line 3442
    iget-wide v0, p0, Lcom/oplus/camera/capmode/w;->mResumePauseRecordingTotalTime:J

    return-wide v0
.end method

.method public getShutterButtonInfo()Lcom/oplus/camera/ui/control/b;
    .locals 2

    .line 652
    invoke-super {p0}, Lcom/oplus/camera/capmode/BaseMode;->getShutterButtonInfo()Lcom/oplus/camera/ui/control/b;

    move-result-object v0

    const-string v1, "button_shape_ring_none"

    .line 653
    invoke-virtual {v0, v1}, Lcom/oplus/camera/ui/control/b;->c(Ljava/lang/String;)V

    .line 655
    invoke-virtual {p0}, Lcom/oplus/camera/capmode/w;->isVideoRecording()Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x2

    .line 656
    invoke-virtual {v0, p0}, Lcom/oplus/camera/ui/control/b;->a(I)V

    const-string p0, "button_color_inside_none"

    .line 657
    invoke-virtual {v0, p0}, Lcom/oplus/camera/ui/control/b;->a(Ljava/lang/String;)V

    const/4 p0, 0x1

    .line 658
    invoke-virtual {v0, p0}, Lcom/oplus/camera/ui/control/b;->b(I)V

    goto :goto_0

    :cond_0
    const-string p0, "button_color_inside_red"

    .line 660
    invoke-virtual {v0, p0}, Lcom/oplus/camera/ui/control/b;->a(Ljava/lang/String;)V

    :goto_0
    return-object v0
.end method

.method protected getSizeFromConfig(Ljava/lang/String;Ljava/lang/String;Lcom/oplus/camera/capmode/BaseMode$a;)Landroid/util/Size;
    .locals 12

    .line 2072
    invoke-virtual {p0}, Lcom/oplus/camera/capmode/w;->isRearSuperEISOpen()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/oplus/camera/capmode/w;->isVideoSuperEisWideOpen()Z

    move-result v0

    if-nez v0, :cond_0

    .line 2073
    invoke-virtual {p0}, Lcom/oplus/camera/capmode/w;->isHyperLapseOpen()Z

    move-result v0

    if-nez v0, :cond_0

    .line 2074
    invoke-virtual {p0}, Lcom/oplus/camera/capmode/w;->getProfile()Landroid/media/CamcorderProfile;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 2075
    invoke-virtual {p0}, Lcom/oplus/camera/capmode/w;->getVideoSizeType()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/oplus/camera/capmode/w;->getVideoPreviewSize(Ljava/lang/String;)Landroid/util/Size;

    move-result-object v0

    .line 2076
    new-instance v2, Landroid/util/Size;

    invoke-virtual {p0}, Lcom/oplus/camera/capmode/w;->getProfile()Landroid/media/CamcorderProfile;

    move-result-object v3

    iget v3, v3, Landroid/media/CamcorderProfile;->videoFrameWidth:I

    invoke-virtual {p0}, Lcom/oplus/camera/capmode/w;->getProfile()Landroid/media/CamcorderProfile;

    move-result-object v4

    iget v4, v4, Landroid/media/CamcorderProfile;->videoFrameHeight:I

    invoke-direct {v2, v3, v4}, Landroid/util/Size;-><init>(II)V

    move-object v7, v0

    move-object v8, v2

    goto :goto_0

    :cond_0
    move-object v7, v1

    move-object v8, v7

    :goto_0
    const-string v0, "commonVideoSatHal"

    .line 2079
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-nez v0, :cond_3

    const-string v0, "4kVideo"

    .line 2080
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_3

    const-string v0, "liveHDR"

    .line 2081
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_3

    const-string v0, "ultraNight"

    .line 2082
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_3

    const-string v0, "aiEnhancement"

    .line 2083
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_3

    const-string v0, "commonVideo"

    .line 2084
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget v0, p0, Lcom/oplus/camera/capmode/w;->mCameraId:I

    if-eq v3, v0, :cond_3

    :cond_1
    const-string v0, "fastVideo"

    .line 2086
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    iget v0, p0, Lcom/oplus/camera/capmode/w;->mCameraId:I

    if-ne v3, v0, :cond_2

    goto :goto_1

    :cond_2
    move v10, v2

    goto :goto_2

    :cond_3
    :goto_1
    move v10, v3

    :goto_2
    const-string v0, "slowVideo"

    .line 2088
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    iget v0, p0, Lcom/oplus/camera/capmode/w;->mCameraId:I

    if-nez v0, :cond_4

    move v11, v3

    goto :goto_3

    :cond_4
    move v11, v2

    :goto_3
    if-eqz p1, :cond_5

    .line 2092
    iget v6, p0, Lcom/oplus/camera/capmode/w;->mCameraId:I

    .line 2093
    invoke-virtual {p0}, Lcom/oplus/camera/capmode/w;->needApsToProcessVideoWatermark()Z

    move-result v9

    move-object v5, p1

    .line 2092
    invoke-static/range {v5 .. v11}, Lcom/oplus/camera/aps/util/AlgoSwitchConfig;->getPreviewConfig(Ljava/lang/String;ILandroid/util/Size;Landroid/util/Size;ZZZ)Lcom/oplus/camera/aps/util/AlgoSwitchConfig$PreviewConfig;

    move-result-object p1

    goto :goto_4

    :cond_5
    move-object p1, v1

    :goto_4
    if-eqz p1, :cond_8

    .line 2096
    iget-object v0, p1, Lcom/oplus/camera/aps/util/AlgoSwitchConfig$PreviewConfig;->mComponentMap:Landroid/util/ArrayMap;

    const-string v2, "video"

    invoke-virtual {v0, v2}, Landroid/util/ArrayMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_8

    .line 2098
    iget-object v0, p1, Lcom/oplus/camera/aps/util/AlgoSwitchConfig$PreviewConfig;->mComponentMap:Landroid/util/ArrayMap;

    invoke-virtual {v0, v2}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/oplus/camera/aps/util/AlgoSwitchConfig$PreviewConfig$Component;

    .line 2099
    iput-object p1, p0, Lcom/oplus/camera/capmode/w;->mPreviewConfig:Lcom/oplus/camera/aps/util/AlgoSwitchConfig$PreviewConfig;

    .line 2101
    iget-boolean v2, v0, Lcom/oplus/camera/aps/util/AlgoSwitchConfig$PreviewConfig$Component;->mbEnable:Z

    if-eqz v2, :cond_8

    const-string v2, "type_video_frame"

    .line 2102
    invoke-virtual {v2, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_7

    .line 2103
    sget-object p0, Lcom/oplus/camera/capmode/BaseMode$a;->INPUT:Lcom/oplus/camera/capmode/BaseMode$a;

    if-ne p3, p0, :cond_6

    .line 2104
    new-instance p0, Landroid/util/Size;

    iget p1, v0, Lcom/oplus/camera/aps/util/AlgoSwitchConfig$PreviewConfig$Component;->mMasterInputWidth:I

    iget p2, v0, Lcom/oplus/camera/aps/util/AlgoSwitchConfig$PreviewConfig$Component;->mMasterInputHeight:I

    invoke-direct {p0, p1, p2}, Landroid/util/Size;-><init>(II)V

    goto :goto_5

    .line 2105
    :cond_6
    new-instance p0, Landroid/util/Size;

    iget p1, v0, Lcom/oplus/camera/aps/util/AlgoSwitchConfig$PreviewConfig$Component;->mOutputWidth:I

    iget p2, v0, Lcom/oplus/camera/aps/util/AlgoSwitchConfig$PreviewConfig$Component;->mOutputHeight:I

    invoke-direct {p0, p1, p2}, Landroid/util/Size;-><init>(II)V

    :goto_5
    return-object p0

    :cond_7
    const-string p3, "type_still_capture_yuv_main"

    .line 2106
    invoke-virtual {p3, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p3

    if-eqz p3, :cond_8

    .line 2107
    new-instance p0, Landroid/util/Size;

    iget p1, v0, Lcom/oplus/camera/aps/util/AlgoSwitchConfig$PreviewConfig$Component;->mOutputWidth:I

    iget p2, v0, Lcom/oplus/camera/aps/util/AlgoSwitchConfig$PreviewConfig$Component;->mOutputHeight:I

    invoke-direct {p0, p1, p2}, Landroid/util/Size;-><init>(II)V

    return-object p0

    :cond_8
    if-eqz p1, :cond_9

    .line 2112
    iget-object p3, p1, Lcom/oplus/camera/aps/util/AlgoSwitchConfig$PreviewConfig;->mComponentMap:Landroid/util/ArrayMap;

    const-string v0, "preview"

    invoke-virtual {p3, v0}, Landroid/util/ArrayMap;->containsKey(Ljava/lang/Object;)Z

    move-result p3

    if-eqz p3, :cond_9

    .line 2114
    iget-object p3, p1, Lcom/oplus/camera/aps/util/AlgoSwitchConfig$PreviewConfig;->mComponentMap:Landroid/util/ArrayMap;

    invoke-virtual {p3, v0}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Lcom/oplus/camera/aps/util/AlgoSwitchConfig$PreviewConfig$Component;

    .line 2115
    iput-object p1, p0, Lcom/oplus/camera/capmode/w;->mPreviewConfig:Lcom/oplus/camera/aps/util/AlgoSwitchConfig$PreviewConfig;

    .line 2117
    iget-boolean v0, p3, Lcom/oplus/camera/aps/util/AlgoSwitchConfig$PreviewConfig$Component;->mbEnable:Z

    if-eqz v0, :cond_9

    const-string v0, "type_main_preview_frame"

    .line 2118
    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_9

    .line 2119
    new-instance p0, Landroid/util/Size;

    iget p1, p3, Lcom/oplus/camera/aps/util/AlgoSwitchConfig$PreviewConfig$Component;->mMasterInputWidth:I

    iget p2, p3, Lcom/oplus/camera/aps/util/AlgoSwitchConfig$PreviewConfig$Component;->mMasterInputHeight:I

    invoke-direct {p0, p1, p2}, Landroid/util/Size;-><init>(II)V

    return-object p0

    .line 2124
    :cond_9
    iput-object p1, p0, Lcom/oplus/camera/capmode/w;->mPreviewConfig:Lcom/oplus/camera/aps/util/AlgoSwitchConfig$PreviewConfig;

    return-object v1
.end method

.method protected getSlowVideoFps()I
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public getSupportFunction(Ljava/lang/String;)Z
    .locals 5

    .line 780
    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    move-result v0

    const-string v1, "pref_video_filter_menu"

    const/4 v2, 0x0

    const/4 v3, 0x1

    sparse-switch v0, :sswitch_data_0

    goto/16 :goto_0

    :sswitch_0
    const-string v0, "pref_filter_menu"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/16 v0, 0x9

    goto/16 :goto_1

    :sswitch_1
    const-string v0, "pref_video_size_key"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x3

    goto/16 :goto_1

    :sswitch_2
    const-string v0, "pref_video_sound_key"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x5

    goto/16 :goto_1

    :sswitch_3
    const-string v0, "key_support_video_recorder"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/16 v0, 0x8

    goto/16 :goto_1

    :sswitch_4
    const-string v0, "pref_camera_line_video"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    move v0, v3

    goto/16 :goto_1

    :sswitch_5
    const-string v0, "key_temperature_control_stop_video_recording"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/16 v0, 0x12

    goto/16 :goto_1

    :sswitch_6
    const-string v0, "func_filter_vignette"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/16 v0, 0xe

    goto/16 :goto_1

    :sswitch_7
    const-string v0, "pref_support_recording_capture"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x2

    goto/16 :goto_1

    :sswitch_8
    const-string v0, "support_video_count_down"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/16 v0, 0xa

    goto/16 :goto_1

    :sswitch_9
    const-string v0, "pref_video_ratio_key"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x4

    goto :goto_1

    :sswitch_a
    const-string v0, "key_support_zsl"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x7

    goto :goto_1

    :sswitch_b
    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/16 v0, 0xd

    goto :goto_1

    :sswitch_c
    const-string v0, "key_support_fovc"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/16 v0, 0xc

    goto :goto_1

    :sswitch_d
    const-string v0, "pref_watermark_function_key"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/16 v0, 0xf

    goto :goto_1

    :sswitch_e
    const-string v0, "pref_video_sound_effect_key"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x6

    goto :goto_1

    :sswitch_f
    const-string v0, "pref_manual_exposure_key"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/16 v0, 0x11

    goto :goto_1

    :sswitch_10
    const-string v0, "pref_assist_gradienter"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    move v0, v2

    goto :goto_1

    :sswitch_11
    const-string v0, "pref_continuous_focus_key"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/16 v0, 0xb

    goto :goto_1

    :sswitch_12
    const-string v0, "key_support_video_thumbnail_simultaneous"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/16 v0, 0x10

    goto :goto_1

    :cond_0
    :goto_0
    const/4 v0, -0x1

    :goto_1
    const-string v4, "video_size_4kuhd"

    packed-switch v0, :pswitch_data_0

    goto/16 :goto_2

    :pswitch_0
    const-string p1, "com.oplus.temperature.control.stop_video_recording"

    .line 833
    invoke-static {p1}, Lcom/oplus/camera/aps/config/CameraConfig;->getConfigBooleanValue(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_5

    .line 834
    invoke-virtual {p0}, Lcom/oplus/camera/capmode/w;->isSuperEISOpen()Z

    move-result p1

    if-eqz p1, :cond_1

    iget-boolean p1, p0, Lcom/oplus/camera/capmode/w;->mbFrontCamera:Z

    if-eqz p1, :cond_4

    .line 835
    :cond_1
    invoke-virtual {p0}, Lcom/oplus/camera/capmode/w;->isBlurOpen()Z

    move-result p1

    if-nez p1, :cond_4

    .line 836
    invoke-virtual {p0}, Lcom/oplus/camera/capmode/w;->isAiEnhancementVideoOpen()Z

    move-result p1

    if-nez p1, :cond_4

    iget-object p1, p0, Lcom/oplus/camera/capmode/w;->mVideoSizeType:Ljava/lang/String;

    .line 837
    invoke-virtual {v4, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    const/16 v0, 0x3c

    if-eqz p1, :cond_2

    .line 838
    invoke-virtual {p0}, Lcom/oplus/camera/capmode/w;->getVideoFps()I

    move-result p1

    if-eq v0, p1, :cond_4

    :cond_2
    iget-object p1, p0, Lcom/oplus/camera/capmode/w;->mVideoSizeType:Ljava/lang/String;

    .line 839
    invoke-virtual {v4, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_3

    const/16 p1, 0x78

    .line 840
    invoke-virtual {p0}, Lcom/oplus/camera/capmode/w;->getVideoFps()I

    move-result v1

    if-eq p1, v1, :cond_4

    :cond_3
    iget-object p1, p0, Lcom/oplus/camera/capmode/w;->mVideoSizeType:Ljava/lang/String;

    const-string v1, "video_size_1080p"

    .line 841
    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_5

    .line 842
    invoke-virtual {p0}, Lcom/oplus/camera/capmode/w;->getVideoFps()I

    move-result p0

    if-ne v0, p0, :cond_5

    :cond_4
    move v2, v3

    :cond_5
    return v2

    .line 826
    :pswitch_1
    invoke-virtual {p0}, Lcom/oplus/camera/capmode/w;->isTiltShiftOpen()Z

    move-result v0

    if-eqz v0, :cond_8

    return v2

    .line 817
    :pswitch_2
    invoke-virtual {p0}, Lcom/oplus/camera/capmode/w;->getVideoSizeType()Ljava/lang/String;

    move-result-object p0

    .line 819
    invoke-virtual {v4, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_6

    const-string p0, "com.oplus.feature.video.4k.thumbnail.simultaneous.support"

    .line 820
    invoke-static {p0}, Lcom/oplus/camera/aps/config/CameraConfig;->getConfigBooleanValue(Ljava/lang/String;)Z

    move-result p0

    return p0

    :cond_6
    return v3

    :pswitch_3
    const-string p1, "com.oplus.video.watermark.support"

    .line 813
    invoke-static {p1}, Lcom/oplus/camera/aps/config/CameraConfig;->getConfigBooleanValue(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_7

    .line 814
    invoke-virtual {p0}, Lcom/oplus/camera/capmode/w;->getCameraMode()Ljava/lang/String;

    move-result-object p1

    iget p0, p0, Lcom/oplus/camera/capmode/w;->mCameraId:I

    const-string v0, "aps_algo_watermark"

    invoke-static {p1, p0, v0}, Lcom/oplus/camera/aps/util/AlgoSwitchConfig;->getSupportCaptureAlgo(Ljava/lang/String;ILjava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_7

    move v2, v3

    :cond_7
    return v2

    .line 810
    :pswitch_4
    invoke-virtual {p0, v1}, Lcom/oplus/camera/capmode/w;->getSupportFunction(Ljava/lang/String;)Z

    move-result p0

    return p0

    :pswitch_5
    const-string p1, "pref_filter_process_key"

    .line 807
    invoke-virtual {p0, p1}, Lcom/oplus/camera/capmode/w;->getSupportFunction(Ljava/lang/String;)Z

    move-result p0

    return p0

    .line 804
    :pswitch_6
    invoke-static {}, Lcom/oplus/camera/util/Util;->C()Z

    move-result p0

    return p0

    .line 797
    :pswitch_7
    invoke-virtual {p0}, Lcom/oplus/camera/capmode/w;->isVideoRecording()Z

    move-result v0

    if-eqz v0, :cond_8

    .line 798
    invoke-virtual {p0}, Lcom/oplus/camera/capmode/w;->isVideoRecordStarting()Z

    move-result p0

    xor-int/2addr p0, v3

    return p0

    :pswitch_8
    return v2

    :pswitch_9
    return v3

    .line 848
    :cond_8
    :goto_2
    invoke-super {p0, p1}, Lcom/oplus/camera/capmode/BaseMode;->getSupportFunction(Ljava/lang/String;)Z

    move-result p0

    return p0

    :sswitch_data_0
    .sparse-switch
        -0x7b2ad87e -> :sswitch_12
        -0x6ce3461c -> :sswitch_11
        -0x6aa537a9 -> :sswitch_10
        -0x64edfd1c -> :sswitch_f
        -0x61b0133f -> :sswitch_e
        -0x5efa20f1 -> :sswitch_d
        -0x5c18d27a -> :sswitch_c
        -0x487d971a -> :sswitch_b
        -0x2c4291fd -> :sswitch_a
        -0x1e969cb5 -> :sswitch_9
        0x2b4ae86 -> :sswitch_8
        0x739636c -> :sswitch_7
        0xa9326a6 -> :sswitch_6
        0x156ee35d -> :sswitch_5
        0x315862ae -> :sswitch_4
        0x39f89c52 -> :sswitch_3
        0x60d1ba4f -> :sswitch_2
        0x62669e01 -> :sswitch_1
        0x7e1951aa -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_9
        :pswitch_9
        :pswitch_9
        :pswitch_9
        :pswitch_9
        :pswitch_9
        :pswitch_9
        :pswitch_8
        :pswitch_8
        :pswitch_8
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public getSupportGestureCapture()Z
    .locals 0

    .line 1414
    invoke-virtual {p0}, Lcom/oplus/camera/capmode/w;->isVideoRecordStopped()Z

    move-result p0

    return p0
.end method

.method public getSupportMenu(Ljava/lang/String;)Z
    .locals 1

    .line 713
    invoke-static {p1}, Lcom/oplus/camera/entry/b;->d(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    const-string v0, "pref_camera_videoflashmode_key"

    .line 715
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_4

    const-string v0, "pref_video_super_eis_key"

    .line 716
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const-string v0, "key_ultra_night_video"

    .line 720
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    const-string p1, "func_ultra_night_video"

    .line 721
    invoke-virtual {p0, p1}, Lcom/oplus/camera/capmode/w;->getSupportFunction(Ljava/lang/String;)Z

    move-result p0

    return p0

    :cond_1
    const-string v0, "key_ai_enhancement_video"

    .line 724
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    const-string p1, "func_enhancement_video"

    .line 725
    invoke-virtual {p0, p1}, Lcom/oplus/camera/capmode/w;->getSupportFunction(Ljava/lang/String;)Z

    move-result p0

    return p0

    :cond_2
    const-string v0, "key_video_hdr"

    .line 728
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    const-string p1, "func_hdr"

    .line 729
    invoke-virtual {p0, p1}, Lcom/oplus/camera/capmode/w;->getSupportFunction(Ljava/lang/String;)Z

    move-result p0

    return p0

    .line 732
    :cond_3
    invoke-super {p0, p1}, Lcom/oplus/camera/capmode/BaseMode;->getSupportMenu(Ljava/lang/String;)Z

    move-result p0

    return p0

    .line 717
    :cond_4
    :goto_0
    invoke-virtual {p0, p1}, Lcom/oplus/camera/capmode/w;->getSupportFunction(Ljava/lang/String;)Z

    move-result p0

    return p0
.end method

.method public getSupportQuickJpeg(Lcom/oplus/camera/e/c;)Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public getSupportSubMenu(Ljava/lang/String;)Z
    .locals 1

    const-string v0, "pref_setting_key"

    .line 756
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 757
    invoke-virtual {p0}, Lcom/oplus/camera/capmode/w;->isSubMenuEnable()Z

    move-result p0

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public getSurfaceSize(Ljava/lang/String;Lcom/oplus/camera/e/h;)Landroid/util/Size;
    .locals 2

    .line 978
    invoke-virtual {p0}, Lcom/oplus/camera/capmode/w;->getCameraFeature()Ljava/lang/String;

    move-result-object v0

    sget-object v1, Lcom/oplus/camera/capmode/BaseMode$a;->INPUT:Lcom/oplus/camera/capmode/BaseMode$a;

    invoke-virtual {p0, v0, p1, v1}, Lcom/oplus/camera/capmode/w;->getSizeFromConfig(Ljava/lang/String;Ljava/lang/String;Lcom/oplus/camera/capmode/BaseMode$a;)Landroid/util/Size;

    move-result-object p1

    if-eqz p1, :cond_0

    goto :goto_0

    .line 979
    :cond_0
    invoke-virtual {p0, p2}, Lcom/oplus/camera/capmode/w;->getPictureSize(Lcom/oplus/camera/e/h;)Landroid/util/Size;

    move-result-object p1

    :goto_0
    return-object p1
.end method

.method protected getTimeLapseSpeed()Ljava/lang/Double;
    .locals 0

    const/4 p0, 0x0

    return-object p0
.end method

.method public getVideoCodec()Ljava/lang/String;
    .locals 2

    .line 538
    iget-object v0, p0, Lcom/oplus/camera/capmode/w;->mPreferences:Landroid/content/SharedPreferences;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/oplus/camera/capmode/w;->mActivity:Landroid/app/Activity;

    if-nez v0, :cond_0

    goto :goto_0

    .line 542
    :cond_0
    iget-object v0, p0, Lcom/oplus/camera/capmode/w;->mPreferences:Landroid/content/SharedPreferences;

    iget-object p0, p0, Lcom/oplus/camera/capmode/w;->mActivity:Landroid/app/Activity;

    const v1, 0x7f100495

    .line 543
    invoke-virtual {p0, v1}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object p0

    const-string v1, "pref_video_codec_key"

    .line 542
    invoke-interface {v0, v1, p0}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_1
    :goto_0
    const-string p0, "H264"

    return-object p0
.end method

.method protected getVideoFileExifTag()Ljava/lang/String;
    .locals 1

    .line 3106
    invoke-virtual {p0}, Lcom/oplus/camera/capmode/w;->getCameraMode()Ljava/lang/String;

    move-result-object v0

    iget p0, p0, Lcom/oplus/camera/capmode/w;->mCameraId:I

    invoke-static {v0, p0}, Lcom/oplus/camera/g/b;->b(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method protected getVideoFileName()Ljava/lang/String;
    .locals 0

    .line 693
    iget-object p0, p0, Lcom/oplus/camera/capmode/w;->mCurrentVideoFilename:Ljava/lang/String;

    return-object p0
.end method

.method public getVideoFps()I
    .locals 2

    .line 526
    iget-object v0, p0, Lcom/oplus/camera/capmode/w;->mPreferences:Landroid/content/SharedPreferences;

    const-string v1, "30"

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/oplus/camera/capmode/w;->mbFrontCamera:Z

    if-nez v0, :cond_0

    .line 527
    iget-object p0, p0, Lcom/oplus/camera/capmode/w;->mPreferences:Landroid/content/SharedPreferences;

    const-string v0, "pref_video_fps_key"

    invoke-interface {p0, v0, v1}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result p0

    return p0

    .line 530
    :cond_0
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result p0

    return p0
.end method

.method protected getVideoFrameRate()I
    .locals 0

    const/16 p0, 0x1e

    return p0
.end method

.method protected getVideoPreviewSize(Ljava/lang/String;)Landroid/util/Size;
    .locals 4

    const-string p0, "video_size_4kuhd"

    .line 1431
    invoke-virtual {p0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    const/16 v0, 0x2d0

    const/16 v1, 0x438

    const/16 v2, 0x780

    if-eqz p0, :cond_1

    :cond_0
    :goto_0
    move p0, v1

    move v0, v2

    goto :goto_1

    :cond_1
    const-string p0, "video_size_1080p"

    .line 1434
    invoke-virtual {p0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_2

    goto :goto_0

    :cond_2
    const-string p0, "video_size_720p"

    .line 1437
    invoke-virtual {p0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_3

    const/16 p0, 0x500

    move v3, v0

    move v0, p0

    move p0, v3

    goto :goto_1

    :cond_3
    const-string p0, "video_size_480p"

    .line 1440
    invoke-virtual {p0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_4

    const/16 p0, 0x1e0

    goto :goto_1

    :cond_4
    const-string p0, "video_size_cif"

    .line 1445
    invoke-virtual {p0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_5

    const/16 v0, 0x160

    const/16 p0, 0x120

    goto :goto_1

    :cond_5
    const-string p0, "video_size_qcif"

    .line 1448
    invoke-virtual {p0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_0

    const/16 v0, 0xb0

    const/16 p0, 0x90

    .line 1456
    :goto_1
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getVideoPreviewSize, videoSizeType: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, ", width: "

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, ", height: "

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v1, "VideoMode"

    invoke-static {v1, p1}, Lcom/oplus/camera/e;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 1459
    new-instance p1, Landroid/util/Size;

    invoke-direct {p1, v0, p0}, Landroid/util/Size;-><init>(II)V

    return-object p1
.end method

.method protected getVideoSavePath()Ljava/lang/String;
    .locals 2

    .line 2730
    sget-object p0, Lcom/oplus/camera/Storage;->u:Ljava/lang/String;

    const-string v0, "off"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    const/16 v0, 0x2f

    if-eqz p0, :cond_0

    .line 2733
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Lcom/oplus/camera/Storage;->q:Ljava/lang/String;

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    goto :goto_0

    .line 2735
    :cond_0
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Lcom/oplus/camera/Storage;->l:Ljava/lang/String;

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    :goto_0
    return-object p0
.end method

.method public getVideoSize()Landroid/util/Size;
    .locals 4

    .line 3774
    iget-object v0, p0, Lcom/oplus/camera/capmode/w;->mVideoSizeType:Ljava/lang/String;

    const-string v1, "video_size_1080p"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const/16 v1, 0x2d0

    if-eqz v0, :cond_0

    const/16 v1, 0x780

    const/16 p0, 0x438

    goto :goto_0

    .line 3777
    :cond_0
    iget-object v0, p0, Lcom/oplus/camera/capmode/w;->mVideoSizeType:Ljava/lang/String;

    const-string v2, "video_size_720p"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    const/16 p0, 0x500

    move v3, v1

    move v1, p0

    move p0, v3

    goto :goto_0

    .line 3780
    :cond_1
    iget-object v0, p0, Lcom/oplus/camera/capmode/w;->mVideoSizeType:Ljava/lang/String;

    const-string v2, "video_size_cif"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    const/16 v1, 0x160

    const/16 p0, 0x120

    goto :goto_0

    .line 3783
    :cond_2
    iget-object p0, p0, Lcom/oplus/camera/capmode/w;->mVideoSizeType:Ljava/lang/String;

    const-string v0, "video_size_qcif"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_3

    const/16 v1, 0xb0

    const/16 p0, 0x90

    goto :goto_0

    :cond_3
    const/16 p0, 0x1e0

    .line 3791
    :goto_0
    new-instance v0, Landroid/util/Size;

    invoke-direct {v0, v1, p0}, Landroid/util/Size;-><init>(II)V

    return-object v0
.end method

.method public getVideoSizeType()Ljava/lang/String;
    .locals 4

    .line 3201
    iget-object v0, p0, Lcom/oplus/camera/capmode/w;->mCameraInterface:Lcom/oplus/camera/capmode/a;

    const-string v1, "VideoMode"

    if-eqz v0, :cond_5

    iget-object v0, p0, Lcom/oplus/camera/capmode/w;->mActivity:Landroid/app/Activity;

    if-eqz v0, :cond_5

    iget-object v0, p0, Lcom/oplus/camera/capmode/w;->mCameraInterface:Lcom/oplus/camera/capmode/a;

    invoke-interface {v0}, Lcom/oplus/camera/capmode/a;->m()Z

    move-result v0

    if-eqz v0, :cond_5

    .line 3205
    iget-object p0, p0, Lcom/oplus/camera/capmode/w;->mActivity:Landroid/app/Activity;

    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object p0

    invoke-virtual {p0}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object p0

    const-string v0, "video_size_480p"

    if-eqz p0, :cond_3

    const/4 v2, 0x4

    const-string v3, "android.intent.extra.videoQuality"

    .line 3208
    invoke-virtual {p0, v3, v2}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result p0

    const/4 v2, 0x6

    if-eq p0, v2, :cond_2

    const/4 v2, 0x1

    if-ne p0, v2, :cond_0

    const-string v3, "com.oplus.quality.high.1080p.support"

    .line 3212
    invoke-static {v3}, Lcom/oplus/camera/aps/config/CameraConfig;->getConfigBooleanValue(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_0

    goto :goto_0

    :cond_0
    const/4 v3, 0x5

    if-eq p0, v3, :cond_1

    if-ne p0, v2, :cond_3

    :cond_1
    const-string p0, "video_size_720p"

    goto :goto_1

    :cond_2
    :goto_0
    const-string p0, "video_size_1080p"

    goto :goto_1

    :cond_3
    move-object p0, v0

    .line 3221
    :goto_1
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_4

    return-object p0

    .line 3224
    :cond_4
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getVideoSizeType, sizeType: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v1, p0}, Lcom/oplus/camera/e;->e(Ljava/lang/String;Ljava/lang/String;)V

    return-object v0

    .line 3230
    :cond_5
    iget-object v0, p0, Lcom/oplus/camera/capmode/w;->mPreferences:Landroid/content/SharedPreferences;

    if-eqz v0, :cond_6

    .line 3231
    iget-object v0, p0, Lcom/oplus/camera/capmode/w;->mPreferences:Landroid/content/SharedPreferences;

    invoke-virtual {p0}, Lcom/oplus/camera/capmode/w;->getDefaultVideoSize()Ljava/lang/String;

    move-result-object p0

    const-string v1, "pref_video_size_key"

    invoke-interface {v0, v1, p0}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_6
    const-string v0, "getVideoSizeType, mPreferences is null!"

    .line 3233
    invoke-static {v1, v0}, Lcom/oplus/camera/e;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 3235
    invoke-virtual {p0}, Lcom/oplus/camera/capmode/w;->getDefaultVideoSize()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method protected getVideoSurface()Landroid/view/Surface;
    .locals 1

    .line 4309
    iget-object v0, p0, Lcom/oplus/camera/capmode/w;->mVideoSurfaceLock:Ljava/lang/Object;

    monitor-enter v0

    .line 4310
    :try_start_0
    iget-object p0, p0, Lcom/oplus/camera/capmode/w;->mVideoSurface:Landroid/view/Surface;

    monitor-exit v0

    return-object p0

    :catchall_0
    move-exception p0

    .line 4311
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public getVideoThumbnail(I)Landroid/graphics/Bitmap;
    .locals 1

    .line 1467
    iget-object v0, p0, Lcom/oplus/camera/capmode/w;->mVideoFileDescriptor:Landroid/os/ParcelFileDescriptor;

    if-eqz v0, :cond_0

    .line 1468
    invoke-virtual {v0}, Landroid/os/ParcelFileDescriptor;->getFileDescriptor()Ljava/io/FileDescriptor;

    move-result-object p0

    invoke-static {p0, p1}, Lcom/oplus/camera/ui/control/e;->a(Ljava/io/FileDescriptor;I)Landroid/graphics/Bitmap;

    move-result-object p0

    goto :goto_0

    .line 1469
    :cond_0
    iget-object p0, p0, Lcom/oplus/camera/capmode/w;->mCurrentVideoFilename:Ljava/lang/String;

    if-eqz p0, :cond_1

    .line 1470
    invoke-static {p0, p1}, Lcom/oplus/camera/ui/control/e;->a(Ljava/lang/String;I)Landroid/graphics/Bitmap;

    move-result-object p0

    goto :goto_0

    :cond_1
    const/4 p0, 0x0

    :goto_0
    return-object p0
.end method

.method protected getVideoTime()J
    .locals 2

    const-wide/16 v0, 0x0

    return-wide v0
.end method

.method protected getVideoTimeLimit()J
    .locals 2

    const-wide/16 v0, 0x0

    return-wide v0
.end method

.method protected getVideoTitle()Ljava/lang/String;
    .locals 0

    const-string p0, ""

    return-object p0
.end method

.method public getZSLMode()Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public handleStartError(ZZ)V
    .locals 4

    .line 1243
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "handleStartError, fromBroadcast: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", showDialog: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "VideoMode"

    invoke-static {v1, v0}, Lcom/oplus/camera/e;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 1245
    iget-object v0, p0, Lcom/oplus/camera/capmode/w;->mRecordHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/oplus/camera/capmode/w;->mVideoFilename:Ljava/lang/String;

    const/4 v2, 0x3

    invoke-virtual {v0, v2, v1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 1247
    invoke-virtual {p0}, Lcom/oplus/camera/capmode/w;->isUseMediaCodec()Z

    move-result v0

    if-nez v0, :cond_0

    .line 1248
    invoke-direct {p0}, Lcom/oplus/camera/capmode/w;->releaseVideoRecorderWrapper()V

    .line 1251
    :cond_0
    iget-object v0, p0, Lcom/oplus/camera/capmode/w;->mCameraInterface:Lcom/oplus/camera/capmode/a;

    invoke-interface {v0}, Lcom/oplus/camera/capmode/a;->U()V

    .line 1253
    invoke-virtual {p0}, Lcom/oplus/camera/capmode/w;->isVideoRecordStarting()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_1

    invoke-virtual {p0}, Lcom/oplus/camera/capmode/w;->isVideoRecordStarted()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 1254
    :cond_1
    invoke-virtual {p0, v1}, Lcom/oplus/camera/capmode/w;->onStopVideoRecording(Z)V

    :cond_2
    const/4 v0, 0x5

    if-eqz p1, :cond_4

    .line 1258
    iget-object p1, p0, Lcom/oplus/camera/capmode/w;->mHandler:Landroid/os/Handler;

    if-eqz p1, :cond_3

    .line 1259
    invoke-virtual {p1, v0}, Landroid/os/Handler;->removeMessages(I)V

    .line 1262
    :cond_3
    iget-object p1, p0, Lcom/oplus/camera/capmode/w;->mActivity:Landroid/app/Activity;

    invoke-virtual {p1}, Landroid/app/Activity;->onBackPressed()V

    goto :goto_0

    .line 1264
    :cond_4
    iget-object p1, p0, Lcom/oplus/camera/capmode/w;->mCameraUIInterface:Lcom/oplus/camera/ui/CameraUIInterface;

    invoke-interface {p1}, Lcom/oplus/camera/ui/CameraUIInterface;->x()V

    .line 1266
    sget-object p1, Lcom/oplus/camera/Storage;->u:Ljava/lang/String;

    const-string v3, "on"

    invoke-virtual {v3, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_5

    invoke-static {}, Lcom/oplus/camera/Storage;->f()Z

    move-result p1

    if-nez p1, :cond_5

    .line 1267
    sput v0, Lcom/oplus/camera/Storage;->v:I

    const-string p1, "invalid"

    .line 1268
    sput-object p1, Lcom/oplus/camera/Storage;->u:Ljava/lang/String;

    .line 1269
    sput v2, Lcom/oplus/camera/Storage;->w:I

    const-string p1, "memory_limit"

    .line 1270
    iput-object p1, p0, Lcom/oplus/camera/capmode/w;->mEndType:Ljava/lang/String;

    .line 1271
    iget-object p1, p0, Lcom/oplus/camera/capmode/w;->mCameraUIInterface:Lcom/oplus/camera/ui/CameraUIInterface;

    invoke-interface {p1}, Lcom/oplus/camera/ui/CameraUIInterface;->t()V

    .line 1272
    iput-boolean v1, p0, Lcom/oplus/camera/capmode/w;->mbStartFailue:Z

    return-void

    :cond_5
    if-eqz p2, :cond_6

    .line 1277
    iget-object p1, p0, Lcom/oplus/camera/capmode/w;->mCameraUIInterface:Lcom/oplus/camera/ui/CameraUIInterface;

    new-instance p2, Lcom/oplus/camera/capmode/w$6;

    invoke-direct {p2, p0}, Lcom/oplus/camera/capmode/w$6;-><init>(Lcom/oplus/camera/capmode/w;)V

    invoke-interface {p1, p2}, Lcom/oplus/camera/ui/CameraUIInterface;->a(Landroid/content/DialogInterface$OnCancelListener;)V

    .line 1286
    :cond_6
    :goto_0
    iput-boolean v1, p0, Lcom/oplus/camera/capmode/w;->mbStartFailue:Z

    return-void
.end method

.method protected initRecordThread()V
    .locals 2

    .line 368
    iget-object v0, p0, Lcom/oplus/camera/capmode/w;->mRecordHandlerThread:Landroid/os/HandlerThread;

    if-nez v0, :cond_0

    .line 369
    new-instance v0, Landroid/os/HandlerThread;

    const-string v1, "CameraRecorder"

    invoke-direct {v0, v1}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/oplus/camera/capmode/w;->mRecordHandlerThread:Landroid/os/HandlerThread;

    .line 370
    iget-object v0, p0, Lcom/oplus/camera/capmode/w;->mRecordHandlerThread:Landroid/os/HandlerThread;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->start()V

    .line 371
    new-instance v0, Lcom/oplus/camera/capmode/w$2;

    iget-object v1, p0, Lcom/oplus/camera/capmode/w;->mRecordHandlerThread:Landroid/os/HandlerThread;

    invoke-virtual {v1}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/oplus/camera/capmode/w$2;-><init>(Lcom/oplus/camera/capmode/w;Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/oplus/camera/capmode/w;->mRecordHandler:Landroid/os/Handler;

    :cond_0
    return-void
.end method

.method public initVideoFileDescriptor()Z
    .locals 4

    .line 2761
    iget-object v0, p0, Lcom/oplus/camera/capmode/w;->mRecordFileNameChange:Landroid/os/ConditionVariable;

    invoke-virtual {v0}, Landroid/os/ConditionVariable;->block()V

    .line 2762
    iget-object v0, p0, Lcom/oplus/camera/capmode/w;->mActivity:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    .line 2764
    invoke-virtual {p0}, Lcom/oplus/camera/capmode/w;->closeVideoFileDescriptor()V

    .line 2766
    iget-object v1, p0, Lcom/oplus/camera/capmode/w;->mCameraInterface:Lcom/oplus/camera/capmode/a;

    invoke-interface {v1}, Lcom/oplus/camera/capmode/a;->m()Z

    move-result v1

    const-string v2, "VideoMode"

    if-eqz v1, :cond_0

    if-eqz v0, :cond_0

    const-string v1, "output"

    .line 2767
    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Landroid/net/Uri;

    .line 2769
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "initializeRecorder, saveUri: "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Lcom/oplus/camera/e;->c(Ljava/lang/String;Ljava/lang/String;)V

    if-eqz v0, :cond_0

    .line 2773
    :try_start_0
    iget-object v1, p0, Lcom/oplus/camera/capmode/w;->mActivity:Landroid/app/Activity;

    invoke-virtual {v1}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v3, "rw"

    invoke-virtual {v1, v0, v3}, Landroid/content/ContentResolver;->openFileDescriptor(Landroid/net/Uri;Ljava/lang/String;)Landroid/os/ParcelFileDescriptor;

    move-result-object v1

    iput-object v1, p0, Lcom/oplus/camera/capmode/w;->mVideoFileDescriptor:Landroid/os/ParcelFileDescriptor;

    .line 2774
    iput-object v0, p0, Lcom/oplus/camera/capmode/w;->mCurrentVideoUri:Landroid/net/Uri;
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 2776
    invoke-virtual {v0}, Ljava/io/FileNotFoundException;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Lcom/oplus/camera/e;->f(Ljava/lang/String;Ljava/lang/String;)V

    .line 2781
    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/oplus/camera/capmode/w;->mVideoFileDescriptor:Landroid/os/ParcelFileDescriptor;

    if-nez v0, :cond_2

    .line 2782
    invoke-virtual {p0}, Lcom/oplus/camera/capmode/w;->getProfile()Landroid/media/CamcorderProfile;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 2783
    invoke-virtual {p0}, Lcom/oplus/camera/capmode/w;->getProfile()Landroid/media/CamcorderProfile;

    move-result-object v0

    iget v0, v0, Landroid/media/CamcorderProfile;->fileFormat:I

    invoke-direct {p0, v0}, Lcom/oplus/camera/capmode/w;->generateVideoFilename(I)V

    .line 2786
    :cond_1
    iget-object p0, p0, Lcom/oplus/camera/capmode/w;->mVideoFilename:Ljava/lang/String;

    if-nez p0, :cond_2

    const-string p0, "initializeRecorder, mVideoFilename is null"

    .line 2787
    invoke-static {v2, p0}, Lcom/oplus/camera/e;->f(Ljava/lang/String;Ljava/lang/String;)V

    const/4 p0, 0x0

    return p0

    :cond_2
    const/4 p0, 0x1

    return p0
.end method

.method public isCaptureModeType()Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method protected isHighFps()Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method protected isHyperLapseOpen()Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method protected isMotionDetectOpen()Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method protected isMotionDetected()Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method protected isMovieMode()Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method protected isNeedAudioEncode()Z
    .locals 0

    const/4 p0, 0x1

    return p0
.end method

.method protected isNeedGenerateUri()Z
    .locals 0

    const/4 p0, 0x1

    return p0
.end method

.method public isNeedMetaDataWhenPause()Z
    .locals 1

    .line 1238
    invoke-virtual {p0}, Lcom/oplus/camera/capmode/w;->needVideoPipeline()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-boolean p0, p0, Lcom/oplus/camera/capmode/w;->mbPipelineEnable:Z

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method protected isNeedSetZslWhenCapture()Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method protected isQualcommEndOfStreamNeed()Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method protected isRearSuperEISOpen()Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method protected isRecordFileValid()Z
    .locals 6

    .line 1917
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "isRecordFileValid, mbStopVideoFail:  "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/oplus/camera/capmode/w;->mbStopVideoFail:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", mRecordingTotalTime: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Lcom/oplus/camera/capmode/w;->mRecordingTotalTime:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "VideoMode"

    invoke-static {v1, v0}, Lcom/oplus/camera/e;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 1920
    iget-boolean v0, p0, Lcom/oplus/camera/capmode/w;->mbStopVideoFail:Z

    const/4 v1, 0x0

    if-nez v0, :cond_0

    invoke-virtual {p0, v1}, Lcom/oplus/camera/capmode/w;->getRecordingMinTime(Z)I

    move-result v0

    int-to-long v2, v0

    iget-wide v4, p0, Lcom/oplus/camera/capmode/w;->mRecordingTotalTime:J

    cmp-long p0, v2, v4

    if-gtz p0, :cond_0

    const/4 v1, 0x1

    :cond_0
    return v1
.end method

.method protected isSlowVideoHighFrame()Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public isSubMenuEnable()Z
    .locals 1

    const-string v0, "key_video_hdr"

    .line 765
    invoke-virtual {p0, v0}, Lcom/oplus/camera/capmode/w;->getSupportSubMenu(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    const-string v0, "key_ultra_night_video"

    .line 766
    invoke-virtual {p0, v0}, Lcom/oplus/camera/capmode/w;->getSupportSubMenu(Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p0, 0x1

    :goto_1
    return p0
.end method

.method protected isSuperEISOpen()Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public isSupportLensSwicth()Z
    .locals 0

    .line 4357
    invoke-static {}, Lcom/oplus/camera/util/Util;->C()Z

    move-result p0

    return p0
.end method

.method protected isVideoFlashTorchOpen()Z
    .locals 5

    .line 426
    iget-boolean v0, p0, Lcom/oplus/camera/capmode/w;->mbFlashTemporaryDisabled:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    return v1

    .line 430
    :cond_0
    iget-object v0, p0, Lcom/oplus/camera/capmode/w;->mPreferences:Landroid/content/SharedPreferences;

    const/4 v2, 0x1

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/oplus/camera/capmode/w;->mPreferences:Landroid/content/SharedPreferences;

    iget-object v3, p0, Lcom/oplus/camera/capmode/w;->mActivity:Landroid/app/Activity;

    const v4, 0x7f1001c0

    .line 432
    invoke-virtual {v3, v4}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v3

    const-string v4, "pref_camera_videoflashmode_key"

    .line 431
    invoke-interface {v0, v4, v3}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v3, "torch"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 433
    invoke-virtual {p0, v4}, Lcom/oplus/camera/capmode/w;->getSupportFunction(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    iget-boolean v0, p0, Lcom/oplus/camera/capmode/w;->mbFrontCamera:Z

    if-eqz v0, :cond_1

    .line 434
    invoke-virtual {p0}, Lcom/oplus/camera/capmode/w;->isMultiVideoMode()Z

    move-result v0

    if-eqz v0, :cond_2

    :cond_1
    return v2

    .line 438
    :cond_2
    iget-object v0, p0, Lcom/oplus/camera/capmode/w;->mPreferences:Landroid/content/SharedPreferences;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/oplus/camera/capmode/w;->mPreferences:Landroid/content/SharedPreferences;

    iget-object v3, p0, Lcom/oplus/camera/capmode/w;->mActivity:Landroid/app/Activity;

    .line 440
    invoke-static {v3}, Lcom/oplus/camera/util/Util;->F(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v3

    const-string v4, "pref_camera_torch_mode_key"

    .line 439
    invoke-interface {v0, v4, v3}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v3, "on"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    const-string v0, "func_torch_soft_light"

    .line 441
    invoke-virtual {p0, v0}, Lcom/oplus/camera/capmode/w;->getSupportFunction(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3

    iget-boolean p0, p0, Lcom/oplus/camera/capmode/w;->mbFrontCamera:Z

    if-eqz p0, :cond_3

    return v2

    :cond_3
    return v1
.end method

.method public isVideoModeType()Z
    .locals 0

    const/4 p0, 0x1

    return p0
.end method

.method public isVideoRecordStarted()Z
    .locals 0

    .line 1394
    iget p0, p0, Lcom/oplus/camera/capmode/w;->mMediaRecorderState:I

    if-nez p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public isVideoRecordStarting()Z
    .locals 1

    .line 1399
    iget p0, p0, Lcom/oplus/camera/capmode/w;->mMediaRecorderState:I

    const/4 v0, 0x1

    if-ne p0, v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public isVideoRecordStopped()Z
    .locals 1

    .line 1409
    iget p0, p0, Lcom/oplus/camera/capmode/w;->mMediaRecorderState:I

    const/4 v0, 0x2

    if-ne p0, v0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public isVideoRecordStopping()Z
    .locals 1

    .line 1419
    iget p0, p0, Lcom/oplus/camera/capmode/w;->mMediaRecorderState:I

    const/4 v0, 0x3

    if-ne p0, v0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public isVideoRecording()Z
    .locals 1

    .line 1404
    invoke-virtual {p0}, Lcom/oplus/camera/capmode/w;->isVideoRecordStarted()Z

    move-result v0

    if-nez v0, :cond_1

    invoke-virtual {p0}, Lcom/oplus/camera/capmode/w;->isVideoRecordStarting()Z

    move-result p0

    if-eqz p0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p0, 0x1

    :goto_1
    return p0
.end method

.method public synthetic lambda$stopVideoRecordThread$0$w(Lcom/oplus/camera/ui/control/e$d;Z)V
    .locals 4

    .line 1842
    iget-boolean v0, p0, Lcom/oplus/camera/capmode/w;->mbDestroyed:Z

    const-string v1, "VideoMode"

    if-eqz v0, :cond_0

    const-string p0, "stopVideoRecordThread, return"

    .line 1843
    invoke-static {v1, p0}, Lcom/oplus/camera/e;->a(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    .line 1848
    :cond_0
    invoke-direct {p0}, Lcom/oplus/camera/capmode/w;->resumeAudioPlayback()V

    .line 1849
    iget v0, p0, Lcom/oplus/camera/capmode/w;->mStartRecordingOrientation:I

    add-int/lit8 v0, v0, 0x5a

    rem-int/lit16 v0, v0, 0x168

    .line 1851
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "stopVideoRecordThread, mStartRecordingOrientation: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, p0, Lcom/oplus/camera/capmode/w;->mStartRecordingOrientation:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, ", orientation: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/oplus/camera/e;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 1854
    iput v0, p1, Lcom/oplus/camera/ui/control/e$d;->b:I

    .line 1855
    iget-object v0, p0, Lcom/oplus/camera/capmode/w;->mCameraInterface:Lcom/oplus/camera/capmode/a;

    const/4 v1, 0x1

    xor-int/2addr p2, v1

    invoke-virtual {p0}, Lcom/oplus/camera/capmode/w;->isDoubleExposureOpen()Z

    move-result v2

    xor-int/2addr v2, v1

    invoke-interface {v0, p1, p2, v2}, Lcom/oplus/camera/capmode/a;->a(Lcom/oplus/camera/ui/control/e$d;ZZ)V

    .line 1856
    invoke-virtual {p0}, Lcom/oplus/camera/capmode/w;->closeVideoFileDescriptor()V

    const/4 p1, 0x2

    .line 1857
    invoke-virtual {p0, p1}, Lcom/oplus/camera/capmode/w;->setVideoRecordState(I)V

    .line 1859
    iget-object p1, p0, Lcom/oplus/camera/capmode/w;->mCameraInterface:Lcom/oplus/camera/capmode/a;

    invoke-interface {p1}, Lcom/oplus/camera/capmode/a;->aY()Z

    move-result p1

    if-eqz p1, :cond_1

    .line 1860
    iget-object p1, p0, Lcom/oplus/camera/capmode/w;->mCameraInterface:Lcom/oplus/camera/capmode/a;

    invoke-interface {p1}, Lcom/oplus/camera/capmode/a;->aZ()V

    .line 1863
    :cond_1
    iget-boolean p1, p0, Lcom/oplus/camera/capmode/w;->mbShowHint:Z

    if-eqz p1, :cond_2

    .line 1864
    iget-object p1, p0, Lcom/oplus/camera/capmode/w;->mActivity:Landroid/app/Activity;

    const p2, 0x7f1004e1

    invoke-static {p1, p2}, Lcom/oplus/camera/util/o;->a(Landroid/content/Context;I)V

    .line 1865
    iget-object p1, p0, Lcom/oplus/camera/capmode/w;->mCameraInterface:Lcom/oplus/camera/capmode/a;

    const/4 p2, 0x0

    const/4 v0, 0x0

    invoke-interface {p1, p2, v1, v0}, Lcom/oplus/camera/capmode/a;->a(Landroid/animation/AnimatorListenerAdapter;ZZ)V

    .line 1866
    iget-object p1, p0, Lcom/oplus/camera/capmode/w;->mCameraInterface:Lcom/oplus/camera/capmode/a;

    invoke-interface {p1, v0}, Lcom/oplus/camera/capmode/a;->d(Z)V

    .line 1867
    iget-object p1, p0, Lcom/oplus/camera/capmode/w;->mRecordHandler:Landroid/os/Handler;

    const/16 p2, 0x8

    invoke-virtual {p1, p2}, Landroid/os/Handler;->removeMessages(I)V

    .line 1868
    iget-object p1, p0, Lcom/oplus/camera/capmode/w;->mRecordHandler:Landroid/os/Handler;

    const-wide/16 v1, 0xbb8

    invoke-virtual {p1, p2, v1, v2}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 1869
    iput-boolean v0, p0, Lcom/oplus/camera/capmode/w;->mbShowHint:Z

    const-string p1, "disable_code"

    const-string p2, "size_limit"

    .line 1870
    invoke-virtual {p0, p1, p2}, Lcom/oplus/camera/capmode/w;->reportReminderToDcs(Ljava/lang/String;Ljava/lang/String;)V

    :cond_2
    return-void
.end method

.method public needApsToProcessVideoWatermark()Z
    .locals 1

    const-string v0, "pref_watermark_function_key"

    .line 4334
    invoke-virtual {p0, v0}, Lcom/oplus/camera/capmode/w;->getSupportFunction(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/oplus/camera/capmode/w;->isSloganOpen()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/oplus/camera/capmode/w;->isUseMediaCodec()Z

    move-result p0

    if-nez p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public needConfigPhysicalStream(Ljava/lang/String;)Z
    .locals 1

    const-string v0, "type_main_preview_frame"

    .line 4316
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    const-string v0, "type_sub_preview_frame"

    .line 4317
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    const-string v0, "type_third_preview_frame"

    .line 4318
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 4325
    :cond_0
    invoke-super {p0, p1}, Lcom/oplus/camera/capmode/BaseMode;->needConfigPhysicalStream(Ljava/lang/String;)Z

    move-result p0

    return p0

    .line 4319
    :cond_1
    :goto_0
    invoke-static {}, Lcom/oplus/camera/util/Util;->C()Z

    move-result p1

    if-eqz p1, :cond_2

    const-string p1, "com.oplus.qualcomm.physical.id.support"

    .line 4320
    invoke-static {p1}, Lcom/oplus/camera/aps/config/CameraConfig;->getConfigBooleanValue(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_3

    .line 4321
    :cond_2
    invoke-virtual {p0}, Lcom/oplus/camera/capmode/w;->isSatOpen()Z

    move-result p0

    if-eqz p0, :cond_3

    const-string p0, "com.oplus.sat.use.hal"

    .line 4322
    invoke-static {p0}, Lcom/oplus/camera/aps/config/CameraConfig;->getConfigBooleanValue(Ljava/lang/String;)Z

    move-result p0

    if-nez p0, :cond_3

    const/4 p0, 0x1

    goto :goto_1

    :cond_3
    const/4 p0, 0x0

    :goto_1
    return p0
.end method

.method public needShow10bitHint()Z
    .locals 1

    const-string v0, "pref_10bits_heic_encode_key"

    .line 4387
    invoke-virtual {p0, v0}, Lcom/oplus/camera/capmode/w;->getSupportFunction(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/oplus/camera/capmode/w;->isVideo10BitOpen()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/oplus/camera/capmode/w;->isMovieMode()Z

    move-result p0

    if-nez p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method protected needShowVideoTime()Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public needSurface(Ljava/lang/String;)Z
    .locals 2

    .line 3525
    iget-boolean v0, p0, Lcom/oplus/camera/capmode/w;->mbDestroyed:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    return v1

    :cond_0
    const-string v0, "type_video"

    .line 3529
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 p0, 0x1

    return p0

    :cond_1
    const-string v0, "type_tuning_data_yuv"

    .line 3533
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    return v1

    :cond_2
    const-string v0, "type_tuning_data_raw"

    .line 3537
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    return v1

    .line 3541
    :cond_3
    invoke-super {p0, p1}, Lcom/oplus/camera/capmode/BaseMode;->needSurface(Ljava/lang/String;)Z

    move-result p0

    return p0
.end method

.method protected needUpdateAsdSceneValue()Z
    .locals 1

    const-string v0, "com.oplus.video.asd.aiscene.v3.support"

    .line 645
    invoke-static {v0}, Lcom/oplus/camera/aps/config/CameraConfig;->getConfigBooleanValue(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/oplus/camera/capmode/w;->mbFrontCamera:Z

    if-nez v0, :cond_0

    .line 647
    invoke-virtual {p0}, Lcom/oplus/camera/capmode/w;->isAiEnhancementVideoOpen()Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method protected needVideoPipeline()Z
    .locals 1

    .line 4266
    invoke-virtual {p0}, Lcom/oplus/camera/capmode/w;->isUseMediaCodec()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/oplus/camera/capmode/w;->isUseMediaRecorderNotUseAPS()Z

    move-result p0

    if-nez p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method protected onAfterPictureTaken([BZ)V
    .locals 0

    .line 3854
    iget-object p0, p0, Lcom/oplus/camera/capmode/w;->mCameraUIInterface:Lcom/oplus/camera/ui/CameraUIInterface;

    const/4 p1, 0x1

    const/4 p2, 0x0

    invoke-interface {p0, p1, p2}, Lcom/oplus/camera/ui/CameraUIInterface;->d(ZZ)V

    return-void
.end method

.method public onAfterStartPreview(Z)V
    .locals 2

    .line 3859
    invoke-super {p0, p1}, Lcom/oplus/camera/capmode/BaseMode;->onAfterStartPreview(Z)V

    .line 3861
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/oplus/camera/capmode/w;->mPreviewOkTime:J

    const-wide/16 v0, -0x1

    .line 3862
    iput-wide v0, p0, Lcom/oplus/camera/capmode/w;->mPreviewVideoCostTime:J

    const-string p1, "com.oplus.scenes.force.athena"

    .line 3864
    invoke-static {p1}, Lcom/oplus/camera/aps/config/CameraConfig;->getConfigBooleanValue(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_1

    .line 3865
    invoke-virtual {p0}, Lcom/oplus/camera/capmode/w;->is4k()Z

    move-result p1

    if-nez p1, :cond_0

    invoke-virtual {p0}, Lcom/oplus/camera/capmode/w;->isHighFps()Z

    move-result p1

    if-nez p1, :cond_0

    invoke-virtual {p0}, Lcom/oplus/camera/capmode/w;->isSuperEISOpen()Z

    move-result p1

    if-eqz p1, :cond_1

    .line 3866
    :cond_0
    iget-object p0, p0, Lcom/oplus/camera/capmode/w;->mActivity:Landroid/app/Activity;

    invoke-static {p0}, Lcom/oplus/camera/util/Util;->C(Landroid/content/Context;)V

    :cond_1
    return-void
.end method

.method public onBackPressed()Z
    .locals 2

    .line 999
    invoke-virtual {p0}, Lcom/oplus/camera/capmode/w;->isVideoRecording()Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_2

    .line 1000
    invoke-virtual {p0}, Lcom/oplus/camera/capmode/w;->isVideoRecordStarted()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/oplus/camera/capmode/w;->mCameraInterface:Lcom/oplus/camera/capmode/a;

    invoke-interface {v0}, Lcom/oplus/camera/capmode/a;->g()I

    move-result v0

    if-ne v0, v1, :cond_0

    .line 1001
    invoke-virtual {p0, v1}, Lcom/oplus/camera/capmode/w;->onStopVideoRecording(Z)V

    goto :goto_0

    .line 1002
    :cond_0
    invoke-virtual {p0}, Lcom/oplus/camera/capmode/w;->isVideoRecordStarting()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-boolean v0, p0, Lcom/oplus/camera/capmode/w;->mbStartFailue:Z

    if-eqz v0, :cond_1

    const/4 v0, 0x0

    .line 1003
    invoke-virtual {p0, v0}, Lcom/oplus/camera/capmode/w;->onStopVideoRecording(Z)V

    :cond_1
    :goto_0
    const-string p0, "VideoMode"

    const-string v0, "onBackPressed, isVideoRecording return"

    .line 1006
    invoke-static {p0, v0}, Lcom/oplus/camera/e;->a(Ljava/lang/String;Ljava/lang/String;)V

    return v1

    .line 1009
    :cond_2
    invoke-virtual {p0}, Lcom/oplus/camera/capmode/w;->isVideoRecordStopping()Z

    move-result v0

    if-eqz v0, :cond_3

    return v1

    .line 1013
    :cond_3
    invoke-super {p0}, Lcom/oplus/camera/capmode/BaseMode;->onBackPressed()Z

    move-result p0

    return p0
.end method

.method protected onBeforePictureTaken([BZ)V
    .locals 0

    .line 3847
    iget-object p1, p0, Lcom/oplus/camera/capmode/w;->mCameraInterface:Lcom/oplus/camera/capmode/a;

    invoke-interface {p1}, Lcom/oplus/camera/capmode/a;->h()V

    const/4 p1, 0x1

    .line 3848
    iput-boolean p1, p0, Lcom/oplus/camera/capmode/w;->mbPictureTakenDuringRecord:Z

    .line 3849
    iget-wide p1, p0, Lcom/oplus/camera/capmode/w;->mCaptureDate:J

    iput-wide p1, p0, Lcom/oplus/camera/capmode/w;->mPictureTakenTime:J

    return-void
.end method

.method protected onBeforePreview()V
    .locals 2

    const-string v0, "VideoMode"

    const-string v1, "onBeforePreview"

    .line 1037
    invoke-static {v0, v1}, Lcom/oplus/camera/e;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 1039
    invoke-virtual {p0}, Lcom/oplus/camera/capmode/w;->readProfile()V

    const/4 v0, 0x0

    .line 1041
    iput-boolean v0, p0, Lcom/oplus/camera/capmode/w;->mbEnableTuningData:Z

    return-void
.end method

.method protected onBeforeSnapping(Lcom/oplus/camera/e/c;)Z
    .locals 1

    const-string p1, "VideoMode"

    const-string v0, "onBeforeSnapping"

    .line 1102
    invoke-static {p1, v0}, Lcom/oplus/camera/e;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 1104
    invoke-virtual {p0}, Lcom/oplus/camera/capmode/w;->isVideoRecordStarted()Z

    move-result p0

    if-nez p0, :cond_0

    const-string p0, "onBeforeSnapping, is not in RECORD_STARTED"

    .line 1105
    invoke-static {p1, p0}, Lcom/oplus/camera/e;->f(Ljava/lang/String;Ljava/lang/String;)V

    const/4 p0, 0x0

    return p0

    :cond_0
    const/4 p0, 0x1

    return p0
.end method

.method public onBinauralRecordStateChanged(Z)V
    .locals 2

    .line 3166
    iget-boolean v0, p0, Lcom/oplus/camera/capmode/w;->mbBinauralRecordEnable:Z

    if-eq v0, p1, :cond_0

    .line 3167
    iput-boolean p1, p0, Lcom/oplus/camera/capmode/w;->mbBinauralRecordEnable:Z

    .line 3169
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onBinauralRecordStateChanged, enable: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "VideoMode"

    invoke-static {v0, p1}, Lcom/oplus/camera/e;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 3171
    invoke-virtual {p0}, Lcom/oplus/camera/capmode/w;->isVideoRecording()Z

    move-result p1

    if-eqz p1, :cond_0

    .line 3172
    iget-boolean p1, p0, Lcom/oplus/camera/capmode/w;->mbBinauralRecordEnable:Z

    invoke-direct {p0, p1}, Lcom/oplus/camera/capmode/w;->setBinauralRecordState(Z)V

    :cond_0
    return-void
.end method

.method protected onDeInitCameraMode(Ljava/lang/String;)V
    .locals 0

    return-void
.end method

.method protected onDestroy()V
    .locals 3

    const-string v0, "VideoMode"

    const-string v1, "onDestroy"

    .line 552
    invoke-static {v0, v1}, Lcom/oplus/camera/e;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 554
    invoke-virtual {p0}, Lcom/oplus/camera/capmode/w;->isVideoRecordStopping()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "VideoMode"

    const-string v1, "onDestroy, block"

    .line 555
    invoke-static {v0, v1}, Lcom/oplus/camera/e;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 557
    iget-object v0, p0, Lcom/oplus/camera/capmode/w;->mRecordSig:Landroid/os/ConditionVariable;

    const-wide/16 v1, 0x1388

    invoke-virtual {v0, v1, v2}, Landroid/os/ConditionVariable;->block(J)Z

    .line 560
    :cond_0
    iget-object v0, p0, Lcom/oplus/camera/capmode/w;->mRecordHandlerThread:Landroid/os/HandlerThread;

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    .line 561
    invoke-virtual {v0}, Landroid/os/HandlerThread;->quitSafely()Z

    .line 562
    iput-object v1, p0, Lcom/oplus/camera/capmode/w;->mRecordHandlerThread:Landroid/os/HandlerThread;

    .line 565
    :cond_1
    iget-object v0, p0, Lcom/oplus/camera/capmode/w;->mHandler:Landroid/os/Handler;

    if-eqz v0, :cond_2

    .line 566
    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    .line 567
    iput-object v1, p0, Lcom/oplus/camera/capmode/w;->mHandler:Landroid/os/Handler;

    .line 570
    :cond_2
    iget-object v0, p0, Lcom/oplus/camera/capmode/w;->mBrightnessAnimator:Landroid/animation/ValueAnimator;

    if-eqz v0, :cond_3

    .line 571
    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->cancel()V

    .line 572
    iget-object v0, p0, Lcom/oplus/camera/capmode/w;->mBrightnessAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->removeAllUpdateListeners()V

    .line 573
    iput-object v1, p0, Lcom/oplus/camera/capmode/w;->mBrightnessAnimator:Landroid/animation/ValueAnimator;

    .line 576
    :cond_3
    iget-object v0, p0, Lcom/oplus/camera/capmode/w;->mBrightnessAnimationListener:Lcom/oplus/camera/capmode/w$a;

    if-eqz v0, :cond_4

    .line 577
    iput-object v1, p0, Lcom/oplus/camera/capmode/w;->mBrightnessAnimationListener:Lcom/oplus/camera/capmode/w$a;

    .line 580
    :cond_4
    iget-object v0, p0, Lcom/oplus/camera/capmode/w;->mCameraErrorAlertDialogBuilder:Lcom/coui/appcompat/dialog/app/b;

    if-eqz v0, :cond_6

    .line 581
    invoke-virtual {v0}, Lcom/coui/appcompat/dialog/app/b;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_5

    .line 582
    iget-object v0, p0, Lcom/oplus/camera/capmode/w;->mCameraErrorAlertDialogBuilder:Lcom/coui/appcompat/dialog/app/b;

    invoke-virtual {v0}, Lcom/coui/appcompat/dialog/app/b;->dismiss()V

    .line 585
    :cond_5
    iput-object v1, p0, Lcom/oplus/camera/capmode/w;->mCameraErrorAlertDialogBuilder:Lcom/coui/appcompat/dialog/app/b;

    .line 588
    :cond_6
    iget-object v0, p0, Lcom/oplus/camera/capmode/w;->mVideoSurfaceLock:Ljava/lang/Object;

    monitor-enter v0

    .line 589
    :try_start_0
    iget-object v2, p0, Lcom/oplus/camera/capmode/w;->mVideoSurface:Landroid/view/Surface;

    if-eqz v2, :cond_7

    .line 590
    iget-object v2, p0, Lcom/oplus/camera/capmode/w;->mVideoSurface:Landroid/view/Surface;

    invoke-virtual {v2}, Landroid/view/Surface;->release()V

    .line 591
    iput-object v1, p0, Lcom/oplus/camera/capmode/w;->mVideoSurface:Landroid/view/Surface;

    .line 593
    :cond_7
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 595
    iput-object v1, p0, Lcom/oplus/camera/capmode/w;->mCurrentVideoUri:Landroid/net/Uri;

    return-void

    :catchall_0
    move-exception p0

    .line 593
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p0
.end method

.method public onError(Ljava/lang/Object;II)V
    .locals 3

    .line 1489
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "onError, what: "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, ", extra: "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "VideoMode"

    invoke-static {v0, p1}, Lcom/oplus/camera/e;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 1491
    invoke-virtual {p0}, Lcom/oplus/camera/capmode/w;->isUseMediaCodec()Z

    move-result p1

    const/16 v1, -0x3ef

    const/4 v2, 0x1

    if-nez p1, :cond_0

    if-eq p2, v2, :cond_1

    if-eq p3, v1, :cond_1

    .line 1493
    :cond_0
    invoke-virtual {p0}, Lcom/oplus/camera/capmode/w;->isUseMediaCodec()Z

    move-result p1

    if-eqz p1, :cond_3

    const/16 p1, 0x44c

    if-eq p2, p1, :cond_1

    const/16 p1, 0x44d

    if-eq p2, p1, :cond_1

    if-gez p2, :cond_3

    .line 1497
    :cond_1
    invoke-virtual {p0}, Lcom/oplus/camera/capmode/w;->isUseMediaCodec()Z

    move-result p1

    if-eqz p1, :cond_2

    if-gez p2, :cond_2

    const-string p1, "onError, kill myself"

    .line 1500
    invoke-static {v0, p1}, Lcom/oplus/camera/e;->f(Ljava/lang/String;Ljava/lang/String;)V

    .line 1502
    iget-object p1, p0, Lcom/oplus/camera/capmode/w;->mCameraInterface:Lcom/oplus/camera/capmode/a;

    if-eqz p1, :cond_2

    .line 1503
    iget-object p0, p0, Lcom/oplus/camera/capmode/w;->mCameraInterface:Lcom/oplus/camera/capmode/a;

    invoke-interface {p0}, Lcom/oplus/camera/capmode/a;->Q()V

    return-void

    .line 1509
    :cond_2
    invoke-virtual {p0}, Lcom/oplus/camera/capmode/w;->isVideoRecordStopped()Z

    move-result p1

    if-nez p1, :cond_3

    .line 1510
    invoke-virtual {p0, v2}, Lcom/oplus/camera/capmode/w;->onStopVideoRecording(Z)V

    .line 1512
    invoke-virtual {p0}, Lcom/oplus/camera/capmode/w;->isUseMediaCodec()Z

    move-result p1

    if-nez p1, :cond_3

    if-ne v1, p3, :cond_3

    .line 1513
    invoke-virtual {p0}, Lcom/oplus/camera/capmode/w;->showPreparingErrorDialog()V

    :cond_3
    return-void
.end method

.method public onException(I)V
    .locals 2

    .line 1478
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onException, exceptionCode: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "VideoMode"

    invoke-static {v1, v0}, Lcom/oplus/camera/e;->a(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x1

    if-ne v0, p1, :cond_0

    .line 1481
    invoke-virtual {p0}, Lcom/oplus/camera/capmode/w;->isVideoRecordStopped()Z

    move-result p1

    if-nez p1, :cond_0

    const/4 p1, 0x0

    .line 1482
    invoke-virtual {p0, p1}, Lcom/oplus/camera/capmode/w;->onStopVideoRecording(Z)V

    :cond_0
    return-void
.end method

.method public onInfo(Ljava/lang/Object;II)V
    .locals 0

    const-string p1, "VideoMode"

    const-string p3, "onInfo"

    .line 1522
    invoke-static {p1, p3}, Lcom/oplus/camera/e;->a(Ljava/lang/String;Ljava/lang/String;)V

    const/4 p1, 0x1

    const/16 p3, 0x320

    if-ne p2, p3, :cond_0

    .line 1525
    invoke-virtual {p0}, Lcom/oplus/camera/capmode/w;->isVideoRecordStarted()Z

    move-result p2

    if-eqz p2, :cond_2

    .line 1526
    invoke-virtual {p0, p1}, Lcom/oplus/camera/capmode/w;->onStopVideoRecording(Z)V

    goto :goto_0

    :cond_0
    const/16 p3, 0x321

    if-eq p2, p3, :cond_1

    const/16 p3, 0x322

    if-ne p2, p3, :cond_2

    .line 1530
    :cond_1
    invoke-virtual {p0}, Lcom/oplus/camera/capmode/w;->isVideoRecordStarted()Z

    move-result p2

    if-eqz p2, :cond_2

    .line 1531
    iput-boolean p1, p0, Lcom/oplus/camera/capmode/w;->mbShowHint:Z

    .line 1532
    invoke-virtual {p0, p1}, Lcom/oplus/camera/capmode/w;->onStopVideoRecording(Z)V

    :cond_2
    :goto_0
    return-void
.end method

.method protected onInitCameraMode()V
    .locals 2

    .line 600
    invoke-virtual {p0}, Lcom/oplus/camera/capmode/w;->checkVideoCodecAndReset()V

    .line 602
    invoke-virtual {p0}, Lcom/oplus/camera/capmode/w;->is4k()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 603
    iget-object v0, p0, Lcom/oplus/camera/capmode/w;->mActivity:Landroid/app/Activity;

    const-string v1, "camera_mode_changed"

    invoke-static {v0, v1}, Lcom/oplus/camera/util/Util;->e(Landroid/content/Context;Ljava/lang/String;)V

    .line 606
    :cond_0
    iget-object v0, p0, Lcom/oplus/camera/capmode/w;->mCameraUIInterface:Lcom/oplus/camera/ui/CameraUIInterface;

    if-eqz v0, :cond_1

    .line 607
    iget-object v0, p0, Lcom/oplus/camera/capmode/w;->mCameraUIInterface:Lcom/oplus/camera/ui/CameraUIInterface;

    iget-object p0, p0, Lcom/oplus/camera/capmode/w;->mActivity:Landroid/app/Activity;

    const v1, 0x7f100110

    invoke-virtual {p0, v1}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object p0

    invoke-interface {v0, p0}, Lcom/oplus/camera/ui/CameraUIInterface;->c(Ljava/lang/String;)V

    :cond_1
    return-void
.end method

.method protected onInitializeRecorder(Lcom/oplus/camera/capmode/x;)V
    .locals 0

    return-void
.end method

.method protected onPause()V
    .locals 3

    const-string v0, "VideoMode"

    const-string v1, "onPause"

    .line 468
    invoke-static {v0, v1}, Lcom/oplus/camera/e;->a(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x0

    .line 470
    invoke-virtual {p0, v0}, Lcom/oplus/camera/capmode/w;->setLowBatteryState(Z)V

    .line 472
    iget-object v1, p0, Lcom/oplus/camera/capmode/w;->mRecordHandler:Landroid/os/Handler;

    if-eqz v1, :cond_0

    const/4 v2, 0x5

    .line 473
    invoke-virtual {v1, v2}, Landroid/os/Handler;->removeMessages(I)V

    .line 474
    iget-object v1, p0, Lcom/oplus/camera/capmode/w;->mRecordHandler:Landroid/os/Handler;

    const/4 v2, 0x6

    invoke-virtual {v1, v2}, Landroid/os/Handler;->removeMessages(I)V

    .line 477
    :cond_0
    iget-object v1, p0, Lcom/oplus/camera/capmode/w;->mOneCamera:Lcom/oplus/camera/e/d;

    if-eqz v1, :cond_2

    const-string v1, "type_preview_frame"

    invoke-virtual {p0, v1}, Lcom/oplus/camera/capmode/w;->needSurface(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-virtual {p0}, Lcom/oplus/camera/capmode/w;->isAnimojiOpen()Z

    move-result v1

    if-nez v1, :cond_2

    .line 478
    :cond_1
    iget-object v1, p0, Lcom/oplus/camera/capmode/w;->mOneCamera:Lcom/oplus/camera/e/d;

    invoke-virtual {p0}, Lcom/oplus/camera/capmode/w;->isSlowVideoHighFrame()Z

    move-result v2

    xor-int/lit8 v2, v2, 0x1

    invoke-interface {v1, v2}, Lcom/oplus/camera/e/d;->n(Z)V

    .line 481
    :cond_2
    invoke-virtual {p0, v0}, Lcom/oplus/camera/capmode/w;->forceStopVideoRecording(Z)V

    .line 483
    iget-object v1, p0, Lcom/oplus/camera/capmode/w;->mCameraInterface:Lcom/oplus/camera/capmode/a;

    if-eqz v1, :cond_3

    sget-object v1, Lcom/oplus/camera/ui/inverse/e;->INS:Lcom/oplus/camera/ui/inverse/e;

    iget-object v2, p0, Lcom/oplus/camera/capmode/w;->mActivity:Landroid/app/Activity;

    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/oplus/camera/ui/inverse/e;->isInverseColor(I)Z

    move-result v1

    if-nez v1, :cond_3

    .line 484
    iget-object v1, p0, Lcom/oplus/camera/capmode/w;->mCameraInterface:Lcom/oplus/camera/capmode/a;

    invoke-interface {v1}, Lcom/oplus/camera/capmode/a;->U()V

    .line 487
    :cond_3
    invoke-virtual {p0}, Lcom/oplus/camera/capmode/w;->isVideoRecordStopped()Z

    move-result v1

    if-eqz v1, :cond_4

    .line 488
    iget-object v1, p0, Lcom/oplus/camera/capmode/w;->mHandler:Landroid/os/Handler;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    .line 491
    :cond_4
    iget-object v1, p0, Lcom/oplus/camera/capmode/w;->mPrepareVideoSurface:Landroid/os/ConditionVariable;

    monitor-enter v1

    .line 492
    :try_start_0
    invoke-direct {p0}, Lcom/oplus/camera/capmode/w;->isVideoSurfacePreparing()Z

    move-result v2

    if-eqz v2, :cond_5

    .line 493
    iget-object v2, p0, Lcom/oplus/camera/capmode/w;->mPrepareVideoSurface:Landroid/os/ConditionVariable;

    invoke-virtual {v2}, Landroid/os/ConditionVariable;->block()V

    goto :goto_0

    .line 495
    :cond_5
    iget-object v2, p0, Lcom/oplus/camera/capmode/w;->mPrepareVideoSurface:Landroid/os/ConditionVariable;

    invoke-virtual {v2}, Landroid/os/ConditionVariable;->open()V

    .line 497
    :goto_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 499
    invoke-direct {p0, v0}, Lcom/oplus/camera/capmode/w;->setVideoSurfaceState(I)V

    .line 501
    iput-boolean v0, p0, Lcom/oplus/camera/capmode/w;->mbStartFailue:Z

    return-void

    :catchall_0
    move-exception p0

    .line 497
    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p0
.end method

.method public onPreviewCaptureResult(Lcom/oplus/ocs/camera/CameraPreviewCallback$CameraPreviewResult;)V
    .locals 7

    .line 889
    invoke-super {p0, p1}, Lcom/oplus/camera/capmode/BaseMode;->onPreviewCaptureResult(Lcom/oplus/ocs/camera/CameraPreviewCallback$CameraPreviewResult;)V

    const-string v0, "VideoMode"

    if-eqz p1, :cond_b

    .line 891
    invoke-virtual {p1}, Lcom/oplus/ocs/camera/CameraPreviewCallback$CameraPreviewResult;->getCaptureResult()Landroid/hardware/camera2/CaptureResult;

    move-result-object v1

    if-nez v1, :cond_0

    goto/16 :goto_5

    .line 897
    :cond_0
    invoke-virtual {p1}, Lcom/oplus/ocs/camera/CameraPreviewCallback$CameraPreviewResult;->getCaptureResult()Landroid/hardware/camera2/CaptureResult;

    move-result-object p1

    .line 899
    sget-object v1, Lcom/oplus/camera/e/b;->S:Landroid/hardware/camera2/CaptureResult$Key;

    invoke-static {p1, v1}, Lcom/oplus/camera/e/b;->a(Landroid/hardware/camera2/CaptureResult;Landroid/hardware/camera2/CaptureResult$Key;)Ljava/lang/Object;

    move-result-object v1

    .line 900
    sget-object v2, Lcom/oplus/camera/e/b;->ai:Landroid/hardware/camera2/CaptureResult$Key;

    invoke-static {p1, v2}, Lcom/oplus/camera/e/b;->a(Landroid/hardware/camera2/CaptureResult;Landroid/hardware/camera2/CaptureResult$Key;)Ljava/lang/Object;

    move-result-object v2

    const/4 v3, 0x0

    if-eqz v2, :cond_2

    .line 903
    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    if-lez v2, :cond_1

    const/4 v2, 0x1

    goto :goto_0

    :cond_1
    move v2, v3

    .line 904
    :goto_0
    iput-boolean v2, p0, Lcom/oplus/camera/capmode/w;->mbEisHalCache:Z

    :cond_2
    if-eqz v1, :cond_4

    .line 907
    instance-of v2, v1, Ljava/lang/Integer;

    if-eqz v2, :cond_4

    .line 908
    check-cast v1, Ljava/lang/Integer;

    if-eqz v1, :cond_4

    .line 910
    iget-object v2, p0, Lcom/oplus/camera/capmode/w;->mActivity:Landroid/app/Activity;

    if-eqz v2, :cond_4

    const/4 v2, 0x2

    iget-object v4, p0, Lcom/oplus/camera/capmode/w;->mCameraInterface:Lcom/oplus/camera/capmode/a;

    .line 912
    invoke-interface {v4}, Lcom/oplus/camera/capmode/a;->g()I

    move-result v4

    if-ne v2, v4, :cond_4

    const/16 v2, 0x3ea

    .line 913
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v4

    if-eq v2, v4, :cond_3

    const/16 v2, 0x3eb

    .line 914
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    if-ne v2, v1, :cond_4

    .line 915
    :cond_3
    iget-object v1, p0, Lcom/oplus/camera/capmode/w;->mActivity:Landroid/app/Activity;

    new-instance v2, Lcom/oplus/camera/capmode/w$4;

    invoke-direct {v2, p0}, Lcom/oplus/camera/capmode/w$4;-><init>(Lcom/oplus/camera/capmode/w;)V

    invoke-virtual {v1, v2}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 924
    :cond_4
    iget-object v1, p0, Lcom/oplus/camera/capmode/w;->mCameraInterface:Lcom/oplus/camera/capmode/a;

    invoke-interface {v1}, Lcom/oplus/camera/capmode/a;->aj()I

    move-result v1

    iput v1, p0, Lcom/oplus/camera/capmode/w;->mFaceCountOnStop:I

    .line 926
    iget-boolean v1, p0, Lcom/oplus/camera/capmode/w;->mbGetDcsData:Z

    if-eqz v1, :cond_a

    .line 927
    iput-boolean v3, p0, Lcom/oplus/camera/capmode/w;->mbGetDcsData:Z

    .line 931
    invoke-static {}, Lcom/oplus/camera/util/Util;->C()Z

    move-result v1

    if-eqz v1, :cond_5

    .line 932
    sget-object v1, Lcom/oplus/camera/e/b;->U:Landroid/hardware/camera2/CaptureResult$Key;

    .line 933
    sget-object v2, Lcom/oplus/camera/e/b;->T:Landroid/hardware/camera2/CaptureResult$Key;

    goto :goto_1

    .line 935
    :cond_5
    sget-object v1, Lcom/oplus/camera/e/b;->W:Landroid/hardware/camera2/CaptureResult$Key;

    .line 936
    sget-object v2, Lcom/oplus/camera/e/b;->ah:Landroid/hardware/camera2/CaptureResult$Key;

    .line 940
    :goto_1
    :try_start_0
    invoke-static {}, Lcom/oplus/camera/util/Util;->C()Z

    move-result v4

    if-eqz v4, :cond_7

    .line 941
    invoke-virtual {p1, v1}, Landroid/hardware/camera2/CaptureResult;->get(Landroid/hardware/camera2/CaptureResult$Key;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [F

    if-eqz v1, :cond_6

    .line 943
    array-length v4, v1

    if-lez v4, :cond_6

    .line 944
    aget v1, v1, v3

    iput v1, p0, Lcom/oplus/camera/capmode/w;->mDcsLux:F

    goto :goto_2

    .line 946
    :cond_6
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "onPreviewCaptureResult, lux value: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v1}, Ljava/util/Arrays;->toString([F)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/oplus/camera/e;->a(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_2

    .line 949
    :cond_7
    invoke-virtual {p1, v1}, Landroid/hardware/camera2/CaptureResult;->get(Landroid/hardware/camera2/CaptureResult$Key;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, [I

    if-eqz v4, :cond_8

    .line 951
    array-length v5, v4

    if-lez v5, :cond_8

    .line 952
    aget v1, v4, v3

    int-to-float v1, v1

    iput v1, p0, Lcom/oplus/camera/capmode/w;->mDcsLux:F

    goto :goto_2

    .line 954
    :cond_8
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "onPreviewCaptureResult, key: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", luxIntValues: "

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 955
    invoke-static {v4}, Ljava/util/Arrays;->toString([I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 954
    invoke-static {v0, v1}, Lcom/oplus/camera/e;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 959
    :goto_2
    invoke-virtual {p1, v2}, Landroid/hardware/camera2/CaptureResult;->get(Landroid/hardware/camera2/CaptureResult$Key;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [I

    if-eqz v1, :cond_9

    .line 961
    array-length v2, v1

    if-lez v2, :cond_9

    .line 962
    aget v1, v1, v3

    iput v1, p0, Lcom/oplus/camera/capmode/w;->mDcsCCT:I

    goto :goto_3

    .line 964
    :cond_9
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onPreviewCaptureResult, cct value: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/oplus/camera/capmode/w;->mDcsCCT:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/oplus/camera/e;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 967
    :goto_3
    sget-object v1, Landroid/hardware/camera2/CaptureResult;->SENSOR_SENSITIVITY:Landroid/hardware/camera2/CaptureResult$Key;

    invoke-virtual {p1, v1}, Landroid/hardware/camera2/CaptureResult;->get(Landroid/hardware/camera2/CaptureResult$Key;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    sget-object v2, Landroid/hardware/camera2/CaptureResult;->CONTROL_POST_RAW_SENSITIVITY_BOOST:Landroid/hardware/camera2/CaptureResult$Key;

    .line 968
    invoke-virtual {p1, v2}, Landroid/hardware/camera2/CaptureResult;->get(Landroid/hardware/camera2/CaptureResult$Key;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    mul-int/2addr v1, v2

    div-int/lit8 v1, v1, 0x64

    iput v1, p0, Lcom/oplus/camera/capmode/w;->mDcsIso:I

    .line 969
    sget-object v1, Landroid/hardware/camera2/CaptureResult;->SENSOR_EXPOSURE_TIME:Landroid/hardware/camera2/CaptureResult$Key;

    invoke-virtual {p1, v1}, Landroid/hardware/camera2/CaptureResult;->get(Landroid/hardware/camera2/CaptureResult$Key;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Long;

    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    move-result-wide v1

    iput-wide v1, p0, Lcom/oplus/camera/capmode/w;->mDcsExp:J
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_4

    :catch_0
    move-exception p0

    const-string p1, "onPreviewCaptureResult, getValue error."

    .line 971
    invoke-static {v0, p1, p0}, Lcom/oplus/camera/e;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_a
    :goto_4
    return-void

    .line 892
    :cond_b
    :goto_5
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onPreviewCaptureResult, invalid totalResult : "

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Lcom/oplus/camera/e;->f(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method protected onResume(Z)V
    .locals 2

    const-string p1, "VideoMode"

    const-string v0, "onResume"

    .line 506
    invoke-static {p1, v0}, Lcom/oplus/camera/e;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 508
    iget-object p1, p0, Lcom/oplus/camera/capmode/w;->mCameraInterface:Lcom/oplus/camera/capmode/a;

    invoke-interface {p1}, Lcom/oplus/camera/capmode/a;->aF()Z

    move-result p1

    if-eqz p1, :cond_0

    const-string p1, "key_support_video_thumbnail_simultaneous"

    .line 509
    invoke-virtual {p0, p1}, Lcom/oplus/camera/capmode/w;->getSupportFunction(Ljava/lang/String;)Z

    move-result p1

    if-nez p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    iput-boolean p1, p0, Lcom/oplus/camera/capmode/w;->mbMediaLimitProcess:Z

    .line 511
    iget-boolean p1, p0, Lcom/oplus/camera/capmode/w;->mbMediaLimitProcess:Z

    if-eqz p1, :cond_1

    .line 512
    invoke-static {}, Lcom/oplus/camera/ui/control/e;->c()V

    :cond_1
    const-wide/16 v0, 0x0

    .line 515
    iput-wide v0, p0, Lcom/oplus/camera/capmode/w;->mResumePauseRecordingTotalTime:J

    .line 516
    iget-object p0, p0, Lcom/oplus/camera/capmode/w;->mHandler:Landroid/os/Handler;

    const/16 p1, 0x9

    invoke-virtual {p0, p1}, Landroid/os/Handler;->removeMessages(I)V

    return-void
.end method

.method public onScreenOffWhenLocked()V
    .locals 4

    .line 1224
    invoke-virtual {p0}, Lcom/oplus/camera/capmode/w;->isVideoRecordStarted()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/oplus/camera/capmode/w;->isVideoRecordStarting()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1225
    :cond_0
    iget-object v0, p0, Lcom/oplus/camera/capmode/w;->mActivity:Landroid/app/Activity;

    new-instance v1, Landroid/content/Intent;

    new-instance v2, Ljava/io/File;

    iget-object v3, p0, Lcom/oplus/camera/capmode/w;->mVideoFilename:Ljava/lang/String;

    invoke-direct {v2, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-static {v2}, Landroid/net/Uri;->fromFile(Ljava/io/File;)Landroid/net/Uri;

    move-result-object v2

    const-string v3, "android.intent.action.MEDIA_SCANNER_SCAN_FILE"

    invoke-direct {v1, v3, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    invoke-virtual {v0, v1}, Landroid/app/Activity;->sendBroadcast(Landroid/content/Intent;)V

    const-string v0, "VideoMode"

    const-string v1, "notifyScanVideoFile, sendBroadcast() success"

    .line 1227
    invoke-static {v0, v1}, Lcom/oplus/camera/e;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 1230
    :cond_1
    invoke-virtual {p0}, Lcom/oplus/camera/capmode/w;->isVideoRecordStopped()Z

    move-result v0

    if-nez v0, :cond_2

    .line 1231
    iget-object v0, p0, Lcom/oplus/camera/capmode/w;->mHandler:Landroid/os/Handler;

    const/16 v1, 0x9

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 1232
    iget-object p0, p0, Lcom/oplus/camera/capmode/w;->mHandler:Landroid/os/Handler;

    invoke-virtual {p0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    :cond_2
    return-void
.end method

.method public onSessionConfigured()V
    .locals 1

    .line 3825
    iget-boolean v0, p0, Lcom/oplus/camera/capmode/w;->mbMediaLimitProcess:Z

    if-eqz v0, :cond_0

    .line 3826
    invoke-static {}, Lcom/oplus/camera/ui/control/e;->d()V

    const/4 v0, 0x0

    .line 3827
    iput-boolean v0, p0, Lcom/oplus/camera/capmode/w;->mbMediaLimitProcess:Z

    :cond_0
    return-void
.end method

.method public onSharedPreferenceChanged(Landroid/content/SharedPreferences;Ljava/lang/String;)V
    .locals 16

    move-object/from16 v0, p0

    .line 4202
    invoke-super/range {p0 .. p2}, Lcom/oplus/camera/capmode/BaseMode;->onSharedPreferenceChanged(Landroid/content/SharedPreferences;Ljava/lang/String;)V

    .line 4204
    iget-object v1, v0, Lcom/oplus/camera/capmode/w;->mCameraUIInterface:Lcom/oplus/camera/ui/CameraUIInterface;

    invoke-interface {v1}, Lcom/oplus/camera/ui/CameraUIInterface;->k()Lcom/oplus/camera/ui/a/a;

    move-result-object v1

    invoke-virtual {v1}, Lcom/oplus/camera/ui/a/a;->b()Z

    move-result v1

    const-string v2, "off"

    const-string v3, "pref_camera_videoflashmode_key"

    if-eqz v1, :cond_2

    iget-object v1, v0, Lcom/oplus/camera/capmode/w;->mCameraUIInterface:Lcom/oplus/camera/ui/CameraUIInterface;

    .line 4205
    invoke-interface {v1}, Lcom/oplus/camera/ui/CameraUIInterface;->k()Lcom/oplus/camera/ui/a/a;

    move-result-object v1

    invoke-virtual {v1}, Lcom/oplus/camera/ui/a/a;->d()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 4206
    invoke-virtual/range {p0 .. p0}, Lcom/oplus/camera/capmode/w;->isVideoFlashTorchOpen()Z

    move-result v1

    if-nez v1, :cond_1

    invoke-virtual/range {p0 .. p0}, Lcom/oplus/camera/capmode/w;->isOpenFrontTorch()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual/range {p0 .. p0}, Lcom/oplus/camera/capmode/w;->getFlashMode()Ljava/lang/String;

    move-result-object v1

    const-string v4, "torch"

    invoke-virtual {v4, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_0

    .line 4209
    :cond_0
    iget-object v1, v0, Lcom/oplus/camera/capmode/w;->mOneCamera:Lcom/oplus/camera/e/d;

    if-eqz v1, :cond_2

    iget-object v1, v0, Lcom/oplus/camera/capmode/w;->mOneCamera:Lcom/oplus/camera/e/d;

    invoke-interface {v1}, Lcom/oplus/camera/e/d;->q()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    .line 4210
    iget-object v4, v0, Lcom/oplus/camera/capmode/w;->mCameraUIInterface:Lcom/oplus/camera/ui/CameraUIInterface;

    const v5, 0x7f1005b0

    const/4 v6, -0x1

    const/4 v7, 0x1

    const/4 v8, 0x1

    const/4 v9, 0x0

    invoke-interface/range {v4 .. v9}, Lcom/oplus/camera/ui/CameraUIInterface;->a(IIZZZ)V

    goto :goto_1

    .line 4207
    :cond_1
    :goto_0
    iget-object v10, v0, Lcom/oplus/camera/capmode/w;->mCameraUIInterface:Lcom/oplus/camera/ui/CameraUIInterface;

    const v11, 0x7f1005b2

    const/4 v12, -0x1

    const/4 v13, 0x1

    const/4 v14, 0x1

    const/4 v15, 0x0

    invoke-interface/range {v10 .. v15}, Lcom/oplus/camera/ui/CameraUIInterface;->a(IIZZZ)V

    .line 4215
    :cond_2
    :goto_1
    iget-object v1, v0, Lcom/oplus/camera/capmode/w;->mCameraUIInterface:Lcom/oplus/camera/ui/CameraUIInterface;

    invoke-interface {v1}, Lcom/oplus/camera/ui/CameraUIInterface;->k()Lcom/oplus/camera/ui/a/a;

    move-result-object v1

    const-string v4, "pref_slow_video_size_key"

    invoke-virtual {v1, v4}, Lcom/oplus/camera/ui/a/a;->a(Ljava/lang/String;)Z

    move-result v1

    const/4 v4, 0x1

    const/4 v5, 0x0

    if-nez v1, :cond_4

    iget-object v1, v0, Lcom/oplus/camera/capmode/w;->mCameraUIInterface:Lcom/oplus/camera/ui/CameraUIInterface;

    .line 4216
    invoke-interface {v1}, Lcom/oplus/camera/ui/CameraUIInterface;->k()Lcom/oplus/camera/ui/a/a;

    move-result-object v1

    const-string v6, "pref_fast_video_size_key"

    invoke-virtual {v1, v6}, Lcom/oplus/camera/ui/a/a;->a(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_4

    iget-object v1, v0, Lcom/oplus/camera/capmode/w;->mCameraUIInterface:Lcom/oplus/camera/ui/CameraUIInterface;

    .line 4217
    invoke-interface {v1}, Lcom/oplus/camera/ui/CameraUIInterface;->k()Lcom/oplus/camera/ui/a/a;

    move-result-object v1

    const-string v6, "pref_video_size_key"

    invoke-virtual {v1, v6}, Lcom/oplus/camera/ui/a/a;->a(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_3

    goto :goto_3

    :cond_3
    :goto_2
    move-object/from16 v1, p2

    goto/16 :goto_8

    .line 4218
    :cond_4
    :goto_3
    invoke-virtual/range {p0 .. p0}, Lcom/oplus/camera/capmode/w;->getVideoSizeType()Ljava/lang/String;

    move-result-object v1

    .line 4221
    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v6

    const/4 v7, 0x3

    const/4 v8, 0x2

    const/4 v9, -0x1

    sparse-switch v6, :sswitch_data_0

    goto :goto_4

    :sswitch_0
    const-string v6, "video_size_4kuhd"

    invoke-virtual {v1, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_5

    move v1, v4

    goto :goto_5

    :sswitch_1
    const-string v6, "video_size_1080p"

    invoke-virtual {v1, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_5

    move v1, v8

    goto :goto_5

    :sswitch_2
    const-string v6, "video_size_8k"

    invoke-virtual {v1, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_5

    move v1, v5

    goto :goto_5

    :sswitch_3
    const-string v6, "video_size_720p"

    invoke-virtual {v1, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_5

    move v1, v7

    goto :goto_5

    :cond_5
    :goto_4
    move v1, v9

    :goto_5
    if-eqz v1, :cond_9

    if-eq v1, v4, :cond_8

    if-eq v1, v8, :cond_7

    if-eq v1, v7, :cond_6

    move v11, v9

    goto :goto_7

    :cond_6
    const v1, 0x7f1005ca

    goto :goto_6

    :cond_7
    const v1, 0x7f1005c8

    goto :goto_6

    :cond_8
    const v1, 0x7f1005c9

    goto :goto_6

    :cond_9
    const v1, 0x7f1005cb

    :goto_6
    move v11, v1

    :goto_7
    if-eq v9, v11, :cond_3

    .line 4243
    iget-object v10, v0, Lcom/oplus/camera/capmode/w;->mCameraUIInterface:Lcom/oplus/camera/ui/CameraUIInterface;

    const/4 v12, -0x1

    const/4 v13, 0x1

    const/4 v14, 0x0

    const/4 v15, 0x0

    invoke-interface/range {v10 .. v15}, Lcom/oplus/camera/ui/CameraUIInterface;->a(IIZZZ)V

    goto :goto_2

    .line 4248
    :goto_8
    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_b

    .line 4249
    invoke-virtual/range {p0 .. p0}, Lcom/oplus/camera/capmode/w;->isVideoFlashTorchOpen()Z

    move-result v1

    if-eqz v1, :cond_b

    iget-object v1, v0, Lcom/oplus/camera/capmode/w;->mPreferences:Landroid/content/SharedPreferences;

    const-string v3, "pref_super_eis_wide_key"

    .line 4250
    invoke-interface {v1, v3, v5}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    if-eqz v1, :cond_b

    const-string v1, "pref_video_super_eis_key"

    move-object/from16 v6, p1

    .line 4251
    invoke-interface {v6, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "on"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_b

    const-string v1, "com.oplus.feature.flash.full.zoom.support"

    .line 4252
    invoke-static {v1}, Lcom/oplus/camera/aps/config/CameraConfig;->getConfigBooleanValue(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_b

    .line 4253
    iget-object v1, v0, Lcom/oplus/camera/capmode/w;->mCameraInterface:Lcom/oplus/camera/capmode/a;

    invoke-interface {v1, v4}, Lcom/oplus/camera/capmode/a;->c(Z)V

    .line 4255
    iget-object v1, v0, Lcom/oplus/camera/capmode/w;->mPreferences:Landroid/content/SharedPreferences;

    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    invoke-interface {v1, v3, v5}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->apply()V

    const-string v1, "com.oplus.feature.video.super.eis.wide.60fps.support"

    .line 4257
    invoke-static {v1}, Lcom/oplus/camera/aps/config/CameraConfig;->getConfigBooleanValue(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_a

    .line 4258
    iget-object v1, v0, Lcom/oplus/camera/capmode/w;->mPreferences:Landroid/content/SharedPreferences;

    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    const/16 v2, 0x3c

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    const-string v3, "pref_video_fps_key"

    invoke-interface {v1, v3, v2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 4261
    :cond_a
    iget-object v0, v0, Lcom/oplus/camera/capmode/w;->mCameraInterface:Lcom/oplus/camera/capmode/a;

    invoke-interface {v0, v5}, Lcom/oplus/camera/capmode/a;->c(Z)V

    :cond_b
    return-void

    nop

    :sswitch_data_0
    .sparse-switch
        -0x68b69aeb -> :sswitch_3
        -0x9b2ef93 -> :sswitch_2
        0x518dde7f -> :sswitch_1
        0x51d3e2a0 -> :sswitch_0
    .end sparse-switch
.end method

.method public onSingleTapUp(Landroid/view/MotionEvent;)Z
    .locals 3

    .line 4439
    invoke-virtual {p0}, Lcom/oplus/camera/capmode/w;->getCurrentScreenMode()Lcom/oplus/camera/screen/b/a;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 4441
    invoke-virtual {v0}, Lcom/oplus/camera/screen/b/a;->r()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/oplus/camera/capmode/w;->mCameraUIInterface:Lcom/oplus/camera/ui/CameraUIInterface;

    if-eqz v0, :cond_0

    .line 4442
    iget-object v0, p0, Lcom/oplus/camera/capmode/w;->mCameraUIInterface:Lcom/oplus/camera/ui/CameraUIInterface;

    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-interface {v0, v2, v2, v1, v1}, Lcom/oplus/camera/ui/CameraUIInterface;->b(ZZZZ)V

    .line 4445
    :cond_0
    invoke-super {p0, p1}, Lcom/oplus/camera/capmode/BaseMode;->onSingleTapUp(Landroid/view/MotionEvent;)Z

    move-result p0

    return p0
.end method

.method protected onStop()V
    .locals 0

    return-void
.end method

.method protected onStopVideoRecording(Z)V
    .locals 4

    .line 1695
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onStopVideoRecording, checkRecordTime: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "VideoMode"

    invoke-static {v0, p1}, Lcom/oplus/camera/e;->a(Ljava/lang/String;Ljava/lang/String;)V

    const/4 p1, 0x0

    .line 1697
    iput-boolean p1, p0, Lcom/oplus/camera/capmode/w;->mbStartFailue:Z

    .line 1698
    iget-object v0, p0, Lcom/oplus/camera/capmode/w;->mPreferences:Landroid/content/SharedPreferences;

    const-string v1, "key_cur_temperature"

    const/high16 v2, -0x40800000    # -1.0f

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getFloat(Ljava/lang/String;F)F

    move-result v0

    iput v0, p0, Lcom/oplus/camera/capmode/w;->mRecordingEndTemperature:F

    .line 1701
    iget-boolean v0, p0, Lcom/oplus/camera/capmode/w;->mbPaused:Z

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/oplus/camera/capmode/w;->mOneCamera:Lcom/oplus/camera/e/d;

    if-eqz v0, :cond_1

    .line 1703
    invoke-static {}, Lcom/oplus/camera/util/Util;->C()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1704
    invoke-virtual {p0}, Lcom/oplus/camera/capmode/w;->isHFR()Z

    move-result v0

    if-nez v0, :cond_1

    .line 1705
    :cond_0
    iget-object v0, p0, Lcom/oplus/camera/capmode/w;->mOneCamera:Lcom/oplus/camera/e/d;

    invoke-interface {v0, p1}, Lcom/oplus/camera/e/d;->A(I)V

    .line 1708
    :cond_1
    iget-boolean v0, p0, Lcom/oplus/camera/capmode/w;->mbPaused:Z

    const/4 v1, 0x3

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/oplus/camera/capmode/w;->mCameraInterface:Lcom/oplus/camera/capmode/a;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/oplus/camera/capmode/w;->mCameraInterface:Lcom/oplus/camera/capmode/a;

    .line 1710
    invoke-interface {v0}, Lcom/oplus/camera/capmode/a;->i()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 1711
    invoke-virtual {p0}, Lcom/oplus/camera/capmode/w;->supportParameterAdjust()Z

    move-result v0

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/oplus/camera/capmode/w;->mOneCamera:Lcom/oplus/camera/e/d;

    if-eqz v0, :cond_2

    .line 1713
    iget-object v0, p0, Lcom/oplus/camera/capmode/w;->mCameraInterface:Lcom/oplus/camera/capmode/a;

    invoke-interface {v0}, Lcom/oplus/camera/capmode/a;->ac()V

    .line 1714
    iget-object v0, p0, Lcom/oplus/camera/capmode/w;->mCameraInterface:Lcom/oplus/camera/capmode/a;

    invoke-interface {v0, p1, p1}, Lcom/oplus/camera/capmode/a;->b(ZZ)V

    .line 1715
    iget-object p1, p0, Lcom/oplus/camera/capmode/w;->mOneCamera:Lcom/oplus/camera/e/d;

    invoke-static {}, Lcom/oplus/camera/a;->b()[Landroid/hardware/camera2/params/MeteringRectangle;

    move-result-object v0

    .line 1716
    invoke-static {}, Lcom/oplus/camera/a;->b()[Landroid/hardware/camera2/params/MeteringRectangle;

    move-result-object v2

    const/4 v3, 0x1

    .line 1715
    invoke-interface {p1, v1, v0, v2, v3}, Lcom/oplus/camera/e/d;->a(I[Landroid/hardware/camera2/params/MeteringRectangle;[Landroid/hardware/camera2/params/MeteringRectangle;Z)V

    .line 1717
    iget-object p1, p0, Lcom/oplus/camera/capmode/w;->mOneCamera:Lcom/oplus/camera/e/d;

    const/4 v0, 0x0

    invoke-interface {p1, v0}, Lcom/oplus/camera/e/d;->a(Lcom/oplus/camera/e/d$c;)V

    :cond_2
    const-string p1, "video_save"

    .line 1720
    invoke-static {p1}, Lcom/oplus/camera/perf/b;->a(Ljava/lang/String;)V

    .line 1722
    invoke-virtual {p0, v1}, Lcom/oplus/camera/capmode/w;->setVideoRecordState(I)V

    .line 1724
    iget-object p1, p0, Lcom/oplus/camera/capmode/w;->mHandler:Landroid/os/Handler;

    if-eqz p1, :cond_3

    const/4 v0, 0x7

    invoke-virtual {p1, v0}, Landroid/os/Handler;->hasMessages(I)Z

    move-result p1

    if-eqz p1, :cond_3

    .line 1725
    iget-object p1, p0, Lcom/oplus/camera/capmode/w;->mHandler:Landroid/os/Handler;

    invoke-virtual {p1, v0}, Landroid/os/Handler;->removeMessages(I)V

    .line 1728
    :cond_3
    iget-object p1, p0, Lcom/oplus/camera/capmode/w;->mCameraInterface:Lcom/oplus/camera/capmode/a;

    if-eqz p1, :cond_4

    .line 1729
    iget-object p1, p0, Lcom/oplus/camera/capmode/w;->mCameraInterface:Lcom/oplus/camera/capmode/a;

    invoke-interface {p1}, Lcom/oplus/camera/capmode/a;->ay()Z

    move-result p1

    if-nez p1, :cond_4

    .line 1730
    iget-object p1, p0, Lcom/oplus/camera/capmode/w;->mCameraInterface:Lcom/oplus/camera/capmode/a;

    invoke-interface {p1}, Lcom/oplus/camera/capmode/a;->N()V

    .line 1734
    :cond_4
    iget-object p1, p0, Lcom/oplus/camera/capmode/w;->mRecordSig:Landroid/os/ConditionVariable;

    invoke-virtual {p1}, Landroid/os/ConditionVariable;->close()V

    .line 1736
    iget-object p1, p0, Lcom/oplus/camera/capmode/w;->mHandler:Landroid/os/Handler;

    if-eqz p1, :cond_5

    const/4 v0, 0x6

    invoke-virtual {p1, v0}, Landroid/os/Handler;->hasMessages(I)Z

    move-result p1

    if-eqz p1, :cond_5

    .line 1737
    iget-object p1, p0, Lcom/oplus/camera/capmode/w;->mHandler:Landroid/os/Handler;

    invoke-virtual {p1, v0}, Landroid/os/Handler;->removeMessages(I)V

    .line 1740
    :cond_5
    iget-object p1, p0, Lcom/oplus/camera/capmode/w;->mHandler:Landroid/os/Handler;

    if-eqz p1, :cond_6

    const/16 v0, 0xd

    invoke-virtual {p1, v0}, Landroid/os/Handler;->hasMessages(I)Z

    move-result p1

    if-eqz p1, :cond_6

    .line 1741
    iget-object p1, p0, Lcom/oplus/camera/capmode/w;->mHandler:Landroid/os/Handler;

    invoke-virtual {p1, v0}, Landroid/os/Handler;->removeMessages(I)V

    .line 1744
    :cond_6
    iget-object p1, p0, Lcom/oplus/camera/capmode/w;->mBrightnessAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->cancel()V

    .line 1746
    iget-object p1, p0, Lcom/oplus/camera/capmode/w;->mCameraInterface:Lcom/oplus/camera/capmode/a;

    if-eqz p1, :cond_8

    .line 1747
    invoke-virtual {p0}, Lcom/oplus/camera/capmode/w;->needVideoPipeline()Z

    move-result p1

    if-eqz p1, :cond_8

    .line 1748
    invoke-direct {p0}, Lcom/oplus/camera/capmode/w;->isHalEisCache()Z

    move-result p1

    if-nez p1, :cond_8

    .line 1749
    invoke-virtual {p0}, Lcom/oplus/camera/capmode/w;->isSlowVideoHighFrame()Z

    move-result p1

    if-nez p1, :cond_7

    invoke-virtual {p0}, Lcom/oplus/camera/capmode/w;->isHyperLapseOpen()Z

    move-result p1

    if-eqz p1, :cond_8

    .line 1750
    :cond_7
    iget-object p1, p0, Lcom/oplus/camera/capmode/w;->mOneCamera:Lcom/oplus/camera/e/d;

    invoke-interface {p1}, Lcom/oplus/camera/e/d;->z()V

    .line 1754
    :cond_8
    iget-object p1, p0, Lcom/oplus/camera/capmode/w;->mRecordHandler:Landroid/os/Handler;

    if-eqz p1, :cond_9

    const-string p1, "key_intelligent_high_frame_usage_key"

    .line 1755
    invoke-virtual {p0, p1}, Lcom/oplus/camera/capmode/w;->getSupportFunction(Ljava/lang/String;)Z

    move-result p1

    if-nez p1, :cond_9

    .line 1756
    invoke-virtual {p0}, Lcom/oplus/camera/capmode/w;->isHyperLapseOpen()Z

    move-result p1

    if-nez p1, :cond_9

    .line 1757
    iget-object p1, p0, Lcom/oplus/camera/capmode/w;->mRecordHandler:Landroid/os/Handler;

    const/4 v0, 0x2

    invoke-virtual {p1, v0}, Landroid/os/Handler;->removeMessages(I)V

    .line 1758
    iget-object p1, p0, Lcom/oplus/camera/capmode/w;->mRecordHandler:Landroid/os/Handler;

    invoke-virtual {p1, v0}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 1761
    :cond_9
    iget-object p1, p0, Lcom/oplus/camera/capmode/w;->mCameraInterface:Lcom/oplus/camera/capmode/a;

    if-eqz p1, :cond_a

    .line 1762
    iget-object p0, p0, Lcom/oplus/camera/capmode/w;->mCameraInterface:Lcom/oplus/camera/capmode/a;

    invoke-interface {p0}, Lcom/oplus/camera/capmode/a;->M()V

    .line 1765
    :cond_a
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide p0

    invoke-static {p0, p1}, Lcom/oplus/camera/perf/FluencyPerformance;->e(J)V

    return-void
.end method

.method public onVideoRecordingFail()V
    .locals 2

    const-string v0, "VideoMode"

    const-string v1, "onVideoRecordingFail"

    .line 1883
    invoke-static {v0, v1}, Lcom/oplus/camera/e;->f(Ljava/lang/String;Ljava/lang/String;)V

    .line 1885
    iget-object v1, p0, Lcom/oplus/camera/capmode/w;->mCameraInterface:Lcom/oplus/camera/capmode/a;

    if-eqz v1, :cond_0

    .line 1886
    iget-object p0, p0, Lcom/oplus/camera/capmode/w;->mCameraInterface:Lcom/oplus/camera/capmode/a;

    const/4 v0, 0x1

    invoke-interface {p0, v0}, Lcom/oplus/camera/capmode/a;->f(Z)V

    goto :goto_0

    :cond_0
    const-string p0, "onVideoRecordingFail, mCameraInterface is null"

    .line 1888
    invoke-static {v0, p0}, Lcom/oplus/camera/e;->f(Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    return-void
.end method

.method public onVideoRecordingPause()Z
    .locals 7

    const-string v0, "VideoMode"

    const-string v1, "onVideoRecordingPause"

    .line 1291
    invoke-static {v0, v1}, Lcom/oplus/camera/e;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 1293
    invoke-virtual {p0}, Lcom/oplus/camera/capmode/w;->isVideoRecordStarted()Z

    move-result v1

    const/4 v2, 0x0

    if-nez v1, :cond_0

    const-string p0, "onVideoRecordingPause, VideoRecord is not started, so return"

    .line 1294
    invoke-static {v0, p0}, Lcom/oplus/camera/e;->a(Ljava/lang/String;Ljava/lang/String;)V

    return v2

    .line 1299
    :cond_0
    iget-wide v3, p0, Lcom/oplus/camera/capmode/w;->mRecordingTotalTime:J

    const/4 v1, 0x1

    invoke-virtual {p0, v1}, Lcom/oplus/camera/capmode/w;->getRecordingMinTime(Z)I

    move-result v5

    int-to-long v5, v5

    cmp-long v3, v3, v5

    if-gez v3, :cond_1

    const-string p0, "onVideoRecordingPause, mRecordingTotalTime less then 1s, so return"

    .line 1300
    invoke-static {v0, p0}, Lcom/oplus/camera/e;->a(Ljava/lang/String;Ljava/lang/String;)V

    return v2

    .line 1305
    :cond_1
    iget-object v0, p0, Lcom/oplus/camera/capmode/w;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 1306
    iget-object v0, p0, Lcom/oplus/camera/capmode/w;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 1309
    :cond_2
    iget-object v0, p0, Lcom/oplus/camera/capmode/w;->mCameraUIInterface:Lcom/oplus/camera/ui/CameraUIInterface;

    invoke-interface {v0, v2}, Lcom/oplus/camera/ui/CameraUIInterface;->e(Z)V

    .line 1310
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v2

    iput-wide v2, p0, Lcom/oplus/camera/capmode/w;->mLastPausingTime:J

    .line 1314
    invoke-virtual {p0}, Lcom/oplus/camera/capmode/w;->isHyperLapseOpen()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 1315
    iget-object p0, p0, Lcom/oplus/camera/capmode/w;->mOneCamera:Lcom/oplus/camera/e/d;

    invoke-interface {p0}, Lcom/oplus/camera/e/d;->A()V

    return v1

    .line 1319
    :cond_3
    iget v0, p0, Lcom/oplus/camera/capmode/w;->mPauseClickTimes:I

    add-int/2addr v0, v1

    iput v0, p0, Lcom/oplus/camera/capmode/w;->mPauseClickTimes:I

    .line 1320
    invoke-direct {p0}, Lcom/oplus/camera/capmode/w;->reportPauseClickMsg()V

    .line 1322
    iget-object v0, p0, Lcom/oplus/camera/capmode/w;->mVideoRecorder:Lcom/oplus/camera/capmode/x;

    invoke-virtual {v0}, Lcom/oplus/camera/capmode/x;->g()Z

    move-result v0

    .line 1324
    invoke-virtual {p0}, Lcom/oplus/camera/capmode/w;->isUseMediaCodec()Z

    move-result v1

    if-nez v1, :cond_4

    .line 1325
    iget-object p0, p0, Lcom/oplus/camera/capmode/w;->mOneCamera:Lcom/oplus/camera/e/d;

    invoke-interface {p0}, Lcom/oplus/camera/e/d;->A()V

    :cond_4
    return v0
.end method

.method public onVideoRecordingResume()Z
    .locals 8

    const-string v0, "VideoMode"

    const-string v1, "onVideoRecordingResume"

    .line 1346
    invoke-static {v0, v1}, Lcom/oplus/camera/e;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 1348
    invoke-virtual {p0}, Lcom/oplus/camera/capmode/w;->isVideoRecordStarted()Z

    move-result v1

    if-nez v1, :cond_0

    const-string p0, "onVideoRecordingResume, VideoRecord is not started, so return"

    .line 1349
    invoke-static {v0, p0}, Lcom/oplus/camera/e;->a(Ljava/lang/String;Ljava/lang/String;)V

    const/4 p0, 0x0

    return p0

    .line 1354
    :cond_0
    iget-object v0, p0, Lcom/oplus/camera/capmode/w;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 1355
    iget-object v0, p0, Lcom/oplus/camera/capmode/w;->mCameraUIInterface:Lcom/oplus/camera/ui/CameraUIInterface;

    invoke-interface {v0, v1}, Lcom/oplus/camera/ui/CameraUIInterface;->e(Z)V

    .line 1356
    iget-wide v2, p0, Lcom/oplus/camera/capmode/w;->mTotalPausingTime:J

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v4

    iget-wide v6, p0, Lcom/oplus/camera/capmode/w;->mLastPausingTime:J

    sub-long/2addr v4, v6

    add-long/2addr v2, v4

    iput-wide v2, p0, Lcom/oplus/camera/capmode/w;->mTotalPausingTime:J

    const-wide/16 v2, 0x0

    .line 1357
    iput-wide v2, p0, Lcom/oplus/camera/capmode/w;->mLastPausingTime:J

    .line 1359
    invoke-virtual {p0}, Lcom/oplus/camera/capmode/w;->isHyperLapseOpen()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1360
    iget-object p0, p0, Lcom/oplus/camera/capmode/w;->mOneCamera:Lcom/oplus/camera/e/d;

    invoke-interface {p0}, Lcom/oplus/camera/e/d;->B()V

    return v1

    .line 1364
    :cond_1
    iget-object v0, p0, Lcom/oplus/camera/capmode/w;->mVideoRecorder:Lcom/oplus/camera/capmode/x;

    invoke-virtual {v0}, Lcom/oplus/camera/capmode/x;->f()Z

    move-result v0

    .line 1366
    invoke-virtual {p0}, Lcom/oplus/camera/capmode/w;->isUseMediaCodec()Z

    move-result v1

    if-nez v1, :cond_2

    .line 1367
    iget-object p0, p0, Lcom/oplus/camera/capmode/w;->mOneCamera:Lcom/oplus/camera/e/d;

    invoke-interface {p0}, Lcom/oplus/camera/e/d;->B()V

    :cond_2
    return v0
.end method

.method public onVideoRetakeButtonClick()V
    .locals 0

    return-void
.end method

.method public onVideoShutterButtonClick()V
    .locals 8

    .line 1115
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onVideoShutterButtonClick, mMediaRecorderState: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/oplus/camera/capmode/w;->mMediaRecorderState:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", mCameraInterface.isAnimationRunning: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/oplus/camera/capmode/w;->mCameraInterface:Lcom/oplus/camera/capmode/a;

    .line 1116
    invoke-interface {v1}, Lcom/oplus/camera/capmode/a;->R()Z

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "VideoMode"

    .line 1115
    invoke-static {v1, v0}, Lcom/oplus/camera/e;->f(Ljava/lang/String;Ljava/lang/String;)V

    .line 1118
    iget-boolean v0, p0, Lcom/oplus/camera/capmode/w;->mbPaused:Z

    if-nez v0, :cond_e

    iget-object v0, p0, Lcom/oplus/camera/capmode/w;->mCameraInterface:Lcom/oplus/camera/capmode/a;

    .line 1119
    invoke-interface {v0}, Lcom/oplus/camera/capmode/a;->g()I

    move-result v0

    const/4 v2, 0x1

    if-ne v0, v2, :cond_e

    iget-object v0, p0, Lcom/oplus/camera/capmode/w;->mCameraInterface:Lcom/oplus/camera/capmode/a;

    .line 1120
    invoke-interface {v0}, Lcom/oplus/camera/capmode/a;->R()Z

    move-result v0

    if-nez v0, :cond_e

    iget-object v0, p0, Lcom/oplus/camera/capmode/w;->mCameraInterface:Lcom/oplus/camera/capmode/a;

    .line 1121
    invoke-interface {v0}, Lcom/oplus/camera/capmode/a;->S()Z

    move-result v0

    if-nez v0, :cond_e

    iget-object v0, p0, Lcom/oplus/camera/capmode/w;->mCameraInterface:Lcom/oplus/camera/capmode/a;

    .line 1122
    invoke-interface {v0}, Lcom/oplus/camera/capmode/a;->E()Z

    move-result v0

    if-eqz v0, :cond_0

    goto/16 :goto_3

    .line 1131
    :cond_0
    invoke-virtual {p0}, Lcom/oplus/camera/capmode/w;->isMultiVideoMode()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/oplus/camera/capmode/w;->mCameraUIInterface:Lcom/oplus/camera/ui/CameraUIInterface;

    invoke-interface {v0}, Lcom/oplus/camera/ui/CameraUIInterface;->aW()Z

    move-result v0

    if-nez v0, :cond_1

    const-string p0, "onVideoShutterButtonClick, multi video is not prepared yet"

    .line 1132
    invoke-static {v1, p0}, Lcom/oplus/camera/e;->a(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_1
    const-string v0, "key_bubble_type_ai_enhancement_video"

    .line 1137
    invoke-virtual {p0, v0}, Lcom/oplus/camera/capmode/w;->isBubbleOpen(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 1138
    iget-object v0, p0, Lcom/oplus/camera/capmode/w;->mCameraUIInterface:Lcom/oplus/camera/ui/CameraUIInterface;

    const/4 v3, 0x7

    invoke-interface {v0, v3, v2}, Lcom/oplus/camera/ui/CameraUIInterface;->f(IZ)V

    .line 1141
    :cond_2
    iget-object v0, p0, Lcom/oplus/camera/capmode/w;->mCameraInterface:Lcom/oplus/camera/capmode/a;

    invoke-interface {v0}, Lcom/oplus/camera/capmode/a;->F()Z

    move-result v0

    if-eqz v0, :cond_3

    const-string p0, "onVideoShutterButtonClick, being capture mode change!"

    .line 1142
    invoke-static {v1, p0}, Lcom/oplus/camera/e;->a(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    .line 1147
    :cond_3
    sget v0, Lcom/oplus/camera/Storage;->w:I

    if-eqz v0, :cond_4

    .line 1148
    iget-object p0, p0, Lcom/oplus/camera/capmode/w;->mCameraUIInterface:Lcom/oplus/camera/ui/CameraUIInterface;

    invoke-interface {p0}, Lcom/oplus/camera/ui/CameraUIInterface;->t()V

    return-void

    .line 1152
    :cond_4
    invoke-virtual {p0}, Lcom/oplus/camera/capmode/w;->isVideoRecording()Z

    move-result v0

    if-nez v0, :cond_5

    iget-object v0, p0, Lcom/oplus/camera/capmode/w;->mCameraInterface:Lcom/oplus/camera/capmode/a;

    invoke-interface {v0}, Lcom/oplus/camera/capmode/a;->P()Z

    move-result v0

    if-nez v0, :cond_5

    const-string v0, "onVideoShutterButtonClick, memory or storage is not enough"

    .line 1153
    invoke-static {v1, v0}, Lcom/oplus/camera/e;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 1155
    iget-object v2, p0, Lcom/oplus/camera/capmode/w;->mCameraUIInterface:Lcom/oplus/camera/ui/CameraUIInterface;

    const v3, 0x7f100474

    const/4 v4, -0x1

    const/4 v5, 0x1

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-interface/range {v2 .. v7}, Lcom/oplus/camera/ui/CameraUIInterface;->a(IIZZZ)V

    const-string v0, "disable_code"

    const-string v1, "memory_capture"

    .line 1157
    invoke-virtual {p0, v0, v1}, Lcom/oplus/camera/capmode/w;->reportReminderToDcs(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    .line 1161
    :cond_5
    invoke-virtual {p0}, Lcom/oplus/camera/capmode/w;->isVideoRecordStarting()Z

    move-result v0

    if-nez v0, :cond_d

    iget-object v0, p0, Lcom/oplus/camera/capmode/w;->mHandler:Landroid/os/Handler;

    const/4 v3, 0x5

    invoke-virtual {v0, v3}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v0

    if-eqz v0, :cond_6

    goto :goto_2

    .line 1167
    :cond_6
    invoke-direct {p0}, Lcom/oplus/camera/capmode/w;->recDisabledReturn()Z

    move-result v0

    if-eqz v0, :cond_7

    return-void

    .line 1171
    :cond_7
    iget-boolean v0, p0, Lcom/oplus/camera/capmode/w;->mbRecordAudio:Z

    if-eqz v0, :cond_a

    iget-object v0, p0, Lcom/oplus/camera/capmode/w;->mActivity:Landroid/app/Activity;

    const-string v3, "android.permission.RECORD_AUDIO"

    .line 1172
    invoke-virtual {v0, v3}, Landroid/app/Activity;->checkSelfPermission(Ljava/lang/String;)I

    move-result v0

    if-eqz v0, :cond_a

    const-string v0, "onVideoShutterButtonClick, permission not granted"

    .line 1173
    invoke-static {v1, v0}, Lcom/oplus/camera/e;->f(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x0

    .line 1174
    invoke-virtual {p0, v0}, Lcom/oplus/camera/capmode/w;->setHalStatus(I)V

    .line 1176
    invoke-static {}, Lcom/oplus/camera/util/Util;->ak()Z

    move-result v0

    if-eqz v0, :cond_9

    .line 1177
    iget-object v0, p0, Lcom/oplus/camera/capmode/w;->mPGDialog:Landroidx/appcompat/app/f;

    if-eqz v0, :cond_8

    invoke-virtual {v0}, Landroidx/appcompat/app/f;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_8

    .line 1178
    iget-object v0, p0, Lcom/oplus/camera/capmode/w;->mPGDialog:Landroidx/appcompat/app/f;

    invoke-virtual {v0}, Landroidx/appcompat/app/f;->dismiss()V

    .line 1181
    :cond_8
    iget-object v0, p0, Lcom/oplus/camera/capmode/w;->mActivity:Landroid/app/Activity;

    new-instance v1, Lcom/oplus/camera/capmode/w$5;

    invoke-direct {v1, p0}, Lcom/oplus/camera/capmode/w$5;-><init>(Lcom/oplus/camera/capmode/w;)V

    invoke-static {v0, v3, v1}, Lcom/oplus/camera/util/g;->a(Landroid/app/Activity;Ljava/lang/String;Lcom/oplus/camera/util/g$b;)V

    goto :goto_0

    .line 1200
    :cond_9
    iget-object p0, p0, Lcom/oplus/camera/capmode/w;->mActivity:Landroid/app/Activity;

    filled-new-array {v3}, [Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x2

    invoke-virtual {p0, v0, v1}, Landroid/app/Activity;->requestPermissions([Ljava/lang/String;I)V

    :goto_0
    return-void

    :cond_a
    const-string v0, "onVideoShutterButtonClick, CameraTest Click Video Button"

    .line 1207
    invoke-static {v1, v0}, Lcom/oplus/camera/e;->f(Ljava/lang/String;Ljava/lang/String;)V

    .line 1209
    invoke-virtual {p0}, Lcom/oplus/camera/capmode/w;->isVideoRecordStarted()Z

    move-result v0

    if-eqz v0, :cond_b

    .line 1210
    invoke-virtual {p0, v2}, Lcom/oplus/camera/capmode/w;->onStopVideoRecording(Z)V

    goto :goto_1

    .line 1211
    :cond_b
    invoke-virtual {p0}, Lcom/oplus/camera/capmode/w;->isVideoRecordStopped()Z

    move-result v0

    if-eqz v0, :cond_c

    const-string v0, "start_video_record"

    .line 1212
    invoke-static {v0}, Lcom/oplus/camera/perf/b;->a(Ljava/lang/String;)V

    .line 1214
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iget-wide v2, p0, Lcom/oplus/camera/capmode/w;->mPreviewOkTime:J

    sub-long/2addr v0, v2

    iput-wide v0, p0, Lcom/oplus/camera/capmode/w;->mPreviewVideoCostTime:J

    .line 1215
    invoke-direct {p0}, Lcom/oplus/camera/capmode/w;->startVideoRecording()V

    :cond_c
    :goto_1
    return-void

    :cond_d
    :goto_2
    const-string p0, "onVideoShutterButtonClick, starting or error processing"

    .line 1162
    invoke-static {v1, p0}, Lcom/oplus/camera/e;->e(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    .line 1123
    :cond_e
    :goto_3
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onVideoShutterButtonClick, mbPaused: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v2, p0, Lcom/oplus/camera/capmode/w;->mbPaused:Z

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, ", CameraState: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/oplus/camera/capmode/w;->mCameraInterface:Lcom/oplus/camera/capmode/a;

    .line 1124
    invoke-interface {v2}, Lcom/oplus/camera/capmode/a;->g()I

    move-result v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", isAnimationRunning: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/oplus/camera/capmode/w;->mCameraInterface:Lcom/oplus/camera/capmode/a;

    invoke-interface {v2}, Lcom/oplus/camera/capmode/a;->R()Z

    move-result v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, ", isBlurAnimRunning: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/oplus/camera/capmode/w;->mCameraInterface:Lcom/oplus/camera/capmode/a;

    .line 1125
    invoke-interface {v2}, Lcom/oplus/camera/capmode/a;->S()Z

    move-result v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, ", mCameraInterface.getSwitchingCameraState: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/oplus/camera/capmode/w;->mCameraInterface:Lcom/oplus/camera/capmode/a;

    .line 1126
    invoke-interface {p0}, Lcom/oplus/camera/capmode/a;->E()Z

    move-result p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    .line 1123
    invoke-static {v1, p0}, Lcom/oplus/camera/e;->f(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public onVideoTemperatureThresholdChanged(I)V
    .locals 7

    .line 4362
    invoke-virtual {p0}, Lcom/oplus/camera/capmode/w;->isVideoRecording()Z

    move-result v0

    .line 4364
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onVideoTemperatureThresholdChanged, thresholdLevel: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", isVideoRecording: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "VideoMode"

    invoke-static {v2, v1}, Lcom/oplus/camera/e;->a(Ljava/lang/String;Ljava/lang/String;)V

    if-eqz v0, :cond_0

    .line 4367
    iget-object v0, p0, Lcom/oplus/camera/capmode/w;->mCameraInterface:Lcom/oplus/camera/capmode/a;

    .line 4368
    invoke-interface {v0}, Lcom/oplus/camera/capmode/a;->k()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    if-ne v0, p1, :cond_0

    .line 4370
    iget-object v1, p0, Lcom/oplus/camera/capmode/w;->mCameraUIInterface:Lcom/oplus/camera/ui/CameraUIInterface;

    const v2, 0x7f100407

    const/4 v3, -0x1

    const/4 v4, 0x1

    const/4 v5, 0x0

    const/4 v6, 0x0

    invoke-interface/range {v1 .. v6}, Lcom/oplus/camera/ui/CameraUIInterface;->a(IIZZZ)V

    .line 4372
    iget-object p1, p0, Lcom/oplus/camera/capmode/w;->mCameraInterface:Lcom/oplus/camera/capmode/a;

    const/4 v0, 0x5

    invoke-interface {p1, v0}, Lcom/oplus/camera/capmode/a;->d(I)V

    const-string p1, "count_down_to_stop"

    .line 4373
    iput-object p1, p0, Lcom/oplus/camera/capmode/w;->mEndType:Ljava/lang/String;

    const-string p1, "disable_code"

    const-string v0, "temp_stop_all_video"

    .line 4374
    invoke-virtual {p0, p1, v0}, Lcom/oplus/camera/capmode/w;->reportReminderToDcs(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public onZoomChanged()V
    .locals 1

    .line 3091
    iget-object v0, p0, Lcom/oplus/camera/capmode/w;->mVideoRecorder:Lcom/oplus/camera/capmode/x;

    if-eqz v0, :cond_0

    .line 3092
    invoke-virtual {p0}, Lcom/oplus/camera/capmode/w;->getZoomValue()F

    move-result p0

    invoke-virtual {v0, p0}, Lcom/oplus/camera/capmode/x;->a(F)V

    :cond_0
    return-void
.end method

.method protected processPlatformSlowVideo()V
    .locals 0

    return-void
.end method

.method protected readProfile()V
    .locals 7

    const-string v0, "readProfile"

    const-string v1, "VideoMode"

    .line 3681
    invoke-static {v1, v0}, Lcom/oplus/camera/e;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 3683
    invoke-static {v0}, Lcom/oplus/camera/e;->a(Ljava/lang/String;)V

    .line 3685
    invoke-virtual {p0}, Lcom/oplus/camera/capmode/w;->getVideoSizeType()Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/oplus/camera/capmode/w;->mVideoSizeType:Ljava/lang/String;

    .line 3689
    iget-boolean v2, p0, Lcom/oplus/camera/capmode/w;->mbFrontCamera:Z

    if-eqz v2, :cond_0

    .line 3690
    iget v2, p0, Lcom/oplus/camera/capmode/w;->mCameraId:I

    iget-object v3, p0, Lcom/oplus/camera/capmode/w;->mActivity:Landroid/app/Activity;

    const v4, 0x7f1004e0

    .line 3691
    invoke-virtual {v3, v4}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v3

    .line 3690
    invoke-direct {p0, v2, v3}, Lcom/oplus/camera/capmode/w;->getDefaultVideoQuality(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v2

    goto :goto_0

    .line 3693
    :cond_0
    iget v2, p0, Lcom/oplus/camera/capmode/w;->mCameraId:I

    iget-object v3, p0, Lcom/oplus/camera/capmode/w;->mActivity:Landroid/app/Activity;

    const v4, 0x7f1004df

    .line 3694
    invoke-virtual {v3, v4}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v3

    .line 3693
    invoke-direct {p0, v2, v3}, Lcom/oplus/camera/capmode/w;->getDefaultVideoQuality(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 3697
    :goto_0
    invoke-direct {p0, v2}, Lcom/oplus/camera/capmode/w;->matchRecModeToVideoQuality(Ljava/lang/String;)I

    move-result v2

    .line 3699
    iget-object v3, p0, Lcom/oplus/camera/capmode/w;->mActivity:Landroid/app/Activity;

    invoke-virtual {v3}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v3

    .line 3700
    invoke-virtual {v3}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v4

    const-string v5, "android.intent.extra.videoQuality"

    .line 3702
    invoke-virtual {v3, v5}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_3

    if-eqz v4, :cond_1

    const/4 v2, 0x4

    .line 3704
    invoke-virtual {v4, v5, v2}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v2

    :cond_1
    const/4 v4, 0x1

    if-ne v2, v4, :cond_2

    const-string v5, "com.oplus.quality.high.1080p.support"

    .line 3708
    invoke-static {v5}, Lcom/oplus/camera/aps/config/CameraConfig;->getConfigBooleanValue(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_2

    const/4 v2, 0x6

    goto :goto_1

    :cond_2
    if-ne v2, v4, :cond_3

    const/4 v2, 0x5

    .line 3715
    :cond_3
    :goto_1
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "readProfile, quality: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v1, v4}, Lcom/oplus/camera/e;->a(Ljava/lang/String;Ljava/lang/String;)V

    const-string v4, "android.intent.extra.durationLimit"

    .line 3718
    invoke-virtual {v3, v4}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_5

    const/4 v5, -0x1

    .line 3719
    invoke-virtual {v3, v4, v5}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v3

    if-ltz v3, :cond_4

    mul-int/lit16 v3, v3, 0x3e8

    .line 3722
    iput v3, p0, Lcom/oplus/camera/capmode/w;->mMaxVideoDurationInMs:I

    .line 3725
    :cond_4
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "readProfile, mMaxVideoDurationInMs: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v4, p0, Lcom/oplus/camera/capmode/w;->mMaxVideoDurationInMs:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Lcom/oplus/camera/e;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 3729
    :cond_5
    :try_start_0
    iget v3, p0, Lcom/oplus/camera/capmode/w;->mCameraId:I

    invoke-static {v3, v2}, Landroid/media/CamcorderProfile;->get(II)Landroid/media/CamcorderProfile;

    move-result-object v2

    iput-object v2, p0, Lcom/oplus/camera/capmode/w;->mProfile:Landroid/media/CamcorderProfile;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    :catch_0
    move-exception v2

    const/4 v3, 0x0

    .line 3731
    iput-object v3, p0, Lcom/oplus/camera/capmode/w;->mProfile:Landroid/media/CamcorderProfile;

    const-string v3, "readProfile, CamcorderProfile.get fail! "

    .line 3733
    invoke-static {v1, v3, v2}, Lcom/oplus/camera/e;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 3736
    :goto_2
    iget-object v2, p0, Lcom/oplus/camera/capmode/w;->mProfile:Landroid/media/CamcorderProfile;

    if-nez v2, :cond_6

    const-string p0, "readProfile, mProfile is null, so return..."

    .line 3737
    invoke-static {v1, p0}, Lcom/oplus/camera/e;->a(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    .line 3742
    :cond_6
    invoke-virtual {p0}, Lcom/oplus/camera/capmode/w;->isMultiVideoMode()Z

    move-result v2

    if-nez v2, :cond_8

    .line 3743
    iget-object v2, p0, Lcom/oplus/camera/capmode/w;->mVideoSizeType:Ljava/lang/String;

    const-string v3, "video_size_4kuhd"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    const/4 v3, 0x2

    const v4, 0x26160

    const v5, 0xbb80

    if-eqz v2, :cond_7

    .line 3744
    iget-object v2, p0, Lcom/oplus/camera/capmode/w;->mProfile:Landroid/media/CamcorderProfile;

    const v6, 0x5f5e100

    iput v6, v2, Landroid/media/CamcorderProfile;->videoBitRate:I

    const/16 v6, 0xf00

    .line 3745
    iput v6, v2, Landroid/media/CamcorderProfile;->videoFrameWidth:I

    const/16 v6, 0x870

    .line 3746
    iput v6, v2, Landroid/media/CamcorderProfile;->videoFrameHeight:I

    .line 3747
    iput v5, v2, Landroid/media/CamcorderProfile;->audioSampleRate:I

    .line 3748
    iput v4, v2, Landroid/media/CamcorderProfile;->audioBitRate:I

    .line 3749
    iput v3, v2, Landroid/media/CamcorderProfile;->audioChannels:I

    goto :goto_3

    .line 3750
    :cond_7
    iget-object v2, p0, Lcom/oplus/camera/capmode/w;->mVideoSizeType:Ljava/lang/String;

    const-string v6, "video_size_8k"

    invoke-virtual {v6, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_8

    .line 3751
    iget-object v2, p0, Lcom/oplus/camera/capmode/w;->mProfile:Landroid/media/CamcorderProfile;

    const v6, 0x6422c40

    iput v6, v2, Landroid/media/CamcorderProfile;->videoBitRate:I

    const/16 v6, 0x1e00

    .line 3752
    iput v6, v2, Landroid/media/CamcorderProfile;->videoFrameWidth:I

    const/16 v6, 0x10e0

    .line 3753
    iput v6, v2, Landroid/media/CamcorderProfile;->videoFrameHeight:I

    .line 3754
    iput v5, v2, Landroid/media/CamcorderProfile;->audioSampleRate:I

    .line 3755
    iput v4, v2, Landroid/media/CamcorderProfile;->audioBitRate:I

    .line 3756
    iput v3, v2, Landroid/media/CamcorderProfile;->audioChannels:I

    .line 3760
    :cond_8
    :goto_3
    iget-object v2, p0, Lcom/oplus/camera/capmode/w;->mProfile:Landroid/media/CamcorderProfile;

    invoke-virtual {p0}, Lcom/oplus/camera/capmode/w;->getVideoFrameRate()I

    move-result v3

    iput v3, v2, Landroid/media/CamcorderProfile;->videoFrameRate:I

    .line 3761
    iget-object v2, p0, Lcom/oplus/camera/capmode/w;->mProfile:Landroid/media/CamcorderProfile;

    invoke-virtual {p0}, Lcom/oplus/camera/capmode/w;->configVideoBitRate()I

    move-result v3

    iput v3, v2, Landroid/media/CamcorderProfile;->videoBitRate:I

    .line 3763
    invoke-static {v0}, Lcom/oplus/camera/e;->b(Ljava/lang/String;)V

    .line 3765
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "readProfile, videoFrameWidth: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/oplus/camera/capmode/w;->mProfile:Landroid/media/CamcorderProfile;

    iget v2, v2, Landroid/media/CamcorderProfile;->videoFrameWidth:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", videoFrameHeight: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/oplus/camera/capmode/w;->mProfile:Landroid/media/CamcorderProfile;

    iget v2, v2, Landroid/media/CamcorderProfile;->videoFrameHeight:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", videoFrameRate: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/oplus/camera/capmode/w;->mProfile:Landroid/media/CamcorderProfile;

    iget v2, v2, Landroid/media/CamcorderProfile;->videoFrameRate:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", mProfile.videoBitRate: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/oplus/camera/capmode/w;->mProfile:Landroid/media/CamcorderProfile;

    iget p0, p0, Landroid/media/CamcorderProfile;->videoBitRate:I

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v1, p0}, Lcom/oplus/camera/e;->a(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method protected reportReminderToDcs(Ljava/lang/String;Ljava/lang/String;)V
    .locals 3

    .line 4175
    new-instance v0, Lcom/oplus/camera/statistics/model/ReminderMsgData;

    iget-object v1, p0, Lcom/oplus/camera/capmode/w;->mActivity:Landroid/app/Activity;

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/oplus/camera/statistics/model/ReminderMsgData;-><init>(Landroid/content/Context;Z)V

    .line 4177
    iget-object v1, p0, Lcom/oplus/camera/capmode/w;->mCameraInterface:Lcom/oplus/camera/capmode/a;

    if-eqz v1, :cond_1

    .line 4178
    iget-object v1, p0, Lcom/oplus/camera/capmode/w;->mCameraInterface:Lcom/oplus/camera/capmode/a;

    invoke-interface {v1}, Lcom/oplus/camera/capmode/a;->m()Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, 0x3

    .line 4179
    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/oplus/camera/statistics/model/ReminderMsgData;->mCameraEnterType:Ljava/lang/String;

    .line 4182
    :cond_0
    iget-object v1, p0, Lcom/oplus/camera/capmode/w;->mCameraInterface:Lcom/oplus/camera/capmode/a;

    invoke-interface {v1}, Lcom/oplus/camera/capmode/a;->ax()I

    move-result v1

    iput v1, v0, Lcom/oplus/camera/statistics/model/ReminderMsgData;->mCameraId:I

    .line 4185
    :cond_1
    invoke-virtual {p0}, Lcom/oplus/camera/capmode/w;->getCameraMode()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/oplus/camera/statistics/model/ReminderMsgData;->mCaptureMode:Ljava/lang/String;

    const/4 v1, 0x1

    .line 4186
    iput v1, v0, Lcom/oplus/camera/statistics/model/ReminderMsgData;->mCaptureType:I

    .line 4187
    iget v1, p0, Lcom/oplus/camera/capmode/w;->mOrientation:I

    iput v1, v0, Lcom/oplus/camera/statistics/model/ReminderMsgData;->mOrientation:I

    .line 4188
    iput-object p1, v0, Lcom/oplus/camera/statistics/model/ReminderMsgData;->mReminderTypeValue:Ljava/lang/String;

    .line 4189
    iput-object p2, v0, Lcom/oplus/camera/statistics/model/ReminderMsgData;->mReminderCodeValue:Ljava/lang/String;

    .line 4190
    invoke-virtual {p0}, Lcom/oplus/camera/capmode/w;->isVideoRecording()Z

    move-result p1

    iput-boolean p1, v0, Lcom/oplus/camera/statistics/model/ReminderMsgData;->mbRecording:Z

    .line 4191
    iget-boolean p0, p0, Lcom/oplus/camera/capmode/w;->mbFrontCamera:Z

    if-eqz p0, :cond_2

    const-string p0, "front"

    goto :goto_0

    :cond_2
    const-string p0, "rear"

    :goto_0
    iput-object p0, v0, Lcom/oplus/camera/statistics/model/ReminderMsgData;->mRearOrFront:Ljava/lang/String;

    .line 4192
    invoke-virtual {v0}, Lcom/oplus/camera/statistics/model/ReminderMsgData;->report()V

    return-void
.end method

.method public resetTimeUi()V
    .locals 10

    const-string v0, "support_video_count_down"

    .line 3149
    invoke-virtual {p0, v0}, Lcom/oplus/camera/capmode/w;->getSupportFunction(Ljava/lang/String;)Z

    move-result v0

    .line 3150
    invoke-virtual {p0}, Lcom/oplus/camera/capmode/w;->getVideoTimeLimit()J

    move-result-wide v8

    if-eqz v0, :cond_0

    .line 3152
    iget-wide v0, p0, Lcom/oplus/camera/capmode/w;->mRecordingTotalTime:J

    sub-long v0, v8, v0

    const-wide/16 v2, 0x12c

    cmp-long v0, v0, v2

    if-gez v0, :cond_0

    .line 3154
    iput-wide v8, p0, Lcom/oplus/camera/capmode/w;->mRecordingTotalTime:J

    .line 3155
    iget-object v1, p0, Lcom/oplus/camera/capmode/w;->mCameraUIInterface:Lcom/oplus/camera/ui/CameraUIInterface;

    invoke-virtual {p0}, Lcom/oplus/camera/capmode/w;->getVideoTime()J

    move-result-wide v4

    iget-boolean v6, p0, Lcom/oplus/camera/capmode/w;->mbShowRecordingIndicator:Z

    const/4 v7, 0x1

    move-wide v2, v8

    invoke-interface/range {v1 .. v9}, Lcom/oplus/camera/ui/CameraUIInterface;->a(JJZZJ)V

    :cond_0
    return-void
.end method

.method public setConfigureParameter(Lcom/oplus/ocs/camera/CameraDeviceConfig$Builder;)V
    .locals 6

    .line 2535
    invoke-super {p0, p1}, Lcom/oplus/camera/capmode/BaseMode;->setConfigureParameter(Lcom/oplus/ocs/camera/CameraDeviceConfig$Builder;)V

    const-string v0, "VideoMode"

    const-string v1, "setConfigureParameter"

    .line 2537
    invoke-static {v0, v1}, Lcom/oplus/camera/e;->c(Ljava/lang/String;Ljava/lang/String;)V

    .line 2539
    invoke-virtual {p0}, Lcom/oplus/camera/capmode/w;->isSloganOpen()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2540
    sget-object v0, Lcom/oplus/ocs/camera/CameraParameter;->WATERMARK_VIDEO_ENABLE:Lcom/oplus/ocs/camera/CameraParameter$ConfigureKey;

    const-string v1, "on"

    invoke-virtual {p1, v0, v1}, Lcom/oplus/ocs/camera/CameraDeviceConfig$Builder;->setParameter(Lcom/oplus/ocs/camera/CameraParameter$ConfigureKey;Ljava/lang/Object;)Lcom/oplus/ocs/camera/CameraDeviceConfig$Builder;

    .line 2543
    :cond_0
    invoke-virtual {p0}, Lcom/oplus/camera/capmode/w;->getVideoCodec()Ljava/lang/String;

    move-result-object v0

    const-string v1, "H264"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 2544
    sget-object v0, Lcom/oplus/ocs/camera/CameraParameter;->VIDEO_ENCODER:Lcom/oplus/ocs/camera/CameraParameter$ConfigureKey;

    const-string v1, "H264"

    invoke-virtual {p1, v0, v1}, Lcom/oplus/ocs/camera/CameraDeviceConfig$Builder;->setParameter(Lcom/oplus/ocs/camera/CameraParameter$ConfigureKey;Ljava/lang/Object;)Lcom/oplus/ocs/camera/CameraDeviceConfig$Builder;

    .line 2546
    iget-object v0, p0, Lcom/oplus/camera/capmode/w;->mProfile:Landroid/media/CamcorderProfile;

    if-eqz v0, :cond_2

    .line 2547
    sget-object v0, Lcom/oplus/ocs/camera/CameraParameter;->VIDEO_BITRATE:Lcom/oplus/ocs/camera/CameraParameter$ConfigureKey;

    iget-object v1, p0, Lcom/oplus/camera/capmode/w;->mProfile:Landroid/media/CamcorderProfile;

    iget v1, v1, Landroid/media/CamcorderProfile;->videoBitRate:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/oplus/ocs/camera/CameraDeviceConfig$Builder;->setParameter(Lcom/oplus/ocs/camera/CameraParameter$ConfigureKey;Ljava/lang/Object;)Lcom/oplus/ocs/camera/CameraDeviceConfig$Builder;

    goto :goto_0

    .line 2549
    :cond_1
    invoke-virtual {p0}, Lcom/oplus/camera/capmode/w;->getVideoCodec()Ljava/lang/String;

    move-result-object v0

    const-string v1, "H265"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 2550
    sget-object v0, Lcom/oplus/ocs/camera/CameraParameter;->VIDEO_ENCODER:Lcom/oplus/ocs/camera/CameraParameter$ConfigureKey;

    const-string v1, "H265"

    invoke-virtual {p1, v0, v1}, Lcom/oplus/ocs/camera/CameraDeviceConfig$Builder;->setParameter(Lcom/oplus/ocs/camera/CameraParameter$ConfigureKey;Ljava/lang/Object;)Lcom/oplus/ocs/camera/CameraDeviceConfig$Builder;

    .line 2552
    iget-object v0, p0, Lcom/oplus/camera/capmode/w;->mProfile:Landroid/media/CamcorderProfile;

    if-eqz v0, :cond_2

    .line 2553
    sget-object v0, Lcom/oplus/ocs/camera/CameraParameter;->VIDEO_BITRATE:Lcom/oplus/ocs/camera/CameraParameter$ConfigureKey;

    iget-object v1, p0, Lcom/oplus/camera/capmode/w;->mProfile:Landroid/media/CamcorderProfile;

    iget v1, v1, Landroid/media/CamcorderProfile;->videoBitRate:I

    div-int/lit8 v1, v1, 0x2

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/oplus/ocs/camera/CameraDeviceConfig$Builder;->setParameter(Lcom/oplus/ocs/camera/CameraParameter$ConfigureKey;Ljava/lang/Object;)Lcom/oplus/ocs/camera/CameraDeviceConfig$Builder;

    :cond_2
    :goto_0
    const-string v0, "type_video"

    .line 2557
    invoke-virtual {p0, v0}, Lcom/oplus/camera/capmode/w;->needSurface(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_6

    .line 2558
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "setConfigureParameter, mVideoSurfaceState: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/oplus/camera/capmode/w;->mVideoSurfaceState:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "VideoMode"

    invoke-static {v1, v0}, Lcom/oplus/camera/e;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 2560
    iget-object v0, p0, Lcom/oplus/camera/capmode/w;->mPrepareVideoSurface:Landroid/os/ConditionVariable;

    monitor-enter v0

    .line 2561
    :try_start_0
    invoke-direct {p0}, Lcom/oplus/camera/capmode/w;->isVideoSurfacePrepared()Z

    move-result v1

    if-nez v1, :cond_4

    .line 2562
    iget-object v1, p0, Lcom/oplus/camera/capmode/w;->mRecordHandler:Landroid/os/Handler;

    const/4 v2, 0x6

    invoke-virtual {v1, v2}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v1

    if-nez v1, :cond_3

    invoke-direct {p0}, Lcom/oplus/camera/capmode/w;->isVideoSurfacePreparing()Z

    move-result v1

    if-nez v1, :cond_3

    const-string v1, "VideoMode"

    const-string v3, "configSessionSurface, send MSG_PREPARE_VIDEO_SURFACE"

    .line 2563
    invoke-static {v1, v3}, Lcom/oplus/camera/e;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 2565
    iget-object v1, p0, Lcom/oplus/camera/capmode/w;->mRecordHandler:Landroid/os/Handler;

    invoke-virtual {v1, v2}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 2568
    :cond_3
    iget-object v1, p0, Lcom/oplus/camera/capmode/w;->mPrepareVideoSurface:Landroid/os/ConditionVariable;

    invoke-virtual {v1}, Landroid/os/ConditionVariable;->close()V

    .line 2569
    iget-object v1, p0, Lcom/oplus/camera/capmode/w;->mPrepareVideoSurface:Landroid/os/ConditionVariable;

    invoke-virtual {v1}, Landroid/os/ConditionVariable;->block()V

    .line 2571
    :cond_4
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    const/4 v0, 0x0

    .line 2574
    invoke-direct {p0, v0}, Lcom/oplus/camera/capmode/w;->setVideoSurfaceState(I)V

    .line 2576
    iget-object v1, p0, Lcom/oplus/camera/capmode/w;->mVideoSurfaceLock:Ljava/lang/Object;

    monitor-enter v1

    .line 2577
    :try_start_1
    iget-object v0, p0, Lcom/oplus/camera/capmode/w;->mVideoSurface:Landroid/view/Surface;

    if-eqz v0, :cond_5

    iget-object v0, p0, Lcom/oplus/camera/capmode/w;->mProfile:Landroid/media/CamcorderProfile;

    if-eqz v0, :cond_5

    .line 2578
    new-instance v0, Lcom/oplus/ocs/camera/CameraDeviceConfig$VideoConfig;

    iget-object v2, p0, Lcom/oplus/camera/capmode/w;->mOneCamera:Lcom/oplus/camera/e/d;

    .line 2579
    invoke-interface {v2}, Lcom/oplus/camera/e/d;->c()I

    move-result v2

    invoke-static {v2}, Lcom/oplus/camera/e/a;->b(I)Ljava/lang/String;

    move-result-object v2

    new-instance v3, Landroid/util/Size;

    iget-object v4, p0, Lcom/oplus/camera/capmode/w;->mProfile:Landroid/media/CamcorderProfile;

    iget v4, v4, Landroid/media/CamcorderProfile;->videoFrameWidth:I

    iget-object v5, p0, Lcom/oplus/camera/capmode/w;->mProfile:Landroid/media/CamcorderProfile;

    iget v5, v5, Landroid/media/CamcorderProfile;->videoFrameHeight:I

    invoke-direct {v3, v4, v5}, Landroid/util/Size;-><init>(II)V

    iget-object p0, p0, Lcom/oplus/camera/capmode/w;->mVideoSurface:Landroid/view/Surface;

    invoke-direct {v0, v2, v3, p0}, Lcom/oplus/ocs/camera/CameraDeviceConfig$VideoConfig;-><init>(Ljava/lang/String;Landroid/util/Size;Landroid/view/Surface;)V

    .line 2582
    invoke-virtual {p1, v0}, Lcom/oplus/ocs/camera/CameraDeviceConfig$Builder;->setVideoConfig(Lcom/oplus/ocs/camera/CameraDeviceConfig$VideoConfig;)Lcom/oplus/ocs/camera/CameraDeviceConfig$Builder;

    .line 2584
    :cond_5
    monitor-exit v1

    goto :goto_1

    :catchall_0
    move-exception p0

    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p0

    :catchall_1
    move-exception p0

    .line 2571
    :try_start_2
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    throw p0

    :cond_6
    :goto_1
    return-void
.end method

.method public setHalStatus(I)V
    .locals 0

    return-void
.end method

.method public setLowBatteryState(Z)V
    .locals 0

    .line 1046
    iput-boolean p1, p0, Lcom/oplus/camera/capmode/w;->mbLowBatteryDisabled:Z

    return-void
.end method

.method public setOrientation(I)V
    .locals 0

    .line 3098
    invoke-super {p0, p1}, Lcom/oplus/camera/capmode/BaseMode;->setOrientation(I)V

    .line 3100
    iget-object p0, p0, Lcom/oplus/camera/capmode/w;->mVideoRecorder:Lcom/oplus/camera/capmode/x;

    if-eqz p0, :cond_0

    .line 3101
    invoke-virtual {p0, p1}, Lcom/oplus/camera/capmode/x;->m(I)V

    :cond_0
    return-void
.end method

.method protected setVideoRecordState(I)V
    .locals 2

    .line 1388
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "setVideoRecordState, mMediaRecorderState: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/oplus/camera/capmode/w;->mMediaRecorderState:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " => "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "VideoMode"

    invoke-static {v1, v0}, Lcom/oplus/camera/e;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 1390
    iput p1, p0, Lcom/oplus/camera/capmode/w;->mMediaRecorderState:I

    return-void
.end method

.method protected shouldAutoStop(J)Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public showPreparingErrorDialog()V
    .locals 3

    .line 2215
    iget-object v0, p0, Lcom/oplus/camera/capmode/w;->mCameraErrorAlertDialogBuilder:Lcom/coui/appcompat/dialog/app/b;

    if-eqz v0, :cond_1

    .line 2216
    iget-object v0, p0, Lcom/oplus/camera/capmode/w;->mActivity:Landroid/app/Activity;

    instance-of v0, v0, Landroid/app/Activity;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/oplus/camera/capmode/w;->mActivity:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->isFinishing()Z

    move-result v0

    if-nez v0, :cond_0

    .line 2217
    iget-object p0, p0, Lcom/oplus/camera/capmode/w;->mCameraErrorAlertDialogBuilder:Lcom/coui/appcompat/dialog/app/b;

    invoke-virtual {p0}, Lcom/coui/appcompat/dialog/app/b;->show()V

    :cond_0
    return-void

    .line 2223
    :cond_1
    iget-object v0, p0, Lcom/oplus/camera/capmode/w;->mActivity:Landroid/app/Activity;

    const v1, 0x7f1004db

    invoke-virtual {v0, v1}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 2224
    new-instance v1, Lcom/coui/appcompat/dialog/app/b$a;

    iget-object v2, p0, Lcom/oplus/camera/capmode/w;->mActivity:Landroid/app/Activity;

    invoke-direct {v1, v2}, Lcom/coui/appcompat/dialog/app/b$a;-><init>(Landroid/content/Context;)V

    .line 2225
    invoke-virtual {v1, v0}, Lcom/coui/appcompat/dialog/app/b$a;->a(Ljava/lang/CharSequence;)Lcom/coui/appcompat/dialog/app/b$a;

    const v0, 0x7f1004dc

    .line 2226
    iget-object v2, p0, Lcom/oplus/camera/capmode/w;->mCameraErrorPositiveButtonListener:Landroid/content/DialogInterface$OnClickListener;

    invoke-virtual {v1, v0, v2}, Lcom/coui/appcompat/dialog/app/b$a;->a(ILandroid/content/DialogInterface$OnClickListener;)Lcom/coui/appcompat/dialog/app/b$a;

    const v0, 0x7f1004d9

    const/4 v2, 0x0

    .line 2227
    invoke-virtual {v1, v0, v2}, Lcom/coui/appcompat/dialog/app/b$a;->b(ILandroid/content/DialogInterface$OnClickListener;)Lcom/coui/appcompat/dialog/app/b$a;

    .line 2228
    invoke-virtual {v1}, Lcom/coui/appcompat/dialog/app/b$a;->a()Lcom/coui/appcompat/dialog/app/b;

    move-result-object v0

    iput-object v0, p0, Lcom/oplus/camera/capmode/w;->mCameraErrorAlertDialogBuilder:Lcom/coui/appcompat/dialog/app/b;

    .line 2230
    iget-object v0, p0, Lcom/oplus/camera/capmode/w;->mActivity:Landroid/app/Activity;

    instance-of v0, v0, Landroid/app/Activity;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/oplus/camera/capmode/w;->mActivity:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->isFinishing()Z

    move-result v0

    if-nez v0, :cond_2

    .line 2231
    iget-object v0, p0, Lcom/oplus/camera/capmode/w;->mCameraErrorAlertDialogBuilder:Lcom/coui/appcompat/dialog/app/b;

    invoke-virtual {v0}, Lcom/coui/appcompat/dialog/app/b;->show()V

    .line 2234
    :cond_2
    iget-object v0, p0, Lcom/oplus/camera/capmode/w;->mCameraErrorAlertDialogBuilder:Lcom/coui/appcompat/dialog/app/b;

    const/4 v1, -0x1

    invoke-virtual {v0, v1}, Lcom/coui/appcompat/dialog/app/b;->a(I)Landroid/widget/Button;

    move-result-object v0

    if-eqz v0, :cond_3

    .line 2235
    iget-object v0, p0, Lcom/oplus/camera/capmode/w;->mCameraErrorAlertDialogBuilder:Lcom/coui/appcompat/dialog/app/b;

    invoke-virtual {v0, v1}, Lcom/coui/appcompat/dialog/app/b;->a(I)Landroid/widget/Button;

    move-result-object v0

    const v1, 0x7f110145

    invoke-static {v0, v1}, Landroidx/core/widget/i;->a(Landroid/widget/TextView;I)V

    .line 2238
    :cond_3
    iget-object v0, p0, Lcom/oplus/camera/capmode/w;->mCameraErrorAlertDialogBuilder:Lcom/coui/appcompat/dialog/app/b;

    const/4 v1, -0x2

    invoke-virtual {v0, v1}, Lcom/coui/appcompat/dialog/app/b;->a(I)Landroid/widget/Button;

    move-result-object v0

    if-eqz v0, :cond_4

    .line 2239
    iget-object p0, p0, Lcom/oplus/camera/capmode/w;->mCameraErrorAlertDialogBuilder:Lcom/coui/appcompat/dialog/app/b;

    invoke-virtual {p0, v1}, Lcom/coui/appcompat/dialog/app/b;->a(I)Landroid/widget/Button;

    move-result-object p0

    const v0, 0x7f110144

    invoke-static {p0, v0}, Landroidx/core/widget/i;->a(Landroid/widget/TextView;I)V

    :cond_4
    return-void
.end method

.method protected showRecordingTimeUI()V
    .locals 4

    .line 2210
    iget-object v0, p0, Lcom/oplus/camera/capmode/w;->mCameraUIInterface:Lcom/oplus/camera/ui/CameraUIInterface;

    invoke-virtual {p0}, Lcom/oplus/camera/capmode/w;->getRealVideoTimeRatio()Ljava/lang/Float;

    move-result-object v1

    const v2, 0x7f070a20

    .line 2211
    invoke-direct {p0, v2}, Lcom/oplus/camera/capmode/w;->getDimensionPixelSize(I)I

    move-result v2

    invoke-virtual {p0}, Lcom/oplus/camera/capmode/w;->needShowVideoTime()Z

    move-result p0

    const/4 v3, 0x1

    .line 2210
    invoke-interface {v0, v1, v2, p0, v3}, Lcom/oplus/camera/ui/CameraUIInterface;->a(Ljava/lang/Float;IZZ)V

    return-void
.end method

.method public startPlayVideoActivity()V
    .locals 3

    .line 1081
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.VIEW"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1082
    iget-object v1, p0, Lcom/oplus/camera/capmode/w;->mCurrentVideoUri:Landroid/net/Uri;

    invoke-virtual {p0}, Lcom/oplus/camera/capmode/w;->getProfile()Landroid/media/CamcorderProfile;

    move-result-object v2

    iget v2, v2, Landroid/media/CamcorderProfile;->fileFormat:I

    invoke-direct {p0, v2}, Lcom/oplus/camera/capmode/w;->convertOutputFormatToMimeType(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->setDataAndType(Landroid/net/Uri;Ljava/lang/String;)Landroid/content/Intent;

    const/4 v1, 0x1

    .line 1083
    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 1085
    invoke-static {}, Lcom/oplus/camera/v;->f()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 1086
    invoke-static {}, Lcom/oplus/camera/v;->f()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 1090
    :cond_0
    :try_start_0
    iget-object v1, p0, Lcom/oplus/camera/capmode/w;->mActivity:Landroid/app/Activity;

    invoke-virtual {v1, v0}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 1092
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "startPlayVideoActivity, Couldn\'t view video: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/oplus/camera/capmode/w;->mCurrentVideoUri:Landroid/net/Uri;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string v1, "VideoMode"

    invoke-static {v1, p0, v0}, Lcom/oplus/camera/e;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    :goto_0
    return-void
.end method

.method protected startShutterButtonProgress()V
    .locals 0

    return-void
.end method

.method protected stopRecordingFrame()V
    .locals 2

    .line 4294
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "stopRecordingFrame, isHyperLapseOpen: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/oplus/camera/capmode/w;->isHyperLapseOpen()Z

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "VideoMode"

    invoke-static {v1, v0}, Lcom/oplus/camera/e;->b(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "key_intelligent_high_frame_usage_key"

    .line 4297
    invoke-virtual {p0, v0}, Lcom/oplus/camera/capmode/w;->getSupportFunction(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 4298
    invoke-virtual {p0}, Lcom/oplus/camera/capmode/w;->isHyperLapseOpen()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 4299
    :cond_0
    iget-object v0, p0, Lcom/oplus/camera/capmode/w;->mRecordHandler:Landroid/os/Handler;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 4300
    iget-object v0, p0, Lcom/oplus/camera/capmode/w;->mRecordHandler:Landroid/os/Handler;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 4303
    :cond_1
    iget-boolean v0, p0, Lcom/oplus/camera/capmode/w;->mbVideoFrameInAPS:Z

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/oplus/camera/capmode/w;->mCameraInterface:Lcom/oplus/camera/capmode/a;

    if-eqz v0, :cond_2

    .line 4304
    iget-object p0, p0, Lcom/oplus/camera/capmode/w;->mCameraInterface:Lcom/oplus/camera/capmode/a;

    const/4 v0, 0x5

    invoke-interface {p0, v0}, Lcom/oplus/camera/capmode/a;->c(I)V

    :cond_2
    return-void
.end method

.method protected stopShutterButtonProgress()V
    .locals 0

    return-void
.end method

.method protected stopVideoRecordThread()V
    .locals 6

    .line 1769
    iget-object v0, p0, Lcom/oplus/camera/capmode/w;->mHandler:Landroid/os/Handler;

    if-eqz v0, :cond_0

    const/4 v1, 0x7

    invoke-virtual {v0, v1}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1770
    iget-object v0, p0, Lcom/oplus/camera/capmode/w;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 1773
    :cond_0
    invoke-virtual {p0}, Lcom/oplus/camera/capmode/w;->getVideoTitle()Ljava/lang/String;

    move-result-object v0

    .line 1774
    iget-boolean v1, p0, Lcom/oplus/camera/capmode/w;->mbHasDragIntelligentView:Z

    .line 1775
    invoke-direct {p0}, Lcom/oplus/camera/capmode/w;->stopVideoRecording()Z

    move-result v2

    iput-boolean v2, p0, Lcom/oplus/camera/capmode/w;->mbStopVideoFail:Z

    .line 1776
    invoke-virtual {p0}, Lcom/oplus/camera/capmode/w;->isRecordFileValid()Z

    move-result v2

    if-nez v2, :cond_2

    .line 1779
    iget-object v3, p0, Lcom/oplus/camera/capmode/w;->mVideoFilename:Ljava/lang/String;

    if-eqz v3, :cond_1

    .line 1780
    iget-object v3, p0, Lcom/oplus/camera/capmode/w;->mRecordFileNameChange:Landroid/os/ConditionVariable;

    invoke-virtual {v3}, Landroid/os/ConditionVariable;->close()V

    .line 1781
    iget-object v3, p0, Lcom/oplus/camera/capmode/w;->mRecordHandler:Landroid/os/Handler;

    const/4 v4, 0x3

    iget-object v5, p0, Lcom/oplus/camera/capmode/w;->mVideoFilename:Ljava/lang/String;

    invoke-virtual {v3, v4, v5}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v3

    invoke-virtual {v3}, Landroid/os/Message;->sendToTarget()V

    .line 1784
    :cond_1
    invoke-virtual {p0}, Lcom/oplus/camera/capmode/w;->onVideoRecordingFail()V

    goto :goto_0

    :cond_2
    const/4 v3, 0x0

    .line 1786
    iput-boolean v3, p0, Lcom/oplus/camera/capmode/w;->mbPictureTakenDuringRecord:Z

    .line 1788
    invoke-virtual {p0}, Lcom/oplus/camera/capmode/w;->isDoubleExposureOpen()Z

    move-result v3

    if-eqz v3, :cond_4

    .line 1789
    iget-object v3, p0, Lcom/oplus/camera/capmode/w;->mVideoFilename:Ljava/lang/String;

    invoke-direct {p0, v3}, Lcom/oplus/camera/capmode/w;->checkVideoFileReady(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 1790
    invoke-virtual {p0}, Lcom/oplus/camera/capmode/w;->onVideoRecordingFinish()V

    goto :goto_0

    .line 1792
    :cond_3
    invoke-virtual {p0}, Lcom/oplus/camera/capmode/w;->onVideoRecordingFail()V

    .line 1797
    :cond_4
    :goto_0
    iget-object v3, p0, Lcom/oplus/camera/capmode/w;->mActivity:Landroid/app/Activity;

    if-eqz v3, :cond_5

    .line 1798
    iget-object v3, p0, Lcom/oplus/camera/capmode/w;->mActivity:Landroid/app/Activity;

    new-instance v4, Lcom/oplus/camera/capmode/w$7;

    invoke-direct {v4, p0}, Lcom/oplus/camera/capmode/w$7;-><init>(Lcom/oplus/camera/capmode/w;)V

    invoke-virtual {v3, v4}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 1826
    :cond_5
    new-instance v3, Lcom/oplus/camera/ui/control/e$d;

    invoke-direct {v3}, Lcom/oplus/camera/ui/control/e$d;-><init>()V

    const/4 v4, 0x1

    .line 1827
    iput v4, v3, Lcom/oplus/camera/ui/control/e$d;->k:I

    if-eqz v2, :cond_7

    .line 1829
    iget-object v4, p0, Lcom/oplus/camera/capmode/w;->mActivity:Landroid/app/Activity;

    if-eqz v4, :cond_7

    .line 1830
    invoke-virtual {p0}, Lcom/oplus/camera/capmode/w;->isDoubleExposureOpen()Z

    move-result v4

    if-nez v4, :cond_6

    .line 1831
    invoke-virtual {p0, v3, v1, v0}, Lcom/oplus/camera/capmode/w;->addVideoToMediaStore(Lcom/oplus/camera/ui/control/e$d;ZLjava/lang/String;)Z

    .line 1834
    :cond_6
    iget-object v0, p0, Lcom/oplus/camera/capmode/w;->mCurrentVideoUri:Landroid/net/Uri;

    iput-object v0, v3, Lcom/oplus/camera/ui/control/e$d;->d:Landroid/net/Uri;

    .line 1837
    :cond_7
    iget-object v0, p0, Lcom/oplus/camera/capmode/w;->mHandler:Landroid/os/Handler;

    if-nez v0, :cond_8

    return-void

    .line 1841
    :cond_8
    new-instance v1, Lcom/oplus/camera/capmode/-$$Lambda$w$m-1Sq3iArwzFawybFCdK_j6Tj5o;

    invoke-direct {v1, p0, v3, v2}, Lcom/oplus/camera/capmode/-$$Lambda$w$m-1Sq3iArwzFawybFCdK_j6Tj5o;-><init>(Lcom/oplus/camera/capmode/w;Lcom/oplus/camera/ui/control/e$d;Z)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 1874
    iget-object v0, p0, Lcom/oplus/camera/capmode/w;->mHandler:Landroid/os/Handler;

    const/16 v1, 0x9

    invoke-virtual {v0, v1}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v0

    if-eqz v0, :cond_9

    .line 1875
    iget-object v0, p0, Lcom/oplus/camera/capmode/w;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 1876
    iget-object v0, p0, Lcom/oplus/camera/capmode/w;->mHandler:Landroid/os/Handler;

    const-wide/16 v2, 0x64

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 1879
    :cond_9
    iget-object p0, p0, Lcom/oplus/camera/capmode/w;->mRecordHandler:Landroid/os/Handler;

    const/16 v0, 0xc

    const-wide/16 v1, 0x12c

    invoke-virtual {p0, v0, v1, v2}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    return-void
.end method

.method protected supportBinauralRecord()Z
    .locals 0

    .line 4171
    invoke-static {}, Lcom/oplus/camera/util/Util;->a()Z

    move-result p0

    return p0
.end method

.method protected updateCaptureParam(Lcom/oplus/camera/e/c;)V
    .locals 7

    .line 2490
    invoke-super {p0, p1}, Lcom/oplus/camera/capmode/BaseMode;->updateCaptureParam(Lcom/oplus/camera/e/c;)V

    const-string v0, "func_video_retention"

    .line 2491
    invoke-virtual {p0, v0}, Lcom/oplus/camera/capmode/w;->getSupportFunction(Ljava/lang/String;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/oplus/camera/capmode/w;->isVideoRetentionOpen()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    move v0, v1

    .line 2493
    :goto_0
    iget-boolean v2, p1, Lcom/oplus/camera/e/c;->h:Z

    const-string v3, "on"

    const/16 v4, 0x20

    const-string v5, "orientation"

    if-eqz v2, :cond_2

    .line 2494
    iget-object v2, p0, Lcom/oplus/camera/capmode/w;->mPreviewEffectProcess:Lcom/oplus/camera/ui/preview/a/t;

    .line 2495
    invoke-interface {v2, v4}, Lcom/oplus/camera/ui/preview/a/t;->j(I)Lcom/oplus/camera/ui/preview/a/y;

    move-result-object v2

    check-cast v2, Lcom/oplus/camera/ui/preview/a/ad;

    .line 2496
    new-instance v4, Landroid/os/Bundle;

    invoke-direct {v4}, Landroid/os/Bundle;-><init>()V

    .line 2497
    iget v6, p0, Lcom/oplus/camera/capmode/w;->mOrientation:I

    invoke-virtual {p0, v6}, Lcom/oplus/camera/capmode/w;->getVideoOrientation(I)I

    move-result v6

    invoke-virtual {v4, v5, v6}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 2499
    iget-object v5, p0, Lcom/oplus/camera/capmode/w;->mOneCamera:Lcom/oplus/camera/e/d;

    sget-object v6, Lcom/oplus/ocs/camera/CameraParameter;->VIDEO_EFFECT_PARAM:Lcom/oplus/ocs/camera/CameraParameter$PreviewKey;

    invoke-interface {v5, v6, v4}, Lcom/oplus/camera/e/d;->a(Lcom/oplus/ocs/camera/CameraParameter$PreviewKey;Ljava/lang/Object;)V

    .line 2500
    iget-object v4, p0, Lcom/oplus/camera/capmode/w;->mOneCamera:Lcom/oplus/camera/e/d;

    iget-boolean p1, p1, Lcom/oplus/camera/e/c;->h:Z

    .line 2501
    invoke-virtual {v2}, Lcom/oplus/camera/ui/preview/a/ad;->y()Z

    move-result v5

    if-eqz v5, :cond_1

    const/4 v1, 0x5

    .line 2502
    :cond_1
    invoke-virtual {v2}, Lcom/oplus/camera/ui/preview/a/ad;->q()[I

    move-result-object v2

    invoke-static {v2}, Ljava/util/Arrays;->toString([I)Ljava/lang/String;

    move-result-object v2

    .line 2500
    invoke-interface {v4, p1, v1, v2}, Lcom/oplus/camera/e/d;->a(ZILjava/lang/String;)V

    goto/16 :goto_1

    :cond_2
    const-string p1, "func_video_blur_process"

    .line 2503
    invoke-virtual {p0, p1}, Lcom/oplus/camera/capmode/w;->getSupportFunction(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_5

    invoke-virtual {p0}, Lcom/oplus/camera/capmode/w;->isBlurOpen()Z

    move-result p1

    if-eqz p1, :cond_5

    .line 2504
    iget-object p1, p0, Lcom/oplus/camera/capmode/w;->mPreviewEffectProcess:Lcom/oplus/camera/ui/preview/a/t;

    invoke-interface {p1, v4}, Lcom/oplus/camera/ui/preview/a/t;->j(I)Lcom/oplus/camera/ui/preview/a/y;

    move-result-object p1

    .line 2505
    new-instance v2, Landroid/os/Bundle;

    invoke-direct {v2}, Landroid/os/Bundle;-><init>()V

    .line 2506
    invoke-virtual {p1}, Lcom/oplus/camera/ui/preview/a/y;->y()Z

    move-result v4

    if-eqz v4, :cond_3

    invoke-virtual {p0}, Lcom/oplus/camera/capmode/w;->getBlurIndex()I

    move-result v1

    :cond_3
    const-string v4, "blur_level"

    invoke-virtual {v2, v4, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 2507
    iget v1, p0, Lcom/oplus/camera/capmode/w;->mOrientation:I

    invoke-virtual {p0, v1}, Lcom/oplus/camera/capmode/w;->getVideoOrientation(I)I

    move-result v1

    invoke-virtual {v2, v5, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 2508
    invoke-virtual {p0}, Lcom/oplus/camera/capmode/w;->getShowBlurValue()F

    move-result v1

    const-string v4, "blur_show"

    invoke-virtual {v2, v4, v1}, Landroid/os/Bundle;->putFloat(Ljava/lang/String;F)V

    .line 2510
    iget-object v1, p0, Lcom/oplus/camera/capmode/w;->mOneCamera:Lcom/oplus/camera/e/d;

    sget-object v4, Lcom/oplus/ocs/camera/CameraParameter;->VIDEO_EFFECT_PARAM:Lcom/oplus/ocs/camera/CameraParameter$PreviewKey;

    invoke-interface {v1, v4, v2}, Lcom/oplus/camera/e/d;->a(Lcom/oplus/ocs/camera/CameraParameter$PreviewKey;Ljava/lang/Object;)V

    .line 2512
    invoke-virtual {p1}, Lcom/oplus/camera/ui/preview/a/y;->z()[I

    move-result-object p1

    if-eqz p1, :cond_4

    .line 2515
    iget-object v1, p0, Lcom/oplus/camera/capmode/w;->mOneCamera:Lcom/oplus/camera/e/d;

    sget-object v2, Lcom/oplus/ocs/camera/CameraParameter;->VIDEO_BLUR_PARAMS:Lcom/oplus/ocs/camera/CameraParameter$PreviewKey;

    invoke-static {p1}, Ljava/util/Arrays;->toString([I)Ljava/lang/String;

    move-result-object p1

    invoke-interface {v1, v2, p1}, Lcom/oplus/camera/e/d;->a(Lcom/oplus/ocs/camera/CameraParameter$PreviewKey;Ljava/lang/Object;)V

    .line 2518
    :cond_4
    iget-object p1, p0, Lcom/oplus/camera/capmode/w;->mOneCamera:Lcom/oplus/camera/e/d;

    sget-object v1, Lcom/oplus/ocs/camera/CameraParameter;->VIDEO_BLUR_ENABLE:Lcom/oplus/ocs/camera/CameraParameter$PreviewKey;

    invoke-interface {p1, v1, v3}, Lcom/oplus/camera/e/d;->a(Lcom/oplus/ocs/camera/CameraParameter$PreviewKey;Ljava/lang/Object;)V

    goto :goto_1

    :cond_5
    if-eqz v0, :cond_6

    .line 2520
    iget-object p1, p0, Lcom/oplus/camera/capmode/w;->mPreviewEffectProcess:Lcom/oplus/camera/ui/preview/a/t;

    const/16 v1, 0x100

    invoke-interface {p1, v1}, Lcom/oplus/camera/ui/preview/a/t;->j(I)Lcom/oplus/camera/ui/preview/a/y;

    move-result-object p1

    .line 2522
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    .line 2523
    iget v2, p0, Lcom/oplus/camera/capmode/w;->mOrientation:I

    invoke-virtual {p0, v2}, Lcom/oplus/camera/capmode/w;->getVideoOrientation(I)I

    move-result v2

    invoke-virtual {v1, v5, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 2524
    invoke-virtual {p1}, Lcom/oplus/camera/ui/preview/a/y;->y()Z

    move-result p1

    const-string v2, "retention_process"

    invoke-virtual {v1, v2, p1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 2526
    iget-object p1, p0, Lcom/oplus/camera/capmode/w;->mOneCamera:Lcom/oplus/camera/e/d;

    sget-object v2, Lcom/oplus/ocs/camera/CameraParameter;->VIDEO_EFFECT_PARAM:Lcom/oplus/ocs/camera/CameraParameter$PreviewKey;

    invoke-interface {p1, v2, v1}, Lcom/oplus/camera/e/d;->a(Lcom/oplus/ocs/camera/CameraParameter$PreviewKey;Ljava/lang/Object;)V

    .line 2529
    :cond_6
    :goto_1
    iget-object p0, p0, Lcom/oplus/camera/capmode/w;->mOneCamera:Lcom/oplus/camera/e/d;

    sget-object p1, Lcom/oplus/ocs/camera/CameraParameter;->VIDEO_RETENTION_OPEN:Lcom/oplus/ocs/camera/CameraParameter$PreviewKey;

    if-eqz v0, :cond_7

    goto :goto_2

    :cond_7
    const-string v3, "off"

    :goto_2
    invoke-interface {p0, p1, v3}, Lcom/oplus/camera/e/d;->a(Lcom/oplus/ocs/camera/CameraParameter$PreviewKey;Ljava/lang/Object;)V

    return-void
.end method

.method protected updateVideoTypeExif(Ljava/io/File;)V
    .locals 0

    return-void
.end method

.method public withinSatMainAndWideRange(F)Z
    .locals 4

    const-string v0, "func_sat_camera"

    .line 3872
    invoke-virtual {p0, v0}, Lcom/oplus/camera/capmode/w;->getSupportFunction(Ljava/lang/String;)Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    .line 3876
    :cond_0
    invoke-virtual {p0}, Lcom/oplus/camera/capmode/w;->isVideoHighFps()Z

    move-result v0

    if-eqz v0, :cond_2

    const-string v0, "com.oplus.video.sat.60fps.main.zoom.range"

    .line 3877
    invoke-static {v0}, Lcom/oplus/camera/aps/config/CameraConfig;->getConfigFloatArrayValue(Ljava/lang/String;)[F

    move-result-object v0

    if-eqz v0, :cond_2

    .line 3879
    array-length v2, v0

    const/4 v3, 0x2

    if-ne v2, v3, :cond_2

    const/4 p0, 0x1

    .line 3880
    aget v0, v0, p0

    invoke-static {p1, v0}, Ljava/lang/Float;->compare(FF)I

    move-result p1

    if-gtz p1, :cond_1

    goto :goto_0

    :cond_1
    move p0, v1

    :goto_0
    return p0

    .line 3884
    :cond_2
    invoke-super {p0, p1}, Lcom/oplus/camera/capmode/BaseMode;->withinSatMainAndWideRange(F)Z

    move-result p0

    return p0
.end method

.method public withinSatMainRange(F)Z
    .locals 4

    const-string v0, "func_sat_camera"

    .line 3889
    invoke-virtual {p0, v0}, Lcom/oplus/camera/capmode/w;->getSupportFunction(Ljava/lang/String;)Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    .line 3893
    :cond_0
    invoke-virtual {p0}, Lcom/oplus/camera/capmode/w;->isVideoHighFps()Z

    move-result v0

    if-eqz v0, :cond_2

    const-string v0, "com.oplus.video.sat.60fps.main.zoom.range"

    .line 3894
    invoke-static {v0}, Lcom/oplus/camera/aps/config/CameraConfig;->getConfigFloatArrayValue(Ljava/lang/String;)[F

    move-result-object v0

    if-eqz v0, :cond_2

    .line 3896
    array-length v2, v0

    const/4 v3, 0x2

    if-ne v2, v3, :cond_2

    .line 3897
    aget v2, v0, v1

    invoke-static {p1, v2}, Ljava/lang/Float;->compare(FF)I

    move-result v2

    const/4 v3, 0x1

    if-ltz v2, :cond_1

    aget v0, v0, v3

    .line 3898
    invoke-static {p1, v0}, Ljava/lang/Float;->compare(FF)I

    move-result p1

    if-gtz p1, :cond_1

    .line 3899
    invoke-virtual {p0}, Lcom/oplus/camera/capmode/w;->getZoomAutoMicroOpen()Z

    move-result p0

    if-nez p0, :cond_1

    move v1, v3

    :cond_1
    return v1

    .line 3903
    :cond_2
    invoke-super {p0, p1}, Lcom/oplus/camera/capmode/BaseMode;->withinSatMainRange(F)Z

    move-result p0

    return p0
.end method
