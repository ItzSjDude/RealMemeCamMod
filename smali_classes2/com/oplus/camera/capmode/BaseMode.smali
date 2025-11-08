.class public abstract Lcom/oplus/camera/capmode/BaseMode;
.super Ljava/lang/Object;
.source "BaseMode.java"

# interfaces
.implements Lcom/oplus/camera/d;
.implements Lcom/oplus/camera/e/d$a;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/oplus/camera/capmode/BaseMode$a;
    }
.end annotation


# static fields
.field public static final AI_SCN_OFF:I = 0x0

.field public static final AI_SCN_ON:I = 0x1

.field public static final BEAUTY3D_ADD_ICON:I = 0x1

.field public static final BEAUTY3D_HEAD_ICON:I = 0x2

.field public static final BEAUTY3D_MAX_NUM:I = 0x1

.field private static final BLUR_INDEX_ERR:I = -0x1

.field private static final CALCULATE_CURRENTLUX_MAX_FRAME_COUNT:I = 0xa

.field protected static final CAPTURE_PREVIEW_DONE:I = 0x2

.field protected static final CAPTURE_PREVIEW_IDLE:I = 0x0

.field protected static final CAPTURE_PREVIEW_START:I = 0x1

.field public static final CONTACT_PACKAGE_NAME:Ljava/lang/String; = "com.android.contacts"

.field private static final DATA_PADDING_ALIGN:I = 0x10

.field public static final DEBUG:Z = false

.field public static final DEFAULT_EXPECTED_FRAME_RATE:I = 0x1e

.field private static final DEFAULT_LUX_VALUE:I = 0x1f4

.field private static final DIS_SCREEN_HINT_ICON_DELAY:I = 0x190

.field private static final FACE_COUNT_CHECKING_SIZE:I = 0x1e

.field public static final FILTER_KEYS:[Ljava/lang/String;

.field private static final FLASH_BRIGHTNESS:F = 0.8f

.field public static final GOOGLE_KEEP_PACKAGE_NAME:Ljava/lang/String; = "com.google.android.keep"

.field public static final ISO_CONSTANT:I = 0x64

.field private static final KEY_IS_BURST_SHOT:Ljava/lang/String; = "is_burst_shot"

.field private static final KEY_PICTURE_DATA:Ljava/lang/String; = "picture_data"

.field private static final KEY_PICTURE_FORMAT:Ljava/lang/String; = "picture_format"

.field private static final KEY_PICTURE_HEIGHT:Ljava/lang/String; = "picture_height"

.field private static final KEY_PICTURE_WIDTH:Ljava/lang/String; = "picture_width"

.field private static final KEY_REQ_FORMAT:Ljava/lang/String; = "request_format"

.field public static final MAX_BRIGHTNESS:F = 255.0f

.field public static final MMS_PACKAGE_NAME:Ljava/lang/String; = "com.android.mms"

.field private static final MSG_AFTER_START_PREVIEW:I = 0x3

.field private static final MSG_AFTER_TAKEPICTURE:I = 0x1

.field private static final MSG_CODE_HIDE_FIRST_BEAUTY_BUBBLE_TIP:I = 0xa

.field private static final MSG_CODE_HIDE_STREET_ROCKER_SHUTTER_BUBBLE:I = 0xb

.field private static final MSG_CODE_SHOW_BUBBLE_TIP:I = 0x8

.field private static final MSG_CODE_SHOW_FIRST_BEAUTY_BUBBLE_TIP:I = 0x9

.field private static final MSG_CODE_SHOW_NEXT_TIP_AFTER_DRAWER_GUIDE:I = 0x7

.field private static final MSG_CREATE_EFFECT_TEXTURE:I = 0x5

.field private static final MSG_DIS_SCREEN_HINT_ICON:I = 0x2

.field private static final MSG_PRE_UPDATE_THUMBNAIL:I = 0x6

.field private static final MSG_UPDATE_EFFECT_MENUNAME:I = 0x4

.field public static final NOTE_PACKAGE_NAME:Ljava/lang/String;

.field public static final NO_BEAUTY3D_ICON:I = 0x0

.field public static final PICTURE_SIZE_5M:Ljava/lang/String; = "5000000"

.field public static final PICTURE_SIZE_8M:Ljava/lang/String; = "8000000"

.field private static final PI_OFF:I = 0x0

.field private static final PI_ON:I = 0x1

.field private static final PULL_DOWN_ANIMATION_DURATION:I = 0x1f4

.field private static final SAT_CAMERA_NUMBER:I = 0x3

.field private static final SLOGAN_OFF:I = 0x0

.field private static final SLOGAN_ON:I = 0x1

.field private static final SYSTEM_BRIGHTNESS:F = -1.0f

.field private static final TAG:Ljava/lang/String; = "BaseMode"

.field protected static final TOLERATE_TIME:I = 0xa

.field public static final VALUE_HYPER_LAPSE_ULTRA_WIDE:F = 0.6f

.field public static final ZOOM_LIST_DEFAULT_LENGTH:I = 0x1

.field protected static sHighBrightness:Z

.field private static sbFrontDirtyLensToastShown:Z

.field private static sbRearDirtyLensToastShown:Z


# instance fields
.field public algoVisualViewManager:Lcom/oplus/camera/algovisualization/c;

.field protected mActivity:Landroid/app/Activity;

.field public mApsAlgoFlag:[Ljava/lang/String;

.field protected mApsBracketMode:I

.field protected mApsDecisionFeatureType:I

.field protected final mApsDecisionResultLock:Ljava/lang/Object;

.field public mApsDecisionSceneMode:I

.field protected mApsService:Lcom/oplus/camera/aps/service/ApsService;

.field protected mAsdSceneValue:I

.field private mBaseSloganUtil:Lcom/oplus/camera/c;

.field public mBrightness:F

.field protected mCameraEntry:Lcom/oplus/camera/entry/b;

.field protected mCameraEntryType:I

.field protected mCameraId:I

.field protected mCameraInterface:Lcom/oplus/camera/capmode/a;

.field private final mCameraPictureCallback:Lcom/oplus/ocs/camera/CameraPictureCallback;

.field protected mCameraRootView:Landroid/view/ViewGroup;

.field protected mCameraUIInterface:Lcom/oplus/camera/ui/CameraUIInterface;

.field public mCapAlgoListFromApp:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field protected mCaptureDate:J

.field public mCaptureEVList:[I

.field private mCaptureMergeIdentity:J

.field protected mCaptureOrientation:I

.field private mCapturePreviewDataState:I

.field private final mCapturePreviewDataStateLock:Ljava/lang/Object;

.field protected mCaptureRequestTag:Lcom/oplus/camera/e/c;

.field protected mCaptureStartedCallbackNum:I

.field protected mDecisionResult:Lcom/oplus/camera/aps/util/CameraApsDecision;

.field protected mDetectResult:Lcom/oplus/camera/u/a;

.field private mEVValueFromMetadata:I

.field protected mEffectMenuNames:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field protected mEffectMenuSelect:Ljava/lang/String;

.field protected mFaceCountStatusCount:I

.field protected mFirstCaptureHash:I

.field protected mFlashMode:Ljava/lang/String;

.field protected mFlashTrigger:I

.field private mFocusOutOfRange:Ljava/lang/Object;

.field public mForceUpscaleSize:[I

.field protected mFullAlgoKey:Ljava/lang/String;

.field protected mFullAlgoValue:Ljava/lang/String;

.field protected mHDRMode:Ljava/lang/String;

.field private mHandler:Landroid/os/Handler;

.field protected mJpgOrientation:I

.field private mMergeIndex:I

.field public mModeName:Ljava/lang/String;

.field private mMultiFrameCount:I

.field protected final mNeedCaptureLock:Ljava/lang/Object;

.field protected mOneCamera:Lcom/oplus/camera/e/d;

.field protected mOrientation:I

.field protected mPostCounter:I

.field public mPreAlgoListFromApp:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field protected mPreferences:Landroid/content/SharedPreferences;

.field protected mPreviewEffectProcess:Lcom/oplus/camera/ui/preview/a/t;

.field public mPreviewXScale:F

.field protected mPreviweStreamNeedState:Ljava/lang/Integer;

.field private mReprocessMetadataTimeStamp:J

.field protected mSensorNumber:I

.field private mStatePreferenceHelper:Lcom/oplus/camera/algovisualization/j;

.field protected mSysBrightness:I

.field private mThumbnailTitle:Ljava/lang/String;

.field protected mbAllowSwitchMode:Z

.field protected mbAutoBinning:Z

.field protected mbAutoFlash:Z

.field protected mbAutoHDR:Z

.field protected mbAutoSeNight:Z

.field protected mbBackPressedAfterCapture:Z

.field protected mbBurstShot:Z

.field protected mbCapModeInit:Z

.field protected mbCaptureHasSuperTextResult:Z

.field protected mbCaptureNotMatchMeta:Z

.field protected volatile mbDestroyed:Z

.field protected mbDisplayOnLock:Z

.field protected mbEnableTuningData:Z

.field protected mbFirstShowAfterAuto:Z

.field protected mbFlashTemporaryDisabled:Z

.field protected mbForbidPreferenceChange:Z

.field protected mbFrontCamera:Z

.field protected mbHDRAvoidedByAIS:Z

.field public mbHasClickedFromThird:Z

.field protected mbInBurstShotCapturing:Z

.field protected mbInCapturing:Z

.field protected mbInPreparing:Z

.field private mbLuxHasChange:Z

.field protected mbModePreInit:Z

.field protected mbNeedCapture:Z

.field private mbNeedReloadFlashMenu:Z

.field protected mbOpenViviEffectAfterBurstShot:Z

.field protected volatile mbPaused:Z

.field protected mbRawRequestTag:Z

.field protected mbResetAeLockAfterCaptured:Z

.field protected mbResetAwbLockAfterCaptured:Z

.field private mbShowEnvironmentTips:Z

.field protected mbShowPostCaptureAlert:Z

.field private mbSupportSelectPhotoRatio:Z

.field private mbTrackFocusOpen:Z

.field public preferences:Landroid/content/SharedPreferences;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    const-string v0, "pref_camera_photo_ratio_key"

    const-string v1, "pref_camera_flashmode_key"

    .line 143
    filled-new-array {v0, v1}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/oplus/camera/capmode/BaseMode;->FILTER_KEYS:[Ljava/lang/String;

    .line 153
    invoke-static {}, Lcom/oplus/camera/v;->c()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/oplus/camera/capmode/BaseMode;->NOTE_PACKAGE_NAME:Ljava/lang/String;

    const/4 v0, 0x0

    .line 212
    sput-boolean v0, Lcom/oplus/camera/capmode/BaseMode;->sHighBrightness:Z

    const/4 v0, 0x1

    .line 214
    sput-boolean v0, Lcom/oplus/camera/capmode/BaseMode;->sbRearDirtyLensToastShown:Z

    .line 215
    sput-boolean v0, Lcom/oplus/camera/capmode/BaseMode;->sbFrontDirtyLensToastShown:Z

    return-void
.end method

.method public constructor <init>(Landroid/app/Activity;Lcom/oplus/camera/capmode/a;Lcom/oplus/camera/ui/CameraUIInterface;Lcom/oplus/camera/ui/preview/a/t;)V
    .locals 6

    .line 515
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 216
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/oplus/camera/capmode/BaseMode;->mApsDecisionResultLock:Ljava/lang/Object;

    .line 217
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/oplus/camera/capmode/BaseMode;->mNeedCaptureLock:Ljava/lang/Object;

    .line 218
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/oplus/camera/capmode/BaseMode;->mCapturePreviewDataStateLock:Ljava/lang/Object;

    const/high16 v0, 0x3f800000    # 1.0f

    .line 220
    iput v0, p0, Lcom/oplus/camera/capmode/BaseMode;->mPreviewXScale:F

    const/high16 v0, 0x437f0000    # 255.0f

    .line 221
    iput v0, p0, Lcom/oplus/camera/capmode/BaseMode;->mBrightness:F

    const/4 v0, 0x0

    .line 222
    iput-boolean v0, p0, Lcom/oplus/camera/capmode/BaseMode;->mbHasClickedFromThird:Z

    const/4 v1, 0x0

    .line 223
    iput-object v1, p0, Lcom/oplus/camera/capmode/BaseMode;->mForceUpscaleSize:[I

    .line 224
    iput v0, p0, Lcom/oplus/camera/capmode/BaseMode;->mApsDecisionSceneMode:I

    .line 225
    iput-object v1, p0, Lcom/oplus/camera/capmode/BaseMode;->mApsAlgoFlag:[Ljava/lang/String;

    .line 226
    iput-object v1, p0, Lcom/oplus/camera/capmode/BaseMode;->mCaptureEVList:[I

    .line 228
    iput-object v1, p0, Lcom/oplus/camera/capmode/BaseMode;->mPreAlgoListFromApp:Ljava/util/ArrayList;

    .line 229
    iput-object v1, p0, Lcom/oplus/camera/capmode/BaseMode;->mCapAlgoListFromApp:Ljava/util/ArrayList;

    .line 233
    iput v0, p0, Lcom/oplus/camera/capmode/BaseMode;->mOrientation:I

    .line 235
    iput v0, p0, Lcom/oplus/camera/capmode/BaseMode;->mJpgOrientation:I

    .line 236
    iput v0, p0, Lcom/oplus/camera/capmode/BaseMode;->mCameraId:I

    .line 237
    iput v0, p0, Lcom/oplus/camera/capmode/BaseMode;->mFirstCaptureHash:I

    .line 238
    iput v0, p0, Lcom/oplus/camera/capmode/BaseMode;->mPostCounter:I

    const/4 v2, 0x1

    .line 239
    iput v2, p0, Lcom/oplus/camera/capmode/BaseMode;->mSensorNumber:I

    .line 240
    iput v0, p0, Lcom/oplus/camera/capmode/BaseMode;->mSysBrightness:I

    .line 241
    iput v0, p0, Lcom/oplus/camera/capmode/BaseMode;->mFlashTrigger:I

    .line 242
    iput-boolean v0, p0, Lcom/oplus/camera/capmode/BaseMode;->mbNeedCapture:Z

    .line 243
    iput-boolean v0, p0, Lcom/oplus/camera/capmode/BaseMode;->mbFrontCamera:Z

    .line 244
    iput-boolean v0, p0, Lcom/oplus/camera/capmode/BaseMode;->mbBurstShot:Z

    .line 246
    iput-boolean v0, p0, Lcom/oplus/camera/capmode/BaseMode;->mbInBurstShotCapturing:Z

    .line 247
    iput-boolean v0, p0, Lcom/oplus/camera/capmode/BaseMode;->mbInPreparing:Z

    .line 248
    iput-boolean v0, p0, Lcom/oplus/camera/capmode/BaseMode;->mbPaused:Z

    .line 249
    iput-boolean v0, p0, Lcom/oplus/camera/capmode/BaseMode;->mbDestroyed:Z

    .line 250
    iput-boolean v0, p0, Lcom/oplus/camera/capmode/BaseMode;->mbCapModeInit:Z

    .line 251
    iput-boolean v0, p0, Lcom/oplus/camera/capmode/BaseMode;->mbModePreInit:Z

    .line 252
    iput-boolean v0, p0, Lcom/oplus/camera/capmode/BaseMode;->mbAutoHDR:Z

    .line 253
    iput-boolean v0, p0, Lcom/oplus/camera/capmode/BaseMode;->mbAutoBinning:Z

    .line 254
    iput-boolean v0, p0, Lcom/oplus/camera/capmode/BaseMode;->mbAutoFlash:Z

    .line 255
    iput-boolean v2, p0, Lcom/oplus/camera/capmode/BaseMode;->mbAllowSwitchMode:Z

    .line 257
    iput-boolean v0, p0, Lcom/oplus/camera/capmode/BaseMode;->mbOpenViviEffectAfterBurstShot:Z

    .line 258
    iput-boolean v0, p0, Lcom/oplus/camera/capmode/BaseMode;->mbDisplayOnLock:Z

    .line 259
    iput-boolean v0, p0, Lcom/oplus/camera/capmode/BaseMode;->mbEnableTuningData:Z

    .line 260
    iput-boolean v0, p0, Lcom/oplus/camera/capmode/BaseMode;->mbResetAeLockAfterCaptured:Z

    .line 261
    iput-boolean v0, p0, Lcom/oplus/camera/capmode/BaseMode;->mbResetAwbLockAfterCaptured:Z

    .line 262
    iput-boolean v0, p0, Lcom/oplus/camera/capmode/BaseMode;->mbForbidPreferenceChange:Z

    .line 263
    iput-boolean v0, p0, Lcom/oplus/camera/capmode/BaseMode;->mbFlashTemporaryDisabled:Z

    .line 264
    iput-boolean v0, p0, Lcom/oplus/camera/capmode/BaseMode;->mbHDRAvoidedByAIS:Z

    .line 265
    iput-boolean v0, p0, Lcom/oplus/camera/capmode/BaseMode;->mbCaptureNotMatchMeta:Z

    .line 266
    iput-boolean v0, p0, Lcom/oplus/camera/capmode/BaseMode;->mbCaptureHasSuperTextResult:Z

    .line 267
    iput-boolean v0, p0, Lcom/oplus/camera/capmode/BaseMode;->mbAutoSeNight:Z

    .line 268
    iput-boolean v0, p0, Lcom/oplus/camera/capmode/BaseMode;->mbFirstShowAfterAuto:Z

    const-string v3, "off"

    .line 270
    iput-object v3, p0, Lcom/oplus/camera/capmode/BaseMode;->mHDRMode:Ljava/lang/String;

    .line 271
    iput-object v3, p0, Lcom/oplus/camera/capmode/BaseMode;->mFlashMode:Ljava/lang/String;

    .line 273
    iput-object v1, p0, Lcom/oplus/camera/capmode/BaseMode;->mOneCamera:Lcom/oplus/camera/e/d;

    .line 274
    iput-object v1, p0, Lcom/oplus/camera/capmode/BaseMode;->mCameraInterface:Lcom/oplus/camera/capmode/a;

    .line 275
    iput-object v1, p0, Lcom/oplus/camera/capmode/BaseMode;->mCameraUIInterface:Lcom/oplus/camera/ui/CameraUIInterface;

    .line 276
    iput-object v1, p0, Lcom/oplus/camera/capmode/BaseMode;->mActivity:Landroid/app/Activity;

    .line 277
    iput-object v1, p0, Lcom/oplus/camera/capmode/BaseMode;->mPreferences:Landroid/content/SharedPreferences;

    .line 278
    iput-object v1, p0, Lcom/oplus/camera/capmode/BaseMode;->mPreviewEffectProcess:Lcom/oplus/camera/ui/preview/a/t;

    .line 279
    iput-object v1, p0, Lcom/oplus/camera/capmode/BaseMode;->mCameraRootView:Landroid/view/ViewGroup;

    .line 280
    iput-object v1, p0, Lcom/oplus/camera/capmode/BaseMode;->mEffectMenuNames:Ljava/util/List;

    const-string v3, "beauty"

    .line 281
    iput-object v3, p0, Lcom/oplus/camera/capmode/BaseMode;->mEffectMenuSelect:Ljava/lang/String;

    .line 282
    iput-object v1, p0, Lcom/oplus/camera/capmode/BaseMode;->mDecisionResult:Lcom/oplus/camera/aps/util/CameraApsDecision;

    .line 283
    iput-object v1, p0, Lcom/oplus/camera/capmode/BaseMode;->mDetectResult:Lcom/oplus/camera/u/a;

    .line 284
    iput v0, p0, Lcom/oplus/camera/capmode/BaseMode;->mCaptureStartedCallbackNum:I

    .line 285
    iput-object v1, p0, Lcom/oplus/camera/capmode/BaseMode;->mApsService:Lcom/oplus/camera/aps/service/ApsService;

    .line 286
    iput-object v1, p0, Lcom/oplus/camera/capmode/BaseMode;->mCameraEntry:Lcom/oplus/camera/entry/b;

    .line 287
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    iput-object v3, p0, Lcom/oplus/camera/capmode/BaseMode;->mPreviweStreamNeedState:Ljava/lang/Integer;

    .line 288
    iput-object v1, p0, Lcom/oplus/camera/capmode/BaseMode;->mCaptureRequestTag:Lcom/oplus/camera/e/c;

    .line 294
    iput-boolean v0, p0, Lcom/oplus/camera/capmode/BaseMode;->mbRawRequestTag:Z

    .line 296
    iput-boolean v0, p0, Lcom/oplus/camera/capmode/BaseMode;->mbBackPressedAfterCapture:Z

    .line 297
    iput v0, p0, Lcom/oplus/camera/capmode/BaseMode;->mApsBracketMode:I

    .line 298
    iput v0, p0, Lcom/oplus/camera/capmode/BaseMode;->mAsdSceneValue:I

    const-wide/16 v3, 0x0

    .line 299
    iput-wide v3, p0, Lcom/oplus/camera/capmode/BaseMode;->mCaptureDate:J

    .line 300
    iput v0, p0, Lcom/oplus/camera/capmode/BaseMode;->mApsDecisionFeatureType:I

    .line 301
    iput v2, p0, Lcom/oplus/camera/capmode/BaseMode;->mCameraEntryType:I

    .line 302
    iput v0, p0, Lcom/oplus/camera/capmode/BaseMode;->mFaceCountStatusCount:I

    const-string v5, ""

    .line 304
    iput-object v5, p0, Lcom/oplus/camera/capmode/BaseMode;->mFullAlgoKey:Ljava/lang/String;

    .line 305
    iput-object v5, p0, Lcom/oplus/camera/capmode/BaseMode;->mFullAlgoValue:Ljava/lang/String;

    .line 307
    iput-object v1, p0, Lcom/oplus/camera/capmode/BaseMode;->mFocusOutOfRange:Ljava/lang/Object;

    .line 308
    iput-boolean v0, p0, Lcom/oplus/camera/capmode/BaseMode;->mbNeedReloadFlashMenu:Z

    .line 309
    iput-boolean v0, p0, Lcom/oplus/camera/capmode/BaseMode;->mbShowEnvironmentTips:Z

    .line 310
    iput-boolean v0, p0, Lcom/oplus/camera/capmode/BaseMode;->mbTrackFocusOpen:Z

    .line 311
    iput-boolean v0, p0, Lcom/oplus/camera/capmode/BaseMode;->mbSupportSelectPhotoRatio:Z

    .line 312
    iput v0, p0, Lcom/oplus/camera/capmode/BaseMode;->mCapturePreviewDataState:I

    .line 314
    iput-object v1, p0, Lcom/oplus/camera/capmode/BaseMode;->mThumbnailTitle:Ljava/lang/String;

    .line 315
    iput-object v1, p0, Lcom/oplus/camera/capmode/BaseMode;->mBaseSloganUtil:Lcom/oplus/camera/c;

    .line 317
    iput v0, p0, Lcom/oplus/camera/capmode/BaseMode;->mMergeIndex:I

    .line 318
    iput-wide v3, p0, Lcom/oplus/camera/capmode/BaseMode;->mCaptureMergeIdentity:J

    .line 319
    iput-wide v3, p0, Lcom/oplus/camera/capmode/BaseMode;->mReprocessMetadataTimeStamp:J

    .line 321
    iput v0, p0, Lcom/oplus/camera/capmode/BaseMode;->mEVValueFromMetadata:I

    .line 322
    iput-boolean v0, p0, Lcom/oplus/camera/capmode/BaseMode;->mbLuxHasChange:Z

    .line 324
    iput v2, p0, Lcom/oplus/camera/capmode/BaseMode;->mMultiFrameCount:I

    .line 327
    new-instance v0, Lcom/oplus/camera/capmode/BaseMode$1;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/oplus/camera/capmode/BaseMode$1;-><init>(Lcom/oplus/camera/capmode/BaseMode;Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/oplus/camera/capmode/BaseMode;->mHandler:Landroid/os/Handler;

    .line 422
    new-instance v0, Lcom/oplus/camera/capmode/BaseMode$3;

    invoke-direct {v0, p0}, Lcom/oplus/camera/capmode/BaseMode$3;-><init>(Lcom/oplus/camera/capmode/BaseMode;)V

    iput-object v0, p0, Lcom/oplus/camera/capmode/BaseMode;->mCameraPictureCallback:Lcom/oplus/ocs/camera/CameraPictureCallback;

    const-string v0, "BaseMode"

    const-string v1, "BaseMode, constructor init"

    .line 516
    invoke-static {v0, v1}, Lcom/oplus/camera/e;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 518
    iput-object p1, p0, Lcom/oplus/camera/capmode/BaseMode;->mActivity:Landroid/app/Activity;

    .line 519
    iput-object p2, p0, Lcom/oplus/camera/capmode/BaseMode;->mCameraInterface:Lcom/oplus/camera/capmode/a;

    .line 520
    iput-object p3, p0, Lcom/oplus/camera/capmode/BaseMode;->mCameraUIInterface:Lcom/oplus/camera/ui/CameraUIInterface;

    .line 521
    iget-object p1, p0, Lcom/oplus/camera/capmode/BaseMode;->mCameraInterface:Lcom/oplus/camera/capmode/a;

    invoke-interface {p1}, Lcom/oplus/camera/capmode/a;->t()Landroid/content/SharedPreferences;

    move-result-object p1

    iput-object p1, p0, Lcom/oplus/camera/capmode/BaseMode;->mPreferences:Landroid/content/SharedPreferences;

    .line 522
    iput-object p4, p0, Lcom/oplus/camera/capmode/BaseMode;->mPreviewEffectProcess:Lcom/oplus/camera/ui/preview/a/t;

    .line 523
    iget-object p1, p0, Lcom/oplus/camera/capmode/BaseMode;->mCameraInterface:Lcom/oplus/camera/capmode/a;

    invoke-interface {p1}, Lcom/oplus/camera/capmode/a;->b()Lcom/oplus/camera/entry/b;

    move-result-object p1

    iput-object p1, p0, Lcom/oplus/camera/capmode/BaseMode;->mCameraEntry:Lcom/oplus/camera/entry/b;

    .line 524
    iget-object p1, p0, Lcom/oplus/camera/capmode/BaseMode;->mCameraEntry:Lcom/oplus/camera/entry/b;

    invoke-virtual {p1}, Lcom/oplus/camera/entry/b;->J()I

    move-result p1

    iput p1, p0, Lcom/oplus/camera/capmode/BaseMode;->mCameraEntryType:I

    .line 525
    new-instance p1, Lcom/oplus/camera/algovisualization/j;

    iget-object p2, p0, Lcom/oplus/camera/capmode/BaseMode;->mActivity:Landroid/app/Activity;

    invoke-direct {p1, p2}, Lcom/oplus/camera/algovisualization/j;-><init>(Landroid/app/Activity;)V

    iput-object p1, p0, Lcom/oplus/camera/capmode/BaseMode;->mStatePreferenceHelper:Lcom/oplus/camera/algovisualization/j;

    return-void
.end method

.method static synthetic access$000(Lcom/oplus/camera/capmode/BaseMode;I)Ljava/lang/String;
    .locals 0

    .line 142
    invoke-direct {p0, p1}, Lcom/oplus/camera/capmode/BaseMode;->getMessageType(I)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method static synthetic access$100(Lcom/oplus/camera/capmode/BaseMode;[BIIIZI)V
    .locals 0

    .line 142
    invoke-direct/range {p0 .. p6}, Lcom/oplus/camera/capmode/BaseMode;->doOnPictureCallback([BIIIZI)V

    return-void
.end method

.method static synthetic access$200(Lcom/oplus/camera/capmode/BaseMode;Lcom/oplus/camera/ui/preview/a/p;)V
    .locals 0

    .line 142
    invoke-direct {p0, p1}, Lcom/oplus/camera/capmode/BaseMode;->doCreateEffectTextures(Lcom/oplus/camera/ui/preview/a/p;)V

    return-void
.end method

.method static synthetic access$300(Lcom/oplus/camera/capmode/BaseMode;)Landroid/os/Handler;
    .locals 0

    .line 142
    iget-object p0, p0, Lcom/oplus/camera/capmode/BaseMode;->mHandler:Landroid/os/Handler;

    return-object p0
.end method

.method static synthetic access$400(Lcom/oplus/camera/capmode/BaseMode;)J
    .locals 2

    .line 142
    iget-wide v0, p0, Lcom/oplus/camera/capmode/BaseMode;->mCaptureMergeIdentity:J

    return-wide v0
.end method

.method static synthetic access$500(Lcom/oplus/camera/capmode/BaseMode;)Ljava/lang/String;
    .locals 0

    .line 142
    iget-object p0, p0, Lcom/oplus/camera/capmode/BaseMode;->mThumbnailTitle:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic access$600(Lcom/oplus/camera/capmode/BaseMode;)V
    .locals 0

    .line 142
    invoke-direct {p0}, Lcom/oplus/camera/capmode/BaseMode;->checkFlashMode()V

    return-void
.end method

.method private final beforeSnapping(Lcom/oplus/camera/e/c;)Z
    .locals 11

    const-string v0, "captureX beforeSnapping"

    .line 2762
    invoke-static {v0}, Lcom/oplus/camera/e;->a(Ljava/lang/String;)V

    .line 2766
    iget-object v1, p0, Lcom/oplus/camera/capmode/BaseMode;->mCameraInterface:Lcom/oplus/camera/capmode/a;

    invoke-interface {v1}, Lcom/oplus/camera/capmode/a;->u()I

    move-result v1

    iput v1, p0, Lcom/oplus/camera/capmode/BaseMode;->mCaptureOrientation:I

    .line 2768
    iget-object v1, p0, Lcom/oplus/camera/capmode/BaseMode;->mCameraInterface:Lcom/oplus/camera/capmode/a;

    invoke-interface {v1}, Lcom/oplus/camera/capmode/a;->c()Z

    move-result v1

    .line 2770
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "beforeSnapping, ret: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v3, ", mbAutoHDR: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v3, p0, Lcom/oplus/camera/capmode/BaseMode;->mbAutoHDR:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "BaseMode"

    invoke-static {v3, v2}, Lcom/oplus/camera/e;->a(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v2, 0x0

    if-nez v1, :cond_0

    const-string p0, "beforeSnapping, beforeCaptureProcess return false"

    .line 2773
    invoke-static {v3, p0}, Lcom/oplus/camera/e;->f(Ljava/lang/String;Ljava/lang/String;)V

    return v2

    :cond_0
    const/4 v1, 0x0

    .line 2778
    invoke-virtual {p0, v1}, Lcom/oplus/camera/capmode/BaseMode;->getExif(Lcom/oplus/ocs/camera/CameraPictureCallback$CameraPictureResult;)Ljava/lang/String;

    .line 2780
    invoke-virtual {p0, p1}, Lcom/oplus/camera/capmode/BaseMode;->onBeforeSnapping(Lcom/oplus/camera/e/c;)Z

    move-result v4

    .line 2782
    iget-object v5, p0, Lcom/oplus/camera/capmode/BaseMode;->mActivity:Landroid/app/Activity;

    new-instance v6, Lcom/oplus/camera/capmode/BaseMode$7;

    invoke-direct {v6, p0}, Lcom/oplus/camera/capmode/BaseMode$7;-><init>(Lcom/oplus/camera/capmode/BaseMode;)V

    invoke-virtual {v5, v6}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 2791
    iget v5, p0, Lcom/oplus/camera/capmode/BaseMode;->mCameraId:I

    invoke-virtual {p0, v5}, Lcom/oplus/camera/capmode/BaseMode;->getProperCameraId(I)I

    move-result v5

    iget v6, p0, Lcom/oplus/camera/capmode/BaseMode;->mCaptureOrientation:I

    invoke-virtual {p0, v5, v6}, Lcom/oplus/camera/capmode/BaseMode;->getJpegOrientation(II)I

    move-result v5

    iput v5, p0, Lcom/oplus/camera/capmode/BaseMode;->mJpgOrientation:I

    const-string v5, "func_aps_bracketmode"

    .line 2793
    invoke-virtual {p0, v5}, Lcom/oplus/camera/capmode/BaseMode;->getSupportFunction(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_2

    iget-object v5, p1, Lcom/oplus/camera/e/c;->N:Lcom/oplus/camera/aps/util/CameraApsDecision;

    invoke-virtual {p0, v5}, Lcom/oplus/camera/capmode/BaseMode;->disableBokehHDR(Lcom/oplus/camera/aps/util/CameraApsDecision;)Z

    move-result v5

    if-eqz v5, :cond_1

    goto :goto_0

    .line 2796
    :cond_1
    iget v5, p1, Lcom/oplus/camera/e/c;->V:I

    iput v5, p0, Lcom/oplus/camera/capmode/BaseMode;->mApsBracketMode:I

    .line 2797
    iget v5, p0, Lcom/oplus/camera/capmode/BaseMode;->mApsBracketMode:I

    invoke-virtual {p0, v2, v5}, Lcom/oplus/camera/capmode/BaseMode;->updateBracketMode(ZI)V

    goto :goto_1

    .line 2794
    :cond_2
    :goto_0
    invoke-virtual {p0, v2, v2}, Lcom/oplus/camera/capmode/BaseMode;->updateBracketMode(ZI)V

    .line 2800
    :goto_1
    iget v5, p0, Lcom/oplus/camera/capmode/BaseMode;->mApsDecisionFeatureType:I

    iget v6, p1, Lcom/oplus/camera/e/c;->X:I

    if-eq v5, v6, :cond_3

    .line 2801
    iget v5, p1, Lcom/oplus/camera/e/c;->X:I

    iput v5, p0, Lcom/oplus/camera/capmode/BaseMode;->mApsDecisionFeatureType:I

    .line 2804
    :cond_3
    iget-object v5, p0, Lcom/oplus/camera/capmode/BaseMode;->mOneCamera:Lcom/oplus/camera/e/d;

    sget-object v6, Landroid/hardware/camera2/CaptureRequest;->JPEG_ORIENTATION:Landroid/hardware/camera2/CaptureRequest$Key;

    iget v7, p0, Lcom/oplus/camera/capmode/BaseMode;->mJpgOrientation:I

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-interface {v5, v6, v7}, Lcom/oplus/camera/e/d;->a(Landroid/hardware/camera2/CaptureRequest$Key;Ljava/lang/Object;)V

    .line 2805
    iget-object v5, p0, Lcom/oplus/camera/capmode/BaseMode;->mOneCamera:Lcom/oplus/camera/e/d;

    sget-object v6, Lcom/oplus/ocs/camera/CameraParameter;->FACE_RECTIFY_ENABLE:Lcom/oplus/ocs/camera/CameraParameter$PreviewKey;

    invoke-virtual {p0}, Lcom/oplus/camera/capmode/BaseMode;->isFaceRectifyOpen()Z

    move-result v7

    invoke-static {v7}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v7

    invoke-interface {v5, v6, v7}, Lcom/oplus/camera/e/d;->a(Lcom/oplus/ocs/camera/CameraParameter$PreviewKey;Ljava/lang/Object;)V

    .line 2807
    iget-boolean v5, p0, Lcom/oplus/camera/capmode/BaseMode;->mbBurstShot:Z

    const/4 v6, 0x1

    if-eqz v5, :cond_4

    .line 2808
    iget-object v3, p0, Lcom/oplus/camera/capmode/BaseMode;->mOneCamera:Lcom/oplus/camera/e/d;

    sget-object v5, Landroid/hardware/camera2/CaptureRequest;->JPEG_QUALITY:Landroid/hardware/camera2/CaptureRequest$Key;

    const/16 v7, 0x4b

    invoke-static {v7}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v7

    invoke-interface {v3, v5, v7}, Lcom/oplus/camera/e/d;->a(Landroid/hardware/camera2/CaptureRequest$Key;Ljava/lang/Object;)V

    goto/16 :goto_4

    .line 2810
    :cond_4
    invoke-static {}, Lcom/oplus/camera/util/Util;->C()Z

    move-result v5

    const/16 v7, 0x5f

    if-nez v5, :cond_b

    .line 2811
    invoke-virtual {p0}, Lcom/oplus/camera/capmode/BaseMode;->getHeicCodecFormat()Ljava/lang/String;

    move-result-object v5

    if-nez v5, :cond_5

    .line 2814
    iget-object v8, p0, Lcom/oplus/camera/capmode/BaseMode;->mOneCamera:Lcom/oplus/camera/e/d;

    sget-object v9, Landroid/hardware/camera2/CaptureRequest;->JPEG_QUALITY:Landroid/hardware/camera2/CaptureRequest$Key;

    invoke-static {v7}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v7

    invoke-interface {v8, v9, v7}, Lcom/oplus/camera/e/d;->a(Landroid/hardware/camera2/CaptureRequest$Key;Ljava/lang/Object;)V

    goto :goto_3

    :cond_5
    const/4 v8, -0x1

    .line 2816
    invoke-virtual {v5}, Ljava/lang/String;->hashCode()I

    move-result v9

    const v10, -0x2e17ddf3

    if-eq v9, v10, :cond_7

    const v10, 0x7299bdd6

    if-eq v9, v10, :cond_6

    goto :goto_2

    :cond_6
    const-string v9, "heic_8bits"

    invoke-virtual {v5, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_8

    move v8, v6

    goto :goto_2

    :cond_7
    const-string v9, "heic_10bits"

    invoke-virtual {v5, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_8

    move v8, v2

    :cond_8
    :goto_2
    if-eqz v8, :cond_a

    if-eq v8, v6, :cond_9

    .line 2826
    iget-object v8, p0, Lcom/oplus/camera/capmode/BaseMode;->mOneCamera:Lcom/oplus/camera/e/d;

    sget-object v9, Landroid/hardware/camera2/CaptureRequest;->JPEG_QUALITY:Landroid/hardware/camera2/CaptureRequest$Key;

    invoke-static {v7}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v7

    invoke-interface {v8, v9, v7}, Lcom/oplus/camera/e/d;->a(Landroid/hardware/camera2/CaptureRequest$Key;Ljava/lang/Object;)V

    goto :goto_3

    .line 2822
    :cond_9
    iget-object v7, p0, Lcom/oplus/camera/capmode/BaseMode;->mOneCamera:Lcom/oplus/camera/e/d;

    sget-object v8, Landroid/hardware/camera2/CaptureRequest;->JPEG_QUALITY:Landroid/hardware/camera2/CaptureRequest$Key;

    const/16 v9, 0x46

    invoke-static {v9}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v9

    invoke-interface {v7, v8, v9}, Lcom/oplus/camera/e/d;->a(Landroid/hardware/camera2/CaptureRequest$Key;Ljava/lang/Object;)V

    goto :goto_3

    .line 2818
    :cond_a
    iget-object v7, p0, Lcom/oplus/camera/capmode/BaseMode;->mOneCamera:Lcom/oplus/camera/e/d;

    sget-object v8, Landroid/hardware/camera2/CaptureRequest;->JPEG_QUALITY:Landroid/hardware/camera2/CaptureRequest$Key;

    const/16 v9, 0x32

    invoke-static {v9}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v9

    invoke-interface {v7, v8, v9}, Lcom/oplus/camera/e/d;->a(Landroid/hardware/camera2/CaptureRequest$Key;Ljava/lang/Object;)V

    .line 2831
    :goto_3
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "beforeSnapping, heicCodecFormat: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v3, v5}, Lcom/oplus/camera/e;->c(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_4

    .line 2833
    :cond_b
    iget-object v3, p0, Lcom/oplus/camera/capmode/BaseMode;->mOneCamera:Lcom/oplus/camera/e/d;

    sget-object v5, Landroid/hardware/camera2/CaptureRequest;->JPEG_QUALITY:Landroid/hardware/camera2/CaptureRequest$Key;

    invoke-static {v7}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v7

    invoke-interface {v3, v5, v7}, Lcom/oplus/camera/e/d;->a(Landroid/hardware/camera2/CaptureRequest$Key;Ljava/lang/Object;)V

    .line 2837
    :goto_4
    iget-object v3, p0, Lcom/oplus/camera/capmode/BaseMode;->mOneCamera:Lcom/oplus/camera/e/d;

    sget-object v5, Landroid/hardware/camera2/CaptureRequest;->JPEG_GPS_LOCATION:Landroid/hardware/camera2/CaptureRequest$Key;

    iget-object v7, p0, Lcom/oplus/camera/capmode/BaseMode;->mCameraInterface:Lcom/oplus/camera/capmode/a;

    invoke-interface {v7}, Lcom/oplus/camera/capmode/a;->y()Landroid/location/Location;

    move-result-object v7

    invoke-interface {v3, v5, v7}, Lcom/oplus/camera/e/d;->b(Landroid/hardware/camera2/CaptureRequest$Key;Ljava/lang/Object;)V

    .line 2840
    invoke-static {}, Lcom/oplus/camera/util/Util;->C()Z

    move-result v3

    if-nez v3, :cond_d

    iget-object p1, p1, Lcom/oplus/camera/e/c;->L:[I

    if-eqz p1, :cond_d

    iget-boolean p1, p0, Lcom/oplus/camera/capmode/BaseMode;->mbFrontCamera:Z

    if-eqz p1, :cond_c

    .line 2842
    invoke-virtual {p0}, Lcom/oplus/camera/capmode/BaseMode;->isInNightProcess()Z

    move-result p1

    if-nez p1, :cond_d

    .line 2843
    :cond_c
    iget-object p1, p0, Lcom/oplus/camera/capmode/BaseMode;->mOneCamera:Lcom/oplus/camera/e/d;

    invoke-interface {p1, v6, v2}, Lcom/oplus/camera/e/d;->b(ZZ)V

    .line 2844
    iget-object p1, p0, Lcom/oplus/camera/capmode/BaseMode;->mOneCamera:Lcom/oplus/camera/e/d;

    invoke-interface {p1, v1}, Lcom/oplus/camera/e/d;->a(Lcom/oplus/camera/e/d$c;)V

    .line 2845
    iput-boolean v6, p0, Lcom/oplus/camera/capmode/BaseMode;->mbResetAeLockAfterCaptured:Z

    .line 2848
    :cond_d
    invoke-static {v0}, Lcom/oplus/camera/e;->b(Ljava/lang/String;)V

    return v4
.end method

.method private capturePreviewData(Lcom/oplus/camera/e/c;)V
    .locals 3

    .line 2898
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "capturePreviewData, title: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/oplus/camera/capmode/BaseMode;->mThumbnailTitle:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "BaseMode"

    invoke-static {v1, v0}, Lcom/oplus/camera/e;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 2900
    iget-object v0, p0, Lcom/oplus/camera/capmode/BaseMode;->mCameraUIInterface:Lcom/oplus/camera/ui/CameraUIInterface;

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lcom/oplus/camera/capmode/BaseMode;->getCapturePreviewDataState()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 2901
    iget-object v0, p0, Lcom/oplus/camera/capmode/BaseMode;->mCameraUIInterface:Lcom/oplus/camera/ui/CameraUIInterface;

    new-instance v2, Lcom/oplus/camera/capmode/BaseMode$8;

    invoke-direct {v2, p0, p1}, Lcom/oplus/camera/capmode/BaseMode$8;-><init>(Lcom/oplus/camera/capmode/BaseMode;Lcom/oplus/camera/e/c;)V

    .line 3046
    invoke-virtual {p0}, Lcom/oplus/camera/capmode/BaseMode;->getNeedCheckTimeStamp()Z

    move-result p0

    sget-object p1, Lcom/oplus/camera/gl/t$b;->d:Ljava/lang/String;

    .line 2901
    invoke-interface {v0, v2, v1, p0, p1}, Lcom/oplus/camera/ui/CameraUIInterface;->a(Lcom/oplus/camera/gl/t$b;ZZLjava/lang/String;)V

    :cond_0
    return-void
.end method

.method private checkExplorerChipState(Landroid/hardware/camera2/CaptureResult;)V
    .locals 6

    .line 8120
    sget-object v0, Lcom/oplus/camera/e/b;->at:Landroid/hardware/camera2/CaptureResult$Key;

    invoke-static {p1, v0}, Lcom/oplus/camera/e/b;->a(Landroid/hardware/camera2/CaptureResult;Landroid/hardware/camera2/CaptureResult$Key;)Ljava/lang/Object;

    move-result-object p1

    .line 8122
    instance-of v0, p1, Ljava/lang/Integer;

    if-eqz v0, :cond_1

    .line 8123
    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    const/4 v0, 0x1

    const/high16 v1, 0x40000000    # 2.0f

    if-eq p1, v1, :cond_0

    if-eqz p1, :cond_0

    move v2, v0

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    .line 8127
    :goto_0
    iget-object v3, p0, Lcom/oplus/camera/capmode/BaseMode;->mPreferences:Landroid/content/SharedPreferences;

    const-string v4, "key_explorer_chip_state"

    invoke-interface {v3, v4, v0}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v0

    .line 8129
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "checkExplorerChipState, explorerChipStateValue: "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const-string v5, "BaseMode"

    invoke-static {v5, v3}, Lcom/oplus/camera/e;->b(Ljava/lang/String;Ljava/lang/String;)V

    if-eq v2, v0, :cond_1

    .line 8132
    iget-object v0, p0, Lcom/oplus/camera/capmode/BaseMode;->mPreferences:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0, v4, v2}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    if-ne v1, p1, :cond_1

    .line 8135
    iget-object p1, p0, Lcom/oplus/camera/capmode/BaseMode;->mActivity:Landroid/app/Activity;

    if-eqz p1, :cond_1

    invoke-virtual {p1}, Landroid/app/Activity;->isFinishing()Z

    move-result p1

    if-nez p1, :cond_1

    .line 8136
    iget-object p0, p0, Lcom/oplus/camera/capmode/BaseMode;->mActivity:Landroid/app/Activity;

    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    :cond_1
    return-void
.end method

.method private checkFlashMode()V
    .locals 3

    .line 7756
    sget-object v0, Lcom/oplus/camera/ui/inverse/e;->INS:Lcom/oplus/camera/ui/inverse/e;

    iget-object v1, p0, Lcom/oplus/camera/capmode/BaseMode;->mActivity:Landroid/app/Activity;

    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/oplus/camera/ui/inverse/e;->isInverseColor(I)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/oplus/camera/capmode/BaseMode;->mOneCamera:Lcom/oplus/camera/e/d;

    .line 7757
    invoke-interface {v0}, Lcom/oplus/camera/e/d;->q()Ljava/lang/String;

    move-result-object v0

    const-string v2, "torch"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 7758
    iget-object v0, p0, Lcom/oplus/camera/capmode/BaseMode;->mOneCamera:Lcom/oplus/camera/e/d;

    invoke-interface {v0, v2}, Lcom/oplus/camera/e/d;->b(Ljava/lang/String;)V

    .line 7759
    iget-object p0, p0, Lcom/oplus/camera/capmode/BaseMode;->mOneCamera:Lcom/oplus/camera/e/d;

    invoke-interface {p0, v1}, Lcom/oplus/camera/e/d;->a(Lcom/oplus/camera/e/d$c;)V

    goto :goto_0

    .line 7760
    :cond_0
    sget-object v0, Lcom/oplus/camera/ui/inverse/e;->INS:Lcom/oplus/camera/ui/inverse/e;

    iget-object v2, p0, Lcom/oplus/camera/capmode/BaseMode;->mActivity:Landroid/app/Activity;

    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v2

    invoke-virtual {v0, v2}, Lcom/oplus/camera/ui/inverse/e;->isInverseColor(I)Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/oplus/camera/capmode/BaseMode;->mOneCamera:Lcom/oplus/camera/e/d;

    .line 7761
    invoke-interface {v0}, Lcom/oplus/camera/e/d;->q()Ljava/lang/String;

    move-result-object v0

    const-string v2, "off"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 7762
    iget-object v0, p0, Lcom/oplus/camera/capmode/BaseMode;->mOneCamera:Lcom/oplus/camera/e/d;

    invoke-interface {v0, v2}, Lcom/oplus/camera/e/d;->b(Ljava/lang/String;)V

    .line 7763
    iget-object p0, p0, Lcom/oplus/camera/capmode/BaseMode;->mOneCamera:Lcom/oplus/camera/e/d;

    invoke-interface {p0, v1}, Lcom/oplus/camera/e/d;->a(Lcom/oplus/camera/e/d$c;)V

    :cond_1
    :goto_0
    return-void
.end method

.method private checkHighBrightness()V
    .locals 2

    .line 7768
    sget-object v0, Lcom/oplus/camera/ui/inverse/e;->INS:Lcom/oplus/camera/ui/inverse/e;

    iget-object v1, p0, Lcom/oplus/camera/capmode/BaseMode;->mActivity:Landroid/app/Activity;

    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/oplus/camera/ui/inverse/e;->isInverseColor(I)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 7769
    sget-boolean v0, Lcom/oplus/camera/capmode/BaseMode;->sHighBrightness:Z

    if-eqz v0, :cond_0

    sget-object v0, Lcom/oplus/camera/ui/inverse/e;->INS:Lcom/oplus/camera/ui/inverse/e;

    invoke-virtual {v0}, Lcom/oplus/camera/ui/inverse/e;->getCurrentHighBrightnessValue()F

    move-result v0

    invoke-virtual {p0}, Lcom/oplus/camera/capmode/BaseMode;->getHighBrightnessValue()F

    move-result v1

    cmpl-float v0, v0, v1

    if-eqz v0, :cond_2

    .line 7770
    :cond_0
    sget-object v0, Lcom/oplus/camera/ui/inverse/e;->INS:Lcom/oplus/camera/ui/inverse/e;

    invoke-virtual {p0}, Lcom/oplus/camera/capmode/BaseMode;->getHighBrightnessValue()F

    move-result v1

    invoke-virtual {v0, v1}, Lcom/oplus/camera/ui/inverse/e;->setCurrentHighBrightnessValue(F)V

    .line 7771
    iget-object p0, p0, Lcom/oplus/camera/capmode/BaseMode;->mCameraInterface:Lcom/oplus/camera/capmode/a;

    sget-object v0, Lcom/oplus/camera/ui/inverse/e;->INS:Lcom/oplus/camera/ui/inverse/e;

    invoke-virtual {v0}, Lcom/oplus/camera/ui/inverse/e;->getCurrentHighBrightnessValue()F

    move-result v0

    invoke-interface {p0, v0}, Lcom/oplus/camera/capmode/a;->b(F)V

    const/4 p0, 0x1

    .line 7772
    sput-boolean p0, Lcom/oplus/camera/capmode/BaseMode;->sHighBrightness:Z

    goto :goto_0

    .line 7774
    :cond_1
    sget-boolean v0, Lcom/oplus/camera/capmode/BaseMode;->sHighBrightness:Z

    if-eqz v0, :cond_2

    .line 7775
    invoke-direct {p0}, Lcom/oplus/camera/capmode/BaseMode;->resetScreenState()V

    :cond_2
    :goto_0
    return-void
.end method

.method private doCreateEffectTextures(Lcom/oplus/camera/ui/preview/a/p;)V
    .locals 11

    .line 4738
    invoke-virtual {p0}, Lcom/oplus/camera/capmode/BaseMode;->getCurrEffectMenuName()Ljava/lang/String;

    move-result-object v1

    .line 4739
    iget-boolean v4, p0, Lcom/oplus/camera/capmode/BaseMode;->mbFrontCamera:Z

    .line 4741
    iget-object v0, p0, Lcom/oplus/camera/capmode/BaseMode;->mCameraInterface:Lcom/oplus/camera/capmode/a;

    const/4 v2, 0x0

    if-eqz v0, :cond_0

    invoke-interface {v0}, Lcom/oplus/camera/capmode/a;->aw()I

    move-result v0

    goto :goto_0

    :cond_0
    move v0, v2

    .line 4740
    :goto_0
    invoke-virtual {p0, v0}, Lcom/oplus/camera/capmode/BaseMode;->getSensorOrientation(I)I

    move-result v0

    .line 4745
    invoke-virtual {p0}, Lcom/oplus/camera/capmode/BaseMode;->isMicroscopeMode()Z

    move-result v3

    const/16 v5, 0x10e

    const/4 v6, 0x1

    if-eqz v3, :cond_2

    const/16 v3, 0x5a

    if-ne v3, v0, :cond_1

    :goto_1
    move v3, v6

    goto :goto_2

    :cond_1
    move v3, v2

    goto :goto_2

    :cond_2
    if-ne v5, v0, :cond_1

    goto :goto_1

    .line 4751
    :goto_2
    invoke-static {}, Lcom/oplus/camera/util/Util;->t()Z

    move-result v7

    if-eqz v7, :cond_4

    if-eqz v4, :cond_4

    if-ne v5, v0, :cond_3

    move v0, v6

    goto :goto_3

    :cond_3
    move v0, v2

    :goto_3
    move v5, v0

    goto :goto_4

    :cond_4
    move v5, v3

    .line 4755
    :goto_4
    invoke-virtual {p0}, Lcom/oplus/camera/capmode/BaseMode;->getCameraMode()Ljava/lang/String;

    move-result-object v0

    const-string v3, "macro"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    if-eqz v5, :cond_5

    goto :goto_5

    :cond_5
    move v6, v2

    :goto_5
    const-string v0, "filter"

    .line 4759
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_6

    iget-object v0, p0, Lcom/oplus/camera/capmode/BaseMode;->mActivity:Landroid/app/Activity;

    if-eqz v0, :cond_6

    .line 4760
    invoke-virtual {v0}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {p0}, Lcom/oplus/camera/capmode/BaseMode;->getCurrFilterIndex()I

    move-result v2

    invoke-virtual {p0}, Lcom/oplus/camera/capmode/BaseMode;->getCurFilterListType()I

    move-result v3

    .line 4761
    invoke-direct {p0}, Lcom/oplus/camera/capmode/BaseMode;->getFilterModelList()Ljava/util/List;

    move-result-object v7

    .line 4762
    invoke-virtual {p0}, Lcom/oplus/camera/capmode/BaseMode;->getCameraMode()Ljava/lang/String;

    move-result-object v8

    iget v9, p0, Lcom/oplus/camera/capmode/BaseMode;->mCameraId:I

    invoke-static {v8, v9}, Lcom/oplus/camera/e/a;->a(Ljava/lang/String;I)Lcom/oplus/camera/e/h;

    move-result-object v8

    invoke-virtual {p0, v8}, Lcom/oplus/camera/capmode/BaseMode;->getPreviewSize(Lcom/oplus/camera/e/h;)Landroid/util/Size;

    move-result-object v9

    iget-object p0, p0, Lcom/oplus/camera/capmode/BaseMode;->mCameraUIInterface:Lcom/oplus/camera/ui/CameraUIInterface;

    invoke-interface {p0}, Lcom/oplus/camera/ui/CameraUIInterface;->e()Z

    move-result v10

    move-object v8, p1

    .line 4760
    invoke-static/range {v0 .. v10}, Lcom/oplus/camera/ui/preview/a/j;->a(Landroid/content/res/Resources;Ljava/lang/String;IIZZZLjava/util/List;Lcom/oplus/camera/ui/preview/a/p;Landroid/util/Size;Z)V

    goto :goto_6

    .line 4764
    :cond_6
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "doCreateEffectTextures, currMenuName: "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "; mActivity: "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/oplus/camera/capmode/BaseMode;->mActivity:Landroid/app/Activity;

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "BaseMode"

    invoke-static {p1, p0}, Lcom/oplus/camera/e;->e(Ljava/lang/String;Ljava/lang/String;)V

    :goto_6
    return-void
.end method

.method private doOnPictureCallback([BIIIZI)V
    .locals 10

    move-object v0, p0

    .line 6986
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "doOnPictureCallback, mbPaused: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v2, v0, Lcom/oplus/camera/capmode/BaseMode;->mbPaused:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "BaseMode"

    invoke-static {v2, v1}, Lcom/oplus/camera/e;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 6988
    iget-boolean v1, v0, Lcom/oplus/camera/capmode/BaseMode;->mbPaused:Z

    if-eqz v1, :cond_0

    return-void

    .line 6992
    :cond_0
    iget-object v1, v0, Lcom/oplus/camera/capmode/BaseMode;->mCameraInterface:Lcom/oplus/camera/capmode/a;

    if-eqz v1, :cond_1

    invoke-interface {v1}, Lcom/oplus/camera/capmode/a;->u()I

    move-result v1

    goto :goto_0

    :cond_1
    iget v1, v0, Lcom/oplus/camera/capmode/BaseMode;->mCaptureOrientation:I

    :goto_0
    if-eqz v1, :cond_3

    const/16 v2, 0xb4

    if-ne v1, v2, :cond_2

    goto :goto_1

    :cond_2
    move v2, p2

    move v3, p3

    goto :goto_2

    :cond_3
    :goto_1
    move v3, p2

    move v2, p3

    .line 7002
    :goto_2
    invoke-static {p4}, Lcom/oplus/camera/util/Util;->a(I)Ljava/lang/String;

    move-result-object v4

    if-eqz p1, :cond_4

    const/4 v1, 0x1

    goto :goto_3

    :cond_4
    const/4 v1, 0x0

    :goto_3
    move v5, v1

    const-wide/16 v7, 0x0

    move-object v0, p0

    move-object v1, p1

    move v6, p5

    move/from16 v9, p6

    invoke-virtual/range {v0 .. v9}, Lcom/oplus/camera/capmode/BaseMode;->pictureTakenCallback([BIILjava/lang/String;ZZJI)V

    return-void
.end method

.method private getBlurIndexInArrays([FIIF)I
    .locals 3

    add-int v0, p2, p3

    .line 7258
    div-int/lit8 v0, v0, 0x2

    .line 7260
    aget v1, p1, v0

    cmpl-float v1, v1, p4

    if-nez v1, :cond_0

    return v0

    :cond_0
    const/4 v1, -0x1

    if-lt p2, p3, :cond_1

    return v1

    .line 7266
    :cond_1
    aget v2, p1, v0

    cmpg-float v2, p4, v2

    if-gez v2, :cond_2

    add-int/lit8 v0, v0, -0x1

    .line 7267
    invoke-direct {p0, p1, p2, v0, p4}, Lcom/oplus/camera/capmode/BaseMode;->getBlurIndexInArrays([FIIF)I

    move-result p0

    return p0

    .line 7268
    :cond_2
    aget p2, p1, v0

    cmpl-float p2, p4, p2

    if-lez p2, :cond_3

    add-int/lit8 v0, v0, 0x1

    .line 7269
    invoke-direct {p0, p1, v0, p3, p4}, Lcom/oplus/camera/capmode/BaseMode;->getBlurIndexInArrays([FIIF)I

    move-result p0

    return p0

    :cond_3
    return v1
.end method

.method private getCapturePreviewDataState()I
    .locals 1

    .line 1196
    iget-object v0, p0, Lcom/oplus/camera/capmode/BaseMode;->mCapturePreviewDataStateLock:Ljava/lang/Object;

    monitor-enter v0

    .line 1197
    :try_start_0
    iget p0, p0, Lcom/oplus/camera/capmode/BaseMode;->mCapturePreviewDataState:I

    monitor-exit v0

    return p0

    :catchall_0
    move-exception p0

    .line 1198
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method private getEffectMenuNames()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 4697
    iget-object v0, p0, Lcom/oplus/camera/capmode/BaseMode;->mEffectMenuNames:Ljava/util/List;

    if-nez v0, :cond_0

    .line 4698
    invoke-virtual {p0}, Lcom/oplus/camera/capmode/BaseMode;->updateEffectMenuNames()V

    .line 4701
    :cond_0
    iget-object p0, p0, Lcom/oplus/camera/capmode/BaseMode;->mEffectMenuNames:Ljava/util/List;

    return-object p0
.end method

.method private getFaceBeautyMenuIndex()I
    .locals 2

    .line 5017
    invoke-virtual {p0}, Lcom/oplus/camera/capmode/BaseMode;->getFaceBeautyCurrIndex()I

    move-result v0

    const-string v1, "key_beauty3d"

    .line 5019
    invoke-virtual {p0, v1}, Lcom/oplus/camera/capmode/BaseMode;->getSupportFunction(Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_0

    add-int/lit8 v0, v0, 0x1

    :cond_0
    return v0
.end method

.method private getFilterModelList()Ljava/util/List;
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/oplus/camera/ui/preview/a/k;",
            ">;"
        }
    .end annotation

    .line 4769
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 4770
    iget v1, p0, Lcom/oplus/camera/capmode/BaseMode;->mCameraId:I

    invoke-virtual {p0, v1}, Lcom/oplus/camera/capmode/BaseMode;->getFilterTypeList(I)Ljava/util/List;

    move-result-object v1

    .line 4771
    iget v2, p0, Lcom/oplus/camera/capmode/BaseMode;->mCameraId:I

    invoke-virtual {p0, v2}, Lcom/oplus/camera/capmode/BaseMode;->getFilterNameIdList(I)Ljava/util/List;

    move-result-object v2

    .line 4773
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v3

    const/4 v4, 0x0

    move v5, v4

    :goto_0
    if-ge v5, v3, :cond_1

    .line 4774
    new-instance v6, Lcom/oplus/camera/ui/preview/a/k;

    invoke-direct {v6}, Lcom/oplus/camera/ui/preview/a/k;-><init>()V

    .line 4775
    invoke-interface {v1, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/String;

    iput-object v7, v6, Lcom/oplus/camera/ui/preview/a/k;->a:Ljava/lang/String;

    .line 4776
    iget-object v7, p0, Lcom/oplus/camera/capmode/BaseMode;->mActivity:Landroid/app/Activity;

    invoke-interface {v2, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/Integer;

    invoke-virtual {v8}, Ljava/lang/Integer;->intValue()I

    move-result v8

    invoke-virtual {v7, v8}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v7

    iput-object v7, v6, Lcom/oplus/camera/ui/preview/a/k;->b:Ljava/lang/String;

    .line 4777
    iget-object v7, v6, Lcom/oplus/camera/ui/preview/a/k;->a:Ljava/lang/String;

    invoke-virtual {p0, v7}, Lcom/oplus/camera/capmode/BaseMode;->getFilterRedpotKey(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    if-eqz v7, :cond_0

    const/4 v7, 0x1

    goto :goto_1

    :cond_0
    move v7, v4

    :goto_1
    iput-boolean v7, v6, Lcom/oplus/camera/ui/preview/a/k;->c:Z

    .line 4778
    iget-object v7, v6, Lcom/oplus/camera/ui/preview/a/k;->a:Ljava/lang/String;

    invoke-virtual {p0, v7}, Lcom/oplus/camera/capmode/BaseMode;->getGrandTourFilterKey(Ljava/lang/String;)Z

    move-result v7

    iput-boolean v7, v6, Lcom/oplus/camera/ui/preview/a/k;->d:Z

    .line 4779
    invoke-interface {v0, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    :cond_1
    return-object v0
.end method

.method private getFrontFlashHintDrawable()I
    .locals 2

    const-string v0, "pref_camera_torch_mode_key"

    .line 7806
    invoke-virtual {p0, v0}, Lcom/oplus/camera/capmode/BaseMode;->getSupportFunction(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 7807
    invoke-virtual {p0}, Lcom/oplus/camera/capmode/BaseMode;->getTorchMode()Ljava/lang/String;

    move-result-object v0

    const-string v1, "on"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/oplus/camera/capmode/BaseMode;->mbFrontCamera:Z

    if-eqz v0, :cond_0

    iget p0, p0, Lcom/oplus/camera/capmode/BaseMode;->mCameraEntryType:I

    .line 7809
    invoke-static {p0}, Lcom/oplus/camera/entry/b;->b(I)Z

    move-result p0

    if-nez p0, :cond_0

    const p0, 0x7f080699

    return p0

    :cond_0
    const p0, 0x7f080411

    return p0
.end method

.method private getMakeupState()I
    .locals 1

    .line 2580
    invoke-virtual {p0}, Lcom/oplus/camera/capmode/BaseMode;->needSetMakeupToAlgo()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 2583
    invoke-virtual {p0}, Lcom/oplus/camera/capmode/BaseMode;->isMakeupOpen()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/oplus/camera/capmode/BaseMode;->getMakeupOpenState()I

    move-result p0

    goto :goto_0

    :cond_0
    const/4 p0, 0x2

    :goto_0
    return p0

    :cond_1
    const/4 p0, 0x0

    return p0
.end method

.method private getMessageType(I)Ljava/lang/String;
    .locals 0

    packed-switch p1, :pswitch_data_0

    const/4 p0, 0x0

    goto :goto_0

    :pswitch_0
    const-string p0, "MSG_PRE_UPDATE_THUMBNAIL"

    goto :goto_0

    :pswitch_1
    const-string p0, "MSG_CREATE_EFFECT_TEXTURE"

    goto :goto_0

    :pswitch_2
    const-string p0, "MSG_UPDATE_EFFECT_MENUNAME"

    goto :goto_0

    :pswitch_3
    const-string p0, "MSG_AFTER_START_PREVIEW"

    goto :goto_0

    :pswitch_4
    const-string p0, "MSG_DIS_SCREEN_HINT_ICON"

    goto :goto_0

    :pswitch_5
    const-string p0, "MSG_AFTER_TAKEPICTURE"

    :goto_0
    return-object p0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private getMovieFlashMode()Ljava/lang/String;
    .locals 2

    .line 4048
    iget-object v0, p0, Lcom/oplus/camera/capmode/BaseMode;->mActivity:Landroid/app/Activity;

    if-eqz v0, :cond_0

    const v1, 0x7f1001c0

    .line 4049
    invoke-virtual {v0, v1}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_0
    const-string v0, "off"

    .line 4052
    :goto_0
    iget-object p0, p0, Lcom/oplus/camera/capmode/BaseMode;->mPreferences:Landroid/content/SharedPreferences;

    if-eqz p0, :cond_1

    const-string v1, "pref_camera_film_mode_key"

    invoke-interface {p0, v1, v0}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    :cond_1
    return-object v0
.end method

.method private getVideoFlashMode()Ljava/lang/String;
    .locals 2

    .line 4037
    iget-object v0, p0, Lcom/oplus/camera/capmode/BaseMode;->mActivity:Landroid/app/Activity;

    if-eqz v0, :cond_0

    const v1, 0x7f1001c0

    .line 4038
    invoke-virtual {v0, v1}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_0
    const-string v0, "off"

    .line 4041
    :goto_0
    iget-object p0, p0, Lcom/oplus/camera/capmode/BaseMode;->mPreferences:Landroid/content/SharedPreferences;

    if-eqz p0, :cond_1

    const-string v1, "pref_camera_videoflashmode_key"

    invoke-interface {p0, v1, v0}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    :cond_1
    return-object v0
.end method

.method private isFaceBeautyOpen()Z
    .locals 2

    const-string v0, "func_face_beauty_process"

    .line 4944
    invoke-virtual {p0, v0}, Lcom/oplus/camera/capmode/BaseMode;->getSupportFunction(Ljava/lang/String;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 4945
    invoke-virtual {p0}, Lcom/oplus/camera/capmode/BaseMode;->getFaceBeautyCurrIndex()I

    move-result p0

    if-eqz p0, :cond_0

    const/4 v1, 0x1

    :cond_0
    return v1
.end method

.method private isFromMainMenuApp()Z
    .locals 1

    .line 2576
    iget-object p0, p0, Lcom/oplus/camera/capmode/BaseMode;->mCameraEntry:Lcom/oplus/camera/entry/b;

    invoke-virtual {p0}, Lcom/oplus/camera/entry/b;->J()I

    move-result p0

    const/4 v0, 0x1

    if-ne v0, p0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method private isSupportPhotoRatioMenu()Z
    .locals 2

    const-string v0, "pref_camera_photo_ratio_key"

    .line 2570
    invoke-virtual {p0, v0}, Lcom/oplus/camera/capmode/BaseMode;->getSupportMenu(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 2571
    invoke-virtual {p0, v0}, Lcom/oplus/camera/capmode/BaseMode;->getCanAddMenuOption(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 2572
    :cond_0
    invoke-virtual {p0, v0}, Lcom/oplus/camera/capmode/BaseMode;->getSupportSubMenu(Ljava/lang/String;)Z

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

.method private isSystemAppCall()Z
    .locals 1

    .line 4057
    iget-object p0, p0, Lcom/oplus/camera/capmode/BaseMode;->mActivity:Landroid/app/Activity;

    invoke-virtual {p0}, Landroid/app/Activity;->getCallingPackage()Ljava/lang/String;

    move-result-object p0

    const-string v0, "com.android.mms"

    .line 4059
    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    const-string v0, "com.android.contacts"

    .line 4060
    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    sget-object v0, Lcom/oplus/camera/capmode/BaseMode;->NOTE_PACKAGE_NAME:Ljava/lang/String;

    .line 4061
    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    const-string v0, "com.google.android.keep"

    .line 4062
    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    return p0

    :cond_1
    :goto_0
    const/4 p0, 0x1

    return p0
.end method

.method private isZoomDirtyDetectionSupported(F)Z
    .locals 6

    const-string v0, "func_sat_camera"

    .line 2140
    invoke-virtual {p0, v0}, Lcom/oplus/camera/capmode/BaseMode;->getSupportFunction(Ljava/lang/String;)Z

    move-result v0

    const/high16 v1, 0x3f800000    # 1.0f

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-nez v0, :cond_2

    .line 2141
    sget p0, Lcom/oplus/camera/ag;->a:F

    invoke-static {p1, p0}, Ljava/lang/Float;->compare(FF)I

    move-result p0

    if-eqz p0, :cond_1

    .line 2142
    invoke-static {p1, v1}, Ljava/lang/Float;->compare(FF)I

    move-result p0

    if-ltz p0, :cond_0

    const/high16 p0, 0x40000000    # 2.0f

    .line 2143
    invoke-static {p1, p0}, Ljava/lang/Float;->compare(FF)I

    move-result p0

    if-gtz p0, :cond_0

    goto :goto_0

    :cond_0
    move v2, v3

    :cond_1
    :goto_0
    return v2

    :cond_2
    const-string v0, "com.oplus.sat.main.zoom.range"

    .line 2146
    invoke-static {v0}, Lcom/oplus/camera/aps/config/CameraConfig;->getConfigFloatArrayValue(Ljava/lang/String;)[F

    move-result-object v0

    if-eqz v0, :cond_7

    const/4 v4, 0x2

    .line 2148
    array-length v5, v0

    if-eq v4, v5, :cond_3

    goto :goto_2

    .line 2153
    :cond_3
    sget v4, Lcom/oplus/camera/ag;->a:F

    invoke-static {p1, v4}, Ljava/lang/Float;->compare(FF)I

    move-result v4

    if-eqz v4, :cond_6

    .line 2154
    invoke-static {p1, v1}, Ljava/lang/Float;->compare(FF)I

    move-result v1

    if-gez v1, :cond_4

    .line 2155
    invoke-virtual {p0}, Lcom/oplus/camera/capmode/BaseMode;->getMinZoomValue()F

    move-result v1

    invoke-static {p1, v1}, Ljava/lang/Float;->compare(FF)I

    move-result v1

    if-eqz v1, :cond_6

    :cond_4
    aget v1, v0, v3

    .line 2156
    invoke-static {p1, v1}, Ljava/lang/Float;->compare(FF)I

    move-result v1

    if-ltz v1, :cond_5

    aget v0, v0, v2

    .line 2157
    invoke-static {p1, v0}, Ljava/lang/Float;->compare(FF)I

    move-result p1

    if-gtz p1, :cond_5

    .line 2158
    invoke-virtual {p0}, Lcom/oplus/camera/capmode/BaseMode;->getZoomAutoMicroOpen()Z

    move-result p0

    if-nez p0, :cond_5

    goto :goto_1

    :cond_5
    move v2, v3

    :cond_6
    :goto_1
    return v2

    :cond_7
    :goto_2
    return v3
.end method

.method private resetScreenState()V
    .locals 1

    .line 7817
    iget-object p0, p0, Lcom/oplus/camera/capmode/BaseMode;->mCameraInterface:Lcom/oplus/camera/capmode/a;

    const/high16 v0, -0x40800000    # -1.0f

    invoke-interface {p0, v0}, Lcom/oplus/camera/capmode/a;->b(F)V

    const/4 p0, 0x0

    .line 7818
    sput-boolean p0, Lcom/oplus/camera/capmode/BaseMode;->sHighBrightness:Z

    return-void
.end method

.method private setCurTemperatureToHAL()V
    .locals 7

    .line 5458
    iget-object v0, p0, Lcom/oplus/camera/capmode/BaseMode;->mOneCamera:Lcom/oplus/camera/e/d;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/oplus/camera/capmode/BaseMode;->mPreferences:Landroid/content/SharedPreferences;

    if-eqz v0, :cond_3

    const-string v0, "com.oplus.temperature.sendtohal"

    .line 5460
    invoke-static {v0}, Lcom/oplus/camera/aps/config/CameraConfig;->getConfigBooleanValue(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 5461
    invoke-virtual {p0}, Lcom/oplus/camera/capmode/BaseMode;->needSetMakeupToAlgo()Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_1

    .line 5465
    :cond_0
    iget-object v0, p0, Lcom/oplus/camera/capmode/BaseMode;->mPreferences:Landroid/content/SharedPreferences;

    const/high16 v1, -0x40800000    # -1.0f

    const-string v2, "key_cur_temperature"

    invoke-interface {v0, v2, v1}, Landroid/content/SharedPreferences;->getFloat(Ljava/lang/String;F)F

    move-result v0

    .line 5467
    iget-object v2, p0, Lcom/oplus/camera/capmode/BaseMode;->mActivity:Landroid/app/Activity;

    const/4 v3, 0x0

    const-string v4, "rom_update_info"

    invoke-virtual {v2, v4, v3}, Landroid/app/Activity;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v2

    const-string v3, ""

    const-string v4, "com.oplus.phone.max.temperature"

    .line 5469
    invoke-interface {v2, v4, v3}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const/high16 v4, 0x421c0000    # 39.0f

    .line 5473
    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    const-string v5, "BaseMode"

    if-nez v3, :cond_1

    .line 5475
    :try_start_0
    invoke-static {v2}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v4
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v2

    .line 5477
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "setCurTemperatureToHAL, parse tempThresholdStr error: "

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v5, v2}, Lcom/oplus/camera/e;->f(Ljava/lang/String;Ljava/lang/String;)V

    :cond_1
    :goto_0
    cmpl-float v1, v1, v0

    if-eqz v1, :cond_2

    .line 5482
    iget-object p0, p0, Lcom/oplus/camera/capmode/BaseMode;->mOneCamera:Lcom/oplus/camera/e/d;

    invoke-interface {p0, v0, v4}, Lcom/oplus/camera/e/d;->a(FF)V

    goto :goto_1

    .line 5484
    :cond_2
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "setCurTemperatureToHAL, failed with curTemperature: "

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v5, p0}, Lcom/oplus/camera/e;->b(Ljava/lang/String;Ljava/lang/String;)V

    :cond_3
    :goto_1
    return-void
.end method

.method private setHDRMenuVisibility(Z)V
    .locals 2

    .line 5236
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "setHDRMenuVisibility(), flag: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", mCameraUIInterface: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/oplus/camera/capmode/BaseMode;->mCameraUIInterface:Lcom/oplus/camera/ui/CameraUIInterface;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "BaseMode"

    invoke-static {v1, v0}, Lcom/oplus/camera/e;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 5238
    iget-object v0, p0, Lcom/oplus/camera/capmode/BaseMode;->mCameraUIInterface:Lcom/oplus/camera/ui/CameraUIInterface;

    if-nez v0, :cond_0

    return-void

    :cond_0
    const-string v1, "pref_camera_hdr_mode_key"

    if-eqz p1, :cond_1

    const/4 p1, 0x0

    .line 5243
    invoke-interface {v0, v1, p1}, Lcom/oplus/camera/ui/CameraUIInterface;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 5244
    iget-object p0, p0, Lcom/oplus/camera/capmode/BaseMode;->mCameraUIInterface:Lcom/oplus/camera/ui/CameraUIInterface;

    invoke-interface {p0, v1}, Lcom/oplus/camera/ui/CameraUIInterface;->d(Ljava/lang/String;)V

    goto :goto_0

    .line 5246
    :cond_1
    invoke-interface {v0, v1}, Lcom/oplus/camera/ui/CameraUIInterface;->e(Ljava/lang/String;)V

    :goto_0
    return-void
.end method

.method private setInPreparing(Z)V
    .locals 2

    .line 4463
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "setInPreparing: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/oplus/camera/capmode/BaseMode;->mbInPreparing:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, " -> "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "BaseMode"

    invoke-static {v1, v0}, Lcom/oplus/camera/e;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 4465
    iput-boolean p1, p0, Lcom/oplus/camera/capmode/BaseMode;->mbInPreparing:Z

    return-void
.end method

.method private setSloganEnable()V
    .locals 3

    .line 5489
    iget-object v0, p0, Lcom/oplus/camera/capmode/BaseMode;->mPreferences:Landroid/content/SharedPreferences;

    const-string v1, "off"

    const-string v2, "pref_watermark_function_key"

    invoke-interface {v0, v2, v1}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 5492
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 5496
    :cond_0
    iget-object v0, p0, Lcom/oplus/camera/capmode/BaseMode;->mOneCamera:Lcom/oplus/camera/e/d;

    if-nez v0, :cond_1

    const-string p0, "BaseMode"

    const-string v0, "setSloganEnable failed"

    .line 5497
    invoke-static {p0, v0}, Lcom/oplus/camera/e;->e(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    .line 5502
    :cond_1
    invoke-virtual {p0, v2}, Lcom/oplus/camera/capmode/BaseMode;->getSupportFunction(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 5503
    iget-object p0, p0, Lcom/oplus/camera/capmode/BaseMode;->mOneCamera:Lcom/oplus/camera/e/d;

    const/4 v0, 0x1

    invoke-interface {p0, v0}, Lcom/oplus/camera/e/d;->j(I)V

    goto :goto_0

    .line 5505
    :cond_2
    iget-object p0, p0, Lcom/oplus/camera/capmode/BaseMode;->mOneCamera:Lcom/oplus/camera/e/d;

    const/4 v0, 0x0

    invoke-interface {p0, v0}, Lcom/oplus/camera/e/d;->j(I)V

    :goto_0
    return-void
.end method

.method private shouldShowDirtyToast(Lcom/oplus/ocs/camera/CameraPreviewCallback$CameraPreviewResult;)Z
    .locals 4

    .line 2119
    invoke-static {}, Lcom/oplus/camera/aps/util/AlgoSwitchConfig;->getApsVersion()I

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    const/4 v3, 0x2

    if-ne v3, v0, :cond_1

    .line 2120
    invoke-virtual {p1}, Lcom/oplus/ocs/camera/CameraPreviewCallback$CameraPreviewResult;->getCaptureResult()Landroid/hardware/camera2/CaptureResult;

    move-result-object p1

    sget-object v0, Lcom/oplus/camera/e/b;->ao:Landroid/hardware/camera2/CaptureResult$Key;

    invoke-static {p1, v0}, Lcom/oplus/camera/e/b;->a(Landroid/hardware/camera2/CaptureResult;Landroid/hardware/camera2/CaptureResult$Key;)Ljava/lang/Object;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 2123
    instance-of v0, p1, Ljava/lang/Integer;

    if-eqz v0, :cond_0

    .line 2124
    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    if-ne p1, v2, :cond_0

    :goto_0
    move p1, v2

    goto :goto_1

    :cond_0
    move p1, v1

    goto :goto_1

    .line 2127
    :cond_1
    sget-object v0, Lcom/oplus/ocs/camera/CameraParameter;->PREVIEW_RESULT_LENS_DIRTY:Lcom/oplus/ocs/camera/CameraParameter$PreviewResultKey;

    invoke-virtual {p1, v0}, Lcom/oplus/ocs/camera/CameraPreviewCallback$CameraPreviewResult;->get(Lcom/oplus/ocs/camera/CameraParameter$PreviewResultKey;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_0

    sget-object v0, Lcom/oplus/ocs/camera/CameraParameter;->PREVIEW_RESULT_LENS_DIRTY:Lcom/oplus/ocs/camera/CameraParameter$PreviewResultKey;

    .line 2128
    invoke-virtual {p1, v0}, Lcom/oplus/ocs/camera/CameraPreviewCallback$CameraPreviewResult;->get(Lcom/oplus/ocs/camera/CameraParameter$PreviewResultKey;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    if-ne v2, p1, :cond_0

    goto :goto_0

    :goto_1
    if-eqz p1, :cond_4

    const-string p1, "pref_lens_dirty_detection_key"

    .line 2131
    invoke-virtual {p0, p1}, Lcom/oplus/camera/capmode/BaseMode;->getSupportFunction(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_4

    .line 2132
    invoke-virtual {p0}, Lcom/oplus/camera/capmode/BaseMode;->isLensDirtyDetectionOpen()Z

    move-result p1

    if-eqz p1, :cond_4

    .line 2133
    invoke-virtual {p0}, Lcom/oplus/camera/capmode/BaseMode;->getZoomValue()F

    move-result p1

    invoke-direct {p0, p1}, Lcom/oplus/camera/capmode/BaseMode;->isZoomDirtyDetectionSupported(F)Z

    move-result p1

    if-eqz p1, :cond_4

    iget-boolean p1, p0, Lcom/oplus/camera/capmode/BaseMode;->mbFrontCamera:Z

    if-eqz p1, :cond_2

    sget-boolean p1, Lcom/oplus/camera/capmode/BaseMode;->sbFrontDirtyLensToastShown:Z

    if-eqz p1, :cond_3

    :cond_2
    iget-boolean p0, p0, Lcom/oplus/camera/capmode/BaseMode;->mbFrontCamera:Z

    if-nez p0, :cond_4

    sget-boolean p0, Lcom/oplus/camera/capmode/BaseMode;->sbRearDirtyLensToastShown:Z

    if-nez p0, :cond_4

    :cond_3
    move v1, v2

    :cond_4
    return v1
.end method

.method private showBubble()V
    .locals 3

    .line 684
    iget-object v0, p0, Lcom/oplus/camera/capmode/BaseMode;->mHandler:Landroid/os/Handler;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 685
    iget-object v0, p0, Lcom/oplus/camera/capmode/BaseMode;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    .line 686
    iget-object p0, p0, Lcom/oplus/camera/capmode/BaseMode;->mHandler:Landroid/os/Handler;

    const-wide/16 v1, 0x64

    invoke-virtual {p0, v0, v1, v2}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    return-void
.end method

.method private showDirtyLensHintView()V
    .locals 1

    .line 2184
    iget-object v0, p0, Lcom/oplus/camera/capmode/BaseMode;->mCameraUIInterface:Lcom/oplus/camera/ui/CameraUIInterface;

    invoke-interface {v0}, Lcom/oplus/camera/ui/CameraUIInterface;->Z()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 2185
    iget-boolean p0, p0, Lcom/oplus/camera/capmode/BaseMode;->mbFrontCamera:Z

    const/4 v0, 0x1

    if-eqz p0, :cond_0

    .line 2186
    sput-boolean v0, Lcom/oplus/camera/capmode/BaseMode;->sbFrontDirtyLensToastShown:Z

    goto :goto_0

    .line 2188
    :cond_0
    sput-boolean v0, Lcom/oplus/camera/capmode/BaseMode;->sbRearDirtyLensToastShown:Z

    :cond_1
    :goto_0
    return-void
.end method

.method private updateAutoHDRUI(Lcom/oplus/camera/aps/util/CameraApsDecision;)V
    .locals 5

    const/4 v0, 0x0

    .line 967
    iput-boolean v0, p0, Lcom/oplus/camera/capmode/BaseMode;->mbHDRAvoidedByAIS:Z

    .line 969
    invoke-virtual {p0}, Lcom/oplus/camera/capmode/BaseMode;->isAutoHDR()Z

    move-result v1

    if-eqz v1, :cond_5

    if-eqz p1, :cond_5

    iget-boolean v1, p0, Lcom/oplus/camera/capmode/BaseMode;->mbBurstShot:Z

    if-nez v1, :cond_5

    .line 970
    iget v1, p1, Lcom/oplus/camera/aps/util/CameraApsDecision;->mApsDecisionSceneMode:I

    .line 971
    iget-boolean v2, p0, Lcom/oplus/camera/capmode/BaseMode;->mbAutoHDR:Z

    const/4 v3, 0x1

    if-eq v3, v1, :cond_1

    const/16 v4, 0xb

    if-eq v4, v1, :cond_1

    const/16 v4, 0xe

    if-eq v4, v1, :cond_1

    const/16 v4, 0x17

    if-eq v4, v1, :cond_1

    .line 973
    iget p1, p1, Lcom/oplus/camera/aps/util/CameraApsDecision;->mApsDecisionShowHdrIcon:I

    if-ne v3, p1, :cond_0

    goto :goto_0

    .line 999
    :cond_0
    iput-boolean v0, p0, Lcom/oplus/camera/capmode/BaseMode;->mbAutoHDR:Z

    .line 1001
    invoke-virtual {p0}, Lcom/oplus/camera/capmode/BaseMode;->isOpenHDR()Z

    move-result p1

    if-nez p1, :cond_6

    iget-boolean p1, p0, Lcom/oplus/camera/capmode/BaseMode;->mbShowPostCaptureAlert:Z

    if-nez p1, :cond_6

    iget-boolean p1, p0, Lcom/oplus/camera/capmode/BaseMode;->mbAutoHDR:Z

    if-eq v2, p1, :cond_6

    .line 1002
    iget-boolean v0, p0, Lcom/oplus/camera/capmode/BaseMode;->mbAutoFlash:Z

    invoke-virtual {p0, p1, v0}, Lcom/oplus/camera/capmode/BaseMode;->displayAllIcon(ZZ)V

    goto :goto_1

    .line 978
    :cond_1
    :goto_0
    iput-boolean v3, p0, Lcom/oplus/camera/capmode/BaseMode;->mbAutoHDR:Z

    .line 980
    iget-object p1, p0, Lcom/oplus/camera/capmode/BaseMode;->mApsDecisionResultLock:Ljava/lang/Object;

    monitor-enter p1

    .line 981
    :try_start_0
    iget-object v1, p0, Lcom/oplus/camera/capmode/BaseMode;->mDecisionResult:Lcom/oplus/camera/aps/util/CameraApsDecision;

    iget v1, v1, Lcom/oplus/camera/aps/util/CameraApsDecision;->mAISState:I

    if-lez v1, :cond_2

    invoke-virtual {p0}, Lcom/oplus/camera/capmode/BaseMode;->isOpenHDR()Z

    move-result v1

    if-nez v1, :cond_2

    .line 982
    iput-boolean v3, p0, Lcom/oplus/camera/capmode/BaseMode;->mbHDRAvoidedByAIS:Z

    .line 983
    iput-boolean v0, p0, Lcom/oplus/camera/capmode/BaseMode;->mbAutoHDR:Z

    .line 985
    :cond_2
    monitor-exit p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 987
    sget-object p1, Lcom/oplus/camera/ui/inverse/e;->INS:Lcom/oplus/camera/ui/inverse/e;

    iget-object v1, p0, Lcom/oplus/camera/capmode/BaseMode;->mActivity:Landroid/app/Activity;

    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    invoke-virtual {p1, v1}, Lcom/oplus/camera/ui/inverse/e;->isInverseColor(I)Z

    move-result p1

    if-eqz p1, :cond_3

    .line 988
    iput-boolean v0, p0, Lcom/oplus/camera/capmode/BaseMode;->mbAutoHDR:Z

    .line 991
    :cond_3
    iget-object p1, p0, Lcom/oplus/camera/capmode/BaseMode;->mCameraUIInterface:Lcom/oplus/camera/ui/CameraUIInterface;

    invoke-interface {p1}, Lcom/oplus/camera/ui/CameraUIInterface;->aU()Z

    move-result p1

    if-eqz p1, :cond_4

    .line 992
    iput-boolean v0, p0, Lcom/oplus/camera/capmode/BaseMode;->mbAutoHDR:Z

    .line 995
    :cond_4
    invoke-virtual {p0}, Lcom/oplus/camera/capmode/BaseMode;->isOpenHDR()Z

    move-result p1

    if-nez p1, :cond_6

    iget-boolean p1, p0, Lcom/oplus/camera/capmode/BaseMode;->mbShowPostCaptureAlert:Z

    if-nez p1, :cond_6

    iget-boolean p1, p0, Lcom/oplus/camera/capmode/BaseMode;->mbAutoHDR:Z

    if-eq v2, p1, :cond_6

    .line 996
    iget-boolean v0, p0, Lcom/oplus/camera/capmode/BaseMode;->mbAutoFlash:Z

    invoke-virtual {p0, p1, v0}, Lcom/oplus/camera/capmode/BaseMode;->displayAllIcon(ZZ)V

    goto :goto_1

    :catchall_0
    move-exception p0

    .line 985
    :try_start_1
    monitor-exit p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p0

    .line 1006
    :cond_5
    iput-boolean v0, p0, Lcom/oplus/camera/capmode/BaseMode;->mbAutoHDR:Z

    :cond_6
    :goto_1
    return-void
.end method

.method private updateAutoSeNightUI(Lcom/oplus/camera/aps/util/CameraApsDecision;)V
    .locals 7

    const-string v0, "com.oplus.feature.se.night.support"

    .line 1011
    invoke-static {v0}, Lcom/oplus/camera/aps/config/CameraConfig;->getConfigBooleanValue(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3

    const/4 v0, 0x2

    iget-object v1, p0, Lcom/oplus/camera/capmode/BaseMode;->mCameraInterface:Lcom/oplus/camera/capmode/a;

    .line 1012
    invoke-interface {v1}, Lcom/oplus/camera/capmode/a;->g()I

    move-result v1

    if-ne v0, v1, :cond_0

    goto :goto_0

    .line 1016
    :cond_0
    iget-boolean v0, p0, Lcom/oplus/camera/capmode/BaseMode;->mbBurstShot:Z

    if-nez v0, :cond_2

    if-eqz p1, :cond_2

    const/16 v0, 0x23

    iget v1, p1, Lcom/oplus/camera/aps/util/CameraApsDecision;->mApsDecisionFeatureType:I

    if-eq v0, v1, :cond_1

    const/16 v0, 0x28

    iget p1, p1, Lcom/oplus/camera/aps/util/CameraApsDecision;->mApsDecisionFeatureType:I

    if-ne v0, p1, :cond_2

    :cond_1
    const/16 p1, 0xc

    iget-object v0, p0, Lcom/oplus/camera/capmode/BaseMode;->mCameraInterface:Lcom/oplus/camera/capmode/a;

    .line 1019
    invoke-interface {v0}, Lcom/oplus/camera/capmode/a;->j()I

    move-result v0

    if-eq p1, v0, :cond_2

    const/4 p1, 0x1

    .line 1020
    iput-boolean p1, p0, Lcom/oplus/camera/capmode/BaseMode;->mbAutoSeNight:Z

    .line 1022
    iget-object p1, p0, Lcom/oplus/camera/capmode/BaseMode;->mCameraUIInterface:Lcom/oplus/camera/ui/CameraUIInterface;

    invoke-interface {p1}, Lcom/oplus/camera/ui/CameraUIInterface;->av()Z

    move-result p1

    if-nez p1, :cond_3

    .line 1023
    iget-object v0, p0, Lcom/oplus/camera/capmode/BaseMode;->mCameraUIInterface:Lcom/oplus/camera/ui/CameraUIInterface;

    const v1, 0x7f1000a6

    const/4 v2, -0x1

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const v6, 0x7f0805ed

    invoke-interface/range {v0 .. v6}, Lcom/oplus/camera/ui/CameraUIInterface;->a(IIZZZI)V

    goto :goto_0

    :cond_2
    const/4 p1, 0x0

    .line 1026
    iput-boolean p1, p0, Lcom/oplus/camera/capmode/BaseMode;->mbAutoSeNight:Z

    .line 1028
    iget-object p1, p0, Lcom/oplus/camera/capmode/BaseMode;->mActivity:Landroid/app/Activity;

    if-eqz p1, :cond_3

    iget-object p1, p0, Lcom/oplus/camera/capmode/BaseMode;->mCameraUIInterface:Lcom/oplus/camera/ui/CameraUIInterface;

    invoke-interface {p1}, Lcom/oplus/camera/ui/CameraUIInterface;->l()Ljava/lang/String;

    move-result-object p1

    iget-object v0, p0, Lcom/oplus/camera/capmode/BaseMode;->mActivity:Landroid/app/Activity;

    const v1, 0x7f1000a6

    invoke-virtual {v0, v1}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_3

    .line 1029
    iget-object p0, p0, Lcom/oplus/camera/capmode/BaseMode;->mCameraUIInterface:Lcom/oplus/camera/ui/CameraUIInterface;

    invoke-interface {p0, v1}, Lcom/oplus/camera/ui/CameraUIInterface;->a(I)V

    :cond_3
    :goto_0
    return-void
.end method

.method private updateDarkEnvironmentTips(Landroid/hardware/camera2/CaptureResult;)V
    .locals 7

    const-string v0, "key_dark_environment_tips"

    .line 7904
    invoke-virtual {p0, v0}, Lcom/oplus/camera/capmode/BaseMode;->getSupportFunction(Ljava/lang/String;)Z

    move-result v0

    const v1, 0x7f1001fc

    const/4 v2, 0x0

    if-eqz v0, :cond_1

    if-eqz p1, :cond_1

    .line 7905
    invoke-static {p1}, Lcom/oplus/camera/util/Util;->a(Landroid/hardware/camera2/CaptureResult;)F

    move-result p1

    .line 7906
    invoke-virtual {p0}, Lcom/oplus/camera/capmode/BaseMode;->getEnvironmentTipsThreshold()I

    move-result v0

    if-eqz v0, :cond_0

    int-to-float v3, v0

    cmpg-float v3, v3, p1

    if-gez v3, :cond_0

    .line 7908
    iget-boolean v3, p0, Lcom/oplus/camera/capmode/BaseMode;->mbShowEnvironmentTips:Z

    if-nez v3, :cond_0

    const/4 p1, 0x1

    .line 7909
    iput-boolean p1, p0, Lcom/oplus/camera/capmode/BaseMode;->mbShowEnvironmentTips:Z

    .line 7910
    iget-object p1, p0, Lcom/oplus/camera/capmode/BaseMode;->mCameraUIInterface:Lcom/oplus/camera/ui/CameraUIInterface;

    const v0, 0x7f1005b9

    invoke-interface {p1, v0}, Lcom/oplus/camera/ui/CameraUIInterface;->a(I)V

    .line 7911
    iget-object v1, p0, Lcom/oplus/camera/capmode/BaseMode;->mCameraUIInterface:Lcom/oplus/camera/ui/CameraUIInterface;

    const v2, 0x7f1001fc

    const/4 v3, -0x1

    const/4 v4, 0x1

    const/4 v5, 0x0

    const/4 v6, 0x0

    invoke-interface/range {v1 .. v6}, Lcom/oplus/camera/ui/CameraUIInterface;->a(IIZZZ)V

    goto :goto_0

    :cond_0
    if-eqz v0, :cond_2

    int-to-float v0, v0

    cmpl-float p1, v0, p1

    if-lez p1, :cond_2

    .line 7913
    iget-boolean p1, p0, Lcom/oplus/camera/capmode/BaseMode;->mbShowEnvironmentTips:Z

    if-eqz p1, :cond_2

    .line 7914
    iput-boolean v2, p0, Lcom/oplus/camera/capmode/BaseMode;->mbShowEnvironmentTips:Z

    .line 7915
    iget-object p0, p0, Lcom/oplus/camera/capmode/BaseMode;->mCameraUIInterface:Lcom/oplus/camera/ui/CameraUIInterface;

    invoke-interface {p0, v1}, Lcom/oplus/camera/ui/CameraUIInterface;->a(I)V

    goto :goto_0

    .line 7917
    :cond_1
    iget-boolean p1, p0, Lcom/oplus/camera/capmode/BaseMode;->mbShowEnvironmentTips:Z

    if-eqz p1, :cond_2

    .line 7918
    iput-boolean v2, p0, Lcom/oplus/camera/capmode/BaseMode;->mbShowEnvironmentTips:Z

    .line 7919
    iget-object p0, p0, Lcom/oplus/camera/capmode/BaseMode;->mCameraUIInterface:Lcom/oplus/camera/ui/CameraUIInterface;

    invoke-interface {p0, v1}, Lcom/oplus/camera/ui/CameraUIInterface;->a(I)V

    :cond_2
    :goto_0
    return-void
.end method

.method private updateFlashMenuIfHDRIsAuto(Z)V
    .locals 5

    .line 5251
    iget-object v0, p0, Lcom/oplus/camera/capmode/BaseMode;->mPreferences:Landroid/content/SharedPreferences;

    const-string v1, "BaseMode"

    if-nez v0, :cond_0

    const-string p0, "updateFlashMenuIfHDRIsAuto null  == mPreferences"

    .line 5252
    invoke-static {v1, p0}, Lcom/oplus/camera/e;->a(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_0
    const-string v0, "off"

    if-eqz p1, :cond_1

    const-string p1, "pref_camera_torch_mode_key"

    move-object v2, v0

    goto :goto_0

    :cond_1
    const-string p1, "pref_camera_flashmode_key"

    const-string v2, "auto"

    .line 5264
    :goto_0
    invoke-static {p1}, Lcom/oplus/camera/entry/b;->d(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 5265
    iget-object v3, p0, Lcom/oplus/camera/capmode/BaseMode;->mPreferences:Landroid/content/SharedPreferences;

    invoke-interface {v3, p1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 5267
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "updateFlashMenuIfHDRIsAuto, flashMode: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Lcom/oplus/camera/e;->a(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "on"

    .line 5269
    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    const-string v1, "torch"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 5270
    :cond_2
    iget-object v1, p0, Lcom/oplus/camera/capmode/BaseMode;->mPreferences:Landroid/content/SharedPreferences;

    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    .line 5271
    invoke-interface {v1, p1, v0}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 5272
    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 5274
    iget-object p0, p0, Lcom/oplus/camera/capmode/BaseMode;->mCameraUIInterface:Lcom/oplus/camera/ui/CameraUIInterface;

    if-eqz p0, :cond_3

    .line 5275
    invoke-interface {p0, p1}, Lcom/oplus/camera/ui/CameraUIInterface;->f(Ljava/lang/String;)V

    :cond_3
    return-void
.end method

.method private updateHDRMode(Ljava/lang/String;Z)V
    .locals 2

    .line 5314
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "updateHDRMode, value: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", update: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "BaseMode"

    invoke-static {v1, v0}, Lcom/oplus/camera/e;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 5316
    iget-object v0, p0, Lcom/oplus/camera/capmode/BaseMode;->mOneCamera:Lcom/oplus/camera/e/d;

    if-eqz v0, :cond_1

    const-string v0, "close"

    .line 5317
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 5318
    iget-object p1, p0, Lcom/oplus/camera/capmode/BaseMode;->mOneCamera:Lcom/oplus/camera/e/d;

    const-string v0, "off"

    invoke-interface {p1, v0}, Lcom/oplus/camera/e/d;->c(Ljava/lang/String;)V

    goto :goto_0

    .line 5320
    :cond_0
    iget-object v0, p0, Lcom/oplus/camera/capmode/BaseMode;->mOneCamera:Lcom/oplus/camera/e/d;

    invoke-interface {v0, p1}, Lcom/oplus/camera/e/d;->c(Ljava/lang/String;)V

    :goto_0
    if-eqz p2, :cond_1

    .line 5324
    iget-object p0, p0, Lcom/oplus/camera/capmode/BaseMode;->mOneCamera:Lcom/oplus/camera/e/d;

    const/4 p1, 0x0

    invoke-interface {p0, p1}, Lcom/oplus/camera/e/d;->a(Lcom/oplus/camera/e/d$c;)V

    :cond_1
    return-void
.end method

.method private updateHdrChangeUi(Ljava/lang/String;Z)V
    .locals 12

    const-string v0, "pref_camera_hdr_mode_key"

    .line 6578
    invoke-virtual {p0, v0}, Lcom/oplus/camera/capmode/BaseMode;->getSupportFunction(Ljava/lang/String;)Z

    move-result v1

    const-string v2, "on"

    const/4 v3, 0x1

    if-eqz v1, :cond_0

    .line 6579
    invoke-direct {p0, p1, v3}, Lcom/oplus/camera/capmode/BaseMode;->updateHDRMode(Ljava/lang/String;Z)V

    .line 6580
    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    invoke-direct {p0, v1}, Lcom/oplus/camera/capmode/BaseMode;->updateMenuWithHDRChange(Z)V

    .line 6583
    :cond_0
    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    const-string v2, "key_video_hdr"

    const-string v4, "pref_camera_hdr_mode_key_from_other_app"

    const/4 v5, 0x0

    if-eqz v1, :cond_3

    .line 6584
    iget-object p1, p0, Lcom/oplus/camera/capmode/BaseMode;->mActivity:Landroid/app/Activity;

    if-eqz p1, :cond_b

    const-string p1, "func_hdr"

    .line 6585
    invoke-virtual {p0, p1}, Lcom/oplus/camera/capmode/BaseMode;->getSupportFunction(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_1

    .line 6586
    invoke-virtual {p0, v2}, Lcom/oplus/camera/capmode/BaseMode;->getSupportSubMenu(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_b

    .line 6587
    iget-object p0, p0, Lcom/oplus/camera/capmode/BaseMode;->mCameraUIInterface:Lcom/oplus/camera/ui/CameraUIInterface;

    const p1, 0x7f1004c9

    const p2, 0x7f0805e9

    const v0, 0x7f0604ff

    new-array v1, v5, [Ljava/lang/Object;

    invoke-interface {p0, p1, p2, v0, v1}, Lcom/oplus/camera/ui/CameraUIInterface;->b(III[Ljava/lang/Object;)V

    goto/16 :goto_1

    .line 6592
    :cond_1
    iget-object p1, p0, Lcom/oplus/camera/capmode/BaseMode;->mCameraUIInterface:Lcom/oplus/camera/ui/CameraUIInterface;

    invoke-interface {p1}, Lcom/oplus/camera/ui/CameraUIInterface;->k()Lcom/oplus/camera/ui/a/a;

    move-result-object p1

    invoke-virtual {p1}, Lcom/oplus/camera/ui/a/a;->b()Z

    move-result p1

    if-eqz p1, :cond_b

    iget-object p1, p0, Lcom/oplus/camera/capmode/BaseMode;->mCameraUIInterface:Lcom/oplus/camera/ui/CameraUIInterface;

    .line 6593
    invoke-interface {p1}, Lcom/oplus/camera/ui/CameraUIInterface;->k()Lcom/oplus/camera/ui/a/a;

    move-result-object p1

    invoke-virtual {p1}, Lcom/oplus/camera/ui/a/a;->d()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_2

    iget-object p1, p0, Lcom/oplus/camera/capmode/BaseMode;->mCameraUIInterface:Lcom/oplus/camera/ui/CameraUIInterface;

    .line 6594
    invoke-interface {p1}, Lcom/oplus/camera/ui/CameraUIInterface;->k()Lcom/oplus/camera/ui/a/a;

    move-result-object p1

    invoke-virtual {p1}, Lcom/oplus/camera/ui/a/a;->d()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v4, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_b

    .line 6595
    :cond_2
    iget-object p1, p0, Lcom/oplus/camera/capmode/BaseMode;->mCameraUIInterface:Lcom/oplus/camera/ui/CameraUIInterface;

    invoke-interface {p1, v5, v3, v5}, Lcom/oplus/camera/ui/CameraUIInterface;->a(ZZZ)V

    .line 6596
    iget-object v6, p0, Lcom/oplus/camera/capmode/BaseMode;->mCameraUIInterface:Lcom/oplus/camera/ui/CameraUIInterface;

    const v7, 0x7f1005bd

    const/4 v8, -0x1

    const/4 v9, 0x1

    const/4 v10, 0x1

    const/4 v11, 0x0

    invoke-interface/range {v6 .. v11}, Lcom/oplus/camera/ui/CameraUIInterface;->a(IIZZZ)V

    goto/16 :goto_1

    .line 6601
    :cond_3
    invoke-virtual {p0, v0}, Lcom/oplus/camera/capmode/BaseMode;->getSupportFunction(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_a

    .line 6602
    invoke-virtual {p0}, Lcom/oplus/camera/capmode/BaseMode;->isOpenFlash()Z

    move-result v1

    if-nez v1, :cond_7

    invoke-virtual {p0}, Lcom/oplus/camera/capmode/BaseMode;->isOpenFrontTorch()Z

    move-result v1

    if-nez v1, :cond_7

    invoke-virtual {p0}, Lcom/oplus/camera/capmode/BaseMode;->isAutoHDR()Z

    move-result v1

    if-nez v1, :cond_7

    .line 6604
    invoke-virtual {p0}, Lcom/oplus/camera/capmode/BaseMode;->isAutoFlash()Z

    move-result v1

    if-nez v1, :cond_4

    invoke-virtual {p0}, Lcom/oplus/camera/capmode/BaseMode;->isAutoFrontTorch()Z

    move-result v1

    if-eqz v1, :cond_5

    :cond_4
    iget-boolean v1, p0, Lcom/oplus/camera/capmode/BaseMode;->mbAutoFlash:Z

    if-eqz v1, :cond_5

    move v1, v3

    goto :goto_0

    :cond_5
    move v1, v5

    :goto_0
    if-nez v1, :cond_7

    if-eqz p2, :cond_7

    .line 6607
    iget-object v1, p0, Lcom/oplus/camera/capmode/BaseMode;->mCameraUIInterface:Lcom/oplus/camera/ui/CameraUIInterface;

    invoke-interface {v1}, Lcom/oplus/camera/ui/CameraUIInterface;->k()Lcom/oplus/camera/ui/a/a;

    move-result-object v1

    invoke-virtual {v1}, Lcom/oplus/camera/ui/a/a;->b()Z

    move-result v1

    if-eqz v1, :cond_7

    iget-object v1, p0, Lcom/oplus/camera/capmode/BaseMode;->mCameraUIInterface:Lcom/oplus/camera/ui/CameraUIInterface;

    .line 6608
    invoke-interface {v1}, Lcom/oplus/camera/ui/CameraUIInterface;->k()Lcom/oplus/camera/ui/a/a;

    move-result-object v1

    invoke-virtual {v1}, Lcom/oplus/camera/ui/a/a;->d()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_6

    iget-object v1, p0, Lcom/oplus/camera/capmode/BaseMode;->mCameraUIInterface:Lcom/oplus/camera/ui/CameraUIInterface;

    .line 6609
    invoke-interface {v1}, Lcom/oplus/camera/ui/CameraUIInterface;->k()Lcom/oplus/camera/ui/a/a;

    move-result-object v1

    invoke-virtual {v1}, Lcom/oplus/camera/ui/a/a;->d()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v4, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_7

    .line 6610
    :cond_6
    iget-object v1, p0, Lcom/oplus/camera/capmode/BaseMode;->mCameraUIInterface:Lcom/oplus/camera/ui/CameraUIInterface;

    invoke-interface {v1, v5, v3, v5}, Lcom/oplus/camera/ui/CameraUIInterface;->a(ZZZ)V

    .line 6611
    iget-object v6, p0, Lcom/oplus/camera/capmode/BaseMode;->mCameraUIInterface:Lcom/oplus/camera/ui/CameraUIInterface;

    const v7, 0x7f1005bc

    const/4 v8, -0x1

    const/4 v9, 0x1

    const/4 v10, 0x1

    const/4 v11, 0x0

    invoke-interface/range {v6 .. v11}, Lcom/oplus/camera/ui/CameraUIInterface;->a(IIZZZ)V

    :cond_7
    const-string v1, "auto"

    .line 6616
    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_b

    if-eqz p2, :cond_b

    .line 6617
    iget-object p1, p0, Lcom/oplus/camera/capmode/BaseMode;->mCameraUIInterface:Lcom/oplus/camera/ui/CameraUIInterface;

    invoke-interface {p1}, Lcom/oplus/camera/ui/CameraUIInterface;->k()Lcom/oplus/camera/ui/a/a;

    move-result-object p1

    invoke-virtual {p1}, Lcom/oplus/camera/ui/a/a;->b()Z

    move-result p1

    if-eqz p1, :cond_9

    iget-object p1, p0, Lcom/oplus/camera/capmode/BaseMode;->mCameraUIInterface:Lcom/oplus/camera/ui/CameraUIInterface;

    .line 6618
    invoke-interface {p1}, Lcom/oplus/camera/ui/CameraUIInterface;->k()Lcom/oplus/camera/ui/a/a;

    move-result-object p1

    invoke-virtual {p1}, Lcom/oplus/camera/ui/a/a;->d()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_8

    iget-object p1, p0, Lcom/oplus/camera/capmode/BaseMode;->mCameraUIInterface:Lcom/oplus/camera/ui/CameraUIInterface;

    .line 6619
    invoke-interface {p1}, Lcom/oplus/camera/ui/CameraUIInterface;->k()Lcom/oplus/camera/ui/a/a;

    move-result-object p1

    invoke-virtual {p1}, Lcom/oplus/camera/ui/a/a;->d()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v4, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_9

    .line 6620
    :cond_8
    iget-object p1, p0, Lcom/oplus/camera/capmode/BaseMode;->mCameraUIInterface:Lcom/oplus/camera/ui/CameraUIInterface;

    invoke-interface {p1, v5, v3, v5}, Lcom/oplus/camera/ui/CameraUIInterface;->a(ZZZ)V

    .line 6621
    iget-object v6, p0, Lcom/oplus/camera/capmode/BaseMode;->mCameraUIInterface:Lcom/oplus/camera/ui/CameraUIInterface;

    const v7, 0x7f1005bb

    const/4 v8, -0x1

    const/4 v9, 0x1

    const/4 v10, 0x1

    const/4 v11, 0x0

    invoke-interface/range {v6 .. v11}, Lcom/oplus/camera/ui/CameraUIInterface;->a(IIZZZ)V

    .line 6624
    :cond_9
    iget-boolean p1, p0, Lcom/oplus/camera/capmode/BaseMode;->mbFrontCamera:Z

    invoke-direct {p0, p1}, Lcom/oplus/camera/capmode/BaseMode;->updateFlashMenuIfHDRIsAuto(Z)V

    goto :goto_1

    .line 6626
    :cond_a
    invoke-virtual {p0, v2}, Lcom/oplus/camera/capmode/BaseMode;->getSupportFunction(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_b

    .line 6627
    iget-object p0, p0, Lcom/oplus/camera/capmode/BaseMode;->mCameraUIInterface:Lcom/oplus/camera/ui/CameraUIInterface;

    invoke-interface {p0, v5, v3, v3}, Lcom/oplus/camera/ui/CameraUIInterface;->a(ZZZ)V

    :cond_b
    :goto_1
    return-void
.end method

.method private updateMenuWithFlashChange()Z
    .locals 8

    .line 5178
    iget-boolean v0, p0, Lcom/oplus/camera/capmode/BaseMode;->mbFrontCamera:Z

    if-eqz v0, :cond_0

    .line 5179
    iget-object v0, p0, Lcom/oplus/camera/capmode/BaseMode;->mPreferences:Landroid/content/SharedPreferences;

    iget-object v1, p0, Lcom/oplus/camera/capmode/BaseMode;->mActivity:Landroid/app/Activity;

    invoke-static {v1}, Lcom/oplus/camera/util/Util;->F(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "pref_camera_torch_mode_key"

    invoke-interface {v0, v2, v1}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 5181
    :cond_0
    iget-object v0, p0, Lcom/oplus/camera/capmode/BaseMode;->mPreferences:Landroid/content/SharedPreferences;

    iget-object v1, p0, Lcom/oplus/camera/capmode/BaseMode;->mActivity:Landroid/app/Activity;

    const v2, 0x7f1001bb

    .line 5182
    invoke-virtual {v1, v2}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v1

    const-string v2, "pref_camera_flashmode_key"

    .line 5181
    invoke-interface {v0, v2, v1}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 5185
    :goto_0
    iget-object v1, p0, Lcom/oplus/camera/capmode/BaseMode;->mPreferences:Landroid/content/SharedPreferences;

    iget v2, p0, Lcom/oplus/camera/capmode/BaseMode;->mCameraId:I

    const-string v3, "pref_camera_hdr_mode_key"

    .line 5186
    invoke-static {v3, v2}, Lcom/oplus/camera/aps/config/CameraConfig;->getOptionKeyDefaultValue(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v2

    .line 5185
    invoke-interface {v1, v3, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 5187
    iget-object v2, p0, Lcom/oplus/camera/capmode/BaseMode;->mPreferences:Landroid/content/SharedPreferences;

    invoke-interface {v2}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v2

    const-string v4, "off"

    .line 5189
    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    const/4 v6, 0x1

    const-string v7, "on"

    if-nez v5, :cond_1

    invoke-virtual {v7, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 5190
    invoke-interface {v2, v3, v4}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 5191
    invoke-interface {v2}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 5192
    iget-object p0, p0, Lcom/oplus/camera/capmode/BaseMode;->mCameraUIInterface:Lcom/oplus/camera/ui/CameraUIInterface;

    invoke-interface {p0, v3}, Lcom/oplus/camera/ui/CameraUIInterface;->f(Ljava/lang/String;)V

    return v6

    :cond_1
    const-string v5, "torch"

    .line 5196
    invoke-virtual {v5, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_2

    invoke-virtual {v7, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    :cond_2
    const-string v0, "auto"

    .line 5197
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 5198
    invoke-interface {v2, v3, v4}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 5199
    invoke-interface {v2}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 5200
    iget-object p0, p0, Lcom/oplus/camera/capmode/BaseMode;->mCameraUIInterface:Lcom/oplus/camera/ui/CameraUIInterface;

    invoke-interface {p0, v3}, Lcom/oplus/camera/ui/CameraUIInterface;->f(Ljava/lang/String;)V

    return v6

    :cond_3
    const/4 p0, 0x0

    return p0
.end method

.method private updateMenuWithHDRChange(Z)V
    .locals 2

    .line 5281
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "updateMenuWithHDRChange(), enable: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "BaseMode"

    invoke-static {v1, v0}, Lcom/oplus/camera/e;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 5283
    iget-object v0, p0, Lcom/oplus/camera/capmode/BaseMode;->mCameraUIInterface:Lcom/oplus/camera/ui/CameraUIInterface;

    if-nez v0, :cond_0

    return-void

    :cond_0
    if-eqz p1, :cond_2

    .line 5288
    iget-object p1, p0, Lcom/oplus/camera/capmode/BaseMode;->mPreferences:Landroid/content/SharedPreferences;

    invoke-interface {p1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object p1

    .line 5290
    iget-boolean v0, p0, Lcom/oplus/camera/capmode/BaseMode;->mbFrontCamera:Z

    const-string v1, "off"

    if-eqz v0, :cond_1

    const-string v0, "pref_camera_torch_mode_key"

    .line 5291
    invoke-static {v0}, Lcom/oplus/camera/entry/b;->d(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 5292
    invoke-interface {p1, v0, v1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 5293
    invoke-interface {p1}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 5294
    iget-object p0, p0, Lcom/oplus/camera/capmode/BaseMode;->mCameraUIInterface:Lcom/oplus/camera/ui/CameraUIInterface;

    invoke-interface {p0, v0}, Lcom/oplus/camera/ui/CameraUIInterface;->f(Ljava/lang/String;)V

    goto :goto_0

    :cond_1
    const-string v0, "pref_camera_flashmode_key"

    .line 5296
    invoke-interface {p1, v0, v1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 5297
    invoke-interface {p1}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 5298
    iget-object p0, p0, Lcom/oplus/camera/capmode/BaseMode;->mCameraUIInterface:Lcom/oplus/camera/ui/CameraUIInterface;

    invoke-interface {p0, v0}, Lcom/oplus/camera/ui/CameraUIInterface;->f(Ljava/lang/String;)V

    :cond_2
    :goto_0
    return-void
.end method

.method private updateMenuWithSoftLightChange()Z
    .locals 8

    const-string v0, "func_torch_soft_light"

    .line 5208
    invoke-virtual {p0, v0}, Lcom/oplus/camera/capmode/BaseMode;->getSupportFunction(Ljava/lang/String;)Z

    move-result v0

    const/4 v1, 0x1

    if-nez v0, :cond_0

    return v1

    .line 5212
    :cond_0
    iget-object v0, p0, Lcom/oplus/camera/capmode/BaseMode;->mPreferences:Landroid/content/SharedPreferences;

    iget-object v2, p0, Lcom/oplus/camera/capmode/BaseMode;->mActivity:Landroid/app/Activity;

    const v3, 0x7f1001bb

    .line 5213
    invoke-virtual {v2, v3}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v2

    const-string v3, "pref_camera_torch_mode_key"

    .line 5212
    invoke-interface {v0, v3, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 5214
    iget-object v2, p0, Lcom/oplus/camera/capmode/BaseMode;->mPreferences:Landroid/content/SharedPreferences;

    iget v3, p0, Lcom/oplus/camera/capmode/BaseMode;->mCameraId:I

    const-string v4, "pref_camera_hdr_mode_key"

    .line 5215
    invoke-static {v4, v3}, Lcom/oplus/camera/aps/config/CameraConfig;->getOptionKeyDefaultValue(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v3

    .line 5214
    invoke-interface {v2, v4, v3}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 5216
    iget-object v3, p0, Lcom/oplus/camera/capmode/BaseMode;->mPreferences:Landroid/content/SharedPreferences;

    invoke-interface {v3}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v3

    const-string v5, "off"

    .line 5218
    invoke-virtual {v5, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    const-string v7, "on"

    if-nez v6, :cond_1

    invoke-virtual {v7, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_1

    .line 5219
    invoke-interface {v3, v4, v5}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 5220
    invoke-interface {v3}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 5221
    iget-object p0, p0, Lcom/oplus/camera/capmode/BaseMode;->mCameraUIInterface:Lcom/oplus/camera/ui/CameraUIInterface;

    invoke-interface {p0, v4}, Lcom/oplus/camera/ui/CameraUIInterface;->f(Ljava/lang/String;)V

    return v1

    .line 5225
    :cond_1
    invoke-virtual {v7, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    const-string v0, "auto"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 5226
    invoke-interface {v3, v4, v5}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 5227
    invoke-interface {v3}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 5228
    iget-object p0, p0, Lcom/oplus/camera/capmode/BaseMode;->mCameraUIInterface:Lcom/oplus/camera/ui/CameraUIInterface;

    invoke-interface {p0, v4}, Lcom/oplus/camera/ui/CameraUIInterface;->f(Ljava/lang/String;)V

    return v1

    :cond_2
    const/4 p0, 0x0

    return p0
.end method

.method private updateMirrorParam()V
    .locals 2

    .line 7444
    iget-boolean v0, p0, Lcom/oplus/camera/capmode/BaseMode;->mbFrontCamera:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/oplus/camera/capmode/BaseMode;->mOneCamera:Lcom/oplus/camera/e/d;

    if-eqz v0, :cond_0

    .line 7445
    invoke-virtual {p0}, Lcom/oplus/camera/capmode/BaseMode;->getMirror()Ljava/lang/String;

    move-result-object p0

    const-string v1, "off"

    invoke-static {p0, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result p0

    invoke-interface {v0, p0}, Lcom/oplus/camera/e/d;->k(Z)V

    :cond_0
    return-void
.end method

.method private updateNeonValue()V
    .locals 2

    .line 836
    invoke-static {}, Lcom/oplus/camera/util/Util;->C()Z

    move-result v0

    if-nez v0, :cond_1

    const-string v0, "com.oplus.feature.portrait.neon.support"

    .line 837
    invoke-static {v0}, Lcom/oplus/camera/aps/config/CameraConfig;->getConfigBooleanValue(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "com.oplus.feature.portrait.neon.front.support"

    .line 838
    invoke-static {v0}, Lcom/oplus/camera/aps/config/CameraConfig;->getConfigBooleanValue(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    iget-object v0, p0, Lcom/oplus/camera/capmode/BaseMode;->mOneCamera:Lcom/oplus/camera/e/d;

    if-eqz v0, :cond_1

    .line 840
    invoke-virtual {p0}, Lcom/oplus/camera/capmode/BaseMode;->getCurrFilterType()Ljava/lang/String;

    move-result-object p0

    const-string v1, "neon-2020.cube.rgb.bin"

    invoke-virtual {v1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    invoke-interface {v0, p0}, Lcom/oplus/camera/e/d;->C(Z)V

    :cond_1
    return-void
.end method

.method private updateScreenBrightnessState(Landroid/hardware/camera2/CaptureResult;)V
    .locals 4

    const-string v0, "pref_camera_torch_mode_key"

    .line 7784
    invoke-virtual {p0, v0}, Lcom/oplus/camera/capmode/BaseMode;->getSupportFunction(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 7785
    iget-object v1, p0, Lcom/oplus/camera/capmode/BaseMode;->mPreferences:Landroid/content/SharedPreferences;

    iget-object v2, p0, Lcom/oplus/camera/capmode/BaseMode;->mActivity:Landroid/app/Activity;

    .line 7786
    invoke-static {v2}, Lcom/oplus/camera/util/Util;->F(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    .line 7785
    invoke-interface {v1, v0, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 7787
    invoke-static {p1}, Lcom/oplus/camera/util/Util;->a(Landroid/hardware/camera2/CaptureResult;)F

    move-result p1

    const-string v1, "com.oplus.feature.screen.bright.threshold"

    .line 7788
    invoke-static {v1}, Lcom/oplus/camera/aps/config/CameraConfig;->getConfigIntValue(Ljava/lang/String;)I

    move-result v1

    const-string v2, "com.oplus.feature.screen.bright.recover.threshold"

    .line 7789
    invoke-static {v2}, Lcom/oplus/camera/aps/config/CameraConfig;->getConfigIntValue(Ljava/lang/String;)I

    move-result v2

    .line 7791
    sget-boolean v3, Lcom/oplus/camera/capmode/BaseMode;->sHighBrightness:Z

    if-nez v3, :cond_1

    if-eqz v1, :cond_1

    int-to-float v3, v1

    cmpg-float v3, v3, p1

    if-gtz v3, :cond_1

    const-string v3, "on"

    .line 7793
    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    const-string v3, "auto"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 7794
    :cond_0
    iget-object p0, p0, Lcom/oplus/camera/capmode/BaseMode;->mCameraInterface:Lcom/oplus/camera/capmode/a;

    const p1, 0x3f4ccccd    # 0.8f

    invoke-interface {p0, p1}, Lcom/oplus/camera/capmode/a;->b(F)V

    const/4 p0, 0x1

    .line 7795
    sput-boolean p0, Lcom/oplus/camera/capmode/BaseMode;->sHighBrightness:Z

    goto :goto_0

    .line 7796
    :cond_1
    sget-boolean v3, Lcom/oplus/camera/capmode/BaseMode;->sHighBrightness:Z

    if-eqz v3, :cond_5

    if-eqz v1, :cond_2

    int-to-float v1, v2

    cmpl-float p1, v1, p1

    if-gtz p1, :cond_3

    :cond_2
    const-string p1, "off"

    .line 7797
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_5

    .line 7798
    :cond_3
    invoke-direct {p0}, Lcom/oplus/camera/capmode/BaseMode;->resetScreenState()V

    goto :goto_0

    .line 7800
    :cond_4
    sget-boolean p1, Lcom/oplus/camera/capmode/BaseMode;->sHighBrightness:Z

    if-eqz p1, :cond_5

    .line 7801
    invoke-direct {p0}, Lcom/oplus/camera/capmode/BaseMode;->resetScreenState()V

    :cond_5
    :goto_0
    return-void
.end method

.method private updateScreenState(Landroid/hardware/camera2/CaptureResult;)V
    .locals 9

    const-string v0, "pref_camera_torch_mode_key"

    .line 7646
    invoke-virtual {p0, v0}, Lcom/oplus/camera/capmode/BaseMode;->getSupportFunction(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_9

    .line 7647
    iget-boolean v1, p0, Lcom/oplus/camera/capmode/BaseMode;->mbInCapturing:Z

    if-eqz v1, :cond_0

    .line 7648
    sget-object p0, Lcom/oplus/camera/ui/inverse/e;->INS:Lcom/oplus/camera/ui/inverse/e;

    invoke-virtual {p0}, Lcom/oplus/camera/ui/inverse/e;->removeMessages()V

    return-void

    .line 7652
    :cond_0
    iget-object v1, p0, Lcom/oplus/camera/capmode/BaseMode;->mPreferences:Landroid/content/SharedPreferences;

    iget-object v2, p0, Lcom/oplus/camera/capmode/BaseMode;->mActivity:Landroid/app/Activity;

    .line 7653
    invoke-static {v2}, Lcom/oplus/camera/util/Util;->F(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    .line 7652
    invoke-interface {v1, v0, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 7654
    sget-object v1, Lcom/oplus/camera/ui/inverse/e;->INS:Lcom/oplus/camera/ui/inverse/e;

    invoke-virtual {v1}, Lcom/oplus/camera/ui/inverse/e;->getThreshold()I

    move-result v1

    .line 7655
    sget-object v2, Lcom/oplus/camera/ui/inverse/e;->INS:Lcom/oplus/camera/ui/inverse/e;

    invoke-virtual {v2}, Lcom/oplus/camera/ui/inverse/e;->getThresholdRecover()I

    move-result v2

    if-lez v1, :cond_a

    const-string v3, "auto"

    .line 7658
    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_8

    .line 7659
    invoke-virtual {p0}, Lcom/oplus/camera/capmode/BaseMode;->exclusiveInverse()Z

    move-result v0

    const/4 v3, 0x0

    if-eqz v0, :cond_2

    .line 7660
    sget-object p1, Lcom/oplus/camera/ui/inverse/e;->INS:Lcom/oplus/camera/ui/inverse/e;

    iget-object v0, p0, Lcom/oplus/camera/capmode/BaseMode;->mActivity:Landroid/app/Activity;

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    invoke-virtual {p1, v0}, Lcom/oplus/camera/ui/inverse/e;->isInverseColor(I)Z

    move-result p1

    if-eqz p1, :cond_1

    .line 7661
    sget-object p1, Lcom/oplus/camera/ui/inverse/e;->INS:Lcom/oplus/camera/ui/inverse/e;

    iget-object v0, p0, Lcom/oplus/camera/capmode/BaseMode;->mActivity:Landroid/app/Activity;

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    invoke-virtual {p1, v0, v3, v3}, Lcom/oplus/camera/ui/inverse/e;->postInverseColor(IZZ)V

    .line 7664
    :cond_1
    sget-object p1, Lcom/oplus/camera/ui/inverse/e;->INS:Lcom/oplus/camera/ui/inverse/e;

    invoke-virtual {p1}, Lcom/oplus/camera/ui/inverse/e;->removeMessages()V

    .line 7665
    invoke-direct {p0}, Lcom/oplus/camera/capmode/BaseMode;->checkFlashMode()V

    goto/16 :goto_0

    .line 7667
    :cond_2
    invoke-static {p1}, Lcom/oplus/camera/util/Util;->a(Landroid/hardware/camera2/CaptureResult;)F

    move-result v0

    .line 7669
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "updateScreenState, currentLux: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v5, ", threshold: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const-string v5, "BaseMode"

    invoke-static {v5, v4}, Lcom/oplus/camera/e;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 7671
    invoke-virtual {p1}, Landroid/hardware/camera2/CaptureResult;->getFrameNumber()J

    move-result-wide v4

    const/high16 p1, 0x43fa0000    # 500.0f

    cmpl-float p1, p1, v0

    const/4 v6, 0x1

    if-eqz p1, :cond_3

    .line 7674
    iput-boolean v6, p0, Lcom/oplus/camera/capmode/BaseMode;->mbLuxHasChange:Z

    :cond_3
    int-to-float p1, v1

    cmpg-float p1, p1, v0

    if-gtz p1, :cond_6

    const-wide/16 v7, 0xa

    cmp-long p1, v7, v4

    if-ltz p1, :cond_4

    .line 7677
    iget-boolean p1, p0, Lcom/oplus/camera/capmode/BaseMode;->mbLuxHasChange:Z

    if-eqz p1, :cond_6

    .line 7680
    :cond_4
    sget-object p1, Lcom/oplus/camera/ui/inverse/e;->INS:Lcom/oplus/camera/ui/inverse/e;

    iget-object v0, p0, Lcom/oplus/camera/capmode/BaseMode;->mActivity:Landroid/app/Activity;

    new-instance v1, Lcom/oplus/camera/capmode/-$$Lambda$BaseMode$A2xGlTZfC7H-3NriJYlQp7_Tkvk;

    invoke-direct {v1, p0}, Lcom/oplus/camera/capmode/-$$Lambda$BaseMode$A2xGlTZfC7H-3NriJYlQp7_Tkvk;-><init>(Lcom/oplus/camera/capmode/BaseMode;)V

    invoke-virtual {p1, v0, v6, v6, v1}, Lcom/oplus/camera/ui/inverse/e;->setInverseDelay(Landroid/content/Context;ZZLcom/oplus/camera/ui/inverse/e$a;)Z

    move-result p1

    if-nez p1, :cond_5

    .line 7698
    invoke-direct {p0}, Lcom/oplus/camera/capmode/BaseMode;->checkFlashMode()V

    .line 7701
    :cond_5
    sget-object p1, Lcom/oplus/camera/ui/inverse/e;->INS:Lcom/oplus/camera/ui/inverse/e;

    iget-object v0, p0, Lcom/oplus/camera/capmode/BaseMode;->mActivity:Landroid/app/Activity;

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    invoke-virtual {p1, v0}, Lcom/oplus/camera/ui/inverse/e;->isInverseColor(I)Z

    move-result p1

    if-eqz p1, :cond_8

    iget-object p1, p0, Lcom/oplus/camera/capmode/BaseMode;->mCameraUIInterface:Lcom/oplus/camera/ui/CameraUIInterface;

    invoke-interface {p1}, Lcom/oplus/camera/ui/CameraUIInterface;->av()Z

    move-result p1

    if-nez p1, :cond_8

    .line 7702
    iget-object p1, p0, Lcom/oplus/camera/capmode/BaseMode;->mActivity:Landroid/app/Activity;

    new-instance v0, Lcom/oplus/camera/capmode/BaseMode$10;

    invoke-direct {v0, p0}, Lcom/oplus/camera/capmode/BaseMode$10;-><init>(Lcom/oplus/camera/capmode/BaseMode;)V

    invoke-virtual {p1, v0}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    goto :goto_0

    :cond_6
    int-to-float p1, v2

    cmpl-float p1, p1, v0

    if-lez p1, :cond_7

    .line 7716
    sget-object p1, Lcom/oplus/camera/ui/inverse/e;->INS:Lcom/oplus/camera/ui/inverse/e;

    iget-object v0, p0, Lcom/oplus/camera/capmode/BaseMode;->mActivity:Landroid/app/Activity;

    new-instance v1, Lcom/oplus/camera/capmode/-$$Lambda$BaseMode$dPQNtGnJJ6Pj54aeIJvoTRkdg9k;

    invoke-direct {v1, p0}, Lcom/oplus/camera/capmode/-$$Lambda$BaseMode$dPQNtGnJJ6Pj54aeIJvoTRkdg9k;-><init>(Lcom/oplus/camera/capmode/BaseMode;)V

    invoke-virtual {p1, v0, v3, v6, v1}, Lcom/oplus/camera/ui/inverse/e;->setInverseDelay(Landroid/content/Context;ZZLcom/oplus/camera/ui/inverse/e$a;)Z

    move-result p1

    if-nez p1, :cond_8

    .line 7723
    invoke-direct {p0}, Lcom/oplus/camera/capmode/BaseMode;->checkFlashMode()V

    goto :goto_0

    .line 7726
    :cond_7
    invoke-direct {p0}, Lcom/oplus/camera/capmode/BaseMode;->checkFlashMode()V

    .line 7727
    sget-object p1, Lcom/oplus/camera/ui/inverse/e;->INS:Lcom/oplus/camera/ui/inverse/e;

    iget-object v0, p0, Lcom/oplus/camera/capmode/BaseMode;->mActivity:Landroid/app/Activity;

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    invoke-virtual {p1, v0}, Lcom/oplus/camera/ui/inverse/e;->isInverseColor(I)Z

    move-result p1

    if-eqz p1, :cond_8

    iget-object p1, p0, Lcom/oplus/camera/capmode/BaseMode;->mCameraUIInterface:Lcom/oplus/camera/ui/CameraUIInterface;

    invoke-interface {p1}, Lcom/oplus/camera/ui/CameraUIInterface;->av()Z

    move-result p1

    if-nez p1, :cond_8

    .line 7728
    iget-object p1, p0, Lcom/oplus/camera/capmode/BaseMode;->mActivity:Landroid/app/Activity;

    new-instance v0, Lcom/oplus/camera/capmode/BaseMode$2;

    invoke-direct {v0, p0}, Lcom/oplus/camera/capmode/BaseMode$2;-><init>(Lcom/oplus/camera/capmode/BaseMode;)V

    invoke-virtual {p1, v0}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 7744
    :cond_8
    :goto_0
    invoke-direct {p0}, Lcom/oplus/camera/capmode/BaseMode;->checkHighBrightness()V

    goto :goto_1

    .line 7746
    :cond_9
    sget-boolean p1, Lcom/oplus/camera/capmode/BaseMode;->sHighBrightness:Z

    if-eqz p1, :cond_a

    .line 7747
    invoke-direct {p0}, Lcom/oplus/camera/capmode/BaseMode;->resetScreenState()V

    :cond_a
    :goto_1
    return-void
.end method


# virtual methods
.method public final afterStartPreview(Z)V
    .locals 2

    .line 2329
    iget-boolean v0, p0, Lcom/oplus/camera/capmode/BaseMode;->mbCapModeInit:Z

    if-eqz v0, :cond_0

    .line 2330
    invoke-virtual {p0}, Lcom/oplus/camera/capmode/BaseMode;->updateTrackEnable()V

    .line 2331
    invoke-virtual {p0, p1}, Lcom/oplus/camera/capmode/BaseMode;->onAfterStartPreview(Z)V

    .line 2334
    :cond_0
    iget-object p1, p0, Lcom/oplus/camera/capmode/BaseMode;->mStatePreferenceHelper:Lcom/oplus/camera/algovisualization/j;

    if-nez p1, :cond_1

    .line 2335
    new-instance p1, Lcom/oplus/camera/algovisualization/j;

    iget-object v0, p0, Lcom/oplus/camera/capmode/BaseMode;->mActivity:Landroid/app/Activity;

    invoke-direct {p1, v0}, Lcom/oplus/camera/algovisualization/j;-><init>(Landroid/app/Activity;)V

    iput-object p1, p0, Lcom/oplus/camera/capmode/BaseMode;->mStatePreferenceHelper:Lcom/oplus/camera/algovisualization/j;

    .line 2338
    :cond_1
    iget-object p1, p0, Lcom/oplus/camera/capmode/BaseMode;->mStatePreferenceHelper:Lcom/oplus/camera/algovisualization/j;

    invoke-virtual {p1}, Lcom/oplus/camera/algovisualization/j;->b()Z

    move-result p1

    if-eqz p1, :cond_4

    iget-object p1, p0, Lcom/oplus/camera/capmode/BaseMode;->mStatePreferenceHelper:Lcom/oplus/camera/algovisualization/j;

    .line 2339
    invoke-virtual {p1}, Lcom/oplus/camera/algovisualization/j;->a()Z

    move-result p1

    if-eqz p1, :cond_4

    .line 2340
    invoke-virtual {p0}, Lcom/oplus/camera/capmode/BaseMode;->isSlowVideoMode()Z

    move-result p1

    if-nez p1, :cond_2

    .line 2341
    invoke-virtual {p0}, Lcom/oplus/camera/capmode/BaseMode;->getCameraMode()Ljava/lang/String;

    move-result-object p1

    const-string v0, "sticker"

    invoke-static {v0, p1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_4

    iget-object p1, p0, Lcom/oplus/camera/capmode/BaseMode;->mFullAlgoValue:Ljava/lang/String;

    .line 2342
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_4

    iget-object p1, p0, Lcom/oplus/camera/capmode/BaseMode;->mFullAlgoKey:Ljava/lang/String;

    .line 2343
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_4

    .line 2344
    :cond_2
    iget-object p1, p0, Lcom/oplus/camera/capmode/BaseMode;->algoVisualViewManager:Lcom/oplus/camera/algovisualization/c;

    if-nez p1, :cond_3

    .line 2345
    new-instance p1, Lcom/oplus/camera/algovisualization/c;

    iget-object v0, p0, Lcom/oplus/camera/capmode/BaseMode;->mActivity:Landroid/app/Activity;

    iget-object v1, p0, Lcom/oplus/camera/capmode/BaseMode;->mOneCamera:Lcom/oplus/camera/e/d;

    invoke-direct {p1, v0, v1}, Lcom/oplus/camera/algovisualization/c;-><init>(Landroid/app/Activity;Lcom/oplus/camera/e/d;)V

    iput-object p1, p0, Lcom/oplus/camera/capmode/BaseMode;->algoVisualViewManager:Lcom/oplus/camera/algovisualization/c;

    .line 2346
    iget-object p1, p0, Lcom/oplus/camera/capmode/BaseMode;->algoVisualViewManager:Lcom/oplus/camera/algovisualization/c;

    invoke-virtual {p1}, Lcom/oplus/camera/algovisualization/c;->a()V

    .line 2349
    :cond_3
    iget-object p1, p0, Lcom/oplus/camera/capmode/BaseMode;->algoVisualViewManager:Lcom/oplus/camera/algovisualization/c;

    iget-object v0, p0, Lcom/oplus/camera/capmode/BaseMode;->mActivity:Landroid/app/Activity;

    iget p0, p0, Lcom/oplus/camera/capmode/BaseMode;->mCameraId:I

    invoke-virtual {p1, v0, p0}, Lcom/oplus/camera/algovisualization/c;->a(Landroid/app/Activity;I)V

    :cond_4
    return-void
.end method

.method public afterStartRecording()V
    .locals 0

    return-void
.end method

.method public afterStopRecording()V
    .locals 0

    return-void
.end method

.method public allowSwitchCamera()Z
    .locals 0

    const/4 p0, 0x1

    return p0
.end method

.method protected applyBeautyParam()V
    .locals 4

    const-string v0, "func_face_beauty_process"

    .line 5928
    invoke-virtual {p0, v0}, Lcom/oplus/camera/capmode/BaseMode;->getSupportFunction(Ljava/lang/String;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 5929
    invoke-virtual {p0}, Lcom/oplus/camera/capmode/BaseMode;->getFaceBeautyCurrIndex()I

    move-result v0

    .line 5931
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "applyBeautyParam, index: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "BaseMode"

    invoke-static {v3, v2}, Lcom/oplus/camera/e;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 5933
    invoke-virtual {p0, v0, v1}, Lcom/oplus/camera/capmode/BaseMode;->updateFaceBeautyLevel(IZ)V

    .line 5934
    invoke-virtual {p0}, Lcom/oplus/camera/capmode/BaseMode;->getCustomBeautyValues()[I

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/oplus/camera/capmode/BaseMode;->updateCustomBeautyValues([I)V

    .line 5936
    iget-object v1, p0, Lcom/oplus/camera/capmode/BaseMode;->mPreviewEffectProcess:Lcom/oplus/camera/ui/preview/a/t;

    if-eqz v1, :cond_1

    .line 5937
    invoke-interface {v1, v0}, Lcom/oplus/camera/ui/preview/a/t;->g(I)V

    .line 5938
    iget-object v0, p0, Lcom/oplus/camera/capmode/BaseMode;->mPreviewEffectProcess:Lcom/oplus/camera/ui/preview/a/t;

    invoke-virtual {p0}, Lcom/oplus/camera/capmode/BaseMode;->getCustomBeautyValues()[I

    move-result-object p0

    invoke-interface {v0, p0}, Lcom/oplus/camera/ui/preview/a/t;->a([I)V

    goto :goto_0

    .line 5941
    :cond_0
    invoke-virtual {p0, v1, v1}, Lcom/oplus/camera/capmode/BaseMode;->updateFaceBeautyLevel(IZ)V

    .line 5943
    iget-object p0, p0, Lcom/oplus/camera/capmode/BaseMode;->mPreviewEffectProcess:Lcom/oplus/camera/ui/preview/a/t;

    if-eqz p0, :cond_1

    .line 5944
    invoke-interface {p0, v1}, Lcom/oplus/camera/ui/preview/a/t;->g(I)V

    :cond_1
    :goto_0
    return-void
.end method

.method public beforeConfig()V
    .locals 0

    return-void
.end method

.method public beforeModeChanged()V
    .locals 0

    return-void
.end method

.method public final beforePause()V
    .locals 1

    const/4 v0, 0x0

    .line 1937
    invoke-virtual {p0, v0}, Lcom/oplus/camera/capmode/BaseMode;->setCapturePreviewDataState(I)V

    return-void
.end method

.method public final beforePreview()V
    .locals 8

    .line 2354
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onBeforePreview, capMode: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/oplus/camera/capmode/BaseMode;->getCameraMode()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", mCurrentMode: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "BaseMode"

    invoke-static {v1, v0}, Lcom/oplus/camera/e;->f(Ljava/lang/String;Ljava/lang/String;)V

    .line 2356
    iget-object v0, p0, Lcom/oplus/camera/capmode/BaseMode;->mOneCamera:Lcom/oplus/camera/e/d;

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_5

    .line 2357
    invoke-interface {v0, v1}, Lcom/oplus/camera/e/d;->x(Z)V

    .line 2358
    iget-object v0, p0, Lcom/oplus/camera/capmode/BaseMode;->mOneCamera:Lcom/oplus/camera/e/d;

    invoke-interface {v0, v2}, Lcom/oplus/camera/e/d;->n(I)V

    .line 2359
    iget-object v0, p0, Lcom/oplus/camera/capmode/BaseMode;->mOneCamera:Lcom/oplus/camera/e/d;

    sget-object v3, Landroid/hardware/camera2/CaptureRequest;->CONTROL_AE_EXPOSURE_COMPENSATION:Landroid/hardware/camera2/CaptureRequest$Key;

    invoke-static {}, Lcom/oplus/camera/a;->c()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-interface {v0, v3, v4}, Lcom/oplus/camera/e/d;->a(Landroid/hardware/camera2/CaptureRequest$Key;Ljava/lang/Object;)V

    .line 2360
    iget-object v0, p0, Lcom/oplus/camera/capmode/BaseMode;->mOneCamera:Lcom/oplus/camera/e/d;

    invoke-virtual {p0}, Lcom/oplus/camera/capmode/BaseMode;->isSalientObjectDetectionEnabled()Z

    move-result v3

    invoke-interface {v0, v3}, Lcom/oplus/camera/e/d;->z(Z)V

    .line 2361
    iget-object v0, p0, Lcom/oplus/camera/capmode/BaseMode;->mOneCamera:Lcom/oplus/camera/e/d;

    invoke-interface {v0, v2}, Lcom/oplus/camera/e/d;->v(Z)V

    .line 2362
    iget-object v0, p0, Lcom/oplus/camera/capmode/BaseMode;->mOneCamera:Lcom/oplus/camera/e/d;

    sget-object v3, Lcom/oplus/ocs/camera/CameraParameter;->IS_FROM_MAIN_MENU:Lcom/oplus/ocs/camera/CameraParameter$PreviewKey;

    invoke-direct {p0}, Lcom/oplus/camera/capmode/BaseMode;->isFromMainMenuApp()Z

    move-result v4

    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    invoke-interface {v0, v3, v4}, Lcom/oplus/camera/e/d;->a(Lcom/oplus/ocs/camera/CameraParameter$PreviewKey;Ljava/lang/Object;)V

    .line 2364
    iget-object v0, p0, Lcom/oplus/camera/capmode/BaseMode;->mCameraInterface:Lcom/oplus/camera/capmode/a;

    invoke-interface {v0}, Lcom/oplus/camera/capmode/a;->aG()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 2365
    iget-object v0, p0, Lcom/oplus/camera/capmode/BaseMode;->mOneCamera:Lcom/oplus/camera/e/d;

    iget-object v3, p0, Lcom/oplus/camera/capmode/BaseMode;->mCameraInterface:Lcom/oplus/camera/capmode/a;

    invoke-interface {v3}, Lcom/oplus/camera/capmode/a;->aG()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->getBytes()[B

    move-result-object v3

    invoke-interface {v0, v3}, Lcom/oplus/camera/e/d;->a([B)V

    .line 2368
    :cond_0
    invoke-static {}, Lcom/oplus/camera/util/Util;->C()Z

    move-result v0

    if-nez v0, :cond_2

    .line 2369
    invoke-virtual {p0}, Lcom/oplus/camera/capmode/BaseMode;->isSlowVideoMode()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 2370
    iget-object v0, p0, Lcom/oplus/camera/capmode/BaseMode;->mOneCamera:Lcom/oplus/camera/e/d;

    invoke-virtual {p0}, Lcom/oplus/camera/capmode/BaseMode;->getVideoSizeType()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v0, v1, v3}, Lcom/oplus/camera/e/d;->a(ZLjava/lang/String;)V

    goto :goto_0

    .line 2372
    :cond_1
    iget-object v0, p0, Lcom/oplus/camera/capmode/BaseMode;->mOneCamera:Lcom/oplus/camera/e/d;

    const/4 v3, 0x0

    invoke-interface {v0, v2, v3}, Lcom/oplus/camera/e/d;->a(ZLjava/lang/String;)V

    :cond_2
    :goto_0
    const-string v0, "key_support_zsl"

    .line 2378
    invoke-virtual {p0, v0}, Lcom/oplus/camera/capmode/BaseMode;->getSupportFunction(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_4

    const-string v0, "com.oplus.request.zsl.mode"

    .line 2379
    invoke-static {v0}, Lcom/oplus/camera/aps/config/CameraConfig;->getConfigBooleanValue(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_4

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0x1e

    if-le v0, v3, :cond_3

    .line 2380
    invoke-static {}, Lcom/oplus/camera/util/Util;->C()Z

    move-result v0

    if-nez v0, :cond_4

    .line 2381
    :cond_3
    iget-object v0, p0, Lcom/oplus/camera/capmode/BaseMode;->mOneCamera:Lcom/oplus/camera/e/d;

    invoke-virtual {p0}, Lcom/oplus/camera/capmode/BaseMode;->getZSLMode()Z

    move-result v3

    invoke-interface {v0, v3}, Lcom/oplus/camera/e/d;->m(Z)V

    .line 2384
    :cond_4
    iget-object v0, p0, Lcom/oplus/camera/capmode/BaseMode;->mOneCamera:Lcom/oplus/camera/e/d;

    iget-object v3, p0, Lcom/oplus/camera/capmode/BaseMode;->mCameraUIInterface:Lcom/oplus/camera/ui/CameraUIInterface;

    invoke-interface {v3}, Lcom/oplus/camera/ui/CameraUIInterface;->e()Z

    move-result v3

    invoke-interface {v0, v3}, Lcom/oplus/camera/e/d;->f(Z)V

    .line 2387
    :cond_5
    invoke-virtual {p0}, Lcom/oplus/camera/capmode/BaseMode;->updateAISceneMode()V

    .line 2388
    iget v0, p0, Lcom/oplus/camera/capmode/BaseMode;->mAsdSceneValue:I

    invoke-virtual {p0, v2, v0}, Lcom/oplus/camera/capmode/BaseMode;->updateAsdSceneValue(ZI)V

    .line 2389
    invoke-direct {p0}, Lcom/oplus/camera/capmode/BaseMode;->setSloganEnable()V

    .line 2390
    invoke-direct {p0}, Lcom/oplus/camera/capmode/BaseMode;->setCurTemperatureToHAL()V

    .line 2391
    invoke-virtual {p0, v2, v2}, Lcom/oplus/camera/capmode/BaseMode;->updateRearAicolorEnable(ZZ)V

    .line 2392
    invoke-virtual {p0}, Lcom/oplus/camera/capmode/BaseMode;->getCurrFilterIndex()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/oplus/camera/capmode/BaseMode;->updateFilterParam(I)V

    .line 2393
    invoke-virtual {p0}, Lcom/oplus/camera/capmode/BaseMode;->updateBlurValue()V

    .line 2394
    invoke-direct {p0}, Lcom/oplus/camera/capmode/BaseMode;->updateNeonValue()V

    .line 2395
    invoke-virtual {p0}, Lcom/oplus/camera/capmode/BaseMode;->isVideoModeType()Z

    move-result v0

    if-eqz v0, :cond_6

    invoke-virtual {p0}, Lcom/oplus/camera/capmode/BaseMode;->isBlurOpen()Z

    move-result v0

    if-eqz v0, :cond_6

    move v0, v1

    goto :goto_1

    :cond_6
    move v0, v2

    :goto_1
    invoke-virtual {p0, v2, v0}, Lcom/oplus/camera/capmode/BaseMode;->updateVideoBlurEnable(ZZ)V

    .line 2396
    invoke-virtual {p0}, Lcom/oplus/camera/capmode/BaseMode;->isVideoNeonOpen()Z

    move-result v0

    invoke-virtual {p0, v2, v0}, Lcom/oplus/camera/capmode/BaseMode;->updateVideoNeonEnable(ZZ)V

    .line 2397
    invoke-virtual {p0}, Lcom/oplus/camera/capmode/BaseMode;->getFaceBeautyCurrIndex()I

    move-result v0

    invoke-virtual {p0, v0, v2}, Lcom/oplus/camera/capmode/BaseMode;->updateFaceBeautyLevel(IZ)V

    .line 2398
    invoke-virtual {p0}, Lcom/oplus/camera/capmode/BaseMode;->getCustomBeautyValues()[I

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/oplus/camera/capmode/BaseMode;->updateCustomBeautyValues([I)V

    .line 2400
    invoke-static {}, Lcom/oplus/camera/util/Util;->C()Z

    move-result v0

    if-eqz v0, :cond_7

    .line 2401
    iget v0, p0, Lcom/oplus/camera/capmode/BaseMode;->mApsBracketMode:I

    invoke-virtual {p0, v2, v0}, Lcom/oplus/camera/capmode/BaseMode;->updateBracketMode(ZI)V

    goto :goto_2

    .line 2403
    :cond_7
    iput-boolean v1, p0, Lcom/oplus/camera/capmode/BaseMode;->mbEnableTuningData:Z

    .line 2406
    :goto_2
    invoke-virtual {p0}, Lcom/oplus/camera/capmode/BaseMode;->isNoneSatUltraWideAngleOpen()Z

    move-result v0

    const-string v3, "off"

    if-eqz v0, :cond_9

    .line 2407
    invoke-virtual {p0}, Lcom/oplus/camera/capmode/BaseMode;->isOpenFlash()Z

    move-result v0

    if-eqz v0, :cond_9

    const-string v0, "com.oplus.feature.flash.full.zoom.support"

    .line 2408
    invoke-static {v0}, Lcom/oplus/camera/aps/config/CameraConfig;->getConfigBooleanValue(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_9

    const-string v0, "com.oplus.feature.capture.flash.only_main.zoom.support"

    .line 2409
    invoke-static {v0}, Lcom/oplus/camera/aps/config/CameraConfig;->getConfigBooleanValue(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_9

    const-string v0, "pref_camera_flashmode_key"

    .line 2410
    invoke-virtual {p0, v0}, Lcom/oplus/camera/capmode/BaseMode;->getSupportFunction(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_8

    .line 2411
    iget-object v4, p0, Lcom/oplus/camera/capmode/BaseMode;->mPreferences:Landroid/content/SharedPreferences;

    invoke-interface {v4}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v4

    invoke-interface {v4, v0, v3}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    :cond_8
    const-string v0, "pref_camera_videoflashmode_key"

    .line 2414
    invoke-virtual {p0, v0}, Lcom/oplus/camera/capmode/BaseMode;->getSupportFunction(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_9

    .line 2415
    iget-object v4, p0, Lcom/oplus/camera/capmode/BaseMode;->mPreferences:Landroid/content/SharedPreferences;

    invoke-interface {v4}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v4

    invoke-interface {v4, v0, v3}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 2419
    :cond_9
    invoke-virtual {p0}, Lcom/oplus/camera/capmode/BaseMode;->is10bitsHeicEncodeEnable()Z

    move-result v0

    const-string v4, "pref_photo_codec_key"

    if-eqz v0, :cond_a

    .line 2420
    iget-object v0, p0, Lcom/oplus/camera/capmode/BaseMode;->mPreferences:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v5, "HEIF"

    invoke-interface {v0, v4, v5}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    goto :goto_3

    .line 2422
    :cond_a
    iget-object v0, p0, Lcom/oplus/camera/capmode/BaseMode;->mPreferences:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    iget-object v5, p0, Lcom/oplus/camera/capmode/BaseMode;->mPreferences:Landroid/content/SharedPreferences;

    const-string v6, "pref_photo_codec_click_key"

    const-string v7, "JPEG"

    .line 2423
    invoke-interface {v5, v6, v7}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 2422
    invoke-interface {v0, v4, v5}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 2423
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 2426
    :goto_3
    invoke-virtual {p0}, Lcom/oplus/camera/capmode/BaseMode;->getFlashMode()Ljava/lang/String;

    move-result-object v0

    .line 2428
    iget-object v4, p0, Lcom/oplus/camera/capmode/BaseMode;->mOneCamera:Lcom/oplus/camera/e/d;

    if-eqz v4, :cond_b

    .line 2429
    invoke-interface {v4, v0}, Lcom/oplus/camera/e/d;->b(Ljava/lang/String;)V

    :cond_b
    const-string v4, "pref_camera_torch_mode_key"

    .line 2432
    invoke-virtual {p0, v4}, Lcom/oplus/camera/capmode/BaseMode;->getSupportFunction(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_c

    const-string v4, "auto"

    .line 2433
    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_c

    sget-object v0, Lcom/oplus/camera/ui/inverse/e;->INS:Lcom/oplus/camera/ui/inverse/e;

    iget-object v4, p0, Lcom/oplus/camera/capmode/BaseMode;->mActivity:Landroid/app/Activity;

    .line 2434
    invoke-virtual {v0, v4}, Lcom/oplus/camera/ui/inverse/e;->isInverseAble(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_c

    iget-object v0, p0, Lcom/oplus/camera/capmode/BaseMode;->mOneCamera:Lcom/oplus/camera/e/d;

    if-eqz v0, :cond_c

    .line 2436
    invoke-interface {v0, v1}, Lcom/oplus/camera/e/d;->c(Z)V

    goto :goto_4

    .line 2438
    :cond_c
    iget-object v0, p0, Lcom/oplus/camera/capmode/BaseMode;->mOneCamera:Lcom/oplus/camera/e/d;

    invoke-interface {v0, v2}, Lcom/oplus/camera/e/d;->c(Z)V

    .line 2441
    :goto_4
    iget-object v0, p0, Lcom/oplus/camera/capmode/BaseMode;->mPreviewEffectProcess:Lcom/oplus/camera/ui/preview/a/t;

    const/high16 v4, 0x3f800000    # 1.0f

    if-eqz v0, :cond_d

    .line 2442
    invoke-interface {v0, v2}, Lcom/oplus/camera/ui/preview/a/t;->n(Z)V

    .line 2443
    iget-object v0, p0, Lcom/oplus/camera/capmode/BaseMode;->mPreviewEffectProcess:Lcom/oplus/camera/ui/preview/a/t;

    invoke-interface {v0, v4}, Lcom/oplus/camera/ui/preview/a/t;->d(F)V

    .line 2446
    :cond_d
    invoke-virtual {p0}, Lcom/oplus/camera/capmode/BaseMode;->onBeforePreview()V

    .line 2447
    invoke-virtual {p0}, Lcom/oplus/camera/capmode/BaseMode;->setLSDEnable()V

    .line 2449
    iget-object v0, p0, Lcom/oplus/camera/capmode/BaseMode;->mPreviewEffectProcess:Lcom/oplus/camera/ui/preview/a/t;

    const-string v5, "none"

    if-eqz v0, :cond_10

    .line 2450
    invoke-virtual {p0}, Lcom/oplus/camera/capmode/BaseMode;->needSetMakeupToAlgo()Z

    move-result v6

    invoke-interface {v0, v6}, Lcom/oplus/camera/ui/preview/a/t;->d(Z)V

    .line 2452
    invoke-virtual {p0}, Lcom/oplus/camera/capmode/BaseMode;->isMakeupOpen()Z

    move-result v0

    if-eqz v0, :cond_e

    .line 2453
    invoke-virtual {p0}, Lcom/oplus/camera/capmode/BaseMode;->getCurrMakeupIndex()I

    move-result v0

    .line 2455
    iget-object v6, p0, Lcom/oplus/camera/capmode/BaseMode;->mPreviewEffectProcess:Lcom/oplus/camera/ui/preview/a/t;

    invoke-virtual {p0, v0}, Lcom/oplus/camera/capmode/BaseMode;->getMakeupType(I)Ljava/lang/String;

    move-result-object v7

    invoke-interface {v6, v7}, Lcom/oplus/camera/ui/preview/a/t;->b(Ljava/lang/String;)V

    .line 2456
    iget-object v6, p0, Lcom/oplus/camera/capmode/BaseMode;->mPreviewEffectProcess:Lcom/oplus/camera/ui/preview/a/t;

    invoke-virtual {p0, v0}, Lcom/oplus/camera/capmode/BaseMode;->getMakeupItemValue(I)I

    move-result v7

    invoke-interface {v6, v7}, Lcom/oplus/camera/ui/preview/a/t;->h(I)V

    .line 2458
    iget-object v6, p0, Lcom/oplus/camera/capmode/BaseMode;->mOneCamera:Lcom/oplus/camera/e/d;

    if-eqz v6, :cond_f

    .line 2459
    invoke-virtual {p0, v0}, Lcom/oplus/camera/capmode/BaseMode;->getMakeupType(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {p0, v0}, Lcom/oplus/camera/capmode/BaseMode;->getMakeupItemValue(I)I

    move-result v0

    invoke-interface {v6, v7, v0}, Lcom/oplus/camera/e/d;->a(Ljava/lang/String;I)V

    goto :goto_5

    .line 2462
    :cond_e
    iget-object v0, p0, Lcom/oplus/camera/capmode/BaseMode;->mPreviewEffectProcess:Lcom/oplus/camera/ui/preview/a/t;

    invoke-interface {v0, v5}, Lcom/oplus/camera/ui/preview/a/t;->b(Ljava/lang/String;)V

    .line 2465
    :cond_f
    :goto_5
    iget-object v0, p0, Lcom/oplus/camera/capmode/BaseMode;->mPreviewEffectProcess:Lcom/oplus/camera/ui/preview/a/t;

    invoke-virtual {p0}, Lcom/oplus/camera/capmode/BaseMode;->getFaceBeautyModeIndex()I

    move-result v6

    invoke-interface {v0, v6}, Lcom/oplus/camera/ui/preview/a/t;->f(I)V

    .line 2468
    :cond_10
    iget-object v0, p0, Lcom/oplus/camera/capmode/BaseMode;->mPreferences:Landroid/content/SharedPreferences;

    if-eqz v0, :cond_11

    const-string v0, "pref_camera_hdr_mode_key"

    invoke-virtual {p0, v0}, Lcom/oplus/camera/capmode/BaseMode;->getSupportFunction(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_11

    .line 2469
    iget-object v6, p0, Lcom/oplus/camera/capmode/BaseMode;->mPreferences:Landroid/content/SharedPreferences;

    iget v7, p0, Lcom/oplus/camera/capmode/BaseMode;->mCameraId:I

    .line 2470
    invoke-static {v0, v7}, Lcom/oplus/camera/aps/config/CameraConfig;->getOptionKeyDefaultValue(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v7

    .line 2469
    invoke-interface {v6, v0, v7}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 2471
    invoke-direct {p0, v0, v2}, Lcom/oplus/camera/capmode/BaseMode;->updateHDRMode(Ljava/lang/String;Z)V

    .line 2474
    :cond_11
    invoke-virtual {p0, v2}, Lcom/oplus/camera/capmode/BaseMode;->setAutoFlash(Z)V

    .line 2475
    iput-boolean v2, p0, Lcom/oplus/camera/capmode/BaseMode;->mbAutoHDR:Z

    .line 2476
    iput-boolean v2, p0, Lcom/oplus/camera/capmode/BaseMode;->mbAutoBinning:Z

    .line 2477
    invoke-direct {p0}, Lcom/oplus/camera/capmode/BaseMode;->updateMirrorParam()V

    .line 2478
    invoke-virtual {p0, v2}, Lcom/oplus/camera/capmode/BaseMode;->setCapturePreviewDataState(I)V

    .line 2480
    iget-object v0, p0, Lcom/oplus/camera/capmode/BaseMode;->mOneCamera:Lcom/oplus/camera/e/d;

    if-eqz v0, :cond_28

    .line 2481
    invoke-interface {v0}, Lcom/oplus/camera/e/d;->e()Lcom/oplus/camera/e/h;

    move-result-object v0

    if-eqz v0, :cond_13

    iget-object v0, p0, Lcom/oplus/camera/capmode/BaseMode;->mOneCamera:Lcom/oplus/camera/e/d;

    invoke-interface {v0}, Lcom/oplus/camera/e/d;->e()Lcom/oplus/camera/e/h;

    move-result-object v0

    invoke-virtual {v0}, Lcom/oplus/camera/e/h;->G()Z

    move-result v0

    if-eqz v0, :cond_13

    .line 2482
    iget-object v0, p0, Lcom/oplus/camera/capmode/BaseMode;->mOneCamera:Lcom/oplus/camera/e/d;

    const-string v6, "func_request_fast_launch"

    invoke-virtual {p0, v6}, Lcom/oplus/camera/capmode/BaseMode;->getSupportFunction(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_12

    iget-object v6, p0, Lcom/oplus/camera/capmode/BaseMode;->mCameraInterface:Lcom/oplus/camera/capmode/a;

    invoke-interface {v6}, Lcom/oplus/camera/capmode/a;->aD()Z

    move-result v6

    if-eqz v6, :cond_12

    move v6, v1

    goto :goto_6

    :cond_12
    move v6, v2

    :goto_6
    invoke-interface {v0, v6}, Lcom/oplus/camera/e/d;->p(Z)V

    .line 2485
    :cond_13
    invoke-virtual {p0}, Lcom/oplus/camera/capmode/BaseMode;->isVideoHdrOpen()Z

    move-result v0

    if-eqz v0, :cond_14

    .line 2486
    iget-object v0, p0, Lcom/oplus/camera/capmode/BaseMode;->mOneCamera:Lcom/oplus/camera/e/d;

    sget-object v6, Lcom/oplus/camera/a$a;->FrameAverage:Lcom/oplus/camera/a$a;

    invoke-virtual {v6}, Lcom/oplus/camera/a$a;->ordinal()I

    move-result v6

    invoke-interface {v0, v6}, Lcom/oplus/camera/e/d;->i(I)V

    goto :goto_7

    .line 2488
    :cond_14
    iget-object v0, p0, Lcom/oplus/camera/capmode/BaseMode;->mOneCamera:Lcom/oplus/camera/e/d;

    sget-object v6, Lcom/oplus/camera/a$a;->CenterWeighted:Lcom/oplus/camera/a$a;

    invoke-virtual {v6}, Lcom/oplus/camera/a$a;->ordinal()I

    move-result v6

    invoke-interface {v0, v6}, Lcom/oplus/camera/e/d;->i(I)V

    .line 2491
    :goto_7
    invoke-static {}, Lcom/oplus/camera/util/Util;->C()Z

    move-result v0

    if-nez v0, :cond_17

    .line 2492
    sget-object v0, Lcom/oplus/camera/e/d;->g:[B

    .line 2494
    iget-boolean v6, p0, Lcom/oplus/camera/capmode/BaseMode;->mbEnableTuningData:Z

    if-eqz v6, :cond_16

    const-string v0, "com.oplus.tuning.data.buffer.support"

    .line 2495
    invoke-static {v0}, Lcom/oplus/camera/aps/config/CameraConfig;->getConfigBooleanValue(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_15

    .line 2496
    sget-object v0, Lcom/oplus/camera/e/d;->i:[B

    goto :goto_8

    :cond_15
    sget-object v0, Lcom/oplus/camera/e/d;->h:[B

    .line 2499
    :cond_16
    :goto_8
    iget-object v6, p0, Lcom/oplus/camera/capmode/BaseMode;->mOneCamera:Lcom/oplus/camera/e/d;

    invoke-interface {v6, v0}, Lcom/oplus/camera/e/d;->b([B)V

    .line 2502
    :cond_17
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    invoke-static {v6, v7}, Ljava/time/Instant;->ofEpochMilli(J)Ljava/time/Instant;

    move-result-object v0

    .line 2503
    invoke-static {}, Ljava/time/ZoneId;->systemDefault()Ljava/time/ZoneId;

    move-result-object v6

    .line 2502
    invoke-static {v0, v6}, Ljava/time/ZonedDateTime;->ofInstant(Ljava/time/Instant;Ljava/time/ZoneId;)Ljava/time/ZonedDateTime;

    move-result-object v0

    .line 2504
    iget-object v6, p0, Lcom/oplus/camera/capmode/BaseMode;->mOneCamera:Lcom/oplus/camera/e/d;

    const-string v7, "XXX"

    invoke-static {v7}, Ljava/time/format/DateTimeFormatter;->ofPattern(Ljava/lang/String;)Ljava/time/format/DateTimeFormatter;

    move-result-object v7

    invoke-virtual {v7, v0}, Ljava/time/format/DateTimeFormatter;->format(Ljava/time/temporal/TemporalAccessor;)Ljava/lang/String;

    move-result-object v0

    invoke-interface {v6, v0}, Lcom/oplus/camera/e/d;->f(Ljava/lang/String;)V

    .line 2505
    iget-object v0, p0, Lcom/oplus/camera/capmode/BaseMode;->mOneCamera:Lcom/oplus/camera/e/d;

    sget-object v6, Lcom/oplus/ocs/camera/CameraParameter;->FACE_RECTIFY_ENABLE:Lcom/oplus/ocs/camera/CameraParameter$PreviewKey;

    invoke-virtual {p0}, Lcom/oplus/camera/capmode/BaseMode;->isFaceRectifyOpen()Z

    move-result v7

    invoke-static {v7}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v7

    invoke-interface {v0, v6, v7}, Lcom/oplus/camera/e/d;->a(Lcom/oplus/ocs/camera/CameraParameter$PreviewKey;Ljava/lang/Object;)V

    const-string v0, "pref_portrait_half_body_key"

    .line 2507
    invoke-virtual {p0, v0}, Lcom/oplus/camera/capmode/BaseMode;->getSupportFunction(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_18

    invoke-static {}, Lcom/oplus/camera/util/Util;->C()Z

    move-result v0

    if-nez v0, :cond_18

    .line 2508
    iget-object v0, p0, Lcom/oplus/camera/capmode/BaseMode;->mOneCamera:Lcom/oplus/camera/e/d;

    sget-object v6, Lcom/oplus/ocs/camera/CameraParameter;->ZOOM_RATIO:Lcom/oplus/ocs/camera/CameraParameter$PreviewKey;

    invoke-static {v4}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v4

    invoke-interface {v0, v6, v4}, Lcom/oplus/camera/e/d;->a(Lcom/oplus/ocs/camera/CameraParameter$PreviewKey;Ljava/lang/Object;)V

    goto :goto_9

    .line 2509
    :cond_18
    invoke-static {}, Lcom/oplus/camera/e/a;->e()Z

    move-result v0

    if-eqz v0, :cond_19

    iget-boolean v0, p0, Lcom/oplus/camera/capmode/BaseMode;->mbFrontCamera:Z

    if-eqz v0, :cond_19

    .line 2510
    iget-object v0, p0, Lcom/oplus/camera/capmode/BaseMode;->mOneCamera:Lcom/oplus/camera/e/d;

    sget-object v6, Lcom/oplus/ocs/camera/CameraParameter;->ZOOM_RATIO:Lcom/oplus/ocs/camera/CameraParameter$PreviewKey;

    invoke-static {v4}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v4

    invoke-interface {v0, v6, v4}, Lcom/oplus/camera/e/d;->a(Lcom/oplus/ocs/camera/CameraParameter$PreviewKey;Ljava/lang/Object;)V

    goto :goto_9

    .line 2512
    :cond_19
    iget-object v0, p0, Lcom/oplus/camera/capmode/BaseMode;->mOneCamera:Lcom/oplus/camera/e/d;

    sget-object v4, Lcom/oplus/ocs/camera/CameraParameter;->ZOOM_RATIO:Lcom/oplus/ocs/camera/CameraParameter$PreviewKey;

    iget-object v6, p0, Lcom/oplus/camera/capmode/BaseMode;->mCameraInterface:Lcom/oplus/camera/capmode/a;

    invoke-interface {v6}, Lcom/oplus/camera/capmode/a;->ak()F

    move-result v6

    invoke-static {v6}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v6

    invoke-interface {v0, v4, v6}, Lcom/oplus/camera/e/d;->a(Lcom/oplus/ocs/camera/CameraParameter$PreviewKey;Ljava/lang/Object;)V

    :goto_9
    const-string v0, "pref_super_raw_control_key"

    .line 2515
    invoke-virtual {p0, v0}, Lcom/oplus/camera/capmode/BaseMode;->getSupportFunction(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_1a

    iget-object v4, p0, Lcom/oplus/camera/capmode/BaseMode;->mPreferences:Landroid/content/SharedPreferences;

    .line 2516
    invoke-interface {v4, v0, v3}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v4, "super_raw"

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1a

    .line 2517
    iget-object v0, p0, Lcom/oplus/camera/capmode/BaseMode;->mOneCamera:Lcom/oplus/camera/e/d;

    sget-object v5, Lcom/oplus/ocs/camera/CameraParameter;->RAW_CONTROL:Lcom/oplus/ocs/camera/CameraParameter$PreviewKey;

    invoke-interface {v0, v5, v4}, Lcom/oplus/camera/e/d;->a(Lcom/oplus/ocs/camera/CameraParameter$PreviewKey;Ljava/lang/Object;)V

    goto :goto_a

    .line 2519
    :cond_1a
    iget-object v0, p0, Lcom/oplus/camera/capmode/BaseMode;->mOneCamera:Lcom/oplus/camera/e/d;

    sget-object v4, Lcom/oplus/ocs/camera/CameraParameter;->RAW_CONTROL:Lcom/oplus/ocs/camera/CameraParameter$PreviewKey;

    invoke-interface {v0, v4, v5}, Lcom/oplus/camera/e/d;->a(Lcom/oplus/ocs/camera/CameraParameter$PreviewKey;Ljava/lang/Object;)V

    .line 2522
    :goto_a
    iget-object v0, p0, Lcom/oplus/camera/capmode/BaseMode;->mOneCamera:Lcom/oplus/camera/e/d;

    sget-object v4, Lcom/oplus/ocs/camera/CameraParameter;->SUPER_CLEAR_PORTRAIT_ENABLE:Lcom/oplus/ocs/camera/CameraParameter$PreviewKey;

    invoke-virtual {p0}, Lcom/oplus/camera/capmode/BaseMode;->isSuperClearPortraitOpen()Z

    move-result v5

    const-string v6, "on"

    if-eqz v5, :cond_1b

    move-object v5, v6

    goto :goto_b

    :cond_1b
    move-object v5, v3

    :goto_b
    invoke-interface {v0, v4, v5}, Lcom/oplus/camera/e/d;->a(Lcom/oplus/ocs/camera/CameraParameter$PreviewKey;Ljava/lang/Object;)V

    .line 2525
    iget-object v0, p0, Lcom/oplus/camera/capmode/BaseMode;->mOneCamera:Lcom/oplus/camera/e/d;

    sget-object v4, Lcom/oplus/ocs/camera/CameraParameter;->TRIPOD_MODE_ENABLE:Lcom/oplus/ocs/camera/CameraParameter$PreviewKey;

    const-string v5, "pref_night_tripod_mode_key"

    .line 2526
    invoke-virtual {p0, v5}, Lcom/oplus/camera/capmode/BaseMode;->getSupportFunction(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_1c

    iget-object v7, p0, Lcom/oplus/camera/capmode/BaseMode;->mPreferences:Landroid/content/SharedPreferences;

    .line 2527
    invoke-interface {v7, v5, v3}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1c

    move v5, v1

    goto :goto_c

    :cond_1c
    move v5, v2

    .line 2526
    :goto_c
    invoke-static {v5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    .line 2525
    invoke-interface {v0, v4, v5}, Lcom/oplus/camera/e/d;->a(Lcom/oplus/ocs/camera/CameraParameter$PreviewKey;Ljava/lang/Object;)V

    .line 2530
    iget-object v0, p0, Lcom/oplus/camera/capmode/BaseMode;->mOneCamera:Lcom/oplus/camera/e/d;

    sget-object v4, Lcom/oplus/ocs/camera/CameraParameter;->STARBURST_MODE:Lcom/oplus/ocs/camera/CameraParameter$PreviewKey;

    const-string v5, "pref_night_starburst_mode"

    .line 2531
    invoke-virtual {p0, v5}, Lcom/oplus/camera/capmode/BaseMode;->getSupportFunction(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_1d

    iget-object v7, p0, Lcom/oplus/camera/capmode/BaseMode;->mPreferences:Landroid/content/SharedPreferences;

    .line 2532
    invoke-interface {v7, v5, v3}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1d

    move v5, v1

    goto :goto_d

    :cond_1d
    move v5, v2

    .line 2531
    :goto_d
    invoke-static {v5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    .line 2530
    invoke-interface {v0, v4, v5}, Lcom/oplus/camera/e/d;->a(Lcom/oplus/ocs/camera/CameraParameter$PreviewKey;Ljava/lang/Object;)V

    .line 2534
    iget-object v0, p0, Lcom/oplus/camera/capmode/BaseMode;->mOneCamera:Lcom/oplus/camera/e/d;

    sget-object v4, Lcom/oplus/ocs/camera/CameraParameter;->ULTRA_HIGH_RESOLUTION_ENABLE:Lcom/oplus/ocs/camera/CameraParameter$PreviewKey;

    invoke-virtual {p0}, Lcom/oplus/camera/capmode/BaseMode;->isUltraHighResolutionOpened()Z

    move-result v5

    if-eqz v5, :cond_1e

    move-object v5, v6

    goto :goto_e

    :cond_1e
    move-object v5, v3

    :goto_e
    invoke-interface {v0, v4, v5}, Lcom/oplus/camera/e/d;->a(Lcom/oplus/ocs/camera/CameraParameter$PreviewKey;Ljava/lang/Object;)V

    .line 2537
    iget-object v0, p0, Lcom/oplus/camera/capmode/BaseMode;->mOneCamera:Lcom/oplus/camera/e/d;

    sget-object v4, Lcom/oplus/ocs/camera/CameraParameter;->STAR_VIDEO_ENABLE:Lcom/oplus/ocs/camera/CameraParameter$PreviewKey;

    invoke-virtual {p0}, Lcom/oplus/camera/capmode/BaseMode;->isStarVideoOpen()Z

    move-result v5

    if-eqz v5, :cond_1f

    move-object v5, v6

    goto :goto_f

    :cond_1f
    move-object v5, v3

    :goto_f
    invoke-interface {v0, v4, v5}, Lcom/oplus/camera/e/d;->a(Lcom/oplus/ocs/camera/CameraParameter$PreviewKey;Ljava/lang/Object;)V

    .line 2540
    invoke-virtual {p0}, Lcom/oplus/camera/capmode/BaseMode;->getCurrFilterType()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_21

    .line 2543
    iget-object v4, p0, Lcom/oplus/camera/capmode/BaseMode;->mOneCamera:Lcom/oplus/camera/e/d;

    invoke-virtual {p0, v0}, Lcom/oplus/camera/capmode/BaseMode;->isFilterOpen(Ljava/lang/String;)Z

    move-result v5

    const-string v7, "func_filter_vignette"

    .line 2544
    invoke-virtual {p0, v7}, Lcom/oplus/camera/capmode/BaseMode;->getSupportFunction(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_20

    const-string v7, "oplus_video_filter_olympus"

    .line 2545
    invoke-virtual {v7, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_20

    move v7, v1

    goto :goto_10

    :cond_20
    move v7, v2

    .line 2543
    :goto_10
    invoke-interface {v4, v0, v5, v7}, Lcom/oplus/camera/e/d;->a(Ljava/lang/String;ZZ)V

    .line 2550
    :cond_21
    iget-object v0, p0, Lcom/oplus/camera/capmode/BaseMode;->mOneCamera:Lcom/oplus/camera/e/d;

    sget-object v4, Lcom/oplus/ocs/camera/CameraParameter;->FACE_BEAUTY_ENABLE:Lcom/oplus/ocs/camera/CameraParameter$PreviewKey;

    invoke-direct {p0}, Lcom/oplus/camera/capmode/BaseMode;->isFaceBeautyOpen()Z

    move-result v5

    if-eqz v5, :cond_22

    move-object v5, v6

    goto :goto_11

    :cond_22
    move-object v5, v3

    :goto_11
    invoke-interface {v0, v4, v5}, Lcom/oplus/camera/e/d;->a(Lcom/oplus/ocs/camera/CameraParameter$PreviewKey;Ljava/lang/Object;)V

    .line 2553
    iget-object v0, p0, Lcom/oplus/camera/capmode/BaseMode;->mOneCamera:Lcom/oplus/camera/e/d;

    sget-object v4, Lcom/oplus/ocs/camera/CameraParameter;->PORTRAIT_NEON_ENABLE:Lcom/oplus/ocs/camera/CameraParameter$PreviewKey;

    invoke-virtual {p0}, Lcom/oplus/camera/capmode/BaseMode;->isNeonEnable()Z

    move-result v5

    if-eqz v5, :cond_23

    move-object v5, v6

    goto :goto_12

    :cond_23
    move-object v5, v3

    :goto_12
    invoke-interface {v0, v4, v5}, Lcom/oplus/camera/e/d;->a(Lcom/oplus/ocs/camera/CameraParameter$PreviewKey;Ljava/lang/Object;)V

    .line 2556
    iget-object v0, p0, Lcom/oplus/camera/capmode/BaseMode;->mOneCamera:Lcom/oplus/camera/e/d;

    sget-object v4, Lcom/oplus/ocs/camera/CameraParameter;->AI_PHOTO:Lcom/oplus/ocs/camera/CameraParameter$PreviewKey;

    invoke-virtual {p0}, Lcom/oplus/camera/capmode/BaseMode;->isPIModeOpen()Z

    move-result v5

    if-eqz v5, :cond_24

    move-object v5, v6

    goto :goto_13

    :cond_24
    move-object v5, v3

    :goto_13
    invoke-interface {v0, v4, v5}, Lcom/oplus/camera/e/d;->a(Lcom/oplus/ocs/camera/CameraParameter$PreviewKey;Ljava/lang/Object;)V

    const-string v0, "func_video_retention"

    .line 2559
    invoke-virtual {p0, v0}, Lcom/oplus/camera/capmode/BaseMode;->getSupportFunction(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_25

    invoke-virtual {p0}, Lcom/oplus/camera/capmode/BaseMode;->isVideoRetentionOpen()Z

    move-result v0

    if-eqz v0, :cond_25

    goto :goto_14

    :cond_25
    move v1, v2

    .line 2560
    :goto_14
    iget-object v0, p0, Lcom/oplus/camera/capmode/BaseMode;->mOneCamera:Lcom/oplus/camera/e/d;

    sget-object v4, Lcom/oplus/ocs/camera/CameraParameter;->VIDEO_RETENTION_OPEN:Lcom/oplus/ocs/camera/CameraParameter$PreviewKey;

    if-eqz v1, :cond_26

    move-object v3, v6

    :cond_26
    invoke-interface {v0, v4, v3}, Lcom/oplus/camera/e/d;->a(Lcom/oplus/ocs/camera/CameraParameter$PreviewKey;Ljava/lang/Object;)V

    .line 2563
    invoke-virtual {p0}, Lcom/oplus/camera/capmode/BaseMode;->isAutoMacroOpen()Z

    move-result v0

    if-eqz v0, :cond_27

    invoke-virtual {p0}, Lcom/oplus/camera/capmode/BaseMode;->isTiltShiftOpen()Z

    move-result v0

    if-eqz v0, :cond_28

    .line 2564
    :cond_27
    iget-object p0, p0, Lcom/oplus/camera/capmode/BaseMode;->mOneCamera:Lcom/oplus/camera/e/d;

    invoke-interface {p0, v2}, Lcom/oplus/camera/e/d;->B(Z)V

    :cond_28
    return-void
.end method

.method public beforeStartRecording()V
    .locals 0

    return-void
.end method

.method public beforeStartRecording(Z)V
    .locals 0

    return-void
.end method

.method public beforeSwitchCamera()V
    .locals 3

    .line 1810
    iget-object v0, p0, Lcom/oplus/camera/capmode/BaseMode;->mCameraUIInterface:Lcom/oplus/camera/ui/CameraUIInterface;

    invoke-interface {v0}, Lcom/oplus/camera/ui/CameraUIInterface;->T()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/oplus/camera/capmode/BaseMode;->canCloseSubMenuWhenSwitchCamera()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1811
    iget-object v0, p0, Lcom/oplus/camera/capmode/BaseMode;->mCameraUIInterface:Lcom/oplus/camera/ui/CameraUIInterface;

    invoke-interface {v0}, Lcom/oplus/camera/ui/CameraUIInterface;->U()V

    .line 1814
    :cond_0
    iget-object v0, p0, Lcom/oplus/camera/capmode/BaseMode;->mPreviewEffectProcess:Lcom/oplus/camera/ui/preview/a/t;

    if-eqz v0, :cond_1

    const/4 v1, 0x2

    .line 1815
    invoke-interface {v0, v1}, Lcom/oplus/camera/ui/preview/a/t;->c(I)V

    .line 1818
    :cond_1
    iget-boolean v0, p0, Lcom/oplus/camera/capmode/BaseMode;->mbFrontCamera:Z

    if-eqz v0, :cond_2

    .line 1819
    iget-object v0, p0, Lcom/oplus/camera/capmode/BaseMode;->mCameraUIInterface:Lcom/oplus/camera/ui/CameraUIInterface;

    const v1, 0x7f1000eb

    invoke-interface {v0, v1}, Lcom/oplus/camera/ui/CameraUIInterface;->a(I)V

    .line 1822
    :cond_2
    iget-object v0, p0, Lcom/oplus/camera/capmode/BaseMode;->mCameraUIInterface:Lcom/oplus/camera/ui/CameraUIInterface;

    const v1, 0x7f1002c8

    invoke-interface {v0, v1}, Lcom/oplus/camera/ui/CameraUIInterface;->a(I)V

    .line 1823
    iget-object v0, p0, Lcom/oplus/camera/capmode/BaseMode;->mCameraUIInterface:Lcom/oplus/camera/ui/CameraUIInterface;

    const v1, 0x7f1002c7

    invoke-interface {v0, v1}, Lcom/oplus/camera/ui/CameraUIInterface;->a(I)V

    .line 1824
    iget-object v0, p0, Lcom/oplus/camera/capmode/BaseMode;->mCameraUIInterface:Lcom/oplus/camera/ui/CameraUIInterface;

    const v1, 0x7f1000ec

    invoke-interface {v0, v1}, Lcom/oplus/camera/ui/CameraUIInterface;->a(I)V

    .line 1825
    iget-object v0, p0, Lcom/oplus/camera/capmode/BaseMode;->mCameraUIInterface:Lcom/oplus/camera/ui/CameraUIInterface;

    const v1, 0x7f1000a6

    invoke-interface {v0, v1}, Lcom/oplus/camera/ui/CameraUIInterface;->a(I)V

    .line 1826
    iget-object v0, p0, Lcom/oplus/camera/capmode/BaseMode;->mCameraUIInterface:Lcom/oplus/camera/ui/CameraUIInterface;

    const/4 v1, 0x1

    const/4 v2, 0x0

    invoke-interface {v0, v1, v1, v2}, Lcom/oplus/camera/ui/CameraUIInterface;->a(ZZZ)V

    .line 1827
    iget-object v0, p0, Lcom/oplus/camera/capmode/BaseMode;->mCameraUIInterface:Lcom/oplus/camera/ui/CameraUIInterface;

    invoke-interface {v0, v2}, Lcom/oplus/camera/ui/CameraUIInterface;->b(Z)V

    .line 1828
    iput-boolean v2, p0, Lcom/oplus/camera/capmode/BaseMode;->mbShowEnvironmentTips:Z

    return-void
.end method

.method public beforeSwitchToMode(Z)V
    .locals 3

    .line 3770
    iget-object v0, p0, Lcom/oplus/camera/capmode/BaseMode;->mCameraUIInterface:Lcom/oplus/camera/ui/CameraUIInterface;

    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-interface {v0, v2, p1, v1}, Lcom/oplus/camera/ui/CameraUIInterface;->a(ZZZ)V

    .line 3771
    iput-boolean v1, p0, Lcom/oplus/camera/capmode/BaseMode;->mbShowEnvironmentTips:Z

    return-void
.end method

.method protected burstCapture(ILcom/oplus/camera/e/c;Lcom/oplus/camera/e/d$a;)V
    .locals 0

    .line 3701
    iget-object p0, p0, Lcom/oplus/camera/capmode/BaseMode;->mCameraInterface:Lcom/oplus/camera/capmode/a;

    invoke-interface {p0, p1, p2, p3}, Lcom/oplus/camera/capmode/a;->a(ILcom/oplus/camera/e/c;Lcom/oplus/camera/e/d$a;)V

    return-void
.end method

.method public final burstShotCapture()Z
    .locals 2

    const-string v0, "BaseMode"

    const-string v1, "burstShotCapture"

    .line 3223
    invoke-static {v0, v1}, Lcom/oplus/camera/e;->a(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x1

    .line 3225
    iput-boolean v0, p0, Lcom/oplus/camera/capmode/BaseMode;->mbBurstShot:Z

    const/4 v1, 0x0

    .line 3227
    invoke-direct {p0, v1}, Lcom/oplus/camera/capmode/BaseMode;->updateAutoSeNightUI(Lcom/oplus/camera/aps/util/CameraApsDecision;)V

    .line 3229
    iget-object v1, p0, Lcom/oplus/camera/capmode/BaseMode;->mOneCamera:Lcom/oplus/camera/e/d;

    if-eqz v1, :cond_0

    .line 3230
    invoke-interface {v1}, Lcom/oplus/camera/e/d;->w()V

    .line 3233
    :cond_0
    invoke-virtual {p0}, Lcom/oplus/camera/capmode/BaseMode;->closeHdrAndFlashModeBeforeCapture()V

    .line 3234
    invoke-virtual {p0}, Lcom/oplus/camera/capmode/BaseMode;->saveAndClearEffectBeforeBurstShot()V

    .line 3236
    invoke-virtual {p0}, Lcom/oplus/camera/capmode/BaseMode;->isVividEffectOpen()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 3237
    invoke-virtual {p0}, Lcom/oplus/camera/capmode/BaseMode;->closeViviEffect()V

    .line 3239
    iput-boolean v0, p0, Lcom/oplus/camera/capmode/BaseMode;->mbOpenViviEffectAfterBurstShot:Z

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    .line 3241
    iput-boolean v0, p0, Lcom/oplus/camera/capmode/BaseMode;->mbOpenViviEffectAfterBurstShot:Z

    .line 3244
    :goto_0
    invoke-virtual {p0}, Lcom/oplus/camera/capmode/BaseMode;->onBurstShotCapture()Z

    move-result p0

    return p0
.end method

.method public cameraIdChanged(I)V
    .locals 1

    const/4 v0, 0x0

    .line 1836
    iput v0, p0, Lcom/oplus/camera/capmode/BaseMode;->mApsDecisionFeatureType:I

    .line 1837
    iput v0, p0, Lcom/oplus/camera/capmode/BaseMode;->mApsBracketMode:I

    .line 1838
    iput v0, p0, Lcom/oplus/camera/capmode/BaseMode;->mAsdSceneValue:I

    .line 1839
    iput-boolean v0, p0, Lcom/oplus/camera/capmode/BaseMode;->mbShowPostCaptureAlert:Z

    .line 1840
    iput v0, p0, Lcom/oplus/camera/capmode/BaseMode;->mPostCounter:I

    .line 1841
    iput p1, p0, Lcom/oplus/camera/capmode/BaseMode;->mCameraId:I

    .line 1842
    iget p1, p0, Lcom/oplus/camera/capmode/BaseMode;->mCameraId:I

    invoke-static {p1}, Lcom/oplus/camera/e/a;->a(I)Z

    move-result p1

    iput-boolean p1, p0, Lcom/oplus/camera/capmode/BaseMode;->mbFrontCamera:Z

    return-void
.end method

.method protected canCloseSubMenuWhenSwitchCamera()Z
    .locals 0

    const/4 p0, 0x1

    return p0
.end method

.method protected canShowResumeButton()Z
    .locals 0

    const/4 p0, 0x1

    return p0
.end method

.method public canShowTimeLapseProButtons()Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public cancelOp(Z)V
    .locals 0

    return-void
.end method

.method public final capture(Z)Z
    .locals 10

    .line 3348
    invoke-direct {p0}, Lcom/oplus/camera/capmode/BaseMode;->getCapturePreviewDataState()I

    move-result v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-ne v1, v0, :cond_0

    const-string p1, "BaseMode"

    const-string v0, "capture, capturePreview not done!"

    .line 3349
    invoke-static {p1, v0}, Lcom/oplus/camera/e;->f(Ljava/lang/String;Ljava/lang/String;)V

    .line 3351
    invoke-virtual {p0}, Lcom/oplus/camera/capmode/BaseMode;->onCancleCapturePictureRequest()V

    return v2

    .line 3356
    :cond_0
    iget-object v0, p0, Lcom/oplus/camera/capmode/BaseMode;->mCameraUIInterface:Lcom/oplus/camera/ui/CameraUIInterface;

    const/4 v3, 0x0

    invoke-virtual {p0, v3}, Lcom/oplus/camera/capmode/BaseMode;->getSupportQuickJpeg(Lcom/oplus/camera/e/c;)Z

    move-result v3

    invoke-interface {v0, v3}, Lcom/oplus/camera/ui/CameraUIInterface;->o(Z)V

    .line 3359
    iput-boolean v2, p0, Lcom/oplus/camera/capmode/BaseMode;->mbCaptureHasSuperTextResult:Z

    .line 3361
    iget-object v0, p0, Lcom/oplus/camera/capmode/BaseMode;->mApsDecisionResultLock:Ljava/lang/Object;

    monitor-enter v0

    .line 3362
    :try_start_0
    iput-boolean v1, p0, Lcom/oplus/camera/capmode/BaseMode;->mbInCapturing:Z

    .line 3364
    iget-object v3, p0, Lcom/oplus/camera/capmode/BaseMode;->mDecisionResult:Lcom/oplus/camera/aps/util/CameraApsDecision;

    .line 3365
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 3367
    invoke-virtual {p0, v3}, Lcom/oplus/camera/capmode/BaseMode;->checkPreviewResult(Lcom/oplus/camera/aps/util/CameraApsDecision;)Z

    move-result v0

    if-eqz v0, :cond_17

    iget-object v0, p0, Lcom/oplus/camera/capmode/BaseMode;->mOneCamera:Lcom/oplus/camera/e/d;

    if-nez v0, :cond_1

    goto/16 :goto_8

    :cond_1
    if-eqz v3, :cond_16

    .line 3380
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "capture, decisionResult: "

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Lcom/oplus/camera/aps/util/CameraApsDecision;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v4, "BaseMode"

    invoke-static {v4, v0}, Lcom/oplus/camera/e;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 3389
    invoke-virtual {p0, v3}, Lcom/oplus/camera/capmode/BaseMode;->onAISSnapshotChecked(Lcom/oplus/camera/aps/util/CameraApsDecision;)V

    const-string v0, "pref_sstart_preview_sync"

    .line 3391
    invoke-virtual {p0, v0}, Lcom/oplus/camera/capmode/BaseMode;->getSupportFunction(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 3392
    invoke-direct {p0, v1}, Lcom/oplus/camera/capmode/BaseMode;->setInPreparing(Z)V

    .line 3395
    :cond_2
    invoke-virtual {p0, v2}, Lcom/oplus/camera/capmode/BaseMode;->setAllowSwitchMode(Z)V

    .line 3397
    invoke-virtual {p0, v3, p1}, Lcom/oplus/camera/capmode/BaseMode;->getCaptureRequestTag(Lcom/oplus/camera/aps/util/CameraApsDecision;Z)Lcom/oplus/camera/e/c;

    move-result-object p1

    iput-object p1, p0, Lcom/oplus/camera/capmode/BaseMode;->mCaptureRequestTag:Lcom/oplus/camera/e/c;

    .line 3399
    iget-object p1, p0, Lcom/oplus/camera/capmode/BaseMode;->mCaptureRequestTag:Lcom/oplus/camera/e/c;

    invoke-direct {p0, p1}, Lcom/oplus/camera/capmode/BaseMode;->beforeSnapping(Lcom/oplus/camera/e/c;)Z

    move-result p1

    if-nez p1, :cond_3

    .line 3400
    iget-object p1, p0, Lcom/oplus/camera/capmode/BaseMode;->mCameraUIInterface:Lcom/oplus/camera/ui/CameraUIInterface;

    invoke-interface {p1, v2}, Lcom/oplus/camera/ui/CameraUIInterface;->o(Z)V

    .line 3401
    invoke-virtual {p0}, Lcom/oplus/camera/capmode/BaseMode;->onCancleCapturePictureRequest()V

    .line 3403
    iput-boolean v2, p0, Lcom/oplus/camera/capmode/BaseMode;->mbInCapturing:Z

    .line 3404
    invoke-direct {p0, v2}, Lcom/oplus/camera/capmode/BaseMode;->setInPreparing(Z)V

    .line 3405
    invoke-virtual {p0, v1}, Lcom/oplus/camera/capmode/BaseMode;->setAllowSwitchMode(Z)V

    .line 3406
    invoke-static {}, Lcom/oplus/camera/perf/ComprehensivePerformance;->a()V

    const-string p0, "captureX beforeSnapping"

    .line 3409
    invoke-static {p0}, Lcom/oplus/camera/e;->b(Ljava/lang/String;)V

    return v2

    .line 3415
    :cond_3
    iput v2, p0, Lcom/oplus/camera/capmode/BaseMode;->mCaptureStartedCallbackNum:I

    .line 3416
    iput v2, p0, Lcom/oplus/camera/capmode/BaseMode;->mMergeIndex:I

    .line 3422
    iget-object p1, p0, Lcom/oplus/camera/capmode/BaseMode;->mApsDecisionResultLock:Ljava/lang/Object;

    monitor-enter p1

    .line 3423
    :try_start_1
    iget-object v0, p0, Lcom/oplus/camera/capmode/BaseMode;->mDecisionResult:Lcom/oplus/camera/aps/util/CameraApsDecision;

    if-eqz v0, :cond_5

    const/16 v0, 0x1e

    iget-object v4, p0, Lcom/oplus/camera/capmode/BaseMode;->mDecisionResult:Lcom/oplus/camera/aps/util/CameraApsDecision;

    iget v4, v4, Lcom/oplus/camera/aps/util/CameraApsDecision;->mApsDecisionFeatureType:I

    if-eq v0, v4, :cond_4

    const/16 v0, 0x22

    iget-object v4, p0, Lcom/oplus/camera/capmode/BaseMode;->mDecisionResult:Lcom/oplus/camera/aps/util/CameraApsDecision;

    iget v4, v4, Lcom/oplus/camera/aps/util/CameraApsDecision;->mApsDecisionFeatureType:I

    if-ne v0, v4, :cond_5

    :cond_4
    move v0, v1

    goto :goto_0

    :cond_5
    move v0, v2

    .line 3427
    :goto_0
    iget-object v4, p0, Lcom/oplus/camera/capmode/BaseMode;->mDecisionResult:Lcom/oplus/camera/aps/util/CameraApsDecision;

    if-eqz v4, :cond_7

    const/16 v4, 0x28

    iget-object v5, p0, Lcom/oplus/camera/capmode/BaseMode;->mDecisionResult:Lcom/oplus/camera/aps/util/CameraApsDecision;

    iget v5, v5, Lcom/oplus/camera/aps/util/CameraApsDecision;->mApsDecisionFeatureType:I

    if-eq v4, v5, :cond_6

    const/16 v4, 0x29

    iget-object v5, p0, Lcom/oplus/camera/capmode/BaseMode;->mDecisionResult:Lcom/oplus/camera/aps/util/CameraApsDecision;

    iget v5, v5, Lcom/oplus/camera/aps/util/CameraApsDecision;->mApsDecisionFeatureType:I

    if-ne v4, v5, :cond_7

    :cond_6
    move v4, v1

    goto :goto_1

    :cond_7
    move v4, v2

    .line 3430
    :goto_1
    monitor-exit p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-eqz v0, :cond_b

    .line 3436
    iget-object p1, p0, Lcom/oplus/camera/capmode/BaseMode;->mCaptureRequestTag:Lcom/oplus/camera/e/c;

    iget-object p1, p1, Lcom/oplus/camera/e/c;->L:[I

    if-eqz p1, :cond_9

    iget-object p1, p0, Lcom/oplus/camera/capmode/BaseMode;->mCaptureRequestTag:Lcom/oplus/camera/e/c;

    iget-object p1, p1, Lcom/oplus/camera/e/c;->L:[I

    array-length p1, p1

    if-lez p1, :cond_9

    move p1, v2

    move v0, p1

    .line 3437
    :goto_2
    invoke-virtual {p0}, Lcom/oplus/camera/capmode/BaseMode;->getDefaultCaptureNumber()I

    move-result v5

    if-ge p1, v5, :cond_a

    .line 3438
    iget-object v5, p0, Lcom/oplus/camera/capmode/BaseMode;->mCaptureRequestTag:Lcom/oplus/camera/e/c;

    iget-object v5, v5, Lcom/oplus/camera/e/c;->L:[I

    aget v5, v5, p1

    if-nez v5, :cond_8

    add-int/lit8 v0, v0, 0x1

    :cond_8
    add-int/lit8 p1, p1, 0x1

    goto :goto_2

    :cond_9
    move v0, v2

    .line 3444
    :cond_a
    iget-object p1, p0, Lcom/oplus/camera/capmode/BaseMode;->mOneCamera:Lcom/oplus/camera/e/d;

    invoke-interface {p1, v0}, Lcom/oplus/camera/e/d;->k(I)V

    goto :goto_3

    :cond_b
    move v0, v2

    :goto_3
    if-eqz v4, :cond_d

    .line 3450
    iget-object p1, p0, Lcom/oplus/camera/capmode/BaseMode;->mCaptureRequestTag:Lcom/oplus/camera/e/c;

    iget-object p1, p1, Lcom/oplus/camera/e/c;->L:[I

    if-eqz p1, :cond_c

    iget-object p1, p0, Lcom/oplus/camera/capmode/BaseMode;->mCaptureRequestTag:Lcom/oplus/camera/e/c;

    iget-object p1, p1, Lcom/oplus/camera/e/c;->L:[I

    array-length p1, p1

    if-lez p1, :cond_c

    .line 3451
    iget-object p1, p0, Lcom/oplus/camera/capmode/BaseMode;->mDecisionResult:Lcom/oplus/camera/aps/util/CameraApsDecision;

    iget p1, p1, Lcom/oplus/camera/aps/util/CameraApsDecision;->mMetaIndex:I

    sub-int/2addr p1, v1

    .line 3452
    iget-object v0, p0, Lcom/oplus/camera/capmode/BaseMode;->mCaptureRequestTag:Lcom/oplus/camera/e/c;

    iget-object v0, v0, Lcom/oplus/camera/e/c;->L:[I

    aget v0, v0, p1

    .line 3453
    iget-object v4, p0, Lcom/oplus/camera/capmode/BaseMode;->mCaptureRequestTag:Lcom/oplus/camera/e/c;

    iget v4, v4, Lcom/oplus/camera/e/c;->y:I

    sub-int p1, v4, p1

    goto :goto_4

    :cond_c
    move p1, v0

    move v0, v2

    .line 3456
    :goto_4
    iget-object v4, p0, Lcom/oplus/camera/capmode/BaseMode;->mOneCamera:Lcom/oplus/camera/e/d;

    invoke-interface {v4, p1}, Lcom/oplus/camera/e/d;->k(I)V

    .line 3457
    iget-object p1, p0, Lcom/oplus/camera/capmode/BaseMode;->mOneCamera:Lcom/oplus/camera/e/d;

    invoke-interface {p1, v0}, Lcom/oplus/camera/e/d;->l(I)V

    .line 3460
    :cond_d
    invoke-virtual {p0}, Lcom/oplus/camera/capmode/BaseMode;->isNeedSetZslWhenCapture()Z

    move-result p1

    if-eqz p1, :cond_e

    .line 3461
    iget-object p1, p0, Lcom/oplus/camera/capmode/BaseMode;->mOneCamera:Lcom/oplus/camera/e/d;

    invoke-virtual {p0}, Lcom/oplus/camera/capmode/BaseMode;->getZSLMode()Z

    move-result v0

    invoke-interface {p1, v0}, Lcom/oplus/camera/e/d;->m(Z)V

    .line 3464
    :cond_e
    iput-boolean v1, p0, Lcom/oplus/camera/capmode/BaseMode;->mbCaptureNotMatchMeta:Z

    .line 3465
    iget-object p1, p0, Lcom/oplus/camera/capmode/BaseMode;->mCameraInterface:Lcom/oplus/camera/capmode/a;

    iget-object v0, p0, Lcom/oplus/camera/capmode/BaseMode;->mCameraPictureCallback:Lcom/oplus/ocs/camera/CameraPictureCallback;

    invoke-interface {p1, v0}, Lcom/oplus/camera/capmode/a;->a(Lcom/oplus/ocs/camera/CameraPictureCallback;)V

    .line 3467
    invoke-virtual {p0}, Lcom/oplus/camera/capmode/BaseMode;->isImmediateCapture()Z

    move-result p1

    if-eqz p1, :cond_14

    .line 3468
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    iput-wide v4, p0, Lcom/oplus/camera/capmode/BaseMode;->mCaptureDate:J

    .line 3469
    iget-object p1, p0, Lcom/oplus/camera/capmode/BaseMode;->mCaptureRequestTag:Lcom/oplus/camera/e/c;

    iget-wide v4, p0, Lcom/oplus/camera/capmode/BaseMode;->mCaptureDate:J

    iput-wide v4, p1, Lcom/oplus/camera/e/c;->ab:J

    .line 3470
    iget-boolean p1, p0, Lcom/oplus/camera/capmode/BaseMode;->mbBurstShot:Z

    invoke-static {v4, v5, p1}, Lcom/oplus/camera/util/Util;->a(JZ)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/oplus/camera/capmode/BaseMode;->mThumbnailTitle:Ljava/lang/String;

    .line 3472
    invoke-virtual {p0}, Lcom/oplus/camera/capmode/BaseMode;->isSloganOpen()Z

    move-result p1

    if-eqz p1, :cond_11

    if-eqz v3, :cond_11

    .line 3475
    invoke-virtual {p0}, Lcom/oplus/camera/capmode/BaseMode;->isVideoModeType()Z

    move-result p1

    if-eqz p1, :cond_f

    move v6, v1

    goto :goto_5

    .line 3477
    :cond_f
    instance-of p1, p0, Lcom/oplus/camera/capmode/y;

    if-eqz p1, :cond_10

    const/4 p1, 0x3

    move v6, p1

    goto :goto_5

    :cond_10
    move v6, v2

    .line 3481
    :goto_5
    iget-object v4, p0, Lcom/oplus/camera/capmode/BaseMode;->mCameraInterface:Lcom/oplus/camera/capmode/a;

    const/4 v5, 0x0

    const/4 v7, 0x0

    iget v8, v3, Lcom/oplus/camera/aps/util/CameraApsDecision;->mMasterPipeline:I

    const/4 v9, 0x1

    invoke-interface/range {v4 .. v9}, Lcom/oplus/camera/capmode/a;->a(ZIZIZ)V

    :cond_11
    const-string p1, "pref_support_capture_preview"

    .line 3484
    invoke-virtual {p0, p1}, Lcom/oplus/camera/capmode/BaseMode;->getSupportFunction(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_12

    .line 3485
    invoke-virtual {p0, v1}, Lcom/oplus/camera/capmode/BaseMode;->setCapturePreviewDataState(I)V

    goto :goto_6

    .line 3487
    :cond_12
    invoke-virtual {p0, v2}, Lcom/oplus/camera/capmode/BaseMode;->setCapturePreviewDataState(I)V

    .line 3490
    :goto_6
    iget-object p1, p0, Lcom/oplus/camera/capmode/BaseMode;->mCameraInterface:Lcom/oplus/camera/capmode/a;

    invoke-interface {p1, v2}, Lcom/oplus/camera/capmode/a;->f(Z)V

    .line 3492
    iget-object p1, p0, Lcom/oplus/camera/capmode/BaseMode;->mCaptureRequestTag:Lcom/oplus/camera/e/c;

    invoke-virtual {p0, p1}, Lcom/oplus/camera/capmode/BaseMode;->updateCaptureParam(Lcom/oplus/camera/e/c;)V

    .line 3494
    iget-object p1, p0, Lcom/oplus/camera/capmode/BaseMode;->mCaptureRequestTag:Lcom/oplus/camera/e/c;

    iget-object v0, p0, Lcom/oplus/camera/capmode/BaseMode;->mCameraUIInterface:Lcom/oplus/camera/ui/CameraUIInterface;

    invoke-interface {v0}, Lcom/oplus/camera/ui/CameraUIInterface;->e()Z

    move-result v0

    iput-boolean v0, p1, Lcom/oplus/camera/e/c;->ag:Z

    .line 3496
    iget-boolean p1, p0, Lcom/oplus/camera/capmode/BaseMode;->mbBurstShot:Z

    if-eqz p1, :cond_13

    .line 3497
    invoke-virtual {p0, v1}, Lcom/oplus/camera/capmode/BaseMode;->setBurstShotCapturing(Z)V

    .line 3500
    :cond_13
    iget-object p1, p0, Lcom/oplus/camera/capmode/BaseMode;->mCaptureRequestTag:Lcom/oplus/camera/e/c;

    iget p1, p1, Lcom/oplus/camera/e/c;->y:I

    iget-object v0, p0, Lcom/oplus/camera/capmode/BaseMode;->mCaptureRequestTag:Lcom/oplus/camera/e/c;

    invoke-virtual {p0}, Lcom/oplus/camera/capmode/BaseMode;->getCaptureCallback()Lcom/oplus/camera/e/d$a;

    move-result-object v3

    invoke-virtual {p0, p1, v0, v3}, Lcom/oplus/camera/capmode/BaseMode;->burstCapture(ILcom/oplus/camera/e/c;Lcom/oplus/camera/e/d$a;)V

    const-string p1, "pref_support_capture_preview"

    .line 3502
    invoke-virtual {p0, p1}, Lcom/oplus/camera/capmode/BaseMode;->getSupportFunction(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_15

    .line 3503
    iget-object p1, p0, Lcom/oplus/camera/capmode/BaseMode;->mCaptureRequestTag:Lcom/oplus/camera/e/c;

    invoke-direct {p0, p1}, Lcom/oplus/camera/capmode/BaseMode;->capturePreviewData(Lcom/oplus/camera/e/c;)V

    .line 3504
    invoke-virtual {p0}, Lcom/oplus/camera/capmode/BaseMode;->onStartCapturePreviewData()V

    goto :goto_7

    .line 3507
    :cond_14
    iget-object p1, p0, Lcom/oplus/camera/capmode/BaseMode;->mCameraInterface:Lcom/oplus/camera/capmode/a;

    invoke-interface {p1}, Lcom/oplus/camera/capmode/a;->D()V

    .line 3510
    :cond_15
    :goto_7
    iput v2, p0, Lcom/oplus/camera/capmode/BaseMode;->mFirstCaptureHash:I

    .line 3511
    invoke-virtual {p0}, Lcom/oplus/camera/capmode/BaseMode;->onAfterSnapping()Z

    return v1

    :catchall_0
    move-exception p0

    .line 3430
    :try_start_2
    monitor-exit p1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw p0

    :cond_16
    const-string p1, "BaseMode"

    const-string v0, "ops, decisionResult is null"

    .line 3382
    invoke-static {p1, v0}, Lcom/oplus/camera/e;->f(Ljava/lang/String;Ljava/lang/String;)V

    .line 3384
    invoke-virtual {p0}, Lcom/oplus/camera/capmode/BaseMode;->onCancleCapturePictureRequest()V

    return v2

    .line 3368
    :cond_17
    :goto_8
    iput-boolean v2, p0, Lcom/oplus/camera/capmode/BaseMode;->mbInCapturing:Z

    const-string p1, "BaseMode"

    const-string v0, "capture, decisionResult is null!"

    .line 3370
    invoke-static {p1, v0}, Lcom/oplus/camera/e;->f(Ljava/lang/String;Ljava/lang/String;)V

    .line 3372
    invoke-virtual {p0}, Lcom/oplus/camera/capmode/BaseMode;->onCancleCapturePictureRequest()V

    .line 3373
    iget-object p1, p0, Lcom/oplus/camera/capmode/BaseMode;->mCameraUIInterface:Lcom/oplus/camera/ui/CameraUIInterface;

    invoke-interface {p1, v2}, Lcom/oplus/camera/ui/CameraUIInterface;->o(Z)V

    .line 3374
    iput-boolean v2, p0, Lcom/oplus/camera/capmode/BaseMode;->mbInCapturing:Z

    return v2

    :catchall_1
    move-exception p0

    .line 3365
    :try_start_3
    monitor-exit v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    throw p0
.end method

.method public changeModeAllViewWhenAnimation(IZ)V
    .locals 3

    .line 6684
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "changeModeAllViewWhenAnimation, animType: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", isShow: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "BaseMode"

    invoke-static {v1, v0}, Lcom/oplus/camera/e;->a(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x1

    const/4 v1, 0x0

    const/4 v2, 0x5

    if-ne v2, p1, :cond_1

    if-eqz p2, :cond_0

    .line 6688
    iput-boolean v1, p0, Lcom/oplus/camera/capmode/BaseMode;->mbHasClickedFromThird:Z

    .line 6689
    iput-boolean v1, p0, Lcom/oplus/camera/capmode/BaseMode;->mbShowPostCaptureAlert:Z

    .line 6690
    iput-boolean v1, p0, Lcom/oplus/camera/capmode/BaseMode;->mbAutoHDR:Z

    goto/16 :goto_3

    .line 6692
    :cond_0
    iput-boolean v0, p0, Lcom/oplus/camera/capmode/BaseMode;->mbShowPostCaptureAlert:Z

    .line 6694
    iget-object p0, p0, Lcom/oplus/camera/capmode/BaseMode;->mCameraUIInterface:Lcom/oplus/camera/ui/CameraUIInterface;

    if-eqz p0, :cond_a

    .line 6695
    invoke-interface {p0, v0, v0, v1}, Lcom/oplus/camera/ui/CameraUIInterface;->a(ZZZ)V

    goto/16 :goto_3

    :cond_1
    const/4 v2, 0x6

    if-ne v2, p1, :cond_2

    .line 6699
    invoke-virtual {p0}, Lcom/oplus/camera/capmode/BaseMode;->getHDRKey()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/oplus/camera/capmode/BaseMode;->getHDRModeValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 6701
    invoke-direct {p0, p1, v1}, Lcom/oplus/camera/capmode/BaseMode;->updateHdrChangeUi(Ljava/lang/String;Z)V

    .line 6703
    iget-object p0, p0, Lcom/oplus/camera/capmode/BaseMode;->mCameraUIInterface:Lcom/oplus/camera/ui/CameraUIInterface;

    const-string p1, "pref_camera_hdr_mode_key"

    invoke-interface {p0, p1}, Lcom/oplus/camera/ui/CameraUIInterface;->f(Ljava/lang/String;)V

    goto/16 :goto_3

    :cond_2
    const/4 v2, 0x2

    if-ne v2, p1, :cond_4

    if-eqz p2, :cond_3

    .line 6706
    iget-object p1, p0, Lcom/oplus/camera/capmode/BaseMode;->mCameraUIInterface:Lcom/oplus/camera/ui/CameraUIInterface;

    invoke-interface {p1, p2}, Lcom/oplus/camera/ui/CameraUIInterface;->i(Z)V

    .line 6707
    iget-object p1, p0, Lcom/oplus/camera/capmode/BaseMode;->mCameraUIInterface:Lcom/oplus/camera/ui/CameraUIInterface;

    invoke-interface {p1, p2}, Lcom/oplus/camera/ui/CameraUIInterface;->j(Z)V

    .line 6710
    :cond_3
    iget-object p1, p0, Lcom/oplus/camera/capmode/BaseMode;->mCameraUIInterface:Lcom/oplus/camera/ui/CameraUIInterface;

    if-eqz p1, :cond_a

    const-string p1, "support_focus_out_of_range"

    invoke-virtual {p0, p1}, Lcom/oplus/camera/capmode/BaseMode;->getSupportFunction(Ljava/lang/String;)Z

    move-result p1

    if-nez p1, :cond_a

    .line 6711
    iget-object p0, p0, Lcom/oplus/camera/capmode/BaseMode;->mCameraUIInterface:Lcom/oplus/camera/ui/CameraUIInterface;

    const p1, 0x7f1000eb

    invoke-interface {p0, p1}, Lcom/oplus/camera/ui/CameraUIInterface;->a(I)V

    goto :goto_3

    :cond_4
    const/16 v2, 0xa

    if-ne v2, p1, :cond_5

    .line 6714
    iget-object p0, p0, Lcom/oplus/camera/capmode/BaseMode;->mCameraUIInterface:Lcom/oplus/camera/ui/CameraUIInterface;

    if-nez p0, :cond_a

    return-void

    :cond_5
    const/16 v2, 0x12

    if-ne v2, p1, :cond_a

    if-nez p2, :cond_a

    .line 6718
    invoke-virtual {p0}, Lcom/oplus/camera/capmode/BaseMode;->isVideoModeType()Z

    move-result p1

    if-eqz p1, :cond_8

    .line 6719
    invoke-virtual {p0}, Lcom/oplus/camera/capmode/BaseMode;->isAiEnhancementVideoOpen()Z

    move-result p1

    if-eqz p1, :cond_6

    .line 6720
    iget-object p1, p0, Lcom/oplus/camera/capmode/BaseMode;->mCameraUIInterface:Lcom/oplus/camera/ui/CameraUIInterface;

    const p2, 0x7f100087

    invoke-interface {p1, p2}, Lcom/oplus/camera/ui/CameraUIInterface;->a(I)V

    goto :goto_0

    .line 6722
    :cond_6
    iget-object p1, p0, Lcom/oplus/camera/capmode/BaseMode;->mCameraUIInterface:Lcom/oplus/camera/ui/CameraUIInterface;

    const p2, 0x7f100086

    invoke-interface {p1, p2}, Lcom/oplus/camera/ui/CameraUIInterface;->a(I)V

    :goto_0
    const-string p1, "key_bubble_type_ai_enhancement_video"

    .line 6725
    invoke-virtual {p0, p1}, Lcom/oplus/camera/capmode/BaseMode;->isBubbleOpen(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_7

    .line 6726
    iget-object p1, p0, Lcom/oplus/camera/capmode/BaseMode;->mCameraUIInterface:Lcom/oplus/camera/ui/CameraUIInterface;

    const/4 p2, 0x7

    invoke-interface {p1, p2, v0}, Lcom/oplus/camera/ui/CameraUIInterface;->f(IZ)V

    .line 6729
    :cond_7
    iget-object p1, p0, Lcom/oplus/camera/capmode/BaseMode;->mCameraInterface:Lcom/oplus/camera/capmode/a;

    invoke-interface {p1, v1}, Lcom/oplus/camera/capmode/a;->e(I)V

    goto :goto_2

    .line 6731
    :cond_8
    invoke-virtual {p0}, Lcom/oplus/camera/capmode/BaseMode;->isAISceneOpen()Z

    move-result p1

    if-eqz p1, :cond_9

    .line 6732
    iget-object p1, p0, Lcom/oplus/camera/capmode/BaseMode;->mCameraUIInterface:Lcom/oplus/camera/ui/CameraUIInterface;

    const p2, 0x7f1002c6

    invoke-interface {p1, p2}, Lcom/oplus/camera/ui/CameraUIInterface;->a(I)V

    goto :goto_1

    .line 6734
    :cond_9
    iget-object p1, p0, Lcom/oplus/camera/capmode/BaseMode;->mCameraUIInterface:Lcom/oplus/camera/ui/CameraUIInterface;

    const p2, 0x7f1002c5

    invoke-interface {p1, p2}, Lcom/oplus/camera/ui/CameraUIInterface;->a(I)V

    .line 6737
    :goto_1
    iget-object p1, p0, Lcom/oplus/camera/capmode/BaseMode;->mCameraUIInterface:Lcom/oplus/camera/ui/CameraUIInterface;

    invoke-interface {p1, v1}, Lcom/oplus/camera/ui/CameraUIInterface;->b(Z)V

    .line 6740
    :goto_2
    iget-object p0, p0, Lcom/oplus/camera/capmode/BaseMode;->mCameraUIInterface:Lcom/oplus/camera/ui/CameraUIInterface;

    const p1, 0x7f100475

    invoke-interface {p0, p1}, Lcom/oplus/camera/ui/CameraUIInterface;->a(I)V

    :cond_a
    :goto_3
    return-void
.end method

.method public check3HDRPreCondition()Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public checkAiEnhancementVideoState()V
    .locals 0

    return-void
.end method

.method public checkFunction()V
    .locals 0

    return-void
.end method

.method public checkIfLockAutoExposure()V
    .locals 0

    return-void
.end method

.method protected checkPreviewResult(Lcom/oplus/camera/aps/util/CameraApsDecision;)Z
    .locals 0

    if-eqz p1, :cond_0

    .line 3344
    iget p1, p1, Lcom/oplus/camera/aps/util/CameraApsDecision;->mCameraId:I

    iget p0, p0, Lcom/oplus/camera/capmode/BaseMode;->mCameraId:I

    if-ne p1, p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public checkSensorMask(ZZ)Z
    .locals 0

    const/4 p0, 0x1

    return p0
.end method

.method public checkVideoHdrPreCondition()Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public checkoutTimerSnapShotState()V
    .locals 4

    .line 1559
    invoke-static {}, Lcom/oplus/camera/util/Util;->ao()Z

    move-result v0

    const-string v1, "button_color_inside_none"

    if-eqz v0, :cond_0

    new-instance v0, Lcom/oplus/camera/ui/control/b;

    const/16 v2, 0x18

    const-string v3, "button_shape_countdown_cancel"

    invoke-direct {v0, v2, v1, v3}, Lcom/oplus/camera/ui/control/b;-><init>(ILjava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 1560
    :cond_0
    new-instance v0, Lcom/oplus/camera/ui/control/b;

    const/16 v2, 0xa

    invoke-direct {v0, v2, v1}, Lcom/oplus/camera/ui/control/b;-><init>(ILjava/lang/String;)V

    :goto_0
    const/4 v1, 0x0

    .line 1562
    invoke-virtual {v0, v1}, Lcom/oplus/camera/ui/control/b;->b(I)V

    .line 1563
    iget-object p0, p0, Lcom/oplus/camera/capmode/BaseMode;->mCameraUIInterface:Lcom/oplus/camera/ui/CameraUIInterface;

    invoke-interface {p0, v0}, Lcom/oplus/camera/ui/CameraUIInterface;->a(Lcom/oplus/camera/ui/control/b;)V

    return-void
.end method

.method public clearApsDecisionResult()V
    .locals 2

    const-string v0, "BaseMode"

    const-string v1, "clearApsDecisionResult"

    .line 7540
    invoke-static {v0, v1}, Lcom/oplus/camera/e;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 7542
    iget-object v0, p0, Lcom/oplus/camera/capmode/BaseMode;->mApsDecisionResultLock:Ljava/lang/Object;

    monitor-enter v0

    const/4 v1, 0x0

    .line 7543
    :try_start_0
    iput-object v1, p0, Lcom/oplus/camera/capmode/BaseMode;->mDecisionResult:Lcom/oplus/camera/aps/util/CameraApsDecision;

    .line 7544
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public clearFocusOutOfRange()V
    .locals 1

    const/4 v0, 0x0

    .line 7548
    iput-object v0, p0, Lcom/oplus/camera/capmode/BaseMode;->mFocusOutOfRange:Ljava/lang/Object;

    return-void
.end method

.method public closeHdrAndFlashModeBeforeCapture()V
    .locals 6

    const-string v0, "pref_camera_flashmode_key"

    .line 4493
    invoke-virtual {p0, v0}, Lcom/oplus/camera/capmode/BaseMode;->getSupportFunction(Ljava/lang/String;)Z

    move-result v1

    const/4 v2, 0x1

    const-string v3, "off"

    const/4 v4, 0x0

    if-eqz v1, :cond_1

    .line 4494
    invoke-virtual {p0, v4}, Lcom/oplus/camera/capmode/BaseMode;->setAutoFlash(Z)V

    .line 4495
    invoke-virtual {p0}, Lcom/oplus/camera/capmode/BaseMode;->getFlashMode()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/oplus/camera/capmode/BaseMode;->mFlashMode:Ljava/lang/String;

    .line 4497
    iget-object v1, p0, Lcom/oplus/camera/capmode/BaseMode;->mFlashMode:Ljava/lang/String;

    const-string v5, "on"

    invoke-virtual {v5, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/oplus/camera/capmode/BaseMode;->mFlashMode:Ljava/lang/String;

    const-string v5, "auto"

    invoke-virtual {v5, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 4498
    :cond_0
    iget-object v1, p0, Lcom/oplus/camera/capmode/BaseMode;->mCameraUIInterface:Lcom/oplus/camera/ui/CameraUIInterface;

    invoke-interface {v1, v4, v2, v2}, Lcom/oplus/camera/ui/CameraUIInterface;->a(ZZZ)V

    .line 4499
    iget-object v1, p0, Lcom/oplus/camera/capmode/BaseMode;->mCameraUIInterface:Lcom/oplus/camera/ui/CameraUIInterface;

    invoke-interface {v1, v0, v3}, Lcom/oplus/camera/ui/CameraUIInterface;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 4501
    iget-object v0, p0, Lcom/oplus/camera/capmode/BaseMode;->mOneCamera:Lcom/oplus/camera/e/d;

    if-eqz v0, :cond_1

    .line 4502
    invoke-interface {v0, v3}, Lcom/oplus/camera/e/d;->b(Ljava/lang/String;)V

    .line 4503
    iget-object v0, p0, Lcom/oplus/camera/capmode/BaseMode;->mOneCamera:Lcom/oplus/camera/e/d;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Lcom/oplus/camera/e/d;->a(Lcom/oplus/camera/e/d$c;)V

    :cond_1
    const-string v0, "pref_camera_hdr_mode_key"

    .line 4508
    invoke-virtual {p0, v0}, Lcom/oplus/camera/capmode/BaseMode;->getSupportFunction(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 4509
    iput-boolean v4, p0, Lcom/oplus/camera/capmode/BaseMode;->mbAutoHDR:Z

    .line 4510
    iget-object v1, p0, Lcom/oplus/camera/capmode/BaseMode;->mPreferences:Landroid/content/SharedPreferences;

    iget v5, p0, Lcom/oplus/camera/capmode/BaseMode;->mCameraId:I

    invoke-static {v0, v5}, Lcom/oplus/camera/aps/config/CameraConfig;->getOptionKeyDefaultValue(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v5

    invoke-interface {v1, v0, v5}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/oplus/camera/capmode/BaseMode;->mHDRMode:Ljava/lang/String;

    .line 4513
    iget-object v1, p0, Lcom/oplus/camera/capmode/BaseMode;->mHDRMode:Ljava/lang/String;

    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    .line 4514
    iget-object v1, p0, Lcom/oplus/camera/capmode/BaseMode;->mCameraUIInterface:Lcom/oplus/camera/ui/CameraUIInterface;

    invoke-interface {v1, v4, v2, v2}, Lcom/oplus/camera/ui/CameraUIInterface;->a(ZZZ)V

    .line 4515
    iget-object v1, p0, Lcom/oplus/camera/capmode/BaseMode;->mCameraUIInterface:Lcom/oplus/camera/ui/CameraUIInterface;

    invoke-interface {v1, v0, v3}, Lcom/oplus/camera/ui/CameraUIInterface;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 4516
    invoke-direct {p0, v3, v4}, Lcom/oplus/camera/capmode/BaseMode;->updateHDRMode(Ljava/lang/String;Z)V

    :cond_2
    return-void
.end method

.method public closeImageReader()V
    .locals 0

    return-void
.end method

.method protected closeViviEffect()V
    .locals 5

    .line 4530
    iget-object v0, p0, Lcom/oplus/camera/capmode/BaseMode;->mPreferences:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "off"

    const-string v2, "pref_camera_vivid_effect_key"

    .line 4531
    invoke-interface {v0, v2, v1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 4532
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 4534
    iget-object v0, p0, Lcom/oplus/camera/capmode/BaseMode;->mCameraUIInterface:Lcom/oplus/camera/ui/CameraUIInterface;

    const/4 v3, 0x1

    const/4 v4, 0x0

    invoke-interface {v0, v3, v4, v3}, Lcom/oplus/camera/ui/CameraUIInterface;->a(ZZZ)V

    .line 4535
    iget-object p0, p0, Lcom/oplus/camera/capmode/BaseMode;->mCameraUIInterface:Lcom/oplus/camera/ui/CameraUIInterface;

    invoke-interface {p0, v2, v1}, Lcom/oplus/camera/ui/CameraUIInterface;->b(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public consumeBackEventOnPictureTaken()Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public consumeImage(Lcom/oplus/ocs/camera/CameraPictureCallback$CameraPictureImage;)Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public containsBubbleKey(Ljava/lang/String;)Z
    .locals 0

    .line 6912
    iget-object p0, p0, Lcom/oplus/camera/capmode/BaseMode;->mPreferences:Landroid/content/SharedPreferences;

    if-nez p0, :cond_0

    const-string p0, "BaseMode"

    const-string p1, "containsBubbleKey, mPreference null"

    .line 6913
    invoke-static {p0, p1}, Lcom/oplus/camera/e;->f(Ljava/lang/String;Ljava/lang/String;)V

    const/4 p0, 0x1

    return p0

    .line 6918
    :cond_0
    invoke-interface {p0, p1}, Landroid/content/SharedPreferences;->contains(Ljava/lang/String;)Z

    move-result p0

    return p0
.end method

.method public createEffectTextures(Lcom/oplus/camera/ui/preview/a/p;)V
    .locals 2

    const-string v0, "pref_filter_process_key"

    .line 4728
    invoke-virtual {p0, v0}, Lcom/oplus/camera/capmode/BaseMode;->getSupportFunction(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 4729
    iget-object v0, p0, Lcom/oplus/camera/capmode/BaseMode;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x5

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 4730
    new-instance v0, Landroid/os/Message;

    invoke-direct {v0}, Landroid/os/Message;-><init>()V

    .line 4731
    iput-object p1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 4732
    iput v1, v0, Landroid/os/Message;->what:I

    .line 4733
    iget-object p0, p0, Lcom/oplus/camera/capmode/BaseMode;->mHandler:Landroid/os/Handler;

    invoke-virtual {p0, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    :cond_0
    return-void
.end method

.method public final deInitCameraMode(Ljava/lang/String;)V
    .locals 6

    .line 2282
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "deInitCameraMode, targetMode: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "BaseMode"

    invoke-static {v1, v0}, Lcom/oplus/camera/e;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 2284
    iget-object v0, p0, Lcom/oplus/camera/capmode/BaseMode;->mHandler:Landroid/os/Handler;

    if-eqz v0, :cond_0

    const/4 v1, 0x0

    .line 2285
    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    :cond_0
    const/4 v0, 0x0

    .line 2288
    iput-boolean v0, p0, Lcom/oplus/camera/capmode/BaseMode;->mbModePreInit:Z

    .line 2289
    iput v0, p0, Lcom/oplus/camera/capmode/BaseMode;->mPostCounter:I

    .line 2291
    sget-object v1, Lcom/oplus/camera/capmode/BaseMode;->FILTER_KEYS:[Ljava/lang/String;

    invoke-virtual {p0, v1}, Lcom/oplus/camera/capmode/BaseMode;->restoreSettingMenuOption([Ljava/lang/String;)V

    .line 2293
    invoke-direct {p0, v0}, Lcom/oplus/camera/capmode/BaseMode;->setHDRMenuVisibility(Z)V

    .line 2295
    invoke-virtual {p0}, Lcom/oplus/camera/capmode/BaseMode;->isOpenHDR()Z

    move-result v1

    const/4 v2, 0x1

    const-string v3, "off"

    if-eqz v1, :cond_1

    .line 2296
    invoke-direct {p0, v0}, Lcom/oplus/camera/capmode/BaseMode;->updateMenuWithHDRChange(Z)V

    .line 2297
    invoke-direct {p0, v3, v2}, Lcom/oplus/camera/capmode/BaseMode;->updateHDRMode(Ljava/lang/String;Z)V

    .line 2300
    :cond_1
    iget-object v1, p0, Lcom/oplus/camera/capmode/BaseMode;->mOneCamera:Lcom/oplus/camera/e/d;

    if-eqz v1, :cond_4

    .line 2301
    invoke-interface {v1}, Lcom/oplus/camera/e/d;->e()Lcom/oplus/camera/e/h;

    move-result-object v1

    invoke-virtual {v1}, Lcom/oplus/camera/e/h;->H()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 2302
    iget-object v1, p0, Lcom/oplus/camera/capmode/BaseMode;->mOneCamera:Lcom/oplus/camera/e/d;

    invoke-interface {v1, v0}, Lcom/oplus/camera/e/d;->q(Z)V

    goto :goto_0

    .line 2303
    :cond_2
    invoke-virtual {p0}, Lcom/oplus/camera/capmode/BaseMode;->isAutoHDR()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 2304
    iget-object v1, p0, Lcom/oplus/camera/capmode/BaseMode;->mOneCamera:Lcom/oplus/camera/e/d;

    invoke-interface {v1, v3}, Lcom/oplus/camera/e/d;->c(Ljava/lang/String;)V

    .line 2307
    :cond_3
    :goto_0
    iget-object v1, p0, Lcom/oplus/camera/capmode/BaseMode;->mOneCamera:Lcom/oplus/camera/e/d;

    sget-object v4, Landroid/hardware/camera2/CaptureRequest;->CONTROL_AE_REGIONS:Landroid/hardware/camera2/CaptureRequest$Key;

    invoke-static {}, Lcom/oplus/camera/a;->b()[Landroid/hardware/camera2/params/MeteringRectangle;

    move-result-object v5

    invoke-interface {v1, v4, v5}, Lcom/oplus/camera/e/d;->a(Landroid/hardware/camera2/CaptureRequest$Key;Ljava/lang/Object;)V

    .line 2310
    :cond_4
    invoke-virtual {p0, v0}, Lcom/oplus/camera/capmode/BaseMode;->setAutoFlash(Z)V

    .line 2311
    iput-boolean v0, p0, Lcom/oplus/camera/capmode/BaseMode;->mbAutoHDR:Z

    .line 2312
    iput-boolean v0, p0, Lcom/oplus/camera/capmode/BaseMode;->mbAutoBinning:Z

    .line 2313
    iget-object v1, p0, Lcom/oplus/camera/capmode/BaseMode;->mCameraUIInterface:Lcom/oplus/camera/ui/CameraUIInterface;

    invoke-interface {v1}, Lcom/oplus/camera/ui/CameraUIInterface;->D()V

    .line 2314
    invoke-virtual {p0, p1}, Lcom/oplus/camera/capmode/BaseMode;->onDeInitCameraMode(Ljava/lang/String;)V

    .line 2316
    iget-object p1, p0, Lcom/oplus/camera/capmode/BaseMode;->mPreferences:Landroid/content/SharedPreferences;

    if-eqz p1, :cond_5

    .line 2317
    invoke-interface {p1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object p1

    const-string v1, "pref_subsetting_key"

    invoke-interface {p1, v1, v3}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object p1

    invoke-interface {p1}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 2320
    :cond_5
    iget-object p1, p0, Lcom/oplus/camera/capmode/BaseMode;->mPreviewEffectProcess:Lcom/oplus/camera/ui/preview/a/t;

    invoke-interface {p1, v2}, Lcom/oplus/camera/ui/preview/a/t;->c(I)V

    .line 2321
    iput-boolean v0, p0, Lcom/oplus/camera/capmode/BaseMode;->mbCapModeInit:Z

    .line 2322
    iput v0, p0, Lcom/oplus/camera/capmode/BaseMode;->mApsDecisionFeatureType:I

    .line 2323
    iput v0, p0, Lcom/oplus/camera/capmode/BaseMode;->mApsBracketMode:I

    .line 2324
    iput v0, p0, Lcom/oplus/camera/capmode/BaseMode;->mAsdSceneValue:I

    .line 2325
    invoke-virtual {p0}, Lcom/oplus/camera/capmode/BaseMode;->onGetNearMeOnClickData()V

    return-void
.end method

.method public deleteCurrentVideo()V
    .locals 0

    return-void
.end method

.method public final destroy()V
    .locals 2

    const-string v0, "BaseMode"

    const-string v1, "destroy"

    .line 1920
    invoke-static {v0, v1}, Lcom/oplus/camera/e;->a(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x1

    .line 1922
    iput-boolean v0, p0, Lcom/oplus/camera/capmode/BaseMode;->mbDestroyed:Z

    .line 1924
    invoke-virtual {p0}, Lcom/oplus/camera/capmode/BaseMode;->onDestroy()V

    const/4 v0, 0x0

    .line 1926
    iput-boolean v0, p0, Lcom/oplus/camera/capmode/BaseMode;->mbCapModeInit:Z

    .line 1927
    iput-boolean v0, p0, Lcom/oplus/camera/capmode/BaseMode;->mbModePreInit:Z

    const/4 v0, 0x0

    .line 1928
    iput-object v0, p0, Lcom/oplus/camera/capmode/BaseMode;->mPreferences:Landroid/content/SharedPreferences;

    .line 1929
    iput-object v0, p0, Lcom/oplus/camera/capmode/BaseMode;->mPreviewEffectProcess:Lcom/oplus/camera/ui/preview/a/t;

    .line 1930
    iput-object v0, p0, Lcom/oplus/camera/capmode/BaseMode;->mActivity:Landroid/app/Activity;

    .line 1931
    iput-object v0, p0, Lcom/oplus/camera/capmode/BaseMode;->mCameraInterface:Lcom/oplus/camera/capmode/a;

    .line 1932
    iput-object v0, p0, Lcom/oplus/camera/capmode/BaseMode;->mCameraRootView:Landroid/view/ViewGroup;

    .line 1933
    iput-object v0, p0, Lcom/oplus/camera/capmode/BaseMode;->mStatePreferenceHelper:Lcom/oplus/camera/algovisualization/j;

    return-void
.end method

.method protected disableBokehHDR(Lcom/oplus/camera/aps/util/CameraApsDecision;)Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public final disableBurstShot()V
    .locals 2

    .line 4565
    invoke-virtual {p0}, Lcom/oplus/camera/capmode/BaseMode;->resetHdrAndFlashModeAfterCapture()V

    .line 4566
    invoke-virtual {p0}, Lcom/oplus/camera/capmode/BaseMode;->restoreEffectAfterBurstShot()V

    const/4 v0, 0x0

    .line 4568
    invoke-virtual {p0, v0}, Lcom/oplus/camera/capmode/BaseMode;->setBurstShotCapturing(Z)V

    .line 4569
    invoke-virtual {p0}, Lcom/oplus/camera/capmode/BaseMode;->onDisableBurstShot()V

    .line 4570
    iput v0, p0, Lcom/oplus/camera/capmode/BaseMode;->mPostCounter:I

    .line 4572
    iget-boolean v1, p0, Lcom/oplus/camera/capmode/BaseMode;->mbOpenViviEffectAfterBurstShot:Z

    if-eqz v1, :cond_0

    .line 4573
    iput-boolean v0, p0, Lcom/oplus/camera/capmode/BaseMode;->mbOpenViviEffectAfterBurstShot:Z

    .line 4574
    invoke-virtual {p0}, Lcom/oplus/camera/capmode/BaseMode;->openViviEffect()V

    .line 4577
    :cond_0
    sget-boolean v1, Lcom/oplus/camera/Camera;->l:Z

    if-nez v1, :cond_1

    sget-boolean v1, Lcom/oplus/camera/Camera;->m:Z

    if-eqz v1, :cond_2

    :cond_1
    iget-boolean v1, p0, Lcom/oplus/camera/capmode/BaseMode;->mbNeedReloadFlashMenu:Z

    if-eqz v1, :cond_2

    .line 4579
    iput-boolean v0, p0, Lcom/oplus/camera/capmode/BaseMode;->mbNeedReloadFlashMenu:Z

    .line 4580
    iget-object v0, p0, Lcom/oplus/camera/capmode/BaseMode;->mCameraUIInterface:Lcom/oplus/camera/ui/CameraUIInterface;

    const-string v1, "pref_camera_flashmode_key"

    invoke-interface {v0, v1}, Lcom/oplus/camera/ui/CameraUIInterface;->f(Ljava/lang/String;)V

    .line 4581
    iget-object v0, p0, Lcom/oplus/camera/capmode/BaseMode;->mCameraUIInterface:Lcom/oplus/camera/ui/CameraUIInterface;

    const-string v1, "pref_camera_videoflashmode_key"

    invoke-interface {v0, v1}, Lcom/oplus/camera/ui/CameraUIInterface;->f(Ljava/lang/String;)V

    .line 4584
    :cond_2
    iget-object p0, p0, Lcom/oplus/camera/capmode/BaseMode;->mCameraInterface:Lcom/oplus/camera/capmode/a;

    if-eqz p0, :cond_3

    const/4 v0, 0x1

    .line 4585
    invoke-interface {p0, v0}, Lcom/oplus/camera/capmode/a;->d(Z)V

    :cond_3
    return-void
.end method

.method public disableRedDotHintOnModes()V
    .locals 0

    return-void
.end method

.method public dispatchTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public displayAllIcon(ZZ)V
    .locals 12

    .line 5772
    invoke-virtual {p0}, Lcom/oplus/camera/capmode/BaseMode;->getBeauty3Dstatus()I

    move-result v0

    if-eqz v0, :cond_0

    const-string p0, "BaseMode"

    const-string p1, "displayAllIcon, beauty3DMode"

    .line 5773
    invoke-static {p0, p1}, Lcom/oplus/camera/e;->a(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    .line 5778
    :cond_0
    iget-object v0, p0, Lcom/oplus/camera/capmode/BaseMode;->mCameraUIInterface:Lcom/oplus/camera/ui/CameraUIInterface;

    invoke-interface {v0}, Lcom/oplus/camera/ui/CameraUIInterface;->R()Z

    move-result v0

    if-eqz v0, :cond_1

    return-void

    :cond_1
    if-eqz p1, :cond_3

    const-string p1, "func_hdr"

    .line 5783
    invoke-virtual {p0, p1}, Lcom/oplus/camera/capmode/BaseMode;->getSupportFunction(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_2

    .line 5784
    iget-object v0, p0, Lcom/oplus/camera/capmode/BaseMode;->mCameraUIInterface:Lcom/oplus/camera/ui/CameraUIInterface;

    const/4 v1, -0x1

    const v2, 0x7f080435

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-interface/range {v0 .. v5}, Lcom/oplus/camera/ui/CameraUIInterface;->a(IIZZZ)V

    goto :goto_1

    .line 5786
    :cond_2
    iget-object v6, p0, Lcom/oplus/camera/capmode/BaseMode;->mCameraUIInterface:Lcom/oplus/camera/ui/CameraUIInterface;

    const/4 v7, -0x1

    const v8, 0x7f080434

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    invoke-interface/range {v6 .. v11}, Lcom/oplus/camera/ui/CameraUIInterface;->a(IIZZZ)V

    goto :goto_1

    :cond_3
    const/4 p1, 0x0

    const/4 v0, 0x1

    if-eqz p2, :cond_6

    .line 5789
    iget-boolean p2, p0, Lcom/oplus/camera/capmode/BaseMode;->mbBurstShot:Z

    if-nez p2, :cond_7

    .line 5790
    invoke-virtual {p0}, Lcom/oplus/camera/capmode/BaseMode;->isAutoFlash()Z

    move-result p2

    if-nez p2, :cond_5

    invoke-virtual {p0}, Lcom/oplus/camera/capmode/BaseMode;->isAutoFrontTorch()Z

    move-result p2

    if-eqz p2, :cond_4

    goto :goto_0

    .line 5792
    :cond_4
    invoke-virtual {p0}, Lcom/oplus/camera/capmode/BaseMode;->isOpenHDR()Z

    move-result p2

    if-nez p2, :cond_7

    .line 5793
    iget-object p0, p0, Lcom/oplus/camera/capmode/BaseMode;->mCameraUIInterface:Lcom/oplus/camera/ui/CameraUIInterface;

    invoke-interface {p0, p1, v0, v0}, Lcom/oplus/camera/ui/CameraUIInterface;->a(ZZZ)V

    goto :goto_1

    .line 5791
    :cond_5
    :goto_0
    iget-object v1, p0, Lcom/oplus/camera/capmode/BaseMode;->mCameraUIInterface:Lcom/oplus/camera/ui/CameraUIInterface;

    const/4 v2, -0x1

    const v3, 0x7f080411

    const/4 v4, 0x0

    const/4 v5, 0x1

    const/4 v6, 0x0

    invoke-interface/range {v1 .. v6}, Lcom/oplus/camera/ui/CameraUIInterface;->a(IIZZZ)V

    goto :goto_1

    .line 5797
    :cond_6
    iget-object p0, p0, Lcom/oplus/camera/capmode/BaseMode;->mCameraUIInterface:Lcom/oplus/camera/ui/CameraUIInterface;

    invoke-interface {p0, p1, v0, v0}, Lcom/oplus/camera/ui/CameraUIInterface;->a(ZZZ)V

    :cond_7
    :goto_1
    return-void
.end method

.method public displayFixedUpModeHint()V
    .locals 1

    const/4 v0, 0x0

    .line 7430
    iput-boolean v0, p0, Lcom/oplus/camera/capmode/BaseMode;->mbShowEnvironmentTips:Z

    return-void
.end method

.method public displayScreenHintIconInSwitchOn()V
    .locals 13

    .line 5733
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "displayScreenHintIconInSwitchOn, isOpenFrontTorch: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/oplus/camera/capmode/BaseMode;->isOpenFrontTorch()Z

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", isOpenFlash: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 5734
    invoke-virtual {p0}, Lcom/oplus/camera/capmode/BaseMode;->isOpenFlash()Z

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "BaseMode"

    .line 5733
    invoke-static {v1, v0}, Lcom/oplus/camera/e;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 5736
    invoke-virtual {p0}, Lcom/oplus/camera/capmode/BaseMode;->getBeauty3Dstatus()I

    move-result v0

    if-eqz v0, :cond_0

    const-string p0, "displayScreenHintIconInSwitchOn, beauty3DMode"

    .line 5737
    invoke-static {v1, p0}, Lcom/oplus/camera/e;->a(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    .line 5742
    :cond_0
    iget-object v0, p0, Lcom/oplus/camera/capmode/BaseMode;->mCameraUIInterface:Lcom/oplus/camera/ui/CameraUIInterface;

    invoke-interface {v0}, Lcom/oplus/camera/ui/CameraUIInterface;->R()Z

    move-result v0

    if-eqz v0, :cond_1

    return-void

    .line 5746
    :cond_1
    invoke-virtual {p0}, Lcom/oplus/camera/capmode/BaseMode;->isPIAISceneOpen()Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/oplus/camera/capmode/BaseMode;->mCameraInterface:Lcom/oplus/camera/capmode/a;

    .line 5747
    invoke-interface {v0}, Lcom/oplus/camera/capmode/a;->j()I

    move-result v0

    if-eqz v0, :cond_2

    return-void

    .line 5751
    :cond_2
    invoke-virtual {p0}, Lcom/oplus/camera/capmode/BaseMode;->isOpenFrontTorch()Z

    move-result v0

    if-nez v0, :cond_3

    invoke-virtual {p0}, Lcom/oplus/camera/capmode/BaseMode;->isFlashState()Z

    move-result v0

    if-nez v0, :cond_3

    invoke-virtual {p0}, Lcom/oplus/camera/capmode/BaseMode;->isHDRState()Z

    move-result v0

    if-eqz v0, :cond_6

    :cond_3
    iget-boolean v0, p0, Lcom/oplus/camera/capmode/BaseMode;->mbShowPostCaptureAlert:Z

    if-nez v0, :cond_6

    iget-boolean v0, p0, Lcom/oplus/camera/capmode/BaseMode;->mbBurstShot:Z

    if-nez v0, :cond_6

    .line 5754
    invoke-virtual {p0}, Lcom/oplus/camera/capmode/BaseMode;->isHDRState()Z

    move-result v0

    if-nez v0, :cond_4

    .line 5755
    invoke-virtual {p0}, Lcom/oplus/camera/capmode/BaseMode;->getFlashMode()Ljava/lang/String;

    move-result-object v0

    const-string v1, "auto"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_7

    .line 5756
    iget-object v1, p0, Lcom/oplus/camera/capmode/BaseMode;->mCameraUIInterface:Lcom/oplus/camera/ui/CameraUIInterface;

    const/4 v2, -0x1

    invoke-direct {p0}, Lcom/oplus/camera/capmode/BaseMode;->getFrontFlashHintDrawable()I

    move-result v3

    const/4 v4, 0x0

    const/4 v5, 0x1

    const/4 v6, 0x0

    invoke-interface/range {v1 .. v6}, Lcom/oplus/camera/ui/CameraUIInterface;->a(IIZZZ)V

    goto :goto_0

    .line 5758
    :cond_4
    invoke-virtual {p0}, Lcom/oplus/camera/capmode/BaseMode;->isAutoHDR()Z

    move-result v0

    if-eqz v0, :cond_7

    iget-boolean v0, p0, Lcom/oplus/camera/capmode/BaseMode;->mbAutoHDR:Z

    if-eqz v0, :cond_7

    const-string v0, "func_hdr"

    .line 5759
    invoke-virtual {p0, v0}, Lcom/oplus/camera/capmode/BaseMode;->getSupportFunction(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 5760
    iget-object v1, p0, Lcom/oplus/camera/capmode/BaseMode;->mCameraUIInterface:Lcom/oplus/camera/ui/CameraUIInterface;

    const/4 v2, -0x1

    const v3, 0x7f080435

    const/4 v4, 0x0

    const/4 v5, 0x1

    const/4 v6, 0x0

    invoke-interface/range {v1 .. v6}, Lcom/oplus/camera/ui/CameraUIInterface;->a(IIZZZ)V

    goto :goto_0

    .line 5763
    :cond_5
    iget-object v7, p0, Lcom/oplus/camera/capmode/BaseMode;->mCameraUIInterface:Lcom/oplus/camera/ui/CameraUIInterface;

    const/4 v8, -0x1

    const v9, 0x7f080434

    const/4 v10, 0x0

    const/4 v11, 0x1

    const/4 v12, 0x0

    invoke-interface/range {v7 .. v12}, Lcom/oplus/camera/ui/CameraUIInterface;->a(IIZZZ)V

    goto :goto_0

    .line 5767
    :cond_6
    iget-object p0, p0, Lcom/oplus/camera/capmode/BaseMode;->mCameraUIInterface:Lcom/oplus/camera/ui/CameraUIInterface;

    const/4 v0, 0x0

    const/4 v1, 0x1

    invoke-interface {p0, v0, v1, v1}, Lcom/oplus/camera/ui/CameraUIInterface;->a(ZZZ)V

    :cond_7
    :goto_0
    return-void
.end method

.method protected doAfterStartPreview()V
    .locals 9

    .line 2699
    iget-boolean v0, p0, Lcom/oplus/camera/capmode/BaseMode;->mbPaused:Z

    if-nez v0, :cond_9

    .line 2700
    iget-object v0, p0, Lcom/oplus/camera/capmode/BaseMode;->mCameraUIInterface:Lcom/oplus/camera/ui/CameraUIInterface;

    if-eqz v0, :cond_8

    .line 2701
    iget-object v0, p0, Lcom/oplus/camera/capmode/BaseMode;->mCameraInterface:Lcom/oplus/camera/capmode/a;

    invoke-interface {v0}, Lcom/oplus/camera/capmode/a;->aP()Lcom/oplus/camera/s;

    move-result-object v0

    .line 2703
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "doAfterStartPreview, front: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v2, p0, Lcom/oplus/camera/capmode/BaseMode;->mbFrontCamera:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, ", cameraMode: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/oplus/camera/capmode/BaseMode;->getCameraMode()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ", shell response status: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "BaseMode"

    invoke-static {v2, v1}, Lcom/oplus/camera/e;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 2706
    iget-boolean v1, p0, Lcom/oplus/camera/capmode/BaseMode;->mbFrontCamera:Z

    const/4 v2, 0x1

    if-nez v1, :cond_0

    .line 2707
    invoke-virtual {v0}, Lcom/oplus/camera/s;->e()Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/oplus/camera/capmode/BaseMode;->mCameraInterface:Lcom/oplus/camera/capmode/a;

    .line 2708
    invoke-interface {v1}, Lcom/oplus/camera/capmode/a;->aQ()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 2709
    invoke-virtual {v0, v2}, Lcom/oplus/camera/s;->f(Z)V

    .line 2710
    iget-object v3, p0, Lcom/oplus/camera/capmode/BaseMode;->mCameraUIInterface:Lcom/oplus/camera/ui/CameraUIInterface;

    const v4, 0x7f10065c

    const/4 v5, -0x1

    const/4 v6, 0x1

    const/4 v7, 0x0

    const/4 v8, 0x0

    invoke-interface/range {v3 .. v8}, Lcom/oplus/camera/ui/CameraUIInterface;->a(IIZZZ)V

    goto :goto_0

    .line 2713
    :cond_0
    iget-object v0, p0, Lcom/oplus/camera/capmode/BaseMode;->mCameraUIInterface:Lcom/oplus/camera/ui/CameraUIInterface;

    const v1, 0x7f10065c

    invoke-interface {v0, v1}, Lcom/oplus/camera/ui/CameraUIInterface;->a(I)V

    .line 2716
    :goto_0
    invoke-virtual {p0}, Lcom/oplus/camera/capmode/BaseMode;->isFlashState()Z

    move-result v0

    if-nez v0, :cond_4

    invoke-virtual {p0}, Lcom/oplus/camera/capmode/BaseMode;->isHDRState()Z

    move-result v0

    if-nez v0, :cond_4

    invoke-virtual {p0}, Lcom/oplus/camera/capmode/BaseMode;->isInProMode()Z

    move-result v0

    if-nez v0, :cond_4

    sget-object v0, Lcom/oplus/camera/ui/inverse/e;->INS:Lcom/oplus/camera/ui/inverse/e;

    iget-object v1, p0, Lcom/oplus/camera/capmode/BaseMode;->mActivity:Landroid/app/Activity;

    .line 2717
    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/oplus/camera/ui/inverse/e;->isInverseColor(I)Z

    move-result v0

    if-nez v0, :cond_4

    const-string v0, "com.oplus.feature.video.3hdr.support"

    .line 2718
    invoke-static {v0}, Lcom/oplus/camera/aps/config/CameraConfig;->getConfigBooleanValue(Ljava/lang/String;)Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_1

    const-string v0, "com.oplus.feature.video.live.hdr.support"

    .line 2719
    invoke-static {v0}, Lcom/oplus/camera/aps/config/CameraConfig;->getConfigBooleanValue(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 2720
    :cond_1
    iget-object v0, p0, Lcom/oplus/camera/capmode/BaseMode;->mCameraUIInterface:Lcom/oplus/camera/ui/CameraUIInterface;

    new-array v3, v2, [I

    const v4, 0x7f1004c9

    aput v4, v3, v1

    invoke-interface {v0, v3}, Lcom/oplus/camera/ui/CameraUIInterface;->a([I)V

    .line 2723
    :cond_2
    invoke-virtual {p0}, Lcom/oplus/camera/capmode/BaseMode;->isUltraNightVideoOpen()Z

    move-result v0

    if-nez v0, :cond_3

    const-string v0, "com.oplus.feature.ultra.night.video.support"

    .line 2724
    invoke-static {v0}, Lcom/oplus/camera/aps/config/CameraConfig;->getConfigBooleanValue(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 2725
    invoke-virtual {p0}, Lcom/oplus/camera/capmode/BaseMode;->isInProMode()Z

    move-result v0

    if-nez v0, :cond_3

    .line 2726
    iget-object v0, p0, Lcom/oplus/camera/capmode/BaseMode;->mCameraUIInterface:Lcom/oplus/camera/ui/CameraUIInterface;

    new-array v3, v2, [I

    const v4, 0x7f100489

    aput v4, v3, v1

    invoke-interface {v0, v3}, Lcom/oplus/camera/ui/CameraUIInterface;->a([I)V

    .line 2729
    :cond_3
    iget-object v0, p0, Lcom/oplus/camera/capmode/BaseMode;->mCameraUIInterface:Lcom/oplus/camera/ui/CameraUIInterface;

    invoke-interface {v0, v1, v2, v2}, Lcom/oplus/camera/ui/CameraUIInterface;->a(ZZZ)V

    .line 2732
    :cond_4
    iget-object v0, p0, Lcom/oplus/camera/capmode/BaseMode;->mPreferences:Landroid/content/SharedPreferences;

    if-eqz v0, :cond_8

    const-string v0, "key_high_picture_size"

    .line 2733
    invoke-virtual {p0, v0}, Lcom/oplus/camera/capmode/BaseMode;->getSupportFunction(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_5

    .line 2734
    iget-object v1, p0, Lcom/oplus/camera/capmode/BaseMode;->mPreferences:Landroid/content/SharedPreferences;

    iget-object v3, p0, Lcom/oplus/camera/capmode/BaseMode;->mActivity:Landroid/app/Activity;

    const v4, 0x7f1002be

    .line 2735
    invoke-virtual {v3, v4}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v3

    const-string v4, "pref_camera_photo_ratio_key"

    .line 2734
    invoke-interface {v1, v4, v3}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v3, "standard_high"

    .line 2737
    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_5

    .line 2738
    iget-object v1, p0, Lcom/oplus/camera/capmode/BaseMode;->mPreferences:Landroid/content/SharedPreferences;

    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    invoke-interface {v1, v0, v2}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 2742
    :cond_5
    invoke-virtual {p0}, Lcom/oplus/camera/capmode/BaseMode;->isOpenHDR()Z

    move-result v0

    if-eqz v0, :cond_6

    .line 2743
    invoke-direct {p0, v2}, Lcom/oplus/camera/capmode/BaseMode;->updateMenuWithHDRChange(Z)V

    goto :goto_1

    .line 2744
    :cond_6
    invoke-virtual {p0}, Lcom/oplus/camera/capmode/BaseMode;->isAutoHDR()Z

    move-result v0

    if-eqz v0, :cond_7

    .line 2745
    iget-boolean v0, p0, Lcom/oplus/camera/capmode/BaseMode;->mbFrontCamera:Z

    invoke-direct {p0, v0}, Lcom/oplus/camera/capmode/BaseMode;->updateFlashMenuIfHDRIsAuto(Z)V

    .line 2748
    :cond_7
    :goto_1
    iget-object v0, p0, Lcom/oplus/camera/capmode/BaseMode;->mHandler:Landroid/os/Handler;

    if-eqz v0, :cond_8

    const/4 v1, 0x2

    .line 2749
    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 2750
    iget-object v0, p0, Lcom/oplus/camera/capmode/BaseMode;->mHandler:Landroid/os/Handler;

    const-wide/16 v2, 0x190

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 2755
    :cond_8
    iget-object p0, p0, Lcom/oplus/camera/capmode/BaseMode;->mCameraInterface:Lcom/oplus/camera/capmode/a;

    if-eqz p0, :cond_9

    .line 2756
    invoke-interface {p0}, Lcom/oplus/camera/capmode/a;->aR()V

    :cond_9
    return-void
.end method

.method public doReturnToCaller(Z)V
    .locals 0

    return-void
.end method

.method public enterNeedShutterButtonAlphaTransition()Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method protected exclusiveInverse()Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public forceCloseVividEffect()V
    .locals 3

    .line 5389
    iget-object v0, p0, Lcom/oplus/camera/capmode/BaseMode;->mPreferences:Landroid/content/SharedPreferences;

    if-eqz v0, :cond_0

    .line 5390
    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 5391
    iget-object v1, p0, Lcom/oplus/camera/capmode/BaseMode;->mActivity:Landroid/app/Activity;

    const v2, 0x7f1004fa

    invoke-virtual {v1, v2}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v1

    const-string v2, "pref_camera_vivid_effect_key"

    invoke-interface {v0, v2, v1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 5392
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 5393
    iget-object p0, p0, Lcom/oplus/camera/capmode/BaseMode;->mCameraUIInterface:Lcom/oplus/camera/ui/CameraUIInterface;

    invoke-interface {p0, v2}, Lcom/oplus/camera/ui/CameraUIInterface;->f(Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public forceStopVideoRecording(Z)V
    .locals 0

    return-void
.end method

.method public generateImageInfo(Ljava/util/Map;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    return-void
.end method

.method public final getAddMenuOptionEnabled(Ljava/lang/String;)Z
    .locals 1

    .line 3779
    iget-boolean v0, p0, Lcom/oplus/camera/capmode/BaseMode;->mbModePreInit:Z

    if-eqz v0, :cond_0

    invoke-virtual {p0, p1}, Lcom/oplus/camera/capmode/BaseMode;->getCanAddMenuOption(Ljava/lang/String;)Z

    move-result p0

    goto :goto_0

    :cond_0
    const/4 p0, 0x1

    :goto_0
    return p0
.end method

.method public final getAfterCaptureMsgCommonData(Lcom/oplus/camera/statistics/model/DcsMsgData;Lcom/oplus/camera/Storage$CameraPicture;)Lcom/oplus/camera/statistics/model/DcsMsgData;
    .locals 0

    .line 5548
    invoke-virtual {p0, p1, p2}, Lcom/oplus/camera/capmode/BaseMode;->onGetAfterCaptureMsgCommonData(Lcom/oplus/camera/statistics/model/DcsMsgData;Lcom/oplus/camera/Storage$CameraPicture;)Lcom/oplus/camera/statistics/model/DcsMsgData;

    move-result-object p0

    return-object p0
.end method

.method protected getAfterStoreRunnable()Lcom/oplus/camera/ui/control/e$c;
    .locals 0

    const/4 p0, 0x0

    return-object p0
.end method

.method public getAssistViewLayoutType()I
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method protected getBackUpFaceBeautyKey()Ljava/lang/String;
    .locals 0

    const/4 p0, 0x0

    return-object p0
.end method

.method public getBeauty3DScanIconType(I)I
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method protected getBeauty3Dstatus()I
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public final getBeforeCaptureMsgCommonData(Lcom/oplus/camera/statistics/model/DcsMsgData;)Lcom/oplus/camera/statistics/model/DcsMsgData;
    .locals 4

    const-string v0, "BaseMode"

    const-string v1, "getBeforeCaptureMsgCommonData"

    .line 5514
    invoke-static {v0, v1}, Lcom/oplus/camera/e;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 5516
    iget v1, p0, Lcom/oplus/camera/capmode/BaseMode;->mSysBrightness:I

    iput v1, p1, Lcom/oplus/camera/statistics/model/DcsMsgData;->mScreenBrightness:I

    .line 5518
    instance-of v1, p1, Lcom/oplus/camera/statistics/model/CaptureMsgData;

    if-eqz v1, :cond_3

    .line 5519
    iget-object v1, p0, Lcom/oplus/camera/capmode/BaseMode;->mOneCamera:Lcom/oplus/camera/e/d;

    invoke-interface {v1}, Lcom/oplus/camera/e/d;->e()Lcom/oplus/camera/e/h;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/oplus/camera/capmode/BaseMode;->getPictureSize(Lcom/oplus/camera/e/h;)Landroid/util/Size;

    move-result-object v1

    iget v2, p0, Lcom/oplus/camera/capmode/BaseMode;->mCameraId:I

    invoke-static {v1, v2}, Lcom/oplus/camera/util/Util;->a(Landroid/util/Size;I)Ljava/lang/String;

    move-result-object v1

    const-string v2, "16_9"

    .line 5521
    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    const-string v1, "16:9"

    goto :goto_0

    :cond_0
    const-string v2, "full"

    .line 5523
    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 5524
    invoke-static {}, Lcom/oplus/camera/util/Util;->g()I

    move-result v2

    if-nez v2, :cond_1

    const-string v1, "second_full"

    goto :goto_0

    :cond_1
    const/4 v2, 0x1

    .line 5526
    invoke-static {}, Lcom/oplus/camera/util/Util;->g()I

    move-result v3

    if-ne v2, v3, :cond_2

    const-string v1, "15_14"

    .line 5531
    :cond_2
    :goto_0
    move-object v2, p1

    check-cast v2, Lcom/oplus/camera/statistics/model/CaptureMsgData;

    iput-object v1, v2, Lcom/oplus/camera/statistics/model/CaptureMsgData;->mPicSizeType:Ljava/lang/String;

    :cond_3
    const-string v1, "getBeforeCaptureMsgCommonData X"

    .line 5534
    invoke-static {v0, v1}, Lcom/oplus/camera/e;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 5536
    invoke-virtual {p0, p1}, Lcom/oplus/camera/capmode/BaseMode;->onGetBeforeCaptureMsgCommonData(Lcom/oplus/camera/statistics/model/DcsMsgData;)Lcom/oplus/camera/statistics/model/DcsMsgData;

    move-result-object p0

    return-object p0
.end method

.method protected getBlurIndex()I
    .locals 2

    .line 7236
    invoke-virtual {p0}, Lcom/oplus/camera/capmode/BaseMode;->isTiltShiftOpen()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 7237
    iget-object p0, p0, Lcom/oplus/camera/capmode/BaseMode;->mPreferences:Landroid/content/SharedPreferences;

    const/16 v0, 0x46

    const-string v1, "pref_tilt_shift_blur_menu_index"

    invoke-interface {p0, v1, v0}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result p0

    return p0

    :cond_0
    const-string v0, "func_bokeh"

    .line 7239
    invoke-virtual {p0, v0}, Lcom/oplus/camera/capmode/BaseMode;->getSupportFunction(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_3

    const-string v0, "func_face_blur"

    invoke-virtual {p0, v0}, Lcom/oplus/camera/capmode/BaseMode;->getSupportFunction(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    goto :goto_0

    :cond_1
    const-string v0, "func_video_blur_process"

    .line 7241
    invoke-virtual {p0, v0}, Lcom/oplus/camera/capmode/BaseMode;->getSupportFunction(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 7242
    iget-object v0, p0, Lcom/oplus/camera/capmode/BaseMode;->mPreferences:Landroid/content/SharedPreferences;

    invoke-virtual {p0}, Lcom/oplus/camera/capmode/BaseMode;->getDefaultBlurValue()I

    move-result p0

    const-string v1, "pref_video_blur_menu_index"

    invoke-interface {v0, v1, p0}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result p0

    return p0

    .line 7246
    :cond_2
    invoke-virtual {p0}, Lcom/oplus/camera/capmode/BaseMode;->getDefaultBlurValue()I

    move-result p0

    return p0

    .line 7240
    :cond_3
    :goto_0
    iget-object v0, p0, Lcom/oplus/camera/capmode/BaseMode;->mPreferences:Landroid/content/SharedPreferences;

    invoke-virtual {p0}, Lcom/oplus/camera/capmode/BaseMode;->getDefaultBlurValue()I

    move-result p0

    const-string v1, "pref_portrait_blur_menu_index"

    invoke-interface {v0, v1, p0}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result p0

    return p0
.end method

.method public getBlurMenuKeyByMode()Ljava/lang/String;
    .locals 1

    .line 5101
    iget p0, p0, Lcom/oplus/camera/capmode/BaseMode;->mCameraEntryType:I

    const-string v0, "pref_video_blur_menu"

    invoke-static {v0, p0}, Lcom/oplus/camera/entry/b;->b(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method protected getBlurValue()F
    .locals 1

    .line 7284
    invoke-virtual {p0}, Lcom/oplus/camera/capmode/BaseMode;->getBlurIndex()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/oplus/camera/capmode/BaseMode;->getBlurValue(I)F

    move-result p0

    return p0
.end method

.method protected getBlurValue(I)F
    .locals 0

    .line 7288
    new-instance p0, Ljava/math/BigDecimal;

    invoke-direct {p0, p1}, Ljava/math/BigDecimal;-><init>(I)V

    sget-object p1, Lcom/oplus/camera/d;->c:Ljava/math/BigDecimal;

    invoke-virtual {p0, p1}, Ljava/math/BigDecimal;->multiply(Ljava/math/BigDecimal;)Ljava/math/BigDecimal;

    move-result-object p0

    invoke-virtual {p0}, Ljava/math/BigDecimal;->floatValue()F

    move-result p0

    return p0
.end method

.method public getBrightness()F
    .locals 0

    .line 8092
    iget p0, p0, Lcom/oplus/camera/capmode/BaseMode;->mBrightness:F

    return p0
.end method

.method protected getBubbleOffsetX(I)I
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method protected getBubbleOffsetY(I)I
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public getCameraFeature()Ljava/lang/String;
    .locals 0

    const/4 p0, 0x0

    return-object p0
.end method

.method public getCameraInfo(I)Lcom/oplus/camera/e/h;
    .locals 0

    .line 2870
    invoke-virtual {p0}, Lcom/oplus/camera/capmode/BaseMode;->getCameraMode()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0, p1}, Lcom/oplus/camera/e/a;->a(Ljava/lang/String;I)Lcom/oplus/camera/e/h;

    move-result-object p0

    return-object p0
.end method

.method public abstract getCameraMode()Ljava/lang/String;
.end method

.method public getCameraShutterType()Ljava/lang/String;
    .locals 0

    .line 4455
    iget-object p0, p0, Lcom/oplus/camera/capmode/BaseMode;->mCameraInterface:Lcom/oplus/camera/capmode/a;

    invoke-interface {p0}, Lcom/oplus/camera/capmode/a;->ah()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public getCanAddMenuOption(Ljava/lang/String;)Z
    .locals 1

    const-string v0, "pref_camera_flashmode_key"

    .line 3783
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    iget p1, p0, Lcom/oplus/camera/capmode/BaseMode;->mCameraId:I

    .line 3784
    invoke-virtual {p0, v0, p1}, Lcom/oplus/camera/capmode/BaseMode;->onGetSupportSettingList(Ljava/lang/String;I)Ljava/util/List;

    move-result-object p0

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return p0

    :cond_0
    const/4 p0, 0x1

    return p0
.end method

.method protected getCaptureCallback()Lcom/oplus/camera/e/d$a;
    .locals 0

    return-object p0
.end method

.method public getCaptureDate()J
    .locals 2

    .line 6207
    iget-wide v0, p0, Lcom/oplus/camera/capmode/BaseMode;->mCaptureDate:J

    return-wide v0
.end method

.method public getCaptureExposureTime()J
    .locals 2

    const-wide/16 v0, -0x1

    return-wide v0
.end method

.method public getCaptureIso()I
    .locals 0

    const/4 p0, -0x1

    return p0
.end method

.method public getCaptureMergeIdentity()J
    .locals 2

    .line 7949
    iget-wide v0, p0, Lcom/oplus/camera/capmode/BaseMode;->mCaptureMergeIdentity:J

    return-wide v0
.end method

.method public getCaptureRequestTag(Lcom/oplus/camera/aps/util/CameraApsDecision;Z)Lcom/oplus/camera/e/c;
    .locals 12

    .line 1035
    new-instance v0, Lcom/oplus/camera/e/c;

    invoke-direct {v0}, Lcom/oplus/camera/e/c;-><init>()V

    .line 1037
    invoke-virtual {p0}, Lcom/oplus/camera/capmode/BaseMode;->getCurrFilterType()Ljava/lang/String;

    move-result-object v1

    .line 1038
    iput-object v1, v0, Lcom/oplus/camera/e/c;->i:Ljava/lang/String;

    .line 1039
    invoke-virtual {p0}, Lcom/oplus/camera/capmode/BaseMode;->isSuperTextOpen()Z

    move-result v2

    iput-boolean v2, v0, Lcom/oplus/camera/e/c;->a:Z

    const-string v2, "func_video_blur_process"

    .line 1040
    invoke-virtual {p0, v2}, Lcom/oplus/camera/capmode/BaseMode;->getSupportFunction(Ljava/lang/String;)Z

    move-result v2

    const/4 v3, 0x1

    const/4 v4, 0x0

    if-eqz v2, :cond_0

    invoke-virtual {p0}, Lcom/oplus/camera/capmode/BaseMode;->isBlurOpen()Z

    move-result v2

    if-eqz v2, :cond_0

    move v2, v3

    goto :goto_0

    :cond_0
    move v2, v4

    :goto_0
    iput-boolean v2, v0, Lcom/oplus/camera/e/c;->g:Z

    const-string v2, "func_face_blur"

    .line 1041
    invoke-virtual {p0, v2}, Lcom/oplus/camera/capmode/BaseMode;->getSupportFunction(Ljava/lang/String;)Z

    move-result v2

    const/4 v5, 0x0

    if-eqz v2, :cond_1

    invoke-virtual {p0, v1}, Lcom/oplus/camera/capmode/BaseMode;->getSingleBlurAlgoName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    goto :goto_1

    :cond_1
    move-object v1, v5

    :goto_1
    iput-object v1, v0, Lcom/oplus/camera/e/c;->d:Ljava/lang/String;

    .line 1042
    invoke-virtual {p0}, Lcom/oplus/camera/capmode/BaseMode;->isVideoNeonOpen()Z

    move-result v1

    iput-boolean v1, v0, Lcom/oplus/camera/e/c;->h:Z

    .line 1043
    invoke-virtual {p0}, Lcom/oplus/camera/capmode/BaseMode;->getBlurIndex()I

    move-result v1

    iput v1, v0, Lcom/oplus/camera/e/c;->R:I

    .line 1044
    invoke-virtual {p0}, Lcom/oplus/camera/capmode/BaseMode;->getShowBlurValue()F

    move-result v1

    iput v1, v0, Lcom/oplus/camera/e/c;->S:F

    .line 1045
    iget-boolean v1, p0, Lcom/oplus/camera/capmode/BaseMode;->mbBurstShot:Z

    iput-boolean v1, v0, Lcom/oplus/camera/e/c;->j:Z

    if-eqz v1, :cond_2

    .line 1046
    sget v1, Lcom/oplus/camera/util/Util;->d:I

    goto :goto_2

    :cond_2
    invoke-virtual {p0}, Lcom/oplus/camera/capmode/BaseMode;->getDefaultCaptureNumber()I

    move-result v1

    :goto_2
    iput v1, v0, Lcom/oplus/camera/e/c;->y:I

    if-eqz p1, :cond_1e

    .line 1049
    iget-boolean v1, p0, Lcom/oplus/camera/capmode/BaseMode;->mbBurstShot:Z

    if-eqz v1, :cond_3

    const/16 v1, 0x23

    goto :goto_3

    :cond_3
    iget v1, p1, Lcom/oplus/camera/aps/util/CameraApsDecision;->mRequestFormat:I

    :goto_3
    iput v1, v0, Lcom/oplus/camera/e/c;->z:I

    .line 1055
    invoke-virtual {p0}, Lcom/oplus/camera/capmode/BaseMode;->getCameraMode()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/oplus/camera/e/c;->A:Ljava/lang/String;

    .line 1056
    iget-object v1, p0, Lcom/oplus/camera/capmode/BaseMode;->mCameraInterface:Lcom/oplus/camera/capmode/a;

    invoke-interface {v1}, Lcom/oplus/camera/capmode/a;->aw()I

    move-result v1

    iput v1, v0, Lcom/oplus/camera/e/c;->B:I

    const-string v1, "func_long_exposure"

    .line 1058
    invoke-virtual {p0, v1}, Lcom/oplus/camera/capmode/BaseMode;->getSupportFunction(Ljava/lang/String;)Z

    move-result v1

    const/16 v2, 0x20

    if-eqz v1, :cond_4

    .line 1059
    iput v2, v0, Lcom/oplus/camera/e/c;->z:I

    .line 1060
    iput-boolean v3, v0, Lcom/oplus/camera/e/c;->c:Z

    .line 1063
    :cond_4
    iget v1, v0, Lcom/oplus/camera/e/c;->z:I

    const/16 v6, 0x22

    const/16 v7, 0x24

    const/16 v8, 0x25

    if-eq v1, v2, :cond_6

    iget v1, v0, Lcom/oplus/camera/e/c;->z:I

    if-eq v1, v8, :cond_6

    iget v1, v0, Lcom/oplus/camera/e/c;->z:I

    if-eq v1, v7, :cond_6

    iget v1, v0, Lcom/oplus/camera/e/c;->z:I

    if-ne v1, v6, :cond_5

    goto :goto_4

    .line 1069
    :cond_5
    sget-object v1, Lcom/oplus/camera/e/c$a;->CAPTURE:Lcom/oplus/camera/e/c$a;

    invoke-virtual {v0, v1}, Lcom/oplus/camera/e/c;->a(Lcom/oplus/camera/e/c$a;)V

    goto :goto_5

    .line 1067
    :cond_6
    :goto_4
    sget-object v1, Lcom/oplus/camera/e/c$a;->CAPTURE_RAW:Lcom/oplus/camera/e/c$a;

    invoke-virtual {v0, v1}, Lcom/oplus/camera/e/c;->a(Lcom/oplus/camera/e/c$a;)V

    :goto_5
    const-string v1, "pref_camera_hdr_mode_key"

    .line 1072
    invoke-virtual {p0, v1}, Lcom/oplus/camera/capmode/BaseMode;->getSupportFunction(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_7

    .line 1073
    iget-object v1, p0, Lcom/oplus/camera/capmode/BaseMode;->mPreferences:Landroid/content/SharedPreferences;

    iget v9, p0, Lcom/oplus/camera/capmode/BaseMode;->mCameraId:I

    const-string v10, "pref_camera_hdr_mode_key"

    .line 1074
    invoke-static {v10, v9}, Lcom/oplus/camera/aps/config/CameraConfig;->getOptionKeyDefaultValue(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v9

    const-string v10, "pref_camera_hdr_mode_key"

    .line 1073
    invoke-interface {v1, v10, v9}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/oplus/camera/e/c;->C:Ljava/lang/String;

    .line 1075
    invoke-virtual {p0}, Lcom/oplus/camera/capmode/BaseMode;->isHDRState()Z

    move-result v1

    iput-boolean v1, v0, Lcom/oplus/camera/e/c;->D:Z

    .line 1078
    :cond_7
    invoke-virtual {p0}, Lcom/oplus/camera/capmode/BaseMode;->getCameraShutterType()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/oplus/camera/e/c;->E:Ljava/lang/String;

    .line 1079
    iget-object v1, p0, Lcom/oplus/camera/capmode/BaseMode;->mCameraInterface:Lcom/oplus/camera/capmode/a;

    invoke-interface {v1}, Lcom/oplus/camera/capmode/a;->ae()Z

    move-result v1

    iput-boolean v1, v0, Lcom/oplus/camera/e/c;->F:Z

    .line 1081
    iget-object v1, p0, Lcom/oplus/camera/capmode/BaseMode;->mCameraInterface:Lcom/oplus/camera/capmode/a;

    invoke-interface {v1}, Lcom/oplus/camera/capmode/a;->af()Ljava/lang/String;

    move-result-object v1

    .line 1082
    iget-object v9, p0, Lcom/oplus/camera/capmode/BaseMode;->mCameraInterface:Lcom/oplus/camera/capmode/a;

    invoke-interface {v9}, Lcom/oplus/camera/capmode/a;->ag()Ljava/lang/String;

    move-result-object v9

    .line 1085
    invoke-static {v9}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v10

    if-eqz v10, :cond_8

    .line 1086
    iput-object v1, v0, Lcom/oplus/camera/e/c;->G:Ljava/lang/String;

    goto :goto_6

    .line 1088
    :cond_8
    iput-object v9, v0, Lcom/oplus/camera/e/c;->G:Ljava/lang/String;

    .line 1089
    iput-object v1, v0, Lcom/oplus/camera/e/c;->H:Ljava/lang/String;

    :goto_6
    const-string v1, "pref_none_sat_ultra_wide_angle_key"

    .line 1092
    invoke-virtual {p0, v1}, Lcom/oplus/camera/capmode/BaseMode;->getSupportFunction(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_9

    .line 1093
    iget-object v1, p0, Lcom/oplus/camera/capmode/BaseMode;->mPreferences:Landroid/content/SharedPreferences;

    iget-object v9, p0, Lcom/oplus/camera/capmode/BaseMode;->mActivity:Landroid/app/Activity;

    const v10, 0x7f1006dc

    .line 1094
    invoke-virtual {v9, v10}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v9

    const-string v10, "pref_none_sat_ultra_wide_angle_key"

    .line 1093
    invoke-interface {v1, v10, v9}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/oplus/camera/e/c;->I:Ljava/lang/String;

    .line 1097
    :cond_9
    iget v1, p0, Lcom/oplus/camera/capmode/BaseMode;->mOrientation:I

    iput v1, v0, Lcom/oplus/camera/e/c;->J:I

    .line 1098
    iget-boolean v1, p0, Lcom/oplus/camera/capmode/BaseMode;->mbFrontCamera:Z

    if-nez v1, :cond_b

    iget-object v1, p0, Lcom/oplus/camera/capmode/BaseMode;->mCameraUIInterface:Lcom/oplus/camera/ui/CameraUIInterface;

    invoke-interface {v1}, Lcom/oplus/camera/ui/CameraUIInterface;->e()Z

    move-result v1

    if-eqz v1, :cond_a

    goto :goto_7

    :cond_a
    const-string v1, "off"

    goto :goto_8

    :cond_b
    :goto_7
    invoke-virtual {p0}, Lcom/oplus/camera/capmode/BaseMode;->getMirror()Ljava/lang/String;

    move-result-object v1

    :goto_8
    const-string v9, "on"

    invoke-virtual {v9, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    iput-boolean v1, v0, Lcom/oplus/camera/e/c;->M:Z

    .line 1099
    iget-object v1, p0, Lcom/oplus/camera/capmode/BaseMode;->mCameraInterface:Lcom/oplus/camera/capmode/a;

    invoke-interface {v1}, Lcom/oplus/camera/capmode/a;->j()I

    move-result v1

    iput v1, v0, Lcom/oplus/camera/e/c;->O:I

    .line 1100
    iget-object v1, p0, Lcom/oplus/camera/capmode/BaseMode;->mCameraInterface:Lcom/oplus/camera/capmode/a;

    invoke-interface {v1}, Lcom/oplus/camera/capmode/a;->l()I

    move-result v1

    iput v1, v0, Lcom/oplus/camera/e/c;->P:I

    .line 1101
    invoke-virtual {p0}, Lcom/oplus/camera/capmode/BaseMode;->isSuperClearPortraitOpen()Z

    move-result v1

    iput-boolean v1, v0, Lcom/oplus/camera/e/c;->Q:Z

    .line 1102
    iget-boolean v1, p0, Lcom/oplus/camera/capmode/BaseMode;->mbBurstShot:Z

    if-eqz v1, :cond_c

    move v1, v3

    goto :goto_9

    :cond_c
    invoke-virtual {p0}, Lcom/oplus/camera/capmode/BaseMode;->getCaptureStreamNum()I

    move-result v1

    :goto_9
    iput v1, v0, Lcom/oplus/camera/e/c;->T:I

    .line 1103
    invoke-virtual {p0}, Lcom/oplus/camera/capmode/BaseMode;->getHeicCodecFormat()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/oplus/camera/e/c;->Z:Ljava/lang/String;

    const/4 v1, 0x4

    .line 1105
    iget v9, p1, Lcom/oplus/camera/aps/util/CameraApsDecision;->mApsDecisionFeatureType:I

    const/16 v10, 0x1a

    const/16 v11, 0x1e

    if-eq v1, v9, :cond_e

    const/16 v1, 0x8

    iget v9, p1, Lcom/oplus/camera/aps/util/CameraApsDecision;->mApsDecisionFeatureType:I

    if-eq v1, v9, :cond_e

    const/16 v1, 0x10

    iget v9, p1, Lcom/oplus/camera/aps/util/CameraApsDecision;->mApsDecisionFeatureType:I

    if-eq v1, v9, :cond_e

    const/16 v1, 0x18

    iget v9, p1, Lcom/oplus/camera/aps/util/CameraApsDecision;->mApsDecisionFeatureType:I

    if-eq v1, v9, :cond_e

    iget v1, p1, Lcom/oplus/camera/aps/util/CameraApsDecision;->mApsDecisionFeatureType:I

    if-eq v10, v1, :cond_e

    iget v1, p1, Lcom/oplus/camera/aps/util/CameraApsDecision;->mApsDecisionFeatureType:I

    if-eq v11, v1, :cond_e

    iget v1, p1, Lcom/oplus/camera/aps/util/CameraApsDecision;->mApsDecisionFeatureType:I

    if-eq v6, v1, :cond_e

    iget v1, p1, Lcom/oplus/camera/aps/util/CameraApsDecision;->mApsDecisionFeatureType:I

    const/16 v6, 0x1b

    if-eq v6, v1, :cond_e

    iget v1, p1, Lcom/oplus/camera/aps/util/CameraApsDecision;->mApsDecisionFeatureType:I

    const/16 v9, 0x1c

    if-eq v9, v1, :cond_e

    iget v1, p1, Lcom/oplus/camera/aps/util/CameraApsDecision;->mApsDecisionFeatureType:I

    if-eq v2, v1, :cond_e

    iget v1, p1, Lcom/oplus/camera/aps/util/CameraApsDecision;->mApsDecisionFeatureType:I

    if-eq v7, v1, :cond_e

    iget v1, p1, Lcom/oplus/camera/aps/util/CameraApsDecision;->mApsDecisionFeatureType:I

    if-eq v8, v1, :cond_e

    iget v1, p1, Lcom/oplus/camera/aps/util/CameraApsDecision;->mApsDecisionSceneMode:I

    if-eq v6, v1, :cond_e

    iget v1, p1, Lcom/oplus/camera/aps/util/CameraApsDecision;->mApsDecisionSceneMode:I

    if-ne v9, v1, :cond_d

    goto :goto_a

    :cond_d
    move v1, v4

    goto :goto_b

    :cond_e
    :goto_a
    move v1, v3

    :goto_b
    const/16 v2, 0xc

    .line 1119
    iget v6, p1, Lcom/oplus/camera/aps/util/CameraApsDecision;->mApsDecisionSceneMode:I

    const/16 v7, 0xd

    if-eq v2, v6, :cond_10

    iget v2, p1, Lcom/oplus/camera/aps/util/CameraApsDecision;->mApsDecisionSceneMode:I

    if-eq v7, v2, :cond_10

    iget v2, p1, Lcom/oplus/camera/aps/util/CameraApsDecision;->mApsDecisionSceneMode:I

    if-ne v11, v2, :cond_f

    goto :goto_c

    :cond_f
    move v2, v4

    goto :goto_d

    :cond_10
    :goto_c
    move v2, v3

    :goto_d
    if-eqz v1, :cond_11

    .line 1123
    invoke-virtual {p0, p1}, Lcom/oplus/camera/capmode/BaseMode;->disableBokehHDR(Lcom/oplus/camera/aps/util/CameraApsDecision;)Z

    move-result v1

    if-nez v1, :cond_11

    iget-boolean v1, p0, Lcom/oplus/camera/capmode/BaseMode;->mbBurstShot:Z

    if-eqz v1, :cond_14

    .line 1124
    :cond_11
    invoke-virtual {p0}, Lcom/oplus/camera/capmode/BaseMode;->isInNightProcess()Z

    move-result v1

    if-eqz v1, :cond_12

    iget-boolean v1, p0, Lcom/oplus/camera/capmode/BaseMode;->mbBurstShot:Z

    if-eqz v1, :cond_14

    :cond_12
    const-string v1, "key_support_bokeh_hdr"

    .line 1125
    invoke-virtual {p0, v1}, Lcom/oplus/camera/capmode/BaseMode;->getSupportFunction(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_13

    if-nez v2, :cond_14

    :cond_13
    iget v1, p1, Lcom/oplus/camera/aps/util/CameraApsDecision;->mApsDecisionSceneMode:I

    if-eq v7, v1, :cond_14

    iget v1, p1, Lcom/oplus/camera/aps/util/CameraApsDecision;->mApsDecisionSceneMode:I

    if-ne v10, v1, :cond_15

    .line 1128
    :cond_14
    iget-object v1, p1, Lcom/oplus/camera/aps/util/CameraApsDecision;->mCaptureEVList:[I

    iput-object v1, v0, Lcom/oplus/camera/e/c;->L:[I

    .line 1131
    :cond_15
    iget-object v1, p0, Lcom/oplus/camera/capmode/BaseMode;->mApsDecisionResultLock:Ljava/lang/Object;

    monitor-enter v1

    .line 1132
    :try_start_0
    iget-boolean v2, p0, Lcom/oplus/camera/capmode/BaseMode;->mbBurstShot:Z

    if-eqz v2, :cond_16

    move-object v2, v5

    goto :goto_e

    :cond_16
    iget-object v2, p1, Lcom/oplus/camera/aps/util/CameraApsDecision;->mApsAlgoFlag:[Ljava/lang/String;

    :goto_e
    iput-object v2, v0, Lcom/oplus/camera/e/c;->K:[Ljava/lang/String;

    .line 1133
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1135
    iget-boolean v1, p0, Lcom/oplus/camera/capmode/BaseMode;->mbBurstShot:Z

    if-eqz v1, :cond_17

    goto :goto_f

    :cond_17
    move-object v5, p1

    :goto_f
    iput-object v5, v0, Lcom/oplus/camera/e/c;->N:Lcom/oplus/camera/aps/util/CameraApsDecision;

    const-string v1, "aps_algo_pf_v3"

    .line 1137
    invoke-virtual {p0, v1}, Lcom/oplus/camera/capmode/BaseMode;->isApsDecisionAlgoOpen(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_18

    const-string v1, "aps_algo_pf_v1"

    invoke-virtual {p0, v1}, Lcom/oplus/camera/capmode/BaseMode;->isApsDecisionAlgoOpen(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_19

    :cond_18
    const-string v1, "pref_camera_pi_ai_mode_key"

    .line 1138
    invoke-virtual {p0, v1}, Lcom/oplus/camera/capmode/BaseMode;->getSupportFunction(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_19

    .line 1139
    iput-boolean v4, v0, Lcom/oplus/camera/e/c;->b:Z

    goto :goto_10

    .line 1141
    :cond_19
    invoke-direct {p0}, Lcom/oplus/camera/capmode/BaseMode;->isFaceBeautyOpen()Z

    move-result v1

    iput-boolean v1, v0, Lcom/oplus/camera/e/c;->b:Z

    .line 1144
    :goto_10
    invoke-virtual {p0}, Lcom/oplus/camera/capmode/BaseMode;->isMakeupOpen()Z

    move-result v1

    if-eqz v1, :cond_1a

    .line 1145
    invoke-virtual {p0}, Lcom/oplus/camera/capmode/BaseMode;->getCurrMakeupIndex()I

    move-result v1

    .line 1146
    invoke-virtual {p0, v1}, Lcom/oplus/camera/capmode/BaseMode;->getMakeupType(I)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v0, Lcom/oplus/camera/e/c;->e:Ljava/lang/String;

    .line 1147
    invoke-virtual {p0, v1}, Lcom/oplus/camera/capmode/BaseMode;->getMakeupItemValue(I)I

    move-result v1

    iput v1, v0, Lcom/oplus/camera/e/c;->f:I

    goto :goto_11

    :cond_1a
    const-string v1, "none"

    .line 1149
    iput-object v1, v0, Lcom/oplus/camera/e/c;->e:Ljava/lang/String;

    .line 1150
    iput v4, v0, Lcom/oplus/camera/e/c;->f:I

    .line 1153
    :goto_11
    iget-object v1, p0, Lcom/oplus/camera/capmode/BaseMode;->mOneCamera:Lcom/oplus/camera/e/d;

    iget-object v2, v0, Lcom/oplus/camera/e/c;->e:Ljava/lang/String;

    iget v5, v0, Lcom/oplus/camera/e/c;->f:I

    invoke-interface {v1, v2, v5}, Lcom/oplus/camera/e/d;->a(Ljava/lang/String;I)V

    .line 1155
    iget-boolean v1, p0, Lcom/oplus/camera/capmode/BaseMode;->mbBurstShot:Z

    if-nez v1, :cond_1b

    .line 1156
    iget v1, p1, Lcom/oplus/camera/aps/util/CameraApsDecision;->mSupportCaptureZoomFeature:I

    iput v1, v0, Lcom/oplus/camera/e/c;->U:I

    .line 1157
    iget v1, p1, Lcom/oplus/camera/aps/util/CameraApsDecision;->mApsDecisionFeatureType:I

    iput v1, v0, Lcom/oplus/camera/e/c;->X:I

    .line 1158
    iget v1, p1, Lcom/oplus/camera/aps/util/CameraApsDecision;->mApsBracketMode:I

    iput v1, v0, Lcom/oplus/camera/e/c;->V:I

    .line 1159
    iget p1, p1, Lcom/oplus/camera/aps/util/CameraApsDecision;->mAsdSceneValue:I

    iput p1, v0, Lcom/oplus/camera/e/c;->W:I

    .line 1162
    :cond_1b
    iget-boolean p1, p0, Lcom/oplus/camera/capmode/BaseMode;->mbBurstShot:Z

    if-nez p1, :cond_1c

    invoke-virtual {p0}, Lcom/oplus/camera/capmode/BaseMode;->isInNightProcess()Z

    move-result p1

    if-nez p1, :cond_1d

    invoke-virtual {p0}, Lcom/oplus/camera/capmode/BaseMode;->getNightStateDecision()I

    move-result p0

    if-lez p0, :cond_1c

    goto :goto_12

    :cond_1c
    move v3, v4

    :cond_1d
    :goto_12
    iput-boolean v3, v0, Lcom/oplus/camera/e/c;->Y:Z

    .line 1163
    iput-boolean p2, v0, Lcom/oplus/camera/e/c;->aa:Z

    return-object v0

    :catchall_0
    move-exception p0

    .line 1133
    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p0

    :cond_1e
    const-string p0, "BaseMode"

    const-string p1, "ops, decisionResult is null"

    .line 1051
    invoke-static {p0, p1}, Lcom/oplus/camera/e;->f(Ljava/lang/String;Ljava/lang/String;)V

    return-object v0
.end method

.method public getCaptureStreamNum()I
    .locals 0

    .line 796
    invoke-virtual {p0}, Lcom/oplus/camera/capmode/BaseMode;->getPreviewStreamNum()I

    move-result p0

    return p0
.end method

.method public getCurFilterListType()I
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method protected getCurrEffectMenuName()Ljava/lang/String;
    .locals 0

    .line 4662
    iget-object p0, p0, Lcom/oplus/camera/capmode/BaseMode;->mEffectMenuSelect:Ljava/lang/String;

    return-object p0
.end method

.method public getCurrFilterIndex()I
    .locals 3

    .line 5032
    iget-object v0, p0, Lcom/oplus/camera/capmode/BaseMode;->mPreferences:Landroid/content/SharedPreferences;

    if-nez v0, :cond_0

    .line 5033
    sget p0, Lcom/oplus/camera/ui/preview/a/j;->a:I

    return p0

    .line 5036
    :cond_0
    invoke-virtual {p0}, Lcom/oplus/camera/capmode/BaseMode;->getFilterEffectMenuPreferenceKey()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0}, Lcom/oplus/camera/capmode/BaseMode;->getFilterNoneIndex()I

    move-result v2

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v0

    const/4 v1, 0x0

    .line 5038
    iget v2, p0, Lcom/oplus/camera/capmode/BaseMode;->mCameraId:I

    invoke-virtual {p0, v2}, Lcom/oplus/camera/capmode/BaseMode;->getFilterTypeList(I)Ljava/util/List;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result p0

    add-int/lit8 p0, p0, -0x1

    invoke-static {v0, v1, p0}, Lcom/oplus/camera/util/Util;->a(III)I

    move-result p0

    return p0
.end method

.method public getCurrFilterType()Ljava/lang/String;
    .locals 1

    const-string v0, "pref_filter_process_key"

    .line 5027
    invoke-virtual {p0, v0}, Lcom/oplus/camera/capmode/BaseMode;->getSupportFunction(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 5028
    invoke-virtual {p0}, Lcom/oplus/camera/capmode/BaseMode;->getCurrFilterIndex()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/oplus/camera/capmode/BaseMode;->getFilterType(I)Ljava/lang/String;

    move-result-object p0

    goto :goto_0

    :cond_0
    const-string p0, "default"

    :goto_0
    return-object p0
.end method

.method protected getCurrMakeupIndex()I
    .locals 2

    .line 5994
    iget-object v0, p0, Lcom/oplus/camera/capmode/BaseMode;->mPreferences:Landroid/content/SharedPreferences;

    if-eqz v0, :cond_0

    .line 5995
    invoke-virtual {p0}, Lcom/oplus/camera/capmode/BaseMode;->getMakeupTypeKey()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0}, Lcom/oplus/camera/capmode/BaseMode;->getDefaultMakeupIndex()I

    move-result p0

    invoke-interface {v0, v1, p0}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result p0

    return p0

    .line 5997
    :cond_0
    invoke-virtual {p0}, Lcom/oplus/camera/capmode/BaseMode;->getDefaultMakeupIndex()I

    move-result p0

    return p0
.end method

.method protected getCurrentKeys(Ljava/util/List;)[Ljava/lang/String;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)[",
            "Ljava/lang/String;"
        }
    .end annotation

    .line 6080
    iget v0, p0, Lcom/oplus/camera/capmode/BaseMode;->mCameraEntryType:I

    invoke-static {v0}, Lcom/oplus/camera/entry/b;->b(I)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 6081
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    .line 6083
    :goto_0
    array-length v2, v0

    if-ge v1, v2, :cond_0

    .line 6084
    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 6085
    iget v3, p0, Lcom/oplus/camera/capmode/BaseMode;->mCameraEntryType:I

    invoke-static {v2, v3}, Lcom/oplus/camera/entry/b;->b(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-object v0

    .line 6091
    :cond_1
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p0

    new-array p0, p0, [Ljava/lang/String;

    invoke-interface {p1, p0}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object p0

    check-cast p0, [Ljava/lang/String;

    return-object p0
.end method

.method protected getCurrentKeys([Ljava/lang/String;)[Ljava/lang/String;
    .locals 4

    .line 6065
    iget v0, p0, Lcom/oplus/camera/capmode/BaseMode;->mCameraEntryType:I

    invoke-static {v0}, Lcom/oplus/camera/entry/b;->b(I)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 6066
    array-length v0, p1

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    .line 6068
    :goto_0
    array-length v2, v0

    if-ge v1, v2, :cond_0

    .line 6069
    aget-object v2, p1, v1

    .line 6070
    iget v3, p0, Lcom/oplus/camera/capmode/BaseMode;->mCameraEntryType:I

    invoke-static {v2, v3}, Lcom/oplus/camera/entry/b;->b(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-object v0

    :cond_1
    return-object p1
.end method

.method public getCurrentScreenMode()Lcom/oplus/camera/screen/b/a;
    .locals 0

    .line 8116
    iget-object p0, p0, Lcom/oplus/camera/capmode/BaseMode;->mCameraInterface:Lcom/oplus/camera/capmode/a;

    if-nez p0, :cond_0

    const/4 p0, 0x0

    goto :goto_0

    :cond_0
    invoke-interface {p0}, Lcom/oplus/camera/capmode/a;->aV()Lcom/oplus/camera/screen/b/a;

    move-result-object p0

    :goto_0
    return-object p0
.end method

.method protected getCustomBeautyKeys()[Ljava/lang/String;
    .locals 0

    const/4 p0, 0x0

    return-object p0
.end method

.method protected getCustomBeautyValues()[I
    .locals 6

    .line 6095
    invoke-virtual {p0}, Lcom/oplus/camera/capmode/BaseMode;->getCustomBeautyKeys()[Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_0

    const-string p0, "BaseMode"

    const-string v0, "getCustomBeautyValues, customBeautyKeys null"

    .line 6098
    invoke-static {p0, v0}, Lcom/oplus/camera/e;->e(Ljava/lang/String;Ljava/lang/String;)V

    const/4 p0, 0x0

    return-object p0

    .line 6103
    :cond_0
    array-length v1, v0

    new-array v1, v1, [I

    const-string v2, "func_face_beauty_custom"

    .line 6105
    invoke-virtual {p0, v2}, Lcom/oplus/camera/capmode/BaseMode;->getSupportFunction(Ljava/lang/String;)Z

    move-result v2

    const/4 v3, 0x0

    if-eqz v2, :cond_2

    .line 6106
    :goto_0
    array-length v2, v0

    if-ge v3, v2, :cond_5

    .line 6107
    iget-object v2, p0, Lcom/oplus/camera/capmode/BaseMode;->mPreferences:Landroid/content/SharedPreferences;

    if-eqz v2, :cond_1

    .line 6108
    aget-object v4, v0, v3

    invoke-virtual {p0}, Lcom/oplus/camera/capmode/BaseMode;->getDefaultCustomBeautyValues()[I

    move-result-object v5

    aget v5, v5, v3

    invoke-interface {v2, v4, v5}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v2

    aput v2, v1, v3

    goto :goto_1

    .line 6110
    :cond_1
    invoke-virtual {p0}, Lcom/oplus/camera/capmode/BaseMode;->getDefaultCustomBeautyValues()[I

    move-result-object v2

    aget v2, v2, v3

    aput v2, v1, v3

    :goto_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_2
    const-string v2, "func_face_beauty_common"

    .line 6113
    invoke-virtual {p0, v2}, Lcom/oplus/camera/capmode/BaseMode;->getSupportFunction(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 6114
    iget-object v2, p0, Lcom/oplus/camera/capmode/BaseMode;->mPreferences:Landroid/content/SharedPreferences;

    if-eqz v2, :cond_3

    .line 6115
    aget-object v4, v0, v3

    invoke-virtual {p0}, Lcom/oplus/camera/capmode/BaseMode;->getDefaultCommonBeautyValue()I

    move-result p0

    invoke-interface {v2, v4, p0}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result p0

    aput p0, v1, v3

    goto :goto_2

    .line 6117
    :cond_3
    aput v3, v1, v3

    :goto_2
    const/4 p0, 0x1

    .line 6120
    :goto_3
    array-length v2, v0

    if-ge p0, v2, :cond_5

    .line 6121
    aput v3, v1, p0

    add-int/lit8 p0, p0, 0x1

    goto :goto_3

    :cond_4
    move p0, v3

    .line 6124
    :goto_4
    array-length v2, v0

    if-ge p0, v2, :cond_5

    .line 6125
    aput v3, v1, p0

    add-int/lit8 p0, p0, 0x1

    goto :goto_4

    :cond_5
    return-object v1
.end method

.method public getDecreasedSizeForThirdApp(Lcom/oplus/camera/e/h;)Landroid/util/Size;
    .locals 2

    .line 4070
    invoke-direct {p0}, Lcom/oplus/camera/capmode/BaseMode;->isSystemAppCall()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 p0, 0x0

    return-object p0

    .line 4074
    :cond_0
    iget-object v0, p0, Lcom/oplus/camera/capmode/BaseMode;->mPreferences:Landroid/content/SharedPreferences;

    iget-object p0, p0, Lcom/oplus/camera/capmode/BaseMode;->mActivity:Landroid/app/Activity;

    const v1, 0x7f1002be

    .line 4075
    invoke-virtual {p0, v1}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object p0

    const-string v1, "pref_camera_photo_ratio_key"

    .line 4074
    invoke-interface {v0, v1, p0}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    const/16 v0, 0x100

    .line 4077
    invoke-virtual {p1, v0}, Lcom/oplus/camera/e/h;->a(I)Ljava/util/List;

    move-result-object p1

    .line 4079
    invoke-static {p0}, Lcom/oplus/camera/util/Util;->a(Ljava/lang/String;)I

    move-result p0

    const-string v0, "5000000"

    invoke-static {p1, v0, p0}, Lcom/oplus/camera/util/Util;->a(Ljava/util/List;Ljava/lang/String;I)Landroid/util/Size;

    move-result-object p0

    return-object p0
.end method

.method public getDefaultAFMode()I
    .locals 4

    .line 3956
    iget-object v0, p0, Lcom/oplus/camera/capmode/BaseMode;->mOneCamera:Lcom/oplus/camera/e/d;

    const/4 v1, 0x4

    if-eqz v0, :cond_1

    invoke-interface {v0}, Lcom/oplus/camera/e/d;->e()Lcom/oplus/camera/e/h;

    move-result-object v0

    if-eqz v0, :cond_1

    const/4 v0, 0x1

    .line 3957
    new-array v2, v0, [[I

    const/4 v3, 0x0

    iget-object p0, p0, Lcom/oplus/camera/capmode/BaseMode;->mOneCamera:Lcom/oplus/camera/e/d;

    invoke-interface {p0}, Lcom/oplus/camera/e/d;->e()Lcom/oplus/camera/e/h;

    move-result-object p0

    invoke-virtual {p0}, Lcom/oplus/camera/e/h;->A()[I

    move-result-object p0

    aput-object p0, v2, v3

    invoke-static {v2}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object p0

    if-eqz p0, :cond_1

    .line 3959
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v2

    if-lez v2, :cond_1

    .line 3960
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {p0, v2}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    return v1

    .line 3962
    :cond_0
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {p0, v2}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_1

    return v0

    .line 3968
    :cond_1
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "getDefaultAFMode, focusMode: "

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string v0, "BaseMode"

    invoke-static {v0, p0}, Lcom/oplus/camera/e;->a(Ljava/lang/String;Ljava/lang/String;)V

    return v1
.end method

.method public getDefaultBlurValue()I
    .locals 0

    .line 7276
    iget-boolean p0, p0, Lcom/oplus/camera/capmode/BaseMode;->mbFrontCamera:Z

    if-eqz p0, :cond_0

    const-string p0, "com.oplus.front.blur.value.default"

    .line 7277
    invoke-static {p0}, Lcom/oplus/camera/aps/config/CameraConfig;->getConfigIntValue(Ljava/lang/String;)I

    move-result p0

    return p0

    :cond_0
    const-string p0, "com.oplus.rear.blur.value.default"

    .line 7279
    invoke-static {p0}, Lcom/oplus/camera/aps/config/CameraConfig;->getConfigIntValue(Ljava/lang/String;)I

    move-result p0

    return p0
.end method

.method public getDefaultCaptureNumber()I
    .locals 2

    .line 761
    iget-object v0, p0, Lcom/oplus/camera/capmode/BaseMode;->mApsDecisionResultLock:Ljava/lang/Object;

    monitor-enter v0

    .line 762
    :try_start_0
    iget-object v1, p0, Lcom/oplus/camera/capmode/BaseMode;->mDecisionResult:Lcom/oplus/camera/aps/util/CameraApsDecision;

    if-eqz v1, :cond_0

    .line 763
    iget-object p0, p0, Lcom/oplus/camera/capmode/BaseMode;->mDecisionResult:Lcom/oplus/camera/aps/util/CameraApsDecision;

    iget p0, p0, Lcom/oplus/camera/aps/util/CameraApsDecision;->mMultiFrameCount:I

    monitor-exit v0

    return p0

    :cond_0
    const/4 p0, 0x1

    .line 765
    monitor-exit v0

    return p0

    :catchall_0
    move-exception p0

    .line 767
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method protected getDefaultCommonBeautyValue()I
    .locals 2

    .line 5954
    invoke-virtual {p0}, Lcom/oplus/camera/capmode/BaseMode;->isFaceBeautyDefaultOff()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    return v1

    .line 5958
    :cond_0
    iget-boolean v0, p0, Lcom/oplus/camera/capmode/BaseMode;->mbFrontCamera:Z

    if-eqz v0, :cond_1

    .line 5959
    invoke-virtual {p0}, Lcom/oplus/camera/capmode/BaseMode;->getFrontDefaultCommonBeautyValue()I

    move-result p0

    return p0

    :cond_1
    return v1
.end method

.method protected getDefaultCustomBeautyValues()[I
    .locals 0

    .line 5966
    sget-object p0, Lcom/oplus/camera/capmode/BaseMode;->a:[I

    return-object p0
.end method

.method protected getDefaultHDRValue()Ljava/lang/String;
    .locals 1

    .line 5713
    invoke-virtual {p0}, Lcom/oplus/camera/capmode/BaseMode;->getHDRKey()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/oplus/camera/entry/b;->d(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iget p0, p0, Lcom/oplus/camera/capmode/BaseMode;->mCameraId:I

    invoke-static {v0, p0}, Lcom/oplus/camera/aps/config/CameraConfig;->getOptionKeyDefaultValue(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method protected getDefaultMakeupIndex()I
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method protected getDefaultMakeupValues()[I
    .locals 0

    .line 5990
    sget-object p0, Lcom/oplus/camera/ui/preview/a/g;->a:[I

    return-object p0
.end method

.method public getDefaultZoomValue(Lcom/oplus/camera/e/h;)F
    .locals 0

    const/high16 p0, 0x3f800000    # 1.0f

    return p0
.end method

.method public getDisplayHighPictureSize()D
    .locals 4

    .line 4091
    iget v0, p0, Lcom/oplus/camera/capmode/BaseMode;->mCameraId:I

    const-string v1, "com.oplus.high.picturesize.name"

    invoke-static {v1, v0}, Lcom/oplus/camera/aps/config/CameraConfig;->getConfigIntValue(Ljava/lang/String;I)I

    move-result v0

    div-int/lit8 v0, v0, 0x64

    .line 4095
    iget-object v1, p0, Lcom/oplus/camera/capmode/BaseMode;->mPreferences:Landroid/content/SharedPreferences;

    const-string v2, "pref_ultra_wide_high_picture_size_key"

    const-string v3, "off"

    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "on"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    const-string v2, "com.oplus.ultra.wide.high.supported.picturesize"

    if-eqz v1, :cond_0

    iget v1, p0, Lcom/oplus/camera/capmode/BaseMode;->mCameraId:I

    .line 4096
    invoke-static {v2, v1}, Lcom/oplus/camera/aps/config/CameraConfig;->getSizeConfigValue(Ljava/lang/String;I)Landroid/util/Size;

    move-result-object v1

    if-eqz v1, :cond_0

    goto :goto_0

    :cond_0
    const-string v2, "com.oplus.high.picturesize"

    :goto_0
    if-lez v0, :cond_1

    int-to-double v0, v0

    goto :goto_1

    .line 4100
    :cond_1
    iget-object v0, p0, Lcom/oplus/camera/capmode/BaseMode;->mActivity:Landroid/app/Activity;

    iget p0, p0, Lcom/oplus/camera/capmode/BaseMode;->mCameraId:I

    .line 4101
    invoke-static {v2, p0}, Lcom/oplus/camera/aps/config/CameraConfig;->getSizeConfigValue(Ljava/lang/String;I)Landroid/util/Size;

    move-result-object p0

    .line 4100
    invoke-static {v0, p0}, Lcom/oplus/camera/util/Util;->a(Landroid/content/Context;Landroid/util/Size;)D

    move-result-wide v0

    :goto_1
    return-wide v0
.end method

.method public getEffectMenuKeyByMode()Ljava/lang/String;
    .locals 1

    .line 5097
    iget p0, p0, Lcom/oplus/camera/capmode/BaseMode;->mCameraEntryType:I

    const-string v0, "pref_filter_menu"

    invoke-static {v0, p0}, Lcom/oplus/camera/entry/b;->b(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public getEntryGalleryAnim()I
    .locals 1

    .line 7609
    invoke-static {}, Lcom/oplus/camera/util/Util;->t()Z

    move-result v0

    if-eqz v0, :cond_0

    const p0, 0x7f01008e

    return p0

    :cond_0
    const/4 v0, 0x1

    .line 7613
    iget-object p0, p0, Lcom/oplus/camera/capmode/BaseMode;->mActivity:Landroid/app/Activity;

    invoke-virtual {p0}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    invoke-virtual {p0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object p0

    .line 7614
    invoke-virtual {p0}, Landroid/content/res/Configuration;->getLayoutDirection()I

    move-result p0

    if-ne v0, p0, :cond_1

    const p0, 0x7f010090

    goto :goto_0

    :cond_1
    const p0, 0x7f01008c

    :goto_0
    return p0
.end method

.method public getEnvironmentTipsThreshold()I
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method protected getExif(Lcom/oplus/ocs/camera/CameraPictureCallback$CameraPictureResult;)Ljava/lang/String;
    .locals 4

    .line 5849
    invoke-virtual {p0}, Lcom/oplus/camera/capmode/BaseMode;->getExifCameraMode()Ljava/lang/String;

    move-result-object v0

    iget v1, p0, Lcom/oplus/camera/capmode/BaseMode;->mCameraId:I

    invoke-static {v0, v1}, Lcom/oplus/camera/g/b;->a(Ljava/lang/String;I)I

    move-result v0

    .line 5851
    iget v1, p0, Lcom/oplus/camera/capmode/BaseMode;->mCameraId:I

    invoke-virtual {p0, v1}, Lcom/oplus/camera/capmode/BaseMode;->getProperCameraId(I)I

    move-result v1

    iget v2, p0, Lcom/oplus/camera/capmode/BaseMode;->mCaptureOrientation:I

    invoke-virtual {p0, v1, v2}, Lcom/oplus/camera/capmode/BaseMode;->getJpegOrientation(II)I

    move-result v1

    if-lez v1, :cond_0

    or-int/lit8 v0, v0, 0x20

    .line 5857
    :cond_0
    invoke-virtual {p0}, Lcom/oplus/camera/capmode/BaseMode;->getFaceBeautyCurrIndex()I

    move-result v2

    if-lez v2, :cond_1

    or-int/lit8 v0, v0, 0x2

    .line 5861
    :cond_1
    invoke-virtual {p0}, Lcom/oplus/camera/capmode/BaseMode;->isUltraHighResolutionOpened()Z

    move-result v2

    if-eqz v2, :cond_2

    or-int/lit16 v0, v0, 0x2000

    .line 5865
    :cond_2
    invoke-virtual {p0}, Lcom/oplus/camera/capmode/BaseMode;->isBlurOpen()Z

    move-result v2

    if-eqz v2, :cond_3

    or-int/lit8 v0, v0, 0x10

    .line 5869
    :cond_3
    invoke-virtual {p0}, Lcom/oplus/camera/capmode/BaseMode;->getCurrFilterIndex()I

    move-result v2

    sget v3, Lcom/oplus/camera/ui/preview/a/j;->a:I

    if-eq v2, v3, :cond_4

    or-int/lit16 v0, v0, 0x400

    :cond_4
    if-eqz p1, :cond_5

    .line 5873
    sget-object v2, Lcom/oplus/ocs/camera/CameraParameter;->IMAGE_CATEGORY_SUPER_TEXT_ENABLE:Lcom/oplus/ocs/camera/CameraParameter$CaptureResultKey;

    invoke-virtual {p1, v2}, Lcom/oplus/ocs/camera/CameraPictureCallback$CameraPictureResult;->get(Lcom/oplus/ocs/camera/CameraParameter$CaptureResultKey;)Ljava/lang/Object;

    move-result-object p1

    const-string v2, "1"

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_5

    or-int/lit16 v0, v0, 0x1000

    .line 5878
    :cond_5
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getExif, exif: "

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", jpegOrientation: "

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v1, "BaseMode"

    invoke-static {v1, p1}, Lcom/oplus/camera/e;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 5880
    iget-object p0, p0, Lcom/oplus/camera/capmode/BaseMode;->mOneCamera:Lcom/oplus/camera/e/d;

    if-eqz p0, :cond_6

    .line 5881
    invoke-interface {p0, v0}, Lcom/oplus/camera/e/d;->w(I)V

    .line 5884
    :cond_6
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string p1, "Oplus_"

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method protected getExifCameraMode()Ljava/lang/String;
    .locals 0

    .line 5888
    invoke-virtual {p0}, Lcom/oplus/camera/capmode/BaseMode;->getCameraMode()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public getExpectedFrameRate()I
    .locals 0

    const/16 p0, 0x1e

    return p0
.end method

.method public getFaceBeautyCurrIndex()I
    .locals 3

    const-string v0, "func_face_beauty_process"

    .line 4879
    invoke-virtual {p0, v0}, Lcom/oplus/camera/capmode/BaseMode;->getSupportFunction(Ljava/lang/String;)Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    .line 4885
    :cond_0
    invoke-virtual {p0}, Lcom/oplus/camera/capmode/BaseMode;->getFaceBeautyKey()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/oplus/camera/capmode/BaseMode;->mPreferences:Landroid/content/SharedPreferences;

    if-eqz v0, :cond_1

    .line 4886
    invoke-virtual {p0}, Lcom/oplus/camera/capmode/BaseMode;->getFaceBeautyKey()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0}, Lcom/oplus/camera/capmode/BaseMode;->getFaceBeautyDefaultIndex()I

    move-result p0

    invoke-interface {v0, v2, p0}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result p0

    goto :goto_0

    :cond_1
    move p0, v1

    :goto_0
    if-gtz p0, :cond_2

    return v1

    :cond_2
    const/16 p0, 0x66

    return p0
.end method

.method protected getFaceBeautyDefaultIndex()I
    .locals 2

    .line 4909
    invoke-virtual {p0}, Lcom/oplus/camera/capmode/BaseMode;->isFaceBeautyDefaultOff()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    return v1

    :cond_0
    const-string v0, "func_face_beauty_common"

    .line 4913
    invoke-virtual {p0, v0}, Lcom/oplus/camera/capmode/BaseMode;->getSupportFunction(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lcom/oplus/camera/capmode/BaseMode;->getDefaultCommonBeautyValue()I

    move-result v0

    if-nez v0, :cond_2

    :cond_1
    const-string v0, "func_face_beauty_custom"

    .line 4914
    invoke-virtual {p0, v0}, Lcom/oplus/camera/capmode/BaseMode;->getSupportFunction(Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_3

    :cond_2
    const/16 p0, 0x66

    return p0

    :cond_3
    return v1
.end method

.method protected getFaceBeautyItemDefaultValue(I)I
    .locals 1

    const-string v0, "func_face_beauty_common"

    .line 4922
    invoke-virtual {p0, v0}, Lcom/oplus/camera/capmode/BaseMode;->getSupportFunction(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    if-nez p1, :cond_0

    .line 4924
    invoke-virtual {p0}, Lcom/oplus/camera/capmode/BaseMode;->getDefaultCommonBeautyValue()I

    move-result p0

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0

    :cond_1
    const-string v0, "func_face_beauty_custom"

    .line 4928
    invoke-virtual {p0, v0}, Lcom/oplus/camera/capmode/BaseMode;->getSupportFunction(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 4929
    invoke-virtual {p0}, Lcom/oplus/camera/capmode/BaseMode;->getDefaultCustomBeautyValues()[I

    move-result-object p0

    aget p0, p0, p1

    return p0

    :cond_2
    const p0, -0x186a0

    return p0
.end method

.method public getFaceBeautyItemValue(I)I
    .locals 2

    .line 4830
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "getFaceBeautyItemValue, index: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "BaseMode"

    invoke-static {v1, v0}, Lcom/oplus/camera/e;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 4832
    invoke-virtual {p0}, Lcom/oplus/camera/capmode/BaseMode;->getCustomBeautyKeys()[Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 4833
    iget-object v0, p0, Lcom/oplus/camera/capmode/BaseMode;->mPreferences:Landroid/content/SharedPreferences;

    invoke-virtual {p0}, Lcom/oplus/camera/capmode/BaseMode;->getCustomBeautyKeys()[Ljava/lang/String;

    move-result-object v1

    aget-object v1, v1, p1

    invoke-virtual {p0, p1}, Lcom/oplus/camera/capmode/BaseMode;->getFaceBeautyItemDefaultValue(I)I

    move-result p0

    invoke-interface {v0, v1, p0}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result p0

    return p0

    .line 4836
    :cond_0
    invoke-virtual {p0, p1}, Lcom/oplus/camera/capmode/BaseMode;->getFaceBeautyItemDefaultValue(I)I

    move-result p0

    return p0
.end method

.method protected getFaceBeautyKey()Ljava/lang/String;
    .locals 0

    const/4 p0, 0x0

    return-object p0
.end method

.method public getFaceBeautyMenuType()I
    .locals 2

    const-string v0, "func_face_beauty_custom"

    .line 4794
    invoke-virtual {p0, v0}, Lcom/oplus/camera/capmode/BaseMode;->getSupportFunction(Ljava/lang/String;)Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    return v1

    :cond_0
    const-string v0, "func_face_beauty_common"

    .line 4796
    invoke-virtual {p0, v0}, Lcom/oplus/camera/capmode/BaseMode;->getSupportFunction(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 p0, 0x2

    return p0

    :cond_1
    const-string v0, "pref_filter_process_key"

    .line 4798
    invoke-virtual {p0, v0}, Lcom/oplus/camera/capmode/BaseMode;->getSupportFunction(Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_2

    return v1

    :cond_2
    const/4 p0, 0x0

    return p0
.end method

.method protected getFaceBeautyModeIndex()I
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public getFilterCategory()Lcom/oplus/camera/ui/preview/a/l$a;
    .locals 0

    .line 6223
    sget-object p0, Lcom/oplus/camera/ui/preview/a/l$a;->Polarr:Lcom/oplus/camera/ui/preview/a/l$a;

    return-object p0
.end method

.method public getFilterCurrName()Ljava/lang/String;
    .locals 3

    .line 4722
    invoke-virtual {p0}, Lcom/oplus/camera/capmode/BaseMode;->getCurrFilterIndex()I

    move-result v0

    .line 4724
    iget-object v1, p0, Lcom/oplus/camera/capmode/BaseMode;->mActivity:Landroid/app/Activity;

    iget v2, p0, Lcom/oplus/camera/capmode/BaseMode;->mCameraId:I

    invoke-virtual {p0, v2}, Lcom/oplus/camera/capmode/BaseMode;->getFilterNameIdList(I)Ljava/util/List;

    move-result-object p0

    invoke-interface {p0, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Integer;

    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result p0

    invoke-virtual {v1, p0}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public getFilterEffectMenuPreferenceKey()Ljava/lang/String;
    .locals 0

    const-string p0, "key_filter_index"

    return-object p0
.end method

.method public getFilterEffectPrevSelectedKey()Ljava/lang/String;
    .locals 0

    const-string p0, "key_filter_prev_selected_filterType"

    return-object p0
.end method

.method protected getFilterNameIdList(I)Ljava/util/List;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .line 2874
    sget-object p0, Lcom/oplus/camera/ui/preview/a/j;->e:Lcom/oplus/camera/ui/preview/a/i;

    invoke-static {p1}, Lcom/oplus/camera/e/a;->a(I)Z

    move-result p1

    invoke-virtual {p0, p1}, Lcom/oplus/camera/ui/preview/a/i;->b(Z)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method public getFilterNoneIndex()I
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public getFilterRedpotKey(Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    const/4 p0, 0x0

    return-object p0
.end method

.method public getFilterTitleTexId()I
    .locals 0

    const p0, 0x7f10014c

    return p0
.end method

.method protected getFilterType(I)Ljava/lang/String;
    .locals 1

    .line 5556
    iget v0, p0, Lcom/oplus/camera/capmode/BaseMode;->mCameraId:I

    invoke-virtual {p0, v0}, Lcom/oplus/camera/capmode/BaseMode;->getFilterTypeList(I)Ljava/util/List;

    move-result-object p0

    invoke-interface {p0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/String;

    return-object p0
.end method

.method protected getFilterTypeList(I)Ljava/util/List;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 2878
    sget-object p0, Lcom/oplus/camera/ui/preview/a/j;->e:Lcom/oplus/camera/ui/preview/a/i;

    invoke-static {p1}, Lcom/oplus/camera/e/a;->a(I)Z

    move-result p1

    invoke-virtual {p0, p1}, Lcom/oplus/camera/ui/preview/a/i;->a(Z)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method public getFlashMode()Ljava/lang/String;
    .locals 6

    .line 3974
    iget-boolean v0, p0, Lcom/oplus/camera/capmode/BaseMode;->mbFlashTemporaryDisabled:Z

    const-string v1, "pref_camera_flashmode_key"

    const-string v2, "off"

    const-string v3, "torch"

    if-eqz v0, :cond_1

    const-string v0, "com.oplus.feature.flash.full.zoom.support"

    .line 3976
    invoke-static {v0}, Lcom/oplus/camera/aps/config/CameraConfig;->getConfigBooleanValue(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 3977
    invoke-virtual {p0}, Lcom/oplus/camera/capmode/BaseMode;->getZoomValue()F

    move-result v0

    invoke-virtual {p0, v0}, Lcom/oplus/camera/capmode/BaseMode;->withinSatMainAndWideRange(F)Z

    move-result v0

    if-nez v0, :cond_0

    .line 3978
    invoke-virtual {p0}, Lcom/oplus/camera/capmode/BaseMode;->isCaptureModeType()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 3979
    invoke-virtual {p0, v1}, Lcom/oplus/camera/capmode/BaseMode;->getSupportFunction(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 3980
    invoke-virtual {p0}, Lcom/oplus/camera/capmode/BaseMode;->getRearFlashMode()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v3, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_0

    return-object v3

    :cond_0
    return-object v2

    :cond_1
    const-string v0, "pref_camera_videoflashmode_key"

    .line 3987
    invoke-virtual {p0, v0}, Lcom/oplus/camera/capmode/BaseMode;->getSupportFunction(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 3988
    invoke-direct {p0}, Lcom/oplus/camera/capmode/BaseMode;->getVideoFlashMode()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_2
    const-string v0, "pref_camera_film_mode_key"

    .line 3991
    invoke-virtual {p0, v0}, Lcom/oplus/camera/capmode/BaseMode;->getSupportFunction(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 3992
    invoke-direct {p0}, Lcom/oplus/camera/capmode/BaseMode;->getMovieFlashMode()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_3
    const-string v0, "pref_camera_torch_mode_key"

    .line 3995
    invoke-virtual {p0, v0}, Lcom/oplus/camera/capmode/BaseMode;->getSupportFunction(Ljava/lang/String;)Z

    move-result v4

    const-string v5, "func_torch_soft_light"

    if-nez v4, :cond_6

    invoke-virtual {p0, v5}, Lcom/oplus/camera/capmode/BaseMode;->getSupportFunction(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_4

    goto :goto_0

    .line 4010
    :cond_4
    invoke-virtual {p0, v1}, Lcom/oplus/camera/capmode/BaseMode;->getSupportFunction(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 4011
    invoke-virtual {p0}, Lcom/oplus/camera/capmode/BaseMode;->getRearFlashMode()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_5
    return-object v2

    .line 3996
    :cond_6
    :goto_0
    invoke-virtual {p0}, Lcom/oplus/camera/capmode/BaseMode;->getTorchMode()Ljava/lang/String;

    move-result-object v1

    .line 3998
    invoke-virtual {p0, v5}, Lcom/oplus/camera/capmode/BaseMode;->getSupportFunction(Ljava/lang/String;)Z

    move-result v2

    const-string v4, "on"

    if-eqz v2, :cond_7

    invoke-virtual {v4, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_7

    move-object v1, v3

    .line 4002
    :cond_7
    invoke-virtual {p0, v0}, Lcom/oplus/camera/capmode/BaseMode;->getSupportFunction(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_8

    invoke-virtual {v4, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_8

    sget-object v0, Lcom/oplus/camera/ui/inverse/e;->INS:Lcom/oplus/camera/ui/inverse/e;

    iget-object p0, p0, Lcom/oplus/camera/capmode/BaseMode;->mActivity:Landroid/app/Activity;

    .line 4003
    invoke-virtual {v0, p0}, Lcom/oplus/camera/ui/inverse/e;->isInverseAble(Landroid/content/Context;)Z

    move-result p0

    if-eqz p0, :cond_8

    move-object v1, v3

    :cond_8
    return-object v1
.end method

.method protected getFrontDefaultCommonBeautyValue()I
    .locals 0

    const/16 p0, 0x28

    return p0
.end method

.method public getFrontEnable()Z
    .locals 0

    const/4 p0, 0x1

    return p0
.end method

.method public getFullPictureSizeType()Ljava/lang/String;
    .locals 0

    const-string p0, "full"

    return-object p0
.end method

.method public getGrandTourFilterKey(Ljava/lang/String;)Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method protected getGuideLineKey()Ljava/lang/String;
    .locals 0

    const-string p0, "pref_camera_line_photo"

    return-object p0
.end method

.method public getGuideLineType()Ljava/lang/String;
    .locals 2

    .line 6185
    invoke-virtual {p0}, Lcom/oplus/camera/capmode/BaseMode;->getGuideLineKey()Ljava/lang/String;

    move-result-object v0

    .line 6187
    iget-object p0, p0, Lcom/oplus/camera/capmode/BaseMode;->mPreferences:Landroid/content/SharedPreferences;

    const/4 v1, 0x0

    if-eqz p0, :cond_0

    if-eqz v0, :cond_0

    .line 6188
    invoke-interface {p0, v0, v1}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_0
    return-object v1
.end method

.method protected getHDRKey()Ljava/lang/String;
    .locals 1

    .line 5705
    iget p0, p0, Lcom/oplus/camera/capmode/BaseMode;->mCameraEntryType:I

    const-string v0, "pref_camera_hdr_mode_key"

    invoke-static {v0, p0}, Lcom/oplus/camera/entry/b;->b(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method protected getHDRModeValue(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    .line 5709
    iget-object v0, p0, Lcom/oplus/camera/capmode/BaseMode;->mPreferences:Landroid/content/SharedPreferences;

    invoke-virtual {p0}, Lcom/oplus/camera/capmode/BaseMode;->getDefaultHDRValue()Ljava/lang/String;

    move-result-object p0

    invoke-interface {v0, p1, p0}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method protected getHalMemory()J
    .locals 2

    const-string p0, "com.oplus.hal.memory.common"

    .line 7992
    invoke-static {p0}, Lcom/oplus/camera/aps/config/CameraConfig;->getConfigIntValue(Ljava/lang/String;)I

    move-result p0

    int-to-long v0, p0

    return-wide v0
.end method

.method public getHeicCodecFormat()Ljava/lang/String;
    .locals 2

    .line 7206
    iget-object v0, p0, Lcom/oplus/camera/capmode/BaseMode;->mPreferences:Landroid/content/SharedPreferences;

    if-eqz v0, :cond_2

    .line 7207
    invoke-virtual {p0}, Lcom/oplus/camera/capmode/BaseMode;->isSuperTextOpen()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/oplus/camera/capmode/BaseMode;->isHasSuperTextDetectResult()Z

    move-result v0

    if-nez v0, :cond_2

    :cond_0
    iget-boolean v0, p0, Lcom/oplus/camera/capmode/BaseMode;->mbBurstShot:Z

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/oplus/camera/capmode/BaseMode;->mCameraInterface:Lcom/oplus/camera/capmode/a;

    .line 7209
    invoke-interface {v0}, Lcom/oplus/camera/capmode/a;->i()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 7210
    invoke-virtual {p0}, Lcom/oplus/camera/capmode/BaseMode;->isCaptureModeType()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 7211
    invoke-virtual {p0}, Lcom/oplus/camera/capmode/BaseMode;->isVideoRecording()Z

    move-result v0

    if-nez v0, :cond_2

    .line 7212
    invoke-virtual {p0}, Lcom/oplus/camera/capmode/BaseMode;->is10bitsHeicEncodeEnable()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lcom/oplus/camera/capmode/BaseMode;->isHeifEnable()Z

    move-result v0

    if-eqz v0, :cond_1

    const-string p0, "heic_10bits"

    return-object p0

    .line 7214
    :cond_1
    iget-object p0, p0, Lcom/oplus/camera/capmode/BaseMode;->mPreferences:Landroid/content/SharedPreferences;

    const-string v0, "pref_photo_codec_key"

    const-string v1, "JPEG"

    invoke-interface {p0, v0, v1}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    const-string v0, "HEIF"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_2

    const-string p0, "heic_8bits"

    return-object p0

    :cond_2
    const/4 p0, 0x0

    return-object p0
.end method

.method protected getHighBrightnessValue()F
    .locals 0

    .line 7780
    sget-object p0, Lcom/oplus/camera/ui/inverse/e;->INS:Lcom/oplus/camera/ui/inverse/e;

    invoke-virtual {p0}, Lcom/oplus/camera/ui/inverse/e;->getBrightness()F

    move-result p0

    return p0
.end method

.method protected getHintTextId()I
    .locals 0

    const/4 p0, -0x1

    return p0
.end method

.method public getHyperLapseRate()I
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public getImageFormat()I
    .locals 0

    const/16 p0, 0x100

    return p0
.end method

.method public getIsBurstShotCapturing()Z
    .locals 0

    .line 4473
    iget-boolean p0, p0, Lcom/oplus/camera/capmode/BaseMode;->mbInBurstShotCapturing:Z

    return p0
.end method

.method protected getIsCapturingState()Z
    .locals 0

    .line 4469
    iget-boolean p0, p0, Lcom/oplus/camera/capmode/BaseMode;->mbInCapturing:Z

    return p0
.end method

.method public getIsShowPostCaptureAlert()Z
    .locals 0

    .line 1772
    iget-boolean p0, p0, Lcom/oplus/camera/capmode/BaseMode;->mbShowPostCaptureAlert:Z

    return p0
.end method

.method protected getJpegOrientation(II)I
    .locals 0

    .line 4790
    invoke-virtual {p0, p1}, Lcom/oplus/camera/capmode/BaseMode;->getCameraInfo(I)Lcom/oplus/camera/e/h;

    move-result-object p0

    invoke-static {p0, p2}, Lcom/oplus/camera/e/a;->b(Lcom/oplus/camera/e/h;I)I

    move-result p0

    return p0
.end method

.method public getLockedScreenMode()Lcom/oplus/camera/screen/f$a;
    .locals 0

    const/4 p0, 0x0

    return-object p0
.end method

.method public getLogicCameraType()I
    .locals 1

    .line 3944
    iget-object v0, p0, Lcom/oplus/camera/capmode/BaseMode;->mOneCamera:Lcom/oplus/camera/e/d;

    if-eqz v0, :cond_0

    .line 3945
    invoke-interface {v0}, Lcom/oplus/camera/e/d;->e()Lcom/oplus/camera/e/h;

    move-result-object v0

    if-eqz v0, :cond_0

    const-string v0, "com.oplus.zsl.support.preversion"

    .line 3946
    invoke-static {v0}, Lcom/oplus/camera/aps/config/CameraConfig;->getConfigBooleanValue(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 3947
    iget-object p0, p0, Lcom/oplus/camera/capmode/BaseMode;->mOneCamera:Lcom/oplus/camera/e/d;

    invoke-interface {p0}, Lcom/oplus/camera/e/d;->e()Lcom/oplus/camera/e/h;

    move-result-object p0

    invoke-virtual {p0}, Lcom/oplus/camera/e/h;->I()I

    move-result p0

    goto :goto_0

    :cond_0
    const/4 p0, -0x1

    :goto_0
    return p0
.end method

.method public getMakerNote()Lcom/oplus/camera/statistics/CameraStatisticsUtil$MakerNote;
    .locals 2

    .line 6934
    new-instance v0, Lcom/oplus/camera/statistics/CameraStatisticsUtil$MakerNote;

    invoke-direct {v0}, Lcom/oplus/camera/statistics/CameraStatisticsUtil$MakerNote;-><init>()V

    .line 6936
    iget-object v1, p0, Lcom/oplus/camera/capmode/BaseMode;->mPreviewEffectProcess:Lcom/oplus/camera/ui/preview/a/t;

    if-eqz v1, :cond_0

    const-string v1, "pref_filter_process_key"

    invoke-virtual {p0, v1}, Lcom/oplus/camera/capmode/BaseMode;->needUploadOplusStatistics(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 6937
    invoke-virtual {p0}, Lcom/oplus/camera/capmode/BaseMode;->getCurrFilterIndex()I

    move-result p0

    invoke-static {p0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p0

    iput-object p0, v0, Lcom/oplus/camera/statistics/CameraStatisticsUtil$MakerNote;->O:Ljava/lang/String;

    :cond_0
    return-object v0
.end method

.method protected getMakeupItemValue(I)I
    .locals 2

    .line 6020
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "getMakeupItemValue, index: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "BaseMode"

    invoke-static {v1, v0}, Lcom/oplus/camera/e;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 6022
    invoke-virtual {p0}, Lcom/oplus/camera/capmode/BaseMode;->getMakeupKeys()[Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/oplus/camera/capmode/BaseMode;->mPreferences:Landroid/content/SharedPreferences;

    if-eqz v0, :cond_0

    .line 6023
    invoke-virtual {p0}, Lcom/oplus/camera/capmode/BaseMode;->getMakeupKeys()[Ljava/lang/String;

    move-result-object v1

    aget-object v1, v1, p1

    invoke-virtual {p0}, Lcom/oplus/camera/capmode/BaseMode;->getDefaultMakeupValues()[I

    move-result-object p0

    aget p0, p0, p1

    invoke-interface {v0, v1, p0}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result p0

    return p0

    .line 6026
    :cond_0
    invoke-virtual {p0}, Lcom/oplus/camera/capmode/BaseMode;->getDefaultMakeupValues()[I

    move-result-object p0

    aget p0, p0, p1

    return p0
.end method

.method protected getMakeupKeys()[Ljava/lang/String;
    .locals 0

    const/4 p0, 0x0

    return-object p0
.end method

.method protected getMakeupOpenState()I
    .locals 0

    const/4 p0, 0x1

    return p0
.end method

.method protected getMakeupType(I)Ljava/lang/String;
    .locals 0

    .line 6014
    invoke-virtual {p0}, Lcom/oplus/camera/capmode/BaseMode;->getMakeupTypeList()Ljava/util/List;

    move-result-object p0

    .line 6016
    invoke-interface {p0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/String;

    return-object p0
.end method

.method protected getMakeupTypeKey()Ljava/lang/String;
    .locals 0

    const-string p0, "pref_common_makeup_type"

    return-object p0
.end method

.method protected getMakeupTypeList()Ljava/util/List;
    .locals 0

    .line 5982
    sget-object p0, Lcom/oplus/camera/ui/preview/a/g;->b:Ljava/util/List;

    return-object p0
.end method

.method protected getMinZoomValue()F
    .locals 0

    .line 3336
    iget-object p0, p0, Lcom/oplus/camera/capmode/BaseMode;->mCameraInterface:Lcom/oplus/camera/capmode/a;

    if-eqz p0, :cond_0

    .line 3337
    invoke-interface {p0}, Lcom/oplus/camera/capmode/a;->am()F

    move-result p0

    return p0

    :cond_0
    const/high16 p0, 0x3f800000    # 1.0f

    return p0
.end method

.method public getMinimumCaptureMemory()J
    .locals 2

    .line 2862
    invoke-virtual {p0}, Lcom/oplus/camera/capmode/BaseMode;->isHighPictureSize()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/oplus/camera/capmode/BaseMode;->getHeicCodecFormat()Ljava/lang/String;

    move-result-object p0

    const-string v0, "heic_8bits"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_0

    const-wide/32 v0, 0x9000000

    return-wide v0

    :cond_0
    const-wide/32 v0, 0x3200000

    return-wide v0
.end method

.method public getMirror()Ljava/lang/String;
    .locals 2

    .line 4447
    iget-object v0, p0, Lcom/oplus/camera/capmode/BaseMode;->mPreferences:Landroid/content/SharedPreferences;

    if-eqz v0, :cond_0

    .line 4448
    iget-object p0, p0, Lcom/oplus/camera/capmode/BaseMode;->mActivity:Landroid/app/Activity;

    const v1, 0x7f10023d

    invoke-virtual {p0, v1}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object p0

    const-string v1, "pref_mirror_key"

    invoke-interface {v0, v1, p0}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return-object p0
.end method

.method public getMovieHdrEnable()Ljava/lang/Byte;
    .locals 0

    const/4 p0, 0x0

    return-object p0
.end method

.method protected getMultiCameraDecision()Lcom/oplus/camera/capmode/a/a;
    .locals 0

    const/4 p0, 0x0

    return-object p0
.end method

.method public getNeedCheckTimeStamp()Z
    .locals 0

    const/4 p0, 0x1

    return p0
.end method

.method protected getNeedStoreRawPic()Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public getNightStateDecision()I
    .locals 4

    .line 1776
    iget-object v0, p0, Lcom/oplus/camera/capmode/BaseMode;->mApsDecisionResultLock:Ljava/lang/Object;

    monitor-enter v0

    .line 1777
    :try_start_0
    iget-object v1, p0, Lcom/oplus/camera/capmode/BaseMode;->mDecisionResult:Lcom/oplus/camera/aps/util/CameraApsDecision;

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/oplus/camera/capmode/BaseMode;->mDecisionResult:Lcom/oplus/camera/aps/util/CameraApsDecision;

    iget v1, v1, Lcom/oplus/camera/aps/util/CameraApsDecision;->mApsDecisionFeatureType:I

    goto :goto_0

    :cond_0
    move v1, v2

    :goto_0
    const/16 v3, 0x9

    if-eq v1, v3, :cond_1

    const/16 v3, 0xa

    if-eq v1, v3, :cond_1

    const/16 v3, 0xb

    if-eq v1, v3, :cond_1

    const/16 v3, 0xd

    if-eq v1, v3, :cond_1

    const/16 v3, 0x1d

    if-eq v1, v3, :cond_1

    const/16 v3, 0xe

    if-eq v1, v3, :cond_1

    const/16 v3, 0x15

    if-eq v1, v3, :cond_1

    const/16 v3, 0x1f

    if-eq v1, v3, :cond_1

    const/16 v3, 0x20

    if-eq v1, v3, :cond_1

    const/16 v3, 0x23

    if-eq v1, v3, :cond_1

    const/16 v3, 0x28

    if-eq v1, v3, :cond_1

    const/16 v3, 0x29

    if-ne v1, v3, :cond_2

    .line 1791
    :cond_1
    iget-object p0, p0, Lcom/oplus/camera/capmode/BaseMode;->mDecisionResult:Lcom/oplus/camera/aps/util/CameraApsDecision;

    iget v2, p0, Lcom/oplus/camera/aps/util/CameraApsDecision;->mSuperNightScene:I

    :cond_2
    monitor-exit v0

    return v2

    :catchall_0
    move-exception p0

    .line 1792
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public abstract getOperatingMode()I
.end method

.method public getOrientationRectify()I
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method protected getPhotoRatio()Ljava/lang/String;
    .locals 0

    const/4 p0, 0x0

    return-object p0
.end method

.method public getPhysicalPictureSize(Lcom/oplus/camera/e/h;Landroid/hardware/camera2/CameraCharacteristics;Ljava/lang/String;)Landroid/util/Size;
    .locals 6

    const-string v0, "key_high_picture_size"

    .line 4303
    invoke-virtual {p0, v0}, Lcom/oplus/camera/capmode/BaseMode;->getSupportFunction(Ljava/lang/String;)Z

    move-result v1

    const-string v2, "com.oplus.high.picturesize"

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/oplus/camera/capmode/BaseMode;->mPreferences:Landroid/content/SharedPreferences;

    const/4 v3, 0x0

    .line 4304
    invoke-interface {v1, v0, v3}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 4306
    iget-object p1, p0, Lcom/oplus/camera/capmode/BaseMode;->mPreferences:Landroid/content/SharedPreferences;

    const-string p2, "pref_ultra_wide_high_picture_size_key"

    const-string p3, "off"

    invoke-interface {p1, p2, p3}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    const-string p2, "on"

    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    const-string p1, "com.oplus.ultra.wide.high.supported.picturesize"

    .line 4307
    invoke-static {p1}, Lcom/oplus/camera/aps/config/CameraConfig;->getSizeConfigValue(Ljava/lang/String;)Landroid/util/Size;

    move-result-object p2

    if-eqz p2, :cond_0

    .line 4308
    iget p0, p0, Lcom/oplus/camera/capmode/BaseMode;->mCameraId:I

    invoke-static {p1, p0}, Lcom/oplus/camera/aps/config/CameraConfig;->getSizeConfigValue(Ljava/lang/String;I)Landroid/util/Size;

    move-result-object p0

    return-object p0

    .line 4311
    :cond_0
    iget p0, p0, Lcom/oplus/camera/capmode/BaseMode;->mCameraId:I

    invoke-static {v2, p0}, Lcom/oplus/camera/aps/config/CameraConfig;->getSizeConfigValue(Ljava/lang/String;I)Landroid/util/Size;

    move-result-object p0

    return-object p0

    .line 4316
    :cond_1
    iget-object v1, p0, Lcom/oplus/camera/capmode/BaseMode;->mPreferences:Landroid/content/SharedPreferences;

    const/4 v3, 0x0

    if-eqz v1, :cond_2

    .line 4317
    iget-object v4, p0, Lcom/oplus/camera/capmode/BaseMode;->mActivity:Landroid/app/Activity;

    const v5, 0x7f1002be

    .line 4318
    invoke-virtual {v4, v5}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v4

    const-string v5, "pref_camera_photo_ratio_key"

    .line 4317
    invoke-interface {v1, v5, v4}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    :cond_2
    move-object v1, v3

    :goto_0
    const/16 v4, 0x23

    .line 4321
    invoke-virtual {p1, v4, p2, p3}, Lcom/oplus/camera/e/h;->a(ILandroid/hardware/camera2/CameraCharacteristics;Ljava/lang/String;)Ljava/util/List;

    move-result-object p1

    const-string p2, "type_still_capture_yuv_third"

    .line 4324
    invoke-virtual {p2, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_3

    const-string p2, "com.oplus.sat.tele.support.imagesizes"

    .line 4325
    invoke-virtual {p0, p2}, Lcom/oplus/camera/capmode/BaseMode;->getUltraPictureSize(Ljava/lang/String;)Landroid/util/Size;

    move-result-object p2

    if-eqz p2, :cond_3

    return-object p2

    .line 4332
    :cond_3
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "getPhysicalPictureSize, surfaceType: "

    invoke-virtual {p2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p3, ", sizeList: "

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    const-string p3, "BaseMode"

    invoke-static {p3, p2}, Lcom/oplus/camera/e;->a(Ljava/lang/String;Ljava/lang/String;)V

    const-string p2, "standard"

    .line 4334
    invoke-virtual {p2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    const-wide v4, 0x3ff5555555555555L    # 1.3333333333333333

    if-eqz p2, :cond_4

    .line 4335
    invoke-static {p1, v4, v5}, Lcom/oplus/camera/util/Util;->b(Ljava/util/List;D)Landroid/util/Size;

    move-result-object p0

    return-object p0

    :cond_4
    const-string p2, "full"

    .line 4336
    invoke-virtual {p2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_5

    .line 4337
    invoke-static {}, Lcom/oplus/camera/util/Util;->X()D

    move-result-wide p2

    invoke-static {p1, p2, p3}, Lcom/oplus/camera/util/Util;->b(Ljava/util/List;D)Landroid/util/Size;

    move-result-object p0

    return-object p0

    :cond_5
    const-string p2, "square"

    .line 4338
    invoke-virtual {p2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_6

    const-wide/high16 p2, 0x3ff0000000000000L    # 1.0

    .line 4339
    invoke-static {p1, p2, p3}, Lcom/oplus/camera/util/Util;->b(Ljava/util/List;D)Landroid/util/Size;

    move-result-object p0

    return-object p0

    :cond_6
    const-string p2, "16_9"

    .line 4340
    invoke-virtual {p2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_7

    const-wide p2, 0x3ffc71c71c71c71cL    # 1.7777777777777777

    .line 4341
    invoke-static {p1, p2, p3}, Lcom/oplus/camera/util/Util;->b(Ljava/util/List;D)Landroid/util/Size;

    move-result-object p0

    return-object p0

    :cond_7
    const-string p2, "standard_high"

    .line 4342
    invoke-virtual {p2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_9

    .line 4343
    invoke-virtual {p0, v0}, Lcom/oplus/camera/capmode/BaseMode;->getSupportFunction(Ljava/lang/String;)Z

    move-result p2

    if-eqz p2, :cond_8

    .line 4344
    iget p0, p0, Lcom/oplus/camera/capmode/BaseMode;->mCameraId:I

    invoke-static {v2, p0}, Lcom/oplus/camera/aps/config/CameraConfig;->getSizeConfigValue(Ljava/lang/String;I)Landroid/util/Size;

    move-result-object p0

    return-object p0

    .line 4346
    :cond_8
    invoke-static {p1, v4, v5}, Lcom/oplus/camera/util/Util;->b(Ljava/util/List;D)Landroid/util/Size;

    move-result-object p0

    return-object p0

    :cond_9
    return-object v3
.end method

.method public getPictureSize(Lcom/oplus/camera/e/h;)Landroid/util/Size;
    .locals 8

    .line 4243
    iget-boolean v0, p0, Lcom/oplus/camera/capmode/BaseMode;->mbDestroyed:Z

    const-string v1, "com.oplus.high.picturesize"

    const-string v2, "key_high_picture_size"

    if-nez v0, :cond_1

    .line 4244
    invoke-virtual {p0, v2}, Lcom/oplus/camera/capmode/BaseMode;->getSupportFunction(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/oplus/camera/capmode/BaseMode;->mPreferences:Landroid/content/SharedPreferences;

    const/4 v3, 0x0

    .line 4245
    invoke-interface {v0, v2, v3}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 4247
    iget-object p1, p0, Lcom/oplus/camera/capmode/BaseMode;->mPreferences:Landroid/content/SharedPreferences;

    const-string v0, "pref_ultra_wide_high_picture_size_key"

    const-string v2, "off"

    invoke-interface {p1, v0, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    const-string v0, "on"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    const-string p1, "com.oplus.ultra.wide.high.supported.picturesize"

    .line 4248
    invoke-static {p1}, Lcom/oplus/camera/aps/config/CameraConfig;->getSizeConfigValue(Ljava/lang/String;)Landroid/util/Size;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 4249
    iget p0, p0, Lcom/oplus/camera/capmode/BaseMode;->mCameraId:I

    invoke-static {p1, p0}, Lcom/oplus/camera/aps/config/CameraConfig;->getSizeConfigValue(Ljava/lang/String;I)Landroid/util/Size;

    move-result-object p0

    return-object p0

    .line 4252
    :cond_0
    iget p0, p0, Lcom/oplus/camera/capmode/BaseMode;->mCameraId:I

    invoke-static {v1, p0}, Lcom/oplus/camera/aps/config/CameraConfig;->getSizeConfigValue(Ljava/lang/String;I)Landroid/util/Size;

    move-result-object p0

    return-object p0

    .line 4255
    :cond_1
    iget-boolean v0, p0, Lcom/oplus/camera/capmode/BaseMode;->mbDestroyed:Z

    if-eqz v0, :cond_2

    const-string v0, ""

    goto :goto_0

    :cond_2
    iget-object v0, p0, Lcom/oplus/camera/capmode/BaseMode;->mPreferences:Landroid/content/SharedPreferences;

    iget-object v3, p0, Lcom/oplus/camera/capmode/BaseMode;->mActivity:Landroid/app/Activity;

    const v4, 0x7f1002be

    .line 4256
    invoke-virtual {v3, v4}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v3

    const-string v4, "pref_camera_photo_ratio_key"

    .line 4255
    invoke-interface {v0, v4, v3}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 4258
    :goto_0
    invoke-virtual {p0, v0}, Lcom/oplus/camera/capmode/BaseMode;->needDeleteTheSizeByRatio(Ljava/lang/String;)Z

    move-result v3

    const-string v4, "standard"

    if-eqz v3, :cond_3

    move-object v0, v4

    :cond_3
    const/16 v3, 0x100

    .line 4262
    invoke-virtual {p1, v3}, Lcom/oplus/camera/e/h;->a(I)Ljava/util/List;

    move-result-object p1

    .line 4264
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "getPictureSize, sizeList: "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const-string v5, "BaseMode"

    invoke-static {v5, v3}, Lcom/oplus/camera/e;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 4266
    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    const-wide v6, 0x3ff5555555555555L    # 1.3333333333333333

    if-eqz v3, :cond_4

    .line 4267
    invoke-static {p1, v6, v7}, Lcom/oplus/camera/util/Util;->b(Ljava/util/List;D)Landroid/util/Size;

    move-result-object p0

    return-object p0

    :cond_4
    const-string v3, "full"

    .line 4268
    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_6

    .line 4269
    invoke-static {}, Lcom/oplus/camera/util/Util;->X()D

    move-result-wide v0

    .line 4270
    invoke-static {p1, v0, v1}, Lcom/oplus/camera/util/Util;->b(Ljava/util/List;D)Landroid/util/Size;

    move-result-object p0

    if-nez p0, :cond_5

    .line 4272
    invoke-static {}, Lcom/oplus/camera/util/Util;->am()Z

    move-result v2

    if-eqz v2, :cond_5

    .line 4273
    invoke-static {}, Lcom/oplus/camera/util/Util;->X()D

    move-result-wide v2

    invoke-static {p1, v2, v3}, Lcom/oplus/camera/util/Util;->c(Ljava/util/List;D)Landroid/util/Size;

    move-result-object p0

    .line 4275
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getPictureSize, get imprecise size: "

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, " with screen ratio: "

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v0, v1}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v5, p1}, Lcom/oplus/camera/e;->a(Ljava/lang/String;Ljava/lang/String;)V

    :cond_5
    return-object p0

    :cond_6
    const-string v3, "square"

    .line 4282
    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_7

    const-wide/high16 v0, 0x3ff0000000000000L    # 1.0

    .line 4283
    invoke-static {p1, v0, v1}, Lcom/oplus/camera/util/Util;->b(Ljava/util/List;D)Landroid/util/Size;

    move-result-object p0

    return-object p0

    :cond_7
    const-string v3, "16_9"

    .line 4284
    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_8

    const-wide v0, 0x3ffc71c71c71c71cL    # 1.7777777777777777

    .line 4285
    invoke-static {p1, v0, v1}, Lcom/oplus/camera/util/Util;->b(Ljava/util/List;D)Landroid/util/Size;

    move-result-object p0

    return-object p0

    :cond_8
    const-string v3, "standard_high"

    .line 4286
    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_a

    .line 4287
    invoke-virtual {p0, v2}, Lcom/oplus/camera/capmode/BaseMode;->getSupportFunction(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_9

    .line 4288
    iget p0, p0, Lcom/oplus/camera/capmode/BaseMode;->mCameraId:I

    invoke-static {v1, p0}, Lcom/oplus/camera/aps/config/CameraConfig;->getSizeConfigValue(Ljava/lang/String;I)Landroid/util/Size;

    move-result-object p0

    return-object p0

    .line 4290
    :cond_9
    invoke-static {p1, v6, v7}, Lcom/oplus/camera/util/Util;->b(Ljava/util/List;D)Landroid/util/Size;

    move-result-object p0

    return-object p0

    :cond_a
    const/4 p0, 0x0

    return-object p0
.end method

.method public getPreferredScreenMode(I)Lcom/oplus/camera/screen/f$a;
    .locals 0

    .line 8061
    sget-object p0, Lcom/oplus/camera/screen/f$a;->common:Lcom/oplus/camera/screen/f$a;

    return-object p0
.end method

.method public getPreviewDispalyWidth()I
    .locals 0

    .line 7630
    invoke-static {}, Lcom/oplus/camera/util/Util;->getScreenWidth()I

    move-result p0

    return p0
.end method

.method public getPreviewFrameSize(Lcom/oplus/camera/e/h;)Landroid/util/Size;
    .locals 0

    .line 4424
    invoke-virtual {p0, p1}, Lcom/oplus/camera/capmode/BaseMode;->getPreviewSize(Lcom/oplus/camera/e/h;)Landroid/util/Size;

    move-result-object p0

    return-object p0
.end method

.method public getPreviewOutlineProvider()Lcom/oplus/camera/ui/q;
    .locals 0

    const/4 p0, 0x0

    return-object p0
.end method

.method public getPreviewSize(Lcom/oplus/camera/e/h;)Landroid/util/Size;
    .locals 5

    .line 4354
    invoke-virtual {p0, p1}, Lcom/oplus/camera/capmode/BaseMode;->getPictureSize(Lcom/oplus/camera/e/h;)Landroid/util/Size;

    move-result-object v0

    .line 4357
    invoke-virtual {p0, p1}, Lcom/oplus/camera/capmode/BaseMode;->getTargetPreviewRatio(Lcom/oplus/camera/e/h;)D

    move-result-wide v1

    .line 4359
    invoke-virtual {p1}, Lcom/oplus/camera/e/h;->a()Ljava/util/List;

    move-result-object p1

    .line 4361
    invoke-virtual {p0}, Lcom/oplus/camera/capmode/BaseMode;->isNoneSatUltraWideAngleOpen()Z

    move-result v3

    if-eqz v3, :cond_0

    const-string v3, "com.oplus.feature.wide.normal.previewsize"

    .line 4362
    invoke-static {v3}, Lcom/oplus/camera/aps/config/CameraConfig;->getConfigSizeListValue(Ljava/lang/String;)Ljava/util/List;

    move-result-object v3

    if-eqz v3, :cond_0

    .line 4364
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v4

    if-lez v4, :cond_0

    move-object p1, v3

    :cond_0
    const-string v3, "com.oplus.control.preview.sizes"

    .line 4370
    invoke-static {v3}, Lcom/oplus/camera/aps/config/CameraConfig;->getConfigSizeListValue(Ljava/lang/String;)Ljava/util/List;

    move-result-object v3

    if-eqz v3, :cond_1

    .line 4372
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v4

    if-lez v4, :cond_1

    move-object p1, v3

    .line 4376
    :cond_1
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "getPreviewSize, sizeList: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const-string v4, "BaseMode"

    invoke-static {v4, v3}, Lcom/oplus/camera/e;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 4378
    invoke-static {p1, v1, v2}, Lcom/oplus/camera/util/Util;->a(Ljava/util/List;D)Landroid/util/Size;

    move-result-object p1

    .line 4380
    invoke-static {}, Lcom/oplus/camera/util/Util;->C()Z

    move-result v1

    if-nez v1, :cond_3

    if-eqz p1, :cond_3

    .line 4382
    invoke-virtual {p1}, Landroid/util/Size;->getWidth()I

    move-result v1

    rem-int/lit8 v1, v1, 0x10

    if-nez v1, :cond_2

    .line 4383
    invoke-virtual {p1}, Landroid/util/Size;->getHeight()I

    move-result v1

    rem-int/lit8 v1, v1, 0x10

    if-eqz v1, :cond_3

    :cond_2
    iget p0, p0, Lcom/oplus/camera/capmode/BaseMode;->mCameraId:I

    .line 4384
    invoke-static {v0, p0}, Lcom/oplus/camera/util/Util;->a(Landroid/util/Size;I)Ljava/lang/String;

    move-result-object p0

    const-string v0, "square"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_3

    .line 4385
    new-instance p1, Landroid/util/Size;

    const/16 p0, 0x440

    invoke-direct {p1, p0, p0}, Landroid/util/Size;-><init>(II)V

    :cond_3
    return-object p1
.end method

.method public getPreviewSize(Lcom/oplus/camera/e/h;D)Landroid/util/Size;
    .locals 1

    .line 4411
    invoke-virtual {p1}, Lcom/oplus/camera/e/h;->a()Ljava/util/List;

    move-result-object p0

    .line 4413
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "getPreviewSize, sizeList: "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "BaseMode"

    invoke-static {v0, p1}, Lcom/oplus/camera/e;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 4415
    invoke-static {p0, p2, p3}, Lcom/oplus/camera/util/Util;->a(Ljava/util/List;D)Landroid/util/Size;

    move-result-object p0

    return-object p0
.end method

.method public getPreviewSize(Lcom/oplus/camera/e/h;Ljava/lang/String;)Landroid/util/Size;
    .locals 0

    .line 4420
    invoke-virtual {p0, p1}, Lcom/oplus/camera/capmode/BaseMode;->getPreviewSize(Lcom/oplus/camera/e/h;)Landroid/util/Size;

    move-result-object p0

    return-object p0
.end method

.method public getPreviewStreamNum()I
    .locals 0

    const/4 p0, 0x1

    return p0
.end method

.method public getPreviewSurfaceSize(Landroid/util/Size;)Landroid/util/Size;
    .locals 0

    return-object p1
.end method

.method public getPreviewXScale()F
    .locals 0

    .line 7618
    iget p0, p0, Lcom/oplus/camera/capmode/BaseMode;->mPreviewXScale:F

    return p0
.end method

.method public getProfile()Landroid/media/CamcorderProfile;
    .locals 0

    const/4 p0, 0x0

    return-object p0
.end method

.method public final getProperCameraId(I)I
    .locals 1

    .line 529
    iget-object v0, p0, Lcom/oplus/camera/capmode/BaseMode;->mCameraEntry:Lcom/oplus/camera/entry/b;

    if-nez v0, :cond_0

    const/4 p0, -0x1

    return p0

    .line 532
    :cond_0
    invoke-virtual {p0}, Lcom/oplus/camera/capmode/BaseMode;->getCameraMode()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0, p1}, Lcom/oplus/camera/entry/b;->a(Ljava/lang/String;I)I

    move-result p0

    return p0
.end method

.method protected getQuickVideoRecording()Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public getRearEnable()Z
    .locals 0

    const/4 p0, 0x1

    return p0
.end method

.method protected getRearFlashMode()Ljava/lang/String;
    .locals 4

    .line 4018
    iget-object v0, p0, Lcom/oplus/camera/capmode/BaseMode;->mPreferences:Landroid/content/SharedPreferences;

    const v1, 0x7f1001bb

    if-eqz v0, :cond_0

    iget-object v2, p0, Lcom/oplus/camera/capmode/BaseMode;->mActivity:Landroid/app/Activity;

    if-eqz v2, :cond_0

    .line 4019
    iget-object v2, p0, Lcom/oplus/camera/capmode/BaseMode;->mCameraEntry:Lcom/oplus/camera/entry/b;

    invoke-virtual {v2}, Lcom/oplus/camera/entry/b;->J()I

    move-result v2

    const-string v3, "pref_camera_flashmode_key"

    invoke-static {v3, v2}, Lcom/oplus/camera/entry/b;->b(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v2

    iget-object p0, p0, Lcom/oplus/camera/capmode/BaseMode;->mActivity:Landroid/app/Activity;

    .line 4020
    invoke-virtual {p0, v1}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object p0

    .line 4019
    invoke-interface {v0, v2, p0}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 4023
    :cond_0
    iget-object p0, p0, Lcom/oplus/camera/capmode/BaseMode;->mActivity:Landroid/app/Activity;

    if-eqz p0, :cond_1

    invoke-virtual {p0, v1}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object p0

    goto :goto_0

    :cond_1
    const-string p0, "off"

    :goto_0
    return-object p0
.end method

.method public getReceiveBustShotNum()I
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public getRelativePath()Ljava/lang/String;
    .locals 0

    const/4 p0, 0x0

    .line 7868
    invoke-static {p0}, Lcom/oplus/camera/Storage;->e(Lcom/oplus/camera/Storage$CameraPicture;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public getResumePauseRecordingTotalTime()J
    .locals 2

    const-wide/16 v0, 0x0

    return-wide v0
.end method

.method public getScreenTorchModeState()Z
    .locals 3

    .line 1574
    iget-object v0, p0, Lcom/oplus/camera/capmode/BaseMode;->mPreferences:Landroid/content/SharedPreferences;

    iget-object v1, p0, Lcom/oplus/camera/capmode/BaseMode;->mActivity:Landroid/app/Activity;

    .line 1575
    invoke-static {v1}, Lcom/oplus/camera/util/Util;->F(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "pref_camera_torch_mode_key"

    .line 1574
    invoke-interface {v0, v2, v1}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "on"

    .line 1577
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, "auto"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    iget-boolean v0, p0, Lcom/oplus/camera/capmode/BaseMode;->mbFrontCamera:Z

    if-eqz v0, :cond_1

    const-string v0, "func_torch_soft_light"

    .line 1579
    invoke-virtual {p0, v0}, Lcom/oplus/camera/capmode/BaseMode;->getSupportFunction(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 1580
    invoke-virtual {p0, v2}, Lcom/oplus/camera/capmode/BaseMode;->getSupportFunction(Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_1

    const/4 p0, 0x1

    goto :goto_0

    :cond_1
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method protected getSensorOrientation(I)I
    .locals 0

    .line 4786
    invoke-virtual {p0, p1}, Lcom/oplus/camera/capmode/BaseMode;->getCameraInfo(I)Lcom/oplus/camera/e/h;

    move-result-object p0

    invoke-static {p0}, Lcom/oplus/camera/e/a;->a(Lcom/oplus/camera/e/h;)I

    move-result p0

    return p0
.end method

.method public getShortcutFaceBeautyIndex()I
    .locals 0

    const-string p0, "com.oplus.feature.face.beauty.custom.menu.support"

    .line 4874
    invoke-static {p0}, Lcom/oplus/camera/aps/config/CameraConfig;->getConfigBooleanValue(Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_0

    const/16 p0, 0x66

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method protected getShowBlurValue()F
    .locals 4

    .line 7250
    invoke-virtual {p0}, Lcom/oplus/camera/capmode/BaseMode;->getBlurIndex()I

    move-result v0

    .line 7251
    iget-boolean v1, p0, Lcom/oplus/camera/capmode/BaseMode;->mbFrontCamera:Z

    invoke-static {v1}, Lcom/oplus/camera/ui/menu/levelcontrol/c;->getVideoBlurValues(Z)[F

    move-result-object v1

    .line 7252
    array-length v2, v1

    int-to-float v0, v0

    const/4 v3, 0x0

    invoke-direct {p0, v1, v3, v2, v0}, Lcom/oplus/camera/capmode/BaseMode;->getBlurIndexInArrays([FIIF)I

    move-result p0

    const/4 v0, -0x1

    if-ne v0, p0, :cond_0

    const/high16 p0, -0x40800000    # -1.0f

    goto :goto_0

    .line 7254
    :cond_0
    sget-object v0, Lcom/oplus/camera/ui/menu/levelcontrol/c;->BLUR_SHOWING_TEXT_VALUES:[F

    aget p0, v0, p0

    :goto_0
    return p0
.end method

.method public getShutterButtonInfo()Lcom/oplus/camera/ui/control/b;
    .locals 4

    .line 597
    iget-object v0, p0, Lcom/oplus/camera/capmode/BaseMode;->mPreferences:Landroid/content/SharedPreferences;

    const-string v1, "button_shape_ring_none"

    if-eqz v0, :cond_1

    .line 598
    iget-object p0, p0, Lcom/oplus/camera/capmode/BaseMode;->mActivity:Landroid/app/Activity;

    const v2, 0x7f1003ca

    .line 599
    invoke-virtual {p0, v2}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object p0

    const-string v2, "pref_camera_timer_shutter_key"

    .line 598
    invoke-interface {v0, v2, p0}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    const-string v0, "10"

    .line 601
    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v1, "button_shape_countdown_ten_seconds"

    goto :goto_0

    :cond_0
    const-string v0, "3"

    .line 603
    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_1

    const-string v1, "button_shape_countdown_three_seconds"

    .line 610
    :cond_1
    :goto_0
    new-instance p0, Lcom/oplus/camera/ui/control/b;

    const/4 v0, 0x1

    const/4 v2, 0x0

    const-string v3, "button_color_inside_none"

    invoke-direct {p0, v0, v3, v1, v2}, Lcom/oplus/camera/ui/control/b;-><init>(ILjava/lang/String;Ljava/lang/String;I)V

    return-object p0
.end method

.method protected getSingleBlurAlgoName(Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    const-string p0, "com.oplus.single.portrait.support"

    .line 1431
    invoke-static {p0}, Lcom/oplus/camera/aps/config/CameraConfig;->getConfigBooleanValue(Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_0

    const-string p0, "aps_algo_single_portrait"

    return-object p0

    :cond_0
    const-string p0, "com.oplus.feature.arscoft.single.bokeh.support"

    .line 1433
    invoke-static {p0}, Lcom/oplus/camera/aps/config/CameraConfig;->getConfigBooleanValue(Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_1

    const-string p0, "aps_algo_single_bokeh"

    return-object p0

    :cond_1
    const-string p0, "portrait_retention"

    .line 1435
    invoke-virtual {p0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_2

    const-string p0, "aps_algo_single_aicolor"

    return-object p0

    :cond_2
    const-string p0, "aps_algo_single_blur"

    return-object p0
.end method

.method public getSupportFaceView()Z
    .locals 0

    const/4 p0, 0x1

    return p0
.end method

.method public getSupportFunction(Ljava/lang/String;)Z
    .locals 5

    .line 1594
    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    move-result v0

    const/4 v1, 0x2

    const/4 v2, 0x3

    const/4 v3, 0x1

    const/4 v4, 0x0

    sparse-switch v0, :sswitch_data_0

    goto/16 :goto_0

    :sswitch_0
    const-string v0, "pref_camera_tap_shutter_key"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    move p1, v4

    goto/16 :goto_1

    :sswitch_1
    const-string v0, "pref_filter_menu"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    const/16 p1, 0x1f

    goto/16 :goto_1

    :sswitch_2
    const-string v0, "func_out_preview_button_show"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    const/16 p1, 0x29

    goto/16 :goto_1

    :sswitch_3
    const-string v0, "pref_none_sat_tele_angle_key"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    const/16 p1, 0x2b

    goto/16 :goto_1

    :sswitch_4
    const-string v0, "pref_support_thumbnail"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x7

    goto/16 :goto_1

    :sswitch_5
    const-string v0, "key_support_gimbal_change"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    const/16 p1, 0x14

    goto/16 :goto_1

    :sswitch_6
    const-string v0, "func_aps_bracketmode"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    const/16 p1, 0x23

    goto/16 :goto_1

    :sswitch_7
    const-string v0, "func_reset_auto_focus"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    const/16 p1, 0x20

    goto/16 :goto_1

    :sswitch_8
    const-string v0, "pref_support_switch_camera"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x6

    goto/16 :goto_1

    :sswitch_9
    const-string v0, "pref_face_detection_key"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    move p1, v1

    goto/16 :goto_1

    :sswitch_a
    const-string v0, "pref_time_lapse_key"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    move p1, v2

    goto/16 :goto_1

    :sswitch_b
    const-string v0, "func_scale_preview"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    const/16 p1, 0x1c

    goto/16 :goto_1

    :sswitch_c
    const-string v0, "key_support_front_face_point_animation"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    const/16 p1, 0x2d

    goto/16 :goto_1

    :sswitch_d
    const-string v0, "key_setting_support"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    const/16 p1, 0xe

    goto/16 :goto_1

    :sswitch_e
    const-string v0, "key_dark_environment_tips"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    const/16 p1, 0x15

    goto/16 :goto_1

    :sswitch_f
    const-string v0, "func_out_capture"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    const/16 p1, 0x26

    goto/16 :goto_1

    :sswitch_10
    const-string v0, "key_support_share_edit_thumb"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    const/16 p1, 0x10

    goto/16 :goto_1

    :sswitch_11
    const-string v0, "func_out_capture_close_enable"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    const/16 p1, 0x27

    goto/16 :goto_1

    :sswitch_12
    const-string v0, "key_setting_menu"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    const/16 p1, 0xd

    goto/16 :goto_1

    :sswitch_13
    const-string v0, "pref_zoom_key"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    const/16 p1, 0x1e

    goto/16 :goto_1

    :sswitch_14
    const-string v0, "pref_camera_pi_ai_mode_key"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    const/16 p1, 0xf

    goto/16 :goto_1

    :sswitch_15
    const-string v0, "pref_lens_dirty_detection_key"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    const/16 p1, 0x2a

    goto/16 :goto_1

    :sswitch_16
    const-string v0, "pref_camera_gesture_shutter_key"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    const/16 p1, 0x1d

    goto/16 :goto_1

    :sswitch_17
    const-string v0, "func_out_preview"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    const/16 p1, 0x25

    goto/16 :goto_1

    :sswitch_18
    const-string v0, "pref_subsetting_key"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    const/16 p1, 0x1b

    goto/16 :goto_1

    :sswitch_19
    const-string v0, "func_iot_capture"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    const/16 p1, 0x12

    goto/16 :goto_1

    :sswitch_1a
    const-string v0, "pref_video_ratio_key"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    const/16 p1, 0x11

    goto/16 :goto_1

    :sswitch_1b
    const-string v0, "key_support_slow_video_h265"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    const/16 p1, 0x21

    goto/16 :goto_1

    :sswitch_1c
    const-string v0, "key_support_zsl"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    const/16 p1, 0xa

    goto/16 :goto_1

    :sswitch_1d
    const-string v0, "func_out_preview_capture"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    const/16 p1, 0x28

    goto/16 :goto_1

    :sswitch_1e
    const-string v0, "key_support_show_soloop"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    const/16 p1, 0x18

    goto/16 :goto_1

    :sswitch_1f
    const-string v0, "key_support_grand_tour_fitlers"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    const/16 p1, 0x16

    goto/16 :goto_1

    :sswitch_20
    const-string v0, "func_cache_click_capture"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    const/16 p1, 0x2c

    goto/16 :goto_1

    :sswitch_21
    const-string v0, "pref_inertial_zoom_key"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    const/16 p1, 0x1a

    goto/16 :goto_1

    :sswitch_22
    const-string v0, "pref_update_setting_background_bar_key"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    move p1, v3

    goto/16 :goto_1

    :sswitch_23
    const-string v0, "pref_10bits_heic_encode_key"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    const/16 p1, 0x19

    goto/16 :goto_1

    :sswitch_24
    const-string v0, "func_dered_eye"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    const/16 p1, 0x22

    goto/16 :goto_1

    :sswitch_25
    const-string v0, "pref_watermark_function_key"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    const/16 p1, 0x13

    goto :goto_1

    :sswitch_26
    const-string v0, "pref_manual_exposure_key"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x5

    goto :goto_1

    :sswitch_27
    const-string v0, "pref_support_rotate_hint_view"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    const/16 p1, 0xb

    goto :goto_1

    :sswitch_28
    const-string v0, "pref_assist_gradienter"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    const/16 p1, 0x9

    goto :goto_1

    :sswitch_29
    const-string v0, "pref_continuous_focus_key"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x4

    goto :goto_1

    :sswitch_2a
    const-string v0, "pref_camera_countdown_effect_key"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    const/16 p1, 0x24

    goto :goto_1

    :sswitch_2b
    const-string v0, "func_request_fast_launch"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    const/16 p1, 0xc

    goto :goto_1

    :sswitch_2c
    const-string v0, "pref_camera_assistant_line_key"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    const/16 p1, 0x8

    goto :goto_1

    :sswitch_2d
    const-string v0, "func_ais_snapshot"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    const/16 p1, 0x17

    goto :goto_1

    :cond_0
    :goto_0
    const/4 p1, -0x1

    :goto_1
    packed-switch p1, :pswitch_data_0

    goto/16 :goto_f

    :pswitch_0
    const-string p1, "com.oplus.front.face.point.animaiton.support"

    .line 1721
    invoke-static {p1}, Lcom/oplus/camera/aps/config/CameraConfig;->getConfigBooleanValue(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_15

    iget-boolean p1, p0, Lcom/oplus/camera/capmode/BaseMode;->mbFrontCamera:Z

    if-eqz p1, :cond_15

    iget-object p1, p0, Lcom/oplus/camera/capmode/BaseMode;->mPreferences:Landroid/content/SharedPreferences;

    if-eqz p1, :cond_15

    const-string p1, "func_face_beauty_custom"

    .line 1724
    invoke-virtual {p0, p1}, Lcom/oplus/camera/capmode/BaseMode;->getSupportFunction(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_15

    .line 1725
    iget-object p1, p0, Lcom/oplus/camera/capmode/BaseMode;->mPreferences:Landroid/content/SharedPreferences;

    const-string v0, "key_support_front_face_point_animation"

    invoke-interface {p1, v0, v4}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result p1

    .line 1726
    iget-object p0, p0, Lcom/oplus/camera/capmode/BaseMode;->mPreferences:Landroid/content/SharedPreferences;

    const-string v0, "key_camera_pid_history"

    invoke-interface {p0, v0, v4}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result p0

    .line 1727
    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v0

    .line 1728
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    invoke-static {v1, v2}, Lcom/oplus/camera/util/Util;->d(J)I

    move-result v1

    if-ne p0, v0, :cond_2

    if-le v1, p1, :cond_1

    goto :goto_2

    :cond_1
    move v3, v4

    :cond_2
    :goto_2
    return v3

    .line 1710
    :pswitch_1
    iget-object p1, p0, Lcom/oplus/camera/capmode/BaseMode;->mApsDecisionResultLock:Ljava/lang/Object;

    monitor-enter p1

    :try_start_0
    const-string v0, "com.oplus.cache.click.capture.support"

    .line 1711
    invoke-static {v0}, Lcom/oplus/camera/aps/config/CameraConfig;->getConfigBooleanValue(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/oplus/camera/capmode/BaseMode;->mDecisionResult:Lcom/oplus/camera/aps/util/CameraApsDecision;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/oplus/camera/capmode/BaseMode;->mDecisionResult:Lcom/oplus/camera/aps/util/CameraApsDecision;

    iget v0, v0, Lcom/oplus/camera/aps/util/CameraApsDecision;->mApsDecisionFeatureType:I

    if-ne v2, v0, :cond_3

    iget-object v0, p0, Lcom/oplus/camera/capmode/BaseMode;->mCameraInterface:Lcom/oplus/camera/capmode/a;

    if-eqz v0, :cond_3

    iget-object p0, p0, Lcom/oplus/camera/capmode/BaseMode;->mCameraInterface:Lcom/oplus/camera/capmode/a;

    .line 1715
    invoke-interface {p0}, Lcom/oplus/camera/capmode/a;->i()Z

    move-result p0

    if-eqz p0, :cond_3

    goto :goto_3

    :cond_3
    move v3, v4

    .line 1716
    :goto_3
    monitor-exit p1

    return v3

    :catchall_0
    move-exception p0

    monitor-exit p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0

    :pswitch_2
    const-string p0, "com.oplus.feature.none.sat.tele.support"

    .line 1705
    invoke-static {p0}, Lcom/oplus/camera/aps/config/CameraConfig;->getConfigBooleanValue(Ljava/lang/String;)Z

    move-result p0

    return p0

    .line 1689
    :pswitch_3
    iget-object p0, p0, Lcom/oplus/camera/capmode/BaseMode;->mActivity:Landroid/app/Activity;

    if-eqz p0, :cond_5

    .line 1690
    invoke-virtual {p0}, Landroid/app/Activity;->getApplication()Landroid/app/Application;

    move-result-object p0

    const-string p1, "rom_update_info"

    invoke-virtual {p0, p1, v4}, Landroid/app/Application;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object p0

    if-eqz p0, :cond_5

    const-string p1, "com.oplus.feature.dirty.detect.support"

    .line 1694
    invoke-static {p1}, Lcom/oplus/camera/aps/config/CameraConfig;->getConfigBooleanValue(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_4

    const-string p1, "on"

    goto :goto_4

    :cond_4
    const-string p1, "off"

    :goto_4
    const-string v0, "dirty_detection_switch"

    .line 1697
    invoke-interface {p0, v0, p1}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    goto :goto_5

    :cond_5
    const-string p0, "on"

    :goto_5
    const-string p1, "on"

    .line 1702
    invoke-static {p0, p1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result p0

    return p0

    :pswitch_4
    const-string p1, "func_out_preview"

    .line 1683
    invoke-virtual {p0, p1}, Lcom/oplus/camera/capmode/BaseMode;->getSupportFunction(Ljava/lang/String;)Z

    move-result p1

    if-nez p1, :cond_7

    const-string p1, "func_out_capture"

    .line 1684
    invoke-virtual {p0, p1}, Lcom/oplus/camera/capmode/BaseMode;->getSupportFunction(Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_6

    goto :goto_6

    :cond_6
    move v3, v4

    :cond_7
    :goto_6
    return v3

    .line 1678
    :pswitch_5
    invoke-static {}, Lcom/oplus/camera/util/Util;->t()Z

    move-result p1

    if-eqz p1, :cond_8

    iget-boolean p0, p0, Lcom/oplus/camera/capmode/BaseMode;->mbFrontCamera:Z

    if-nez p0, :cond_8

    const-string p0, "com.oplus.feature.out.capture.support"

    .line 1680
    invoke-static {p0}, Lcom/oplus/camera/aps/config/CameraConfig;->getConfigBooleanValue(Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_8

    goto :goto_7

    :cond_8
    move v3, v4

    :goto_7
    return v3

    .line 1675
    :pswitch_6
    iget-object p0, p0, Lcom/oplus/camera/capmode/BaseMode;->mCameraUIInterface:Lcom/oplus/camera/ui/CameraUIInterface;

    if-eqz p0, :cond_9

    invoke-interface {p0}, Lcom/oplus/camera/ui/CameraUIInterface;->f()Z

    move-result p0

    if-eqz p0, :cond_9

    goto :goto_8

    :cond_9
    move v3, v4

    :goto_8
    return v3

    .line 1670
    :pswitch_7
    invoke-static {}, Lcom/oplus/camera/util/Util;->t()Z

    move-result p1

    if-eqz p1, :cond_a

    iget-boolean p0, p0, Lcom/oplus/camera/capmode/BaseMode;->mbFrontCamera:Z

    if-eqz p0, :cond_a

    const-string p0, "com.oplus.feature.out.capture.support"

    .line 1672
    invoke-static {p0}, Lcom/oplus/camera/aps/config/CameraConfig;->getConfigBooleanValue(Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_a

    goto :goto_9

    :cond_a
    move v3, v4

    :goto_9
    return v3

    .line 1662
    :pswitch_8
    invoke-static {}, Lcom/oplus/camera/util/Util;->u()Z

    move-result p1

    if-eqz p1, :cond_b

    iget-boolean p1, p0, Lcom/oplus/camera/capmode/BaseMode;->mbFrontCamera:Z

    if-nez p1, :cond_b

    iget-object p1, p0, Lcom/oplus/camera/capmode/BaseMode;->mCameraEntry:Lcom/oplus/camera/entry/b;

    .line 1664
    invoke-virtual {p1}, Lcom/oplus/camera/entry/b;->J()I

    move-result p1

    if-eq v1, p1, :cond_b

    iget-object p1, p0, Lcom/oplus/camera/capmode/BaseMode;->mCameraEntry:Lcom/oplus/camera/entry/b;

    .line 1665
    invoke-virtual {p1}, Lcom/oplus/camera/entry/b;->J()I

    move-result p1

    if-eq v2, p1, :cond_b

    .line 1666
    invoke-virtual {p0}, Lcom/oplus/camera/capmode/BaseMode;->is4k60fps()Z

    move-result p0

    if-nez p0, :cond_b

    const-string p0, "com.oplus.feature.out.preview.support"

    .line 1667
    invoke-static {p0}, Lcom/oplus/camera/aps/config/CameraConfig;->getConfigBooleanValue(Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_b

    goto :goto_a

    :cond_b
    move v3, v4

    :goto_a
    return v3

    :pswitch_9
    const-string p0, "oplus.software.motor.breathled"

    .line 1659
    invoke-static {p0}, Lcom/oplus/camera/util/Util;->h(Ljava/lang/String;)Z

    move-result p0

    return p0

    .line 1656
    :pswitch_a
    invoke-virtual {p0}, Lcom/oplus/camera/capmode/BaseMode;->isCaptureModeType()Z

    move-result p1

    if-eqz p1, :cond_c

    iget-boolean p1, p0, Lcom/oplus/camera/capmode/BaseMode;->mbBurstShot:Z

    if-nez p1, :cond_c

    invoke-virtual {p0}, Lcom/oplus/camera/capmode/BaseMode;->isFlashRequired()Z

    move-result p0

    if-nez p0, :cond_c

    goto :goto_b

    :cond_c
    move v3, v4

    :goto_b
    return v3

    .line 1650
    :pswitch_b
    invoke-virtual {p0}, Lcom/oplus/camera/capmode/BaseMode;->getCameraMode()Ljava/lang/String;

    move-result-object p1

    iget v0, p0, Lcom/oplus/camera/capmode/BaseMode;->mCameraId:I

    const-string v1, "aps_algo_dered_eye"

    invoke-static {p1, v0, v1}, Lcom/oplus/camera/aps/util/AlgoSwitchConfig;->getSupportCaptureAlgo(Ljava/lang/String;ILjava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_d

    iget-boolean p1, p0, Lcom/oplus/camera/capmode/BaseMode;->mbFrontCamera:Z

    if-nez p1, :cond_d

    iget-object p0, p0, Lcom/oplus/camera/capmode/BaseMode;->mCameraInterface:Lcom/oplus/camera/capmode/a;

    if-eqz p0, :cond_d

    .line 1653
    invoke-interface {p0}, Lcom/oplus/camera/capmode/a;->i()Z

    move-result p0

    if-eqz p0, :cond_d

    goto :goto_c

    :cond_d
    move v3, v4

    :goto_c
    return v3

    .line 1647
    :pswitch_c
    invoke-static {}, Lcom/oplus/camera/util/Util;->at()Z

    move-result p0

    return p0

    .line 1644
    :pswitch_d
    invoke-virtual {p0}, Lcom/oplus/camera/capmode/BaseMode;->getIsCapturingState()Z

    move-result p1

    if-eqz p1, :cond_f

    invoke-virtual {p0}, Lcom/oplus/camera/capmode/BaseMode;->getFlashMode()Ljava/lang/String;

    move-result-object p0

    const-string p1, "on"

    invoke-virtual {p1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_e

    goto :goto_d

    :cond_e
    move v3, v4

    :cond_f
    :goto_d
    return v3

    :pswitch_e
    const-string p1, "pref_filter_process_key"

    .line 1641
    invoke-virtual {p0, p1}, Lcom/oplus/camera/capmode/BaseMode;->getSupportFunction(Ljava/lang/String;)Z

    move-result p0

    return p0

    .line 1632
    :pswitch_f
    iget-boolean p1, p0, Lcom/oplus/camera/capmode/BaseMode;->mbFrontCamera:Z

    if-eqz p1, :cond_10

    .line 1633
    invoke-virtual {p0}, Lcom/oplus/camera/capmode/BaseMode;->isSupportNoneSat()Z

    move-result p1

    if-eqz p1, :cond_11

    iget-object p1, p0, Lcom/oplus/camera/capmode/BaseMode;->mCameraInterface:Lcom/oplus/camera/capmode/a;

    if-eqz p1, :cond_10

    invoke-interface {p1}, Lcom/oplus/camera/capmode/a;->i()Z

    move-result p1

    if-eqz p1, :cond_11

    :cond_10
    iget-boolean p0, p0, Lcom/oplus/camera/capmode/BaseMode;->mbBurstShot:Z

    if-eqz p0, :cond_12

    :cond_11
    return v4

    :cond_12
    return v3

    .line 1629
    :pswitch_10
    invoke-static {}, Lcom/oplus/camera/util/Util;->t()Z

    move-result p1

    if-nez p1, :cond_13

    iget-boolean p1, p0, Lcom/oplus/camera/capmode/BaseMode;->mbFrontCamera:Z

    if-eqz p1, :cond_14

    :cond_13
    invoke-virtual {p0}, Lcom/oplus/camera/capmode/BaseMode;->isShowBeauty3D()Z

    move-result p0

    if-nez p0, :cond_14

    goto :goto_e

    :cond_14
    move v3, v4

    :goto_e
    return v3

    :pswitch_11
    return v4

    :pswitch_12
    return v3

    :cond_15
    :goto_f
    return v4

    :sswitch_data_0
    .sparse-switch
        -0x7d80482d -> :sswitch_2d
        -0x7b6c9fed -> :sswitch_2c
        -0x6f76feb5 -> :sswitch_2b
        -0x6dd0f5c3 -> :sswitch_2a
        -0x6ce3461c -> :sswitch_29
        -0x6aa537a9 -> :sswitch_28
        -0x66cba37b -> :sswitch_27
        -0x64edfd1c -> :sswitch_26
        -0x5efa20f1 -> :sswitch_25
        -0x4e98b5d9 -> :sswitch_24
        -0x4c684fe0 -> :sswitch_23
        -0x4c04a975 -> :sswitch_22
        -0x48d5427c -> :sswitch_21
        -0x4322f869 -> :sswitch_20
        -0x40c9f939 -> :sswitch_1f
        -0x33b697ce -> :sswitch_1e
        -0x30f7a71d -> :sswitch_1d
        -0x2c4291fd -> :sswitch_1c
        -0x29f85f05 -> :sswitch_1b
        -0x1e969cb5 -> :sswitch_1a
        -0xf8e6ce6 -> :sswitch_19
        -0xdae10b4 -> :sswitch_18
        -0xc607924 -> :sswitch_17
        -0xb0f5f67 -> :sswitch_16
        0x6937dd3 -> :sswitch_15
        0x1073c1f2 -> :sswitch_14
        0x140b168f -> :sswitch_13
        0x1ec78fce -> :sswitch_12
        0x22ee3f6f -> :sswitch_11
        0x260d3011 -> :sswitch_10
        0x27866a5a -> :sswitch_f
        0x29bef9ad -> :sswitch_e
        0x32063b00 -> :sswitch_d
        0x3bf46e59 -> :sswitch_c
        0x3e627798 -> :sswitch_b
        0x3f50f6f7 -> :sswitch_a
        0x408542df -> :sswitch_9
        0x5f579904 -> :sswitch_8
        0x65ad1753 -> :sswitch_7
        0x753c8535 -> :sswitch_6
        0x788623dd -> :sswitch_5
        0x7899fd60 -> :sswitch_4
        0x7a97ca62 -> :sswitch_3
        0x7d2d9707 -> :sswitch_2
        0x7e1951aa -> :sswitch_1
        0x7e4b5cf3 -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_12
        :pswitch_12
        :pswitch_12
        :pswitch_12
        :pswitch_12
        :pswitch_12
        :pswitch_12
        :pswitch_12
        :pswitch_12
        :pswitch_12
        :pswitch_12
        :pswitch_12
        :pswitch_12
        :pswitch_12
        :pswitch_12
        :pswitch_12
        :pswitch_12
        :pswitch_12
        :pswitch_12
        :pswitch_12
        :pswitch_11
        :pswitch_11
        :pswitch_11
        :pswitch_11
        :pswitch_11
        :pswitch_11
        :pswitch_11
        :pswitch_11
        :pswitch_11
        :pswitch_10
        :pswitch_f
        :pswitch_e
        :pswitch_d
        :pswitch_c
        :pswitch_b
        :pswitch_a
        :pswitch_9
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

    const/4 p0, 0x1

    return p0
.end method

.method public getSupportMenu(Ljava/lang/String;)Z
    .locals 2

    .line 1528
    invoke-static {p1}, Lcom/oplus/camera/entry/b;->d(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    const-string v0, "pref_setting_key"

    .line 1530
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_3

    .line 1531
    iget-object p1, p0, Lcom/oplus/camera/capmode/BaseMode;->mCameraInterface:Lcom/oplus/camera/capmode/a;

    if-eqz p1, :cond_0

    invoke-interface {p1}, Lcom/oplus/camera/capmode/a;->m()Z

    move-result p1

    if-nez p1, :cond_1

    :cond_0
    invoke-virtual {p0}, Lcom/oplus/camera/capmode/BaseMode;->isSubMenuEnable()Z

    move-result p0

    if-nez p0, :cond_2

    :cond_1
    const/4 v1, 0x1

    :cond_2
    return v1

    :cond_3
    const-string v0, "pref_camera_torch_mode_key"

    .line 1534
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_6

    const-string v0, "pref_video_blur_menu"

    .line 1535
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_6

    const-string v0, "pref_portrait_blur_menu"

    .line 1536
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_6

    const-string v0, "pref_none_sat_ultra_wide_angle_key"

    .line 1537
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_6

    const-string v0, "pref_night_tripod_mode_key"

    .line 1538
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_6

    const-string v0, "pref_night_starburst_mode"

    .line 1539
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    goto :goto_0

    :cond_4
    const-string p0, "pref_camera_timer_shutter_key"

    .line 1543
    invoke-virtual {p0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_5

    :cond_5
    return v1

    .line 1540
    :cond_6
    :goto_0
    invoke-virtual {p0, p1}, Lcom/oplus/camera/capmode/BaseMode;->getSupportFunction(Ljava/lang/String;)Z

    move-result p0

    return p0
.end method

.method public getSupportQuickJpeg(Lcom/oplus/camera/e/c;)Z
    .locals 8

    const-string v0, "com.oplus.feature.mtk.face.beauty.remosaic.support"

    .line 7996
    invoke-static {v0}, Lcom/oplus/camera/aps/config/CameraConfig;->getConfigBooleanValue(Ljava/lang/String;)Z

    move-result v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz p1, :cond_1

    .line 7997
    iget-object v3, p1, Lcom/oplus/camera/e/c;->N:Lcom/oplus/camera/aps/util/CameraApsDecision;

    if-eqz v3, :cond_1

    const/4 v3, 0x5

    iget-object v4, p1, Lcom/oplus/camera/e/c;->N:Lcom/oplus/camera/aps/util/CameraApsDecision;

    iget v4, v4, Lcom/oplus/camera/aps/util/CameraApsDecision;->mApsDecisionFeatureType:I

    if-ne v3, v4, :cond_1

    .line 8000
    invoke-virtual {p0}, Lcom/oplus/camera/capmode/BaseMode;->isFaceBeautyOrMakeupOpen()Z

    move-result v3

    if-eqz v3, :cond_0

    iget-boolean v3, p0, Lcom/oplus/camera/capmode/BaseMode;->mbFrontCamera:Z

    if-eqz v3, :cond_1

    if-eqz v0, :cond_1

    .line 8001
    :cond_0
    invoke-virtual {p0}, Lcom/oplus/camera/capmode/BaseMode;->isFilterEffectOpen()Z

    move-result v0

    if-nez v0, :cond_1

    .line 8002
    invoke-virtual {p0}, Lcom/oplus/camera/capmode/BaseMode;->isPIAISceneOpen()Z

    move-result v0

    if-nez v0, :cond_1

    move v0, v1

    goto :goto_0

    :cond_1
    move v0, v2

    :goto_0
    if-eqz p1, :cond_2

    .line 8003
    iget-object v3, p1, Lcom/oplus/camera/e/c;->N:Lcom/oplus/camera/aps/util/CameraApsDecision;

    if-eqz v3, :cond_2

    const/4 v3, 0x4

    iget-object v4, p1, Lcom/oplus/camera/e/c;->N:Lcom/oplus/camera/aps/util/CameraApsDecision;

    iget v4, v4, Lcom/oplus/camera/aps/util/CameraApsDecision;->mSupportCaptureZoomFeature:I

    if-ne v3, v4, :cond_2

    move v3, v1

    goto :goto_1

    :cond_2
    move v3, v2

    :goto_1
    if-eqz p1, :cond_3

    .line 8006
    iget-object v4, p1, Lcom/oplus/camera/e/c;->e:Ljava/lang/String;

    const-string v5, "none"

    .line 8007
    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_3

    iget-object v4, p0, Lcom/oplus/camera/capmode/BaseMode;->mPreferences:Landroid/content/SharedPreferences;

    if-eqz v4, :cond_3

    const-string v5, "off"

    const-string v6, "pref_watermark_function_key"

    .line 8009
    invoke-interface {v4, v6, v5}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    const-string v6, "on"

    invoke-virtual {v6, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_3

    iget-object v4, p0, Lcom/oplus/camera/capmode/BaseMode;->mPreferences:Landroid/content/SharedPreferences;

    const-string v7, "pref_watermark_makeup_function_key"

    .line 8010
    invoke-interface {v4, v7, v5}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v6, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_3

    move v4, v1

    goto :goto_2

    :cond_3
    move v4, v2

    :goto_2
    if-eqz p1, :cond_4

    .line 8011
    iget-boolean v5, p1, Lcom/oplus/camera/e/c;->a:Z

    if-eqz v5, :cond_4

    invoke-virtual {p0}, Lcom/oplus/camera/capmode/BaseMode;->isHasSuperTextDetectResult()Z

    move-result v5

    if-eqz v5, :cond_4

    move v5, v1

    goto :goto_3

    :cond_4
    move v5, v2

    .line 8013
    :goto_3
    iget-object v6, p0, Lcom/oplus/camera/capmode/BaseMode;->mCameraInterface:Lcom/oplus/camera/capmode/a;

    if-eqz v6, :cond_7

    .line 8014
    invoke-interface {v6}, Lcom/oplus/camera/capmode/a;->i()Z

    move-result v6

    if-eqz v6, :cond_7

    const-string v6, "com.oplus.quick.jpeg.support"

    .line 8015
    invoke-static {v6}, Lcom/oplus/camera/aps/config/CameraConfig;->getConfigBooleanValue(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_7

    iget-object v6, p0, Lcom/oplus/camera/capmode/BaseMode;->mActivity:Landroid/app/Activity;

    .line 8016
    invoke-static {v6}, Lcom/oplus/camera/util/Util;->w(Landroid/content/Context;)Z

    move-result v6

    if-eqz v6, :cond_7

    if-nez v0, :cond_7

    if-eqz p1, :cond_5

    iget-boolean p1, p1, Lcom/oplus/camera/e/c;->j:Z

    if-eqz p1, :cond_6

    goto :goto_4

    :cond_5
    iget-boolean p1, p0, Lcom/oplus/camera/capmode/BaseMode;->mbBurstShot:Z

    if-nez p1, :cond_7

    :cond_6
    if-nez v3, :cond_7

    if-nez v4, :cond_7

    if-nez v5, :cond_7

    .line 8022
    invoke-virtual {p0}, Lcom/oplus/camera/capmode/BaseMode;->isVideoRecording()Z

    move-result p1

    if-nez p1, :cond_7

    .line 8023
    invoke-virtual {p0}, Lcom/oplus/camera/capmode/BaseMode;->isInNightProcess()Z

    move-result p1

    if-eqz p1, :cond_8

    invoke-virtual {p0}, Lcom/oplus/camera/capmode/BaseMode;->isInOfflineNightProcess()Z

    move-result p0

    if-eqz p0, :cond_7

    goto :goto_5

    :cond_7
    :goto_4
    move v1, v2

    :cond_8
    :goto_5
    return v1
.end method

.method public final getSupportSettingList(Ljava/lang/String;I)Ljava/util/List;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "I)",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 3796
    invoke-static {p1}, Lcom/oplus/camera/entry/b;->d(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    const-string v0, "pref_camera_flashmode_key"

    .line 3798
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    iget-boolean v1, p0, Lcom/oplus/camera/capmode/BaseMode;->mbFrontCamera:Z

    if-eqz v1, :cond_0

    return-object v2

    .line 3802
    :cond_0
    invoke-static {p1, p2}, Lcom/oplus/camera/aps/config/CameraConfig;->getSupportedList(Ljava/lang/String;I)Ljava/util/List;

    move-result-object p2

    if-nez p2, :cond_4

    .line 3805
    new-instance p2, Ljava/util/ArrayList;

    invoke-direct {p2}, Ljava/util/ArrayList;-><init>()V

    .line 3808
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 3809
    iget-object v0, p0, Lcom/oplus/camera/capmode/BaseMode;->mActivity:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f03003b

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v2

    :cond_1
    const-string v0, "pref_camera_photo_ratio_key"

    .line 3812
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 3813
    iget-object v0, p0, Lcom/oplus/camera/capmode/BaseMode;->mActivity:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f030073

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v2

    :cond_2
    const-string v0, "pref_camera_timer_shutter_key"

    .line 3816
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_3

    .line 3817
    iget-object p0, p0, Lcom/oplus/camera/capmode/BaseMode;->mActivity:Landroid/app/Activity;

    invoke-virtual {p0}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    const p1, 0x7f0300b2

    invoke-virtual {p0, p1}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v2

    :cond_3
    if-eqz v2, :cond_4

    const/4 p0, 0x0

    .line 3821
    :goto_0
    array-length p1, v2

    if-ge p0, p1, :cond_4

    .line 3822
    aget-object p1, v2, p0

    invoke-interface {p2, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 p0, p0, 0x1

    goto :goto_0

    :cond_4
    return-object p2
.end method

.method protected getSupportShowCustomAll()Z
    .locals 1

    const-string v0, "key_support_makeup"

    .line 6002
    invoke-virtual {p0, v0}, Lcom/oplus/camera/capmode/BaseMode;->getSupportFunction(Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x0

    return p0

    :cond_0
    const/4 p0, 0x1

    return p0
.end method

.method public getSupportSubMenu(Ljava/lang/String;)Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public getSurfaceSize(Ljava/lang/String;Lcom/oplus/camera/e/h;)Landroid/util/Size;
    .locals 12

    const-string v0, "type_tuning_data_yuv"

    .line 4109
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    const/4 v3, 0x2

    if-eqz v0, :cond_0

    .line 4110
    sget-object v0, Lcom/oplus/camera/e/b;->aQ:Landroid/hardware/camera2/CameraCharacteristics$Key;

    invoke-virtual {p2, v0}, Lcom/oplus/camera/e/h;->b(Landroid/hardware/camera2/CameraCharacteristics$Key;)[I

    move-result-object v0

    if-eqz v0, :cond_1

    .line 4112
    array-length v4, v0

    if-lt v4, v3, :cond_1

    .line 4113
    new-instance p0, Landroid/util/Size;

    aget p1, v0, v2

    aget p2, v0, v1

    invoke-direct {p0, p1, p2}, Landroid/util/Size;-><init>(II)V

    return-object p0

    :cond_0
    const-string v0, "type_tuning_data_raw"

    .line 4115
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 4116
    sget-object v0, Lcom/oplus/camera/e/b;->aR:Landroid/hardware/camera2/CameraCharacteristics$Key;

    invoke-virtual {p2, v0}, Lcom/oplus/camera/e/h;->b(Landroid/hardware/camera2/CameraCharacteristics$Key;)[I

    move-result-object v0

    if-eqz v0, :cond_1

    .line 4118
    array-length v4, v0

    if-lt v4, v3, :cond_1

    .line 4119
    new-instance p0, Landroid/util/Size;

    aget p1, v0, v2

    aget p2, v0, v1

    invoke-direct {p0, p1, p2}, Landroid/util/Size;-><init>(II)V

    return-object p0

    .line 4123
    :cond_1
    sget-object v0, Lcom/oplus/camera/e/b;->aN:Landroid/hardware/camera2/CameraCharacteristics$Key;

    invoke-virtual {p2, v0}, Lcom/oplus/camera/e/h;->b(Landroid/hardware/camera2/CameraCharacteristics$Key;)[I

    move-result-object v0

    iput-object v0, p0, Lcom/oplus/camera/capmode/BaseMode;->mForceUpscaleSize:[I

    .line 4125
    invoke-virtual {p0}, Lcom/oplus/camera/capmode/BaseMode;->isSatOpen()Z

    move-result v0

    const/4 v4, 0x3

    const-string v5, "type_still_capture_yuv_sub"

    const-string v6, "type_still_capture_yuv_main"

    const/4 v7, 0x0

    if-eqz v0, :cond_7

    .line 4126
    invoke-static {}, Lcom/oplus/camera/util/Util;->C()Z

    move-result v0

    if-nez v0, :cond_2

    invoke-virtual {p0, p1}, Lcom/oplus/camera/capmode/BaseMode;->needConfigPhysicalStream(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 4129
    invoke-virtual {p0, p2, v7, p1}, Lcom/oplus/camera/capmode/BaseMode;->getPhysicalPictureSize(Lcom/oplus/camera/e/h;Landroid/hardware/camera2/CameraCharacteristics;Ljava/lang/String;)Landroid/util/Size;

    move-result-object p0

    return-object p0

    .line 4131
    :cond_2
    invoke-virtual {v6, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const-string v6, "com.oplus.sat.wide.support.imagesizes"

    if-eqz v0, :cond_4

    .line 4132
    invoke-virtual {p0, v6}, Lcom/oplus/camera/capmode/BaseMode;->getUltraPictureSize(Ljava/lang/String;)Landroid/util/Size;

    move-result-object p1

    if-nez p1, :cond_3

    .line 4135
    invoke-virtual {p0, p2}, Lcom/oplus/camera/capmode/BaseMode;->getPictureSize(Lcom/oplus/camera/e/h;)Landroid/util/Size;

    move-result-object p1

    :cond_3
    return-object p1

    .line 4139
    :cond_4
    invoke-virtual {v5, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    const-string v0, "com.oplus.sat.ultra.support.imagesizes"

    if-eqz p2, :cond_5

    .line 4140
    invoke-virtual {p0, v0}, Lcom/oplus/camera/capmode/BaseMode;->getUltraPictureSize(Ljava/lang/String;)Landroid/util/Size;

    move-result-object p0

    return-object p0

    :cond_5
    const-string p2, "type_still_capture_yuv_third"

    .line 4141
    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    const-string v5, "com.oplus.sat.tele.support.imagesizes"

    if-eqz p2, :cond_6

    .line 4142
    invoke-virtual {p0, v5}, Lcom/oplus/camera/capmode/BaseMode;->getUltraPictureSize(Ljava/lang/String;)Landroid/util/Size;

    move-result-object p0

    return-object p0

    :cond_6
    const-string p2, "type_reprocess_data_yuv"

    .line 4143
    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_12

    .line 4144
    invoke-virtual {p0, v6}, Lcom/oplus/camera/capmode/BaseMode;->getUltraPictureSize(Ljava/lang/String;)Landroid/util/Size;

    move-result-object p1

    .line 4145
    invoke-virtual {p0, v0}, Lcom/oplus/camera/capmode/BaseMode;->getUltraPictureSize(Ljava/lang/String;)Landroid/util/Size;

    move-result-object p2

    .line 4146
    invoke-virtual {p0, v5}, Lcom/oplus/camera/capmode/BaseMode;->getUltraPictureSize(Ljava/lang/String;)Landroid/util/Size;

    move-result-object p0

    .line 4147
    new-array v0, v4, [Landroid/util/Size;

    aput-object p1, v0, v2

    aput-object p2, v0, v1

    aput-object p0, v0, v3

    .line 4149
    invoke-static {v0}, Lcom/oplus/camera/util/Util;->a([Landroid/util/Size;)Landroid/util/Size;

    move-result-object p0

    return-object p0

    :cond_7
    const-string v0, "pref_dual_camera"

    .line 4152
    invoke-virtual {p0, v0}, Lcom/oplus/camera/capmode/BaseMode;->getSupportFunction(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_11

    .line 4153
    sget-object v0, Lcom/oplus/camera/e/b;->au:Landroid/hardware/camera2/CameraCharacteristics$Key;

    invoke-virtual {p2, v0}, Lcom/oplus/camera/e/h;->b(Landroid/hardware/camera2/CameraCharacteristics$Key;)[I

    move-result-object v0

    .line 4155
    invoke-virtual {v6, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    const-string v8, "com.oplus.portrait.mode.picture.size.1x"

    const-string v9, "com.oplus.portrait.mode.picture.size.2x"

    const v10, 0x358637bd    # 1.0E-6f

    const/high16 v11, 0x40000000    # 2.0f

    if-eqz v6, :cond_c

    .line 4159
    invoke-virtual {p0, p2}, Lcom/oplus/camera/capmode/BaseMode;->getDefaultZoomValue(Lcom/oplus/camera/e/h;)F

    move-result p0

    sub-float/2addr p0, v11

    invoke-static {p0}, Ljava/lang/Math;->abs(F)F

    move-result p0

    cmpl-float p0, p0, v10

    if-lez p0, :cond_8

    .line 4160
    invoke-static {v8}, Lcom/oplus/camera/aps/config/CameraConfig;->getConfigSizeListValue(Ljava/lang/String;)Ljava/util/List;

    move-result-object p0

    goto :goto_0

    .line 4162
    :cond_8
    invoke-static {v9}, Lcom/oplus/camera/aps/config/CameraConfig;->getConfigSizeListValue(Ljava/lang/String;)Ljava/util/List;

    move-result-object p0

    :goto_0
    if-eqz p0, :cond_a

    .line 4165
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result p1

    if-nez p1, :cond_9

    goto :goto_1

    :cond_9
    invoke-interface {p0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/util/Size;

    goto :goto_2

    :cond_a
    :goto_1
    move-object p0, v7

    :goto_2
    if-eqz p0, :cond_b

    .line 4168
    new-instance p1, Landroid/util/Size;

    invoke-virtual {p0}, Landroid/util/Size;->getWidth()I

    move-result p2

    invoke-virtual {p0}, Landroid/util/Size;->getHeight()I

    move-result p0

    invoke-direct {p1, p2, p0}, Landroid/util/Size;-><init>(II)V

    return-object p1

    :cond_b
    if-eqz v0, :cond_12

    .line 4171
    array-length p0, v0

    if-lt p0, v3, :cond_12

    .line 4172
    aget p0, v0, v2

    .line 4173
    aget p1, v0, v1

    .line 4175
    new-instance p2, Landroid/util/Size;

    invoke-direct {p2, p0, p1}, Landroid/util/Size;-><init>(II)V

    return-object p2

    .line 4177
    :cond_c
    invoke-virtual {v5, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_12

    .line 4180
    invoke-virtual {p0, p2}, Lcom/oplus/camera/capmode/BaseMode;->getDefaultZoomValue(Lcom/oplus/camera/e/h;)F

    move-result p0

    sub-float/2addr p0, v11

    invoke-static {p0}, Ljava/lang/Math;->abs(F)F

    move-result p0

    cmpl-float p0, p0, v10

    if-lez p0, :cond_d

    .line 4181
    invoke-static {v8}, Lcom/oplus/camera/aps/config/CameraConfig;->getConfigSizeListValue(Ljava/lang/String;)Ljava/util/List;

    move-result-object p0

    goto :goto_3

    .line 4183
    :cond_d
    invoke-static {v9}, Lcom/oplus/camera/aps/config/CameraConfig;->getConfigSizeListValue(Ljava/lang/String;)Ljava/util/List;

    move-result-object p0

    :goto_3
    if-eqz p0, :cond_f

    .line 4186
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result p1

    if-ge p1, v3, :cond_e

    goto :goto_4

    :cond_e
    invoke-interface {p0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/util/Size;

    goto :goto_5

    :cond_f
    :goto_4
    move-object p0, v7

    :goto_5
    if-eqz p0, :cond_10

    .line 4189
    new-instance p1, Landroid/util/Size;

    invoke-virtual {p0}, Landroid/util/Size;->getWidth()I

    move-result p2

    invoke-virtual {p0}, Landroid/util/Size;->getHeight()I

    move-result p0

    invoke-direct {p1, p2, p0}, Landroid/util/Size;-><init>(II)V

    return-object p1

    :cond_10
    if-eqz v0, :cond_12

    .line 4192
    array-length p0, v0

    const/4 p1, 0x4

    if-lt p0, p1, :cond_12

    .line 4193
    aget p0, v0, v3

    .line 4194
    aget p1, v0, v4

    .line 4196
    new-instance p2, Landroid/util/Size;

    invoke-direct {p2, p0, p1}, Landroid/util/Size;-><init>(II)V

    return-object p2

    :cond_11
    const-string v0, "type_video_frame"

    .line 4199
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_12

    .line 4200
    invoke-virtual {p0, p2}, Lcom/oplus/camera/capmode/BaseMode;->getPictureSize(Lcom/oplus/camera/e/h;)Landroid/util/Size;

    move-result-object p0

    return-object p0

    :cond_12
    return-object v7
.end method

.method protected getSwitchAnimTime(I)I
    .locals 0

    .line 7139
    invoke-static {p1}, Lcom/oplus/camera/e/a;->a(I)Z

    move-result p0

    if-eqz p0, :cond_0

    const-string p0, "com.oplus.tunning.front.to.rear.switchtime"

    .line 7140
    invoke-static {p0}, Lcom/oplus/camera/aps/config/CameraConfig;->getConfigIntValue(Ljava/lang/String;)I

    move-result p0

    goto :goto_0

    :cond_0
    const-string p0, "com.oplus.tunning.rear.to.front.switchtime"

    .line 7141
    invoke-static {p0}, Lcom/oplus/camera/aps/config/CameraConfig;->getConfigIntValue(Ljava/lang/String;)I

    move-result p0

    :goto_0
    return p0
.end method

.method protected getTargetPreviewRatio(Lcom/oplus/camera/e/h;)D
    .locals 4

    .line 4392
    invoke-virtual {p0, p1}, Lcom/oplus/camera/capmode/BaseMode;->getPictureSize(Lcom/oplus/camera/e/h;)Landroid/util/Size;

    move-result-object p1

    .line 4395
    iget v0, p0, Lcom/oplus/camera/capmode/BaseMode;->mCameraId:I

    invoke-static {p1, v0}, Lcom/oplus/camera/util/Util;->a(Landroid/util/Size;I)Ljava/lang/String;

    move-result-object v0

    const-string v1, "standard"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const-wide v1, 0x3ff5555555555555L    # 1.3333333333333333

    if-nez v0, :cond_3

    iget v0, p0, Lcom/oplus/camera/capmode/BaseMode;->mCameraId:I

    .line 4396
    invoke-static {p1, v0}, Lcom/oplus/camera/util/Util;->a(Landroid/util/Size;I)Ljava/lang/String;

    move-result-object v0

    const-string v3, "standard_high"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 4398
    :cond_0
    iget v0, p0, Lcom/oplus/camera/capmode/BaseMode;->mCameraId:I

    invoke-static {p1, v0}, Lcom/oplus/camera/util/Util;->a(Landroid/util/Size;I)Ljava/lang/String;

    move-result-object v0

    const-string v3, "full"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 4399
    invoke-static {}, Lcom/oplus/camera/util/Util;->X()D

    move-result-wide v1

    goto :goto_0

    .line 4400
    :cond_1
    iget v0, p0, Lcom/oplus/camera/capmode/BaseMode;->mCameraId:I

    invoke-static {p1, v0}, Lcom/oplus/camera/util/Util;->a(Landroid/util/Size;I)Ljava/lang/String;

    move-result-object v0

    const-string v3, "square"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    const-wide/high16 v1, 0x3ff0000000000000L    # 1.0

    goto :goto_0

    .line 4402
    :cond_2
    iget p0, p0, Lcom/oplus/camera/capmode/BaseMode;->mCameraId:I

    invoke-static {p1, p0}, Lcom/oplus/camera/util/Util;->a(Landroid/util/Size;I)Ljava/lang/String;

    move-result-object p0

    const-string p1, "16_9"

    invoke-virtual {p1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_3

    const-wide v1, 0x3ffc71c71c71c71cL    # 1.7777777777777777

    :cond_3
    :goto_0
    return-wide v1
.end method

.method protected getTiltShiftBlurIndex()I
    .locals 2

    const-string v0, "func_tilt_shift"

    .line 6676
    invoke-virtual {p0, v0}, Lcom/oplus/camera/capmode/BaseMode;->getSupportFunction(Ljava/lang/String;)Z

    move-result v0

    const/16 v1, 0x46

    if-eqz v0, :cond_0

    .line 6677
    iget-object p0, p0, Lcom/oplus/camera/capmode/BaseMode;->mPreferences:Landroid/content/SharedPreferences;

    const-string v0, "pref_tilt_shift_blur_menu_index"

    invoke-interface {p0, v0, v1}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result p0

    return p0

    :cond_0
    return v1
.end method

.method protected getTiltShiftBlurValue()F
    .locals 1

    .line 6672
    invoke-virtual {p0}, Lcom/oplus/camera/capmode/BaseMode;->getTiltShiftBlurIndex()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/oplus/camera/capmode/BaseMode;->getBlurValue(I)F

    move-result p0

    return p0
.end method

.method public getTimeLapse()Ljava/lang/String;
    .locals 3

    .line 4428
    iget-object v0, p0, Lcom/oplus/camera/capmode/BaseMode;->mPreferences:Landroid/content/SharedPreferences;

    const-string v1, "off"

    if-eqz v0, :cond_1

    const-string v0, "pref_time_lapse_key"

    invoke-virtual {p0, v0}, Lcom/oplus/camera/capmode/BaseMode;->getSupportFunction(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    .line 4432
    :cond_0
    iget-object v0, p0, Lcom/oplus/camera/capmode/BaseMode;->mPreferences:Landroid/content/SharedPreferences;

    iget-object p0, p0, Lcom/oplus/camera/capmode/BaseMode;->mActivity:Landroid/app/Activity;

    const v2, 0x7f1003ca

    .line 4433
    invoke-virtual {p0, v2}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object p0

    const-string v2, "pref_camera_timer_shutter_key"

    .line 4432
    invoke-interface {v0, v2, p0}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    .line 4436
    :try_start_0
    invoke-static {p0}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    :cond_1
    :goto_0
    return-object v1
.end method

.method protected getTorchMode()Ljava/lang/String;
    .locals 2

    .line 4027
    iget-object v0, p0, Lcom/oplus/camera/capmode/BaseMode;->mPreferences:Landroid/content/SharedPreferences;

    if-eqz v0, :cond_0

    .line 4028
    iget-object p0, p0, Lcom/oplus/camera/capmode/BaseMode;->mActivity:Landroid/app/Activity;

    invoke-static {p0}, Lcom/oplus/camera/util/Util;->F(Landroid/content/Context;)Ljava/lang/String;

    move-result-object p0

    const-string v1, "pref_camera_torch_mode_key"

    invoke-interface {v0, v1, p0}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 4031
    :cond_0
    iget-object p0, p0, Lcom/oplus/camera/capmode/BaseMode;->mActivity:Landroid/app/Activity;

    if-eqz p0, :cond_1

    invoke-static {p0}, Lcom/oplus/camera/util/Util;->F(Landroid/content/Context;)Ljava/lang/String;

    move-result-object p0

    goto :goto_0

    :cond_1
    const-string p0, "off"

    :goto_0
    return-object p0
.end method

.method public getTouchEnable(ZII)Z
    .locals 0

    return p1
.end method

.method public getTrackHalAlgoSize()Landroid/util/Size;
    .locals 1

    .line 5362
    iget-object v0, p0, Lcom/oplus/camera/capmode/BaseMode;->mOneCamera:Lcom/oplus/camera/e/d;

    invoke-interface {v0}, Lcom/oplus/camera/e/d;->e()Lcom/oplus/camera/e/h;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/oplus/camera/capmode/BaseMode;->getPreviewSize(Lcom/oplus/camera/e/h;)Landroid/util/Size;

    move-result-object p0

    return-object p0
.end method

.method protected getUltraPictureSize(Ljava/lang/String;)Landroid/util/Size;
    .locals 5

    .line 4207
    invoke-static {p1}, Lcom/oplus/camera/aps/config/CameraConfig;->getConfigSizeListValue(Ljava/lang/String;)Ljava/util/List;

    move-result-object p1

    .line 4208
    iget-object v0, p0, Lcom/oplus/camera/capmode/BaseMode;->mPreferences:Landroid/content/SharedPreferences;

    iget-object p0, p0, Lcom/oplus/camera/capmode/BaseMode;->mActivity:Landroid/app/Activity;

    const v1, 0x7f1002be

    .line 4209
    invoke-virtual {p0, v1}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object p0

    const-string v1, "pref_camera_photo_ratio_key"

    .line 4208
    invoke-interface {v0, v1, p0}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    .line 4211
    invoke-virtual {p0}, Ljava/lang/String;->hashCode()I

    move-result v0

    const/4 v1, 0x4

    const/4 v2, 0x3

    const/4 v3, 0x2

    const/4 v4, 0x1

    sparse-switch v0, :sswitch_data_0

    goto :goto_0

    :sswitch_0
    const-string v0, "standard"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x0

    goto :goto_1

    :sswitch_1
    const-string v0, "full"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_0

    move p0, v3

    goto :goto_1

    :sswitch_2
    const-string v0, "16_9"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_0

    move p0, v2

    goto :goto_1

    :sswitch_3
    const-string v0, "square"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_0

    move p0, v1

    goto :goto_1

    :sswitch_4
    const-string v0, "standard_high"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_0

    move p0, v4

    goto :goto_1

    :cond_0
    :goto_0
    const/4 p0, -0x1

    :goto_1
    if-eqz p0, :cond_5

    if-eq p0, v4, :cond_5

    if-eq p0, v3, :cond_3

    if-eq p0, v2, :cond_2

    if-eq p0, v1, :cond_1

    const/4 p0, 0x0

    return-object p0

    :cond_1
    const-wide/high16 v0, 0x3ff0000000000000L    # 1.0

    .line 4236
    invoke-static {p1, v0, v1}, Lcom/oplus/camera/util/Util;->b(Ljava/util/List;D)Landroid/util/Size;

    move-result-object p0

    return-object p0

    :cond_2
    const-wide v0, 0x3ffc71c71c71c71cL    # 1.7777777777777777

    .line 4233
    invoke-static {p1, v0, v1}, Lcom/oplus/camera/util/Util;->b(Ljava/util/List;D)Landroid/util/Size;

    move-result-object p0

    return-object p0

    .line 4218
    :cond_3
    invoke-static {}, Lcom/oplus/camera/util/Util;->X()D

    move-result-wide v0

    .line 4219
    invoke-static {p1, v0, v1}, Lcom/oplus/camera/util/Util;->b(Ljava/util/List;D)Landroid/util/Size;

    move-result-object p0

    if-nez p0, :cond_4

    .line 4222
    invoke-static {p1, v0, v1}, Lcom/oplus/camera/util/Util;->c(Ljava/util/List;D)Landroid/util/Size;

    move-result-object p0

    .line 4224
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getUltraPictureSize, get imprecise size: "

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, " with screen ratio: "

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v0, v1}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "BaseMode"

    invoke-static {v0, p1}, Lcom/oplus/camera/e;->a(Ljava/lang/String;Ljava/lang/String;)V

    :cond_4
    return-object p0

    :cond_5
    const-wide v0, 0x3ff5555555555555L    # 1.3333333333333333

    .line 4215
    invoke-static {p1, v0, v1}, Lcom/oplus/camera/util/Util;->b(Ljava/util/List;D)Landroid/util/Size;

    move-result-object p0

    return-object p0

    :sswitch_data_0
    .sparse-switch
        -0x76cada1c -> :sswitch_4
        -0x3553a6e3 -> :sswitch_3
        0x171c9f -> :sswitch_2
        0x30228f -> :sswitch_1
        0x4e3d1ebd -> :sswitch_0
    .end sparse-switch
.end method

.method public getVideoFps()I
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public getVideoFpsRange()Landroid/util/Range;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroid/util/Range<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    const/4 p0, 0x0

    return-object p0
.end method

.method protected getVideoOrientation(I)I
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public getVideoSizeType()Ljava/lang/String;
    .locals 0

    const/4 p0, 0x0

    return-object p0
.end method

.method public getVideoThumbnail(I)Landroid/graphics/Bitmap;
    .locals 0

    const/4 p0, 0x0

    return-object p0
.end method

.method public getZSLMode()Z
    .locals 5

    .line 3914
    invoke-static {}, Lcom/oplus/camera/util/Util;->C()Z

    move-result v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_2

    .line 3916
    iget-object v0, p0, Lcom/oplus/camera/capmode/BaseMode;->mApsDecisionResultLock:Ljava/lang/Object;

    monitor-enter v0

    .line 3917
    :try_start_0
    iget-object v3, p0, Lcom/oplus/camera/capmode/BaseMode;->mDecisionResult:Lcom/oplus/camera/aps/util/CameraApsDecision;

    if-eqz v3, :cond_1

    const/16 v3, 0x1e

    iget-object v4, p0, Lcom/oplus/camera/capmode/BaseMode;->mDecisionResult:Lcom/oplus/camera/aps/util/CameraApsDecision;

    iget v4, v4, Lcom/oplus/camera/aps/util/CameraApsDecision;->mApsDecisionFeatureType:I

    if-eq v3, v4, :cond_0

    const/16 v3, 0x22

    iget-object v4, p0, Lcom/oplus/camera/capmode/BaseMode;->mDecisionResult:Lcom/oplus/camera/aps/util/CameraApsDecision;

    iget v4, v4, Lcom/oplus/camera/aps/util/CameraApsDecision;->mApsDecisionFeatureType:I

    if-ne v3, v4, :cond_1

    .line 3920
    :cond_0
    monitor-exit v0

    return v1

    .line 3922
    :cond_1
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 3924
    iget-boolean v0, p0, Lcom/oplus/camera/capmode/BaseMode;->mbFrontCamera:Z

    if-eqz v0, :cond_2

    invoke-virtual {p0}, Lcom/oplus/camera/capmode/BaseMode;->getLogicCameraType()I

    move-result v0

    if-eqz v0, :cond_2

    return v2

    :catchall_0
    move-exception p0

    .line 3922
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p0

    .line 3929
    :cond_2
    iget-object v0, p0, Lcom/oplus/camera/capmode/BaseMode;->mCameraInterface:Lcom/oplus/camera/capmode/a;

    if-eqz v0, :cond_3

    invoke-interface {v0}, Lcom/oplus/camera/capmode/a;->i()Z

    move-result v0

    if-nez v0, :cond_3

    invoke-static {}, Lcom/oplus/camera/util/Util;->C()Z

    move-result v0

    if-nez v0, :cond_3

    return v2

    .line 3933
    :cond_3
    invoke-static {}, Lcom/oplus/camera/util/Util;->C()Z

    move-result v0

    if-eqz v0, :cond_4

    iget p0, p0, Lcom/oplus/camera/capmode/BaseMode;->mApsBracketMode:I

    if-lez p0, :cond_4

    return v2

    :cond_4
    return v1
.end method

.method protected getZoomAutoMicroOpen()Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public getZoomBarOffset()I
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public getZoomConfigure()Lcom/oplus/camera/af;
    .locals 3

    .line 6154
    new-instance v0, Lcom/oplus/camera/af;

    invoke-direct {v0}, Lcom/oplus/camera/af;-><init>()V

    .line 6155
    invoke-virtual {p0}, Lcom/oplus/camera/capmode/BaseMode;->isVideoHighFps()Z

    move-result v1

    iput-boolean v1, v0, Lcom/oplus/camera/af;->a:Z

    .line 6156
    invoke-virtual {p0}, Lcom/oplus/camera/capmode/BaseMode;->is4k()Z

    move-result v1

    iput-boolean v1, v0, Lcom/oplus/camera/af;->b:Z

    .line 6157
    invoke-virtual {p0}, Lcom/oplus/camera/capmode/BaseMode;->isCaptureModeType()Z

    move-result v1

    invoke-virtual {v0, v1}, Lcom/oplus/camera/af;->a(Z)V

    .line 6158
    invoke-virtual {p0}, Lcom/oplus/camera/capmode/BaseMode;->isSatOpen()Z

    move-result v1

    invoke-virtual {v0, v1}, Lcom/oplus/camera/af;->b(Z)V

    .line 6159
    invoke-virtual {p0}, Lcom/oplus/camera/capmode/BaseMode;->isNoneSatUltraWideAngleOpen()Z

    move-result v1

    invoke-virtual {v0, v1}, Lcom/oplus/camera/af;->c(Z)V

    .line 6161
    invoke-virtual {p0}, Lcom/oplus/camera/capmode/BaseMode;->isNoneSatUltraWideAngleOpen()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 6162
    invoke-virtual {p0}, Lcom/oplus/camera/capmode/BaseMode;->getCameraMode()Ljava/lang/String;

    move-result-object v1

    .line 6163
    invoke-static {}, Lcom/oplus/camera/e/a;->h()I

    move-result v2

    .line 6162
    invoke-static {v1, v2}, Lcom/oplus/camera/e/a;->a(Ljava/lang/String;I)Lcom/oplus/camera/e/h;

    move-result-object v1

    .line 6163
    invoke-virtual {v1}, Lcom/oplus/camera/e/h;->e()F

    move-result v1

    .line 6162
    invoke-virtual {v0, v1}, Lcom/oplus/camera/af;->a(F)V

    :cond_0
    const-string v1, "pref_none_sat_ultra_wide_angle_key"

    .line 6166
    invoke-virtual {p0, v1}, Lcom/oplus/camera/capmode/BaseMode;->getSupportFunction(Ljava/lang/String;)Z

    move-result v1

    invoke-virtual {v0, v1}, Lcom/oplus/camera/af;->f(Z)V

    const-string v1, "pref_none_sat_tele_angle_key"

    .line 6167
    invoke-virtual {p0, v1}, Lcom/oplus/camera/capmode/BaseMode;->getSupportFunction(Ljava/lang/String;)Z

    move-result v1

    invoke-virtual {v0, v1}, Lcom/oplus/camera/af;->g(Z)V

    .line 6168
    iget-boolean v1, p0, Lcom/oplus/camera/capmode/BaseMode;->mbFrontCamera:Z

    invoke-virtual {v0, v1}, Lcom/oplus/camera/af;->m(Z)V

    const-string v1, "key_night_tripod_zoom_hide_ultra_wide"

    .line 6169
    invoke-virtual {p0, v1}, Lcom/oplus/camera/capmode/BaseMode;->getSupportFunction(Ljava/lang/String;)Z

    move-result v1

    invoke-virtual {v0, v1}, Lcom/oplus/camera/af;->p(Z)V

    .line 6170
    invoke-virtual {p0}, Lcom/oplus/camera/capmode/BaseMode;->isTiltShiftOpen()Z

    move-result v1

    invoke-virtual {v0, v1}, Lcom/oplus/camera/af;->G(Z)V

    .line 6171
    invoke-virtual {p0}, Lcom/oplus/camera/capmode/BaseMode;->isStreetOpen()Z

    move-result p0

    invoke-virtual {v0, p0}, Lcom/oplus/camera/af;->d(Z)V

    return-object v0
.end method

.method protected getZoomValue()F
    .locals 0

    .line 3328
    iget-object p0, p0, Lcom/oplus/camera/capmode/BaseMode;->mCameraInterface:Lcom/oplus/camera/capmode/a;

    if-eqz p0, :cond_0

    .line 3329
    invoke-interface {p0}, Lcom/oplus/camera/capmode/a;->ak()F

    move-result p0

    return p0

    :cond_0
    const/high16 p0, 0x3f800000    # 1.0f

    return p0
.end method

.method public handleStartError(ZZ)V
    .locals 0

    return-void
.end method

.method public hasEffectSelected()Z
    .locals 4

    .line 4705
    invoke-direct {p0}, Lcom/oplus/camera/capmode/BaseMode;->getEffectMenuNames()Ljava/util/List;

    move-result-object v0

    .line 4706
    sget v1, Lcom/oplus/camera/ui/preview/a/j;->a:I

    if-eqz v0, :cond_1

    .line 4709
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    const-string v3, "filter"

    .line 4710
    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 4711
    invoke-virtual {p0}, Lcom/oplus/camera/capmode/BaseMode;->getCurrFilterIndex()I

    move-result v1

    goto :goto_0

    :cond_1
    const-string p0, "BaseMode"

    const-string v0, "hasEffectSelected, not Support filter effect."

    .line 4715
    invoke-static {p0, v0}, Lcom/oplus/camera/e;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 4718
    :cond_2
    sget p0, Lcom/oplus/camera/ui/preview/a/j;->a:I

    if-eq v1, p0, :cond_3

    const/4 p0, 0x1

    goto :goto_1

    :cond_3
    const/4 p0, 0x0

    :goto_1
    return p0
.end method

.method public hideBubble(Ljava/lang/String;)V
    .locals 0

    return-void
.end method

.method protected hideFirstBeautyTipView()V
    .locals 1

    .line 698
    iget-object p0, p0, Lcom/oplus/camera/capmode/BaseMode;->mHandler:Landroid/os/Handler;

    if-eqz p0, :cond_0

    const/16 v0, 0xa

    .line 699
    invoke-virtual {p0, v0}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    :cond_0
    return-void
.end method

.method protected hideStreetRockerShutterTipView()V
    .locals 1

    .line 704
    iget-object p0, p0, Lcom/oplus/camera/capmode/BaseMode;->mHandler:Landroid/os/Handler;

    if-eqz p0, :cond_0

    const/16 v0, 0xb

    .line 705
    invoke-virtual {p0, v0}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    :cond_0
    return-void
.end method

.method protected hideViewWhileResume()V
    .locals 0

    return-void
.end method

.method public final initCameraMode()V
    .locals 4

    const-string v0, "BaseMode"

    const-string v1, "initCameraMode"

    .line 2241
    invoke-static {v0, v1}, Lcom/oplus/camera/e;->a(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x0

    .line 2243
    iput-boolean v0, p0, Lcom/oplus/camera/capmode/BaseMode;->mbCapModeInit:Z

    .line 2244
    iput-boolean v0, p0, Lcom/oplus/camera/capmode/BaseMode;->mbModePreInit:Z

    .line 2246
    iget-object v1, p0, Lcom/oplus/camera/capmode/BaseMode;->mPreviewEffectProcess:Lcom/oplus/camera/ui/preview/a/t;

    invoke-interface {v1}, Lcom/oplus/camera/ui/preview/a/t;->k()I

    move-result v1

    const/4 v2, 0x1

    if-eqz v1, :cond_1

    .line 2247
    invoke-virtual {p0}, Lcom/oplus/camera/capmode/BaseMode;->getCurrFilterIndex()I

    move-result v1

    invoke-virtual {p0, v1}, Lcom/oplus/camera/capmode/BaseMode;->updateFilterParam(I)V

    const-string v1, "func_filter_vignette"

    .line 2249
    invoke-virtual {p0, v1}, Lcom/oplus/camera/capmode/BaseMode;->getSupportFunction(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 2250
    invoke-virtual {p0}, Lcom/oplus/camera/capmode/BaseMode;->getCurrFilterType()Ljava/lang/String;

    move-result-object v1

    const-string v3, "oplus_video_filter_olympus"

    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 2251
    iget-object v1, p0, Lcom/oplus/camera/capmode/BaseMode;->mPreviewEffectProcess:Lcom/oplus/camera/ui/preview/a/t;

    invoke-interface {v1, v2}, Lcom/oplus/camera/ui/preview/a/t;->c(Z)V

    goto :goto_0

    .line 2253
    :cond_0
    iget-object v1, p0, Lcom/oplus/camera/capmode/BaseMode;->mPreviewEffectProcess:Lcom/oplus/camera/ui/preview/a/t;

    invoke-interface {v1, v0}, Lcom/oplus/camera/ui/preview/a/t;->c(Z)V

    .line 2257
    :cond_1
    :goto_0
    iput-boolean v0, p0, Lcom/oplus/camera/capmode/BaseMode;->mbShowPostCaptureAlert:Z

    .line 2258
    iget-object v0, p0, Lcom/oplus/camera/capmode/BaseMode;->mCameraInterface:Lcom/oplus/camera/capmode/a;

    invoke-interface {v0}, Lcom/oplus/camera/capmode/a;->u()I

    move-result v0

    iput v0, p0, Lcom/oplus/camera/capmode/BaseMode;->mOrientation:I

    .line 2259
    iput-boolean v2, p0, Lcom/oplus/camera/capmode/BaseMode;->mbModePreInit:Z

    .line 2260
    invoke-direct {p0}, Lcom/oplus/camera/capmode/BaseMode;->isSupportPhotoRatioMenu()Z

    move-result v0

    iput-boolean v0, p0, Lcom/oplus/camera/capmode/BaseMode;->mbSupportSelectPhotoRatio:Z

    .line 2261
    iget-object v0, p0, Lcom/oplus/camera/capmode/BaseMode;->mCameraUIInterface:Lcom/oplus/camera/ui/CameraUIInterface;

    invoke-interface {v0}, Lcom/oplus/camera/ui/CameraUIInterface;->b()Landroid/view/ViewGroup;

    move-result-object v0

    iput-object v0, p0, Lcom/oplus/camera/capmode/BaseMode;->mCameraRootView:Landroid/view/ViewGroup;

    .line 2262
    iget-object v0, p0, Lcom/oplus/camera/capmode/BaseMode;->mPreviewEffectProcess:Lcom/oplus/camera/ui/preview/a/t;

    invoke-interface {v0}, Lcom/oplus/camera/ui/preview/a/t;->c()V

    .line 2263
    invoke-virtual {p0}, Lcom/oplus/camera/capmode/BaseMode;->onInitCameraMode()V

    .line 2264
    invoke-virtual {p0}, Lcom/oplus/camera/capmode/BaseMode;->disableRedDotHintOnModes()V

    .line 2265
    iget-object v0, p0, Lcom/oplus/camera/capmode/BaseMode;->mCameraUIInterface:Lcom/oplus/camera/ui/CameraUIInterface;

    invoke-interface {v0}, Lcom/oplus/camera/ui/CameraUIInterface;->q()V

    .line 2266
    sget-object v0, Lcom/oplus/camera/capmode/BaseMode;->FILTER_KEYS:[Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/oplus/camera/capmode/BaseMode;->removeSettingMenuOption([Ljava/lang/String;)V

    .line 2267
    invoke-virtual {p0}, Lcom/oplus/camera/capmode/BaseMode;->updateEffectMenuNames()V

    .line 2269
    invoke-virtual {p0}, Lcom/oplus/camera/capmode/BaseMode;->isOpenHDR()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 2270
    invoke-direct {p0, v2}, Lcom/oplus/camera/capmode/BaseMode;->updateMenuWithHDRChange(Z)V

    goto :goto_1

    .line 2271
    :cond_2
    invoke-virtual {p0}, Lcom/oplus/camera/capmode/BaseMode;->isAutoHDR()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 2272
    iget-boolean v0, p0, Lcom/oplus/camera/capmode/BaseMode;->mbFrontCamera:Z

    invoke-direct {p0, v0}, Lcom/oplus/camera/capmode/BaseMode;->updateFlashMenuIfHDRIsAuto(Z)V

    .line 2275
    :cond_3
    :goto_1
    iget-object v0, p0, Lcom/oplus/camera/capmode/BaseMode;->mCameraUIInterface:Lcom/oplus/camera/ui/CameraUIInterface;

    invoke-virtual {p0}, Lcom/oplus/camera/capmode/BaseMode;->getPreviewOutlineProvider()Lcom/oplus/camera/ui/q;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/oplus/camera/ui/CameraUIInterface;->a(Lcom/oplus/camera/ui/q;)V

    .line 2276
    iget-object v0, p0, Lcom/oplus/camera/capmode/BaseMode;->mCameraUIInterface:Lcom/oplus/camera/ui/CameraUIInterface;

    invoke-virtual {p0}, Lcom/oplus/camera/capmode/BaseMode;->getCameraMode()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1, v2}, Lcom/oplus/camera/ui/CameraUIInterface;->b(Ljava/lang/String;Z)V

    .line 2278
    iput-boolean v2, p0, Lcom/oplus/camera/capmode/BaseMode;->mbCapModeInit:Z

    return-void
.end method

.method protected interruptCaptureFailedEvent()Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public is10bitsHeicEncodeEnable()Z
    .locals 4

    .line 7223
    iget-object v0, p0, Lcom/oplus/camera/capmode/BaseMode;->mPreferences:Landroid/content/SharedPreferences;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    const-string v2, "pref_10bits_heic_encode_key"

    const-string v3, "off"

    .line 7224
    invoke-interface {v0, v2, v3}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 7227
    invoke-virtual {p0, v2}, Lcom/oplus/camera/capmode/BaseMode;->getSupportFunction(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    const-string v2, "on"

    .line 7228
    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/oplus/camera/capmode/BaseMode;->mbDestroyed:Z

    if-nez v0, :cond_0

    iget-object p0, p0, Lcom/oplus/camera/capmode/BaseMode;->mCameraInterface:Lcom/oplus/camera/capmode/a;

    .line 7229
    invoke-interface {p0}, Lcom/oplus/camera/capmode/a;->i()Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 v1, 0x1

    :cond_0
    return v1
.end method

.method public is4k()Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public is4k120fps()Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public is4k60fps()Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public isAISceneOpen()Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public isAfFixFocuse()Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public isAiEnhancementVideoOpen()Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public isAllowSwitch(Lcom/oplus/camera/d$a;)Z
    .locals 1

    .line 3775
    iget-boolean p1, p0, Lcom/oplus/camera/capmode/BaseMode;->mbAllowSwitchMode:Z

    const/4 v0, 0x1

    if-eqz p1, :cond_0

    invoke-direct {p0}, Lcom/oplus/camera/capmode/BaseMode;->getCapturePreviewDataState()I

    move-result p0

    if-eq p0, v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public isAnimojiOpen()Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public isAntibandingEnable()Z
    .locals 0

    const/4 p0, 0x1

    return p0
.end method

.method public isAnyModeAnimationRunning()Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method protected isApsDecisionAlgoOpen(Ljava/lang/String;)Z
    .locals 5

    .line 1212
    iget-object v0, p0, Lcom/oplus/camera/capmode/BaseMode;->mApsDecisionResultLock:Ljava/lang/Object;

    monitor-enter v0

    .line 1213
    :try_start_0
    iget-object v1, p0, Lcom/oplus/camera/capmode/BaseMode;->mDecisionResult:Lcom/oplus/camera/aps/util/CameraApsDecision;

    const/4 v2, 0x0

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/oplus/camera/capmode/BaseMode;->mDecisionResult:Lcom/oplus/camera/aps/util/CameraApsDecision;

    iget-object v1, v1, Lcom/oplus/camera/aps/util/CameraApsDecision;->mApsAlgoFlag:[Ljava/lang/String;

    if-eqz v1, :cond_1

    .line 1214
    iget-object p0, p0, Lcom/oplus/camera/capmode/BaseMode;->mDecisionResult:Lcom/oplus/camera/aps/util/CameraApsDecision;

    iget-object p0, p0, Lcom/oplus/camera/aps/util/CameraApsDecision;->mApsAlgoFlag:[Ljava/lang/String;

    array-length v1, p0

    move v3, v2

    :goto_0
    if-ge v3, v1, :cond_1

    aget-object v4, p0, v3

    .line 1215
    invoke-static {p1, v4}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 1216
    monitor-exit v0

    const/4 p0, 0x1

    return p0

    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 1220
    :cond_1
    monitor-exit v0

    return v2

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method protected isAutoFlash()Z
    .locals 3

    .line 5645
    iget-object v0, p0, Lcom/oplus/camera/capmode/BaseMode;->mPreferences:Landroid/content/SharedPreferences;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    const-string p0, "BaseMode"

    const-string v0, "isAutoFlash mPreferences is equal null "

    .line 5646
    invoke-static {p0, v0}, Lcom/oplus/camera/e;->a(Ljava/lang/String;Ljava/lang/String;)V

    return v1

    .line 5650
    :cond_0
    invoke-virtual {p0}, Lcom/oplus/camera/capmode/BaseMode;->getFlashMode()Ljava/lang/String;

    move-result-object v0

    const-string v2, "auto"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-boolean p0, p0, Lcom/oplus/camera/capmode/BaseMode;->mbFrontCamera:Z

    if-nez p0, :cond_1

    const/4 p0, 0x1

    return p0

    :cond_1
    return v1
.end method

.method public isAutoFocus()Z
    .locals 0

    const/4 p0, 0x1

    return p0
.end method

.method protected isAutoFrontTorch()Z
    .locals 3

    .line 5658
    iget-object v0, p0, Lcom/oplus/camera/capmode/BaseMode;->mPreferences:Landroid/content/SharedPreferences;

    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/oplus/camera/capmode/BaseMode;->mActivity:Landroid/app/Activity;

    .line 5660
    invoke-static {v1}, Lcom/oplus/camera/util/Util;->F(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "pref_camera_torch_mode_key"

    .line 5659
    invoke-interface {v0, v2, v1}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "auto"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 5661
    invoke-virtual {p0, v2}, Lcom/oplus/camera/capmode/BaseMode;->getSupportFunction(Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public isAutoHDR()Z
    .locals 2

    .line 5679
    iget-object v0, p0, Lcom/oplus/camera/capmode/BaseMode;->mPreferences:Landroid/content/SharedPreferences;

    if-eqz v0, :cond_0

    const-string v0, "pref_camera_hdr_mode_key"

    .line 5680
    invoke-virtual {p0, v0}, Lcom/oplus/camera/capmode/BaseMode;->getSupportFunction(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/oplus/camera/capmode/BaseMode;->mPreferences:Landroid/content/SharedPreferences;

    iget p0, p0, Lcom/oplus/camera/capmode/BaseMode;->mCameraId:I

    .line 5682
    invoke-static {v0, p0}, Lcom/oplus/camera/aps/config/CameraConfig;->getOptionKeyDefaultValue(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object p0

    .line 5681
    invoke-interface {v1, v0, p0}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    const-string v0, "auto"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method protected isAutoMacroOpen()Z
    .locals 2

    const-string v0, "pref_macro_switch"

    .line 1754
    invoke-virtual {p0, v0}, Lcom/oplus/camera/capmode/BaseMode;->getSupportFunction(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1755
    iget-object p0, p0, Lcom/oplus/camera/capmode/BaseMode;->mPreferences:Landroid/content/SharedPreferences;

    const-string v1, "auto"

    invoke-interface {p0, v0, v1}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    .line 1757
    invoke-virtual {v1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public isBackPortraitCameraSwitching()Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method protected isBlurOpen()Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public isBottomGuideEntryViewShown()Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public isBubbleOpen(Ljava/lang/String;)Z
    .locals 5

    .line 6873
    iget-object v0, p0, Lcom/oplus/camera/capmode/BaseMode;->mPreferences:Landroid/content/SharedPreferences;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    const-string p0, "BaseMode"

    const-string p1, "isBubbleOpen, mPreference null"

    .line 6874
    invoke-static {p0, p1}, Lcom/oplus/camera/e;->f(Ljava/lang/String;Ljava/lang/String;)V

    return v1

    .line 6879
    :cond_0
    iget-object v0, p0, Lcom/oplus/camera/capmode/BaseMode;->mCameraUIInterface:Lcom/oplus/camera/ui/CameraUIInterface;

    const/4 v2, 0x1

    if-eqz v0, :cond_4

    .line 6880
    invoke-interface {v0}, Lcom/oplus/camera/ui/CameraUIInterface;->aX()I

    move-result v0

    if-ne v2, v0, :cond_1

    const/4 v0, 0x7

    iget-object v3, p0, Lcom/oplus/camera/capmode/BaseMode;->mCameraUIInterface:Lcom/oplus/camera/ui/CameraUIInterface;

    .line 6881
    invoke-interface {v3}, Lcom/oplus/camera/ui/CameraUIInterface;->bc()I

    move-result v3

    if-ne v0, v3, :cond_3

    :cond_1
    const/4 v0, 0x3

    iget-object v3, p0, Lcom/oplus/camera/capmode/BaseMode;->mCameraUIInterface:Lcom/oplus/camera/ui/CameraUIInterface;

    .line 6882
    invoke-interface {v3}, Lcom/oplus/camera/ui/CameraUIInterface;->aX()I

    move-result v3

    if-ne v0, v3, :cond_2

    iget v0, p0, Lcom/oplus/camera/capmode/BaseMode;->mCameraId:I

    if-nez v0, :cond_3

    :cond_2
    const/4 v0, 0x4

    iget-object v3, p0, Lcom/oplus/camera/capmode/BaseMode;->mCameraUIInterface:Lcom/oplus/camera/ui/CameraUIInterface;

    .line 6884
    invoke-interface {v3}, Lcom/oplus/camera/ui/CameraUIInterface;->aX()I

    move-result v3

    if-ne v0, v3, :cond_4

    :cond_3
    return v1

    :cond_4
    const-string v0, "key_bubble_short_video"

    .line 6888
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 6889
    iget-object p0, p0, Lcom/oplus/camera/capmode/BaseMode;->mPreferences:Landroid/content/SharedPreferences;

    invoke-interface {p0, p1, v1}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result p0

    return p0

    :cond_5
    const-string v0, "key_bubble_type_zoom_ultra_wide"

    .line 6890
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_8

    .line 6892
    invoke-static {}, Lcom/oplus/camera/j;->a()Lcom/oplus/camera/j;

    move-result-object v0

    invoke-virtual {v0}, Lcom/oplus/camera/j;->d()I

    move-result v0

    .line 6893
    invoke-static {}, Lcom/oplus/camera/j;->a()Lcom/oplus/camera/j;

    move-result-object v3

    invoke-virtual {v3}, Lcom/oplus/camera/j;->f()Z

    move-result v3

    const/4 v4, 0x5

    if-gt v4, v0, :cond_7

    if-eqz v3, :cond_6

    goto :goto_0

    .line 6899
    :cond_6
    iget-object p0, p0, Lcom/oplus/camera/capmode/BaseMode;->mPreferences:Landroid/content/SharedPreferences;

    invoke-interface {p0, p1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result p0

    return p0

    :cond_7
    :goto_0
    return v1

    :cond_8
    const-string v0, "key_bubble_street_rocker_shutter"

    .line 6900
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_a

    const-string v0, "com.oplus.feature.street.track.ui.support"

    .line 6901
    invoke-static {v0}, Lcom/oplus/camera/aps/config/CameraConfig;->getConfigBooleanValue(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_9

    .line 6902
    iget-object p0, p0, Lcom/oplus/camera/capmode/BaseMode;->mPreferences:Landroid/content/SharedPreferences;

    invoke-interface {p0, p1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result p0

    return p0

    :cond_9
    return v1

    .line 6907
    :cond_a
    iget-object p0, p0, Lcom/oplus/camera/capmode/BaseMode;->mPreferences:Landroid/content/SharedPreferences;

    invoke-interface {p0, p1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result p0

    return p0
.end method

.method protected isCameraSettingMenuOptionEnable(Ljava/lang/String;)Z
    .locals 0

    const/4 p0, 0x1

    return p0
.end method

.method protected isCaptureInDarkLight(I)Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public isCaptureModeType()Z
    .locals 0

    const/4 p0, 0x1

    return p0
.end method

.method protected isCommonFaceBeautyOpen()Z
    .locals 2

    const-string v0, "func_face_beauty_common"

    .line 4952
    invoke-virtual {p0, v0}, Lcom/oplus/camera/capmode/BaseMode;->getSupportFunction(Ljava/lang/String;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/oplus/camera/capmode/BaseMode;->mPreferences:Landroid/content/SharedPreferences;

    .line 4953
    invoke-virtual {p0}, Lcom/oplus/camera/capmode/BaseMode;->getFaceBeautyKey()Ljava/lang/String;

    move-result-object p0

    invoke-interface {v0, p0, v1}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result p0

    if-eqz p0, :cond_0

    const/4 v1, 0x1

    :cond_0
    return v1
.end method

.method public isCommonVideoMode()Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public isCountDownStarted()Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public isCropX()Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public isDoubleExposureOpen()Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method protected isFaceBeautyDefaultOff()Z
    .locals 0

    .line 4905
    invoke-static {}, Lcom/oplus/camera/l/a;->b()Z

    move-result p0

    return p0
.end method

.method protected isFaceBeautyOrMakeupOpen()Z
    .locals 2

    const-string v0, "func_face_beauty_process"

    .line 4936
    invoke-virtual {p0, v0}, Lcom/oplus/camera/capmode/BaseMode;->getSupportFunction(Ljava/lang/String;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    .line 4937
    invoke-virtual {p0}, Lcom/oplus/camera/capmode/BaseMode;->getFaceBeautyCurrIndex()I

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/oplus/camera/capmode/BaseMode;->isMakeupOpen()Z

    move-result p0

    if-eqz p0, :cond_1

    :cond_0
    const/4 v1, 0x1

    :cond_1
    return v1
.end method

.method public isFaceRectifyMenuOpen()Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public isFaceRectifyOpen()Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public isFastVideoMode()Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public isFilterEffectOpen()Z
    .locals 2

    const-string v0, "pref_filter_process_key"

    .line 1746
    invoke-virtual {p0, v0}, Lcom/oplus/camera/capmode/BaseMode;->getSupportFunction(Ljava/lang/String;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 1747
    sget v0, Lcom/oplus/camera/ui/preview/a/j;->a:I

    invoke-virtual {p0}, Lcom/oplus/camera/capmode/BaseMode;->getCurrFilterIndex()I

    move-result p0

    if-eq v0, p0, :cond_0

    const/4 v1, 0x1

    :cond_0
    return v1
.end method

.method public isFilterOpen(Ljava/lang/String;)Z
    .locals 0

    const-string p0, "default"

    .line 1764
    invoke-virtual {p0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    xor-int/lit8 p0, p0, 0x1

    return p0
.end method

.method public isFirstTipsEnable(Ljava/lang/String;)Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public isFishEyeMode()Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method protected isFixFocusOpen()Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public isFlashRequired()Z
    .locals 2

    const-string v0, "pref_camera_flashmode_key"

    .line 5564
    invoke-virtual {p0, v0}, Lcom/oplus/camera/capmode/BaseMode;->getSupportFunction(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/oplus/camera/capmode/BaseMode;->getRearFlashMode()Ljava/lang/String;

    move-result-object v0

    const-string v1, "on"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_3

    .line 5565
    :cond_0
    invoke-virtual {p0}, Lcom/oplus/camera/capmode/BaseMode;->isAutoFlash()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-boolean v0, p0, Lcom/oplus/camera/capmode/BaseMode;->mbAutoFlash:Z

    if-nez v0, :cond_3

    .line 5566
    :cond_1
    invoke-virtual {p0}, Lcom/oplus/camera/capmode/BaseMode;->isOpenFrontTorch()Z

    move-result v0

    const-string v1, "func_torch_soft_light"

    if-eqz v0, :cond_2

    invoke-virtual {p0, v1}, Lcom/oplus/camera/capmode/BaseMode;->getSupportFunction(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 5567
    :cond_2
    invoke-virtual {p0}, Lcom/oplus/camera/capmode/BaseMode;->isAutoFrontTorch()Z

    move-result v0

    if-eqz v0, :cond_4

    iget-boolean v0, p0, Lcom/oplus/camera/capmode/BaseMode;->mbAutoFlash:Z

    if-eqz v0, :cond_4

    .line 5569
    invoke-virtual {p0, v1}, Lcom/oplus/camera/capmode/BaseMode;->getSupportFunction(Ljava/lang/String;)Z

    move-result p0

    if-nez p0, :cond_4

    :cond_3
    const/4 p0, 0x1

    return p0

    :cond_4
    const/4 p0, 0x0

    return p0
.end method

.method public isFlashState()Z
    .locals 2

    .line 5577
    invoke-virtual {p0}, Lcom/oplus/camera/capmode/BaseMode;->isOpenFlash()Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    return v1

    .line 5581
    :cond_0
    invoke-virtual {p0}, Lcom/oplus/camera/capmode/BaseMode;->isAutoFlash()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-boolean v0, p0, Lcom/oplus/camera/capmode/BaseMode;->mbAutoFlash:Z

    if-eqz v0, :cond_1

    return v1

    .line 5585
    :cond_1
    invoke-virtual {p0}, Lcom/oplus/camera/capmode/BaseMode;->isOpenFrontTorch()Z

    move-result v0

    if-eqz v0, :cond_2

    return v1

    .line 5589
    :cond_2
    invoke-virtual {p0}, Lcom/oplus/camera/capmode/BaseMode;->isAutoFrontTorch()Z

    move-result v0

    if-eqz v0, :cond_3

    iget-boolean p0, p0, Lcom/oplus/camera/capmode/BaseMode;->mbAutoFlash:Z

    if-eqz p0, :cond_3

    return v1

    :cond_3
    const/4 p0, 0x0

    return p0
.end method

.method public isFrontTorchEnabled()Z
    .locals 2

    const-string v0, "pref_camera_torch_mode_key"

    .line 5597
    invoke-virtual {p0, v0}, Lcom/oplus/camera/capmode/BaseMode;->getSupportFunction(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 5598
    invoke-virtual {p0}, Lcom/oplus/camera/capmode/BaseMode;->isOpenFrontTorch()Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    return v1

    .line 5602
    :cond_0
    invoke-virtual {p0}, Lcom/oplus/camera/capmode/BaseMode;->isAutoFrontTorch()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-boolean p0, p0, Lcom/oplus/camera/capmode/BaseMode;->mbAutoFlash:Z

    if-eqz p0, :cond_1

    return v1

    :cond_1
    const/4 p0, 0x0

    return p0
.end method

.method public isGestureOpen()Z
    .locals 4

    .line 2173
    iget-object v0, p0, Lcom/oplus/camera/capmode/BaseMode;->mPreferences:Landroid/content/SharedPreferences;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 2174
    iget-object v2, p0, Lcom/oplus/camera/capmode/BaseMode;->mActivity:Landroid/app/Activity;

    const v3, 0x7f1001cc

    .line 2175
    invoke-virtual {v2, v3}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v2

    const-string v3, "pref_camera_gesture_shutter_key"

    .line 2174
    invoke-interface {v0, v3, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 2176
    invoke-virtual {p0, v3}, Lcom/oplus/camera/capmode/BaseMode;->getSupportFunction(Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_0

    const-string p0, "on"

    .line 2177
    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 v1, 0x1

    :cond_0
    return v1
.end method

.method public isHDRSceneModeInAuto()Z
    .locals 0

    .line 5701
    iget-boolean p0, p0, Lcom/oplus/camera/capmode/BaseMode;->mbAutoHDR:Z

    return p0
.end method

.method public isHDRState()Z
    .locals 2

    .line 5611
    invoke-virtual {p0}, Lcom/oplus/camera/capmode/BaseMode;->isOpenHDR()Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    return v1

    .line 5615
    :cond_0
    invoke-virtual {p0}, Lcom/oplus/camera/capmode/BaseMode;->isAutoHDR()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-boolean p0, p0, Lcom/oplus/camera/capmode/BaseMode;->mbAutoHDR:Z

    if-eqz p0, :cond_1

    return v1

    :cond_1
    const/4 p0, 0x0

    return p0
.end method

.method protected isHFR()Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public isHalVideoRecording()Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method protected isHasSuperTextDetectResult()Z
    .locals 0

    .line 1377
    iget-object p0, p0, Lcom/oplus/camera/capmode/BaseMode;->mDetectResult:Lcom/oplus/camera/u/a;

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Lcom/oplus/camera/u/a;->c()Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public isHeifEnable()Z
    .locals 1

    const-string v0, "pref_heif_support_key"

    .line 1584
    invoke-virtual {p0, v0}, Lcom/oplus/camera/capmode/BaseMode;->getSupportFunction(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/oplus/camera/capmode/BaseMode;->mbFrontCamera:Z

    if-nez v0, :cond_0

    .line 1586
    invoke-virtual {p0}, Lcom/oplus/camera/capmode/BaseMode;->is10bitsHeicEncodeEnable()Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method protected isHideHeadLine()Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method protected isHideUICapture()Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public isHighPictureSize()Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public isHistogramOpen()Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method protected isHyperLapseOpen()Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public isHyperLapseUltraWide()Z
    .locals 2

    const-string p0, "com.oplus.feature.hyper.lapse.zoom.list"

    .line 8053
    invoke-static {p0}, Lcom/oplus/camera/aps/config/CameraConfig;->getConfigFloatArrayValue(Ljava/lang/String;)[F

    move-result-object p0

    const/4 v0, 0x0

    if-eqz p0, :cond_0

    .line 8055
    array-length v1, p0

    if-eqz v1, :cond_0

    aget p0, p0, v0

    const v1, 0x3f19999a    # 0.6f

    cmpl-float p0, p0, v1

    if-nez p0, :cond_0

    const/4 v0, 0x1

    :cond_0
    return v0
.end method

.method public isHyperLapseUltraWideOpen()Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public isIdPhotoOpen()Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public isImmediateCapture()Z
    .locals 0

    const/4 p0, 0x1

    return p0
.end method

.method public isInCapturePreparing()Z
    .locals 0

    .line 4459
    iget-boolean p0, p0, Lcom/oplus/camera/capmode/BaseMode;->mbInPreparing:Z

    return p0
.end method

.method protected isInNightProcess()Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method protected isInOfflineNightProcess()Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public isInPreviewArea(Landroid/view/MotionEvent;)Z
    .locals 1

    .line 3711
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    .line 3712
    iget-object p0, p0, Lcom/oplus/camera/capmode/BaseMode;->mCameraUIInterface:Lcom/oplus/camera/ui/CameraUIInterface;

    invoke-interface {p0}, Lcom/oplus/camera/ui/CameraUIInterface;->p()Landroid/widget/RelativeLayout;

    move-result-object p0

    invoke-virtual {p0, v0}, Landroid/widget/RelativeLayout;->getHitRect(Landroid/graphics/Rect;)V

    .line 3714
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawX()F

    move-result p0

    float-to-int p0, p0

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawY()F

    move-result p1

    float-to-int p1, p1

    invoke-virtual {v0, p0, p1}, Landroid/graphics/Rect;->contains(II)Z

    move-result p0

    return p0
.end method

.method protected isInProMode()Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public isInSlideModeChangeAreaForFull(Landroid/view/MotionEvent;)Z
    .locals 4

    .line 3718
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    .line 3719
    iget-object p0, p0, Lcom/oplus/camera/capmode/BaseMode;->mCameraUIInterface:Lcom/oplus/camera/ui/CameraUIInterface;

    invoke-interface {p0}, Lcom/oplus/camera/ui/CameraUIInterface;->p()Landroid/widget/RelativeLayout;

    move-result-object p0

    invoke-virtual {p0, v0}, Landroid/widget/RelativeLayout;->getHitRect(Landroid/graphics/Rect;)V

    .line 3720
    new-instance p0, Landroid/graphics/Rect;

    iget v1, v0, Landroid/graphics/Rect;->left:I

    iget v2, v0, Landroid/graphics/Rect;->top:I

    .line 3721
    invoke-static {}, Lcom/oplus/camera/util/Util;->aj()I

    move-result v3

    add-int/2addr v2, v3

    iget v3, v0, Landroid/graphics/Rect;->right:I

    iget v0, v0, Landroid/graphics/Rect;->bottom:I

    invoke-direct {p0, v1, v2, v3, v0}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 3725
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawX()F

    move-result v0

    float-to-int v0, v0

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawY()F

    move-result p1

    float-to-int p1, p1

    invoke-virtual {p0, v0, p1}, Landroid/graphics/Rect;->contains(II)Z

    move-result p0

    return p0
.end method

.method public isLensDirtyDetectionOpen()Z
    .locals 2

    .line 2162
    iget-object v0, p0, Lcom/oplus/camera/capmode/BaseMode;->mPreferences:Landroid/content/SharedPreferences;

    if-eqz v0, :cond_0

    .line 2163
    iget-object p0, p0, Lcom/oplus/camera/capmode/BaseMode;->mActivity:Landroid/app/Activity;

    const v1, 0x7f1005dc

    .line 2164
    invoke-virtual {p0, v1}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object p0

    const-string v1, "pref_lens_dirty_detection_key"

    .line 2163
    invoke-interface {v0, v1, p0}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    const-string v0, "on"

    .line 2166
    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public isLongExposureSceneMenuOpen()Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method protected isMakeupOpen()Z
    .locals 2

    const-string v0, "key_support_makeup"

    .line 5970
    invoke-virtual {p0, v0}, Lcom/oplus/camera/capmode/BaseMode;->getSupportFunction(Ljava/lang/String;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 5971
    invoke-virtual {p0}, Lcom/oplus/camera/capmode/BaseMode;->getCurrMakeupIndex()I

    move-result p0

    if-eqz p0, :cond_0

    const/4 v1, 0x1

    :cond_0
    return v1
.end method

.method protected isMakeupSloganOpen()Z
    .locals 2

    .line 7189
    invoke-virtual {p0}, Lcom/oplus/camera/capmode/BaseMode;->isSloganOpen()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object p0, p0, Lcom/oplus/camera/capmode/BaseMode;->mPreferences:Landroid/content/SharedPreferences;

    const-string v0, "pref_watermark_makeup_function_key"

    const-string v1, "off"

    .line 7190
    invoke-interface {p0, v0, v1}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    const-string v0, "on"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public isMenuOn(Ljava/lang/String;)Z
    .locals 1

    .line 7978
    iget-object v0, p0, Lcom/oplus/camera/capmode/BaseMode;->mPreferences:Landroid/content/SharedPreferences;

    if-eqz v0, :cond_0

    .line 7979
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object p0, p0, Lcom/oplus/camera/capmode/BaseMode;->mPreferences:Landroid/content/SharedPreferences;

    const-string v0, "off"

    .line 7980
    invoke-interface {p0, p1, v0}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    const-string p1, "on"

    invoke-virtual {p1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public isMicroscopeMode()Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public isMirrorEnable()Z
    .locals 1

    .line 1169
    iget-boolean v0, p0, Lcom/oplus/camera/capmode/BaseMode;->mbFrontCamera:Z

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/oplus/camera/capmode/BaseMode;->isMultiVideoMode()Z

    move-result p0

    if-nez p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method protected isModeBarSelected()Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public isMonoIndex(I)Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public isMultiStickerOpen()Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public isMultiVideoMode()Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public isNeedAPSProcess()Z
    .locals 0

    const/4 p0, 0x1

    return p0
.end method

.method public isNeedMetaDataWhenPause()Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public isNeedProgressBarInCapture()Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public isNeedResetAutoFocus()Z
    .locals 0

    const/4 p0, 0x1

    return p0
.end method

.method public isNeedSetRecordingMargin()Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method protected isNeedSetZslWhenCapture()Z
    .locals 0

    const/4 p0, 0x1

    return p0
.end method

.method public isNeedShowMenuOnTimeSnapShotEnd()Z
    .locals 0

    const/4 p0, 0x1

    return p0
.end method

.method public isNeedTransAnimWhenRecording()Z
    .locals 0

    const/4 p0, 0x1

    return p0
.end method

.method public isNeonEnable()Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method protected isNightProModeSupport()Z
    .locals 0

    const-string p0, "com.oplus.night.pro.support"

    .line 3906
    invoke-static {p0}, Lcom/oplus/camera/aps/config/CameraConfig;->getConfigBooleanValue(Ljava/lang/String;)Z

    move-result p0

    return p0
.end method

.method public isNoneSatTeleAngleOpen()Z
    .locals 3

    const-string v0, "pref_none_sat_tele_angle_key"

    .line 7408
    invoke-virtual {p0, v0}, Lcom/oplus/camera/capmode/BaseMode;->getSupportFunction(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/oplus/camera/capmode/BaseMode;->mPreferences:Landroid/content/SharedPreferences;

    if-eqz v1, :cond_0

    .line 7409
    iget-object p0, p0, Lcom/oplus/camera/capmode/BaseMode;->mActivity:Landroid/app/Activity;

    const v2, 0x7f1006ac

    .line 7410
    invoke-virtual {p0, v2}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object p0

    .line 7409
    invoke-interface {v1, v0, p0}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    const-string v0, "on"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public isNoneSatUltraWideAngleOpen()Z
    .locals 3

    const-string v0, "pref_none_sat_ultra_wide_angle_key"

    .line 7395
    invoke-virtual {p0, v0}, Lcom/oplus/camera/capmode/BaseMode;->getSupportFunction(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/oplus/camera/capmode/BaseMode;->mPreferences:Landroid/content/SharedPreferences;

    if-eqz v1, :cond_0

    iget-object p0, p0, Lcom/oplus/camera/capmode/BaseMode;->mActivity:Landroid/app/Activity;

    if-eqz p0, :cond_0

    const v2, 0x7f1006dc

    .line 7397
    invoke-virtual {p0, v2}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object p0

    .line 7396
    invoke-interface {v1, v0, p0}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    const-string v0, "on"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method protected isOpenFlash()Z
    .locals 5

    .line 5623
    iget-boolean v0, p0, Lcom/oplus/camera/capmode/BaseMode;->mbFlashTemporaryDisabled:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    return v1

    .line 5627
    :cond_0
    iget-object v0, p0, Lcom/oplus/camera/capmode/BaseMode;->mPreferences:Landroid/content/SharedPreferences;

    if-nez v0, :cond_1

    const-string p0, "BaseMode"

    const-string v0, "isOpenFlash mPreferences is equal null "

    .line 5628
    invoke-static {p0, v0}, Lcom/oplus/camera/e;->a(Ljava/lang/String;Ljava/lang/String;)V

    return v1

    .line 5632
    :cond_1
    invoke-virtual {p0}, Lcom/oplus/camera/capmode/BaseMode;->isMultiVideoMode()Z

    move-result v0

    const/4 v2, 0x1

    const-string v3, "torch"

    if-eqz v0, :cond_2

    invoke-virtual {p0}, Lcom/oplus/camera/capmode/BaseMode;->getFlashMode()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    return v2

    .line 5636
    :cond_2
    invoke-virtual {p0}, Lcom/oplus/camera/capmode/BaseMode;->getFlashMode()Ljava/lang/String;

    move-result-object v0

    const-string v4, "on"

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_3

    invoke-virtual {p0}, Lcom/oplus/camera/capmode/BaseMode;->getFlashMode()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    :cond_3
    iget-boolean p0, p0, Lcom/oplus/camera/capmode/BaseMode;->mbFrontCamera:Z

    if-nez p0, :cond_4

    return v2

    :cond_4
    return v1
.end method

.method protected isOpenFrontTorch()Z
    .locals 3

    .line 5668
    iget-object v0, p0, Lcom/oplus/camera/capmode/BaseMode;->mPreferences:Landroid/content/SharedPreferences;

    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/oplus/camera/capmode/BaseMode;->mActivity:Landroid/app/Activity;

    .line 5670
    invoke-static {v1}, Lcom/oplus/camera/util/Util;->F(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "pref_camera_torch_mode_key"

    .line 5669
    invoke-interface {v0, v2, v1}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "on"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 5671
    invoke-virtual {p0, v2}, Lcom/oplus/camera/capmode/BaseMode;->getSupportFunction(Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public isOpenHDR()Z
    .locals 3

    .line 5690
    iget-object v0, p0, Lcom/oplus/camera/capmode/BaseMode;->mPreferences:Landroid/content/SharedPreferences;

    if-eqz v0, :cond_0

    iget v1, p0, Lcom/oplus/camera/capmode/BaseMode;->mCameraId:I

    const-string v2, "pref_camera_hdr_mode_key"

    .line 5692
    invoke-static {v2, v1}, Lcom/oplus/camera/aps/config/CameraConfig;->getOptionKeyDefaultValue(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v1

    .line 5691
    invoke-interface {v0, v2, v1}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "on"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 5693
    invoke-virtual {p0, v2}, Lcom/oplus/camera/capmode/BaseMode;->getSupportFunction(Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public isPIAISceneOpen()Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public isPIModeOpen()Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method protected final isPanelMode()Z
    .locals 2

    .line 7145
    invoke-direct {p0}, Lcom/oplus/camera/capmode/BaseMode;->isFromMainMenuApp()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    .line 7149
    :cond_0
    invoke-static {}, Lcom/oplus/camera/ui/modepanel/b;->a()Lcom/oplus/camera/ui/modepanel/b;

    move-result-object v0

    invoke-virtual {p0}, Lcom/oplus/camera/capmode/BaseMode;->getCameraMode()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/oplus/camera/ui/menu/a/c;->a(Ljava/lang/String;)I

    move-result p0

    invoke-static {p0}, Lcom/oplus/camera/ui/menu/a/c;->e(I)I

    move-result p0

    invoke-virtual {v0, p0}, Lcom/oplus/camera/ui/modepanel/b;->a(I)Lcom/oplus/camera/ui/modepanel/i;

    move-result-object p0

    if-eqz p0, :cond_1

    .line 7150
    invoke-virtual {p0}, Lcom/oplus/camera/ui/modepanel/i;->c()Ljava/lang/String;

    move-result-object p0

    const-string v0, "position_mode_panel"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    :cond_1
    return v1
.end method

.method protected isProModeSupport()Z
    .locals 0

    const-string p0, "com.oplus.highpicture.pro.support"

    .line 3910
    invoke-static {p0}, Lcom/oplus/camera/aps/config/CameraConfig;->getConfigBooleanValue(Ljava/lang/String;)Z

    move-result p0

    return p0
.end method

.method public isQrCodeOpened()Z
    .locals 2

    .line 7491
    invoke-static {}, Lcom/oplus/camera/l/a;->d()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "pref_qr_code_key"

    .line 7492
    invoke-virtual {p0, v0}, Lcom/oplus/camera/capmode/BaseMode;->getSupportFunction(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object p0, p0, Lcom/oplus/camera/capmode/BaseMode;->mPreferences:Landroid/content/SharedPreferences;

    if-eqz p0, :cond_0

    const-string v1, "on"

    .line 7494
    invoke-interface {p0, v0, v1}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method protected isQuickVideoInRestriction()Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method protected isRawOpen()Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method protected isRawRequestTag()Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method protected isSalientObjectDetectionEnabled()Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public isSatOpen()Z
    .locals 1

    const-string v0, "func_sat_camera"

    .line 7375
    invoke-virtual {p0, v0}, Lcom/oplus/camera/capmode/BaseMode;->getSupportFunction(Ljava/lang/String;)Z

    move-result p0

    return p0
.end method

.method public isShowAnimojiMenu()Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public isShowBeauty3D()Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public isShowFaceBeautyMenu()Z
    .locals 0

    const/4 p0, 0x1

    return p0
.end method

.method public isShowFixFocusMenu()Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public isShowProPanelMenu()Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public isShowProgressBarForOtherApp()Z
    .locals 0

    const/4 p0, 0x1

    return p0
.end method

.method public isShowSceneNightTips()Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method protected isShowUltraWide()Z
    .locals 1

    .line 7296
    invoke-virtual {p0}, Lcom/oplus/camera/capmode/BaseMode;->isVideoNeonOpen()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/oplus/camera/capmode/BaseMode;->isBlurOpen()Z

    move-result p0

    if-nez p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public isShowZoomMenu()Z
    .locals 0

    const/4 p0, 0x1

    return p0
.end method

.method public isShowingGuideView()Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public isSloganForceLandscape()Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method protected isSloganOpen()Z
    .locals 3

    const-string v0, "pref_watermark_function_key"

    .line 7176
    invoke-virtual {p0, v0}, Lcom/oplus/camera/capmode/BaseMode;->getSupportFunction(Ljava/lang/String;)Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_3

    .line 7177
    invoke-virtual {p0}, Lcom/oplus/camera/capmode/BaseMode;->isSuperTextOpen()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {p0}, Lcom/oplus/camera/capmode/BaseMode;->isHasSuperTextDetectResult()Z

    move-result v1

    if-nez v1, :cond_1

    :cond_0
    invoke-virtual {p0}, Lcom/oplus/camera/capmode/BaseMode;->is4k120fps()Z

    move-result v1

    if-eqz v1, :cond_2

    :cond_1
    return v2

    .line 7181
    :cond_2
    iget-object p0, p0, Lcom/oplus/camera/capmode/BaseMode;->mPreferences:Landroid/content/SharedPreferences;

    if-eqz p0, :cond_3

    const-string v1, "off"

    invoke-interface {p0, v0, v1}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    const-string v0, "on"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_3

    const/4 v2, 0x1

    :cond_3
    return v2
.end method

.method public isSlowVideoMode()Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method protected isStarVideoOpen()Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public isStarryMode()Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public isStickerMenuOpen()Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public isStreamerEnable()Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public isStreamerOpen()Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public isStreetOpen()Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public isSubMenuEnable()Z
    .locals 0

    const/4 p0, 0x1

    return p0
.end method

.method protected isSuperClearPortraitEnable()Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method protected isSuperClearPortraitOpen()Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method protected isSuperEISOpen()Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method protected isSuperEISProOpen()Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method protected isSuperRawOpen()Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public isSuperTextOpen()Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public isSupportAutoFocus()Z
    .locals 0

    const/4 p0, 0x1

    return p0
.end method

.method protected final isSupportFastShot()Z
    .locals 1

    .line 7170
    iget-object v0, p0, Lcom/oplus/camera/capmode/BaseMode;->mOneCamera:Lcom/oplus/camera/e/d;

    if-eqz v0, :cond_0

    .line 7171
    invoke-interface {v0}, Lcom/oplus/camera/e/d;->e()Lcom/oplus/camera/e/h;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object p0, p0, Lcom/oplus/camera/capmode/BaseMode;->mOneCamera:Lcom/oplus/camera/e/d;

    .line 7172
    invoke-interface {p0}, Lcom/oplus/camera/e/d;->e()Lcom/oplus/camera/e/h;

    move-result-object p0

    invoke-virtual {p0}, Lcom/oplus/camera/e/h;->E()Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public isSupportHyperLapseZoomChange()Z
    .locals 1

    const-string p0, "com.oplus.feature.hyper.lapse.zoom.list"

    .line 8047
    invoke-static {p0}, Lcom/oplus/camera/aps/config/CameraConfig;->getConfigFloatArrayValue(Ljava/lang/String;)[F

    move-result-object p0

    const/4 v0, 0x1

    if-eqz p0, :cond_0

    .line 8049
    array-length p0, p0

    if-le p0, v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public isSupportLensSwicth()Z
    .locals 0

    const/4 p0, 0x1

    return p0
.end method

.method protected isSupportNoneSat()Z
    .locals 1

    .line 1226
    invoke-virtual {p0}, Lcom/oplus/camera/capmode/BaseMode;->getCameraMode()Ljava/lang/String;

    move-result-object v0

    iget-boolean p0, p0, Lcom/oplus/camera/capmode/BaseMode;->mbFrontCamera:Z

    invoke-static {v0, p0}, Lcom/oplus/camera/util/Util;->b(Ljava/lang/String;Z)Z

    move-result p0

    return p0
.end method

.method public isSupportSelectPhotoRatio()Z
    .locals 0

    .line 7564
    iget-boolean p0, p0, Lcom/oplus/camera/capmode/BaseMode;->mbSupportSelectPhotoRatio:Z

    return p0
.end method

.method public isSupportShowFilterMenu()Z
    .locals 1

    const-string v0, "pref_filter_process_key"

    .line 1590
    invoke-virtual {p0, v0}, Lcom/oplus/camera/capmode/BaseMode;->getSupportFunction(Ljava/lang/String;)Z

    move-result p0

    return p0
.end method

.method protected isTiltShiftOpen()Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method protected isTiltShiftSupportBeauty()Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public isTrackFocusOpen()Z
    .locals 0

    .line 5358
    iget-boolean p0, p0, Lcom/oplus/camera/capmode/BaseMode;->mbTrackFocusOpen:Z

    return p0
.end method

.method public isTripodNight()Z
    .locals 5

    .line 1796
    iget-object v0, p0, Lcom/oplus/camera/capmode/BaseMode;->mApsDecisionResultLock:Ljava/lang/Object;

    monitor-enter v0

    .line 1797
    :try_start_0
    iget-object v1, p0, Lcom/oplus/camera/capmode/BaseMode;->mDecisionResult:Lcom/oplus/camera/aps/util/CameraApsDecision;

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/oplus/camera/capmode/BaseMode;->mDecisionResult:Lcom/oplus/camera/aps/util/CameraApsDecision;

    iget-object v1, v1, Lcom/oplus/camera/aps/util/CameraApsDecision;->mApsAlgoFlag:[Ljava/lang/String;

    if-eqz v1, :cond_0

    const-string v1, "aps_algo_supernight"

    iget-object v4, p0, Lcom/oplus/camera/capmode/BaseMode;->mDecisionResult:Lcom/oplus/camera/aps/util/CameraApsDecision;

    iget-object v4, v4, Lcom/oplus/camera/aps/util/CameraApsDecision;->mApsAlgoFlag:[Ljava/lang/String;

    aget-object v4, v4, v3

    .line 1799
    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object p0, p0, Lcom/oplus/camera/capmode/BaseMode;->mDecisionResult:Lcom/oplus/camera/aps/util/CameraApsDecision;

    iget p0, p0, Lcom/oplus/camera/aps/util/CameraApsDecision;->mSuperNightScene:I

    if-ne p0, v2, :cond_0

    goto :goto_0

    :cond_0
    move v2, v3

    :goto_0
    monitor-exit v0

    return v2

    :catchall_0
    move-exception p0

    .line 1801
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public isUltraHighResolutionOpened()Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public isUltraNightVideoOpen()Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public isUltraWideHighPictureSize()Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method protected isUseMediaCodec()Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method protected isUseMediaRecorderNotUseAPS()Z
    .locals 0

    const/4 p0, 0x1

    return p0
.end method

.method public isVideo10BitOpen()Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method protected isVideoHdrOpen()Z
    .locals 3

    const-string v0, "func_hdr"

    .line 5717
    invoke-virtual {p0, v0}, Lcom/oplus/camera/capmode/BaseMode;->getSupportMenu(Ljava/lang/String;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    .line 5718
    invoke-virtual {p0}, Lcom/oplus/camera/capmode/BaseMode;->getHDRKey()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/oplus/camera/capmode/BaseMode;->getHDRModeValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v2, "on"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/oplus/camera/capmode/BaseMode;->getHDRKey()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/oplus/camera/capmode/BaseMode;->getHDRModeValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    const-string v0, "auto"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_1

    :cond_0
    const/4 v1, 0x1

    :cond_1
    return v1
.end method

.method public isVideoHighFps()Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public isVideoModeType()Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method protected isVideoNeonOpen()Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public isVideoRecordStarted()Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public isVideoRecordStarting()Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public isVideoRecordStopped()Z
    .locals 0

    const/4 p0, 0x1

    return p0
.end method

.method public isVideoRecordStopping()Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public isVideoRecording()Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method protected isVideoRetentionOpen()Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public isVideoSuperEisWideOpen()Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method protected isVideoTimeLapseTiltShiftOpen()Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public isVividEffectOpen()Z
    .locals 3

    const-string v0, "pref_camera_vivid_effect_key"

    .line 5374
    invoke-virtual {p0, v0}, Lcom/oplus/camera/capmode/BaseMode;->getSupportFunction(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 5377
    iget-object v1, p0, Lcom/oplus/camera/capmode/BaseMode;->mPreferences:Landroid/content/SharedPreferences;

    if-eqz v1, :cond_0

    .line 5378
    iget-object p0, p0, Lcom/oplus/camera/capmode/BaseMode;->mActivity:Landroid/app/Activity;

    const v2, 0x7f1004fa

    .line 5379
    invoke-virtual {p0, v2}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object p0

    .line 5378
    invoke-interface {v1, v0, p0}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    goto :goto_0

    :cond_0
    const-string p0, "off"

    :goto_0
    const-string v0, "on"

    .line 5382
    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    return p0

    :cond_1
    const/4 p0, 0x0

    return p0
.end method

.method public isZoomFaceRectifySupported()Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public synthetic lambda$onMakeupTypeChanged$1$BaseMode()V
    .locals 0

    .line 6044
    iget-object p0, p0, Lcom/oplus/camera/capmode/BaseMode;->mCameraInterface:Lcom/oplus/camera/capmode/a;

    invoke-interface {p0}, Lcom/oplus/camera/capmode/a;->av()V

    return-void
.end method

.method public synthetic lambda$pictureTakenCallback$0$BaseMode()V
    .locals 1

    .line 3201
    iget-object p0, p0, Lcom/oplus/camera/capmode/BaseMode;->mCameraUIInterface:Lcom/oplus/camera/ui/CameraUIInterface;

    const/4 v0, 0x1

    invoke-interface {p0, v0}, Lcom/oplus/camera/ui/CameraUIInterface;->P(Z)V

    return-void
.end method

.method public synthetic lambda$updateScreenState$2$BaseMode()V
    .locals 2

    .line 7681
    iget-object v0, p0, Lcom/oplus/camera/capmode/BaseMode;->mActivity:Landroid/app/Activity;

    new-instance v1, Lcom/oplus/camera/capmode/BaseMode$9;

    invoke-direct {v1, p0}, Lcom/oplus/camera/capmode/BaseMode$9;-><init>(Lcom/oplus/camera/capmode/BaseMode;)V

    invoke-virtual {v0, v1}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method public synthetic lambda$updateScreenState$3$BaseMode()V
    .locals 2

    .line 7717
    iget-boolean v0, p0, Lcom/oplus/camera/capmode/BaseMode;->mbAutoHDR:Z

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/oplus/camera/capmode/BaseMode;->displayAllIcon(ZZ)V

    .line 7718
    invoke-direct {p0}, Lcom/oplus/camera/capmode/BaseMode;->checkFlashMode()V

    .line 7719
    iget-object p0, p0, Lcom/oplus/camera/capmode/BaseMode;->mCameraUIInterface:Lcom/oplus/camera/ui/CameraUIInterface;

    invoke-interface {p0}, Lcom/oplus/camera/ui/CameraUIInterface;->z()V

    return-void
.end method

.method protected lastCaptureFrameArrive()V
    .locals 0

    return-void
.end method

.method public needApsToProcessVideoWatermark()Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method protected needCancelToForceStop()Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public needClearFocusView()Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public needConfigPhysicalStream(Ljava/lang/String;)Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public needDelayCloseForCapture()Z
    .locals 0

    const/4 p0, 0x1

    return p0
.end method

.method public needDelayFaceDetection()Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public needDeleteTheSizeByRatio(Ljava/lang/String;)Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public needLutTexture()Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method protected needOverlayBitmap()Z
    .locals 0

    const/4 p0, 0x1

    return p0
.end method

.method public needPostProcessAfterStopRecord()Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public needPreviewMeta(I)Z
    .locals 0

    const/4 p0, 0x1

    return p0
.end method

.method public needSatCrossAnimation()Z
    .locals 1

    .line 7042
    iget-object v0, p0, Lcom/oplus/camera/capmode/BaseMode;->mCameraUIInterface:Lcom/oplus/camera/ui/CameraUIInterface;

    if-eqz v0, :cond_0

    const-string v0, "com.oplus.sat.need.cross.animation"

    .line 7043
    invoke-static {v0}, Lcom/oplus/camera/aps/config/CameraConfig;->getConfigBooleanValue(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/oplus/camera/capmode/BaseMode;->mCameraUIInterface:Lcom/oplus/camera/ui/CameraUIInterface;

    .line 7044
    invoke-interface {v0}, Lcom/oplus/camera/ui/CameraUIInterface;->aw()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 7045
    invoke-virtual {p0}, Lcom/oplus/camera/capmode/BaseMode;->isSatOpen()Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method protected needSetMakeupToAlgo()Z
    .locals 1

    const-string v0, "key_support_makeup"

    .line 2594
    invoke-virtual {p0, v0}, Lcom/oplus/camera/capmode/BaseMode;->getSupportFunction(Ljava/lang/String;)Z

    move-result p0

    return p0
.end method

.method public needShow10bitHint()Z
    .locals 0

    .line 6249
    invoke-virtual {p0}, Lcom/oplus/camera/capmode/BaseMode;->is10bitsHeicEncodeEnable()Z

    move-result p0

    return p0
.end method

.method public needStoreImage()Z
    .locals 0

    const/4 p0, 0x1

    return p0
.end method

.method public needSurface(Ljava/lang/String;)Z
    .locals 5

    const-string v0, "type_still_capture_yuv_main"

    .line 7007
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    return v1

    :cond_0
    const-string v0, "type_still_capture_raw"

    .line 7011
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const-string v2, "pref_support_raw_post_process"

    const/4 v3, 0x0

    if-eqz v0, :cond_2

    .line 7012
    invoke-virtual {p0, v2}, Lcom/oplus/camera/capmode/BaseMode;->getSupportFunction(Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_1

    const-string p0, "com.oplus.disable.raw"

    .line 7013
    invoke-static {p0}, Lcom/oplus/camera/aps/config/CameraConfig;->getConfigBooleanValue(Ljava/lang/String;)Z

    move-result p0

    if-nez p0, :cond_1

    goto :goto_0

    :cond_1
    move v1, v3

    :goto_0
    return v1

    :cond_2
    const-string v0, "type_tuning_data_yuv"

    .line 7016
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const-string v4, "com.oplus.tuning.data.buffer.support"

    if-eqz v0, :cond_4

    .line 7017
    invoke-static {}, Lcom/oplus/camera/util/Util;->C()Z

    move-result p0

    if-nez p0, :cond_3

    .line 7018
    invoke-static {v4}, Lcom/oplus/camera/aps/config/CameraConfig;->getConfigBooleanValue(Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_3

    goto :goto_1

    :cond_3
    move v1, v3

    :goto_1
    return v1

    :cond_4
    const-string v0, "type_tuning_data_raw"

    .line 7021
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_6

    .line 7022
    invoke-static {}, Lcom/oplus/camera/util/Util;->C()Z

    move-result p1

    if-nez p1, :cond_5

    .line 7023
    invoke-static {v4}, Lcom/oplus/camera/aps/config/CameraConfig;->getConfigBooleanValue(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_5

    .line 7024
    invoke-virtual {p0, v2}, Lcom/oplus/camera/capmode/BaseMode;->getSupportFunction(Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_5

    goto :goto_2

    :cond_5
    move v1, v3

    :goto_2
    return v1

    :cond_6
    return v3
.end method

.method protected needUpdateAsdSceneValue()Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public needUpdateFlashIcon()Z
    .locals 0

    const/4 p0, 0x1

    return p0
.end method

.method public needUploadOplusStatistics(Ljava/lang/String;)Z
    .locals 1

    const-string v0, "pref_zoom_key"

    .line 1551
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 1552
    invoke-virtual {p0, p1}, Lcom/oplus/camera/capmode/BaseMode;->getSupportFunction(Ljava/lang/String;)Z

    move-result p1

    if-nez p1, :cond_1

    iget-boolean p0, p0, Lcom/oplus/camera/capmode/BaseMode;->mbBurstShot:Z

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

    .line 1554
    :cond_2
    invoke-virtual {p0, p1}, Lcom/oplus/camera/capmode/BaseMode;->getSupportFunction(Ljava/lang/String;)Z

    move-result p0

    return p0
.end method

.method protected onAISSnapshotChecked(Lcom/oplus/camera/aps/util/CameraApsDecision;)V
    .locals 0

    return-void
.end method

.method public onAISceneClosed(I)V
    .locals 0

    return-void
.end method

.method protected abstract onAfterPictureTaken([BZ)V
.end method

.method public onAfterSnapping()Z
    .locals 0

    const/4 p0, 0x1

    return p0
.end method

.method public onAfterStartPreview(Z)V
    .locals 4

    const/4 v0, 0x1

    .line 2646
    invoke-virtual {p0, v0}, Lcom/oplus/camera/capmode/BaseMode;->setAllowSwitchMode(Z)V

    .line 2647
    invoke-direct {p0}, Lcom/oplus/camera/capmode/BaseMode;->isSupportPhotoRatioMenu()Z

    move-result v0

    iput-boolean v0, p0, Lcom/oplus/camera/capmode/BaseMode;->mbSupportSelectPhotoRatio:Z

    .line 2648
    iget-object v0, p0, Lcom/oplus/camera/capmode/BaseMode;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 2649
    iget-object v0, p0, Lcom/oplus/camera/capmode/BaseMode;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    const-string v0, "pref_camera_torch_mode_key"

    .line 2651
    invoke-virtual {p0, v0}, Lcom/oplus/camera/capmode/BaseMode;->getSupportFunction(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 2652
    iget-object v1, p0, Lcom/oplus/camera/capmode/BaseMode;->mCameraUIInterface:Lcom/oplus/camera/ui/CameraUIInterface;

    iget-object v2, p0, Lcom/oplus/camera/capmode/BaseMode;->mActivity:Landroid/app/Activity;

    const v3, 0x7f100484

    .line 2653
    invoke-virtual {v2, v3}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v2

    const-string v3, "on"

    .line 2652
    invoke-interface {v1, v0, v3, v2}, Lcom/oplus/camera/ui/CameraUIInterface;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 2656
    :cond_0
    iget-object v0, p0, Lcom/oplus/camera/capmode/BaseMode;->mStatePreferenceHelper:Lcom/oplus/camera/algovisualization/j;

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/oplus/camera/capmode/BaseMode;->mActivity:Landroid/app/Activity;

    if-eqz v0, :cond_1

    .line 2657
    new-instance v1, Lcom/oplus/camera/algovisualization/j;

    invoke-direct {v1, v0}, Lcom/oplus/camera/algovisualization/j;-><init>(Landroid/app/Activity;)V

    iput-object v1, p0, Lcom/oplus/camera/capmode/BaseMode;->mStatePreferenceHelper:Lcom/oplus/camera/algovisualization/j;

    .line 2660
    :cond_1
    iget-object v0, p0, Lcom/oplus/camera/capmode/BaseMode;->mStatePreferenceHelper:Lcom/oplus/camera/algovisualization/j;

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Lcom/oplus/camera/algovisualization/j;->b()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 2661
    new-instance v0, Lcom/oplus/camera/algovisualization/c;

    iget-object v1, p0, Lcom/oplus/camera/capmode/BaseMode;->mActivity:Landroid/app/Activity;

    iget-object v2, p0, Lcom/oplus/camera/capmode/BaseMode;->mOneCamera:Lcom/oplus/camera/e/d;

    invoke-direct {v0, v1, v2}, Lcom/oplus/camera/algovisualization/c;-><init>(Landroid/app/Activity;Lcom/oplus/camera/e/d;)V

    iput-object v0, p0, Lcom/oplus/camera/capmode/BaseMode;->algoVisualViewManager:Lcom/oplus/camera/algovisualization/c;

    .line 2662
    iget-object v0, p0, Lcom/oplus/camera/capmode/BaseMode;->algoVisualViewManager:Lcom/oplus/camera/algovisualization/c;

    invoke-virtual {v0}, Lcom/oplus/camera/algovisualization/c;->a()V

    .line 2665
    :cond_2
    iget-object v0, p0, Lcom/oplus/camera/capmode/BaseMode;->mCameraUIInterface:Lcom/oplus/camera/ui/CameraUIInterface;

    invoke-virtual {p0}, Lcom/oplus/camera/capmode/BaseMode;->getEffectMenuKeyByMode()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0}, Lcom/oplus/camera/capmode/BaseMode;->isMicroscopeMode()Z

    move-result v2

    invoke-interface {v0, v1, v2}, Lcom/oplus/camera/ui/CameraUIInterface;->a(Ljava/lang/String;Z)V

    .line 2667
    iget-object v0, p0, Lcom/oplus/camera/capmode/BaseMode;->mCameraUIInterface:Lcom/oplus/camera/ui/CameraUIInterface;

    invoke-interface {v0}, Lcom/oplus/camera/ui/CameraUIInterface;->aF()V

    if-eqz p1, :cond_3

    .line 2670
    invoke-direct {p0}, Lcom/oplus/camera/capmode/BaseMode;->showBubble()V

    :cond_3
    return-void
.end method

.method public onApsPreviewCaptureCompleted(Lcom/oplus/ocs/camera/CameraPreviewCallback$CameraPreviewResult;Z)V
    .locals 0

    return-void
.end method

.method public onBackPressed()Z
    .locals 3

    .line 2194
    invoke-virtual {p0}, Lcom/oplus/camera/capmode/BaseMode;->isPanelMode()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_2

    .line 2195
    iget-object v0, p0, Lcom/oplus/camera/capmode/BaseMode;->mCameraUIInterface:Lcom/oplus/camera/ui/CameraUIInterface;

    invoke-interface {v0}, Lcom/oplus/camera/ui/CameraUIInterface;->aw()Z

    move-result v0

    const/4 v2, 0x1

    if-eqz v0, :cond_0

    .line 2196
    iget-object p0, p0, Lcom/oplus/camera/capmode/BaseMode;->mCameraUIInterface:Lcom/oplus/camera/ui/CameraUIInterface;

    invoke-interface {p0, v1}, Lcom/oplus/camera/ui/CameraUIInterface;->F(Z)V

    goto :goto_0

    .line 2197
    :cond_0
    iget-object v0, p0, Lcom/oplus/camera/capmode/BaseMode;->mCameraUIInterface:Lcom/oplus/camera/ui/CameraUIInterface;

    invoke-interface {v0}, Lcom/oplus/camera/ui/CameraUIInterface;->ay()Z

    move-result v0

    if-eqz v0, :cond_1

    return v2

    .line 2200
    :cond_1
    iget-object p0, p0, Lcom/oplus/camera/capmode/BaseMode;->mCameraUIInterface:Lcom/oplus/camera/ui/CameraUIInterface;

    const/4 v0, 0x0

    invoke-static {}, Lcom/oplus/camera/util/Util;->aa()Z

    move-result v1

    xor-int/2addr v1, v2

    invoke-interface {p0, v0, v1}, Lcom/oplus/camera/ui/CameraUIInterface;->c(Ljava/lang/String;Z)V

    :goto_0
    return v2

    .line 2205
    :cond_2
    invoke-virtual {p0}, Lcom/oplus/camera/capmode/BaseMode;->resetMonoFilter()V

    return v1
.end method

.method protected onBeforePictureTaken([BZ)V
    .locals 0

    return-void
.end method

.method protected abstract onBeforePreview()V
.end method

.method protected abstract onBeforeSnapping(Lcom/oplus/camera/e/c;)Z
.end method

.method protected onBinauralRecordStateChanged(Z)V
    .locals 0

    return-void
.end method

.method protected onBurstShotCapture()Z
    .locals 0

    const/4 p0, 0x1

    return p0
.end method

.method public onCameraIdChangedAnimationEnd()V
    .locals 0

    return-void
.end method

.method public onCameraPermissionGranted()V
    .locals 0

    return-void
.end method

.method protected onCancelTakePicture()V
    .locals 0

    return-void
.end method

.method public onCancleCapturePictureRequest()V
    .locals 0

    return-void
.end method

.method public onCaptureCanceled(Lcom/oplus/camera/e/c;)V
    .locals 10

    .line 1448
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onCaptureCanceled, requestTag: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "BaseMode"

    invoke-static {v0, p1}, Lcom/oplus/camera/e;->f(Ljava/lang/String;Ljava/lang/String;)V

    const/4 p1, 0x0

    .line 1450
    iput-boolean p1, p0, Lcom/oplus/camera/capmode/BaseMode;->mbCaptureNotMatchMeta:Z

    .line 1452
    iget-object v0, p0, Lcom/oplus/camera/capmode/BaseMode;->mCameraInterface:Lcom/oplus/camera/capmode/a;

    if-eqz v0, :cond_0

    .line 1453
    iget-wide v1, p0, Lcom/oplus/camera/capmode/BaseMode;->mCaptureMergeIdentity:J

    invoke-interface {v0, v1, v2, p1, p1}, Lcom/oplus/camera/capmode/a;->a(JII)V

    :cond_0
    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    .line 1456
    invoke-virtual {p0}, Lcom/oplus/camera/capmode/BaseMode;->getImageFormat()I

    move-result v7

    const/4 v8, 0x0

    const/4 v9, 0x0

    move-object v3, p0

    invoke-virtual/range {v3 .. v9}, Lcom/oplus/camera/capmode/BaseMode;->onPictureCallback([BIIIZI)V

    return-void
.end method

.method public onCaptureCompleted(Lcom/oplus/camera/aps/service/CameraCaptureResult;Lcom/oplus/camera/e/c;)V
    .locals 1

    const-string v0, "captureX onCaptureCompleted"

    .line 1382
    invoke-static {v0}, Lcom/oplus/camera/e;->a(Ljava/lang/String;)V

    if-eqz p2, :cond_3

    .line 1384
    iget-boolean v0, p0, Lcom/oplus/camera/capmode/BaseMode;->mbDestroyed:Z

    if-eqz v0, :cond_0

    goto :goto_2

    :cond_0
    const/4 p2, 0x0

    .line 1390
    iput-boolean p2, p0, Lcom/oplus/camera/capmode/BaseMode;->mbCaptureNotMatchMeta:Z

    .line 1397
    iget-object p2, p0, Lcom/oplus/camera/capmode/BaseMode;->mCameraInterface:Lcom/oplus/camera/capmode/a;

    if-eqz p2, :cond_2

    invoke-interface {p2}, Lcom/oplus/camera/capmode/a;->aN()Z

    move-result p2

    if-nez p2, :cond_2

    invoke-virtual {p0}, Lcom/oplus/camera/capmode/BaseMode;->isNeedAPSProcess()Z

    move-result p2

    if-eqz p2, :cond_2

    .line 1398
    invoke-virtual {p0}, Lcom/oplus/camera/capmode/BaseMode;->isSatOpen()Z

    move-result p2

    if-eqz p2, :cond_2

    invoke-static {}, Lcom/oplus/camera/aps/util/AlgoSwitchConfig;->getApsVersion()I

    move-result p2

    const/4 v0, 0x2

    if-gt p2, v0, :cond_2

    .line 1399
    invoke-virtual {p1}, Lcom/oplus/camera/aps/service/CameraCaptureResult;->getCaptureResult()Landroid/hardware/camera2/CaptureResult;

    move-result-object p1

    sget-object p2, Lcom/oplus/camera/e/b;->ap:Landroid/hardware/camera2/CaptureResult$Key;

    invoke-static {p1, p2}, Lcom/oplus/camera/e/b;->a(Landroid/hardware/camera2/CaptureResult;Landroid/hardware/camera2/CaptureResult$Key;)Ljava/lang/Object;

    move-result-object p1

    if-eqz p1, :cond_2

    .line 1402
    instance-of p2, p1, Ljava/lang/Integer;

    if-eqz p2, :cond_2

    .line 1403
    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    .line 1405
    iget-object p2, p0, Lcom/oplus/camera/capmode/BaseMode;->mApsDecisionResultLock:Ljava/lang/Object;

    monitor-enter p2

    if-lez p1, :cond_1

    .line 1407
    :try_start_0
    iput p1, p0, Lcom/oplus/camera/capmode/BaseMode;->mSensorNumber:I

    goto :goto_0

    :cond_1
    const/4 p1, 0x1

    .line 1409
    iput p1, p0, Lcom/oplus/camera/capmode/BaseMode;->mSensorNumber:I

    .line 1411
    :goto_0
    monitor-exit p2

    goto :goto_1

    :catchall_0
    move-exception p0

    monitor-exit p2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0

    :cond_2
    :goto_1
    const-string p0, "captureX onCaptureCompleted"

    .line 1416
    invoke-static {p0}, Lcom/oplus/camera/e;->b(Ljava/lang/String;)V

    return-void

    .line 1385
    :cond_3
    :goto_2
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string p1, "onApsCaptureCompleted, tag:"

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "BaseMode"

    invoke-static {p1, p0}, Lcom/oplus/camera/e;->c(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public onCaptureFailed(Landroid/hardware/camera2/CaptureRequest;Lcom/oplus/camera/e/c;)V
    .locals 9

    .line 1461
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "onCaptureFailed, mCaptureMergeIdentity: "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v0, p0, Lcom/oplus/camera/capmode/BaseMode;->mCaptureMergeIdentity:J

    invoke-virtual {p1, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "BaseMode"

    invoke-static {v0, p1}, Lcom/oplus/camera/e;->f(Ljava/lang/String;Ljava/lang/String;)V

    const/4 p1, 0x0

    .line 1463
    iput-boolean p1, p0, Lcom/oplus/camera/capmode/BaseMode;->mbCaptureNotMatchMeta:Z

    .line 1465
    iget-object v0, p0, Lcom/oplus/camera/capmode/BaseMode;->mCameraInterface:Lcom/oplus/camera/capmode/a;

    if-eqz v0, :cond_4

    if-eqz p2, :cond_4

    .line 1466
    iget-boolean v0, p2, Lcom/oplus/camera/e/c;->j:Z

    if-eqz v0, :cond_0

    .line 1467
    iget-object p1, p0, Lcom/oplus/camera/capmode/BaseMode;->mCameraInterface:Lcom/oplus/camera/capmode/a;

    iget-wide v0, p0, Lcom/oplus/camera/capmode/BaseMode;->mCaptureMergeIdentity:J

    iget v2, p2, Lcom/oplus/camera/e/c;->T:I

    iget p2, p2, Lcom/oplus/camera/e/c;->T:I

    invoke-interface {p1, v0, v1, v2, p2}, Lcom/oplus/camera/capmode/a;->a(JII)V

    goto :goto_1

    .line 1469
    :cond_0
    sget-object v0, Lcom/oplus/camera/e/c$a;->CAPTURE_RAW:Lcom/oplus/camera/e/c$a;

    invoke-virtual {p2}, Lcom/oplus/camera/e/c;->a()Lcom/oplus/camera/e/c$a;

    move-result-object v1

    const/4 v2, 0x1

    if-eq v0, v1, :cond_1

    sget-object v0, Lcom/oplus/camera/e/c$a;->CAPTURE_REPROCESS:Lcom/oplus/camera/e/c$a;

    .line 1470
    invoke-virtual {p2}, Lcom/oplus/camera/e/c;->a()Lcom/oplus/camera/e/c$a;

    move-result-object v1

    if-ne v0, v1, :cond_2

    :cond_1
    move p1, v2

    :cond_2
    if-eqz p1, :cond_3

    goto :goto_0

    .line 1471
    :cond_3
    iget v2, p2, Lcom/oplus/camera/e/c;->T:I

    .line 1473
    :goto_0
    iget-object p1, p0, Lcom/oplus/camera/capmode/BaseMode;->mCameraInterface:Lcom/oplus/camera/capmode/a;

    iget-wide v0, p0, Lcom/oplus/camera/capmode/BaseMode;->mCaptureMergeIdentity:J

    iget p2, p2, Lcom/oplus/camera/e/c;->y:I

    mul-int/2addr p2, v2

    invoke-interface {p1, v0, v1, v2, p2}, Lcom/oplus/camera/capmode/a;->a(JII)V

    .line 1477
    :cond_4
    :goto_1
    iget-object p1, p0, Lcom/oplus/camera/capmode/BaseMode;->mCameraUIInterface:Lcom/oplus/camera/ui/CameraUIInterface;

    if-eqz p1, :cond_5

    invoke-interface {p1}, Lcom/oplus/camera/ui/CameraUIInterface;->c()Lcom/oplus/camera/ui/preview/h;

    move-result-object p1

    if-eqz p1, :cond_5

    .line 1478
    iget-object p1, p0, Lcom/oplus/camera/capmode/BaseMode;->mCameraUIInterface:Lcom/oplus/camera/ui/CameraUIInterface;

    invoke-interface {p1}, Lcom/oplus/camera/ui/CameraUIInterface;->c()Lcom/oplus/camera/ui/preview/h;

    move-result-object p1

    iget-wide v0, p0, Lcom/oplus/camera/capmode/BaseMode;->mCaptureMergeIdentity:J

    invoke-virtual {p1, v0, v1}, Lcom/oplus/camera/ui/preview/h;->a(J)V

    :cond_5
    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    .line 1481
    invoke-virtual {p0}, Lcom/oplus/camera/capmode/BaseMode;->getImageFormat()I

    move-result v6

    const/4 v7, 0x0

    const/4 v8, 0x0

    move-object v2, p0

    invoke-virtual/range {v2 .. v8}, Lcom/oplus/camera/capmode/BaseMode;->onPictureCallback([BIIIZI)V

    return-void
.end method

.method public onCaptureFirstFrameArrived(Landroid/hardware/camera2/CaptureRequest;Lcom/oplus/camera/aps/service/CameraCaptureResult;)V
    .locals 0

    return-void
.end method

.method public onCapturePrepared()V
    .locals 0

    .line 1425
    iget-object p0, p0, Lcom/oplus/camera/capmode/BaseMode;->mCameraInterface:Lcom/oplus/camera/capmode/a;

    if-eqz p0, :cond_0

    .line 1426
    invoke-interface {p0}, Lcom/oplus/camera/capmode/a;->aW()V

    :cond_0
    return-void
.end method

.method public onCaptureProgressed(Landroid/hardware/camera2/CaptureRequest;Lcom/oplus/camera/aps/service/CameraCaptureResult;Lcom/oplus/camera/e/c;)V
    .locals 11

    const-string p1, "BaseMode"

    if-eqz p2, :cond_1

    .line 1343
    invoke-virtual {p2}, Lcom/oplus/camera/aps/service/CameraCaptureResult;->getCaptureResult()Landroid/hardware/camera2/CaptureResult;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 1344
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "captureX onCaptureProgressed frameNumber: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Lcom/oplus/camera/aps/service/CameraCaptureResult;->getCaptureResult()Landroid/hardware/camera2/CaptureResult;

    move-result-object v2

    invoke-virtual {v2}, Landroid/hardware/camera2/CaptureResult;->getFrameNumber()J

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sget-object v2, Lcom/oplus/camera/d;->d:Ljava/lang/Long;

    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    const-string v4, "10ct_CaptureProgressed"

    invoke-static {v0, v4, v2, v3}, Lcom/oplus/camera/e;->a(Ljava/lang/String;Ljava/lang/String;J)V

    .line 1346
    invoke-virtual {p0, p3}, Lcom/oplus/camera/capmode/BaseMode;->getSupportQuickJpeg(Lcom/oplus/camera/e/c;)Z

    move-result p3

    if-eqz p3, :cond_0

    .line 1347
    invoke-static {}, Lcom/oplus/camera/util/Util;->C()Z

    move-result p3

    if-eqz p3, :cond_0

    .line 1349
    :try_start_0
    invoke-virtual {p2}, Lcom/oplus/camera/aps/service/CameraCaptureResult;->getCaptureResult()Landroid/hardware/camera2/CaptureResult;

    move-result-object p3

    sget-object v0, Lcom/oplus/camera/e/b;->m:Landroid/hardware/camera2/CaptureResult$Key;

    invoke-virtual {p3, v0}, Landroid/hardware/camera2/CaptureResult;->get(Landroid/hardware/camera2/CaptureResult$Key;)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Ljava/lang/Long;

    .line 1351
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onCaptureProgressed, refTimestamp: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/oplus/camera/e;->c(Ljava/lang/String;Ljava/lang/String;)V

    if-eqz p3, :cond_0

    .line 1353
    invoke-virtual {p3}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    const-wide/16 v5, 0x0

    cmp-long v0, v2, v5

    if-lez v0, :cond_0

    .line 1354
    iget-object v0, p0, Lcom/oplus/camera/capmode/BaseMode;->mCameraUIInterface:Lcom/oplus/camera/ui/CameraUIInterface;

    const/4 v2, 0x0

    invoke-interface {v0, v2}, Lcom/oplus/camera/ui/CameraUIInterface;->o(Z)V

    .line 1355
    iget-object v5, p0, Lcom/oplus/camera/capmode/BaseMode;->mCameraUIInterface:Lcom/oplus/camera/ui/CameraUIInterface;

    sget-object v0, Lcom/oplus/camera/ui/preview/h;->b:Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v6

    iget-wide v7, p0, Lcom/oplus/camera/capmode/BaseMode;->mCaptureMergeIdentity:J

    .line 1356
    invoke-virtual {p3}, Ljava/lang/Long;->longValue()J

    move-result-wide v9

    .line 1355
    invoke-interface/range {v5 .. v10}, Lcom/oplus/camera/ui/CameraUIInterface;->a(IJJ)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    .line 1359
    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "onCaptureProgressed, error msg: "

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p1, p0}, Lcom/oplus/camera/e;->f(Ljava/lang/String;Ljava/lang/String;)V

    .line 1364
    :cond_0
    :goto_0
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Lcom/oplus/camera/aps/service/CameraCaptureResult;->getCaptureResult()Landroid/hardware/camera2/CaptureResult;

    move-result-object p1

    invoke-virtual {p1}, Landroid/hardware/camera2/CaptureResult;->getFrameNumber()J

    move-result-wide p1

    invoke-virtual {p0, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0, v4}, Lcom/oplus/camera/e;->d(Ljava/lang/String;Ljava/lang/String;)V

    :cond_1
    return-void
.end method

.method public onCaptureSequenceCompleted()V
    .locals 0

    return-void
.end method

.method public onCaptureStarted(Landroid/hardware/camera2/CameraCaptureSession;Landroid/hardware/camera2/CaptureRequest;JJ)V
    .locals 23

    move-object/from16 v0, p0

    move-wide/from16 v10, p3

    move-wide/from16 v12, p5

    .line 1235
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "captureX onCaptureStarted frameNumber: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v12, v13}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v2, ", timestamp: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v10, v11}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "08ct_CaptureStarted TS"

    invoke-static {v1, v2, v10, v11}, Lcom/oplus/camera/e;->a(Ljava/lang/String;Ljava/lang/String;J)V

    .line 1237
    iget v1, v0, Lcom/oplus/camera/capmode/BaseMode;->mCaptureStartedCallbackNum:I

    const/4 v2, 0x1

    if-nez v1, :cond_0

    move v1, v2

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    .line 1238
    :goto_0
    iget v3, v0, Lcom/oplus/camera/capmode/BaseMode;->mCaptureStartedCallbackNum:I

    add-int/2addr v3, v2

    iput v3, v0, Lcom/oplus/camera/capmode/BaseMode;->mCaptureStartedCallbackNum:I

    .line 1239
    iget-boolean v3, v0, Lcom/oplus/camera/capmode/BaseMode;->mbBurstShot:Z

    if-eqz v3, :cond_1

    sget v3, Lcom/oplus/camera/util/Util;->d:I

    goto :goto_1

    :cond_1
    invoke-virtual/range {p0 .. p0}, Lcom/oplus/camera/capmode/BaseMode;->getDefaultCaptureNumber()I

    move-result v3

    .line 1240
    :goto_1
    iget v4, v0, Lcom/oplus/camera/capmode/BaseMode;->mCaptureStartedCallbackNum:I

    if-ne v3, v4, :cond_2

    move v15, v2

    goto :goto_2

    :cond_2
    const/4 v15, 0x0

    .line 1242
    :goto_2
    iget-object v3, v0, Lcom/oplus/camera/capmode/BaseMode;->mCaptureRequestTag:Lcom/oplus/camera/e/c;

    if-eqz v3, :cond_3

    iget-boolean v3, v3, Lcom/oplus/camera/e/c;->aa:Z

    if-eqz v3, :cond_3

    move v3, v2

    goto :goto_3

    :cond_3
    const/4 v3, 0x0

    .line 1243
    :goto_3
    iget-boolean v4, v0, Lcom/oplus/camera/capmode/BaseMode;->mbBurstShot:Z

    .line 1244
    invoke-direct/range {p0 .. p0}, Lcom/oplus/camera/capmode/BaseMode;->getCapturePreviewDataState()I

    move-result v5

    if-ne v5, v2, :cond_4

    move v5, v2

    goto :goto_4

    :cond_4
    const/4 v5, 0x0

    .line 1246
    :goto_4
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "onCaptureStarted, burstShot: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v7, ", timestamp: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v10, v11}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v7, ", firstFrame: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v7, ", capturePreviewStart: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v7, ", watchRequest: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    const-string v7, "BaseMode"

    invoke-static {v7, v6}, Lcom/oplus/camera/e;->b(Ljava/lang/String;Ljava/lang/String;)V

    if-eqz v1, :cond_6

    .line 1250
    iput-wide v10, v0, Lcom/oplus/camera/capmode/BaseMode;->mCaptureMergeIdentity:J

    .line 1252
    iget-object v6, v0, Lcom/oplus/camera/capmode/BaseMode;->mCameraInterface:Lcom/oplus/camera/capmode/a;

    if-eqz v6, :cond_5

    if-nez v5, :cond_5

    invoke-virtual/range {p0 .. p0}, Lcom/oplus/camera/capmode/BaseMode;->needStoreImage()Z

    move-result v6

    if-eqz v6, :cond_5

    .line 1253
    iget-object v6, v0, Lcom/oplus/camera/capmode/BaseMode;->mCameraInterface:Lcom/oplus/camera/capmode/a;

    iget-wide v7, v0, Lcom/oplus/camera/capmode/BaseMode;->mCaptureMergeIdentity:J

    iget-object v9, v0, Lcom/oplus/camera/capmode/BaseMode;->mThumbnailTitle:Ljava/lang/String;

    const-string v2, "key_support_update_thumbnail_user_picture"

    .line 1254
    invoke-virtual {v0, v2}, Lcom/oplus/camera/capmode/BaseMode;->getSupportFunction(Ljava/lang/String;)Z

    move-result v20

    move-object/from16 v16, v6

    move-wide/from16 v17, v7

    move-object/from16 v19, v9

    move/from16 v21, v3

    move/from16 v22, v4

    .line 1253
    invoke-interface/range {v16 .. v22}, Lcom/oplus/camera/capmode/a;->a(JLjava/lang/String;ZZZ)V

    .line 1258
    :cond_5
    iget v2, v0, Lcom/oplus/camera/capmode/BaseMode;->mCameraId:I

    invoke-virtual/range {p0 .. p0}, Lcom/oplus/camera/capmode/BaseMode;->getCameraMode()Ljava/lang/String;

    move-result-object v3

    invoke-static {v10, v11, v2, v3}, Lcom/oplus/camera/perf/ComprehensivePerformance;->a(JILjava/lang/String;)V

    .line 1260
    iget-object v2, v0, Lcom/oplus/camera/capmode/BaseMode;->mActivity:Landroid/app/Activity;

    if-eqz v2, :cond_6

    .line 1261
    new-instance v3, Lcom/oplus/camera/capmode/BaseMode$5;

    invoke-direct {v3, v0}, Lcom/oplus/camera/capmode/BaseMode$5;-><init>(Lcom/oplus/camera/capmode/BaseMode;)V

    invoke-virtual {v2, v3}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 1272
    :cond_6
    iget-object v2, v0, Lcom/oplus/camera/capmode/BaseMode;->mActivity:Landroid/app/Activity;

    if-eqz v2, :cond_7

    invoke-virtual/range {p0 .. p0}, Lcom/oplus/camera/capmode/BaseMode;->getNeedCheckTimeStamp()Z

    move-result v2

    if-eqz v2, :cond_7

    .line 1273
    iget-object v2, v0, Lcom/oplus/camera/capmode/BaseMode;->mActivity:Landroid/app/Activity;

    new-instance v3, Lcom/oplus/camera/capmode/BaseMode$6;

    invoke-direct {v3, v0, v4, v1}, Lcom/oplus/camera/capmode/BaseMode$6;-><init>(Lcom/oplus/camera/capmode/BaseMode;ZZ)V

    invoke-virtual {v2, v3}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 1287
    :cond_7
    iget-object v1, v0, Lcom/oplus/camera/capmode/BaseMode;->mApsDecisionResultLock:Ljava/lang/Object;

    monitor-enter v1

    .line 1288
    :try_start_0
    iget-object v2, v0, Lcom/oplus/camera/capmode/BaseMode;->mDecisionResult:Lcom/oplus/camera/aps/util/CameraApsDecision;

    if-eqz v2, :cond_8

    iget-object v2, v0, Lcom/oplus/camera/capmode/BaseMode;->mDecisionResult:Lcom/oplus/camera/aps/util/CameraApsDecision;

    iget v2, v2, Lcom/oplus/camera/aps/util/CameraApsDecision;->mThumbnailIndex:I

    goto :goto_5

    :cond_8
    const/4 v2, 0x1

    .line 1291
    :goto_5
    iget-object v3, v0, Lcom/oplus/camera/capmode/BaseMode;->mDecisionResult:Lcom/oplus/camera/aps/util/CameraApsDecision;

    if-eqz v3, :cond_9

    iget-object v3, v0, Lcom/oplus/camera/capmode/BaseMode;->mDecisionResult:Lcom/oplus/camera/aps/util/CameraApsDecision;

    iget v3, v3, Lcom/oplus/camera/aps/util/CameraApsDecision;->mApsDecisionFeatureType:I

    goto :goto_6

    :cond_9
    const/4 v3, 0x0

    .line 1293
    :goto_6
    iget-object v4, v0, Lcom/oplus/camera/capmode/BaseMode;->mDecisionResult:Lcom/oplus/camera/aps/util/CameraApsDecision;

    if-eqz v4, :cond_a

    iget-object v4, v0, Lcom/oplus/camera/capmode/BaseMode;->mDecisionResult:Lcom/oplus/camera/aps/util/CameraApsDecision;

    iget v4, v4, Lcom/oplus/camera/aps/util/CameraApsDecision;->mApsDecisionSceneMode:I

    move v9, v4

    goto :goto_7

    :cond_a
    const/4 v9, 0x0

    :goto_7
    const/4 v4, 0x5

    if-eq v4, v3, :cond_c

    const/16 v4, 0x26

    if-ne v4, v3, :cond_b

    goto :goto_8

    :cond_b
    const/4 v4, 0x0

    goto :goto_9

    :cond_c
    :goto_8
    const/4 v4, 0x1

    :goto_9
    const/4 v6, 0x4

    if-eq v6, v3, :cond_e

    const/16 v6, 0x8

    if-eq v6, v3, :cond_e

    const/16 v6, 0x10

    if-ne v6, v3, :cond_d

    goto :goto_a

    :cond_d
    const/4 v6, 0x0

    goto :goto_b

    :cond_e
    :goto_a
    const/4 v6, 0x1

    :goto_b
    const/16 v7, 0xc

    const/16 v8, 0x1e

    if-eq v7, v9, :cond_10

    const/16 v7, 0xd

    if-eq v7, v9, :cond_10

    if-ne v8, v9, :cond_f

    goto :goto_c

    :cond_f
    const/4 v7, 0x0

    goto :goto_d

    :cond_10
    :goto_c
    const/4 v7, 0x1

    :goto_d
    if-nez v4, :cond_12

    .line 1303
    invoke-virtual {v0, v3}, Lcom/oplus/camera/capmode/BaseMode;->isCaptureInDarkLight(I)Z

    move-result v3

    if-nez v3, :cond_12

    if-eqz v6, :cond_11

    goto :goto_e

    :cond_11
    const/16 v16, 0x0

    goto :goto_f

    :cond_12
    :goto_e
    const/16 v16, 0x1

    :goto_f
    if-nez v6, :cond_14

    if-eqz v7, :cond_13

    goto :goto_10

    :cond_13
    const/16 v17, 0x0

    goto :goto_11

    :cond_14
    :goto_10
    const/16 v17, 0x1

    .line 1305
    :goto_11
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1307
    iget-object v1, v0, Lcom/oplus/camera/capmode/BaseMode;->mCameraUIInterface:Lcom/oplus/camera/ui/CameraUIInterface;

    if-eqz v1, :cond_19

    .line 1308
    invoke-interface {v1}, Lcom/oplus/camera/ui/CameraUIInterface;->c()Lcom/oplus/camera/ui/preview/h;

    move-result-object v6

    .line 1310
    iget v1, v0, Lcom/oplus/camera/capmode/BaseMode;->mCaptureStartedCallbackNum:I

    if-ne v2, v1, :cond_15

    if-eqz v5, :cond_15

    if-eqz v6, :cond_15

    .line 1311
    iget-object v1, v0, Lcom/oplus/camera/capmode/BaseMode;->mOneCamera:Lcom/oplus/camera/e/d;

    invoke-interface {v1}, Lcom/oplus/camera/e/d;->v()Lcom/oplus/camera/e/c;

    move-result-object v1

    .line 1312
    invoke-virtual {v0, v1}, Lcom/oplus/camera/capmode/BaseMode;->getSupportQuickJpeg(Lcom/oplus/camera/e/c;)Z

    move-result v18

    .line 1314
    iget-wide v4, v0, Lcom/oplus/camera/capmode/BaseMode;->mCaptureMergeIdentity:J

    move-object v1, v6

    move-wide/from16 v2, p5

    move-object v14, v6

    move-wide/from16 v6, p3

    move/from16 p2, v15

    move v15, v8

    move/from16 v8, v18

    move v15, v9

    move/from16 v9, v16

    invoke-virtual/range {v1 .. v9}, Lcom/oplus/camera/ui/preview/h;->a(JJJZZ)V

    goto :goto_12

    :cond_15
    move-object v14, v6

    move/from16 p2, v15

    move v15, v9

    .line 1318
    :goto_12
    iget-object v1, v0, Lcom/oplus/camera/capmode/BaseMode;->mOneCamera:Lcom/oplus/camera/e/d;

    invoke-interface {v1}, Lcom/oplus/camera/e/d;->v()Lcom/oplus/camera/e/c;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/oplus/camera/capmode/BaseMode;->getSupportQuickJpeg(Lcom/oplus/camera/e/c;)Z

    move-result v1

    if-eqz v1, :cond_16

    if-eqz v14, :cond_16

    .line 1319
    invoke-virtual {v14, v12, v13, v10, v11}, Lcom/oplus/camera/ui/preview/h;->a(JJ)V

    .line 1322
    :cond_16
    iget-boolean v1, v0, Lcom/oplus/camera/capmode/BaseMode;->mbFrontCamera:Z

    if-nez v1, :cond_18

    if-eqz v17, :cond_18

    .line 1324
    invoke-static {}, Lcom/oplus/camera/util/Util;->C()Z

    move-result v1

    if-eqz v1, :cond_17

    const/16 v1, 0x1e

    if-eq v1, v15, :cond_18

    :cond_17
    if-eqz v14, :cond_18

    .line 1326
    invoke-virtual {v14, v12, v13, v10, v11}, Lcom/oplus/camera/ui/preview/h;->b(JJ)V

    :cond_18
    if-eqz p2, :cond_19

    .line 1330
    iget-object v0, v0, Lcom/oplus/camera/capmode/BaseMode;->mCameraUIInterface:Lcom/oplus/camera/ui/CameraUIInterface;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Lcom/oplus/camera/ui/CameraUIInterface;->o(Z)V

    .line 1334
    :cond_19
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "captureX onCaptureStarted frameNumber: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v12, v13}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "08ct_CaptureStarted TS"

    invoke-static {v0, v1}, Lcom/oplus/camera/e;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :catchall_0
    move-exception v0

    .line 1305
    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method protected abstract onDeInitCameraMode(Ljava/lang/String;)V
.end method

.method protected abstract onDestroy()V
.end method

.method protected onDisableBurstShot()V
    .locals 0

    return-void
.end method

.method public onDown(Landroid/view/MotionEvent;)Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public onEffectItemClick(I)Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public onEffectMenuChange(Ljava/lang/String;)V
    .locals 2

    .line 4656
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onEffectMenuChange, menuName: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "BaseMode"

    invoke-static {v1, v0}, Lcom/oplus/camera/e;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 4658
    iput-object p1, p0, Lcom/oplus/camera/capmode/BaseMode;->mEffectMenuSelect:Ljava/lang/String;

    return-void
.end method

.method public onEffectMenuPopDown(Z)V
    .locals 0

    return-void
.end method

.method public onEffectMenuPopUp()V
    .locals 0

    return-void
.end method

.method public onEffectSurfaceCreated()V
    .locals 2

    const-string v0, "BaseMode"

    const-string v1, "onEffectSurfaceCreated"

    .line 4649
    invoke-static {v0, v1}, Lcom/oplus/camera/e;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 4651
    iget-object v0, p0, Lcom/oplus/camera/capmode/BaseMode;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 4652
    iget-object p0, p0, Lcom/oplus/camera/capmode/BaseMode;->mHandler:Landroid/os/Handler;

    invoke-virtual {p0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    return-void
.end method

.method public onFaceBeautyItemChange(I)V
    .locals 2

    .line 4961
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onFaceBeautyItemChange, index: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "BaseMode"

    invoke-static {v1, v0}, Lcom/oplus/camera/e;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 4963
    invoke-virtual {p0, p1}, Lcom/oplus/camera/capmode/BaseMode;->updateFaceBeautyValue(I)Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x1

    .line 4967
    invoke-virtual {p0, p1, v0}, Lcom/oplus/camera/capmode/BaseMode;->updateFaceBeautyLevel(IZ)V

    .line 4969
    iget-object v0, p0, Lcom/oplus/camera/capmode/BaseMode;->mPreviewEffectProcess:Lcom/oplus/camera/ui/preview/a/t;

    if-eqz v0, :cond_1

    .line 4970
    invoke-interface {v0, p1}, Lcom/oplus/camera/ui/preview/a/t;->g(I)V

    .line 4973
    :cond_1
    iget-object v0, p0, Lcom/oplus/camera/capmode/BaseMode;->mOneCamera:Lcom/oplus/camera/e/d;

    if-nez v0, :cond_2

    const-string p0, "onFaceBeautyItemChange, failed, mOneCamera is null !"

    .line 4974
    invoke-static {v1, p0}, Lcom/oplus/camera/e;->f(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    .line 4979
    :cond_2
    sget-object v1, Lcom/oplus/ocs/camera/CameraParameter;->FACE_BEAUTY_ENABLE:Lcom/oplus/ocs/camera/CameraParameter$PreviewKey;

    if-eqz p1, :cond_3

    const-string p1, "on"

    goto :goto_0

    :cond_3
    const-string p1, "off"

    :goto_0
    invoke-interface {v0, v1, p1}, Lcom/oplus/camera/e/d;->a(Lcom/oplus/ocs/camera/CameraParameter$PreviewKey;Ljava/lang/Object;)V

    .line 4983
    iget-object p0, p0, Lcom/oplus/camera/capmode/BaseMode;->mOneCamera:Lcom/oplus/camera/e/d;

    const/4 p1, 0x0

    invoke-interface {p0, p1}, Lcom/oplus/camera/e/d;->a(Lcom/oplus/camera/e/d$c;)V

    return-void
.end method

.method public onFaceBeautyItemValueChange(IIZ)V
    .locals 2

    .line 4840
    invoke-virtual {p0}, Lcom/oplus/camera/capmode/BaseMode;->getCustomBeautyValues()[I

    move-result-object v0

    if-nez v0, :cond_0

    const-string p0, "BaseMode"

    const-string p1, "onFaceBeautyItemValueChange, return"

    .line 4843
    invoke-static {p0, p1}, Lcom/oplus/camera/e;->e(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    .line 4848
    :cond_0
    aput p2, v0, p1

    .line 4850
    iget-object v1, p0, Lcom/oplus/camera/capmode/BaseMode;->mPreviewEffectProcess:Lcom/oplus/camera/ui/preview/a/t;

    if-eqz v1, :cond_1

    .line 4851
    invoke-interface {v1, v0}, Lcom/oplus/camera/ui/preview/a/t;->a([I)V

    .line 4854
    :cond_1
    invoke-virtual {p0, v0}, Lcom/oplus/camera/capmode/BaseMode;->updateCustomBeautyValues([I)V

    .line 4856
    iget-object v0, p0, Lcom/oplus/camera/capmode/BaseMode;->mOneCamera:Lcom/oplus/camera/e/d;

    if-eqz v0, :cond_2

    const/4 v1, 0x0

    .line 4857
    invoke-interface {v0, v1}, Lcom/oplus/camera/e/d;->a(Lcom/oplus/camera/e/d$c;)V

    :cond_2
    if-eqz p3, :cond_3

    .line 4861
    iget-object p3, p0, Lcom/oplus/camera/capmode/BaseMode;->mPreferences:Landroid/content/SharedPreferences;

    if-eqz p3, :cond_3

    invoke-virtual {p0}, Lcom/oplus/camera/capmode/BaseMode;->getCustomBeautyKeys()[Ljava/lang/String;

    move-result-object p3

    if-eqz p3, :cond_3

    .line 4862
    iget-object p3, p0, Lcom/oplus/camera/capmode/BaseMode;->mPreferences:Landroid/content/SharedPreferences;

    invoke-interface {p3}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object p3

    .line 4863
    invoke-virtual {p0}, Lcom/oplus/camera/capmode/BaseMode;->getCustomBeautyKeys()[Ljava/lang/String;

    move-result-object p0

    aget-object p0, p0, p1

    invoke-interface {p3, p0, p2}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 4864
    invoke-interface {p3}, Landroid/content/SharedPreferences$Editor;->commit()Z

    :cond_3
    return-void
.end method

.method public onFaceBeautyMenuClick()Z
    .locals 0

    const/4 p0, 0x1

    return p0
.end method

.method public onFaceBeautyMenuClose()V
    .locals 0

    return-void
.end method

.method protected onFilterItemChange(I)V
    .locals 1

    const/4 v0, 0x0

    .line 5054
    invoke-virtual {p0, p1, v0}, Lcom/oplus/camera/capmode/BaseMode;->onFilterItemChange(IZ)V

    return-void
.end method

.method protected onFilterItemChange(IZ)V
    .locals 5

    if-nez p2, :cond_0

    .line 5059
    invoke-virtual {p0, p1}, Lcom/oplus/camera/capmode/BaseMode;->updateFilterParam(I)V

    .line 5062
    :cond_0
    invoke-virtual {p0}, Lcom/oplus/camera/capmode/BaseMode;->getFilterEffectMenuPreferenceKey()Ljava/lang/String;

    move-result-object p2

    .line 5063
    iget-object v0, p0, Lcom/oplus/camera/capmode/BaseMode;->mPreferences:Landroid/content/SharedPreferences;

    sget v1, Lcom/oplus/camera/ui/preview/a/j;->a:I

    invoke-interface {v0, p2, v1}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v0

    .line 5064
    iget-object v1, p0, Lcom/oplus/camera/capmode/BaseMode;->mPreferences:Landroid/content/SharedPreferences;

    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    invoke-interface {v1, p2, p1}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 5066
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onFilterItemChange, key: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, ", previousIndex: "

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p2, ", currentIndex: "

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    const-string v1, "BaseMode"

    invoke-static {v1, p2}, Lcom/oplus/camera/e;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 5069
    iget-object p2, p0, Lcom/oplus/camera/capmode/BaseMode;->mCameraUIInterface:Lcom/oplus/camera/ui/CameraUIInterface;

    if-eqz p2, :cond_7

    .line 5070
    invoke-virtual {p0}, Lcom/oplus/camera/capmode/BaseMode;->getEffectMenuKeyByMode()Ljava/lang/String;

    move-result-object p2

    .line 5071
    iget-object v1, p0, Lcom/oplus/camera/capmode/BaseMode;->mCameraUIInterface:Lcom/oplus/camera/ui/CameraUIInterface;

    sget v2, Lcom/oplus/camera/ui/preview/a/j;->a:I

    const/4 v3, 0x0

    if-eq p1, v2, :cond_1

    const/4 v2, 0x1

    goto :goto_0

    :cond_1
    move v2, v3

    :goto_0
    invoke-interface {v1, p2, v2}, Lcom/oplus/camera/ui/CameraUIInterface;->d(Ljava/lang/String;I)V

    .line 5073
    sget v1, Lcom/oplus/camera/ui/preview/a/j;->a:I

    if-ne v0, v1, :cond_2

    sget v1, Lcom/oplus/camera/ui/preview/a/j;->a:I

    if-eq p1, v1, :cond_2

    invoke-virtual {p0}, Lcom/oplus/camera/capmode/BaseMode;->isMicroscopeMode()Z

    move-result v1

    if-nez v1, :cond_2

    .line 5074
    iget-object v0, p0, Lcom/oplus/camera/capmode/BaseMode;->mCameraUIInterface:Lcom/oplus/camera/ui/CameraUIInterface;

    const v1, 0x7f08051e

    invoke-interface {v0, p2, v1}, Lcom/oplus/camera/ui/CameraUIInterface;->b(Ljava/lang/String;I)V

    goto :goto_1

    .line 5075
    :cond_2
    sget v1, Lcom/oplus/camera/ui/preview/a/j;->a:I

    const v2, 0x7f08051d

    if-eq v0, v1, :cond_4

    sget v1, Lcom/oplus/camera/ui/preview/a/j;->a:I

    if-ne p1, v1, :cond_4

    invoke-virtual {p0}, Lcom/oplus/camera/capmode/BaseMode;->isMicroscopeMode()Z

    move-result v1

    if-nez v1, :cond_4

    .line 5076
    iget-object v0, p0, Lcom/oplus/camera/capmode/BaseMode;->mCameraUIInterface:Lcom/oplus/camera/ui/CameraUIInterface;

    invoke-interface {v0}, Lcom/oplus/camera/ui/CameraUIInterface;->A()Z

    move-result v0

    if-eqz v0, :cond_3

    const v2, 0x7f08051c

    .line 5078
    :cond_3
    iget-object v0, p0, Lcom/oplus/camera/capmode/BaseMode;->mCameraUIInterface:Lcom/oplus/camera/ui/CameraUIInterface;

    invoke-interface {v0, p2, v2}, Lcom/oplus/camera/ui/CameraUIInterface;->b(Ljava/lang/String;I)V

    goto :goto_1

    :cond_4
    const-string v1, "com.oplus.support.grand.tour.filter"

    .line 5079
    invoke-static {v1}, Lcom/oplus/camera/aps/config/CameraConfig;->getConfigBooleanValue(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_5

    sget-object v1, Lcom/oplus/camera/ui/preview/a/j;->b:Ljava/lang/String;

    const-string v4, "None"

    .line 5080
    invoke-virtual {v1, v4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_5

    iget-object v1, p0, Lcom/oplus/camera/capmode/BaseMode;->mPreferences:Landroid/content/SharedPreferences;

    const-string v4, "pref_recommended_menu_filter_icon_clicked_key"

    .line 5081
    invoke-interface {v1, v4, v3}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    if-nez v1, :cond_5

    const-string v1, "key_support_grand_tour_fitlers"

    .line 5082
    invoke-virtual {p0, v1}, Lcom/oplus/camera/capmode/BaseMode;->getSupportFunction(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_5

    .line 5083
    iget-object v0, p0, Lcom/oplus/camera/capmode/BaseMode;->mCameraUIInterface:Lcom/oplus/camera/ui/CameraUIInterface;

    const v1, 0x7f080518

    invoke-interface {v0, p2, v1}, Lcom/oplus/camera/ui/CameraUIInterface;->b(Ljava/lang/String;I)V

    goto :goto_1

    .line 5084
    :cond_5
    sget v1, Lcom/oplus/camera/ui/preview/a/j;->a:I

    if-ne v0, v1, :cond_6

    sget v0, Lcom/oplus/camera/ui/preview/a/j;->a:I

    if-ne p1, v0, :cond_6

    .line 5085
    iget-object v0, p0, Lcom/oplus/camera/capmode/BaseMode;->mCameraUIInterface:Lcom/oplus/camera/ui/CameraUIInterface;

    invoke-interface {v0, p2, v2}, Lcom/oplus/camera/ui/CameraUIInterface;->b(Ljava/lang/String;I)V

    .line 5088
    :cond_6
    :goto_1
    iget-object p0, p0, Lcom/oplus/camera/capmode/BaseMode;->mCameraUIInterface:Lcom/oplus/camera/ui/CameraUIInterface;

    invoke-interface {p0, p1}, Lcom/oplus/camera/ui/CameraUIInterface;->j(I)V

    :cond_7
    return-void
.end method

.method protected onFilterListTypeChanged(I)V
    .locals 0

    return-void
.end method

.method protected onFilterMenuClicked()V
    .locals 0

    return-void
.end method

.method public onFirstCaptureFrameAdd()V
    .locals 0

    return-void
.end method

.method protected onFrameInterpolationStarted()V
    .locals 0

    return-void
.end method

.method public onGetAfterCaptureMsgCommonData(Lcom/oplus/camera/statistics/model/DcsMsgData;Lcom/oplus/camera/Storage$CameraPicture;)Lcom/oplus/camera/statistics/model/DcsMsgData;
    .locals 0

    return-object p1
.end method

.method public onGetBeforeCaptureMsgCommonData(Lcom/oplus/camera/statistics/model/DcsMsgData;)Lcom/oplus/camera/statistics/model/DcsMsgData;
    .locals 0

    return-object p1
.end method

.method public onGetNearMeOnClickData()V
    .locals 0

    return-void
.end method

.method public onGetSupportSettingList(Ljava/lang/String;I)Ljava/util/List;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "I)",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 3792
    invoke-virtual {p0, p1, p2}, Lcom/oplus/camera/capmode/BaseMode;->getSupportSettingList(Ljava/lang/String;I)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method public onHDRModeChanged(Ljava/lang/String;)V
    .locals 1

    .line 6633
    invoke-virtual {p0, p1}, Lcom/oplus/camera/capmode/BaseMode;->getHDRModeValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 6635
    iget-object v0, p0, Lcom/oplus/camera/capmode/BaseMode;->mCameraInterface:Lcom/oplus/camera/capmode/a;

    invoke-interface {v0}, Lcom/oplus/camera/capmode/a;->g()I

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    .line 6636
    invoke-direct {p0, p1, v0}, Lcom/oplus/camera/capmode/BaseMode;->updateHDRMode(Ljava/lang/String;Z)V

    .line 6637
    invoke-direct {p0, p1, v0}, Lcom/oplus/camera/capmode/BaseMode;->updateHdrChangeUi(Ljava/lang/String;Z)V

    :cond_0
    return-void
.end method

.method public onHomeKeyClick()V
    .locals 0

    return-void
.end method

.method public onImageReceived(Lcom/oplus/ocs/camera/CameraPictureCallback$CameraPictureImage;)Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method protected abstract onInitCameraMode()V
.end method

.method public onLongPress(Landroid/view/MotionEvent;)Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method protected onMakeupTypeChanged(IZ)V
    .locals 2

    .line 6030
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "onMakeupTypeChanged, index: "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    const-string v0, "BaseMode"

    invoke-static {v0, p2}, Lcom/oplus/camera/e;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 6032
    invoke-virtual {p0}, Lcom/oplus/camera/capmode/BaseMode;->getCurrMakeupIndex()I

    move-result p2

    .line 6034
    iget-object v0, p0, Lcom/oplus/camera/capmode/BaseMode;->mPreviewEffectProcess:Lcom/oplus/camera/ui/preview/a/t;

    if-eqz v0, :cond_0

    .line 6035
    invoke-virtual {p0, p1}, Lcom/oplus/camera/capmode/BaseMode;->getMakeupType(I)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/oplus/camera/ui/preview/a/t;->b(Ljava/lang/String;)V

    .line 6038
    :cond_0
    iget-object v0, p0, Lcom/oplus/camera/capmode/BaseMode;->mPreferences:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 6039
    invoke-virtual {p0}, Lcom/oplus/camera/capmode/BaseMode;->getMakeupTypeKey()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 6040
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    if-nez p2, :cond_1

    if-nez p1, :cond_2

    :cond_1
    if-eqz p2, :cond_3

    if-nez p1, :cond_3

    .line 6044
    :cond_2
    new-instance p1, Lcom/oplus/camera/capmode/-$$Lambda$BaseMode$kEpe0TB9SBzpTd2qO2Rr3OcEOxY;

    invoke-direct {p1, p0}, Lcom/oplus/camera/capmode/-$$Lambda$BaseMode$kEpe0TB9SBzpTd2qO2Rr3OcEOxY;-><init>(Lcom/oplus/camera/capmode/BaseMode;)V

    invoke-static {p1}, Lcom/oplus/camera/util/Util;->c(Ljava/lang/Runnable;)V

    :cond_3
    return-void
.end method

.method protected onMakeupValueChanged(IIZ)V
    .locals 2

    .line 6049
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onMakeupValueChanged, index: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", value: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", update: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "BaseMode"

    invoke-static {v1, v0}, Lcom/oplus/camera/e;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 6051
    iget-object v0, p0, Lcom/oplus/camera/capmode/BaseMode;->mPreviewEffectProcess:Lcom/oplus/camera/ui/preview/a/t;

    if-eqz v0, :cond_0

    .line 6052
    invoke-interface {v0, p2}, Lcom/oplus/camera/ui/preview/a/t;->h(I)V

    :cond_0
    if-eqz p3, :cond_1

    .line 6056
    iget-object p3, p0, Lcom/oplus/camera/capmode/BaseMode;->mPreferences:Landroid/content/SharedPreferences;

    if-eqz p3, :cond_1

    invoke-virtual {p0}, Lcom/oplus/camera/capmode/BaseMode;->getMakeupKeys()[Ljava/lang/String;

    move-result-object p3

    if-eqz p3, :cond_1

    const/4 p3, -0x3

    if-eq p1, p3, :cond_1

    .line 6057
    iget-object p3, p0, Lcom/oplus/camera/capmode/BaseMode;->mPreferences:Landroid/content/SharedPreferences;

    invoke-interface {p3}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object p3

    .line 6058
    invoke-virtual {p0}, Lcom/oplus/camera/capmode/BaseMode;->getMakeupKeys()[Ljava/lang/String;

    move-result-object p0

    aget-object p0, p0, p1

    invoke-interface {p3, p0, p2}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 6059
    invoke-interface {p3}, Landroid/content/SharedPreferences$Editor;->apply()V

    :cond_1
    return-void
.end method

.method public onMenuBackButtonClick()V
    .locals 0

    return-void
.end method

.method public onMenuOptionAdded(Ljava/lang/String;)V
    .locals 0

    return-void
.end method

.method public onMenuOptionRemoved(Ljava/lang/String;)V
    .locals 0

    return-void
.end method

.method public onModeShownTips(I)V
    .locals 0

    return-void
.end method

.method public onMoreModeHidden(I)V
    .locals 0

    return-void
.end method

.method public onMoreModeShown()V
    .locals 0

    return-void
.end method

.method protected onMotionDetected()V
    .locals 0

    return-void
.end method

.method protected abstract onPause()V
.end method

.method public onPictureCallback([BIIIZI)V
    .locals 4

    .line 6963
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onPictureCallback, data size: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-eqz p1, :cond_0

    array-length v1, p1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", width: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", height: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", imageFormat: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", isBurstShot: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "BaseMode"

    invoke-static {v1, v0}, Lcom/oplus/camera/e;->a(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x0

    .line 6966
    invoke-direct {p0, v0}, Lcom/oplus/camera/capmode/BaseMode;->setInPreparing(Z)V

    const/4 v0, 0x1

    if-nez p5, :cond_1

    .line 6969
    iget-object v1, p0, Lcom/oplus/camera/capmode/BaseMode;->mHandler:Landroid/os/Handler;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->removeMessages(I)V

    .line 6972
    :cond_1
    new-instance v1, Landroid/os/Message;

    invoke-direct {v1}, Landroid/os/Message;-><init>()V

    .line 6973
    new-instance v2, Landroid/os/Bundle;

    invoke-direct {v2}, Landroid/os/Bundle;-><init>()V

    const-string v3, "picture_data"

    .line 6974
    invoke-virtual {v2, v3, p1}, Landroid/os/Bundle;->putByteArray(Ljava/lang/String;[B)V

    const-string p1, "picture_width"

    .line 6975
    invoke-virtual {v2, p1, p2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string p1, "picture_height"

    .line 6976
    invoke-virtual {v2, p1, p3}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string p1, "picture_format"

    .line 6977
    invoke-virtual {v2, p1, p4}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string p1, "is_burst_shot"

    .line 6978
    invoke-virtual {v2, p1, p5}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    const-string p1, "request_format"

    .line 6979
    invoke-virtual {v2, p1, p6}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 6980
    invoke-virtual {v1, v2}, Landroid/os/Message;->setData(Landroid/os/Bundle;)V

    .line 6981
    iput v0, v1, Landroid/os/Message;->what:I

    .line 6982
    iget-object p0, p0, Lcom/oplus/camera/capmode/BaseMode;->mHandler:Landroid/os/Handler;

    invoke-virtual {p0, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    return-void
.end method

.method public onPreviewCaptureResult(Lcom/oplus/ocs/camera/CameraPreviewCallback$CameraPreviewResult;)V
    .locals 10

    if-eqz p1, :cond_20

    .line 1941
    invoke-virtual {p1}, Lcom/oplus/ocs/camera/CameraPreviewCallback$CameraPreviewResult;->getCaptureResult()Landroid/hardware/camera2/CaptureResult;

    move-result-object v0

    if-nez v0, :cond_0

    goto/16 :goto_7

    .line 1947
    :cond_0
    iget-object v0, p0, Lcom/oplus/camera/capmode/BaseMode;->mStatePreferenceHelper:Lcom/oplus/camera/algovisualization/j;

    if-nez v0, :cond_1

    .line 1948
    new-instance v0, Lcom/oplus/camera/algovisualization/j;

    iget-object v1, p0, Lcom/oplus/camera/capmode/BaseMode;->mActivity:Landroid/app/Activity;

    invoke-direct {v0, v1}, Lcom/oplus/camera/algovisualization/j;-><init>(Landroid/app/Activity;)V

    iput-object v0, p0, Lcom/oplus/camera/capmode/BaseMode;->mStatePreferenceHelper:Lcom/oplus/camera/algovisualization/j;

    :cond_1
    const-string v0, "com.oplus.feature.explorer.support"

    .line 1951
    invoke-static {v0}, Lcom/oplus/camera/aps/config/CameraConfig;->getConfigBooleanValue(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 1952
    invoke-virtual {p1}, Lcom/oplus/ocs/camera/CameraPreviewCallback$CameraPreviewResult;->getCaptureResult()Landroid/hardware/camera2/CaptureResult;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/oplus/camera/capmode/BaseMode;->checkExplorerChipState(Landroid/hardware/camera2/CaptureResult;)V

    .line 1955
    :cond_2
    iget-object v0, p0, Lcom/oplus/camera/capmode/BaseMode;->algoVisualViewManager:Lcom/oplus/camera/algovisualization/c;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/oplus/camera/capmode/BaseMode;->mStatePreferenceHelper:Lcom/oplus/camera/algovisualization/j;

    invoke-virtual {v0}, Lcom/oplus/camera/algovisualization/j;->b()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 1956
    iget-object v0, p0, Lcom/oplus/camera/capmode/BaseMode;->algoVisualViewManager:Lcom/oplus/camera/algovisualization/c;

    invoke-virtual {v0}, Lcom/oplus/camera/algovisualization/c;->d()V

    .line 1958
    iget-object v0, p0, Lcom/oplus/camera/capmode/BaseMode;->algoVisualViewManager:Lcom/oplus/camera/algovisualization/c;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/oplus/camera/capmode/BaseMode;->mStatePreferenceHelper:Lcom/oplus/camera/algovisualization/j;

    invoke-virtual {v0}, Lcom/oplus/camera/algovisualization/j;->a()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 1959
    iget-object v1, p0, Lcom/oplus/camera/capmode/BaseMode;->algoVisualViewManager:Lcom/oplus/camera/algovisualization/c;

    iget-object v3, p0, Lcom/oplus/camera/capmode/BaseMode;->mFullAlgoKey:Ljava/lang/String;

    iget-object v4, p0, Lcom/oplus/camera/capmode/BaseMode;->mFullAlgoValue:Ljava/lang/String;

    iget-object v5, p0, Lcom/oplus/camera/capmode/BaseMode;->mCapAlgoListFromApp:Ljava/util/ArrayList;

    iget-object v6, p0, Lcom/oplus/camera/capmode/BaseMode;->mPreAlgoListFromApp:Ljava/util/ArrayList;

    .line 1960
    invoke-virtual {p0}, Lcom/oplus/camera/capmode/BaseMode;->getCameraMode()Ljava/lang/String;

    move-result-object v7

    iget v8, p0, Lcom/oplus/camera/capmode/BaseMode;->mCameraId:I

    move-object v2, p1

    .line 1959
    invoke-virtual/range {v1 .. v8}, Lcom/oplus/camera/algovisualization/c;->a(Lcom/oplus/ocs/camera/CameraPreviewCallback$CameraPreviewResult;Ljava/lang/String;Ljava/lang/String;Ljava/util/ArrayList;Ljava/util/ArrayList;Ljava/lang/String;I)V

    .line 1964
    :cond_3
    invoke-virtual {p1}, Lcom/oplus/ocs/camera/CameraPreviewCallback$CameraPreviewResult;->getCaptureResult()Landroid/hardware/camera2/CaptureResult;

    move-result-object v0

    const-string v1, "func_torch_soft_light"

    .line 1966
    invoke-virtual {p0, v1}, Lcom/oplus/camera/capmode/BaseMode;->getSupportFunction(Ljava/lang/String;)Z

    move-result v1

    const/4 v2, 0x4

    const/4 v3, 0x1

    const/4 v4, 0x0

    if-nez v1, :cond_a

    .line 1967
    sget-object v1, Landroid/hardware/camera2/CaptureResult;->CONTROL_AE_STATE:Landroid/hardware/camera2/CaptureResult$Key;

    invoke-virtual {v0, v1}, Landroid/hardware/camera2/CaptureResult;->get(Landroid/hardware/camera2/CaptureResult$Key;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    .line 1968
    sget-object v5, Landroid/hardware/camera2/CaptureResult;->CONTROL_AE_MODE:Landroid/hardware/camera2/CaptureResult$Key;

    invoke-virtual {v0, v5}, Landroid/hardware/camera2/CaptureResult;->get(Landroid/hardware/camera2/CaptureResult$Key;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Integer;

    if-eqz v1, :cond_a

    .line 1970
    iget-boolean v6, p0, Lcom/oplus/camera/capmode/BaseMode;->mbBurstShot:Z

    if-nez v6, :cond_a

    .line 1971
    iget-boolean v6, p0, Lcom/oplus/camera/capmode/BaseMode;->mbAutoFlash:Z

    .line 1973
    iget-object v7, p0, Lcom/oplus/camera/capmode/BaseMode;->mCameraInterface:Lcom/oplus/camera/capmode/a;

    invoke-interface {v7}, Lcom/oplus/camera/capmode/a;->z()Z

    move-result v7

    if-eqz v7, :cond_4

    .line 1974
    invoke-virtual {p0, v4}, Lcom/oplus/camera/capmode/BaseMode;->setAutoFlash(Z)V

    goto :goto_0

    .line 1975
    :cond_4
    iget-boolean v7, p0, Lcom/oplus/camera/capmode/BaseMode;->mbInCapturing:Z

    if-nez v7, :cond_7

    .line 1976
    invoke-virtual {p0}, Lcom/oplus/camera/capmode/BaseMode;->isAutoFrontTorch()Z

    move-result v7

    if-eqz v7, :cond_5

    sget-object v7, Lcom/oplus/camera/ui/inverse/e;->INS:Lcom/oplus/camera/ui/inverse/e;

    iget-object v8, p0, Lcom/oplus/camera/capmode/BaseMode;->mActivity:Landroid/app/Activity;

    invoke-virtual {v7, v8}, Lcom/oplus/camera/ui/inverse/e;->isInverseAble(Landroid/content/Context;)Z

    move-result v7

    if-eqz v7, :cond_5

    .line 1977
    sget-object v1, Lcom/oplus/camera/ui/inverse/e;->INS:Lcom/oplus/camera/ui/inverse/e;

    iget-object v5, p0, Lcom/oplus/camera/capmode/BaseMode;->mActivity:Landroid/app/Activity;

    invoke-virtual {v5}, Ljava/lang/Object;->hashCode()I

    move-result v5

    invoke-virtual {v1, v5}, Lcom/oplus/camera/ui/inverse/e;->isInverseColor(I)Z

    move-result v1

    invoke-virtual {p0, v1}, Lcom/oplus/camera/capmode/BaseMode;->setAutoFlash(Z)V

    goto :goto_0

    .line 1978
    :cond_5
    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v5

    const/4 v7, 0x2

    if-ne v7, v5, :cond_7

    .line 1979
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v5

    if-ne v2, v5, :cond_6

    .line 1980
    invoke-virtual {p0, v3}, Lcom/oplus/camera/capmode/BaseMode;->setAutoFlash(Z)V

    .line 1982
    invoke-virtual {p0}, Lcom/oplus/camera/capmode/BaseMode;->getFlashMode()Ljava/lang/String;

    move-result-object v1

    const-string v5, "auto"

    invoke-virtual {v5, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_7

    iget-boolean v1, p0, Lcom/oplus/camera/capmode/BaseMode;->mbFirstShowAfterAuto:Z

    if-eqz v1, :cond_7

    .line 1983
    iput-boolean v4, p0, Lcom/oplus/camera/capmode/BaseMode;->mbFirstShowAfterAuto:Z

    .line 1984
    invoke-virtual {p0, v5, v4}, Lcom/oplus/camera/capmode/BaseMode;->updateFlashState(Ljava/lang/String;Z)V

    goto :goto_0

    .line 1986
    :cond_6
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    if-ne v7, v1, :cond_7

    .line 1987
    invoke-virtual {p0, v4}, Lcom/oplus/camera/capmode/BaseMode;->setAutoFlash(Z)V

    .line 1992
    :cond_7
    :goto_0
    iget-boolean v1, p0, Lcom/oplus/camera/capmode/BaseMode;->mbAutoFlash:Z

    if-eq v1, v6, :cond_a

    .line 1993
    invoke-virtual {p0}, Lcom/oplus/camera/capmode/BaseMode;->isOpenFlash()Z

    move-result v1

    if-nez v1, :cond_9

    invoke-virtual {p0}, Lcom/oplus/camera/capmode/BaseMode;->isOpenFrontTorch()Z

    move-result v1

    if-nez v1, :cond_9

    iget-boolean v1, p0, Lcom/oplus/camera/capmode/BaseMode;->mbShowPostCaptureAlert:Z

    if-eqz v1, :cond_8

    goto :goto_1

    .line 1997
    :cond_8
    iget-boolean v1, p0, Lcom/oplus/camera/capmode/BaseMode;->mbAutoHDR:Z

    iget-boolean v5, p0, Lcom/oplus/camera/capmode/BaseMode;->mbAutoFlash:Z

    invoke-virtual {p0, v1, v5}, Lcom/oplus/camera/capmode/BaseMode;->displayAllIcon(ZZ)V

    goto :goto_2

    :cond_9
    :goto_1
    return-void

    .line 2002
    :cond_a
    :goto_2
    iget-object v1, p0, Lcom/oplus/camera/capmode/BaseMode;->mPreviewEffectProcess:Lcom/oplus/camera/ui/preview/a/t;

    if-eqz v1, :cond_c

    .line 2003
    invoke-virtual {p0}, Lcom/oplus/camera/capmode/BaseMode;->isAiEnhancementVideoOpen()Z

    move-result v5

    invoke-interface {v1, v5}, Lcom/oplus/camera/ui/preview/a/t;->j(Z)V

    .line 2005
    sget-object v1, Lcom/oplus/camera/e/b;->R:Landroid/hardware/camera2/CaptureResult$Key;

    invoke-static {v0, v1}, Lcom/oplus/camera/e/b;->a(Landroid/hardware/camera2/CaptureResult;Landroid/hardware/camera2/CaptureResult$Key;)Ljava/lang/Object;

    move-result-object v1

    if-eqz v1, :cond_c

    .line 2007
    instance-of v5, v1, Ljava/lang/Integer;

    if-eqz v5, :cond_c

    .line 2008
    iget-object v5, p0, Lcom/oplus/camera/capmode/BaseMode;->mPreviewEffectProcess:Lcom/oplus/camera/ui/preview/a/t;

    invoke-virtual {p0}, Lcom/oplus/camera/capmode/BaseMode;->isVideoModeType()Z

    move-result v6

    if-eqz v6, :cond_b

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    goto :goto_3

    :cond_b
    move v1, v4

    :goto_3
    invoke-interface {v5, v1}, Lcom/oplus/camera/ui/preview/a/t;->i(I)V

    .line 2012
    :cond_c
    sget-object v1, Lcom/oplus/camera/e/b;->Q:Landroid/hardware/camera2/CaptureResult$Key;

    invoke-static {v0, v1}, Lcom/oplus/camera/e/b;->a(Landroid/hardware/camera2/CaptureResult;Landroid/hardware/camera2/CaptureResult$Key;)Ljava/lang/Object;

    move-result-object v1

    if-eqz v1, :cond_e

    .line 2014
    instance-of v5, v1, Ljava/lang/Integer;

    if-eqz v5, :cond_e

    .line 2015
    check-cast v1, Ljava/lang/Integer;

    const/16 v5, 0x67

    .line 2017
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v6

    if-ne v5, v6, :cond_d

    .line 2018
    iput-boolean v3, p0, Lcom/oplus/camera/capmode/BaseMode;->mbAutoBinning:Z

    goto :goto_4

    :cond_d
    const/16 v5, 0x68

    .line 2019
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    if-ne v5, v1, :cond_e

    .line 2020
    iput-boolean v4, p0, Lcom/oplus/camera/capmode/BaseMode;->mbAutoBinning:Z

    .line 2024
    :cond_e
    :goto_4
    sget-object v1, Lcom/oplus/camera/e/b;->S:Landroid/hardware/camera2/CaptureResult$Key;

    invoke-static {v0, v1}, Lcom/oplus/camera/e/b;->a(Landroid/hardware/camera2/CaptureResult;Landroid/hardware/camera2/CaptureResult$Key;)Ljava/lang/Object;

    move-result-object v1

    if-eqz v1, :cond_13

    .line 2026
    instance-of v5, v1, Ljava/lang/Integer;

    if-eqz v5, :cond_13

    .line 2027
    check-cast v1, Ljava/lang/Integer;

    const/16 v5, 0x3ea

    .line 2029
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v6

    if-eq v5, v6, :cond_f

    const/16 v5, 0x3eb

    .line 2030
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    if-ne v5, v1, :cond_13

    .line 2031
    :cond_f
    iget v1, p0, Lcom/oplus/camera/capmode/BaseMode;->mPostCounter:I

    if-lez v1, :cond_10

    sub-int/2addr v1, v3

    .line 2032
    iput v1, p0, Lcom/oplus/camera/capmode/BaseMode;->mPostCounter:I

    .line 2035
    :cond_10
    iget-object v1, p0, Lcom/oplus/camera/capmode/BaseMode;->mCameraUIInterface:Lcom/oplus/camera/ui/CameraUIInterface;

    invoke-interface {v1}, Lcom/oplus/camera/ui/CameraUIInterface;->s()I

    move-result v1

    if-ne v1, v2, :cond_12

    const-string v1, "pref_camera_hdr_mode_key"

    .line 2036
    invoke-virtual {p0, v1}, Lcom/oplus/camera/capmode/BaseMode;->getSupportFunction(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_11

    const-string v1, "pref_auto_night_scence_key"

    .line 2037
    invoke-virtual {p0, v1}, Lcom/oplus/camera/capmode/BaseMode;->getSupportFunction(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_12

    .line 2038
    :cond_11
    iget-object v1, p0, Lcom/oplus/camera/capmode/BaseMode;->mCameraUIInterface:Lcom/oplus/camera/ui/CameraUIInterface;

    invoke-virtual {p0}, Lcom/oplus/camera/capmode/BaseMode;->getShutterButtonInfo()Lcom/oplus/camera/ui/control/b;

    move-result-object v2

    const-string v5, "pref_burst_shot_key"

    .line 2039
    invoke-virtual {p0, v5}, Lcom/oplus/camera/capmode/BaseMode;->getSupportFunction(Ljava/lang/String;)Z

    move-result v5

    .line 2038
    invoke-interface {v1, v2, v5}, Lcom/oplus/camera/ui/CameraUIInterface;->a(Lcom/oplus/camera/ui/control/b;Z)V

    .line 2042
    :cond_12
    invoke-virtual {p0}, Lcom/oplus/camera/capmode/BaseMode;->onCancelTakePicture()V

    .line 2046
    :cond_13
    sget-object v1, Lcom/oplus/camera/e/b;->Y:Landroid/hardware/camera2/CaptureResult$Key;

    invoke-static {v0, v1}, Lcom/oplus/camera/e/b;->a(Landroid/hardware/camera2/CaptureResult;Landroid/hardware/camera2/CaptureResult$Key;)Ljava/lang/Object;

    move-result-object v1

    .line 2048
    sget-object v2, Lcom/oplus/camera/ui/inverse/e;->INS:Lcom/oplus/camera/ui/inverse/e;

    iget-object v5, p0, Lcom/oplus/camera/capmode/BaseMode;->mActivity:Landroid/app/Activity;

    invoke-virtual {v2, v5}, Lcom/oplus/camera/ui/inverse/e;->isInverseAble(Landroid/content/Context;)Z

    move-result v2

    if-eqz v2, :cond_15

    const-string v2, "pref_camera_torch_mode_key"

    .line 2049
    invoke-virtual {p0, v2}, Lcom/oplus/camera/capmode/BaseMode;->getSupportFunction(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_15

    iget-object v5, p0, Lcom/oplus/camera/capmode/BaseMode;->mPreferences:Landroid/content/SharedPreferences;

    iget-object v6, p0, Lcom/oplus/camera/capmode/BaseMode;->mActivity:Landroid/app/Activity;

    .line 2051
    invoke-static {v6}, Lcom/oplus/camera/util/Util;->F(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v6

    .line 2050
    invoke-interface {v5, v2, v6}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string v5, "off"

    invoke-virtual {v5, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_15

    .line 2052
    invoke-static {v0}, Lcom/oplus/camera/util/Util;->a(Landroid/hardware/camera2/CaptureResult;)F

    move-result v1

    sget-object v2, Lcom/oplus/camera/ui/inverse/e;->INS:Lcom/oplus/camera/ui/inverse/e;

    invoke-virtual {v2}, Lcom/oplus/camera/ui/inverse/e;->getThreshold()I

    move-result v2

    int-to-float v2, v2

    cmpl-float v1, v1, v2

    if-lez v1, :cond_14

    .line 2053
    invoke-virtual {p0, v3}, Lcom/oplus/camera/capmode/BaseMode;->updateDimHintView(Z)V

    goto :goto_5

    .line 2054
    :cond_14
    invoke-static {v0}, Lcom/oplus/camera/util/Util;->a(Landroid/hardware/camera2/CaptureResult;)F

    move-result v1

    sget-object v2, Lcom/oplus/camera/ui/inverse/e;->INS:Lcom/oplus/camera/ui/inverse/e;

    invoke-virtual {v2}, Lcom/oplus/camera/ui/inverse/e;->getThresholdRecover()I

    move-result v2

    int-to-float v2, v2

    cmpg-float v1, v1, v2

    if-gez v1, :cond_17

    .line 2055
    invoke-virtual {p0, v4}, Lcom/oplus/camera/capmode/BaseMode;->updateDimHintView(Z)V

    goto :goto_5

    :cond_15
    if-eqz v1, :cond_17

    .line 2057
    instance-of v2, v1, [I

    if-eqz v2, :cond_17

    .line 2058
    check-cast v1, [I

    aget v1, v1, v4

    iput v1, p0, Lcom/oplus/camera/capmode/BaseMode;->mFlashTrigger:I

    .line 2059
    iget v1, p0, Lcom/oplus/camera/capmode/BaseMode;->mFlashTrigger:I

    if-ne v1, v3, :cond_16

    move v4, v3

    :cond_16
    invoke-virtual {p0, v4}, Lcom/oplus/camera/capmode/BaseMode;->updateDimHintView(Z)V

    .line 2062
    :cond_17
    :goto_5
    sget-object v1, Lcom/oplus/camera/e/b;->av:Landroid/hardware/camera2/CaptureResult$Key;

    invoke-static {v0, v1}, Lcom/oplus/camera/e/b;->a(Landroid/hardware/camera2/CaptureResult;Landroid/hardware/camera2/CaptureResult$Key;)Ljava/lang/Object;

    move-result-object v1

    .line 2064
    instance-of v2, v1, Ljava/lang/Integer;

    if-eqz v2, :cond_18

    .line 2065
    check-cast v1, Ljava/lang/Integer;

    iput-object v1, p0, Lcom/oplus/camera/capmode/BaseMode;->mPreviweStreamNeedState:Ljava/lang/Integer;

    .line 2068
    :cond_18
    invoke-direct {p0, p1}, Lcom/oplus/camera/capmode/BaseMode;->shouldShowDirtyToast(Lcom/oplus/ocs/camera/CameraPreviewCallback$CameraPreviewResult;)Z

    move-result v1

    if-eqz v1, :cond_19

    .line 2069
    invoke-direct {p0}, Lcom/oplus/camera/capmode/BaseMode;->showDirtyLensHintView()V

    .line 2072
    :cond_19
    sget-object v1, Landroid/hardware/camera2/CaptureResult;->CONTROL_AE_EXPOSURE_COMPENSATION:Landroid/hardware/camera2/CaptureResult$Key;

    invoke-virtual {v0, v1}, Landroid/hardware/camera2/CaptureResult;->get(Landroid/hardware/camera2/CaptureResult$Key;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    if-eqz v1, :cond_1a

    .line 2075
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    iput v1, p0, Lcom/oplus/camera/capmode/BaseMode;->mEVValueFromMetadata:I

    .line 2078
    :cond_1a
    sget-object v1, Lcom/oplus/camera/e/b;->bj:Landroid/hardware/camera2/CaptureResult$Key;

    invoke-static {v0, v1}, Lcom/oplus/camera/e/b;->a(Landroid/hardware/camera2/CaptureResult;Landroid/hardware/camera2/CaptureResult$Key;)Ljava/lang/Object;

    move-result-object v0

    const v1, 0x7f1000eb

    .line 2081
    iget-object v2, p0, Lcom/oplus/camera/capmode/BaseMode;->mFocusOutOfRange:Ljava/lang/Object;

    if-eq v2, v0, :cond_1c

    .line 2082
    iput-object v0, p0, Lcom/oplus/camera/capmode/BaseMode;->mFocusOutOfRange:Ljava/lang/Object;

    .line 2084
    iget-object v2, p0, Lcom/oplus/camera/capmode/BaseMode;->mCameraUIInterface:Lcom/oplus/camera/ui/CameraUIInterface;

    if-eqz v2, :cond_1c

    const-string v2, "support_focus_out_of_range"

    .line 2085
    invoke-virtual {p0, v2}, Lcom/oplus/camera/capmode/BaseMode;->getSupportFunction(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1c

    if-eqz v0, :cond_1c

    instance-of v2, v0, Ljava/lang/Integer;

    if-eqz v2, :cond_1c

    .line 2088
    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    if-ne v3, v0, :cond_1b

    iget-object v0, p0, Lcom/oplus/camera/capmode/BaseMode;->mCameraUIInterface:Lcom/oplus/camera/ui/CameraUIInterface;

    .line 2089
    invoke-interface {v0}, Lcom/oplus/camera/ui/CameraUIInterface;->T()Z

    move-result v0

    if-nez v0, :cond_1b

    iget-boolean v0, p0, Lcom/oplus/camera/capmode/BaseMode;->mbInCapturing:Z

    if-nez v0, :cond_1b

    iget-object v0, p0, Lcom/oplus/camera/capmode/BaseMode;->mCameraUIInterface:Lcom/oplus/camera/ui/CameraUIInterface;

    .line 2091
    invoke-interface {v0}, Lcom/oplus/camera/ui/CameraUIInterface;->aU()Z

    move-result v0

    if-nez v0, :cond_1b

    .line 2092
    iget-object v4, p0, Lcom/oplus/camera/capmode/BaseMode;->mCameraUIInterface:Lcom/oplus/camera/ui/CameraUIInterface;

    const/4 v6, -0x1

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x1

    const v5, 0x7f1000eb

    invoke-interface/range {v4 .. v9}, Lcom/oplus/camera/ui/CameraUIInterface;->a(IIZZZ)V

    goto :goto_6

    .line 2094
    :cond_1b
    iget-object v0, p0, Lcom/oplus/camera/capmode/BaseMode;->mCameraUIInterface:Lcom/oplus/camera/ui/CameraUIInterface;

    invoke-interface {v0, v1}, Lcom/oplus/camera/ui/CameraUIInterface;->a(I)V

    .line 2099
    :cond_1c
    :goto_6
    iget-object v0, p0, Lcom/oplus/camera/capmode/BaseMode;->mCameraUIInterface:Lcom/oplus/camera/ui/CameraUIInterface;

    if-eqz v0, :cond_1d

    invoke-interface {v0}, Lcom/oplus/camera/ui/CameraUIInterface;->aU()Z

    move-result v0

    if-eqz v0, :cond_1d

    .line 2100
    iget-object v0, p0, Lcom/oplus/camera/capmode/BaseMode;->mCameraUIInterface:Lcom/oplus/camera/ui/CameraUIInterface;

    invoke-interface {v0, v1}, Lcom/oplus/camera/ui/CameraUIInterface;->a(I)V

    :cond_1d
    const-string v0, "com.oplus.maincamera.asd.aiscene.support"

    .line 2103
    invoke-static {v0}, Lcom/oplus/camera/aps/config/CameraConfig;->getConfigBooleanValue(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1e

    const-string v0, "com.oplus.widecamera.asd.aiscene.support"

    .line 2104
    invoke-static {v0}, Lcom/oplus/camera/aps/config/CameraConfig;->getConfigBooleanValue(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1e

    const-string v0, "com.oplus.satcamera.asd.aiscene.support"

    .line 2105
    invoke-static {v0}, Lcom/oplus/camera/aps/config/CameraConfig;->getConfigBooleanValue(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1e

    .line 2106
    invoke-virtual {p0}, Lcom/oplus/camera/capmode/BaseMode;->needUpdateAsdSceneValue()Z

    move-result v0

    if-eqz v0, :cond_1f

    .line 2107
    :cond_1e
    sget-object v0, Lcom/oplus/ocs/camera/CameraParameter;->PREVIEW_RESULT_AI_SCENE:Lcom/oplus/ocs/camera/CameraParameter$PreviewResultKey;

    invoke-virtual {p1, v0}, Lcom/oplus/ocs/camera/CameraPreviewCallback$CameraPreviewResult;->get(Lcom/oplus/ocs/camera/CameraParameter$PreviewResultKey;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Integer;

    if-eqz p1, :cond_1f

    .line 2109
    iget v0, p0, Lcom/oplus/camera/capmode/BaseMode;->mAsdSceneValue:I

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    if-eq v0, v1, :cond_1f

    .line 2110
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    iput p1, p0, Lcom/oplus/camera/capmode/BaseMode;->mAsdSceneValue:I

    .line 2111
    iget p1, p0, Lcom/oplus/camera/capmode/BaseMode;->mAsdSceneValue:I

    invoke-virtual {p0, v3, p1}, Lcom/oplus/camera/capmode/BaseMode;->updateAsdSceneValue(ZI)V

    :cond_1f
    return-void

    .line 1942
    :cond_20
    :goto_7
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "onPreviewCaptureResult, invalid previewResult: "

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "BaseMode"

    invoke-static {p1, p0}, Lcom/oplus/camera/e;->f(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public onPreviewDecisionResult(Lcom/oplus/camera/aps/util/CameraApsDecision;)V
    .locals 27

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    .line 879
    iget-boolean v2, v0, Lcom/oplus/camera/capmode/BaseMode;->mbDestroyed:Z

    if-eqz v2, :cond_0

    const-string v0, "BaseMode"

    const-string v1, "onPreviewDecisionResult, mbDestroyed is true, so return."

    .line 880
    invoke-static {v0, v1}, Lcom/oplus/camera/e;->a(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_0
    const/4 v2, 0x1

    .line 887
    invoke-virtual {v0, v1, v2}, Lcom/oplus/camera/capmode/BaseMode;->getCaptureRequestTag(Lcom/oplus/camera/aps/util/CameraApsDecision;Z)Lcom/oplus/camera/e/c;

    move-result-object v3

    .line 889
    iget-object v4, v0, Lcom/oplus/camera/capmode/BaseMode;->mStatePreferenceHelper:Lcom/oplus/camera/algovisualization/j;

    if-nez v4, :cond_2

    .line 890
    iget-object v4, v0, Lcom/oplus/camera/capmode/BaseMode;->mActivity:Landroid/app/Activity;

    if-nez v4, :cond_1

    const-string v0, "BaseMode"

    const-string v1, "onPreviewDecisionResult, mActivity is null, so return."

    .line 891
    invoke-static {v0, v1}, Lcom/oplus/camera/e;->a(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    .line 896
    :cond_1
    new-instance v5, Lcom/oplus/camera/algovisualization/j;

    invoke-direct {v5, v4}, Lcom/oplus/camera/algovisualization/j;-><init>(Landroid/app/Activity;)V

    iput-object v5, v0, Lcom/oplus/camera/capmode/BaseMode;->mStatePreferenceHelper:Lcom/oplus/camera/algovisualization/j;

    .line 899
    :cond_2
    iget-object v4, v0, Lcom/oplus/camera/capmode/BaseMode;->mStatePreferenceHelper:Lcom/oplus/camera/algovisualization/j;

    invoke-virtual {v4}, Lcom/oplus/camera/algovisualization/j;->b()Z

    move-result v4

    if-eqz v4, :cond_3

    iget-object v4, v0, Lcom/oplus/camera/capmode/BaseMode;->mStatePreferenceHelper:Lcom/oplus/camera/algovisualization/j;

    invoke-virtual {v4}, Lcom/oplus/camera/algovisualization/j;->a()Z

    move-result v4

    if-eqz v4, :cond_3

    .line 900
    new-instance v4, Lcom/oplus/camera/algovisualization/d;

    move-object v5, v4

    .line 901
    invoke-virtual/range {p0 .. p0}, Lcom/oplus/camera/capmode/BaseMode;->isBlurOpen()Z

    move-result v6

    invoke-virtual/range {p0 .. p0}, Lcom/oplus/camera/capmode/BaseMode;->getCurrFilterType()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v0, v7}, Lcom/oplus/camera/capmode/BaseMode;->isFilterOpen(Ljava/lang/String;)Z

    move-result v7

    invoke-direct/range {p0 .. p0}, Lcom/oplus/camera/capmode/BaseMode;->isFaceBeautyOpen()Z

    move-result v8

    .line 902
    invoke-virtual/range {p0 .. p0}, Lcom/oplus/camera/capmode/BaseMode;->isMultiStickerOpen()Z

    move-result v9

    invoke-virtual/range {p0 .. p0}, Lcom/oplus/camera/capmode/BaseMode;->isAnimojiOpen()Z

    move-result v10

    const-string v11, "func_video_blur_process"

    .line 903
    invoke-virtual {v0, v11}, Lcom/oplus/camera/capmode/BaseMode;->getSupportFunction(Ljava/lang/String;)Z

    move-result v11

    .line 904
    invoke-virtual/range {p0 .. p0}, Lcom/oplus/camera/capmode/BaseMode;->isVideoNeonOpen()Z

    move-result v12

    invoke-virtual/range {p0 .. p0}, Lcom/oplus/camera/capmode/BaseMode;->isSuperTextOpen()Z

    move-result v13

    invoke-virtual/range {p0 .. p0}, Lcom/oplus/camera/capmode/BaseMode;->isVideoRetentionOpen()Z

    move-result v14

    .line 905
    invoke-virtual/range {p0 .. p0}, Lcom/oplus/camera/capmode/BaseMode;->isTiltShiftOpen()Z

    move-result v15

    invoke-virtual/range {p0 .. p0}, Lcom/oplus/camera/capmode/BaseMode;->isDoubleExposureOpen()Z

    move-result v16

    invoke-virtual/range {p0 .. p0}, Lcom/oplus/camera/capmode/BaseMode;->isFishEyeMode()Z

    move-result v17

    iget-boolean v2, v0, Lcom/oplus/camera/capmode/BaseMode;->mbBurstShot:Z

    move/from16 v18, v2

    .line 906
    invoke-virtual/range {p0 .. p0}, Lcom/oplus/camera/capmode/BaseMode;->isFaceRectifyOpen()Z

    move-result v19

    const-string v2, "func_dered_eye"

    invoke-virtual {v0, v2}, Lcom/oplus/camera/capmode/BaseMode;->getSupportFunction(Ljava/lang/String;)Z

    move-result v20

    .line 907
    invoke-virtual/range {p0 .. p0}, Lcom/oplus/camera/capmode/BaseMode;->isFlashState()Z

    move-result v21

    const-string v2, "func_video_retention"

    invoke-virtual {v0, v2}, Lcom/oplus/camera/capmode/BaseMode;->getSupportFunction(Ljava/lang/String;)Z

    move-result v22

    .line 908
    invoke-virtual/range {p0 .. p0}, Lcom/oplus/camera/capmode/BaseMode;->isHasSuperTextDetectResult()Z

    move-result v23

    invoke-virtual/range {p0 .. p0}, Lcom/oplus/camera/capmode/BaseMode;->isSloganOpen()Z

    move-result v24

    invoke-virtual/range {p0 .. p0}, Lcom/oplus/camera/capmode/BaseMode;->getTiltShiftBlurValue()F

    move-result v25

    iget v2, v0, Lcom/oplus/camera/capmode/BaseMode;->mCameraId:I

    move/from16 v26, v2

    invoke-direct/range {v5 .. v26}, Lcom/oplus/camera/algovisualization/d;-><init>(ZZZZZZZZZZZZZZZZZZZFI)V

    .line 910
    invoke-virtual {v4, v3}, Lcom/oplus/camera/algovisualization/d;->a(Lcom/oplus/camera/e/c;)Ljava/util/ArrayList;

    move-result-object v2

    iput-object v2, v0, Lcom/oplus/camera/capmode/BaseMode;->mCapAlgoListFromApp:Ljava/util/ArrayList;

    .line 911
    invoke-virtual {v4}, Lcom/oplus/camera/algovisualization/d;->a()Ljava/util/ArrayList;

    move-result-object v2

    iput-object v2, v0, Lcom/oplus/camera/capmode/BaseMode;->mPreAlgoListFromApp:Ljava/util/ArrayList;

    if-eqz v1, :cond_3

    .line 914
    iget-object v2, v1, Lcom/oplus/camera/aps/util/CameraApsDecision;->mFullAlgoKey:Ljava/lang/String;

    iput-object v2, v0, Lcom/oplus/camera/capmode/BaseMode;->mFullAlgoKey:Ljava/lang/String;

    .line 915
    iget-object v2, v1, Lcom/oplus/camera/aps/util/CameraApsDecision;->mFullAlgoValue:Ljava/lang/String;

    iput-object v2, v0, Lcom/oplus/camera/capmode/BaseMode;->mFullAlgoValue:Ljava/lang/String;

    .line 919
    :cond_3
    iget-object v2, v0, Lcom/oplus/camera/capmode/BaseMode;->mApsDecisionResultLock:Ljava/lang/Object;

    monitor-enter v2

    if-eqz v1, :cond_4

    .line 921
    :try_start_0
    iget v3, v1, Lcom/oplus/camera/aps/util/CameraApsDecision;->mMultiFrameCount:I

    iput v3, v0, Lcom/oplus/camera/capmode/BaseMode;->mMultiFrameCount:I

    .line 922
    iget v3, v1, Lcom/oplus/camera/aps/util/CameraApsDecision;->mApsDecisionSceneMode:I

    iput v3, v0, Lcom/oplus/camera/capmode/BaseMode;->mApsDecisionSceneMode:I

    .line 923
    iget v3, v1, Lcom/oplus/camera/aps/util/CameraApsDecision;->mApsDecisionFeatureType:I

    iput v3, v0, Lcom/oplus/camera/capmode/BaseMode;->mApsDecisionFeatureType:I

    .line 924
    iget-object v3, v1, Lcom/oplus/camera/aps/util/CameraApsDecision;->mApsAlgoFlag:[Ljava/lang/String;

    iput-object v3, v0, Lcom/oplus/camera/capmode/BaseMode;->mApsAlgoFlag:[Ljava/lang/String;

    .line 925
    iget-object v3, v1, Lcom/oplus/camera/aps/util/CameraApsDecision;->mCaptureEVList:[I

    iput-object v3, v0, Lcom/oplus/camera/capmode/BaseMode;->mCaptureEVList:[I

    .line 926
    iget v3, v1, Lcom/oplus/camera/aps/util/CameraApsDecision;->mApsBracketMode:I

    iput v3, v0, Lcom/oplus/camera/capmode/BaseMode;->mApsBracketMode:I

    .line 929
    :cond_4
    iget-boolean v3, v0, Lcom/oplus/camera/capmode/BaseMode;->mbInCapturing:Z

    if-nez v3, :cond_a

    iget-boolean v3, v0, Lcom/oplus/camera/capmode/BaseMode;->mbPaused:Z

    if-nez v3, :cond_a

    iget-boolean v3, v0, Lcom/oplus/camera/capmode/BaseMode;->mbCapModeInit:Z

    if-nez v3, :cond_5

    goto :goto_2

    .line 936
    :cond_5
    iget-object v3, v0, Lcom/oplus/camera/capmode/BaseMode;->mDecisionResult:Lcom/oplus/camera/aps/util/CameraApsDecision;

    const/4 v4, 0x0

    if-nez v3, :cond_6

    if-eqz v1, :cond_6

    const/4 v3, 0x1

    goto :goto_0

    :cond_6
    move v3, v4

    .line 937
    :goto_0
    iput-object v1, v0, Lcom/oplus/camera/capmode/BaseMode;->mDecisionResult:Lcom/oplus/camera/aps/util/CameraApsDecision;

    .line 939
    invoke-direct/range {p0 .. p1}, Lcom/oplus/camera/capmode/BaseMode;->updateAutoHDRUI(Lcom/oplus/camera/aps/util/CameraApsDecision;)V

    .line 940
    invoke-direct/range {p0 .. p1}, Lcom/oplus/camera/capmode/BaseMode;->updateAutoSeNightUI(Lcom/oplus/camera/aps/util/CameraApsDecision;)V

    .line 941
    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    if-eqz v3, :cond_8

    .line 944
    iget-object v1, v0, Lcom/oplus/camera/capmode/BaseMode;->mCameraUIInterface:Lcom/oplus/camera/ui/CameraUIInterface;

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Lcom/oplus/camera/capmode/BaseMode;->getSupportQuickJpeg(Lcom/oplus/camera/e/c;)Z

    move-result v2

    if-eqz v2, :cond_7

    const-string v2, "com.oplus.cache.while.preview"

    .line 945
    invoke-static {v2}, Lcom/oplus/camera/aps/config/CameraConfig;->getConfigBooleanValue(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_7

    const/4 v2, 0x1

    goto :goto_1

    :cond_7
    move v2, v4

    .line 944
    :goto_1
    invoke-interface {v1, v2}, Lcom/oplus/camera/ui/CameraUIInterface;->n(Z)V

    .line 948
    :cond_8
    iget-object v1, v0, Lcom/oplus/camera/capmode/BaseMode;->mNeedCaptureLock:Ljava/lang/Object;

    monitor-enter v1

    .line 949
    :try_start_1
    iget-boolean v2, v0, Lcom/oplus/camera/capmode/BaseMode;->mbNeedCapture:Z

    if-eqz v2, :cond_9

    const-string v2, "BaseMode"

    const-string v3, "onPreviewDecisionResult, needCapture"

    .line 950
    invoke-static {v2, v3}, Lcom/oplus/camera/e;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 952
    iput-boolean v4, v0, Lcom/oplus/camera/capmode/BaseMode;->mbNeedCapture:Z

    .line 954
    iget-object v2, v0, Lcom/oplus/camera/capmode/BaseMode;->mOneCamera:Lcom/oplus/camera/e/d;

    if-eqz v2, :cond_9

    .line 955
    iget-object v2, v0, Lcom/oplus/camera/capmode/BaseMode;->mOneCamera:Lcom/oplus/camera/e/d;

    invoke-interface {v2}, Lcom/oplus/camera/e/d;->l()Landroid/os/Handler;

    move-result-object v2

    new-instance v3, Lcom/oplus/camera/capmode/BaseMode$4;

    invoke-direct {v3, v0}, Lcom/oplus/camera/capmode/BaseMode$4;-><init>(Lcom/oplus/camera/capmode/BaseMode;)V

    invoke-virtual {v2, v3}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 963
    :cond_9
    monitor-exit v1

    return-void

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0

    :cond_a
    :goto_2
    :try_start_2
    const-string v1, "BaseMode"

    .line 930
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "onPreviewDecisionResult, mbInCapturing: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v4, v0, Lcom/oplus/camera/capmode/BaseMode;->mbInCapturing:Z

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v4, ", mbPaused: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v4, v0, Lcom/oplus/camera/capmode/BaseMode;->mbPaused:Z

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v4, ", mbCapModeInit: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v0, v0, Lcom/oplus/camera/capmode/BaseMode;->mbCapModeInit:Z

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/oplus/camera/e;->f(Ljava/lang/String;Ljava/lang/String;)V

    .line 933
    monitor-exit v2

    return-void

    :catchall_1
    move-exception v0

    .line 941
    monitor-exit v2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    throw v0
.end method

.method protected onPreviewFrameReceived(Landroid/media/Image;)Z
    .locals 0

    const/4 p0, 0x1

    return p0
.end method

.method public onProcessCapturePictureRequest()V
    .locals 0

    return-void
.end method

.method public onRawImageReceived(Lcom/oplus/ocs/camera/CameraPictureCallback$CameraPictureImage;)V
    .locals 0

    return-void
.end method

.method public onReceivePreviewCaptureResult(Landroid/hardware/camera2/CaptureResult;)V
    .locals 2

    .line 7506
    sget-object v0, Lcom/oplus/camera/ui/inverse/e;->INS:Lcom/oplus/camera/ui/inverse/e;

    iget-object v1, p0, Lcom/oplus/camera/capmode/BaseMode;->mActivity:Landroid/app/Activity;

    invoke-virtual {v0, v1}, Lcom/oplus/camera/ui/inverse/e;->isInverseAble(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 7507
    invoke-direct {p0, p1}, Lcom/oplus/camera/capmode/BaseMode;->updateScreenState(Landroid/hardware/camera2/CaptureResult;)V

    goto :goto_0

    .line 7509
    :cond_0
    invoke-direct {p0, p1}, Lcom/oplus/camera/capmode/BaseMode;->updateScreenBrightnessState(Landroid/hardware/camera2/CaptureResult;)V

    .line 7512
    :goto_0
    invoke-direct {p0, p1}, Lcom/oplus/camera/capmode/BaseMode;->updateDarkEnvironmentTips(Landroid/hardware/camera2/CaptureResult;)V

    return-void
.end method

.method protected onResume(Z)V
    .locals 0

    const/4 p1, 0x0

    .line 616
    iput-boolean p1, p0, Lcom/oplus/camera/capmode/BaseMode;->mbLuxHasChange:Z

    return-void
.end method

.method protected onResumeFromSetting()V
    .locals 0

    return-void
.end method

.method public onScreenOffWhenLocked()V
    .locals 0

    return-void
.end method

.method public onScroll(Landroid/view/MotionEvent;Landroid/view/MotionEvent;FF)Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public onSendCapturePictureRequest()V
    .locals 0

    return-void
.end method

.method public onSessionConfigured()V
    .locals 1

    const-string v0, "pref_camera_torch_mode_key"

    .line 7090
    invoke-virtual {p0, v0}, Lcom/oplus/camera/capmode/BaseMode;->getSupportFunction(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 7091
    invoke-direct {p0}, Lcom/oplus/camera/capmode/BaseMode;->resetScreenState()V

    .line 7094
    :cond_0
    iget-object v0, p0, Lcom/oplus/camera/capmode/BaseMode;->mCameraInterface:Lcom/oplus/camera/capmode/a;

    invoke-interface {v0}, Lcom/oplus/camera/capmode/a;->S()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 7095
    invoke-virtual {p0}, Lcom/oplus/camera/capmode/BaseMode;->isFilterEffectOpen()Z

    move-result v0

    if-nez v0, :cond_1

    invoke-virtual {p0}, Lcom/oplus/camera/capmode/BaseMode;->getFaceBeautyCurrIndex()I

    move-result v0

    if-eqz v0, :cond_2

    .line 7096
    :cond_1
    iget-object v0, p0, Lcom/oplus/camera/capmode/BaseMode;->mCameraUIInterface:Lcom/oplus/camera/ui/CameraUIInterface;

    invoke-interface {v0}, Lcom/oplus/camera/ui/CameraUIInterface;->J()V

    .line 7099
    :cond_2
    invoke-virtual {p0}, Lcom/oplus/camera/capmode/BaseMode;->clearFocusOutOfRange()V

    return-void
.end method

.method public onShareMenuExpand()V
    .locals 0

    return-void
.end method

.method public onSharedPreferenceChanged(Landroid/content/SharedPreferences;Ljava/lang/String;)V
    .locals 19

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    .line 6359
    invoke-static/range {p2 .. p2}, Lcom/oplus/camera/entry/b;->d(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 6361
    iget-object v3, v0, Lcom/oplus/camera/capmode/BaseMode;->mCameraUIInterface:Lcom/oplus/camera/ui/CameraUIInterface;

    invoke-interface {v3}, Lcom/oplus/camera/ui/CameraUIInterface;->k()Lcom/oplus/camera/ui/a/a;

    move-result-object v3

    const-string v4, "pref_camera_photo_ratio_key"

    invoke-virtual {v3, v4}, Lcom/oplus/camera/ui/a/a;->a(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_0

    iget-object v3, v0, Lcom/oplus/camera/capmode/BaseMode;->mCameraUIInterface:Lcom/oplus/camera/ui/CameraUIInterface;

    .line 6362
    invoke-interface {v3}, Lcom/oplus/camera/ui/CameraUIInterface;->k()Lcom/oplus/camera/ui/a/a;

    move-result-object v3

    const-string v5, "pref_camera_photo_ratio_key_from_other_app"

    invoke-virtual {v3, v5}, Lcom/oplus/camera/ui/a/a;->a(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 6363
    :cond_0
    iget-object v3, v0, Lcom/oplus/camera/capmode/BaseMode;->mPreferences:Landroid/content/SharedPreferences;

    iget-object v5, v0, Lcom/oplus/camera/capmode/BaseMode;->mActivity:Landroid/app/Activity;

    const v6, 0x7f1002be

    .line 6364
    invoke-virtual {v5, v6}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v5

    .line 6363
    invoke-interface {v3, v4, v5}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 6365
    iget-object v5, v0, Lcom/oplus/camera/capmode/BaseMode;->mCameraUIInterface:Lcom/oplus/camera/ui/CameraUIInterface;

    invoke-interface {v5}, Lcom/oplus/camera/ui/CameraUIInterface;->k()Lcom/oplus/camera/ui/a/a;

    move-result-object v5

    invoke-static {v3}, Lcom/oplus/camera/util/Util;->a(Ljava/lang/String;)I

    move-result v6

    invoke-virtual {v5, v6}, Lcom/oplus/camera/ui/a/a;->b(I)V

    .line 6367
    invoke-static {}, Lcom/oplus/camera/util/Util;->t()Z

    move-result v5

    if-nez v5, :cond_1

    .line 6368
    invoke-virtual {v0, v3}, Lcom/oplus/camera/capmode/BaseMode;->showPictureSizeHint(Ljava/lang/String;)V

    .line 6372
    :cond_1
    iget-object v3, v0, Lcom/oplus/camera/capmode/BaseMode;->mCameraUIInterface:Lcom/oplus/camera/ui/CameraUIInterface;

    invoke-interface {v3}, Lcom/oplus/camera/ui/CameraUIInterface;->k()Lcom/oplus/camera/ui/a/a;

    move-result-object v3

    const-string v5, "pref_camera_timer_shutter_key"

    invoke-virtual {v3, v5}, Lcom/oplus/camera/ui/a/a;->a(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_2

    iget-object v3, v0, Lcom/oplus/camera/capmode/BaseMode;->mCameraUIInterface:Lcom/oplus/camera/ui/CameraUIInterface;

    .line 6373
    invoke-interface {v3}, Lcom/oplus/camera/ui/CameraUIInterface;->k()Lcom/oplus/camera/ui/a/a;

    move-result-object v3

    const-string v6, "pref_camera_timer_shutter_key_from_other_app"

    invoke-virtual {v3, v6}, Lcom/oplus/camera/ui/a/a;->a(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_5

    .line 6374
    :cond_2
    iget-object v3, v0, Lcom/oplus/camera/capmode/BaseMode;->mPreferences:Landroid/content/SharedPreferences;

    if-eqz v3, :cond_5

    .line 6375
    iget-object v6, v0, Lcom/oplus/camera/capmode/BaseMode;->mActivity:Landroid/app/Activity;

    const v7, 0x7f1003ca

    .line 6376
    invoke-virtual {v6, v7}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v6

    .line 6375
    invoke-interface {v3, v5, v6}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const-string v5, "10"

    .line 6378
    invoke-virtual {v5, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_3

    .line 6379
    iget-object v6, v0, Lcom/oplus/camera/capmode/BaseMode;->mCameraUIInterface:Lcom/oplus/camera/ui/CameraUIInterface;

    const v7, 0x7f1005ac

    const/4 v8, -0x1

    const/4 v9, 0x1

    const/4 v10, 0x0

    const/4 v11, 0x0

    invoke-interface/range {v6 .. v11}, Lcom/oplus/camera/ui/CameraUIInterface;->a(IIZZZ)V

    goto :goto_0

    :cond_3
    const-string v5, "3"

    .line 6381
    invoke-virtual {v5, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_4

    .line 6382
    iget-object v5, v0, Lcom/oplus/camera/capmode/BaseMode;->mCameraUIInterface:Lcom/oplus/camera/ui/CameraUIInterface;

    const v6, 0x7f1005ad

    const/4 v7, -0x1

    const/4 v8, 0x1

    const/4 v9, 0x0

    const/4 v10, 0x0

    invoke-interface/range {v5 .. v10}, Lcom/oplus/camera/ui/CameraUIInterface;->a(IIZZZ)V

    goto :goto_0

    .line 6385
    :cond_4
    iget-object v11, v0, Lcom/oplus/camera/capmode/BaseMode;->mCameraUIInterface:Lcom/oplus/camera/ui/CameraUIInterface;

    const v12, 0x7f1005ae

    const/4 v13, -0x1

    const/4 v14, 0x1

    const/4 v15, 0x0

    const/16 v16, 0x0

    invoke-interface/range {v11 .. v16}, Lcom/oplus/camera/ui/CameraUIInterface;->a(IIZZZ)V

    :cond_5
    :goto_0
    const-string v3, "pref_camera_flashmode_key"

    .line 6391
    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    const-string v6, "off"

    const/4 v7, 0x0

    const/4 v8, 0x1

    if-eqz v5, :cond_a

    .line 6392
    iget-object v5, v0, Lcom/oplus/camera/capmode/BaseMode;->mCameraEntry:Lcom/oplus/camera/entry/b;

    invoke-virtual {v5}, Lcom/oplus/camera/entry/b;->J()I

    move-result v5

    invoke-static {v3, v5}, Lcom/oplus/camera/entry/b;->b(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v5

    iget-object v9, v0, Lcom/oplus/camera/capmode/BaseMode;->mActivity:Landroid/app/Activity;

    const v10, 0x7f1001bb

    .line 6393
    invoke-virtual {v9, v10}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v9

    .line 6392
    invoke-interface {v1, v5, v9}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 6395
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "onSharedPreferenceChanged, flashMode: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v10, ", mbAutoFlash: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v10, v0, Lcom/oplus/camera/capmode/BaseMode;->mbAutoFlash:Z

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    const-string v10, "BaseMode"

    invoke-static {v10, v9}, Lcom/oplus/camera/e;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 6397
    sget-boolean v9, Lcom/oplus/camera/Camera;->l:Z

    if-nez v9, :cond_7

    sget-boolean v9, Lcom/oplus/camera/Camera;->m:Z

    if-eqz v9, :cond_6

    goto :goto_1

    .line 6418
    :cond_6
    invoke-virtual {v0, v5}, Lcom/oplus/camera/capmode/BaseMode;->updateFlashState(Ljava/lang/String;)V

    .line 6419
    invoke-direct/range {p0 .. p0}, Lcom/oplus/camera/capmode/BaseMode;->updateMenuWithFlashChange()Z

    goto :goto_2

    .line 6398
    :cond_7
    :goto_1
    iput-boolean v8, v0, Lcom/oplus/camera/capmode/BaseMode;->mbNeedReloadFlashMenu:Z

    .line 6400
    invoke-virtual {v6, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_8

    .line 6401
    iget-object v5, v0, Lcom/oplus/camera/capmode/BaseMode;->mPreferences:Landroid/content/SharedPreferences;

    invoke-interface {v5}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v5

    .line 6402
    invoke-interface {v5, v3, v6}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 6403
    invoke-interface {v5}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 6404
    iget-object v5, v0, Lcom/oplus/camera/capmode/BaseMode;->mCameraUIInterface:Lcom/oplus/camera/ui/CameraUIInterface;

    invoke-interface {v5, v3}, Lcom/oplus/camera/ui/CameraUIInterface;->f(Ljava/lang/String;)V

    goto :goto_2

    .line 6406
    :cond_8
    invoke-virtual {v0, v7}, Lcom/oplus/camera/capmode/BaseMode;->setAutoFlash(Z)V

    .line 6407
    iget-boolean v3, v0, Lcom/oplus/camera/capmode/BaseMode;->mbAutoHDR:Z

    iget-boolean v5, v0, Lcom/oplus/camera/capmode/BaseMode;->mbAutoFlash:Z

    invoke-virtual {v0, v3, v5}, Lcom/oplus/camera/capmode/BaseMode;->displayAllIcon(ZZ)V

    .line 6409
    sget-boolean v3, Lcom/oplus/camera/Camera;->m:Z

    if-eqz v3, :cond_9

    .line 6410
    iget-object v9, v0, Lcom/oplus/camera/capmode/BaseMode;->mCameraUIInterface:Lcom/oplus/camera/ui/CameraUIInterface;

    const v10, 0x7f1001eb

    const/4 v11, -0x1

    const/4 v12, 0x1

    const/4 v13, 0x0

    const/4 v14, 0x0

    invoke-interface/range {v9 .. v14}, Lcom/oplus/camera/ui/CameraUIInterface;->a(IIZZZ)V

    goto :goto_2

    .line 6412
    :cond_9
    sget-boolean v3, Lcom/oplus/camera/Camera;->l:Z

    if-eqz v3, :cond_a

    .line 6413
    iget-object v9, v0, Lcom/oplus/camera/capmode/BaseMode;->mCameraUIInterface:Lcom/oplus/camera/ui/CameraUIInterface;

    const v10, 0x7f10022f

    const/4 v11, -0x1

    const/4 v12, 0x1

    const/4 v13, 0x0

    const/4 v14, 0x0

    invoke-interface/range {v9 .. v14}, Lcom/oplus/camera/ui/CameraUIInterface;->a(IIZZZ)V

    .line 6423
    :cond_a
    :goto_2
    invoke-virtual {v4, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_b

    .line 6424
    invoke-virtual {v0, v8}, Lcom/oplus/camera/capmode/BaseMode;->updateInversePositionRatio(Z)V

    :cond_b
    const-string v3, "pref_camera_torch_mode_key"

    .line 6427
    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1e

    const-string v4, "func_torch_soft_light"

    .line 6428
    invoke-virtual {v0, v4}, Lcom/oplus/camera/capmode/BaseMode;->getSupportFunction(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_f

    sget-boolean v5, Lcom/oplus/camera/Camera;->l:Z

    if-nez v5, :cond_c

    sget-boolean v5, Lcom/oplus/camera/Camera;->m:Z

    if-eqz v5, :cond_f

    .line 6430
    :cond_c
    iput-boolean v8, v0, Lcom/oplus/camera/capmode/BaseMode;->mbNeedReloadFlashMenu:Z

    .line 6431
    invoke-virtual {v0, v7}, Lcom/oplus/camera/capmode/BaseMode;->setAutoFlash(Z)V

    .line 6432
    iget-boolean v4, v0, Lcom/oplus/camera/capmode/BaseMode;->mbAutoHDR:Z

    iget-boolean v5, v0, Lcom/oplus/camera/capmode/BaseMode;->mbAutoFlash:Z

    invoke-virtual {v0, v4, v5}, Lcom/oplus/camera/capmode/BaseMode;->displayAllIcon(ZZ)V

    .line 6433
    invoke-interface {v1, v2, v6}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 6435
    invoke-virtual {v6, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_1e

    .line 6436
    sget-boolean v4, Lcom/oplus/camera/Camera;->m:Z

    if-eqz v4, :cond_d

    .line 6437
    iget-object v9, v0, Lcom/oplus/camera/capmode/BaseMode;->mCameraUIInterface:Lcom/oplus/camera/ui/CameraUIInterface;

    const v10, 0x7f1001eb

    const/4 v11, -0x1

    const/4 v12, 0x1

    const/4 v13, 0x0

    const/4 v14, 0x0

    invoke-interface/range {v9 .. v14}, Lcom/oplus/camera/ui/CameraUIInterface;->a(IIZZZ)V

    goto :goto_3

    .line 6439
    :cond_d
    sget-boolean v4, Lcom/oplus/camera/Camera;->l:Z

    if-eqz v4, :cond_e

    .line 6440
    iget-object v9, v0, Lcom/oplus/camera/capmode/BaseMode;->mCameraUIInterface:Lcom/oplus/camera/ui/CameraUIInterface;

    const v10, 0x7f10022f

    const/4 v11, -0x1

    const/4 v12, 0x1

    const/4 v13, 0x0

    const/4 v14, 0x0

    invoke-interface/range {v9 .. v14}, Lcom/oplus/camera/ui/CameraUIInterface;->a(IIZZZ)V

    .line 6444
    :cond_e
    :goto_3
    iget-object v4, v0, Lcom/oplus/camera/capmode/BaseMode;->mPreferences:Landroid/content/SharedPreferences;

    invoke-interface {v4}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v4

    .line 6445
    invoke-interface {v4, v3, v6}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 6446
    invoke-interface {v4}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 6447
    iget-object v4, v0, Lcom/oplus/camera/capmode/BaseMode;->mCameraUIInterface:Lcom/oplus/camera/ui/CameraUIInterface;

    invoke-interface {v4, v3}, Lcom/oplus/camera/ui/CameraUIInterface;->f(Ljava/lang/String;)V

    goto/16 :goto_7

    .line 6450
    :cond_f
    invoke-interface {v1, v2, v6}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    const-string v6, "on"

    .line 6452
    invoke-virtual {v6, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    const-string v10, "auto"

    const-string v11, "torch"

    const-string v12, "pref_camera_torch_mode_key_from_other_app"

    if-eqz v9, :cond_11

    .line 6453
    iget-object v9, v0, Lcom/oplus/camera/capmode/BaseMode;->mCameraUIInterface:Lcom/oplus/camera/ui/CameraUIInterface;

    invoke-interface {v9, v7, v8, v8}, Lcom/oplus/camera/ui/CameraUIInterface;->a(ZZZ)V

    .line 6455
    iget-object v9, v0, Lcom/oplus/camera/capmode/BaseMode;->mCameraUIInterface:Lcom/oplus/camera/ui/CameraUIInterface;

    invoke-interface {v9}, Lcom/oplus/camera/ui/CameraUIInterface;->k()Lcom/oplus/camera/ui/a/a;

    move-result-object v9

    invoke-virtual {v9, v3}, Lcom/oplus/camera/ui/a/a;->a(Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_10

    .line 6456
    iget-object v13, v0, Lcom/oplus/camera/capmode/BaseMode;->mCameraUIInterface:Lcom/oplus/camera/ui/CameraUIInterface;

    const v14, 0x7f1005b2

    const/4 v15, -0x1

    const/16 v16, 0x1

    const/16 v17, 0x1

    const/16 v18, 0x0

    invoke-interface/range {v13 .. v18}, Lcom/oplus/camera/ui/CameraUIInterface;->a(IIZZZ)V

    goto/16 :goto_4

    .line 6457
    :cond_10
    iget-object v9, v0, Lcom/oplus/camera/capmode/BaseMode;->mCameraUIInterface:Lcom/oplus/camera/ui/CameraUIInterface;

    invoke-interface {v9}, Lcom/oplus/camera/ui/CameraUIInterface;->k()Lcom/oplus/camera/ui/a/a;

    move-result-object v9

    invoke-virtual {v9, v12}, Lcom/oplus/camera/ui/a/a;->a(Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_19

    .line 6458
    iget-object v12, v0, Lcom/oplus/camera/capmode/BaseMode;->mCameraUIInterface:Lcom/oplus/camera/ui/CameraUIInterface;

    const v13, 0x7f1005b1

    const/4 v14, -0x1

    const/4 v15, 0x1

    const/16 v16, 0x1

    const/16 v17, 0x0

    invoke-interface/range {v12 .. v17}, Lcom/oplus/camera/ui/CameraUIInterface;->a(IIZZZ)V

    goto/16 :goto_4

    .line 6460
    :cond_11
    invoke-virtual {v10, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_15

    .line 6461
    iget-object v9, v0, Lcom/oplus/camera/capmode/BaseMode;->mCameraUIInterface:Lcom/oplus/camera/ui/CameraUIInterface;

    invoke-interface {v9}, Lcom/oplus/camera/ui/CameraUIInterface;->k()Lcom/oplus/camera/ui/a/a;

    move-result-object v9

    invoke-virtual {v9, v3}, Lcom/oplus/camera/ui/a/a;->a(Ljava/lang/String;)Z

    move-result v9

    if-nez v9, :cond_12

    iget-object v9, v0, Lcom/oplus/camera/capmode/BaseMode;->mCameraUIInterface:Lcom/oplus/camera/ui/CameraUIInterface;

    .line 6462
    invoke-interface {v9}, Lcom/oplus/camera/ui/CameraUIInterface;->k()Lcom/oplus/camera/ui/a/a;

    move-result-object v9

    invoke-virtual {v9, v12}, Lcom/oplus/camera/ui/a/a;->a(Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_13

    .line 6463
    :cond_12
    iget-object v12, v0, Lcom/oplus/camera/capmode/BaseMode;->mCameraUIInterface:Lcom/oplus/camera/ui/CameraUIInterface;

    const v13, 0x7f1005af

    const/4 v14, -0x1

    const/4 v15, 0x1

    const/16 v16, 0x1

    const/16 v17, 0x0

    invoke-interface/range {v12 .. v17}, Lcom/oplus/camera/ui/CameraUIInterface;->a(IIZZZ)V

    .line 6466
    :cond_13
    iget-boolean v9, v0, Lcom/oplus/camera/capmode/BaseMode;->mbAutoFlash:Z

    if-eqz v9, :cond_14

    .line 6467
    iget-object v12, v0, Lcom/oplus/camera/capmode/BaseMode;->mCameraUIInterface:Lcom/oplus/camera/ui/CameraUIInterface;

    const/4 v13, -0x1

    const v14, 0x7f080411

    const/4 v15, 0x0

    const/16 v16, 0x1

    const/16 v17, 0x0

    invoke-interface/range {v12 .. v17}, Lcom/oplus/camera/ui/CameraUIInterface;->a(IIZZZ)V

    goto :goto_4

    .line 6470
    :cond_14
    iget-object v9, v0, Lcom/oplus/camera/capmode/BaseMode;->mCameraUIInterface:Lcom/oplus/camera/ui/CameraUIInterface;

    invoke-interface {v9, v7, v8, v8}, Lcom/oplus/camera/ui/CameraUIInterface;->a(ZZZ)V

    goto :goto_4

    .line 6472
    :cond_15
    invoke-virtual {v11, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_17

    .line 6473
    iget-object v9, v0, Lcom/oplus/camera/capmode/BaseMode;->mCameraUIInterface:Lcom/oplus/camera/ui/CameraUIInterface;

    invoke-interface {v9, v7, v8, v8}, Lcom/oplus/camera/ui/CameraUIInterface;->a(ZZZ)V

    .line 6475
    iget-object v9, v0, Lcom/oplus/camera/capmode/BaseMode;->mCameraUIInterface:Lcom/oplus/camera/ui/CameraUIInterface;

    invoke-interface {v9}, Lcom/oplus/camera/ui/CameraUIInterface;->k()Lcom/oplus/camera/ui/a/a;

    move-result-object v9

    invoke-virtual {v9, v3}, Lcom/oplus/camera/ui/a/a;->a(Ljava/lang/String;)Z

    move-result v9

    if-nez v9, :cond_16

    iget-object v9, v0, Lcom/oplus/camera/capmode/BaseMode;->mCameraUIInterface:Lcom/oplus/camera/ui/CameraUIInterface;

    .line 6476
    invoke-interface {v9}, Lcom/oplus/camera/ui/CameraUIInterface;->k()Lcom/oplus/camera/ui/a/a;

    move-result-object v9

    invoke-virtual {v9, v12}, Lcom/oplus/camera/ui/a/a;->a(Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_19

    .line 6477
    :cond_16
    iget-object v12, v0, Lcom/oplus/camera/capmode/BaseMode;->mCameraUIInterface:Lcom/oplus/camera/ui/CameraUIInterface;

    const v13, 0x7f1005b2

    const/4 v14, -0x1

    const/4 v15, 0x1

    const/16 v16, 0x1

    const/16 v17, 0x0

    invoke-interface/range {v12 .. v17}, Lcom/oplus/camera/ui/CameraUIInterface;->a(IIZZZ)V

    goto :goto_4

    .line 6480
    :cond_17
    iget-object v9, v0, Lcom/oplus/camera/capmode/BaseMode;->mCameraUIInterface:Lcom/oplus/camera/ui/CameraUIInterface;

    invoke-interface {v9, v7, v8, v8}, Lcom/oplus/camera/ui/CameraUIInterface;->a(ZZZ)V

    .line 6482
    iget-object v9, v0, Lcom/oplus/camera/capmode/BaseMode;->mCameraUIInterface:Lcom/oplus/camera/ui/CameraUIInterface;

    invoke-interface {v9}, Lcom/oplus/camera/ui/CameraUIInterface;->k()Lcom/oplus/camera/ui/a/a;

    move-result-object v9

    invoke-virtual {v9, v3}, Lcom/oplus/camera/ui/a/a;->a(Ljava/lang/String;)Z

    move-result v9

    if-nez v9, :cond_18

    iget-object v9, v0, Lcom/oplus/camera/capmode/BaseMode;->mCameraUIInterface:Lcom/oplus/camera/ui/CameraUIInterface;

    .line 6483
    invoke-interface {v9}, Lcom/oplus/camera/ui/CameraUIInterface;->k()Lcom/oplus/camera/ui/a/a;

    move-result-object v9

    invoke-virtual {v9, v12}, Lcom/oplus/camera/ui/a/a;->a(Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_19

    .line 6484
    :cond_18
    iget-object v12, v0, Lcom/oplus/camera/capmode/BaseMode;->mCameraUIInterface:Lcom/oplus/camera/ui/CameraUIInterface;

    const v13, 0x7f1005b0

    const/4 v14, -0x1

    const/4 v15, 0x1

    const/16 v16, 0x1

    const/16 v17, 0x0

    invoke-interface/range {v12 .. v17}, Lcom/oplus/camera/ui/CameraUIInterface;->a(IIZZZ)V

    .line 6488
    :cond_19
    :goto_4
    invoke-virtual {v0, v4}, Lcom/oplus/camera/capmode/BaseMode;->getSupportFunction(Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_1a

    .line 6489
    invoke-direct/range {p0 .. p0}, Lcom/oplus/camera/capmode/BaseMode;->updateMenuWithSoftLightChange()Z

    goto :goto_5

    .line 6491
    :cond_1a
    invoke-direct/range {p0 .. p0}, Lcom/oplus/camera/capmode/BaseMode;->updateMenuWithFlashChange()Z

    .line 6494
    :goto_5
    iget-object v9, v0, Lcom/oplus/camera/capmode/BaseMode;->mOneCamera:Lcom/oplus/camera/e/d;

    if-eqz v9, :cond_1e

    .line 6495
    invoke-virtual {v0, v4}, Lcom/oplus/camera/capmode/BaseMode;->getSupportFunction(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_1b

    invoke-virtual {v6, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1b

    move-object v5, v11

    .line 6499
    :cond_1b
    invoke-virtual {v0, v3}, Lcom/oplus/camera/capmode/BaseMode;->getSupportFunction(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_1c

    invoke-virtual {v6, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1c

    sget-object v4, Lcom/oplus/camera/ui/inverse/e;->INS:Lcom/oplus/camera/ui/inverse/e;

    iget-object v6, v0, Lcom/oplus/camera/capmode/BaseMode;->mActivity:Landroid/app/Activity;

    .line 6500
    invoke-virtual {v4, v6}, Lcom/oplus/camera/ui/inverse/e;->isInverseAble(Landroid/content/Context;)Z

    move-result v4

    if-eqz v4, :cond_1c

    move-object v5, v11

    .line 6504
    :cond_1c
    invoke-virtual {v0, v3}, Lcom/oplus/camera/capmode/BaseMode;->getSupportFunction(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_1d

    .line 6505
    invoke-virtual {v10, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1d

    sget-object v3, Lcom/oplus/camera/ui/inverse/e;->INS:Lcom/oplus/camera/ui/inverse/e;

    iget-object v4, v0, Lcom/oplus/camera/capmode/BaseMode;->mActivity:Landroid/app/Activity;

    .line 6506
    invoke-virtual {v3, v4}, Lcom/oplus/camera/ui/inverse/e;->isInverseAble(Landroid/content/Context;)Z

    move-result v3

    if-eqz v3, :cond_1d

    .line 6507
    iget-object v3, v0, Lcom/oplus/camera/capmode/BaseMode;->mOneCamera:Lcom/oplus/camera/e/d;

    invoke-interface {v3, v8}, Lcom/oplus/camera/e/d;->c(Z)V

    goto :goto_6

    .line 6509
    :cond_1d
    iget-object v3, v0, Lcom/oplus/camera/capmode/BaseMode;->mOneCamera:Lcom/oplus/camera/e/d;

    invoke-interface {v3, v7}, Lcom/oplus/camera/e/d;->c(Z)V

    .line 6512
    :goto_6
    iget-object v3, v0, Lcom/oplus/camera/capmode/BaseMode;->mOneCamera:Lcom/oplus/camera/e/d;

    invoke-interface {v3, v5}, Lcom/oplus/camera/e/d;->b(Ljava/lang/String;)V

    .line 6513
    iget-object v3, v0, Lcom/oplus/camera/capmode/BaseMode;->mOneCamera:Lcom/oplus/camera/e/d;

    const/4 v4, 0x0

    invoke-interface {v3, v4}, Lcom/oplus/camera/e/d;->a(Lcom/oplus/camera/e/d$c;)V

    :cond_1e
    :goto_7
    const-string v3, "pref_camera_vivid_effect_key"

    .line 6518
    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1f

    .line 6519
    invoke-virtual/range {p0 .. p0}, Lcom/oplus/camera/capmode/BaseMode;->isVividEffectOpen()Z

    move-result v3

    if-eqz v3, :cond_1f

    .line 6520
    invoke-virtual/range {p0 .. p0}, Lcom/oplus/camera/capmode/BaseMode;->isFilterEffectOpen()Z

    move-result v3

    if-eqz v3, :cond_1f

    .line 6521
    sget v3, Lcom/oplus/camera/ui/preview/a/j;->a:I

    invoke-virtual {v0, v3}, Lcom/oplus/camera/capmode/BaseMode;->onFilterItemChange(I)V

    .line 6523
    invoke-virtual/range {p0 .. p0}, Lcom/oplus/camera/capmode/BaseMode;->getCurrEffectMenuName()Ljava/lang/String;

    move-result-object v3

    const-string v4, "filter"

    invoke-virtual {v4, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1f

    .line 6524
    iget-object v3, v0, Lcom/oplus/camera/capmode/BaseMode;->mCameraUIInterface:Lcom/oplus/camera/ui/CameraUIInterface;

    iget-object v4, v0, Lcom/oplus/camera/capmode/BaseMode;->mActivity:Landroid/app/Activity;

    const v5, 0x7f10017f

    invoke-virtual {v4, v5}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v4

    sget v5, Lcom/oplus/camera/ui/preview/a/j;->a:I

    invoke-interface {v3, v4, v5}, Lcom/oplus/camera/ui/CameraUIInterface;->c(Ljava/lang/String;I)V

    :cond_1f
    const-string v3, "slow_video_high_frame_reddot_show"

    .line 6531
    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_20

    .line 6532
    invoke-interface {v1, v3, v8}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v3

    if-nez v3, :cond_20

    .line 6533
    iget-object v3, v0, Lcom/oplus/camera/capmode/BaseMode;->mCameraUIInterface:Lcom/oplus/camera/ui/CameraUIInterface;

    const/4 v4, 0x2

    invoke-interface {v3, v4}, Lcom/oplus/camera/ui/CameraUIInterface;->n(I)V

    :cond_20
    const-string v3, "id_photo_reddot_show"

    .line 6536
    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_21

    .line 6537
    invoke-interface {v1, v3, v7}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v3

    if-nez v3, :cond_21

    .line 6538
    iget-object v3, v0, Lcom/oplus/camera/capmode/BaseMode;->mCameraUIInterface:Lcom/oplus/camera/ui/CameraUIInterface;

    const/16 v4, 0xd

    invoke-interface {v3, v4}, Lcom/oplus/camera/ui/CameraUIInterface;->n(I)V

    :cond_21
    const-string v3, "fish_eye_reddot_show"

    .line 6541
    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_22

    .line 6542
    invoke-interface {v1, v3, v8}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v3

    if-nez v3, :cond_22

    .line 6543
    iget-object v3, v0, Lcom/oplus/camera/capmode/BaseMode;->mCameraUIInterface:Lcom/oplus/camera/ui/CameraUIInterface;

    const/16 v4, 0x1d

    invoke-interface {v3, v4}, Lcom/oplus/camera/ui/CameraUIInterface;->n(I)V

    :cond_22
    const-string v3, "microscope_reddot_show"

    .line 6546
    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_23

    const-string v3, "microscope_reddot_show"

    .line 6547
    invoke-interface {v1, v3, v8}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v3

    if-nez v3, :cond_23

    .line 6548
    iget-object v3, v0, Lcom/oplus/camera/capmode/BaseMode;->mCameraUIInterface:Lcom/oplus/camera/ui/CameraUIInterface;

    const/16 v4, 0x10

    invoke-interface {v3, v4}, Lcom/oplus/camera/ui/CameraUIInterface;->n(I)V

    :cond_23
    const-string v3, "multi_video_reddot_show"

    .line 6551
    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_24

    const-string v3, "multi_video_reddot_show"

    .line 6552
    invoke-interface {v1, v3, v7}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v3

    if-nez v3, :cond_24

    .line 6553
    iget-object v3, v0, Lcom/oplus/camera/capmode/BaseMode;->mCameraUIInterface:Lcom/oplus/camera/ui/CameraUIInterface;

    const/16 v4, 0xe

    invoke-interface {v3, v4}, Lcom/oplus/camera/ui/CameraUIInterface;->n(I)V

    :cond_24
    const-string v3, "mode_high_pixel_reddot_show"

    .line 6556
    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_25

    const-string v3, "mode_high_pixel_reddot_show"

    .line 6557
    invoke-interface {v1, v3, v8}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v3

    if-nez v3, :cond_25

    .line 6558
    iget-object v3, v0, Lcom/oplus/camera/capmode/BaseMode;->mCameraUIInterface:Lcom/oplus/camera/ui/CameraUIInterface;

    const/16 v4, 0x1f

    invoke-interface {v3, v4}, Lcom/oplus/camera/ui/CameraUIInterface;->n(I)V

    :cond_25
    const-string v3, "profession_reddot_show"

    .line 6561
    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_26

    const-string v3, "profession_reddot_show"

    .line 6562
    invoke-interface {v1, v3, v8}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v3

    if-nez v3, :cond_26

    .line 6563
    iget-object v3, v0, Lcom/oplus/camera/capmode/BaseMode;->mCameraUIInterface:Lcom/oplus/camera/ui/CameraUIInterface;

    const/4 v4, 0x4

    invoke-interface {v3, v4}, Lcom/oplus/camera/ui/CameraUIInterface;->n(I)V

    :cond_26
    const-string v3, "double_exposure_reddot_show"

    .line 6566
    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_27

    const-string v3, "double_exposure_reddot_show"

    .line 6567
    invoke-interface {v1, v3, v8}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v3

    if-nez v3, :cond_27

    .line 6568
    iget-object v3, v0, Lcom/oplus/camera/capmode/BaseMode;->mCameraUIInterface:Lcom/oplus/camera/ui/CameraUIInterface;

    const/16 v4, 0x12

    invoke-interface {v3, v4}, Lcom/oplus/camera/ui/CameraUIInterface;->n(I)V

    :cond_27
    const-string v3, "long_exposure_reddot_show"

    .line 6571
    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_28

    const-string v2, "long_exposure_reddot_show"

    .line 6572
    invoke-interface {v1, v2, v8}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    if-nez v1, :cond_28

    .line 6573
    iget-object v0, v0, Lcom/oplus/camera/capmode/BaseMode;->mCameraUIInterface:Lcom/oplus/camera/ui/CameraUIInterface;

    const/16 v1, 0x1b

    invoke-interface {v0, v1}, Lcom/oplus/camera/ui/CameraUIInterface;->n(I)V

    :cond_28
    return-void
.end method

.method public onShowBubble()V
    .locals 3

    .line 710
    iget-object v0, p0, Lcom/oplus/camera/capmode/BaseMode;->mPreferences:Landroid/content/SharedPreferences;

    if-eqz v0, :cond_2

    if-eqz v0, :cond_0

    const/4 v1, 0x0

    const-string v2, "key_permission_dialog_displayed"

    .line 712
    invoke-interface {v0, v2, v1}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/oplus/camera/capmode/BaseMode;->mPreferences:Landroid/content/SharedPreferences;

    const-string v2, "pref_camera_statement_key"

    .line 713
    invoke-interface {v0, v2, v1}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    .line 719
    :cond_0
    iget-object v0, p0, Lcom/oplus/camera/capmode/BaseMode;->mCameraUIInterface:Lcom/oplus/camera/ui/CameraUIInterface;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/oplus/camera/capmode/BaseMode;->mCameraInterface:Lcom/oplus/camera/capmode/a;

    if-eqz v0, :cond_1

    .line 721
    invoke-interface {v0}, Lcom/oplus/camera/capmode/a;->i()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/oplus/camera/capmode/BaseMode;->mCameraInterface:Lcom/oplus/camera/capmode/a;

    .line 722
    invoke-interface {v0}, Lcom/oplus/camera/capmode/a;->S()Z

    move-result v0

    if-nez v0, :cond_1

    .line 723
    invoke-virtual {p0}, Lcom/oplus/camera/capmode/BaseMode;->showNextTip()V

    :cond_1
    return-void

    :cond_2
    :goto_0
    const-string p0, "BaseMode"

    const-string v0, "onShowBubble return"

    .line 714
    invoke-static {p0, v0}, Lcom/oplus/camera/e;->b(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public onShutterButtonLongClick()V
    .locals 0

    return-void
.end method

.method protected onShutterCallback(ZZ)V
    .locals 0

    const-string p0, "BaseMode"

    const-string p1, "CameraTest Shutter clickable Restart"

    .line 2886
    invoke-static {p0, p1}, Lcom/oplus/camera/e;->f(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public onSingleTapUp(Landroid/view/MotionEvent;)Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public onSlowVideoFrameChange(I)V
    .locals 0

    return-void
.end method

.method public onStartCapturePreviewData()V
    .locals 0

    return-void
.end method

.method protected abstract onStop()V
.end method

.method protected abstract onStopTakePicture()Z
.end method

.method public onSuperEISChange()V
    .locals 0

    return-void
.end method

.method protected onSwitchCameraButtonClick()V
    .locals 0

    return-void
.end method

.method public onTeleAngleOpened()V
    .locals 0

    return-void
.end method

.method public onThermalLevelChange(II)V
    .locals 1

    .line 3274
    iget-object p1, p0, Lcom/oplus/camera/capmode/BaseMode;->mPreferences:Landroid/content/SharedPreferences;

    if-eqz p1, :cond_0

    .line 3275
    invoke-interface {p1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object p1

    int-to-float p2, p2

    const-string v0, "key_cur_temperature"

    .line 3276
    invoke-interface {p1, v0, p2}, Landroid/content/SharedPreferences$Editor;->putFloat(Ljava/lang/String;F)Landroid/content/SharedPreferences$Editor;

    move-result-object p1

    .line 3277
    invoke-interface {p1}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 3280
    :cond_0
    invoke-direct {p0}, Lcom/oplus/camera/capmode/BaseMode;->setCurTemperatureToHAL()V

    return-void
.end method

.method public onThumbnailUpdated(Lcom/oplus/camera/aps/service/ThumbnailItem;)V
    .locals 0

    if-eqz p1, :cond_0

    .line 1173
    iget-object p0, p1, Lcom/oplus/camera/aps/service/ThumbnailItem;->mOriginBitmap:Landroid/graphics/Bitmap;

    if-eqz p0, :cond_0

    iget-object p0, p1, Lcom/oplus/camera/aps/service/ThumbnailItem;->mOriginBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {p0}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result p0

    if-nez p0, :cond_0

    .line 1174
    iget-object p0, p1, Lcom/oplus/camera/aps/service/ThumbnailItem;->mOriginBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {p0}, Landroid/graphics/Bitmap;->recycle()V

    const/4 p0, 0x0

    .line 1175
    iput-object p0, p1, Lcom/oplus/camera/aps/service/ThumbnailItem;->mOriginBitmap:Landroid/graphics/Bitmap;

    :cond_0
    return-void
.end method

.method public onTimeSnapShotEnd(Z)V
    .locals 2

    .line 1567
    invoke-static {}, Lcom/oplus/camera/util/Util;->ao()Z

    move-result p1

    if-eqz p1, :cond_0

    const/16 p1, 0x17

    goto :goto_0

    :cond_0
    const/16 p1, 0xb

    .line 1568
    :goto_0
    new-instance v0, Lcom/oplus/camera/ui/control/b;

    const-string v1, "button_color_inside_none"

    invoke-direct {v0, p1, v1}, Lcom/oplus/camera/ui/control/b;-><init>(ILjava/lang/String;)V

    const/4 p1, 0x0

    .line 1569
    invoke-virtual {v0, p1}, Lcom/oplus/camera/ui/control/b;->b(I)V

    .line 1570
    iget-object p0, p0, Lcom/oplus/camera/capmode/BaseMode;->mCameraUIInterface:Lcom/oplus/camera/ui/CameraUIInterface;

    invoke-interface {p0, v0}, Lcom/oplus/camera/ui/CameraUIInterface;->a(Lcom/oplus/camera/ui/control/b;)V

    return-void
.end method

.method protected onTopSubMenuCollapse()V
    .locals 0

    return-void
.end method

.method protected onTopSubMenuExpand()V
    .locals 0

    return-void
.end method

.method public onTouchFocus()V
    .locals 0

    return-void
.end method

.method public onUiModeChanged()V
    .locals 1

    const-string p0, "BaseMode"

    const-string v0, "onUiModeChanged"

    .line 6320
    invoke-static {p0, v0}, Lcom/oplus/camera/e;->a(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public onUltraWideAngleOpened()V
    .locals 0

    return-void
.end method

.method public onUpdateCameraSettingMenu()V
    .locals 3

    const-string v0, "BaseMode"

    const-string v1, "onUpdateCameraSettingMenu"

    .line 4590
    invoke-static {v0, v1}, Lcom/oplus/camera/e;->a(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "pref_filter_menu"

    .line 4592
    invoke-virtual {p0, v0}, Lcom/oplus/camera/capmode/BaseMode;->getSupportFunction(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 4593
    iget-object v1, p0, Lcom/oplus/camera/capmode/BaseMode;->mCameraUIInterface:Lcom/oplus/camera/ui/CameraUIInterface;

    const-string v2, "pref_fuji_filter_menu"

    invoke-virtual {p0, v2}, Lcom/oplus/camera/capmode/BaseMode;->getSupportFunction(Ljava/lang/String;)Z

    move-result v2

    invoke-interface {v1, v2}, Lcom/oplus/camera/ui/CameraUIInterface;->t(Z)V

    .line 4594
    iget-object v1, p0, Lcom/oplus/camera/capmode/BaseMode;->mCameraUIInterface:Lcom/oplus/camera/ui/CameraUIInterface;

    invoke-interface {v1, v0}, Lcom/oplus/camera/ui/CameraUIInterface;->g(Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    const-string v0, "pref_portrait_new_style_menu"

    .line 4595
    invoke-virtual {p0, v0}, Lcom/oplus/camera/capmode/BaseMode;->getSupportFunction(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 4596
    iget-object v1, p0, Lcom/oplus/camera/capmode/BaseMode;->mCameraUIInterface:Lcom/oplus/camera/ui/CameraUIInterface;

    invoke-interface {v1, v0}, Lcom/oplus/camera/ui/CameraUIInterface;->g(Ljava/lang/String;)V

    goto :goto_0

    :cond_1
    const-string v0, "pref_video_filter_menu"

    .line 4597
    invoke-virtual {p0, v0}, Lcom/oplus/camera/capmode/BaseMode;->getSupportFunction(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 4598
    iget-object v1, p0, Lcom/oplus/camera/capmode/BaseMode;->mCameraUIInterface:Lcom/oplus/camera/ui/CameraUIInterface;

    invoke-interface {v1, v0}, Lcom/oplus/camera/ui/CameraUIInterface;->g(Ljava/lang/String;)V

    goto :goto_0

    :cond_2
    const-string v0, "pref_night_filter_menu"

    .line 4599
    invoke-virtual {p0, v0}, Lcom/oplus/camera/capmode/BaseMode;->getSupportFunction(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 4600
    iget-object v1, p0, Lcom/oplus/camera/capmode/BaseMode;->mCameraUIInterface:Lcom/oplus/camera/ui/CameraUIInterface;

    invoke-interface {v1, v0}, Lcom/oplus/camera/ui/CameraUIInterface;->g(Ljava/lang/String;)V

    :cond_3
    :goto_0
    const-string v0, "pref_video_blur_menu"

    .line 4603
    invoke-virtual {p0, v0}, Lcom/oplus/camera/capmode/BaseMode;->getSupportFunction(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 4604
    iget-object v1, p0, Lcom/oplus/camera/capmode/BaseMode;->mCameraUIInterface:Lcom/oplus/camera/ui/CameraUIInterface;

    invoke-interface {v1, v0}, Lcom/oplus/camera/ui/CameraUIInterface;->g(Ljava/lang/String;)V

    :cond_4
    const-string v0, "pref_portrait_blur_menu"

    .line 4607
    invoke-virtual {p0, v0}, Lcom/oplus/camera/capmode/BaseMode;->getSupportFunction(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_5

    .line 4608
    iget-object v1, p0, Lcom/oplus/camera/capmode/BaseMode;->mCameraUIInterface:Lcom/oplus/camera/ui/CameraUIInterface;

    invoke-interface {v1, v0}, Lcom/oplus/camera/ui/CameraUIInterface;->g(Ljava/lang/String;)V

    :cond_5
    const-string v0, "pref_street_long_exposure_menu"

    .line 4611
    invoke-virtual {p0, v0}, Lcom/oplus/camera/capmode/BaseMode;->getSupportFunction(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_6

    .line 4612
    iget-object v1, p0, Lcom/oplus/camera/capmode/BaseMode;->mCameraUIInterface:Lcom/oplus/camera/ui/CameraUIInterface;

    invoke-interface {v1, v0}, Lcom/oplus/camera/ui/CameraUIInterface;->g(Ljava/lang/String;)V

    .line 4615
    :cond_6
    sget-object v0, Lcom/oplus/camera/capmode/BaseMode;->FILTER_KEYS:[Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/oplus/camera/capmode/BaseMode;->removeSettingMenuOption([Ljava/lang/String;)V

    const-string v0, "pref_camera_hdr_mode_key"

    .line 4617
    invoke-virtual {p0, v0}, Lcom/oplus/camera/capmode/BaseMode;->getSupportFunction(Ljava/lang/String;)Z

    move-result v0

    invoke-direct {p0, v0}, Lcom/oplus/camera/capmode/BaseMode;->setHDRMenuVisibility(Z)V

    return-void
.end method

.method public onVideoLoadedDone(Lcom/oplus/camera/doubleexposure/b;Lcom/oplus/camera/doubleexposure/g$a;)V
    .locals 0

    return-void
.end method

.method public onVideoRecordingFail()V
    .locals 0

    return-void
.end method

.method public onVideoRecordingFinish()V
    .locals 0

    return-void
.end method

.method public onVideoRecordingPause()Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public onVideoRecordingResume()Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public onVideoRetakeButtonClick()V
    .locals 0

    return-void
.end method

.method public onVideoShutterButtonClick()V
    .locals 0

    return-void
.end method

.method public onVideoTemperatureThresholdChanged(I)V
    .locals 0

    return-void
.end method

.method public onYuvDataReceviced([B)V
    .locals 0

    return-void
.end method

.method public onZoomAlphaChanged(F)V
    .locals 0

    return-void
.end method

.method public onZoomChanged()V
    .locals 0

    return-void
.end method

.method public onZoomMenuCollapsed()V
    .locals 0

    return-void
.end method

.method public onZoomMenuCollapsing()V
    .locals 0

    return-void
.end method

.method public onZoomMenuExpand()V
    .locals 0

    return-void
.end method

.method public onZoomTransitionChanged(I)V
    .locals 0

    return-void
.end method

.method protected openViviEffect()V
    .locals 3

    .line 4522
    iget-object v0, p0, Lcom/oplus/camera/capmode/BaseMode;->mPreferences:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "on"

    const-string v2, "pref_camera_vivid_effect_key"

    .line 4523
    invoke-interface {v0, v2, v1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 4524
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 4526
    iget-object p0, p0, Lcom/oplus/camera/capmode/BaseMode;->mCameraUIInterface:Lcom/oplus/camera/ui/CameraUIInterface;

    invoke-interface {p0, v2, v1}, Lcom/oplus/camera/ui/CameraUIInterface;->b(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public operateSpecificViewCallBack(Ljava/lang/Object;ZZ)V
    .locals 0

    return-void
.end method

.method public operateViewWhenMultiFinger(Z)V
    .locals 0

    return-void
.end method

.method public final pause()V
    .locals 4

    const/4 v0, 0x1

    .line 1876
    iput-boolean v0, p0, Lcom/oplus/camera/capmode/BaseMode;->mbPaused:Z

    const/4 v1, 0x0

    .line 1877
    iput-boolean v1, p0, Lcom/oplus/camera/capmode/BaseMode;->mbHasClickedFromThird:Z

    .line 1878
    iput-boolean v1, p0, Lcom/oplus/camera/capmode/BaseMode;->mbInCapturing:Z

    .line 1879
    invoke-virtual {p0, v1}, Lcom/oplus/camera/capmode/BaseMode;->setBurstShotCapturing(Z)V

    .line 1880
    invoke-direct {p0, v1}, Lcom/oplus/camera/capmode/BaseMode;->setInPreparing(Z)V

    .line 1881
    invoke-virtual {p0, v0}, Lcom/oplus/camera/capmode/BaseMode;->setAllowSwitchMode(Z)V

    .line 1882
    sput-boolean v1, Lcom/oplus/camera/capmode/BaseMode;->sbFrontDirtyLensToastShown:Z

    .line 1883
    sput-boolean v1, Lcom/oplus/camera/capmode/BaseMode;->sbRearDirtyLensToastShown:Z

    .line 1884
    iput-boolean v1, p0, Lcom/oplus/camera/capmode/BaseMode;->mbShowEnvironmentTips:Z

    .line 1885
    iput-boolean v1, p0, Lcom/oplus/camera/capmode/BaseMode;->mbCaptureNotMatchMeta:Z

    .line 1886
    sput-boolean v1, Lcom/oplus/camera/capmode/BaseMode;->sHighBrightness:Z

    .line 1888
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "pause, mbInCapturing: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v3, p0, Lcom/oplus/camera/capmode/BaseMode;->mbInCapturing:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "BaseMode"

    invoke-static {v3, v2}, Lcom/oplus/camera/e;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 1890
    invoke-virtual {p0}, Lcom/oplus/camera/capmode/BaseMode;->onPause()V

    .line 1892
    iget-object v2, p0, Lcom/oplus/camera/capmode/BaseMode;->mHandler:Landroid/os/Handler;

    if-eqz v2, :cond_0

    const/4 v3, 0x0

    .line 1893
    invoke-virtual {v2, v3}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    .line 1896
    :cond_0
    invoke-virtual {p0}, Lcom/oplus/camera/capmode/BaseMode;->isOpenHDR()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 1897
    invoke-direct {p0, v1}, Lcom/oplus/camera/capmode/BaseMode;->updateMenuWithHDRChange(Z)V

    .line 1900
    :cond_1
    iget-object v2, p0, Lcom/oplus/camera/capmode/BaseMode;->mCameraUIInterface:Lcom/oplus/camera/ui/CameraUIInterface;

    invoke-interface {v2, v0, v0, v0}, Lcom/oplus/camera/ui/CameraUIInterface;->a(ZZZ)V

    const-string v2, "key_bubble_type_custom_face_beauty_close"

    .line 1902
    invoke-virtual {p0, v2}, Lcom/oplus/camera/capmode/BaseMode;->isBubbleOpen(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 1903
    iget-object v2, p0, Lcom/oplus/camera/capmode/BaseMode;->mCameraUIInterface:Lcom/oplus/camera/ui/CameraUIInterface;

    const/16 v3, 0x8

    invoke-interface {v2, v3, v0}, Lcom/oplus/camera/ui/CameraUIInterface;->f(IZ)V

    .line 1906
    :cond_2
    invoke-virtual {p0, v1}, Lcom/oplus/camera/capmode/BaseMode;->setAutoFlash(Z)V

    .line 1907
    invoke-virtual {p0, v1}, Lcom/oplus/camera/capmode/BaseMode;->setNeedCapture(Z)V

    .line 1908
    iput-boolean v1, p0, Lcom/oplus/camera/capmode/BaseMode;->mbAutoHDR:Z

    .line 1909
    iput-boolean v1, p0, Lcom/oplus/camera/capmode/BaseMode;->mbAutoBinning:Z

    .line 1910
    iput-boolean v1, p0, Lcom/oplus/camera/capmode/BaseMode;->mbOpenViviEffectAfterBurstShot:Z

    .line 1911
    iput v1, p0, Lcom/oplus/camera/capmode/BaseMode;->mPostCounter:I

    .line 1912
    invoke-virtual {p0}, Lcom/oplus/camera/capmode/BaseMode;->onGetNearMeOnClickData()V

    return-void
.end method

.method public performSlide(ILandroid/view/MotionEvent;)Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public final pictureTakenCallback([BIILjava/lang/String;ZZJI)V
    .locals 11

    const/4 v7, 0x1

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move v3, p3

    move-object v4, p4

    move/from16 v5, p5

    move/from16 v6, p6

    move-wide/from16 v8, p7

    move/from16 v10, p9

    .line 3128
    invoke-virtual/range {v0 .. v10}, Lcom/oplus/camera/capmode/BaseMode;->pictureTakenCallback([BIILjava/lang/String;ZZZJI)V

    return-void
.end method

.method public final pictureTakenCallback([BIILjava/lang/String;ZZZJI)V
    .locals 2

    .line 3133
    iget-object v0, p0, Lcom/oplus/camera/capmode/BaseMode;->mCameraInterface:Lcom/oplus/camera/capmode/a;

    if-eqz v0, :cond_0

    .line 3134
    invoke-interface {v0, p1}, Lcom/oplus/camera/capmode/a;->a([B)V

    .line 3135
    invoke-virtual {p0, p1, p6}, Lcom/oplus/camera/capmode/BaseMode;->onBeforePictureTaken([BZ)V

    :cond_0
    if-eqz p5, :cond_5

    .line 3139
    iget-boolean p5, p0, Lcom/oplus/camera/capmode/BaseMode;->mbPaused:Z

    if-eqz p5, :cond_1

    if-eqz p7, :cond_1

    return-void

    :cond_1
    if-nez p2, :cond_3

    if-nez p3, :cond_3

    .line 3143
    iget-object p5, p0, Lcom/oplus/camera/capmode/BaseMode;->mOneCamera:Lcom/oplus/camera/e/d;

    if-eqz p5, :cond_3

    iget-object v0, p0, Lcom/oplus/camera/capmode/BaseMode;->mCameraInterface:Lcom/oplus/camera/capmode/a;

    if-eqz v0, :cond_3

    .line 3144
    invoke-interface {p5}, Lcom/oplus/camera/e/d;->e()Lcom/oplus/camera/e/h;

    move-result-object p2

    invoke-virtual {p0, p2}, Lcom/oplus/camera/capmode/BaseMode;->getPictureSize(Lcom/oplus/camera/e/h;)Landroid/util/Size;

    move-result-object p2

    .line 3146
    iget p3, p0, Lcom/oplus/camera/capmode/BaseMode;->mCameraId:I

    invoke-virtual {p0, p3}, Lcom/oplus/camera/capmode/BaseMode;->getProperCameraId(I)I

    move-result p3

    iget-object p5, p0, Lcom/oplus/camera/capmode/BaseMode;->mCameraInterface:Lcom/oplus/camera/capmode/a;

    .line 3147
    invoke-interface {p5}, Lcom/oplus/camera/capmode/a;->u()I

    move-result p5

    .line 3146
    invoke-virtual {p0, p3, p5}, Lcom/oplus/camera/capmode/BaseMode;->getJpegOrientation(II)I

    move-result p3

    rem-int/lit16 p3, p3, 0xb4

    if-nez p3, :cond_2

    .line 3149
    invoke-virtual {p2}, Landroid/util/Size;->getWidth()I

    move-result p3

    .line 3150
    invoke-virtual {p2}, Landroid/util/Size;->getHeight()I

    move-result p2

    goto :goto_0

    .line 3152
    :cond_2
    invoke-virtual {p2}, Landroid/util/Size;->getHeight()I

    move-result p3

    .line 3153
    invoke-virtual {p2}, Landroid/util/Size;->getWidth()I

    move-result p2

    goto :goto_0

    :cond_3
    move v1, p3

    move p3, p2

    move p2, v1

    .line 3157
    :goto_0
    new-instance p5, Lcom/oplus/camera/Storage$CameraPicture;

    invoke-direct {p5}, Lcom/oplus/camera/Storage$CameraPicture;-><init>()V

    .line 3158
    iput p3, p5, Lcom/oplus/camera/Storage$CameraPicture;->o:I

    .line 3159
    iput p2, p5, Lcom/oplus/camera/Storage$CameraPicture;->p:I

    .line 3160
    iput-object p1, p5, Lcom/oplus/camera/Storage$CameraPicture;->e:[B

    .line 3161
    iput-object p4, p5, Lcom/oplus/camera/Storage$CameraPicture;->h:Ljava/lang/String;

    .line 3162
    invoke-virtual {p0}, Lcom/oplus/camera/capmode/BaseMode;->getCameraMode()Ljava/lang/String;

    move-result-object p2

    iput-object p2, p5, Lcom/oplus/camera/Storage$CameraPicture;->i:Ljava/lang/String;

    .line 3163
    invoke-static {p1}, Lcom/oplus/camera/util/Util;->b([B)I

    move-result p2

    iput p2, p5, Lcom/oplus/camera/Storage$CameraPicture;->t:I

    .line 3166
    iget p2, p0, Lcom/oplus/camera/capmode/BaseMode;->mJpgOrientation:I

    iput p2, p5, Lcom/oplus/camera/Storage$CameraPicture;->t:I

    const/4 p2, 0x0

    .line 3167
    iput-object p2, p5, Lcom/oplus/camera/Storage$CameraPicture;->mPath:Ljava/lang/String;

    .line 3168
    iget-boolean p2, p0, Lcom/oplus/camera/capmode/BaseMode;->mbDisplayOnLock:Z

    iput-boolean p2, p5, Lcom/oplus/camera/Storage$CameraPicture;->E:Z

    .line 3169
    iput-wide p8, p5, Lcom/oplus/camera/Storage$CameraPicture;->l:J

    .line 3170
    invoke-virtual {p0}, Lcom/oplus/camera/capmode/BaseMode;->getNeedStoreRawPic()Z

    move-result p2

    iput-boolean p2, p5, Lcom/oplus/camera/Storage$CameraPicture;->w:Z

    .line 3172
    iget-object p2, p0, Lcom/oplus/camera/capmode/BaseMode;->mThumbnailTitle:Ljava/lang/String;

    if-eqz p2, :cond_4

    iget-object p2, p5, Lcom/oplus/camera/Storage$CameraPicture;->h:Ljava/lang/String;

    const-string p3, "raw"

    invoke-virtual {p3, p2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p2

    if-eqz p2, :cond_4

    .line 3173
    iget-object p2, p0, Lcom/oplus/camera/capmode/BaseMode;->mThumbnailTitle:Ljava/lang/String;

    iput-object p2, p5, Lcom/oplus/camera/Storage$CameraPicture;->g:Ljava/lang/String;

    .line 3176
    :cond_4
    iget-object p2, p0, Lcom/oplus/camera/capmode/BaseMode;->mCameraInterface:Lcom/oplus/camera/capmode/a;

    if-eqz p2, :cond_5

    .line 3177
    invoke-interface {p2, p5, p7}, Lcom/oplus/camera/capmode/a;->a(Lcom/oplus/camera/Storage$CameraPicture;Z)V

    .line 3181
    :cond_5
    iget-object p2, p0, Lcom/oplus/camera/capmode/BaseMode;->mCameraInterface:Lcom/oplus/camera/capmode/a;

    if-eqz p2, :cond_6

    .line 3182
    invoke-interface {p2, p1, p6, p10}, Lcom/oplus/camera/capmode/a;->a([BZI)V

    .line 3183
    invoke-virtual {p0, p1, p6}, Lcom/oplus/camera/capmode/BaseMode;->onAfterPictureTaken([BZ)V

    .line 3186
    :cond_6
    iget-boolean p1, p0, Lcom/oplus/camera/capmode/BaseMode;->mbInBurstShotCapturing:Z

    const/4 p2, 0x1

    if-nez p1, :cond_7

    .line 3187
    invoke-virtual {p0, p2}, Lcom/oplus/camera/capmode/BaseMode;->setAllowSwitchMode(Z)V

    :cond_7
    const/4 p1, 0x0

    .line 3190
    iput-boolean p1, p0, Lcom/oplus/camera/capmode/BaseMode;->mbInCapturing:Z

    .line 3191
    iput-boolean p2, p0, Lcom/oplus/camera/capmode/BaseMode;->mbHasClickedFromThird:Z

    .line 3193
    iget-object p3, p0, Lcom/oplus/camera/capmode/BaseMode;->mCameraInterface:Lcom/oplus/camera/capmode/a;

    if-eqz p3, :cond_8

    invoke-interface {p3}, Lcom/oplus/camera/capmode/a;->i()Z

    move-result p3

    if-eqz p3, :cond_8

    .line 3194
    iget-object p3, p0, Lcom/oplus/camera/capmode/BaseMode;->mCameraInterface:Lcom/oplus/camera/capmode/a;

    invoke-interface {p3, p2}, Lcom/oplus/camera/capmode/a;->d(Z)V

    .line 3197
    :cond_8
    iget-object p3, p0, Lcom/oplus/camera/capmode/BaseMode;->mCameraUIInterface:Lcom/oplus/camera/ui/CameraUIInterface;

    if-eqz p3, :cond_9

    .line 3198
    invoke-interface {p3, p2, p2}, Lcom/oplus/camera/ui/CameraUIInterface;->l(ZZ)V

    .line 3200
    iget-object p2, p0, Lcom/oplus/camera/capmode/BaseMode;->mActivity:Landroid/app/Activity;

    if-eqz p2, :cond_9

    .line 3201
    new-instance p3, Lcom/oplus/camera/capmode/-$$Lambda$BaseMode$FR4PEsLfF-CF_kRPXzCtUb8_Zzg;

    invoke-direct {p3, p0}, Lcom/oplus/camera/capmode/-$$Lambda$BaseMode$FR4PEsLfF-CF_kRPXzCtUb8_Zzg;-><init>(Lcom/oplus/camera/capmode/BaseMode;)V

    invoke-virtual {p2, p3}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 3205
    :cond_9
    sget-boolean p2, Lcom/oplus/camera/Camera;->l:Z

    if-nez p2, :cond_a

    sget-boolean p2, Lcom/oplus/camera/Camera;->m:Z

    if-eqz p2, :cond_b

    :cond_a
    iget-boolean p2, p0, Lcom/oplus/camera/capmode/BaseMode;->mbNeedReloadFlashMenu:Z

    if-eqz p2, :cond_b

    iget-object p2, p0, Lcom/oplus/camera/capmode/BaseMode;->mCameraUIInterface:Lcom/oplus/camera/ui/CameraUIInterface;

    if-eqz p2, :cond_b

    if-nez p6, :cond_b

    .line 3209
    iput-boolean p1, p0, Lcom/oplus/camera/capmode/BaseMode;->mbNeedReloadFlashMenu:Z

    const-string p1, "pref_camera_flashmode_key"

    .line 3210
    invoke-interface {p2, p1}, Lcom/oplus/camera/ui/CameraUIInterface;->f(Ljava/lang/String;)V

    .line 3211
    iget-object p1, p0, Lcom/oplus/camera/capmode/BaseMode;->mCameraUIInterface:Lcom/oplus/camera/ui/CameraUIInterface;

    const-string p2, "pref_camera_videoflashmode_key"

    invoke-interface {p1, p2}, Lcom/oplus/camera/ui/CameraUIInterface;->f(Ljava/lang/String;)V

    .line 3214
    :cond_b
    iget-object p1, p0, Lcom/oplus/camera/capmode/BaseMode;->mCameraInterface:Lcom/oplus/camera/capmode/a;

    if-eqz p1, :cond_c

    .line 3215
    invoke-interface {p1}, Lcom/oplus/camera/capmode/a;->e()V

    .line 3218
    :cond_c
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "pictureTakenCallback, mbInCapturing: "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean p2, p0, Lcom/oplus/camera/capmode/BaseMode;->mbInCapturing:Z

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string p2, ", mbNeedReloadFlashMenu: "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean p0, p0, Lcom/oplus/camera/capmode/BaseMode;->mbNeedReloadFlashMenu:Z

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "BaseMode"

    invoke-static {p1, p0}, Lcom/oplus/camera/e;->a(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method protected processFaceCount()V
    .locals 10

    .line 8069
    iget-object v0, p0, Lcom/oplus/camera/capmode/BaseMode;->mCameraInterface:Lcom/oplus/camera/capmode/a;

    if-eqz v0, :cond_2

    iget-object v1, p0, Lcom/oplus/camera/capmode/BaseMode;->mCameraUIInterface:Lcom/oplus/camera/ui/CameraUIInterface;

    if-eqz v1, :cond_2

    .line 8070
    iget v1, p0, Lcom/oplus/camera/capmode/BaseMode;->mFaceCountStatusCount:I

    const/16 v2, 0x1e

    const/4 v3, 0x1

    if-ge v1, v2, :cond_0

    add-int/2addr v1, v3

    .line 8071
    iput v1, p0, Lcom/oplus/camera/capmode/BaseMode;->mFaceCountStatusCount:I

    return-void

    :cond_0
    const/4 v1, 0x0

    .line 8076
    iput v1, p0, Lcom/oplus/camera/capmode/BaseMode;->mFaceCountStatusCount:I

    .line 8077
    invoke-interface {v0}, Lcom/oplus/camera/capmode/a;->aj()I

    move-result v0

    if-le v0, v3, :cond_1

    .line 8080
    iget-object v4, p0, Lcom/oplus/camera/capmode/BaseMode;->mCameraUIInterface:Lcom/oplus/camera/ui/CameraUIInterface;

    const v5, 0x7f100296

    const/4 v6, -0x1

    const/4 v7, 0x1

    const/4 v8, 0x0

    const/4 v9, 0x0

    invoke-interface/range {v4 .. v9}, Lcom/oplus/camera/ui/CameraUIInterface;->a(IIZZZ)V

    goto :goto_0

    .line 8082
    :cond_1
    iget-object p0, p0, Lcom/oplus/camera/capmode/BaseMode;->mCameraUIInterface:Lcom/oplus/camera/ui/CameraUIInterface;

    const v0, 0x7f100296

    invoke-interface {p0, v0}, Lcom/oplus/camera/ui/CameraUIInterface;->a(I)V

    :cond_2
    :goto_0
    return-void
.end method

.method public final removeSettingMenuOption([Ljava/lang/String;)V
    .locals 10

    if-nez p1, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x0

    move v1, v0

    .line 3859
    :goto_0
    array-length v2, p1

    if-ge v1, v2, :cond_4

    .line 3860
    aget-object v2, p1, v1

    iget v3, p0, Lcom/oplus/camera/capmode/BaseMode;->mCameraId:I

    invoke-virtual {p0, v2, v3}, Lcom/oplus/camera/capmode/BaseMode;->onGetSupportSettingList(Ljava/lang/String;I)Ljava/util/List;

    move-result-object v2

    if-eqz v2, :cond_3

    .line 3862
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v3

    const/4 v4, 0x2

    if-lt v3, v4, :cond_3

    .line 3863
    aget-object v3, p1, v1

    iget v4, p0, Lcom/oplus/camera/capmode/BaseMode;->mCameraId:I

    invoke-virtual {p0, v3, v4}, Lcom/oplus/camera/capmode/BaseMode;->getSupportSettingList(Ljava/lang/String;I)Ljava/util/List;

    move-result-object v3

    if-eqz v3, :cond_3

    move v4, v0

    .line 3866
    :goto_1
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v5

    if-ge v4, v5, :cond_3

    .line 3867
    invoke-interface {v3, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    .line 3869
    invoke-interface {v2, v5}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_2

    .line 3870
    aget-object v6, p1, v1

    const-string v7, "pref_camera_photo_ratio_key"

    invoke-virtual {v7, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_1

    iget-object v6, p0, Lcom/oplus/camera/capmode/BaseMode;->mPreferences:Landroid/content/SharedPreferences;

    iget-object v8, p0, Lcom/oplus/camera/capmode/BaseMode;->mActivity:Landroid/app/Activity;

    const v9, 0x7f1002be

    .line 3872
    invoke-virtual {v8, v9}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v8

    .line 3871
    invoke-interface {v6, v7, v8}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_1

    .line 3873
    iget-object v6, p0, Lcom/oplus/camera/capmode/BaseMode;->mPreferences:Landroid/content/SharedPreferences;

    invoke-interface {v6}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v6

    .line 3874
    invoke-interface {v3, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/String;

    invoke-interface {v6, v7, v8}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 3875
    invoke-interface {v6}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 3878
    :cond_1
    iget-object v6, p0, Lcom/oplus/camera/capmode/BaseMode;->mCameraUIInterface:Lcom/oplus/camera/ui/CameraUIInterface;

    aget-object v7, p1, v1

    const/4 v8, 0x1

    new-array v8, v8, [Ljava/lang/String;

    aput-object v5, v8, v0

    invoke-interface {v6, v7, v8}, Lcom/oplus/camera/ui/CameraUIInterface;->b(Ljava/lang/String;[Ljava/lang/String;)V

    :cond_2
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    :cond_3
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_4
    return-void
.end method

.method public reportIntelligentDragViewMoveToDcs(IIZI)V
    .locals 0

    return-void
.end method

.method public resetAeLockAfterCaptured()V
    .locals 3

    .line 643
    iget-boolean v0, p0, Lcom/oplus/camera/capmode/BaseMode;->mbResetAeLockAfterCaptured:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/oplus/camera/capmode/BaseMode;->mOneCamera:Lcom/oplus/camera/e/d;

    if-eqz v0, :cond_0

    const/4 v1, 0x0

    .line 644
    iput-boolean v1, p0, Lcom/oplus/camera/capmode/BaseMode;->mbResetAeLockAfterCaptured:Z

    .line 645
    iget-object v2, p0, Lcom/oplus/camera/capmode/BaseMode;->mCameraInterface:Lcom/oplus/camera/capmode/a;

    invoke-interface {v2}, Lcom/oplus/camera/capmode/a;->z()Z

    move-result v2

    invoke-interface {v0, v2, v1}, Lcom/oplus/camera/e/d;->b(ZZ)V

    .line 647
    iget-object v0, p0, Lcom/oplus/camera/capmode/BaseMode;->mCameraInterface:Lcom/oplus/camera/capmode/a;

    invoke-interface {v0}, Lcom/oplus/camera/capmode/a;->i()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 648
    iget-object p0, p0, Lcom/oplus/camera/capmode/BaseMode;->mOneCamera:Lcom/oplus/camera/e/d;

    const/4 v0, 0x0

    invoke-interface {p0, v0}, Lcom/oplus/camera/e/d;->a(Lcom/oplus/camera/e/d$c;)V

    :cond_0
    return-void
.end method

.method public resetAwbLockAfterCaptured()V
    .locals 3

    .line 654
    iget-boolean v0, p0, Lcom/oplus/camera/capmode/BaseMode;->mbResetAwbLockAfterCaptured:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/oplus/camera/capmode/BaseMode;->mOneCamera:Lcom/oplus/camera/e/d;

    if-eqz v0, :cond_0

    const/4 v1, 0x0

    .line 655
    iput-boolean v1, p0, Lcom/oplus/camera/capmode/BaseMode;->mbResetAwbLockAfterCaptured:Z

    .line 656
    sget-object v2, Landroid/hardware/camera2/CaptureRequest;->CONTROL_AWB_LOCK:Landroid/hardware/camera2/CaptureRequest$Key;

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-interface {v0, v2, v1}, Lcom/oplus/camera/e/d;->a(Landroid/hardware/camera2/CaptureRequest$Key;Ljava/lang/Object;)V

    .line 658
    iget-object v0, p0, Lcom/oplus/camera/capmode/BaseMode;->mCameraInterface:Lcom/oplus/camera/capmode/a;

    invoke-interface {v0}, Lcom/oplus/camera/capmode/a;->i()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 659
    iget-object p0, p0, Lcom/oplus/camera/capmode/BaseMode;->mOneCamera:Lcom/oplus/camera/e/d;

    const/4 v0, 0x0

    invoke-interface {p0, v0}, Lcom/oplus/camera/e/d;->a(Lcom/oplus/camera/e/d$c;)V

    :cond_0
    return-void
.end method

.method public resetCaptureButton()V
    .locals 0

    return-void
.end method

.method public resetFaceBeautyValues()V
    .locals 5

    .line 4806
    invoke-virtual {p0}, Lcom/oplus/camera/capmode/BaseMode;->getCustomBeautyKeys()[Ljava/lang/String;

    move-result-object v0

    .line 4808
    iget-object v1, p0, Lcom/oplus/camera/capmode/BaseMode;->mPreferences:Landroid/content/SharedPreferences;

    if-eqz v1, :cond_1

    if-eqz v0, :cond_1

    .line 4809
    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    const/4 v2, 0x0

    .line 4811
    :goto_0
    array-length v3, v0

    if-ge v2, v3, :cond_0

    .line 4812
    aget-object v3, v0, v2

    invoke-virtual {p0}, Lcom/oplus/camera/capmode/BaseMode;->getDefaultCustomBeautyValues()[I

    move-result-object v4

    aget v4, v4, v2

    invoke-interface {v1, v3, v4}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 4815
    :cond_0
    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 4818
    :cond_1
    invoke-virtual {p0}, Lcom/oplus/camera/capmode/BaseMode;->getCustomBeautyValues()[I

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/oplus/camera/capmode/BaseMode;->updateCustomBeautyValues([I)V

    .line 4820
    iget-object v0, p0, Lcom/oplus/camera/capmode/BaseMode;->mOneCamera:Lcom/oplus/camera/e/d;

    if-eqz v0, :cond_2

    const/4 v1, 0x0

    .line 4821
    invoke-interface {v0, v1}, Lcom/oplus/camera/e/d;->a(Lcom/oplus/camera/e/d$c;)V

    .line 4824
    :cond_2
    iget-object v0, p0, Lcom/oplus/camera/capmode/BaseMode;->mPreviewEffectProcess:Lcom/oplus/camera/ui/preview/a/t;

    if-eqz v0, :cond_3

    .line 4825
    invoke-virtual {p0}, Lcom/oplus/camera/capmode/BaseMode;->getCustomBeautyValues()[I

    move-result-object p0

    invoke-interface {v0, p0}, Lcom/oplus/camera/ui/preview/a/t;->a([I)V

    :cond_3
    return-void
.end method

.method public resetFiltersList()V
    .locals 0

    return-void
.end method

.method public resetHdrAndFlashModeAfterCapture()V
    .locals 4

    const-string v0, "pref_camera_flashmode_key"

    .line 4539
    invoke-virtual {p0, v0}, Lcom/oplus/camera/capmode/BaseMode;->getSupportFunction(Ljava/lang/String;)Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_1

    .line 4540
    invoke-virtual {p0}, Lcom/oplus/camera/capmode/BaseMode;->getFlashMode()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/oplus/camera/capmode/BaseMode;->mFlashMode:Ljava/lang/String;

    .line 4542
    iget-object v1, p0, Lcom/oplus/camera/capmode/BaseMode;->mFlashMode:Ljava/lang/String;

    const-string v3, "on"

    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/oplus/camera/capmode/BaseMode;->mFlashMode:Ljava/lang/String;

    const-string v3, "auto"

    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 4543
    :cond_0
    iget-object v1, p0, Lcom/oplus/camera/capmode/BaseMode;->mCameraUIInterface:Lcom/oplus/camera/ui/CameraUIInterface;

    invoke-interface {v1, v0, v2}, Lcom/oplus/camera/ui/CameraUIInterface;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 4544
    iget-object v0, p0, Lcom/oplus/camera/capmode/BaseMode;->mCameraInterface:Lcom/oplus/camera/capmode/a;

    invoke-interface {v0}, Lcom/oplus/camera/capmode/a;->o()V

    .line 4546
    iget-object v0, p0, Lcom/oplus/camera/capmode/BaseMode;->mOneCamera:Lcom/oplus/camera/e/d;

    if-eqz v0, :cond_1

    .line 4547
    iget-object v1, p0, Lcom/oplus/camera/capmode/BaseMode;->mFlashMode:Ljava/lang/String;

    invoke-interface {v0, v1}, Lcom/oplus/camera/e/d;->b(Ljava/lang/String;)V

    .line 4548
    iget-object v0, p0, Lcom/oplus/camera/capmode/BaseMode;->mOneCamera:Lcom/oplus/camera/e/d;

    invoke-interface {v0, v2}, Lcom/oplus/camera/e/d;->a(Lcom/oplus/camera/e/d$c;)V

    :cond_1
    const-string v0, "pref_camera_hdr_mode_key"

    .line 4553
    invoke-virtual {p0, v0}, Lcom/oplus/camera/capmode/BaseMode;->getSupportFunction(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 4554
    iget-object v1, p0, Lcom/oplus/camera/capmode/BaseMode;->mPreferences:Landroid/content/SharedPreferences;

    iget v3, p0, Lcom/oplus/camera/capmode/BaseMode;->mCameraId:I

    .line 4555
    invoke-static {v0, v3}, Lcom/oplus/camera/aps/config/CameraConfig;->getOptionKeyDefaultValue(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v3

    .line 4554
    invoke-interface {v1, v0, v3}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/oplus/camera/capmode/BaseMode;->mHDRMode:Ljava/lang/String;

    .line 4557
    iget-object v1, p0, Lcom/oplus/camera/capmode/BaseMode;->mHDRMode:Ljava/lang/String;

    const-string v3, "off"

    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    .line 4558
    iget-object v1, p0, Lcom/oplus/camera/capmode/BaseMode;->mCameraUIInterface:Lcom/oplus/camera/ui/CameraUIInterface;

    invoke-interface {v1, v0, v2}, Lcom/oplus/camera/ui/CameraUIInterface;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 4559
    iget-object v0, p0, Lcom/oplus/camera/capmode/BaseMode;->mHDRMode:Ljava/lang/String;

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Lcom/oplus/camera/capmode/BaseMode;->updateHDRMode(Ljava/lang/String;Z)V

    :cond_2
    return-void
.end method

.method public resetMetadataBokehCode()V
    .locals 0

    return-void
.end method

.method public resetMonoFilter()V
    .locals 3

    .line 8100
    invoke-virtual {p0}, Lcom/oplus/camera/capmode/BaseMode;->getCurrFilterIndex()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/oplus/camera/capmode/BaseMode;->isMonoIndex(I)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 8101
    iget-object v0, p0, Lcom/oplus/camera/capmode/BaseMode;->mCameraUIInterface:Lcom/oplus/camera/ui/CameraUIInterface;

    invoke-interface {v0}, Lcom/oplus/camera/ui/CameraUIInterface;->A()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 8102
    iget-object v0, p0, Lcom/oplus/camera/capmode/BaseMode;->mCameraUIInterface:Lcom/oplus/camera/ui/CameraUIInterface;

    const/4 v1, 0x1

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Lcom/oplus/camera/ui/CameraUIInterface;->m(ZZ)V

    .line 8105
    :cond_0
    invoke-virtual {p0}, Lcom/oplus/camera/capmode/BaseMode;->isFilterEffectOpen()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 8106
    iget-object v0, p0, Lcom/oplus/camera/capmode/BaseMode;->mPreferences:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-virtual {p0}, Lcom/oplus/camera/capmode/BaseMode;->getFilterEffectMenuPreferenceKey()Ljava/lang/String;

    move-result-object p0

    sget v1, Lcom/oplus/camera/ui/preview/a/j;->a:I

    invoke-interface {v0, p0, v1}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    move-result-object p0

    invoke-interface {p0}, Landroid/content/SharedPreferences$Editor;->apply()V

    :cond_1
    return-void
.end method

.method protected resetWhenCaptureFail()V
    .locals 0

    return-void
.end method

.method public restoreDefaultMode(Z)V
    .locals 0

    return-void
.end method

.method protected restoreEffectAfterBurstShot()V
    .locals 0

    return-void
.end method

.method public restoreProPreference()V
    .locals 6

    .line 3887
    invoke-virtual {p0}, Lcom/oplus/camera/capmode/BaseMode;->isNightProModeSupport()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/oplus/camera/capmode/BaseMode;->isProModeSupport()Z

    move-result v0

    if-eqz v0, :cond_2

    :cond_0
    iget-object v0, p0, Lcom/oplus/camera/capmode/BaseMode;->mActivity:Landroid/app/Activity;

    if-eqz v0, :cond_2

    iget-object v1, p0, Lcom/oplus/camera/capmode/BaseMode;->mPreferences:Landroid/content/SharedPreferences;

    if-nez v1, :cond_1

    goto :goto_0

    .line 3891
    :cond_1
    invoke-virtual {v0}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f10021d

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 3892
    iget-object v1, p0, Lcom/oplus/camera/capmode/BaseMode;->mActivity:Landroid/app/Activity;

    invoke-virtual {v1}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f10013e

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 3893
    iget-object v2, p0, Lcom/oplus/camera/capmode/BaseMode;->mActivity:Landroid/app/Activity;

    invoke-virtual {v2}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f10050a

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 3894
    iget-object v3, p0, Lcom/oplus/camera/capmode/BaseMode;->mActivity:Landroid/app/Activity;

    invoke-virtual {v3}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f1001c5

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    .line 3895
    iget-object v4, p0, Lcom/oplus/camera/capmode/BaseMode;->mActivity:Landroid/app/Activity;

    invoke-virtual {v4}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f10013b

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    .line 3897
    iget-object p0, p0, Lcom/oplus/camera/capmode/BaseMode;->mPreferences:Landroid/content/SharedPreferences;

    invoke-interface {p0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object p0

    const-string v5, "pref_professional_iso_key"

    invoke-interface {p0, v5, v0}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object p0

    const-string v0, "pref_professional_exposure_time_key"

    .line 3898
    invoke-interface {p0, v0, v1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object p0

    const-string v0, "pref_professional_whitebalance_key"

    .line 3899
    invoke-interface {p0, v0, v2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object p0

    const-string v0, "pref_professional_focus_mode_key"

    .line 3900
    invoke-interface {p0, v0, v3}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object p0

    const-string v0, "pref_professional_exposure_compensation_key"

    .line 3901
    invoke-interface {p0, v0, v4}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object p0

    .line 3902
    invoke-interface {p0}, Landroid/content/SharedPreferences$Editor;->apply()V

    :cond_2
    :goto_0
    return-void
.end method

.method public final restoreSettingMenuOption([Ljava/lang/String;)V
    .locals 9

    if-nez p1, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x0

    move v1, v0

    .line 3835
    :goto_0
    array-length v2, p1

    if-ge v1, v2, :cond_3

    .line 3836
    aget-object v2, p1, v1

    iget v3, p0, Lcom/oplus/camera/capmode/BaseMode;->mCameraId:I

    invoke-virtual {p0, v2, v3}, Lcom/oplus/camera/capmode/BaseMode;->onGetSupportSettingList(Ljava/lang/String;I)Ljava/util/List;

    move-result-object v2

    if-eqz v2, :cond_2

    .line 3838
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v3

    const/4 v4, 0x2

    if-lt v3, v4, :cond_2

    .line 3839
    aget-object v3, p1, v1

    iget v4, p0, Lcom/oplus/camera/capmode/BaseMode;->mCameraId:I

    invoke-virtual {p0, v3, v4}, Lcom/oplus/camera/capmode/BaseMode;->getSupportSettingList(Ljava/lang/String;I)Ljava/util/List;

    move-result-object v3

    if-eqz v3, :cond_2

    move v4, v0

    .line 3842
    :goto_1
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v5

    if-ge v4, v5, :cond_2

    .line 3843
    invoke-interface {v3, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    .line 3845
    invoke-interface {v2, v5}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_1

    .line 3846
    iget-object v6, p0, Lcom/oplus/camera/capmode/BaseMode;->mCameraUIInterface:Lcom/oplus/camera/ui/CameraUIInterface;

    aget-object v7, p1, v1

    const/4 v8, 0x1

    new-array v8, v8, [Ljava/lang/String;

    aput-object v5, v8, v0

    invoke-interface {v6, v7, v8}, Lcom/oplus/camera/ui/CameraUIInterface;->a(Ljava/lang/String;[Ljava/lang/String;)V

    :cond_1
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_3
    return-void
.end method

.method public final resume(Z)V
    .locals 3

    const/4 v0, 0x0

    .line 1854
    iput-boolean v0, p0, Lcom/oplus/camera/capmode/BaseMode;->mbShowPostCaptureAlert:Z

    .line 1855
    iput-boolean v0, p0, Lcom/oplus/camera/capmode/BaseMode;->mbPaused:Z

    .line 1856
    sput-boolean v0, Lcom/oplus/camera/capmode/BaseMode;->sbFrontDirtyLensToastShown:Z

    .line 1857
    sput-boolean v0, Lcom/oplus/camera/capmode/BaseMode;->sbRearDirtyLensToastShown:Z

    .line 1858
    iput-boolean v0, p0, Lcom/oplus/camera/capmode/BaseMode;->mbDestroyed:Z

    .line 1860
    invoke-virtual {p0}, Lcom/oplus/camera/capmode/BaseMode;->setForceMode()V

    .line 1861
    invoke-virtual {p0, p1}, Lcom/oplus/camera/capmode/BaseMode;->onResume(Z)V

    const-string p1, "pref_camera_hdr_mode_key"

    .line 1863
    invoke-virtual {p0, p1}, Lcom/oplus/camera/capmode/BaseMode;->getSupportFunction(Ljava/lang/String;)Z

    move-result p1

    const/4 v1, 0x1

    if-eqz p1, :cond_0

    .line 1864
    invoke-direct {p0, v1}, Lcom/oplus/camera/capmode/BaseMode;->setHDRMenuVisibility(Z)V

    goto :goto_0

    .line 1866
    :cond_0
    invoke-direct {p0, v0}, Lcom/oplus/camera/capmode/BaseMode;->setHDRMenuVisibility(Z)V

    :goto_0
    const-string p1, "com.oplus.feature.explorer.support"

    .line 1869
    invoke-static {p1}, Lcom/oplus/camera/aps/config/CameraConfig;->getConfigBooleanValue(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_1

    iget-object p1, p0, Lcom/oplus/camera/capmode/BaseMode;->mPreferences:Landroid/content/SharedPreferences;

    const-string v2, "key_explorer_chip_state"

    .line 1870
    invoke-interface {p1, v2, v1}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result p1

    if-nez p1, :cond_1

    .line 1871
    iget-object p0, p0, Lcom/oplus/camera/capmode/BaseMode;->mCameraUIInterface:Lcom/oplus/camera/ui/CameraUIInterface;

    const p1, 0x7f10059b

    const/16 v1, 0x7d0

    new-array v0, v0, [Ljava/lang/Object;

    invoke-interface {p0, p1, v1, v0}, Lcom/oplus/camera/ui/CameraUIInterface;->a(II[Ljava/lang/Object;)V

    :cond_1
    return-void
.end method

.method public revertOp()V
    .locals 0

    return-void
.end method

.method protected saveAndClearEffectBeforeBurstShot()V
    .locals 0

    return-void
.end method

.method protected sendBoradCastNotifyMicroscopeState(Z)V
    .locals 1

    if-eqz p1, :cond_0

    .line 7935
    new-instance p1, Landroid/content/Intent;

    const-string v0, "oplus.camera.microscope.start"

    invoke-direct {p1, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    goto :goto_0

    .line 7936
    :cond_0
    new-instance p1, Landroid/content/Intent;

    const-string v0, "oplus.camera.microscope.stop"

    invoke-direct {p1, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 7937
    :goto_0
    iget-object p0, p0, Lcom/oplus/camera/capmode/BaseMode;->mActivity:Landroid/app/Activity;

    const-string v0, "com.oplus.permission.safe.PHONE"

    invoke-virtual {p0, p1, v0}, Landroid/app/Activity;->sendBroadcast(Landroid/content/Intent;Ljava/lang/String;)V

    return-void
.end method

.method public sendDrawerSettingGuideAniDelayMessage()V
    .locals 3

    .line 740
    iget-object v0, p0, Lcom/oplus/camera/capmode/BaseMode;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x7

    invoke-virtual {v0, v1}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    .line 741
    iget-object p0, p0, Lcom/oplus/camera/capmode/BaseMode;->mHandler:Landroid/os/Handler;

    const-wide/16 v1, 0x3e8

    invoke-virtual {p0, v0, v1, v2}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    return-void
.end method

.method public setAllowSwitchMode(Z)V
    .locals 2

    .line 4483
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "setAllowSwitchMode: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/oplus/camera/capmode/BaseMode;->mbAllowSwitchMode:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, " -> "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "BaseMode"

    invoke-static {v1, v0}, Lcom/oplus/camera/e;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 4485
    iput-boolean p1, p0, Lcom/oplus/camera/capmode/BaseMode;->mbAllowSwitchMode:Z

    return-void
.end method

.method public setApsService(Lcom/oplus/camera/aps/service/ApsService;)V
    .locals 0

    .line 7642
    iput-object p1, p0, Lcom/oplus/camera/capmode/BaseMode;->mApsService:Lcom/oplus/camera/aps/service/ApsService;

    return-void
.end method

.method public setAutoFlash(Z)V
    .locals 1

    .line 5304
    iget-boolean v0, p0, Lcom/oplus/camera/capmode/BaseMode;->mbAutoFlash:Z

    if-eq v0, p1, :cond_0

    .line 5305
    iput-boolean p1, p0, Lcom/oplus/camera/capmode/BaseMode;->mbAutoFlash:Z

    .line 5307
    iget-object p0, p0, Lcom/oplus/camera/capmode/BaseMode;->mOneCamera:Lcom/oplus/camera/e/d;

    if-eqz p0, :cond_0

    .line 5308
    invoke-interface {p0, p1}, Lcom/oplus/camera/e/d;->d(Z)V

    :cond_0
    return-void
.end method

.method protected setBeauty3DState(I)V
    .locals 0

    return-void
.end method

.method protected setBlurIndex(I)V
    .locals 3

    .line 7312
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "setBlurIndex, index: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "BaseMode"

    invoke-static {v1, v0}, Lcom/oplus/camera/e;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 7314
    invoke-virtual {p0, p1}, Lcom/oplus/camera/capmode/BaseMode;->getBlurValue(I)F

    move-result v0

    const-string v1, "func_bokeh"

    .line 7316
    invoke-virtual {p0, v1}, Lcom/oplus/camera/capmode/BaseMode;->getSupportFunction(Ljava/lang/String;)Z

    move-result v1

    const-string v2, "pref_portrait_blur_menu_index"

    if-eqz v1, :cond_1

    .line 7317
    iget-object v1, p0, Lcom/oplus/camera/capmode/BaseMode;->mOneCamera:Lcom/oplus/camera/e/d;

    if-eqz v1, :cond_0

    .line 7318
    invoke-interface {v1, v0}, Lcom/oplus/camera/e/d;->a(F)V

    .line 7319
    iget-object v0, p0, Lcom/oplus/camera/capmode/BaseMode;->mOneCamera:Lcom/oplus/camera/e/d;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Lcom/oplus/camera/e/d;->a(Lcom/oplus/camera/e/d$c;)V

    .line 7322
    :cond_0
    iget-object p0, p0, Lcom/oplus/camera/capmode/BaseMode;->mPreferences:Landroid/content/SharedPreferences;

    invoke-interface {p0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object p0

    invoke-interface {p0, v2, p1}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    move-result-object p0

    invoke-interface {p0}, Landroid/content/SharedPreferences$Editor;->apply()V

    goto/16 :goto_2

    :cond_1
    const-string v1, "func_face_blur"

    .line 7323
    invoke-virtual {p0, v1}, Lcom/oplus/camera/capmode/BaseMode;->getSupportFunction(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 7324
    iget-object v1, p0, Lcom/oplus/camera/capmode/BaseMode;->mPreviewEffectProcess:Lcom/oplus/camera/ui/preview/a/t;

    if-eqz v1, :cond_2

    .line 7325
    invoke-interface {v1, v0}, Lcom/oplus/camera/ui/preview/a/t;->a(F)V

    .line 7328
    :cond_2
    iget-object p0, p0, Lcom/oplus/camera/capmode/BaseMode;->mPreferences:Landroid/content/SharedPreferences;

    invoke-interface {p0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object p0

    invoke-interface {p0, v2, p1}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    move-result-object p0

    invoke-interface {p0}, Landroid/content/SharedPreferences$Editor;->apply()V

    goto :goto_2

    .line 7329
    :cond_3
    invoke-virtual {p0}, Lcom/oplus/camera/capmode/BaseMode;->isTiltShiftOpen()Z

    move-result v1

    if-eqz v1, :cond_4

    .line 7330
    iget-object v0, p0, Lcom/oplus/camera/capmode/BaseMode;->mPreferences:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "pref_tilt_shift_blur_menu_index"

    .line 7331
    invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 7332
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 7334
    invoke-virtual {p0}, Lcom/oplus/camera/capmode/BaseMode;->setTiltShiftPreview()V

    goto :goto_2

    :cond_4
    const-string v1, "func_video_blur_process"

    .line 7335
    invoke-virtual {p0, v1}, Lcom/oplus/camera/capmode/BaseMode;->getSupportFunction(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_9

    .line 7336
    iget-object v1, p0, Lcom/oplus/camera/capmode/BaseMode;->mPreviewEffectProcess:Lcom/oplus/camera/ui/preview/a/t;

    if-eqz v1, :cond_5

    .line 7337
    invoke-interface {v1, v0}, Lcom/oplus/camera/ui/preview/a/t;->b(F)V

    .line 7340
    :cond_5
    iget-object v0, p0, Lcom/oplus/camera/capmode/BaseMode;->mPreferences:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "pref_video_blur_menu_index"

    .line 7341
    invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    const-string v1, "pref_video_blur_menu"

    if-nez p1, :cond_6

    const-string v2, "off"

    .line 7344
    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    goto :goto_0

    :cond_6
    const-string v2, "on"

    .line 7346
    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    :goto_0
    const-string v2, "func_sat_camera"

    .line 7349
    invoke-virtual {p0, v2}, Lcom/oplus/camera/capmode/BaseMode;->getSupportFunction(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_8

    if-eqz p1, :cond_7

    const/4 p1, 0x1

    goto :goto_1

    :cond_7
    const/4 p1, 0x0

    :goto_1
    const-string v2, "pref_video_blur_menu_state"

    .line 7350
    invoke-interface {v0, v2, p1}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 7353
    :cond_8
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 7354
    iget-object p0, p0, Lcom/oplus/camera/capmode/BaseMode;->mCameraUIInterface:Lcom/oplus/camera/ui/CameraUIInterface;

    invoke-interface {p0, v1}, Lcom/oplus/camera/ui/CameraUIInterface;->f(Ljava/lang/String;)V

    :cond_9
    :goto_2
    return-void
.end method

.method public setBurstShotCapturing(Z)V
    .locals 2

    .line 4477
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "setInBurstShotCapturing :"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/oplus/camera/capmode/BaseMode;->mbInBurstShotCapturing:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, " -> "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "BaseMode"

    invoke-static {v1, v0}, Lcom/oplus/camera/e;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 4479
    iput-boolean p1, p0, Lcom/oplus/camera/capmode/BaseMode;->mbInBurstShotCapturing:Z

    return-void
.end method

.method public setCachePreviewStart(Z)V
    .locals 0

    .line 1184
    iget-object p0, p0, Lcom/oplus/camera/capmode/BaseMode;->mCameraUIInterface:Lcom/oplus/camera/ui/CameraUIInterface;

    invoke-interface {p0, p1}, Lcom/oplus/camera/ui/CameraUIInterface;->o(Z)V

    return-void
.end method

.method public setCameraId(I)V
    .locals 0

    .line 3757
    iput p1, p0, Lcom/oplus/camera/capmode/BaseMode;->mCameraId:I

    .line 3758
    iget p1, p0, Lcom/oplus/camera/capmode/BaseMode;->mCameraId:I

    invoke-static {p1}, Lcom/oplus/camera/e/a;->a(I)Z

    move-result p1

    iput-boolean p1, p0, Lcom/oplus/camera/capmode/BaseMode;->mbFrontCamera:Z

    return-void
.end method

.method protected setCapturePreviewDataState(I)V
    .locals 4

    .line 1188
    iget-object v0, p0, Lcom/oplus/camera/capmode/BaseMode;->mCapturePreviewDataStateLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    const-string v1, "BaseMode"

    .line 1189
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "setCapturePreviewDataState: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, p0, Lcom/oplus/camera/capmode/BaseMode;->mCapturePreviewDataState:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, " -> "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/oplus/camera/e;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 1191
    iput p1, p0, Lcom/oplus/camera/capmode/BaseMode;->mCapturePreviewDataState:I

    .line 1192
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public setCapturePreviewDataStateIdle()V
    .locals 1

    const/4 v0, 0x0

    .line 1180
    invoke-virtual {p0, v0}, Lcom/oplus/camera/capmode/BaseMode;->setCapturePreviewDataState(I)V

    return-void
.end method

.method protected setCaptureRequestPictureSizeScale()V
    .locals 1

    .line 1202
    iget-object v0, p0, Lcom/oplus/camera/capmode/BaseMode;->mOneCamera:Lcom/oplus/camera/e/d;

    if-eqz v0, :cond_1

    const-string v0, "aps_algo_superphoto"

    .line 1203
    invoke-virtual {p0, v0}, Lcom/oplus/camera/capmode/BaseMode;->isApsDecisionAlgoOpen(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/oplus/camera/capmode/BaseMode;->mbBurstShot:Z

    if-nez v0, :cond_0

    .line 1204
    iget-object p0, p0, Lcom/oplus/camera/capmode/BaseMode;->mOneCamera:Lcom/oplus/camera/e/d;

    const/4 v0, 0x1

    invoke-interface {p0, v0}, Lcom/oplus/camera/e/d;->g(I)V

    goto :goto_0

    .line 1206
    :cond_0
    iget-object p0, p0, Lcom/oplus/camera/capmode/BaseMode;->mOneCamera:Lcom/oplus/camera/e/d;

    const/4 v0, 0x0

    invoke-interface {p0, v0}, Lcom/oplus/camera/e/d;->g(I)V

    :cond_1
    :goto_0
    return-void
.end method

.method public setConfigureParameter(Lcom/oplus/ocs/camera/CameraDeviceConfig$Builder;)V
    .locals 5

    .line 7049
    invoke-virtual {p0}, Lcom/oplus/camera/capmode/BaseMode;->checkFunction()V

    .line 7050
    sget-object v0, Lcom/oplus/ocs/camera/CameraParameter;->ANTI_BANDING_ENABLE:Lcom/oplus/ocs/camera/CameraParameter$ConfigureKey;

    invoke-virtual {p0}, Lcom/oplus/camera/capmode/BaseMode;->isAntibandingEnable()Z

    move-result v1

    const-string v2, "on"

    if-eqz v1, :cond_0

    move-object v1, v2

    goto :goto_0

    :cond_0
    const-string v1, "off"

    :goto_0
    invoke-virtual {p1, v0, v1}, Lcom/oplus/ocs/camera/CameraDeviceConfig$Builder;->setParameter(Lcom/oplus/ocs/camera/CameraParameter$ConfigureKey;Ljava/lang/Object;)Lcom/oplus/ocs/camera/CameraDeviceConfig$Builder;

    .line 7052
    sget-object v0, Lcom/oplus/ocs/camera/CameraParameter;->QUICK_JPEG_SWITCH:Lcom/oplus/ocs/camera/CameraParameter$ConfigureKey;

    const-string v1, "com.oplus.quick.jpeg.support"

    .line 7053
    invoke-static {v1}, Lcom/oplus/camera/aps/config/CameraConfig;->getConfigBooleanValue(Ljava/lang/String;)Z

    move-result v1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    .line 7052
    invoke-virtual {p1, v0, v1}, Lcom/oplus/ocs/camera/CameraDeviceConfig$Builder;->setParameter(Lcom/oplus/ocs/camera/CameraParameter$ConfigureKey;Ljava/lang/Object;)Lcom/oplus/ocs/camera/CameraDeviceConfig$Builder;

    .line 7055
    invoke-virtual {p0}, Lcom/oplus/camera/capmode/BaseMode;->isMirrorEnable()Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/oplus/camera/capmode/BaseMode;->mCameraUIInterface:Lcom/oplus/camera/ui/CameraUIInterface;

    invoke-interface {v0}, Lcom/oplus/camera/ui/CameraUIInterface;->e()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 7056
    :cond_1
    iget-object v0, p0, Lcom/oplus/camera/capmode/BaseMode;->mPreferences:Landroid/content/SharedPreferences;

    iget-object v1, p0, Lcom/oplus/camera/capmode/BaseMode;->mActivity:Landroid/app/Activity;

    const v3, 0x7f10023d

    .line 7057
    invoke-virtual {v1, v3}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v1

    const-string v3, "pref_mirror_key"

    .line 7056
    invoke-interface {v0, v3, v1}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 7058
    sget-object v1, Lcom/oplus/ocs/camera/CameraParameter;->MIRROR_ENABLE:Lcom/oplus/ocs/camera/CameraParameter$ConfigureKey;

    invoke-virtual {p1, v1, v0}, Lcom/oplus/ocs/camera/CameraDeviceConfig$Builder;->setParameter(Lcom/oplus/ocs/camera/CameraParameter$ConfigureKey;Ljava/lang/Object;)Lcom/oplus/ocs/camera/CameraDeviceConfig$Builder;

    :cond_2
    const-string v0, "com.oplus.feature.explorer.support"

    .line 7061
    invoke-static {v0}, Lcom/oplus/camera/aps/config/CameraConfig;->getConfigBooleanValue(Ljava/lang/String;)Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_3

    .line 7062
    sget-object v0, Lcom/oplus/ocs/camera/CameraParameter;->KEY_EXPLORER_CHIP_STATE:Lcom/oplus/ocs/camera/CameraParameter$ConfigureKey;

    iget-object v3, p0, Lcom/oplus/camera/capmode/BaseMode;->mPreferences:Landroid/content/SharedPreferences;

    const-string v4, "key_explorer_chip_state"

    .line 7063
    invoke-interface {v3, v4, v1}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    .line 7062
    invoke-virtual {p1, v0, v3}, Lcom/oplus/ocs/camera/CameraDeviceConfig$Builder;->setParameter(Lcom/oplus/ocs/camera/CameraParameter$ConfigureKey;Ljava/lang/Object;)Lcom/oplus/ocs/camera/CameraDeviceConfig$Builder;

    .line 7066
    :cond_3
    invoke-virtual {p0}, Lcom/oplus/camera/capmode/BaseMode;->is10bitsHeicEncodeEnable()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 7067
    sget-object v0, Lcom/oplus/ocs/camera/CameraParameter;->PHOTO_10BIT_ENABLE:Lcom/oplus/ocs/camera/CameraParameter$ConfigureKey;

    invoke-virtual {p1, v0, v2}, Lcom/oplus/ocs/camera/CameraDeviceConfig$Builder;->setParameter(Lcom/oplus/ocs/camera/CameraParameter$ConfigureKey;Ljava/lang/Object;)Lcom/oplus/ocs/camera/CameraDeviceConfig$Builder;

    :cond_4
    const-string v0, "com.oplus.torch.flash.support"

    .line 7070
    invoke-static {v0}, Lcom/oplus/camera/aps/config/CameraConfig;->getConfigBooleanValue(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 7071
    sget-object v0, Lcom/oplus/ocs/camera/CameraParameter;->TORCH_FLASH_ENABLE:Lcom/oplus/ocs/camera/CameraParameter$ConfigureKey;

    invoke-virtual {p1, v0, v2}, Lcom/oplus/ocs/camera/CameraDeviceConfig$Builder;->setParameter(Lcom/oplus/ocs/camera/CameraParameter$ConfigureKey;Ljava/lang/Object;)Lcom/oplus/ocs/camera/CameraDeviceConfig$Builder;

    .line 7074
    :cond_5
    invoke-virtual {p0}, Lcom/oplus/camera/capmode/BaseMode;->isHighPictureSize()Z

    move-result v0

    if-eqz v0, :cond_6

    .line 7075
    sget-object v0, Lcom/oplus/ocs/camera/CameraParameter;->HIGH_PICTURE_SIZE_ENABLE:Lcom/oplus/ocs/camera/CameraParameter$ConfigureKey;

    invoke-virtual {p1, v0, v2}, Lcom/oplus/ocs/camera/CameraDeviceConfig$Builder;->setParameter(Lcom/oplus/ocs/camera/CameraParameter$ConfigureKey;Ljava/lang/Object;)Lcom/oplus/ocs/camera/CameraDeviceConfig$Builder;

    .line 7078
    :cond_6
    sget-object v0, Lcom/oplus/ocs/camera/CameraParameter;->MAKEUP_STATE:Lcom/oplus/ocs/camera/CameraParameter$ConfigureKey;

    invoke-direct {p0}, Lcom/oplus/camera/capmode/BaseMode;->getMakeupState()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {p1, v0, v2}, Lcom/oplus/ocs/camera/CameraDeviceConfig$Builder;->setParameter(Lcom/oplus/ocs/camera/CameraParameter$ConfigureKey;Ljava/lang/Object;)Lcom/oplus/ocs/camera/CameraDeviceConfig$Builder;

    .line 7080
    iget-object v0, p0, Lcom/oplus/camera/capmode/BaseMode;->mCameraInterface:Lcom/oplus/camera/capmode/a;

    invoke-interface {v0}, Lcom/oplus/camera/capmode/a;->aG()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_7

    .line 7081
    sget-object v0, Lcom/oplus/ocs/camera/CameraParameter;->KEY_CALLER_PACKAGE_NAME:Lcom/oplus/ocs/camera/CameraParameter$ConfigureKey;

    iget-object v2, p0, Lcom/oplus/camera/capmode/BaseMode;->mCameraInterface:Lcom/oplus/camera/capmode/a;

    invoke-interface {v2}, Lcom/oplus/camera/capmode/a;->aG()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->getBytes()[B

    move-result-object v2

    invoke-virtual {p1, v0, v2}, Lcom/oplus/ocs/camera/CameraDeviceConfig$Builder;->setParameter(Lcom/oplus/ocs/camera/CameraParameter$ConfigureKey;Ljava/lang/Object;)Lcom/oplus/ocs/camera/CameraDeviceConfig$Builder;

    .line 7084
    :cond_7
    sget-object v0, Lcom/oplus/ocs/camera/CameraParameter;->KEY_REQUEST_ZSL_MODE:Lcom/oplus/ocs/camera/CameraParameter$ConfigureKey;

    invoke-virtual {p0}, Lcom/oplus/camera/capmode/BaseMode;->getZSLMode()Z

    move-result v2

    const/4 v3, 0x0

    if-eqz v2, :cond_8

    new-array v2, v1, [B

    aput-byte v1, v2, v3

    goto :goto_1

    :cond_8
    new-array v2, v1, [B

    aput-byte v3, v2, v3

    :goto_1
    invoke-virtual {p1, v0, v2}, Lcom/oplus/ocs/camera/CameraDeviceConfig$Builder;->setParameter(Lcom/oplus/ocs/camera/CameraParameter$ConfigureKey;Ljava/lang/Object;)Lcom/oplus/ocs/camera/CameraDeviceConfig$Builder;

    .line 7086
    sget-object v0, Lcom/oplus/ocs/camera/CameraParameter;->KEY_ZOOM_RATION_CONFIGURE:Lcom/oplus/ocs/camera/CameraParameter$ConfigureKey;

    invoke-virtual {p0}, Lcom/oplus/camera/capmode/BaseMode;->getZoomValue()F

    move-result p0

    invoke-static {p0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p0

    invoke-virtual {p1, v0, p0}, Lcom/oplus/ocs/camera/CameraDeviceConfig$Builder;->setParameter(Lcom/oplus/ocs/camera/CameraParameter$ConfigureKey;Ljava/lang/Object;)Lcom/oplus/ocs/camera/CameraDeviceConfig$Builder;

    return-void
.end method

.method public setDisplayOnLock(Z)V
    .locals 0

    .line 6745
    iput-boolean p1, p0, Lcom/oplus/camera/capmode/BaseMode;->mbDisplayOnLock:Z

    return-void
.end method

.method public setFlashState()V
    .locals 0

    return-void
.end method

.method public setFlashTemporaryDisabled(Z)V
    .locals 0

    .line 7536
    iput-boolean p1, p0, Lcom/oplus/camera/capmode/BaseMode;->mbFlashTemporaryDisabled:Z

    return-void
.end method

.method protected setFocusTrackingLocation(FF)V
    .locals 0

    return-void
.end method

.method protected setFocusTrackingState(Z)V
    .locals 0

    return-void
.end method

.method protected setFocusingSoundVolume(I)V
    .locals 0

    return-void
.end method

.method public setForceMode()V
    .locals 4

    .line 2216
    iget-object v0, p0, Lcom/oplus/camera/capmode/BaseMode;->mPreferences:Landroid/content/SharedPreferences;

    iget-object v1, p0, Lcom/oplus/camera/capmode/BaseMode;->mCameraInterface:Lcom/oplus/camera/capmode/a;

    .line 2217
    invoke-interface {v1}, Lcom/oplus/camera/capmode/a;->m()Z

    move-result v1

    invoke-static {v1}, Lcom/oplus/camera/util/Util;->b(Z)Ljava/lang/String;

    move-result-object v1

    const-string v2, "pref_camera_mode_key"

    .line 2216
    invoke-interface {v0, v2, v1}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 2219
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "setForceMode, capMode: "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ", modeName: "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/oplus/camera/capmode/BaseMode;->getCameraMode()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v3, "BaseMode"

    invoke-static {v3, v1}, Lcom/oplus/camera/e;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 2221
    invoke-virtual {p0}, Lcom/oplus/camera/capmode/BaseMode;->getCameraMode()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 2222
    iget-object v0, p0, Lcom/oplus/camera/capmode/BaseMode;->mPreferences:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 2223
    invoke-virtual {p0}, Lcom/oplus/camera/capmode/BaseMode;->getCameraMode()Ljava/lang/String;

    move-result-object p0

    invoke-interface {v0, v2, p0}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 2224
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    :cond_0
    return-void
.end method

.method public setLSDEnable()V
    .locals 1

    .line 7953
    iget-object v0, p0, Lcom/oplus/camera/capmode/BaseMode;->mOneCamera:Lcom/oplus/camera/e/d;

    if-eqz v0, :cond_0

    .line 7954
    invoke-virtual {p0}, Lcom/oplus/camera/capmode/BaseMode;->isLensDirtyDetectionOpen()Z

    move-result p0

    invoke-interface {v0, p0}, Lcom/oplus/camera/e/d;->z(I)V

    :cond_0
    return-void
.end method

.method public setLowBatteryState(Z)V
    .locals 0

    return-void
.end method

.method public setNeedCapture(Z)V
    .locals 2

    .line 7596
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "setNeedCapture, needCapture: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "BaseMode"

    invoke-static {v1, v0}, Lcom/oplus/camera/e;->a(Ljava/lang/String;Ljava/lang/String;)V

    if-eqz p1, :cond_0

    const/4 v0, 0x0

    .line 7599
    iput-boolean v0, p0, Lcom/oplus/camera/capmode/BaseMode;->mbInCapturing:Z

    .line 7600
    invoke-virtual {p0, v0}, Lcom/oplus/camera/capmode/BaseMode;->setCapturePreviewDataState(I)V

    .line 7603
    :cond_0
    iget-object v0, p0, Lcom/oplus/camera/capmode/BaseMode;->mNeedCaptureLock:Ljava/lang/Object;

    monitor-enter v0

    .line 7604
    :try_start_0
    iput-boolean p1, p0, Lcom/oplus/camera/capmode/BaseMode;->mbNeedCapture:Z

    .line 7605
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public setOpenFaceBeautyMenu(Z)V
    .locals 0

    return-void
.end method

.method public setOrientation(I)V
    .locals 0

    .line 2233
    iput p1, p0, Lcom/oplus/camera/capmode/BaseMode;->mOrientation:I

    return-void
.end method

.method public setPIEnable(IZ)V
    .locals 0

    return-void
.end method

.method public setPictureHasSuperTextResult(Z)V
    .locals 0

    .line 6958
    iput-boolean p1, p0, Lcom/oplus/camera/capmode/BaseMode;->mbCaptureHasSuperTextResult:Z

    return-void
.end method

.method public setPreburstShotCapture(Z)V
    .locals 0

    return-void
.end method

.method public setPreviewDetectResult(Lcom/oplus/camera/u/a;)V
    .locals 0

    .line 7479
    iput-object p1, p0, Lcom/oplus/camera/capmode/BaseMode;->mDetectResult:Lcom/oplus/camera/u/a;

    return-void
.end method

.method protected setQuickVideoBeforeLockTime(Z)V
    .locals 0

    return-void
.end method

.method protected setRawRequestTag(Z)V
    .locals 0

    .line 7467
    iput-boolean p1, p0, Lcom/oplus/camera/capmode/BaseMode;->mbRawRequestTag:Z

    return-void
.end method

.method public setSysBrightness(I)V
    .locals 2

    .line 6948
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "setSysBrightness, sysBrightness: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "BaseMode"

    invoke-static {v1, v0}, Lcom/oplus/camera/e;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 6950
    iput p1, p0, Lcom/oplus/camera/capmode/BaseMode;->mSysBrightness:I

    return-void
.end method

.method public setTiltShiftParams(Lcom/oplus/camera/tiltshift/TiltShiftParam;)V
    .locals 0

    .line 6666
    iget-object p0, p0, Lcom/oplus/camera/capmode/BaseMode;->mPreviewEffectProcess:Lcom/oplus/camera/ui/preview/a/t;

    if-eqz p0, :cond_0

    .line 6667
    invoke-interface {p0, p1}, Lcom/oplus/camera/ui/preview/a/t;->a(Lcom/oplus/camera/tiltshift/TiltShiftParam;)V

    :cond_0
    return-void
.end method

.method protected setTiltShiftPreview()V
    .locals 2

    .line 6642
    invoke-virtual {p0}, Lcom/oplus/camera/capmode/BaseMode;->isTiltShiftOpen()Z

    move-result v0

    .line 6644
    iget-object v1, p0, Lcom/oplus/camera/capmode/BaseMode;->mPreviewEffectProcess:Lcom/oplus/camera/ui/preview/a/t;

    if-eqz v1, :cond_0

    .line 6645
    invoke-interface {v1, v0}, Lcom/oplus/camera/ui/preview/a/t;->e(Z)V

    if-eqz v0, :cond_0

    .line 6648
    iget-object v0, p0, Lcom/oplus/camera/capmode/BaseMode;->mPreviewEffectProcess:Lcom/oplus/camera/ui/preview/a/t;

    invoke-virtual {p0}, Lcom/oplus/camera/capmode/BaseMode;->getTiltShiftBlurValue()F

    move-result p0

    invoke-interface {v0, p0}, Lcom/oplus/camera/ui/preview/a/t;->c(F)V

    :cond_0
    return-void
.end method

.method public setVideoBlurEffect(Z)V
    .locals 0

    .line 7928
    iget-object p0, p0, Lcom/oplus/camera/capmode/BaseMode;->mPreviewEffectProcess:Lcom/oplus/camera/ui/preview/a/t;

    if-eqz p0, :cond_0

    .line 7929
    invoke-interface {p0, p1}, Lcom/oplus/camera/ui/preview/a/t;->i(Z)V

    :cond_0
    return-void
.end method

.method protected setVideoBlurOpen(Z)V
    .locals 0

    return-void
.end method

.method protected setVideoSoundValue(F)V
    .locals 0

    return-void
.end method

.method public shouldHideBlur()Z
    .locals 0

    const/4 p0, 0x1

    return p0
.end method

.method public showBeautyButton()Z
    .locals 0

    .line 6296
    invoke-virtual {p0}, Lcom/oplus/camera/capmode/BaseMode;->supportBeautyButton()Z

    move-result p0

    return p0
.end method

.method public showEffectMenu()Z
    .locals 0

    const/4 p0, 0x1

    return p0
.end method

.method protected showFirstBeautyTipView()V
    .locals 2

    .line 690
    iget-object v0, p0, Lcom/oplus/camera/capmode/BaseMode;->mHandler:Landroid/os/Handler;

    if-eqz v0, :cond_0

    .line 691
    invoke-virtual {v0}, Landroid/os/Handler;->obtainMessage()Landroid/os/Message;

    move-result-object v0

    const/16 v1, 0x9

    .line 692
    iput v1, v0, Landroid/os/Message;->what:I

    .line 693
    iget-object p0, p0, Lcom/oplus/camera/capmode/BaseMode;->mHandler:Landroid/os/Handler;

    invoke-virtual {p0, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    :cond_0
    return-void
.end method

.method public showFirstBubble(Landroid/view/View;I)V
    .locals 2

    .line 728
    iget-object v0, p0, Lcom/oplus/camera/capmode/BaseMode;->mCameraUIInterface:Lcom/oplus/camera/ui/CameraUIInterface;

    if-eqz v0, :cond_1

    .line 729
    invoke-virtual {p0, p2}, Lcom/oplus/camera/capmode/BaseMode;->getBubbleOffsetX(I)I

    move-result v0

    const/4 v1, -0x1

    if-eq v1, v0, :cond_0

    .line 732
    iget-object v1, p0, Lcom/oplus/camera/capmode/BaseMode;->mCameraUIInterface:Lcom/oplus/camera/ui/CameraUIInterface;

    invoke-virtual {p0, p2}, Lcom/oplus/camera/capmode/BaseMode;->getBubbleOffsetY(I)I

    move-result p0

    invoke-interface {v1, p1, p2, v0, p0}, Lcom/oplus/camera/ui/CameraUIInterface;->a(Landroid/view/View;III)V

    goto :goto_0

    :cond_0
    const-string p0, "BaseMode"

    const-string p1, "showFirstBubble, ultra wide anchor view not found"

    .line 734
    invoke-static {p0, p1}, Lcom/oplus/camera/e;->e(Ljava/lang/String;Ljava/lang/String;)V

    :cond_1
    :goto_0
    return-void
.end method

.method public showFirstTip()V
    .locals 2

    const-string v0, "key_first_beauty_tip"

    .line 751
    invoke-virtual {p0, v0}, Lcom/oplus/camera/capmode/BaseMode;->isBubbleOpen(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 752
    iget-object v0, p0, Lcom/oplus/camera/capmode/BaseMode;->mHandler:Landroid/os/Handler;

    if-eqz v0, :cond_0

    .line 753
    invoke-virtual {v0}, Landroid/os/Handler;->obtainMessage()Landroid/os/Message;

    move-result-object v0

    const/16 v1, 0x9

    .line 754
    iput v1, v0, Landroid/os/Message;->what:I

    .line 755
    iget-object p0, p0, Lcom/oplus/camera/capmode/BaseMode;->mHandler:Landroid/os/Handler;

    invoke-virtual {p0, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    :cond_0
    return-void
.end method

.method public showLowMemory()V
    .locals 6

    .line 1805
    iget-object v0, p0, Lcom/oplus/camera/capmode/BaseMode;->mCameraUIInterface:Lcom/oplus/camera/ui/CameraUIInterface;

    const v1, 0x7f100474

    const/4 v2, -0x1

    const/4 v3, 0x1

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-interface/range {v0 .. v5}, Lcom/oplus/camera/ui/CameraUIInterface;->a(IIZZZ)V

    return-void
.end method

.method public showMenuLeftButton()Z
    .locals 0

    .line 6300
    invoke-virtual {p0}, Lcom/oplus/camera/capmode/BaseMode;->supportMenuLeftButton()Z

    move-result p0

    return p0
.end method

.method public showNextTip()V
    .locals 1

    .line 745
    iget-object p0, p0, Lcom/oplus/camera/capmode/BaseMode;->mHandler:Landroid/os/Handler;

    if-eqz p0, :cond_0

    const/4 v0, 0x7

    .line 746
    invoke-virtual {p0, v0}, Landroid/os/Handler;->removeMessages(I)V

    :cond_0
    return-void
.end method

.method public showPictureSizeHint(Ljava/lang/String;)V
    .locals 13

    .line 6324
    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    move-result v2

    const/4 v3, 0x4

    const/4 v4, 0x3

    const/4 v5, 0x1

    const/4 v6, 0x2

    sparse-switch v2, :sswitch_data_0

    goto :goto_0

    :sswitch_0
    const-string v2, "standard"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, 0x0

    goto :goto_1

    :sswitch_1
    const-string v2, "full"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    move v1, v6

    goto :goto_1

    :sswitch_2
    const-string v2, "16_9"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    move v1, v4

    goto :goto_1

    :sswitch_3
    const-string v2, "square"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    move v1, v3

    goto :goto_1

    :sswitch_4
    const-string v2, "standard_high"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    move v1, v5

    goto :goto_1

    :cond_0
    :goto_0
    const/4 v1, -0x1

    :goto_1
    if-eqz v1, :cond_6

    if-eq v1, v5, :cond_6

    if-eq v1, v6, :cond_3

    if-eq v1, v4, :cond_2

    if-eq v1, v3, :cond_1

    goto :goto_3

    .line 6350
    :cond_1
    iget-object v7, p0, Lcom/oplus/camera/capmode/BaseMode;->mCameraUIInterface:Lcom/oplus/camera/ui/CameraUIInterface;

    const v8, 0x7f1005c4

    const/4 v9, -0x1

    const/4 v10, 0x1

    const/4 v11, 0x0

    const/4 v12, 0x0

    invoke-interface/range {v7 .. v12}, Lcom/oplus/camera/ui/CameraUIInterface;->a(IIZZZ)V

    goto :goto_3

    .line 6345
    :cond_2
    iget-object v0, p0, Lcom/oplus/camera/capmode/BaseMode;->mCameraUIInterface:Lcom/oplus/camera/ui/CameraUIInterface;

    const v1, 0x7f1005c3

    const/4 v2, -0x1

    const/4 v3, 0x1

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-interface/range {v0 .. v5}, Lcom/oplus/camera/ui/CameraUIInterface;->a(IIZZZ)V

    goto :goto_3

    .line 6333
    :cond_3
    iget-object v1, p0, Lcom/oplus/camera/capmode/BaseMode;->mCameraUIInterface:Lcom/oplus/camera/ui/CameraUIInterface;

    invoke-interface {v1}, Lcom/oplus/camera/ui/CameraUIInterface;->aX()I

    move-result v1

    if-eqz v1, :cond_5

    iget-object v1, p0, Lcom/oplus/camera/capmode/BaseMode;->mCameraUIInterface:Lcom/oplus/camera/ui/CameraUIInterface;

    .line 6334
    invoke-interface {v1}, Lcom/oplus/camera/ui/CameraUIInterface;->aX()I

    move-result v1

    if-ne v6, v1, :cond_4

    goto :goto_2

    .line 6338
    :cond_4
    iget-object v7, p0, Lcom/oplus/camera/capmode/BaseMode;->mCameraUIInterface:Lcom/oplus/camera/ui/CameraUIInterface;

    const v8, 0x7f1005c2

    const/4 v9, -0x1

    const/4 v10, 0x1

    const/4 v11, 0x0

    const/4 v12, 0x0

    invoke-interface/range {v7 .. v12}, Lcom/oplus/camera/ui/CameraUIInterface;->a(IIZZZ)V

    goto :goto_3

    .line 6335
    :cond_5
    :goto_2
    iget-object v0, p0, Lcom/oplus/camera/capmode/BaseMode;->mCameraUIInterface:Lcom/oplus/camera/ui/CameraUIInterface;

    const v1, 0x7f1005c6

    const/4 v2, -0x1

    const/4 v3, 0x1

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-interface/range {v0 .. v5}, Lcom/oplus/camera/ui/CameraUIInterface;->a(IIZZZ)V

    goto :goto_3

    .line 6328
    :cond_6
    iget-object v6, p0, Lcom/oplus/camera/capmode/BaseMode;->mCameraUIInterface:Lcom/oplus/camera/ui/CameraUIInterface;

    const v7, 0x7f1005c5

    const/4 v8, -0x1

    const/4 v9, 0x1

    const/4 v10, 0x0

    const/4 v11, 0x0

    invoke-interface/range {v6 .. v11}, Lcom/oplus/camera/ui/CameraUIInterface;->a(IIZZZ)V

    :goto_3
    return-void

    :sswitch_data_0
    .sparse-switch
        -0x76cada1c -> :sswitch_4
        -0x3553a6e3 -> :sswitch_3
        0x171c9f -> :sswitch_2
        0x30228f -> :sswitch_1
        0x4e3d1ebd -> :sswitch_0
    .end sparse-switch
.end method

.method public final shutterCallback(ZZ)V
    .locals 3

    const-string v0, "BaseMode"

    if-nez p1, :cond_0

    .line 3055
    iget-boolean v1, p0, Lcom/oplus/camera/capmode/BaseMode;->mbPaused:Z

    if-nez v1, :cond_0

    .line 3056
    iget v1, p0, Lcom/oplus/camera/capmode/BaseMode;->mPostCounter:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/oplus/camera/capmode/BaseMode;->mPostCounter:I

    .line 3058
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "shutterCallback, mPostCounter: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/oplus/camera/capmode/BaseMode;->mPostCounter:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/oplus/camera/e;->a(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v1, 0x0

    .line 3060
    invoke-direct {p0, v1}, Lcom/oplus/camera/capmode/BaseMode;->setInPreparing(Z)V

    .line 3063
    :cond_0
    iget-boolean v1, p0, Lcom/oplus/camera/capmode/BaseMode;->mbPaused:Z

    if-eqz v1, :cond_1

    const-string p0, "shutterCallback, camera pause, so return"

    .line 3064
    invoke-static {v0, p0}, Lcom/oplus/camera/e;->a(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_1
    if-nez p1, :cond_2

    .line 3069
    invoke-virtual {p0}, Lcom/oplus/camera/capmode/BaseMode;->isInNightProcess()Z

    move-result v0

    if-nez v0, :cond_2

    .line 3070
    iget-object v0, p0, Lcom/oplus/camera/capmode/BaseMode;->mCameraInterface:Lcom/oplus/camera/capmode/a;

    invoke-interface {v0}, Lcom/oplus/camera/capmode/a;->d()V

    .line 3073
    :cond_2
    invoke-virtual {p0, p1, p2}, Lcom/oplus/camera/capmode/BaseMode;->onShutterCallback(ZZ)V

    return-void
.end method

.method public startLoadVideo(Z)V
    .locals 0

    return-void
.end method

.method public startPlayVideoActivity()V
    .locals 0

    return-void
.end method

.method public startScreenTorch()V
    .locals 0

    return-void
.end method

.method protected startShortVideoRecording()V
    .locals 0

    return-void
.end method

.method public final stop()V
    .locals 0

    .line 1916
    invoke-virtual {p0}, Lcom/oplus/camera/capmode/BaseMode;->onStop()V

    return-void
.end method

.method protected stopQuickVideoRecording()V
    .locals 0

    return-void
.end method

.method protected stopRecordingFrame()V
    .locals 0

    return-void
.end method

.method public stopScreenTorch()V
    .locals 0

    return-void
.end method

.method protected stopShortVideoRecording()V
    .locals 0

    return-void
.end method

.method public final stopTakePicture(Z)Z
    .locals 1

    .line 3748
    invoke-virtual {p0}, Lcom/oplus/camera/capmode/BaseMode;->needCancelToForceStop()Z

    move-result v0

    if-eqz v0, :cond_0

    if-eqz p1, :cond_0

    .line 3749
    invoke-virtual {p0}, Lcom/oplus/camera/capmode/BaseMode;->onCancelTakePicture()V

    const/4 p0, 0x1

    return p0

    .line 3752
    :cond_0
    invoke-virtual {p0}, Lcom/oplus/camera/capmode/BaseMode;->onStopTakePicture()Z

    move-result p0

    return p0
.end method

.method public stopVideoRestoreUIWithControlUI()V
    .locals 0

    return-void
.end method

.method public supportBeautyButton()Z
    .locals 1

    const-string v0, "func_face_beauty_process"

    .line 6285
    invoke-virtual {p0, v0}, Lcom/oplus/camera/capmode/BaseMode;->getSupportFunction(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    const-string v0, "pref_filter_process_key"

    .line 6286
    invoke-virtual {p0, v0}, Lcom/oplus/camera/capmode/BaseMode;->getSupportFunction(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    const-string v0, "pref_filter_menu"

    .line 6287
    invoke-virtual {p0, v0}, Lcom/oplus/camera/capmode/BaseMode;->getSupportFunction(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    const-string v0, "key_filter_menu_updated"

    .line 6288
    invoke-virtual {p0, v0}, Lcom/oplus/camera/capmode/BaseMode;->getSupportFunction(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    const-string v0, "pref_video_filter_menu"

    .line 6289
    invoke-virtual {p0, v0}, Lcom/oplus/camera/capmode/BaseMode;->getSupportFunction(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    const-string v0, "pref_portrait_new_style_menu"

    .line 6290
    invoke-virtual {p0, v0}, Lcom/oplus/camera/capmode/BaseMode;->getSupportFunction(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    const-string v0, "pref_night_filter_menu"

    .line 6291
    invoke-virtual {p0, v0}, Lcom/oplus/camera/capmode/BaseMode;->getSupportFunction(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    const-string v0, "pref_fuji_filter_menu"

    .line 6292
    invoke-virtual {p0, v0}, Lcom/oplus/camera/capmode/BaseMode;->getSupportFunction(Ljava/lang/String;)Z

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

.method public supportMenuLeftButton()Z
    .locals 1

    const-string v0, "pref_video_blur_menu"

    .line 6304
    invoke-virtual {p0, v0}, Lcom/oplus/camera/capmode/BaseMode;->getSupportFunction(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    const-string v0, "pref_portrait_blur_menu"

    .line 6305
    invoke-virtual {p0, v0}, Lcom/oplus/camera/capmode/BaseMode;->getSupportFunction(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    const-string v0, "pref_tilt_shift_blur_menu"

    .line 6306
    invoke-virtual {p0, v0}, Lcom/oplus/camera/capmode/BaseMode;->getSupportFunction(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    const-string v0, "key_multicamera_type_menu_key"

    .line 6307
    invoke-virtual {p0, v0}, Lcom/oplus/camera/capmode/BaseMode;->getSupportFunction(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    const-string v0, "pref_street_long_exposure_menu"

    .line 6308
    invoke-virtual {p0, v0}, Lcom/oplus/camera/capmode/BaseMode;->getSupportFunction(Ljava/lang/String;)Z

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

.method protected supportParameterAdjust()Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public switchSuperEISWide(Z)V
    .locals 0

    return-void
.end method

.method protected switchVideoBlur(ZZ)V
    .locals 0

    return-void
.end method

.method public updateAISceneMode()V
    .locals 4

    .line 5419
    iget-object v0, p0, Lcom/oplus/camera/capmode/BaseMode;->mOneCamera:Lcom/oplus/camera/e/d;

    if-nez v0, :cond_0

    const-string p0, "BaseMode"

    const-string v0, "updateAISceneMode failed"

    .line 5420
    invoke-static {p0, v0}, Lcom/oplus/camera/e;->e(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_0
    const-string v0, "com.oplus.feature.pi.ai.support"

    .line 5425
    invoke-static {v0}, Lcom/oplus/camera/aps/config/CameraConfig;->getConfigBooleanValue(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 5426
    invoke-virtual {p0}, Lcom/oplus/camera/capmode/BaseMode;->isPIAISceneOpen()Z

    move-result v0

    .line 5427
    iget-object v1, p0, Lcom/oplus/camera/capmode/BaseMode;->mOneCamera:Lcom/oplus/camera/e/d;

    sget-object v2, Lcom/oplus/ocs/camera/CameraParameter;->AI_PHOTO:Lcom/oplus/ocs/camera/CameraParameter$PreviewKey;

    if-eqz v0, :cond_1

    const-string v3, "on"

    goto :goto_0

    :cond_1
    const-string v3, "off"

    :goto_0
    invoke-interface {v1, v2, v3}, Lcom/oplus/camera/e/d;->a(Lcom/oplus/ocs/camera/CameraParameter$PreviewKey;Ljava/lang/Object;)V

    .line 5428
    iget-object v1, p0, Lcom/oplus/camera/capmode/BaseMode;->mOneCamera:Lcom/oplus/camera/e/d;

    iget-object v2, p0, Lcom/oplus/camera/capmode/BaseMode;->mCameraUIInterface:Lcom/oplus/camera/ui/CameraUIInterface;

    invoke-interface {v2}, Lcom/oplus/camera/ui/CameraUIInterface;->aa()I

    move-result v2

    invoke-interface {v1, v2}, Lcom/oplus/camera/e/d;->p(I)V

    const-string v1, "com.oplus.scenes.force.athena"

    .line 5430
    invoke-static {v1}, Lcom/oplus/camera/aps/config/CameraConfig;->getConfigBooleanValue(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2

    if-eqz v0, :cond_2

    const-string v0, "pref_camera_pi_ai_mode_key"

    .line 5432
    invoke-virtual {p0, v0}, Lcom/oplus/camera/capmode/BaseMode;->getSupportFunction(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 5433
    iget-object v0, p0, Lcom/oplus/camera/capmode/BaseMode;->mActivity:Landroid/app/Activity;

    invoke-static {v0}, Lcom/oplus/camera/util/Util;->C(Landroid/content/Context;)V

    .line 5437
    :cond_2
    invoke-virtual {p0}, Lcom/oplus/camera/capmode/BaseMode;->isAISceneOpen()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 5438
    iget-object p0, p0, Lcom/oplus/camera/capmode/BaseMode;->mOneCamera:Lcom/oplus/camera/e/d;

    const/4 v0, 0x1

    invoke-interface {p0, v0}, Lcom/oplus/camera/e/d;->e(I)V

    goto :goto_1

    .line 5440
    :cond_3
    iget-object p0, p0, Lcom/oplus/camera/capmode/BaseMode;->mOneCamera:Lcom/oplus/camera/e/d;

    const/4 v0, 0x0

    invoke-interface {p0, v0}, Lcom/oplus/camera/e/d;->e(I)V

    :goto_1
    return-void
.end method

.method public updateAsdSceneValue(ZI)V
    .locals 1

    .line 810
    iget-object v0, p0, Lcom/oplus/camera/capmode/BaseMode;->mOneCamera:Lcom/oplus/camera/e/d;

    if-eqz v0, :cond_0

    .line 811
    invoke-interface {v0, p2}, Lcom/oplus/camera/e/d;->v(I)V

    if-eqz p1, :cond_0

    .line 814
    iget-object p0, p0, Lcom/oplus/camera/capmode/BaseMode;->mOneCamera:Lcom/oplus/camera/e/d;

    const/4 p1, 0x0

    invoke-interface {p0, p1}, Lcom/oplus/camera/e/d;->a(Lcom/oplus/camera/e/d$c;)V

    :cond_0
    return-void
.end method

.method protected updateBlurValue()V
    .locals 1

    const-string v0, "func_bokeh"

    .line 2634
    invoke-virtual {p0, v0}, Lcom/oplus/camera/capmode/BaseMode;->getSupportFunction(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2635
    iget-object v0, p0, Lcom/oplus/camera/capmode/BaseMode;->mOneCamera:Lcom/oplus/camera/e/d;

    if-eqz v0, :cond_1

    .line 2636
    invoke-virtual {p0}, Lcom/oplus/camera/capmode/BaseMode;->getBlurValue()F

    move-result p0

    invoke-interface {v0, p0}, Lcom/oplus/camera/e/d;->a(F)V

    goto :goto_0

    :cond_0
    const-string v0, "func_face_blur"

    .line 2638
    invoke-virtual {p0, v0}, Lcom/oplus/camera/capmode/BaseMode;->getSupportFunction(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 2639
    iget-object v0, p0, Lcom/oplus/camera/capmode/BaseMode;->mPreviewEffectProcess:Lcom/oplus/camera/ui/preview/a/t;

    if-eqz v0, :cond_1

    .line 2640
    invoke-virtual {p0}, Lcom/oplus/camera/capmode/BaseMode;->getBlurValue()F

    move-result p0

    invoke-interface {v0, p0}, Lcom/oplus/camera/ui/preview/a/t;->a(F)V

    :cond_1
    :goto_0
    return-void
.end method

.method public updateBracketMode(ZI)V
    .locals 1

    .line 800
    iget-object v0, p0, Lcom/oplus/camera/capmode/BaseMode;->mOneCamera:Lcom/oplus/camera/e/d;

    if-eqz v0, :cond_0

    .line 801
    invoke-interface {v0, p2}, Lcom/oplus/camera/e/d;->u(I)V

    if-eqz p1, :cond_0

    .line 804
    iget-object p0, p0, Lcom/oplus/camera/capmode/BaseMode;->mOneCamera:Lcom/oplus/camera/e/d;

    const/4 p1, 0x0

    invoke-interface {p0, p1}, Lcom/oplus/camera/e/d;->a(Lcom/oplus/camera/e/d$c;)V

    :cond_0
    return-void
.end method

.method public updateBubbleValue(Ljava/lang/String;Z)V
    .locals 0

    .line 6922
    iget-object p0, p0, Lcom/oplus/camera/capmode/BaseMode;->mPreferences:Landroid/content/SharedPreferences;

    if-nez p0, :cond_0

    const-string p0, "BaseMode"

    const-string p1, "updateBubbleValue, mPreference null"

    .line 6923
    invoke-static {p0, p1}, Lcom/oplus/camera/e;->f(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    .line 6928
    :cond_0
    invoke-interface {p0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object p0

    .line 6929
    invoke-interface {p0, p1, p2}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 6930
    invoke-interface {p0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    return-void
.end method

.method protected updateCaptureParam(Lcom/oplus/camera/e/c;)V
    .locals 17

    move-object/from16 v1, p0

    move-object/from16 v2, p1

    if-nez v2, :cond_0

    return-void

    .line 3526
    :cond_0
    invoke-virtual/range {p0 .. p0}, Lcom/oplus/camera/capmode/BaseMode;->getCurrFilterType()Ljava/lang/String;

    move-result-object v0

    .line 3527
    iget-object v3, v1, Lcom/oplus/camera/capmode/BaseMode;->mOneCamera:Lcom/oplus/camera/e/d;

    invoke-virtual {v1, v0}, Lcom/oplus/camera/capmode/BaseMode;->isFilterOpen(Ljava/lang/String;)Z

    move-result v4

    const-string v5, "func_filter_vignette"

    .line 3528
    invoke-virtual {v1, v5}, Lcom/oplus/camera/capmode/BaseMode;->getSupportFunction(Ljava/lang/String;)Z

    move-result v5

    const/4 v6, 0x1

    const/4 v7, 0x0

    if-eqz v5, :cond_1

    const-string v5, "oplus_video_filter_olympus"

    .line 3529
    invoke-virtual {v5, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1

    move v5, v6

    goto :goto_0

    :cond_1
    move v5, v7

    .line 3527
    :goto_0
    invoke-interface {v3, v0, v4, v5}, Lcom/oplus/camera/e/d;->a(Ljava/lang/String;ZZ)V

    .line 3531
    iget-object v3, v2, Lcom/oplus/camera/e/c;->d:Ljava/lang/String;

    if-eqz v3, :cond_4

    .line 3532
    iget-object v3, v1, Lcom/oplus/camera/capmode/BaseMode;->mOneCamera:Lcom/oplus/camera/e/d;

    sget-object v4, Lcom/oplus/ocs/camera/CameraParameter;->KEY_SINGLE_BLUR_ALGONAME:Lcom/oplus/ocs/camera/CameraParameter$PreviewKey;

    iget-object v5, v2, Lcom/oplus/camera/e/c;->d:Ljava/lang/String;

    invoke-interface {v3, v4, v5}, Lcom/oplus/camera/e/d;->a(Lcom/oplus/ocs/camera/CameraParameter$PreviewKey;Ljava/lang/Object;)V

    .line 3533
    iget-object v3, v1, Lcom/oplus/camera/capmode/BaseMode;->mOneCamera:Lcom/oplus/camera/e/d;

    sget-object v4, Lcom/oplus/ocs/camera/CameraParameter;->KEY_SINGLE_BLUR_LEVEL:Lcom/oplus/ocs/camera/CameraParameter$PreviewKey;

    iget v5, v2, Lcom/oplus/camera/e/c;->R:I

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-interface {v3, v4, v5}, Lcom/oplus/camera/e/d;->a(Lcom/oplus/ocs/camera/CameraParameter$PreviewKey;Ljava/lang/Object;)V

    .line 3534
    iget-object v3, v1, Lcom/oplus/camera/capmode/BaseMode;->mOneCamera:Lcom/oplus/camera/e/d;

    sget-object v4, Lcom/oplus/ocs/camera/CameraParameter;->KEY_SINGLE_BLUR_SHOW:Lcom/oplus/ocs/camera/CameraParameter$PreviewKey;

    iget v5, v2, Lcom/oplus/camera/e/c;->S:F

    invoke-static {v5}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v5

    invoke-interface {v3, v4, v5}, Lcom/oplus/camera/e/d;->a(Lcom/oplus/ocs/camera/CameraParameter$PreviewKey;Ljava/lang/Object;)V

    const-string v3, "portrait_retention"

    .line 3536
    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 3537
    iget-object v0, v1, Lcom/oplus/camera/capmode/BaseMode;->mOneCamera:Lcom/oplus/camera/e/d;

    sget-object v3, Lcom/oplus/ocs/camera/CameraParameter;->KEY_SINGLE_PORTRAIT_EFFECT_MODE:Lcom/oplus/ocs/camera/CameraParameter$PreviewKey;

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-interface {v0, v3, v4}, Lcom/oplus/camera/e/d;->a(Lcom/oplus/ocs/camera/CameraParameter$PreviewKey;Ljava/lang/Object;)V

    goto :goto_1

    :cond_2
    const-string v3, "neon-2020.cube.rgb.bin"

    .line 3538
    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 3539
    iget-object v0, v1, Lcom/oplus/camera/capmode/BaseMode;->mOneCamera:Lcom/oplus/camera/e/d;

    sget-object v3, Lcom/oplus/ocs/camera/CameraParameter;->KEY_SINGLE_PORTRAIT_EFFECT_MODE:Lcom/oplus/ocs/camera/CameraParameter$PreviewKey;

    const/4 v4, 0x2

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-interface {v0, v3, v4}, Lcom/oplus/camera/e/d;->a(Lcom/oplus/ocs/camera/CameraParameter$PreviewKey;Ljava/lang/Object;)V

    goto :goto_1

    .line 3541
    :cond_3
    iget-object v0, v1, Lcom/oplus/camera/capmode/BaseMode;->mOneCamera:Lcom/oplus/camera/e/d;

    sget-object v3, Lcom/oplus/ocs/camera/CameraParameter;->KEY_SINGLE_PORTRAIT_EFFECT_MODE:Lcom/oplus/ocs/camera/CameraParameter$PreviewKey;

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-interface {v0, v3, v4}, Lcom/oplus/camera/e/d;->a(Lcom/oplus/ocs/camera/CameraParameter$PreviewKey;Ljava/lang/Object;)V

    :cond_4
    :goto_1
    const-string v0, "aps_algo_pf_v3"

    .line 3548
    invoke-virtual {v1, v0}, Lcom/oplus/camera/capmode/BaseMode;->isApsDecisionAlgoOpen(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_6

    const-string v0, "aps_algo_pf_v1"

    invoke-virtual {v1, v0}, Lcom/oplus/camera/capmode/BaseMode;->isApsDecisionAlgoOpen(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_5

    goto :goto_2

    .line 3551
    :cond_5
    invoke-direct/range {p0 .. p0}, Lcom/oplus/camera/capmode/BaseMode;->isFaceBeautyOpen()Z

    move-result v0

    goto :goto_3

    :cond_6
    :goto_2
    move v0, v7

    .line 3554
    :goto_3
    iget-object v3, v1, Lcom/oplus/camera/capmode/BaseMode;->mOneCamera:Lcom/oplus/camera/e/d;

    const-string v4, "com.oplus.facebeauty.version"

    .line 3555
    invoke-static {v4}, Lcom/oplus/camera/aps/config/CameraConfig;->getConfigIntValue(Ljava/lang/String;)I

    move-result v4

    invoke-static {v4}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v4

    .line 3556
    invoke-virtual/range {p0 .. p0}, Lcom/oplus/camera/capmode/BaseMode;->getCustomBeautyValues()[I

    move-result-object v5

    invoke-static {v5}, Lcom/oplus/camera/util/Util;->a([I)[I

    move-result-object v5

    .line 3554
    invoke-interface {v3, v0, v4, v5}, Lcom/oplus/camera/e/d;->a(ZLjava/lang/String;[I)V

    .line 3559
    iget-object v0, v1, Lcom/oplus/camera/capmode/BaseMode;->mOneCamera:Lcom/oplus/camera/e/d;

    const-string v3, "func_dered_eye"

    invoke-virtual {v1, v3}, Lcom/oplus/camera/capmode/BaseMode;->getSupportFunction(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_7

    invoke-virtual/range {p0 .. p0}, Lcom/oplus/camera/capmode/BaseMode;->isFlashState()Z

    move-result v3

    if-eqz v3, :cond_7

    move v3, v6

    goto :goto_4

    :cond_7
    move v3, v7

    :goto_4
    invoke-interface {v0, v3}, Lcom/oplus/camera/e/d;->h(Z)V

    .line 3562
    iget-object v0, v1, Lcom/oplus/camera/capmode/BaseMode;->mOneCamera:Lcom/oplus/camera/e/d;

    iget-boolean v3, v1, Lcom/oplus/camera/capmode/BaseMode;->mbBurstShot:Z

    iget-wide v4, v1, Lcom/oplus/camera/capmode/BaseMode;->mCaptureDate:J

    invoke-static {v4, v5}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v4

    const-string v5, ""

    invoke-static {v4, v5}, Lcom/oplus/camera/Storage;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    iget-wide v8, v1, Lcom/oplus/camera/capmode/BaseMode;->mCaptureDate:J

    invoke-interface {v0, v3, v4, v8, v9}, Lcom/oplus/camera/e/d;->a(ZLjava/lang/String;J)V

    .line 3565
    iget-object v0, v1, Lcom/oplus/camera/capmode/BaseMode;->mCameraInterface:Lcom/oplus/camera/capmode/a;

    if-eqz v0, :cond_8

    invoke-interface {v0}, Lcom/oplus/camera/capmode/a;->ar()Lcom/oplus/camera/c$a;

    move-result-object v0

    move-object v4, v0

    goto :goto_5

    :cond_8
    const/4 v4, 0x0

    :goto_5
    if-eqz v4, :cond_19

    .line 3567
    invoke-virtual {v4}, Lcom/oplus/camera/c$a;->b()[B

    move-result-object v0

    if-eqz v0, :cond_19

    invoke-virtual {v4}, Lcom/oplus/camera/c$a;->c()I

    move-result v0

    if-eqz v0, :cond_19

    invoke-virtual {v4}, Lcom/oplus/camera/c$a;->a()Landroid/util/Size;

    move-result-object v0

    if-eqz v0, :cond_19

    .line 3568
    new-instance v5, Landroid/os/Bundle;

    invoke-direct {v5}, Landroid/os/Bundle;-><init>()V

    .line 3569
    invoke-virtual {v4}, Lcom/oplus/camera/c$a;->c()I

    move-result v0

    const-string v8, "refWidth"

    invoke-virtual {v5, v8, v0}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 3570
    invoke-virtual {v4}, Lcom/oplus/camera/c$a;->a()Landroid/util/Size;

    move-result-object v0

    const-string v9, "size"

    invoke-virtual {v5, v9, v0}, Landroid/os/Bundle;->putSize(Ljava/lang/String;Landroid/util/Size;)V

    .line 3571
    invoke-virtual {v4}, Lcom/oplus/camera/c$a;->b()[B

    move-result-object v0

    const-string v10, "buffer"

    invoke-virtual {v5, v10, v0}, Landroid/os/Bundle;->putByteArray(Ljava/lang/String;[B)V

    .line 3573
    iget v11, v2, Lcom/oplus/camera/e/c;->J:I

    .line 3575
    invoke-virtual/range {p0 .. p0}, Lcom/oplus/camera/capmode/BaseMode;->isVideoRecording()Z

    move-result v0

    const-string v12, ", snapShotHold: "

    const-string v13, "addCaptureMetaToAPS, deviceOrientation: "

    const/16 v14, 0xb4

    const-string v15, "BaseMode"

    const-string v3, "watermark_border_y"

    const-string v7, "watermark_border_x"

    if-nez v0, :cond_12

    .line 3577
    invoke-virtual {v4}, Lcom/oplus/camera/c$a;->i()Lcom/oplus/camera/c$e;

    move-result-object v0

    if-eqz v0, :cond_b

    .line 3580
    :try_start_0
    iget-object v6, v0, Lcom/oplus/camera/c$e;->a:Landroid/util/Size;

    if-eqz v6, :cond_b

    .line 3581
    iget v6, v0, Lcom/oplus/camera/c$e;->g:I

    if-nez v6, :cond_9

    const/4 v6, 0x1

    goto :goto_6

    :cond_9
    const/4 v6, 0x0

    :goto_6
    if-eqz v6, :cond_a

    .line 3582
    iget-object v0, v0, Lcom/oplus/camera/c$e;->a:Landroid/util/Size;

    invoke-virtual {v0}, Landroid/util/Size;->getHeight()I

    move-result v0

    goto :goto_7

    :cond_a
    iget-object v0, v0, Lcom/oplus/camera/c$e;->a:Landroid/util/Size;

    invoke-virtual {v0}, Landroid/util/Size;->getWidth()I

    move-result v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_7

    :catch_0
    move-exception v0

    .line 3585
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    :cond_b
    const/4 v0, 0x0

    :goto_7
    const-string v6, "inputWidth"

    .line 3588
    invoke-virtual {v5, v6, v0}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 3589
    invoke-virtual {v4}, Lcom/oplus/camera/c$a;->d()I

    move-result v0

    invoke-virtual {v5, v7, v0}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 3590
    invoke-virtual {v4}, Lcom/oplus/camera/c$a;->e()I

    move-result v0

    invoke-virtual {v5, v3, v0}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 3592
    iget-object v0, v2, Lcom/oplus/camera/e/c;->e:Ljava/lang/String;

    const-string v6, "none"

    invoke-virtual {v6, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const-string v6, "makeupEnable"

    if-nez v0, :cond_11

    invoke-virtual/range {p0 .. p0}, Lcom/oplus/camera/capmode/BaseMode;->isMakeupSloganOpen()Z

    move-result v0

    if-eqz v0, :cond_11

    if-eqz v11, :cond_d

    if-ne v14, v11, :cond_c

    goto :goto_8

    :cond_c
    const/16 v16, 0x1

    goto :goto_9

    :cond_d
    :goto_8
    const/16 v16, 0x0

    .line 3599
    :goto_9
    iget-object v0, v1, Lcom/oplus/camera/capmode/BaseMode;->mCameraInterface:Lcom/oplus/camera/capmode/a;

    if-eqz v0, :cond_e

    .line 3600
    invoke-interface {v0}, Lcom/oplus/camera/capmode/a;->aq()Lcom/oplus/camera/ad;

    move-result-object v0

    invoke-virtual {v0}, Lcom/oplus/camera/ad;->c()Ljava/util/Map;

    move-result-object v0

    invoke-static/range {v16 .. v16}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v14

    invoke-interface {v0, v14}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/oplus/camera/c$a;

    goto :goto_a

    :cond_e
    const/4 v0, 0x0

    .line 3602
    :goto_a
    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v14, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v14, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v14, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v14, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v15, v11}, Lcom/oplus/camera/e;->a(Ljava/lang/String;Ljava/lang/String;)V

    if-nez v0, :cond_f

    .line 3606
    invoke-virtual {v4}, Lcom/oplus/camera/c$a;->i()Lcom/oplus/camera/c$e;

    move-result-object v0

    .line 3607
    iget-object v11, v0, Lcom/oplus/camera/c$e;->a:Landroid/util/Size;

    invoke-static {v11}, Lcom/oplus/camera/c;->a(Landroid/util/Size;)Landroid/util/Size;

    move-result-object v11

    iput-object v11, v0, Lcom/oplus/camera/c$e;->a:Landroid/util/Size;

    .line 3608
    iget-object v11, v1, Lcom/oplus/camera/capmode/BaseMode;->mActivity:Landroid/app/Activity;

    iget-object v12, v1, Lcom/oplus/camera/capmode/BaseMode;->mPreferences:Landroid/content/SharedPreferences;

    invoke-static {v11, v0, v12}, Lcom/oplus/camera/c;->a(Landroid/content/Context;Lcom/oplus/camera/c$e;Landroid/content/SharedPreferences;)Lcom/oplus/camera/c$a;

    move-result-object v0

    .line 3610
    iget-object v11, v1, Lcom/oplus/camera/capmode/BaseMode;->mCameraInterface:Lcom/oplus/camera/capmode/a;

    if-eqz v11, :cond_f

    .line 3611
    invoke-interface {v11}, Lcom/oplus/camera/capmode/a;->aq()Lcom/oplus/camera/ad;

    move-result-object v11

    invoke-virtual {v11}, Lcom/oplus/camera/ad;->c()Ljava/util/Map;

    move-result-object v11

    invoke-static/range {v16 .. v16}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    invoke-interface {v11, v12, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_f
    if-eqz v0, :cond_18

    .line 3616
    invoke-virtual {v0}, Lcom/oplus/camera/c$a;->a()Landroid/util/Size;

    move-result-object v11

    if-eqz v11, :cond_10

    .line 3617
    invoke-virtual {v0}, Lcom/oplus/camera/c$a;->c()I

    move-result v4

    invoke-virtual {v5, v8, v4}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 3618
    invoke-virtual {v0}, Lcom/oplus/camera/c$a;->a()Landroid/util/Size;

    move-result-object v4

    invoke-virtual {v5, v9, v4}, Landroid/os/Bundle;->putSize(Ljava/lang/String;Landroid/util/Size;)V

    .line 3619
    invoke-virtual {v0}, Lcom/oplus/camera/c$a;->b()[B

    move-result-object v4

    invoke-virtual {v5, v10, v4}, Landroid/os/Bundle;->putByteArray(Ljava/lang/String;[B)V

    goto :goto_b

    .line 3622
    :cond_10
    invoke-virtual {v4}, Lcom/oplus/camera/c$a;->c()I

    move-result v11

    int-to-float v11, v11

    invoke-virtual {v0}, Lcom/oplus/camera/c$a;->f()Landroid/graphics/Bitmap;

    move-result-object v12

    invoke-virtual {v12}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v12

    int-to-float v12, v12

    const/high16 v13, 0x3f800000    # 1.0f

    mul-float/2addr v12, v13

    .line 3623
    invoke-virtual {v4}, Lcom/oplus/camera/c$a;->f()Landroid/graphics/Bitmap;

    move-result-object v13

    invoke-virtual {v13}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v13

    int-to-float v13, v13

    div-float/2addr v12, v13

    mul-float/2addr v11, v12

    float-to-int v11, v11

    .line 3621
    invoke-virtual {v5, v8, v11}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 3624
    invoke-virtual {v4}, Lcom/oplus/camera/c$a;->a()Landroid/util/Size;

    move-result-object v8

    invoke-virtual {v5, v9, v8}, Landroid/os/Bundle;->putSize(Ljava/lang/String;Landroid/util/Size;)V

    .line 3625
    invoke-virtual {v4}, Lcom/oplus/camera/c$a;->b()[B

    move-result-object v4

    invoke-virtual {v5, v10, v4}, Landroid/os/Bundle;->putByteArray(Ljava/lang/String;[B)V

    :goto_b
    const/4 v8, 0x1

    .line 3628
    invoke-virtual {v5, v6, v8}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 3629
    invoke-virtual {v0}, Lcom/oplus/camera/c$a;->j()I

    move-result v4

    const-string v6, "makeupWidth"

    invoke-virtual {v5, v6, v4}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 3630
    invoke-virtual {v0}, Lcom/oplus/camera/c$a;->k()I

    move-result v4

    const-string v6, "makeupHeight"

    invoke-virtual {v5, v6, v4}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 3631
    invoke-virtual {v0}, Lcom/oplus/camera/c$a;->l()I

    move-result v4

    const-string v6, "makeupStartX"

    invoke-virtual {v5, v6, v4}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 3632
    invoke-virtual {v0}, Lcom/oplus/camera/c$a;->m()I

    move-result v0

    const-string v4, "makeupStartY"

    invoke-virtual {v5, v4, v0}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    goto/16 :goto_d

    :cond_11
    const/4 v4, 0x0

    .line 3635
    invoke-virtual {v5, v6, v4}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    goto/16 :goto_d

    :cond_12
    move v8, v6

    if-eqz v11, :cond_13

    if-ne v14, v11, :cond_14

    :cond_13
    const/4 v8, 0x0

    .line 3644
    :cond_14
    iget-object v0, v1, Lcom/oplus/camera/capmode/BaseMode;->mCameraInterface:Lcom/oplus/camera/capmode/a;

    if-eqz v0, :cond_15

    .line 3645
    invoke-interface {v0}, Lcom/oplus/camera/capmode/a;->aq()Lcom/oplus/camera/ad;

    move-result-object v0

    invoke-virtual {v0}, Lcom/oplus/camera/ad;->c()Ljava/util/Map;

    move-result-object v0

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-interface {v0, v6}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/oplus/camera/c$a;

    goto :goto_c

    :cond_15
    const/4 v0, 0x0

    .line 3647
    :goto_c
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v15, v6}, Lcom/oplus/camera/e;->a(Ljava/lang/String;Ljava/lang/String;)V

    if-nez v0, :cond_17

    .line 3651
    invoke-virtual {v4}, Lcom/oplus/camera/c$a;->i()Lcom/oplus/camera/c$e;

    move-result-object v0

    .line 3652
    iget-object v4, v0, Lcom/oplus/camera/c$e;->a:Landroid/util/Size;

    invoke-static {v4}, Lcom/oplus/camera/c;->a(Landroid/util/Size;)Landroid/util/Size;

    move-result-object v4

    iput-object v4, v0, Lcom/oplus/camera/c$e;->a:Landroid/util/Size;

    .line 3654
    iget-object v4, v1, Lcom/oplus/camera/capmode/BaseMode;->mBaseSloganUtil:Lcom/oplus/camera/c;

    if-nez v4, :cond_16

    .line 3655
    new-instance v4, Lcom/oplus/camera/c;

    iget-object v6, v1, Lcom/oplus/camera/capmode/BaseMode;->mActivity:Landroid/app/Activity;

    iget-object v9, v1, Lcom/oplus/camera/capmode/BaseMode;->mPreferences:Landroid/content/SharedPreferences;

    check-cast v9, Lcom/oplus/camera/ComboPreferences;

    const/4 v10, 0x0

    invoke-direct {v4, v6, v9, v10}, Lcom/oplus/camera/c;-><init>(Landroid/app/Activity;Lcom/oplus/camera/ComboPreferences;I)V

    iput-object v4, v1, Lcom/oplus/camera/capmode/BaseMode;->mBaseSloganUtil:Lcom/oplus/camera/c;

    .line 3658
    :cond_16
    iget-object v4, v1, Lcom/oplus/camera/capmode/BaseMode;->mBaseSloganUtil:Lcom/oplus/camera/c;

    iget-object v6, v1, Lcom/oplus/camera/capmode/BaseMode;->mActivity:Landroid/app/Activity;

    iget-object v9, v1, Lcom/oplus/camera/capmode/BaseMode;->mPreferences:Landroid/content/SharedPreferences;

    check-cast v9, Lcom/oplus/camera/ComboPreferences;

    invoke-virtual {v4, v6, v9, v0}, Lcom/oplus/camera/c;->a(Landroid/content/Context;Lcom/oplus/camera/ComboPreferences;Lcom/oplus/camera/c$e;)Lcom/oplus/camera/c$a;

    move-result-object v0

    .line 3660
    iget-object v4, v1, Lcom/oplus/camera/capmode/BaseMode;->mCameraInterface:Lcom/oplus/camera/capmode/a;

    if-eqz v4, :cond_17

    if-eqz v0, :cond_17

    .line 3661
    invoke-interface {v4}, Lcom/oplus/camera/capmode/a;->aq()Lcom/oplus/camera/ad;

    move-result-object v4

    invoke-virtual {v4}, Lcom/oplus/camera/ad;->c()Ljava/util/Map;

    move-result-object v4

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-interface {v4, v6, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_17
    if-eqz v0, :cond_18

    .line 3666
    invoke-virtual {v0}, Lcom/oplus/camera/c$a;->d()I

    move-result v4

    invoke-virtual {v5, v7, v4}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 3667
    invoke-virtual {v0}, Lcom/oplus/camera/c$a;->e()I

    move-result v0

    invoke-virtual {v5, v3, v0}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 3671
    :cond_18
    :goto_d
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "addCaptureMetaToAPS, borderX: "

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v7}, Landroid/os/Bundle;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v4, ", borderY: "

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3672
    invoke-virtual {v5, v3}, Landroid/os/Bundle;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 3671
    invoke-static {v15, v0}, Lcom/oplus/camera/e;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 3673
    iget-object v0, v1, Lcom/oplus/camera/capmode/BaseMode;->mOneCamera:Lcom/oplus/camera/e/d;

    invoke-virtual/range {p0 .. p0}, Lcom/oplus/camera/capmode/BaseMode;->isSloganOpen()Z

    move-result v3

    invoke-interface {v0, v3, v5}, Lcom/oplus/camera/e/d;->a(ZLandroid/os/Bundle;)V

    goto :goto_e

    .line 3675
    :cond_19
    iget-object v0, v1, Lcom/oplus/camera/capmode/BaseMode;->mOneCamera:Lcom/oplus/camera/e/d;

    const/4 v3, 0x0

    const/4 v4, 0x0

    invoke-interface {v0, v4, v3}, Lcom/oplus/camera/e/d;->a(ZLandroid/os/Bundle;)V

    .line 3678
    :goto_e
    iget-object v0, v1, Lcom/oplus/camera/capmode/BaseMode;->mOneCamera:Lcom/oplus/camera/e/d;

    sget-object v3, Lcom/oplus/ocs/camera/CameraParameter;->QUICK_JPEG:Lcom/oplus/ocs/camera/CameraParameter$PreviewKey;

    invoke-virtual/range {p0 .. p1}, Lcom/oplus/camera/capmode/BaseMode;->getSupportQuickJpeg(Lcom/oplus/camera/e/c;)Z

    move-result v2

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-interface {v0, v3, v2}, Lcom/oplus/camera/e/d;->a(Lcom/oplus/ocs/camera/CameraParameter$PreviewKey;Ljava/lang/Object;)V

    .line 3679
    iget-object v0, v1, Lcom/oplus/camera/capmode/BaseMode;->mOneCamera:Lcom/oplus/camera/e/d;

    sget-object v2, Lcom/oplus/ocs/camera/CameraParameter;->CAPTURE_WITH_DETACH:Lcom/oplus/ocs/camera/CameraParameter$PreviewKey;

    const-string v3, "com.oplus.capture.with.detach"

    .line 3680
    invoke-static {v3}, Lcom/oplus/camera/aps/config/CameraConfig;->getConfigBooleanValue(Ljava/lang/String;)Z

    move-result v3

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    .line 3679
    invoke-interface {v0, v2, v3}, Lcom/oplus/camera/e/d;->a(Lcom/oplus/ocs/camera/CameraParameter$PreviewKey;Ljava/lang/Object;)V

    .line 3681
    iget-object v0, v1, Lcom/oplus/camera/capmode/BaseMode;->mOneCamera:Lcom/oplus/camera/e/d;

    sget-object v2, Lcom/oplus/ocs/camera/CameraParameter;->KEY_NIGHT_OFFLINE_R2Y:Lcom/oplus/ocs/camera/CameraParameter$PreviewKey;

    invoke-virtual/range {p0 .. p0}, Lcom/oplus/camera/capmode/BaseMode;->isInOfflineNightProcess()Z

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v0, v2, v3}, Lcom/oplus/camera/e/d;->a(Lcom/oplus/ocs/camera/CameraParameter$PreviewKey;Ljava/lang/Object;)V

    .line 3683
    iget-object v0, v1, Lcom/oplus/camera/capmode/BaseMode;->mStatePreferenceHelper:Lcom/oplus/camera/algovisualization/j;

    if-nez v0, :cond_1a

    .line 3684
    new-instance v0, Lcom/oplus/camera/algovisualization/j;

    iget-object v2, v1, Lcom/oplus/camera/capmode/BaseMode;->mActivity:Landroid/app/Activity;

    invoke-direct {v0, v2}, Lcom/oplus/camera/algovisualization/j;-><init>(Landroid/app/Activity;)V

    iput-object v0, v1, Lcom/oplus/camera/capmode/BaseMode;->mStatePreferenceHelper:Lcom/oplus/camera/algovisualization/j;

    .line 3687
    :cond_1a
    iget-object v0, v1, Lcom/oplus/camera/capmode/BaseMode;->mStatePreferenceHelper:Lcom/oplus/camera/algovisualization/j;

    invoke-virtual {v0}, Lcom/oplus/camera/algovisualization/j;->b()Z

    move-result v0

    if-eqz v0, :cond_1c

    iget-object v0, v1, Lcom/oplus/camera/capmode/BaseMode;->mStatePreferenceHelper:Lcom/oplus/camera/algovisualization/j;

    .line 3688
    invoke-virtual {v0}, Lcom/oplus/camera/algovisualization/j;->a()Z

    move-result v0

    if-eqz v0, :cond_1c

    iget-object v0, v1, Lcom/oplus/camera/capmode/BaseMode;->mStatePreferenceHelper:Lcom/oplus/camera/algovisualization/j;

    .line 3689
    invoke-virtual {v0}, Lcom/oplus/camera/algovisualization/j;->c()Z

    move-result v0

    if-eqz v0, :cond_1c

    .line 3691
    invoke-static {}, Lcom/oplus/camera/algovisualization/g;->a()J

    move-result-wide v2

    const-wide/16 v4, -0x1

    cmp-long v0, v2, v4

    if-eqz v0, :cond_1b

    .line 3692
    iget-object v0, v1, Lcom/oplus/camera/capmode/BaseMode;->mOneCamera:Lcom/oplus/camera/e/d;

    sget-object v1, Lcom/oplus/ocs/camera/CameraParameter;->SHUTTER_BUTTON_CLICK_TIME:Lcom/oplus/ocs/camera/CameraParameter$PreviewKey;

    .line 3693
    invoke-static {}, Lcom/oplus/camera/algovisualization/g;->a()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    .line 3692
    invoke-interface {v0, v1, v2}, Lcom/oplus/camera/e/d;->a(Lcom/oplus/ocs/camera/CameraParameter$PreviewKey;Ljava/lang/Object;)V

    goto :goto_f

    .line 3695
    :cond_1b
    iget-object v0, v1, Lcom/oplus/camera/capmode/BaseMode;->mOneCamera:Lcom/oplus/camera/e/d;

    sget-object v1, Lcom/oplus/ocs/camera/CameraParameter;->SHUTTER_BUTTON_CLICK_TIME:Lcom/oplus/ocs/camera/CameraParameter$PreviewKey;

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Lcom/oplus/camera/e/d;->a(Lcom/oplus/ocs/camera/CameraParameter$PreviewKey;Ljava/lang/Object;)V

    :cond_1c
    :goto_f
    return-void
.end method

.method public updateControlPanelBgColor(I)V
    .locals 0

    return-void
.end method

.method protected updateCustomBeautyValues([I)V
    .locals 1

    const-string v0, "com.oplus.need.hal.handler.facebeauty"

    .line 6133
    invoke-static {v0}, Lcom/oplus/camera/aps/config/CameraConfig;->getConfigBooleanValue(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 6134
    invoke-static {}, Lcom/oplus/camera/util/Util;->C()Z

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    iget-object p0, p0, Lcom/oplus/camera/capmode/BaseMode;->mOneCamera:Lcom/oplus/camera/e/d;

    if-eqz p0, :cond_1

    if-eqz p1, :cond_1

    .line 6137
    invoke-static {p1}, Lcom/oplus/camera/util/Util;->a([I)[I

    move-result-object p1

    invoke-interface {p0, p1}, Lcom/oplus/camera/e/d;->a([I)V

    :cond_1
    return-void
.end method

.method protected updateDimHintView(Z)V
    .locals 0

    .line 2606
    iget-object p0, p0, Lcom/oplus/camera/capmode/BaseMode;->mCameraUIInterface:Lcom/oplus/camera/ui/CameraUIInterface;

    invoke-interface {p0, p1}, Lcom/oplus/camera/ui/CameraUIInterface;->A(Z)V

    return-void
.end method

.method protected updateEffectMenuNames()V
    .locals 4

    const-string v0, "BaseMode"

    const-string v1, "updateEffectMenuNames"

    .line 4666
    invoke-static {v0, v1}, Lcom/oplus/camera/e;->a(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "pref_filter_process_key"

    .line 4668
    invoke-virtual {p0, v0}, Lcom/oplus/camera/capmode/BaseMode;->getSupportFunction(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_5

    .line 4669
    iget-object v1, p0, Lcom/oplus/camera/capmode/BaseMode;->mEffectMenuNames:Ljava/util/List;

    if-nez v1, :cond_0

    .line 4670
    new-instance v1, Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-direct {v1}, Ljava/util/concurrent/CopyOnWriteArrayList;-><init>()V

    iput-object v1, p0, Lcom/oplus/camera/capmode/BaseMode;->mEffectMenuNames:Ljava/util/List;

    .line 4673
    :cond_0
    iget-object v1, p0, Lcom/oplus/camera/capmode/BaseMode;->mEffectMenuNames:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->clear()V

    const-string v1, "func_face_beauty_process"

    .line 4675
    invoke-virtual {p0, v1}, Lcom/oplus/camera/capmode/BaseMode;->getSupportFunction(Ljava/lang/String;)Z

    move-result v1

    const-string v2, "beauty"

    if-eqz v1, :cond_1

    .line 4676
    iget-object v1, p0, Lcom/oplus/camera/capmode/BaseMode;->mEffectMenuNames:Ljava/util/List;

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 4679
    :cond_1
    invoke-virtual {p0, v0}, Lcom/oplus/camera/capmode/BaseMode;->getSupportFunction(Ljava/lang/String;)Z

    move-result v0

    const-string v1, "filter"

    if-eqz v0, :cond_2

    .line 4680
    iget-object v0, p0, Lcom/oplus/camera/capmode/BaseMode;->mEffectMenuNames:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 4683
    :cond_2
    invoke-virtual {p0}, Lcom/oplus/camera/capmode/BaseMode;->getCurrEffectMenuName()Ljava/lang/String;

    move-result-object v0

    const/4 v3, 0x0

    .line 4686
    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 4687
    invoke-direct {p0}, Lcom/oplus/camera/capmode/BaseMode;->getFaceBeautyMenuIndex()I

    move-result v3

    goto :goto_0

    .line 4688
    :cond_3
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 4689
    invoke-virtual {p0}, Lcom/oplus/camera/capmode/BaseMode;->getCurrFilterIndex()I

    move-result v3

    .line 4692
    :cond_4
    :goto_0
    iget-object v1, p0, Lcom/oplus/camera/capmode/BaseMode;->mCameraInterface:Lcom/oplus/camera/capmode/a;

    const/4 v2, 0x1

    iget-object p0, p0, Lcom/oplus/camera/capmode/BaseMode;->mEffectMenuNames:Ljava/util/List;

    invoke-interface {v1, v2, p0, v0, v3}, Lcom/oplus/camera/capmode/a;->a(ZLjava/util/List;Ljava/lang/String;I)V

    :cond_5
    return-void
.end method

.method protected updateFaceBeautyLevel(IZ)V
    .locals 0

    .line 5003
    iget-object p2, p0, Lcom/oplus/camera/capmode/BaseMode;->mOneCamera:Lcom/oplus/camera/e/d;

    if-eqz p2, :cond_2

    const-string p2, "func_face_beauty_process"

    .line 5004
    invoke-virtual {p0, p2}, Lcom/oplus/camera/capmode/BaseMode;->getSupportFunction(Ljava/lang/String;)Z

    move-result p2

    if-eqz p2, :cond_1

    .line 5005
    invoke-virtual {p0}, Lcom/oplus/camera/capmode/BaseMode;->isMultiVideoMode()Z

    move-result p2

    if-eqz p2, :cond_0

    .line 5006
    iget-object p0, p0, Lcom/oplus/camera/capmode/BaseMode;->mOneCamera:Lcom/oplus/camera/e/d;

    check-cast p0, Lcom/oplus/camera/e/f;

    const/4 p2, 0x2

    invoke-virtual {p0, p1, p2}, Lcom/oplus/camera/e/f;->a(II)V

    goto :goto_0

    .line 5008
    :cond_0
    iget-object p0, p0, Lcom/oplus/camera/capmode/BaseMode;->mOneCamera:Lcom/oplus/camera/e/d;

    invoke-interface {p0, p1}, Lcom/oplus/camera/e/d;->h(I)V

    goto :goto_0

    .line 5011
    :cond_1
    iget-object p0, p0, Lcom/oplus/camera/capmode/BaseMode;->mOneCamera:Lcom/oplus/camera/e/d;

    const/4 p1, 0x0

    invoke-interface {p0, p1}, Lcom/oplus/camera/e/d;->h(I)V

    :cond_2
    :goto_0
    return-void
.end method

.method protected updateFaceBeautyValue(I)Z
    .locals 2

    .line 4987
    iget-object v0, p0, Lcom/oplus/camera/capmode/BaseMode;->mPreferences:Landroid/content/SharedPreferences;

    if-eqz v0, :cond_2

    invoke-virtual {p0}, Lcom/oplus/camera/capmode/BaseMode;->getFaceBeautyKey()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_0

    goto :goto_0

    .line 4993
    :cond_0
    iget-object v0, p0, Lcom/oplus/camera/capmode/BaseMode;->mPreferences:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-virtual {p0}, Lcom/oplus/camera/capmode/BaseMode;->getFaceBeautyKey()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 4995
    iget-object p0, p0, Lcom/oplus/camera/capmode/BaseMode;->mCameraUIInterface:Lcom/oplus/camera/ui/CameraUIInterface;

    if-eqz p0, :cond_1

    .line 4996
    invoke-interface {p0, p1}, Lcom/oplus/camera/ui/CameraUIInterface;->j(I)V

    :cond_1
    const/4 p0, 0x1

    return p0

    .line 4988
    :cond_2
    :goto_0
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "updateFaceBeautyValue, mPreferences: "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/oplus/camera/capmode/BaseMode;->mPreferences:Landroid/content/SharedPreferences;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v0, ", key: "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/oplus/camera/capmode/BaseMode;->getFaceBeautyKey()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "BaseMode"

    invoke-static {p1, p0}, Lcom/oplus/camera/e;->e(Ljava/lang/String;Ljava/lang/String;)V

    const/4 p0, 0x0

    return p0
.end method

.method public updateFilterNoneIndex()V
    .locals 0

    .line 3762
    invoke-virtual {p0}, Lcom/oplus/camera/capmode/BaseMode;->getFilterNoneIndex()I

    move-result p0

    sput p0, Lcom/oplus/camera/ui/preview/a/j;->a:I

    return-void
.end method

.method protected updateFilterParam(I)V
    .locals 5

    .line 5398
    iget-object v0, p0, Lcom/oplus/camera/capmode/BaseMode;->mPreviewEffectProcess:Lcom/oplus/camera/ui/preview/a/t;

    if-eqz v0, :cond_3

    .line 5399
    invoke-virtual {p0}, Lcom/oplus/camera/capmode/BaseMode;->isVividEffectOpen()Z

    move-result v0

    if-eqz v0, :cond_0

    sget v0, Lcom/oplus/camera/ui/preview/a/j;->a:I

    if-eq p1, v0, :cond_0

    .line 5400
    invoke-virtual {p0}, Lcom/oplus/camera/capmode/BaseMode;->forceCloseVividEffect()V

    .line 5403
    :cond_0
    sget v0, Lcom/oplus/camera/ui/preview/a/j;->a:I

    invoke-static {p1, v0}, Ljava/lang/Math;->min(II)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/oplus/camera/capmode/BaseMode;->getFilterType(I)Ljava/lang/String;

    move-result-object v0

    .line 5405
    iget-object v1, p0, Lcom/oplus/camera/capmode/BaseMode;->mOneCamera:Lcom/oplus/camera/e/d;

    if-eqz v1, :cond_2

    .line 5406
    invoke-virtual {p0, v0}, Lcom/oplus/camera/capmode/BaseMode;->isFilterOpen(Ljava/lang/String;)Z

    move-result v2

    const-string v3, "func_filter_vignette"

    .line 5407
    invoke-virtual {p0, v3}, Lcom/oplus/camera/capmode/BaseMode;->getSupportFunction(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 5408
    invoke-virtual {p0, p1}, Lcom/oplus/camera/capmode/BaseMode;->getFilterType(I)Ljava/lang/String;

    move-result-object v3

    const-string v4, "oplus_video_filter_olympus"

    invoke-virtual {v4, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    const/4 v3, 0x1

    goto :goto_0

    :cond_1
    const/4 v3, 0x0

    .line 5406
    :goto_0
    invoke-interface {v1, v0, v2, v3}, Lcom/oplus/camera/e/d;->a(Ljava/lang/String;ZZ)V

    .line 5411
    :cond_2
    iget-object v0, p0, Lcom/oplus/camera/capmode/BaseMode;->mPreviewEffectProcess:Lcom/oplus/camera/ui/preview/a/t;

    invoke-virtual {p0, p1}, Lcom/oplus/camera/capmode/BaseMode;->getFilterType(I)Ljava/lang/String;

    move-result-object p0

    invoke-interface {v0, p0}, Lcom/oplus/camera/ui/preview/a/t;->a(Ljava/lang/String;)V

    goto :goto_1

    .line 5413
    :cond_3
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "updateFilterParam, mPreviewEffectProcess: "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/oplus/camera/capmode/BaseMode;->mPreviewEffectProcess:Lcom/oplus/camera/ui/preview/a/t;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v0, ", mPreferences: "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/oplus/camera/capmode/BaseMode;->mPreferences:Landroid/content/SharedPreferences;

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "BaseMode"

    invoke-static {p1, p0}, Lcom/oplus/camera/e;->f(Ljava/lang/String;Ljava/lang/String;)V

    :goto_1
    return-void
.end method

.method protected updateFlashState(Ljava/lang/String;)V
    .locals 1

    const/4 v0, 0x1

    .line 5109
    invoke-virtual {p0, p1, v0}, Lcom/oplus/camera/capmode/BaseMode;->updateFlashState(Ljava/lang/String;Z)V

    return-void
.end method

.method public updateFlashState(Ljava/lang/String;Z)V
    .locals 11

    const-string v0, "on"

    .line 5113
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const-string v1, "pref_camera_flashmode_key_from_other_app"

    const-string v2, "pref_camera_flashmode_key"

    const/4 v3, 0x1

    const/4 v4, 0x0

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lcom/oplus/camera/capmode/BaseMode;->needUpdateFlashIcon()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 5114
    iget-object v0, p0, Lcom/oplus/camera/capmode/BaseMode;->mCameraUIInterface:Lcom/oplus/camera/ui/CameraUIInterface;

    invoke-interface {v0}, Lcom/oplus/camera/ui/CameraUIInterface;->k()Lcom/oplus/camera/ui/a/a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/oplus/camera/ui/a/a;->b()Z

    move-result v0

    if-eqz v0, :cond_a

    iget-object v0, p0, Lcom/oplus/camera/capmode/BaseMode;->mCameraUIInterface:Lcom/oplus/camera/ui/CameraUIInterface;

    .line 5115
    invoke-interface {v0}, Lcom/oplus/camera/ui/CameraUIInterface;->k()Lcom/oplus/camera/ui/a/a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/oplus/camera/ui/a/a;->d()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/oplus/camera/capmode/BaseMode;->mCameraUIInterface:Lcom/oplus/camera/ui/CameraUIInterface;

    .line 5116
    invoke-interface {v0}, Lcom/oplus/camera/ui/CameraUIInterface;->k()Lcom/oplus/camera/ui/a/a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/oplus/camera/ui/a/a;->d()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_a

    .line 5117
    :cond_0
    iget-object v0, p0, Lcom/oplus/camera/capmode/BaseMode;->mCameraUIInterface:Lcom/oplus/camera/ui/CameraUIInterface;

    invoke-interface {v0, v4, v3, v4}, Lcom/oplus/camera/ui/CameraUIInterface;->a(ZZZ)V

    .line 5118
    iget-object v5, p0, Lcom/oplus/camera/capmode/BaseMode;->mCameraUIInterface:Lcom/oplus/camera/ui/CameraUIInterface;

    const v6, 0x7f1005b1

    const/4 v7, -0x1

    const/4 v8, 0x1

    const/4 v9, 0x1

    const/4 v10, 0x0

    invoke-interface/range {v5 .. v10}, Lcom/oplus/camera/ui/CameraUIInterface;->a(IIZZZ)V

    goto/16 :goto_0

    :cond_1
    const-string v0, "auto"

    .line 5120
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 5121
    invoke-virtual {p0}, Lcom/oplus/camera/capmode/BaseMode;->isOpenFlash()Z

    move-result v0

    if-nez v0, :cond_2

    .line 5122
    iget-object v0, p0, Lcom/oplus/camera/capmode/BaseMode;->mCameraUIInterface:Lcom/oplus/camera/ui/CameraUIInterface;

    invoke-interface {v0, v4, v3, v3}, Lcom/oplus/camera/ui/CameraUIInterface;->a(ZZZ)V

    .line 5125
    :cond_2
    iget-object v0, p0, Lcom/oplus/camera/capmode/BaseMode;->mCameraUIInterface:Lcom/oplus/camera/ui/CameraUIInterface;

    invoke-interface {v0}, Lcom/oplus/camera/ui/CameraUIInterface;->k()Lcom/oplus/camera/ui/a/a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/oplus/camera/ui/a/a;->b()Z

    move-result v0

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/oplus/camera/capmode/BaseMode;->mCameraUIInterface:Lcom/oplus/camera/ui/CameraUIInterface;

    .line 5126
    invoke-interface {v0}, Lcom/oplus/camera/ui/CameraUIInterface;->k()Lcom/oplus/camera/ui/a/a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/oplus/camera/ui/a/a;->d()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_3

    iget-object v0, p0, Lcom/oplus/camera/capmode/BaseMode;->mCameraUIInterface:Lcom/oplus/camera/ui/CameraUIInterface;

    .line 5127
    invoke-interface {v0}, Lcom/oplus/camera/ui/CameraUIInterface;->k()Lcom/oplus/camera/ui/a/a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/oplus/camera/ui/a/a;->d()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 5128
    :cond_3
    iput-boolean v3, p0, Lcom/oplus/camera/capmode/BaseMode;->mbFirstShowAfterAuto:Z

    .line 5129
    iget-object v0, p0, Lcom/oplus/camera/capmode/BaseMode;->mCameraUIInterface:Lcom/oplus/camera/ui/CameraUIInterface;

    invoke-interface {v0, v4, v3, v4}, Lcom/oplus/camera/ui/CameraUIInterface;->a(ZZZ)V

    .line 5130
    iget-object v5, p0, Lcom/oplus/camera/capmode/BaseMode;->mCameraUIInterface:Lcom/oplus/camera/ui/CameraUIInterface;

    const v6, 0x7f1005af

    const/4 v7, -0x1

    const/4 v8, 0x1

    const/4 v9, 0x1

    const/4 v10, 0x0

    invoke-interface/range {v5 .. v10}, Lcom/oplus/camera/ui/CameraUIInterface;->a(IIZZZ)V

    .line 5133
    :cond_4
    iget-boolean v0, p0, Lcom/oplus/camera/capmode/BaseMode;->mbAutoFlash:Z

    if-eqz v0, :cond_a

    .line 5134
    invoke-virtual {p0}, Lcom/oplus/camera/capmode/BaseMode;->needUpdateFlashIcon()Z

    move-result v0

    if-eqz v0, :cond_a

    .line 5135
    invoke-virtual {p0}, Lcom/oplus/camera/capmode/BaseMode;->isOpenFlash()Z

    move-result v0

    if-eqz v0, :cond_a

    .line 5136
    iget-object v1, p0, Lcom/oplus/camera/capmode/BaseMode;->mCameraUIInterface:Lcom/oplus/camera/ui/CameraUIInterface;

    const/4 v2, -0x1

    const v3, 0x7f080411

    const/4 v4, 0x0

    const/4 v5, 0x1

    const/4 v6, 0x0

    invoke-interface/range {v1 .. v6}, Lcom/oplus/camera/ui/CameraUIInterface;->a(IIZZZ)V

    goto/16 :goto_0

    :cond_5
    const-string v0, "torch"

    .line 5139
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_7

    .line 5140
    invoke-virtual {p0}, Lcom/oplus/camera/capmode/BaseMode;->isMicroscopeMode()Z

    move-result v0

    if-nez v0, :cond_a

    invoke-virtual {p0}, Lcom/oplus/camera/capmode/BaseMode;->needUpdateFlashIcon()Z

    move-result v0

    if-eqz v0, :cond_a

    .line 5141
    iget-object v0, p0, Lcom/oplus/camera/capmode/BaseMode;->mCameraUIInterface:Lcom/oplus/camera/ui/CameraUIInterface;

    invoke-interface {v0}, Lcom/oplus/camera/ui/CameraUIInterface;->k()Lcom/oplus/camera/ui/a/a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/oplus/camera/ui/a/a;->b()Z

    move-result v0

    if-eqz v0, :cond_a

    iget-object v0, p0, Lcom/oplus/camera/capmode/BaseMode;->mCameraUIInterface:Lcom/oplus/camera/ui/CameraUIInterface;

    .line 5142
    invoke-interface {v0}, Lcom/oplus/camera/ui/CameraUIInterface;->k()Lcom/oplus/camera/ui/a/a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/oplus/camera/ui/a/a;->d()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_6

    iget-object v0, p0, Lcom/oplus/camera/capmode/BaseMode;->mCameraUIInterface:Lcom/oplus/camera/ui/CameraUIInterface;

    .line 5143
    invoke-interface {v0}, Lcom/oplus/camera/ui/CameraUIInterface;->k()Lcom/oplus/camera/ui/a/a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/oplus/camera/ui/a/a;->d()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_a

    .line 5144
    :cond_6
    iget-object v0, p0, Lcom/oplus/camera/capmode/BaseMode;->mCameraUIInterface:Lcom/oplus/camera/ui/CameraUIInterface;

    invoke-interface {v0, v4, v3, v4}, Lcom/oplus/camera/ui/CameraUIInterface;->a(ZZZ)V

    .line 5145
    iget-object v5, p0, Lcom/oplus/camera/capmode/BaseMode;->mCameraUIInterface:Lcom/oplus/camera/ui/CameraUIInterface;

    const v6, 0x7f1005b2

    const/4 v7, -0x1

    const/4 v8, 0x1

    const/4 v9, 0x1

    const/4 v10, 0x0

    invoke-interface/range {v5 .. v10}, Lcom/oplus/camera/ui/CameraUIInterface;->a(IIZZZ)V

    goto :goto_0

    :cond_7
    const-string v0, "off"

    .line 5150
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_9

    .line 5151
    invoke-virtual {p0, v4}, Lcom/oplus/camera/capmode/BaseMode;->setAutoFlash(Z)V

    .line 5153
    iget-object v0, p0, Lcom/oplus/camera/capmode/BaseMode;->mCameraUIInterface:Lcom/oplus/camera/ui/CameraUIInterface;

    invoke-interface {v0}, Lcom/oplus/camera/ui/CameraUIInterface;->k()Lcom/oplus/camera/ui/a/a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/oplus/camera/ui/a/a;->b()Z

    move-result v0

    if-eqz v0, :cond_9

    iget-object v0, p0, Lcom/oplus/camera/capmode/BaseMode;->mCameraUIInterface:Lcom/oplus/camera/ui/CameraUIInterface;

    .line 5154
    invoke-interface {v0}, Lcom/oplus/camera/ui/CameraUIInterface;->k()Lcom/oplus/camera/ui/a/a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/oplus/camera/ui/a/a;->d()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_8

    iget-object v0, p0, Lcom/oplus/camera/capmode/BaseMode;->mCameraUIInterface:Lcom/oplus/camera/ui/CameraUIInterface;

    .line 5155
    invoke-interface {v0}, Lcom/oplus/camera/ui/CameraUIInterface;->k()Lcom/oplus/camera/ui/a/a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/oplus/camera/ui/a/a;->d()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_9

    .line 5156
    :cond_8
    iget-object v0, p0, Lcom/oplus/camera/capmode/BaseMode;->mCameraUIInterface:Lcom/oplus/camera/ui/CameraUIInterface;

    invoke-interface {v0, v4, v3, v4}, Lcom/oplus/camera/ui/CameraUIInterface;->a(ZZZ)V

    .line 5157
    iget-object v5, p0, Lcom/oplus/camera/capmode/BaseMode;->mCameraUIInterface:Lcom/oplus/camera/ui/CameraUIInterface;

    const v6, 0x7f1005b0

    const/4 v7, -0x1

    const/4 v8, 0x1

    const/4 v9, 0x1

    const/4 v10, 0x0

    invoke-interface/range {v5 .. v10}, Lcom/oplus/camera/ui/CameraUIInterface;->a(IIZZZ)V

    .line 5161
    :cond_9
    invoke-virtual {p0}, Lcom/oplus/camera/capmode/BaseMode;->isOpenHDR()Z

    move-result v0

    if-nez v0, :cond_a

    .line 5162
    iget-object v0, p0, Lcom/oplus/camera/capmode/BaseMode;->mCameraUIInterface:Lcom/oplus/camera/ui/CameraUIInterface;

    invoke-interface {v0, v4, v3, v3}, Lcom/oplus/camera/ui/CameraUIInterface;->a(ZZZ)V

    .line 5166
    :cond_a
    :goto_0
    iget-object v0, p0, Lcom/oplus/camera/capmode/BaseMode;->mOneCamera:Lcom/oplus/camera/e/d;

    if-eqz v0, :cond_b

    .line 5167
    invoke-interface {v0, p1}, Lcom/oplus/camera/e/d;->b(Ljava/lang/String;)V

    if-eqz p2, :cond_b

    .line 5170
    iget-object p0, p0, Lcom/oplus/camera/capmode/BaseMode;->mOneCamera:Lcom/oplus/camera/e/d;

    const/4 p1, 0x0

    invoke-interface {p0, p1}, Lcom/oplus/camera/e/d;->a(Lcom/oplus/camera/e/d$c;)V

    :cond_b
    return-void
.end method

.method public updateGrandTourCityFiltersPosition(Ljava/lang/String;)V
    .locals 0

    return-void
.end method

.method public updateHintView()V
    .locals 0

    return-void
.end method

.method public updateInversePositionRatio(Z)V
    .locals 2

    .line 2675
    sget-object v0, Lcom/oplus/camera/ui/inverse/e;->INS:Lcom/oplus/camera/ui/inverse/e;

    iget-object p0, p0, Lcom/oplus/camera/capmode/BaseMode;->mActivity:Landroid/app/Activity;

    const/high16 v1, 0x3f000000    # 0.5f

    invoke-virtual {v0, p0, v1, p1}, Lcom/oplus/camera/ui/inverse/e;->setPositionRatio(Landroid/content/Context;FZ)V

    return-void
.end method

.method public updateOneCamera(Lcom/oplus/camera/e/d;)V
    .locals 0

    .line 2237
    iput-object p1, p0, Lcom/oplus/camera/capmode/BaseMode;->mOneCamera:Lcom/oplus/camera/e/d;

    return-void
.end method

.method public updatePIMode()V
    .locals 2

    .line 5445
    iget-object v0, p0, Lcom/oplus/camera/capmode/BaseMode;->mOneCamera:Lcom/oplus/camera/e/d;

    if-nez v0, :cond_0

    const-string p0, "BaseMode"

    const-string v0, "updatePIMode failed"

    .line 5446
    invoke-static {p0, v0}, Lcom/oplus/camera/e;->e(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_0
    const-string v0, "com.oplus.feature.pi.ai.support"

    .line 5451
    invoke-static {v0}, Lcom/oplus/camera/aps/config/CameraConfig;->getConfigBooleanValue(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 5452
    invoke-virtual {p0}, Lcom/oplus/camera/capmode/BaseMode;->isPIModeOpen()Z

    move-result v0

    .line 5453
    iget-object p0, p0, Lcom/oplus/camera/capmode/BaseMode;->mOneCamera:Lcom/oplus/camera/e/d;

    sget-object v1, Lcom/oplus/ocs/camera/CameraParameter;->AI_PHOTO:Lcom/oplus/ocs/camera/CameraParameter$PreviewKey;

    if-eqz v0, :cond_1

    const-string v0, "on"

    goto :goto_0

    :cond_1
    const-string v0, "off"

    :goto_0
    invoke-interface {p0, v1, v0}, Lcom/oplus/camera/e/d;->a(Lcom/oplus/ocs/camera/CameraParameter$PreviewKey;Ljava/lang/Object;)V

    :cond_2
    return-void
.end method

.method public updateRatioType()V
    .locals 0

    return-void
.end method

.method public updateRearAicolorEnable(ZZ)V
    .locals 1

    .line 845
    iget-object v0, p0, Lcom/oplus/camera/capmode/BaseMode;->mOneCamera:Lcom/oplus/camera/e/d;

    if-eqz v0, :cond_0

    .line 846
    invoke-interface {v0, p2}, Lcom/oplus/camera/e/d;->r(Z)V

    if-eqz p1, :cond_0

    .line 849
    iget-object p0, p0, Lcom/oplus/camera/capmode/BaseMode;->mOneCamera:Lcom/oplus/camera/e/d;

    const/4 p1, 0x0

    invoke-interface {p0, p1}, Lcom/oplus/camera/e/d;->a(Lcom/oplus/camera/e/d$c;)V

    :cond_0
    return-void
.end method

.method public updateTrackEnable()V
    .locals 6

    const-string v0, "com.oplus.track.focus.support"

    .line 2610
    invoke-static {v0}, Lcom/oplus/camera/aps/config/CameraConfig;->getConfigBooleanValue(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/oplus/camera/capmode/BaseMode;->mOneCamera:Lcom/oplus/camera/e/d;

    if-eqz v0, :cond_3

    const-string v0, "pref_track_focus_key"

    .line 2611
    invoke-virtual {p0, v0}, Lcom/oplus/camera/capmode/BaseMode;->getSupportFunction(Ljava/lang/String;)Z

    move-result v1

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/oplus/camera/capmode/BaseMode;->mPreferences:Landroid/content/SharedPreferences;

    if-eqz v1, :cond_0

    iget-object v4, p0, Lcom/oplus/camera/capmode/BaseMode;->mActivity:Landroid/app/Activity;

    const v5, 0x7f100148

    .line 2614
    invoke-virtual {v4, v5}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v4

    .line 2613
    invoke-interface {v1, v0, v4}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "on"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    move v0, v2

    goto :goto_0

    :cond_0
    move v0, v3

    .line 2615
    :goto_0
    iget-boolean v1, p0, Lcom/oplus/camera/capmode/BaseMode;->mbTrackFocusOpen:Z

    if-eq v0, v1, :cond_1

    goto :goto_1

    :cond_1
    move v2, v3

    .line 2616
    :goto_1
    iput-boolean v0, p0, Lcom/oplus/camera/capmode/BaseMode;->mbTrackFocusOpen:Z

    .line 2617
    iget-object v0, p0, Lcom/oplus/camera/capmode/BaseMode;->mOneCamera:Lcom/oplus/camera/e/d;

    iget-boolean v1, p0, Lcom/oplus/camera/capmode/BaseMode;->mbTrackFocusOpen:Z

    invoke-interface {v0, v1}, Lcom/oplus/camera/e/d;->A(Z)V

    .line 2619
    iget-object v0, p0, Lcom/oplus/camera/capmode/BaseMode;->mCameraInterface:Lcom/oplus/camera/capmode/a;

    if-eqz v0, :cond_3

    .line 2620
    iget-boolean v1, p0, Lcom/oplus/camera/capmode/BaseMode;->mbTrackFocusOpen:Z

    if-eqz v1, :cond_2

    .line 2621
    invoke-virtual {p0}, Lcom/oplus/camera/capmode/BaseMode;->getTrackHalAlgoSize()Landroid/util/Size;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/oplus/camera/capmode/a;->a(Landroid/util/Size;)V

    goto :goto_2

    .line 2623
    :cond_2
    invoke-interface {v0, v3}, Lcom/oplus/camera/capmode/a;->l(Z)V

    :goto_2
    if-eqz v2, :cond_3

    .line 2627
    iget-object v0, p0, Lcom/oplus/camera/capmode/BaseMode;->mCameraInterface:Lcom/oplus/camera/capmode/a;

    iget-boolean p0, p0, Lcom/oplus/camera/capmode/BaseMode;->mbTrackFocusOpen:Z

    invoke-interface {v0, p0}, Lcom/oplus/camera/capmode/a;->m(Z)V

    :cond_3
    return-void
.end method

.method public updateVideoBlurEnable(ZZ)V
    .locals 2

    .line 867
    iget-object v0, p0, Lcom/oplus/camera/capmode/BaseMode;->mOneCamera:Lcom/oplus/camera/e/d;

    if-eqz v0, :cond_0

    .line 868
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "setVideoBlurEnable, submit: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", enable: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "BaseMode"

    invoke-static {v1, v0}, Lcom/oplus/camera/e;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 870
    iget-object v0, p0, Lcom/oplus/camera/capmode/BaseMode;->mOneCamera:Lcom/oplus/camera/e/d;

    invoke-interface {v0, p2}, Lcom/oplus/camera/e/d;->t(Z)V

    if-eqz p1, :cond_0

    .line 873
    iget-object p0, p0, Lcom/oplus/camera/capmode/BaseMode;->mOneCamera:Lcom/oplus/camera/e/d;

    const/4 p1, 0x0

    invoke-interface {p0, p1}, Lcom/oplus/camera/e/d;->a(Lcom/oplus/camera/e/d$c;)V

    :cond_0
    return-void
.end method

.method public updateVideoNeonEnable(ZZ)V
    .locals 2

    .line 855
    iget-object v0, p0, Lcom/oplus/camera/capmode/BaseMode;->mOneCamera:Lcom/oplus/camera/e/d;

    if-eqz v0, :cond_0

    .line 856
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "setVideoNeonEnable, submit: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", enable: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "BaseMode"

    invoke-static {v1, v0}, Lcom/oplus/camera/e;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 858
    iget-object v0, p0, Lcom/oplus/camera/capmode/BaseMode;->mOneCamera:Lcom/oplus/camera/e/d;

    invoke-interface {v0, p2}, Lcom/oplus/camera/e/d;->s(Z)V

    if-eqz p1, :cond_0

    .line 861
    iget-object p0, p0, Lcom/oplus/camera/capmode/BaseMode;->mOneCamera:Lcom/oplus/camera/e/d;

    const/4 p1, 0x0

    invoke-interface {p0, p1}, Lcom/oplus/camera/e/d;->a(Lcom/oplus/camera/e/d$c;)V

    :cond_0
    return-void
.end method

.method public updateViewByEnterCameraType()Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public withinSatMainAndWideRange(F)Z
    .locals 3

    const-string v0, "func_sat_camera"

    .line 3109
    invoke-virtual {p0, v0}, Lcom/oplus/camera/capmode/BaseMode;->getSupportFunction(Ljava/lang/String;)Z

    move-result p0

    const/4 v0, 0x0

    if-nez p0, :cond_0

    return v0

    :cond_0
    const-string p0, "com.oplus.sat.main.zoom.range"

    .line 3113
    invoke-static {p0}, Lcom/oplus/camera/aps/config/CameraConfig;->getConfigFloatArrayValue(Ljava/lang/String;)[F

    move-result-object p0

    if-eqz p0, :cond_2

    .line 3115
    array-length v1, p0

    const/4 v2, 0x2

    if-eq v1, v2, :cond_1

    goto :goto_0

    :cond_1
    const/4 v1, 0x1

    .line 3119
    aget p0, p0, v1

    invoke-static {p1, p0}, Ljava/lang/Float;->compare(FF)I

    move-result p0

    if-gez p0, :cond_2

    move v0, v1

    :cond_2
    :goto_0
    return v0
.end method

.method public withinSatMainRange(F)Z
    .locals 4

    const-string v0, "func_sat_camera"

    .line 3093
    invoke-virtual {p0, v0}, Lcom/oplus/camera/capmode/BaseMode;->getSupportFunction(Ljava/lang/String;)Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    :cond_0
    const-string v0, "com.oplus.sat.main.zoom.range"

    .line 3097
    invoke-static {v0}, Lcom/oplus/camera/aps/config/CameraConfig;->getConfigFloatArrayValue(Ljava/lang/String;)[F

    move-result-object v0

    if-eqz v0, :cond_2

    .line 3099
    array-length v2, v0

    const/4 v3, 0x2

    if-eq v2, v3, :cond_1

    goto :goto_0

    .line 3103
    :cond_1
    aget v2, v0, v1

    invoke-static {p1, v2}, Ljava/lang/Float;->compare(FF)I

    move-result v2

    const/4 v3, 0x1

    if-ltz v2, :cond_2

    aget v0, v0, v3

    .line 3104
    invoke-static {p1, v0}, Ljava/lang/Float;->compare(FF)I

    move-result p1

    if-gez p1, :cond_2

    .line 3105
    invoke-virtual {p0}, Lcom/oplus/camera/capmode/BaseMode;->getZoomAutoMicroOpen()Z

    move-result p0

    if-nez p0, :cond_2

    move v1, v3

    :cond_2
    :goto_0
    return v1
.end method
