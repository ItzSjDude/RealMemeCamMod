.class public Lcom/oplus/camera/capmode/d;
.super Lcom/oplus/camera/capmode/BaseMode;
.source "CommonCapMode.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/oplus/camera/capmode/d$a;
    }
.end annotation


# static fields
.field private static final AIS_BLURLESS_BASE_FRAME_NUM:I = 0x4

.field private static final AIS_MFNR_BASE_FRAME_NUM:I = 0x5

.field private static final BEAUTY3D_FILE_NUM:I = 0x1

.field private static final BEAUTY3D_SCAN_PIC_SIZE_H:I = 0x990

.field private static final BEAUTY3D_SCAN_PIC_SIZE_W:I = 0xcc0

.field private static final BEAUTY3D_SCAN_PREVIEW_SIZE_H:I = 0x438

.field private static final BEAUTY3D_SCAN_PREVIEW_SIZE_W:I = 0x5a0

.field private static final BEAUTY_3D_HEAD_ICON_INDEX:I = -0x1

.field private static final COUNT_DOWN_MIN_TIME:J = 0x64L

.field private static final HIDE_PICTURE_NUM_DELAY:I = 0x1f4

.field private static final IS_OCCLUSION_CODE:I = 0x1

.field private static final MAX_EXPOSURETIME_HAND:J = 0xc8L

.field private static final MAX_EXPOSURETIME_TRIPOD:J = 0x1388L

.field private static final MICRO_OPEN:I = 0x1

.field private static final MICRO_TOAST_SHOW_FROM_HAL:I = 0x1

.field private static final MIN_PLAY_INTERVAL:J = 0x1eL

.field private static final MSG_CODE_HIDE_MICRO_HINT:I = 0x5

.field private static final MSG_CODE_HIDE_PICTURE_NUM:I = 0x1

.field private static final MSG_CODE_SHOW_MICRO_HINT:I = 0x4

.field protected static final NIGHT_ALGO_TRIGGERED_STEP_CAPTURE:I = 0x1

.field protected static final NIGHT_ALGO_TRIGGERED_STEP_IDLE:I = 0x0

.field protected static final NIGHT_ALGO_TRIGGERED_STEP_REPROCESS:I = 0x2

.field private static final NIGHT_PROCESS_HAND_COST_TIME:J = 0xbb8L

.field private static final NIGHT_PROCESS_TRIPOD_COST_TIME:J = 0xdacL

.field private static final TAG:Ljava/lang/String; = "CommonCapMode"

.field private static final UPDATE_COUNTDOWN_TIME_DELAY:J = 0x64L


# instance fields
.field private mBeauty3DManager:Lcom/oplus/camera/d/b;

.field private mBeauty3DScanTime:J

.field private mBurstCaptureBufferLostNum:I

.field private mCaptureStartTime:J

.field private mChangePreviewSize:Landroid/util/Size;

.field private mCountDownTemp:J

.field private mFirstExposureTime:J

.field private mGoogleLensIcon:Lcom/oplus/camera/ui/RotateImageView;

.field private mGoogleLensShouldShow:Z

.field private mLastPreviewSize:Landroid/util/Size;

.field private mLensApi:Lcom/google/lens/sdk/LensApi;

.field private mMainShutterButtonInfo:Lcom/oplus/camera/ui/control/b;

.field private mMemoryManager:Lcom/oplus/camera/capmode/d$a;

.field private mMsgData:Lcom/oplus/camera/statistics/model/ReminderMsgData;

.field private mMyHandler:Landroid/os/Handler;

.field protected mNightAlgoTriggeredStep:I

.field protected mNightCaptureTotalTime:J

.field private mNightClosedCounter:I

.field protected mNightCountDownUI:Lcom/oplus/camera/ui/p;

.field protected mNightProcessTotalTime:J

.field private mNowRearEffectIndex:I

.field private mPlaySoundTime:J

.field private mReceivedPreviewResultNum:I

.field private mReceivedRawResultNum:I

.field private mReceivedSnapNum:I

.field private mSaveBeautyIndexBeforeBurstShot:I

.field private mSaveFilterIndexBeforeBurstShot:I

.field private mSeNightCostTime:I

.field private mbAutoMicroOpen:Z

.field protected mbCaptureRawTimeDone:Z

.field protected mbCheckTakeAnimateDelay:Z

.field protected mbEnableUILater:Z

.field private mbFirstEffectMenuOpened:Z

.field private mbGoogleLensStatusReady:Z

.field private mbHighResolutionChangeRatio:Z

.field private mbNightCheckClosed:Z

.field private mbNightJpegDone:Z

.field protected mbNightShutterCountDown:Z

.field private mbOcclusion:Z

.field private mbPreburstShotCapture:Z

.field protected mbSceneNight:Z

.field private mbShowBlurAnim:Z

.field private mbShowImageOptimizingTips:Z

.field protected mbShowSteadyTips:Z

.field protected mbStopSteadyTips:Z

.field private mbSuperTextOpen:Z

.field protected mbSupportNightPictureTime:Z

.field protected mbTakeAnimateDelay:Z

.field private mbTripodNight:Z


# direct methods
.method public constructor <init>(Landroid/app/Activity;Lcom/oplus/camera/capmode/a;Lcom/oplus/camera/ui/CameraUIInterface;Lcom/oplus/camera/ui/preview/a/t;)V
    .locals 2

    .line 185
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/oplus/camera/capmode/BaseMode;-><init>(Landroid/app/Activity;Lcom/oplus/camera/capmode/a;Lcom/oplus/camera/ui/CameraUIInterface;Lcom/oplus/camera/ui/preview/a/t;)V

    const/4 p1, 0x0

    .line 125
    iput-object p1, p0, Lcom/oplus/camera/capmode/d;->mNightCountDownUI:Lcom/oplus/camera/ui/p;

    const/4 p2, 0x0

    .line 126
    iput-boolean p2, p0, Lcom/oplus/camera/capmode/d;->mbSceneNight:Z

    const/4 p3, 0x1

    .line 127
    iput-boolean p3, p0, Lcom/oplus/camera/capmode/d;->mbCaptureRawTimeDone:Z

    .line 128
    iput-boolean p2, p0, Lcom/oplus/camera/capmode/d;->mbShowSteadyTips:Z

    .line 129
    iput-boolean p2, p0, Lcom/oplus/camera/capmode/d;->mbSupportNightPictureTime:Z

    .line 130
    iput-boolean p2, p0, Lcom/oplus/camera/capmode/d;->mbNightShutterCountDown:Z

    .line 131
    iput p2, p0, Lcom/oplus/camera/capmode/d;->mNightAlgoTriggeredStep:I

    const-wide/16 v0, 0x0

    .line 132
    iput-wide v0, p0, Lcom/oplus/camera/capmode/d;->mNightCaptureTotalTime:J

    .line 133
    iput-wide v0, p0, Lcom/oplus/camera/capmode/d;->mNightProcessTotalTime:J

    .line 135
    iput-boolean p2, p0, Lcom/oplus/camera/capmode/d;->mbCheckTakeAnimateDelay:Z

    .line 136
    iput-boolean p2, p0, Lcom/oplus/camera/capmode/d;->mbTakeAnimateDelay:Z

    .line 137
    iput-boolean p2, p0, Lcom/oplus/camera/capmode/d;->mbEnableUILater:Z

    .line 138
    iput-boolean p3, p0, Lcom/oplus/camera/capmode/d;->mbStopSteadyTips:Z

    .line 140
    iput p2, p0, Lcom/oplus/camera/capmode/d;->mReceivedSnapNum:I

    .line 141
    iput p2, p0, Lcom/oplus/camera/capmode/d;->mBurstCaptureBufferLostNum:I

    .line 142
    new-instance p4, Lcom/oplus/camera/capmode/d$a;

    invoke-direct {p4, p0, p1}, Lcom/oplus/camera/capmode/d$a;-><init>(Lcom/oplus/camera/capmode/d;Lcom/oplus/camera/capmode/d$1;)V

    iput-object p4, p0, Lcom/oplus/camera/capmode/d;->mMemoryManager:Lcom/oplus/camera/capmode/d$a;

    .line 143
    iput-object p1, p0, Lcom/oplus/camera/capmode/d;->mMyHandler:Landroid/os/Handler;

    .line 144
    sget p4, Lcom/oplus/camera/ui/preview/a/j;->a:I

    iput p4, p0, Lcom/oplus/camera/capmode/d;->mSaveFilterIndexBeforeBurstShot:I

    .line 145
    iput p2, p0, Lcom/oplus/camera/capmode/d;->mSaveBeautyIndexBeforeBurstShot:I

    .line 146
    iput p2, p0, Lcom/oplus/camera/capmode/d;->mNightClosedCounter:I

    const/16 p4, 0x7d0

    .line 147
    iput p4, p0, Lcom/oplus/camera/capmode/d;->mSeNightCostTime:I

    .line 148
    iput-wide v0, p0, Lcom/oplus/camera/capmode/d;->mBeauty3DScanTime:J

    .line 149
    iput-boolean p2, p0, Lcom/oplus/camera/capmode/d;->mbNightCheckClosed:Z

    .line 150
    iput-boolean p2, p0, Lcom/oplus/camera/capmode/d;->mbTripodNight:Z

    .line 151
    iput-boolean p3, p0, Lcom/oplus/camera/capmode/d;->mbNightJpegDone:Z

    .line 152
    iput-boolean p2, p0, Lcom/oplus/camera/capmode/d;->mbSuperTextOpen:Z

    .line 153
    iput-boolean p2, p0, Lcom/oplus/camera/capmode/d;->mbAutoMicroOpen:Z

    .line 154
    iput-boolean p2, p0, Lcom/oplus/camera/capmode/d;->mbOcclusion:Z

    .line 155
    iput-boolean p2, p0, Lcom/oplus/camera/capmode/d;->mbFirstEffectMenuOpened:Z

    .line 156
    iput-boolean p2, p0, Lcom/oplus/camera/capmode/d;->mbHighResolutionChangeRatio:Z

    .line 159
    iput-wide v0, p0, Lcom/oplus/camera/capmode/d;->mFirstExposureTime:J

    .line 160
    iput-wide v0, p0, Lcom/oplus/camera/capmode/d;->mCaptureStartTime:J

    .line 161
    iput-wide v0, p0, Lcom/oplus/camera/capmode/d;->mCountDownTemp:J

    .line 162
    iput p2, p0, Lcom/oplus/camera/capmode/d;->mReceivedRawResultNum:I

    .line 163
    iput-wide v0, p0, Lcom/oplus/camera/capmode/d;->mPlaySoundTime:J

    .line 164
    iput p2, p0, Lcom/oplus/camera/capmode/d;->mReceivedPreviewResultNum:I

    .line 165
    sget p4, Lcom/oplus/camera/ui/preview/a/j;->a:I

    iput p4, p0, Lcom/oplus/camera/capmode/d;->mNowRearEffectIndex:I

    .line 167
    iput-object p1, p0, Lcom/oplus/camera/capmode/d;->mBeauty3DManager:Lcom/oplus/camera/d/b;

    .line 169
    iput-boolean p2, p0, Lcom/oplus/camera/capmode/d;->mbShowBlurAnim:Z

    .line 170
    iput-boolean p2, p0, Lcom/oplus/camera/capmode/d;->mbGoogleLensStatusReady:Z

    .line 171
    iput-object p1, p0, Lcom/oplus/camera/capmode/d;->mLensApi:Lcom/google/lens/sdk/LensApi;

    .line 172
    iput-object p1, p0, Lcom/oplus/camera/capmode/d;->mGoogleLensIcon:Lcom/oplus/camera/ui/RotateImageView;

    .line 173
    iput-boolean p3, p0, Lcom/oplus/camera/capmode/d;->mGoogleLensShouldShow:Z

    .line 175
    iput-object p1, p0, Lcom/oplus/camera/capmode/d;->mLastPreviewSize:Landroid/util/Size;

    .line 176
    iput-object p1, p0, Lcom/oplus/camera/capmode/d;->mChangePreviewSize:Landroid/util/Size;

    .line 177
    iput-boolean p2, p0, Lcom/oplus/camera/capmode/d;->mbPreburstShotCapture:Z

    .line 178
    iput-boolean p2, p0, Lcom/oplus/camera/capmode/d;->mbShowImageOptimizingTips:Z

    .line 179
    iput-object p1, p0, Lcom/oplus/camera/capmode/d;->mMsgData:Lcom/oplus/camera/statistics/model/ReminderMsgData;

    .line 186
    invoke-virtual {p0}, Lcom/oplus/camera/capmode/d;->getCurrFilterIndex()I

    move-result p1

    iput p1, p0, Lcom/oplus/camera/capmode/d;->mSaveFilterIndexBeforeBurstShot:I

    .line 187
    invoke-virtual {p0}, Lcom/oplus/camera/capmode/d;->getFaceBeautyCurrIndex()I

    move-result p1

    iput p1, p0, Lcom/oplus/camera/capmode/d;->mSaveBeautyIndexBeforeBurstShot:I

    return-void
.end method

.method static synthetic access$100(Lcom/oplus/camera/capmode/d;)V
    .locals 0

    .line 93
    invoke-direct {p0}, Lcom/oplus/camera/capmode/d;->reportMicroShowReminderToDcs()V

    return-void
.end method

.method static synthetic access$1000(Lcom/oplus/camera/capmode/d;)Lcom/oplus/camera/d/b;
    .locals 0

    .line 93
    iget-object p0, p0, Lcom/oplus/camera/capmode/d;->mBeauty3DManager:Lcom/oplus/camera/d/b;

    return-object p0
.end method

.method static synthetic access$1100(Lcom/oplus/camera/capmode/d;Z)V
    .locals 0

    .line 93
    invoke-direct {p0, p1}, Lcom/oplus/camera/capmode/d;->setGoogleLensIconClickable(Z)V

    return-void
.end method

.method static synthetic access$1200(Lcom/oplus/camera/capmode/d;)V
    .locals 0

    .line 93
    invoke-direct {p0}, Lcom/oplus/camera/capmode/d;->closePIBeforeCapture()V

    return-void
.end method

.method static synthetic access$1302(Lcom/oplus/camera/capmode/d;Z)Z
    .locals 0

    .line 93
    iput-boolean p1, p0, Lcom/oplus/camera/capmode/d;->mbNightJpegDone:Z

    return p1
.end method

.method static synthetic access$1400(Lcom/oplus/camera/capmode/d;)V
    .locals 0

    .line 93
    invoke-direct {p0}, Lcom/oplus/camera/capmode/d;->checkGoogleLensAvailability()V

    return-void
.end method

.method static synthetic access$1502(Lcom/oplus/camera/capmode/d;Z)Z
    .locals 0

    .line 93
    iput-boolean p1, p0, Lcom/oplus/camera/capmode/d;->mbTripodNight:Z

    return p1
.end method

.method static synthetic access$1600(Lcom/oplus/camera/capmode/d;I)V
    .locals 0

    .line 93
    invoke-direct {p0, p1}, Lcom/oplus/camera/capmode/d;->updateShelter(I)V

    return-void
.end method

.method static synthetic access$1702(Lcom/oplus/camera/capmode/d;Z)Z
    .locals 0

    .line 93
    iput-boolean p1, p0, Lcom/oplus/camera/capmode/d;->mbGoogleLensStatusReady:Z

    return p1
.end method

.method static synthetic access$1800(Lcom/oplus/camera/capmode/d;)Lcom/google/lens/sdk/LensApi;
    .locals 0

    .line 93
    iget-object p0, p0, Lcom/oplus/camera/capmode/d;->mLensApi:Lcom/google/lens/sdk/LensApi;

    return-object p0
.end method

.method static synthetic access$1900(Lcom/oplus/camera/capmode/d;)V
    .locals 0

    .line 93
    invoke-direct {p0}, Lcom/oplus/camera/capmode/d;->reportClickMenuToDcs()V

    return-void
.end method

.method static synthetic access$200(Lcom/oplus/camera/capmode/d;Z)V
    .locals 0

    .line 93
    invoke-direct {p0, p1}, Lcom/oplus/camera/capmode/d;->onBeauty3DChange(Z)V

    return-void
.end method

.method static synthetic access$2000(Lcom/oplus/camera/capmode/d;)Z
    .locals 0

    .line 93
    invoke-direct {p0}, Lcom/oplus/camera/capmode/d;->isMoreModeShowing()Z

    move-result p0

    return p0
.end method

.method static synthetic access$300(Lcom/oplus/camera/capmode/d;)J
    .locals 2

    .line 93
    iget-wide v0, p0, Lcom/oplus/camera/capmode/d;->mBeauty3DScanTime:J

    return-wide v0
.end method

.method static synthetic access$302(Lcom/oplus/camera/capmode/d;J)J
    .locals 0

    .line 93
    iput-wide p1, p0, Lcom/oplus/camera/capmode/d;->mBeauty3DScanTime:J

    return-wide p1
.end method

.method static synthetic access$400(Lcom/oplus/camera/capmode/d;)V
    .locals 0

    .line 93
    invoke-direct {p0}, Lcom/oplus/camera/capmode/d;->initBeauty3DManager()V

    return-void
.end method

.method static synthetic access$500(Lcom/oplus/camera/capmode/d;)V
    .locals 0

    .line 93
    invoke-direct {p0}, Lcom/oplus/camera/capmode/d;->hideAllViewsExceptShutter()V

    return-void
.end method

.method static synthetic access$602(Lcom/oplus/camera/capmode/d;Z)Z
    .locals 0

    .line 93
    iput-boolean p1, p0, Lcom/oplus/camera/capmode/d;->mbShowImageOptimizingTips:Z

    return p1
.end method

.method static synthetic access$700(Lcom/oplus/camera/capmode/d;)V
    .locals 0

    .line 93
    invoke-direct {p0}, Lcom/oplus/camera/capmode/d;->startNightCaptureCountDown()V

    return-void
.end method

.method static synthetic access$800(Lcom/oplus/camera/capmode/d;)Lcom/oplus/camera/ui/control/b;
    .locals 0

    .line 93
    iget-object p0, p0, Lcom/oplus/camera/capmode/d;->mMainShutterButtonInfo:Lcom/oplus/camera/ui/control/b;

    return-object p0
.end method

.method static synthetic access$802(Lcom/oplus/camera/capmode/d;Lcom/oplus/camera/ui/control/b;)Lcom/oplus/camera/ui/control/b;
    .locals 0

    .line 93
    iput-object p1, p0, Lcom/oplus/camera/capmode/d;->mMainShutterButtonInfo:Lcom/oplus/camera/ui/control/b;

    return-object p1
.end method

.method static synthetic access$900(Lcom/oplus/camera/capmode/d;)I
    .locals 0

    .line 93
    iget p0, p0, Lcom/oplus/camera/capmode/d;->mSeNightCostTime:I

    return p0
.end method

.method private checkGoogleLensAvailability()V
    .locals 4

    .line 4218
    iget-object v0, p0, Lcom/oplus/camera/capmode/d;->mActivity:Landroid/app/Activity;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 4219
    iget-object v0, p0, Lcom/oplus/camera/capmode/d;->mActivity:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    const/4 v2, 0x0

    const-string v3, "rom_update_info"

    .line 4220
    invoke-virtual {v0, v3, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    goto :goto_0

    :cond_0
    move-object v0, v1

    :goto_0
    if-eqz v0, :cond_1

    const-string v2, "google_lens_switch"

    .line 4224
    invoke-interface {v0, v2, v1}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 4228
    :try_start_0
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception v0

    .line 4230
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    :cond_1
    const/4 v0, 0x1

    .line 4235
    :goto_1
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "checkGoogleLensAvailability, enableGoogleLens: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "CommonCapMode"

    invoke-static {v2, v1}, Lcom/oplus/camera/e;->a(Ljava/lang/String;Ljava/lang/String;)V

    if-eqz v0, :cond_2

    .line 4237
    iget-object v0, p0, Lcom/oplus/camera/capmode/d;->mLensApi:Lcom/google/lens/sdk/LensApi;

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/oplus/camera/capmode/d;->mActivity:Landroid/app/Activity;

    if-eqz v0, :cond_2

    .line 4238
    new-instance v0, Lcom/google/lens/sdk/LensApi;

    iget-object v1, p0, Lcom/oplus/camera/capmode/d;->mActivity:Landroid/app/Activity;

    invoke-virtual {v1}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/google/lens/sdk/LensApi;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/oplus/camera/capmode/d;->mLensApi:Lcom/google/lens/sdk/LensApi;

    .line 4239
    iget-object v0, p0, Lcom/oplus/camera/capmode/d;->mLensApi:Lcom/google/lens/sdk/LensApi;

    new-instance v1, Lcom/oplus/camera/capmode/d$6;

    invoke-direct {v1, p0}, Lcom/oplus/camera/capmode/d$6;-><init>(Lcom/oplus/camera/capmode/d;)V

    invoke-virtual {v0, v1}, Lcom/google/lens/sdk/LensApi;->checkLensAvailability(Lcom/google/lens/sdk/LensApi$LensAvailabilityCallback;)V

    :cond_2
    return-void
.end method

.method private closePIBeforeCapture()V
    .locals 5

    .line 1657
    invoke-virtual {p0}, Lcom/oplus/camera/capmode/d;->isPIModeOpen()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1658
    invoke-virtual {p0}, Lcom/oplus/camera/capmode/d;->getFlashMode()Ljava/lang/String;

    move-result-object v0

    const-string v1, "torch"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-nez v0, :cond_0

    .line 1659
    iget-object v0, p0, Lcom/oplus/camera/capmode/d;->mCameraUIInterface:Lcom/oplus/camera/ui/CameraUIInterface;

    invoke-interface {v0, v2, v1, v1}, Lcom/oplus/camera/ui/CameraUIInterface;->a(ZZZ)V

    :cond_0
    const-string v0, "com.oplus.feature.pi.ai.support"

    .line 1662
    invoke-static {v0}, Lcom/oplus/camera/aps/config/CameraConfig;->getConfigBooleanValue(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 1663
    iget-object v0, p0, Lcom/oplus/camera/capmode/d;->mCameraUIInterface:Lcom/oplus/camera/ui/CameraUIInterface;

    const-string v3, "pref_camera_pi_mode_key"

    const-string v4, "off"

    invoke-interface {v0, v3, v4}, Lcom/oplus/camera/ui/CameraUIInterface;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 1664
    iget-boolean v0, p0, Lcom/oplus/camera/capmode/d;->mbBurstShot:Z

    invoke-virtual {p0, v0, v2, v2, v1}, Lcom/oplus/camera/capmode/d;->onPIChanged(ZZZZ)V

    :cond_1
    return-void
.end method

.method private forceCloseHighResolution()V
    .locals 3

    const-string v0, "pref_camera_high_resolution_key"

    .line 3742
    invoke-virtual {p0, v0}, Lcom/oplus/camera/capmode/d;->getSupportFunction(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    return-void

    .line 3746
    :cond_0
    iget-object v1, p0, Lcom/oplus/camera/capmode/d;->mPreferences:Landroid/content/SharedPreferences;

    if-eqz v1, :cond_1

    .line 3747
    iget-object v1, p0, Lcom/oplus/camera/capmode/d;->mPreferences:Landroid/content/SharedPreferences;

    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    const-string v2, "standard"

    .line 3748
    invoke-interface {v1, v0, v2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 3749
    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 3750
    iget-object p0, p0, Lcom/oplus/camera/capmode/d;->mCameraUIInterface:Lcom/oplus/camera/ui/CameraUIInterface;

    invoke-interface {p0, v0}, Lcom/oplus/camera/ui/CameraUIInterface;->f(Ljava/lang/String;)V

    :cond_1
    return-void
.end method

.method private getDefaultFilterType(I)Ljava/lang/String;
    .locals 0

    .line 3779
    invoke-static {}, Lcom/oplus/camera/ui/preview/a/j;->h()I

    move-result p0

    if-ne p1, p0, :cond_0

    const-string p0, "p4_1.cube.rgb.bin"

    return-object p0

    .line 3781
    :cond_0
    invoke-static {}, Lcom/oplus/camera/ui/preview/a/j;->i()I

    move-result p0

    if-ne p1, p0, :cond_1

    const-string p0, "p4_3.cube.rgb.bin"

    return-object p0

    .line 3783
    :cond_1
    invoke-static {}, Lcom/oplus/camera/ui/preview/a/j;->j()I

    move-result p0

    if-ne p1, p0, :cond_2

    const-string p0, "ByYo3If"

    return-object p0

    .line 3785
    :cond_2
    invoke-static {}, Lcom/oplus/camera/ui/preview/a/j;->k()I

    move-result p0

    if-ne p1, p0, :cond_3

    const-string p0, "rJ5g5vPWG"

    return-object p0

    :cond_3
    const-string p0, "default"

    return-object p0
.end method

.method private getFaceBeautyPreviewSize()Landroid/util/Size;
    .locals 5

    .line 4606
    iget-object v0, p0, Lcom/oplus/camera/capmode/d;->mPreferences:Landroid/content/SharedPreferences;

    if-eqz v0, :cond_4

    .line 4607
    iget-object v0, p0, Lcom/oplus/camera/capmode/d;->mPreferences:Landroid/content/SharedPreferences;

    iget-object p0, p0, Lcom/oplus/camera/capmode/d;->mActivity:Landroid/app/Activity;

    const v1, 0x7f1002be

    .line 4608
    invoke-virtual {p0, v1}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object p0

    const-string v1, "pref_camera_photo_ratio_key"

    .line 4607
    invoke-interface {v0, v1, p0}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    .line 4610
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "getFaceBeautyPreviewSize, pictureSizeType: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "CommonCapMode"

    invoke-static {v1, v0}, Lcom/oplus/camera/e;->a(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "standard"

    .line 4614
    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const-wide v2, 0x3ff5555555555555L    # 1.3333333333333333

    if-nez v0, :cond_3

    const-string v0, "standard_high"

    .line 4615
    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const-string v0, "full"

    .line 4617
    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 4618
    invoke-static {}, Lcom/oplus/camera/util/Util;->X()D

    move-result-wide v2

    goto :goto_0

    :cond_1
    const-string v0, "square"

    .line 4619
    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    const-wide/high16 v2, 0x3ff0000000000000L    # 1.0

    goto :goto_0

    :cond_2
    const-string v0, "16_9"

    .line 4621
    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_3

    const-wide v2, 0x3ffc71c71c71c71cL    # 1.7777777777777777

    :cond_3
    :goto_0
    const-string p0, "com.oplus.feature.facebeauty.previewsize"

    .line 4625
    invoke-static {p0}, Lcom/oplus/camera/aps/config/CameraConfig;->getConfigSizeListValue(Ljava/lang/String;)Ljava/util/List;

    move-result-object p0

    if-eqz p0, :cond_4

    .line 4627
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_4

    .line 4628
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "getFaceBeautyPreviewSize, sizeList: "

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/oplus/camera/e;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 4630
    invoke-static {p0, v2, v3}, Lcom/oplus/camera/util/Util;->a(Ljava/util/List;D)Landroid/util/Size;

    move-result-object p0

    goto :goto_1

    :cond_4
    const/4 p0, 0x0

    :goto_1
    return-object p0
.end method

.method private handleBeauty3DGuideView(Z)V
    .locals 4

    .line 3837
    iget-boolean v0, p0, Lcom/oplus/camera/capmode/d;->mbPaused:Z

    const-string v1, "CommonCapMode"

    if-eqz v0, :cond_0

    const-string p0, "handleBeauty3DGuideView, pause, so return"

    .line 3838
    invoke-static {v1, p0}, Lcom/oplus/camera/e;->f(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    .line 3843
    :cond_0
    iget-object v0, p0, Lcom/oplus/camera/capmode/d;->mBeauty3DManager:Lcom/oplus/camera/d/b;

    if-nez v0, :cond_1

    const-string p0, "handleBeauty3DGuideView, mBeauty3DManager null"

    .line 3844
    invoke-static {v1, p0}, Lcom/oplus/camera/e;->a(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_1
    if-nez p1, :cond_3

    .line 3850
    invoke-virtual {v0}, Lcom/oplus/camera/d/b;->i()Z

    move-result p1

    if-eqz p1, :cond_2

    .line 3851
    iget-object p0, p0, Lcom/oplus/camera/capmode/d;->mBeauty3DManager:Lcom/oplus/camera/d/b;

    invoke-virtual {p0}, Lcom/oplus/camera/d/b;->m()V

    :cond_2
    return-void

    :cond_3
    const-string v0, "key_beauty3d"

    .line 3857
    invoke-virtual {p0, v0}, Lcom/oplus/camera/capmode/d;->getSupportFunction(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_4

    const-string p0, "handleBeauty3DGuideView, not support return"

    .line 3858
    invoke-static {v1, p0}, Lcom/oplus/camera/e;->a(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    .line 3863
    :cond_4
    iget-object v0, p0, Lcom/oplus/camera/capmode/d;->mActivity:Landroid/app/Activity;

    invoke-static {v0}, Lcom/oplus/camera/ui/preview/a/o;->a(Landroid/content/Context;)I

    move-result v0

    const/4 v2, 0x1

    if-ne v0, v2, :cond_5

    const-string p0, "handleBeauty3DGuideView, files exist, return"

    .line 3864
    invoke-static {v1, p0}, Lcom/oplus/camera/e;->a(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    .line 3869
    :cond_5
    iget-object v0, p0, Lcom/oplus/camera/capmode/d;->mCameraInterface:Lcom/oplus/camera/capmode/a;

    invoke-interface {v0}, Lcom/oplus/camera/capmode/a;->i()Z

    move-result v0

    if-eqz v0, :cond_6

    if-eqz p1, :cond_6

    iget-object v0, p0, Lcom/oplus/camera/capmode/d;->mPreferences:Landroid/content/SharedPreferences;

    const-string v3, "key_front_camera_first_switch"

    .line 3871
    invoke-interface {v0, v3, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    if-eqz v0, :cond_6

    const-string p1, "handleBeauty3DGuideView, start showBeauty3DGuide"

    .line 3872
    invoke-static {v1, p1}, Lcom/oplus/camera/e;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 3874
    iget-object p1, p0, Lcom/oplus/camera/capmode/d;->mPreferences:Landroid/content/SharedPreferences;

    invoke-interface {p1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object p1

    const/4 v0, 0x0

    .line 3875
    invoke-interface {p1, v3, v0}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 3876
    invoke-interface {p1}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 3878
    iget-object p1, p0, Lcom/oplus/camera/capmode/d;->mCameraUIInterface:Lcom/oplus/camera/ui/CameraUIInterface;

    invoke-interface {p1}, Lcom/oplus/camera/ui/CameraUIInterface;->F()V

    .line 3879
    iget-object p1, p0, Lcom/oplus/camera/capmode/d;->mBeauty3DManager:Lcom/oplus/camera/d/b;

    iget-object v0, p0, Lcom/oplus/camera/capmode/d;->mOneCamera:Lcom/oplus/camera/e/d;

    invoke-interface {v0}, Lcom/oplus/camera/e/d;->e()Lcom/oplus/camera/e/h;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/oplus/camera/capmode/d;->getPreviewSize(Lcom/oplus/camera/e/h;)Landroid/util/Size;

    move-result-object p0

    invoke-virtual {p1, p0}, Lcom/oplus/camera/d/b;->c(Landroid/util/Size;)V

    goto :goto_0

    .line 3880
    :cond_6
    invoke-virtual {p0}, Lcom/oplus/camera/capmode/d;->isShowingGuideView()Z

    move-result v0

    if-eqz v0, :cond_7

    if-eqz p1, :cond_7

    .line 3881
    iget-object p1, p0, Lcom/oplus/camera/capmode/d;->mCameraUIInterface:Lcom/oplus/camera/ui/CameraUIInterface;

    invoke-interface {p1}, Lcom/oplus/camera/ui/CameraUIInterface;->F()V

    .line 3882
    iget-object p1, p0, Lcom/oplus/camera/capmode/d;->mBeauty3DManager:Lcom/oplus/camera/d/b;

    iget-object v0, p0, Lcom/oplus/camera/capmode/d;->mOneCamera:Lcom/oplus/camera/e/d;

    invoke-interface {v0}, Lcom/oplus/camera/e/d;->e()Lcom/oplus/camera/e/h;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/oplus/camera/capmode/d;->getPreviewSize(Lcom/oplus/camera/e/h;)Landroid/util/Size;

    move-result-object p0

    invoke-virtual {p1, p0}, Lcom/oplus/camera/d/b;->d(Landroid/util/Size;)V

    :cond_7
    :goto_0
    return-void
.end method

.method private hideAllFujiHint()V
    .locals 2

    .line 2102
    iget-object v0, p0, Lcom/oplus/camera/capmode/d;->mCameraUIInterface:Lcom/oplus/camera/ui/CameraUIInterface;

    const v1, 0x7f100079

    invoke-interface {v0, v1}, Lcom/oplus/camera/ui/CameraUIInterface;->a(I)V

    .line 2103
    iget-object v0, p0, Lcom/oplus/camera/capmode/d;->mCameraUIInterface:Lcom/oplus/camera/ui/CameraUIInterface;

    const v1, 0x7f10048c

    invoke-interface {v0, v1}, Lcom/oplus/camera/ui/CameraUIInterface;->a(I)V

    .line 2104
    iget-object v0, p0, Lcom/oplus/camera/capmode/d;->mCameraUIInterface:Lcom/oplus/camera/ui/CameraUIInterface;

    const v1, 0x7f1000b6

    invoke-interface {v0, v1}, Lcom/oplus/camera/ui/CameraUIInterface;->a(I)V

    .line 2105
    iget-object v0, p0, Lcom/oplus/camera/capmode/d;->mCameraUIInterface:Lcom/oplus/camera/ui/CameraUIInterface;

    const v1, 0x7f1000f4

    invoke-interface {v0, v1}, Lcom/oplus/camera/ui/CameraUIInterface;->a(I)V

    .line 2106
    iget-object p0, p0, Lcom/oplus/camera/capmode/d;->mCameraUIInterface:Lcom/oplus/camera/ui/CameraUIInterface;

    const v0, 0x7f1002f5

    invoke-interface {p0, v0}, Lcom/oplus/camera/ui/CameraUIInterface;->a(I)V

    return-void
.end method

.method private hideAllViewsExceptShutter()V
    .locals 5

    .line 4466
    iget-object v0, p0, Lcom/oplus/camera/capmode/d;->mCameraUIInterface:Lcom/oplus/camera/ui/CameraUIInterface;

    invoke-interface {v0}, Lcom/oplus/camera/ui/CameraUIInterface;->A()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 4467
    iget-object v0, p0, Lcom/oplus/camera/capmode/d;->mCameraUIInterface:Lcom/oplus/camera/ui/CameraUIInterface;

    invoke-interface {v0, v1}, Lcom/oplus/camera/ui/CameraUIInterface;->s(Z)V

    goto :goto_0

    .line 4469
    :cond_0
    iget-object v0, p0, Lcom/oplus/camera/capmode/d;->mCameraUIInterface:Lcom/oplus/camera/ui/CameraUIInterface;

    invoke-interface {v0, v1}, Lcom/oplus/camera/ui/CameraUIInterface;->q(Z)V

    .line 4472
    :goto_0
    iget-object v0, p0, Lcom/oplus/camera/capmode/d;->mCameraUIInterface:Lcom/oplus/camera/ui/CameraUIInterface;

    invoke-interface {v0, v1, v1}, Lcom/oplus/camera/ui/CameraUIInterface;->j(ZZ)V

    .line 4473
    iget-object v0, p0, Lcom/oplus/camera/capmode/d;->mCameraUIInterface:Lcom/oplus/camera/ui/CameraUIInterface;

    const/4 v2, 0x4

    invoke-interface {v0, v2}, Lcom/oplus/camera/ui/CameraUIInterface;->g(I)V

    .line 4474
    iget-object v0, p0, Lcom/oplus/camera/capmode/d;->mCameraUIInterface:Lcom/oplus/camera/ui/CameraUIInterface;

    invoke-interface {v0, v2}, Lcom/oplus/camera/ui/CameraUIInterface;->d(I)V

    .line 4475
    iget-object v0, p0, Lcom/oplus/camera/capmode/d;->mCameraUIInterface:Lcom/oplus/camera/ui/CameraUIInterface;

    iget v3, p0, Lcom/oplus/camera/capmode/d;->mCameraId:I

    .line 4476
    invoke-virtual {p0, v3}, Lcom/oplus/camera/capmode/d;->getCameraInfo(I)Lcom/oplus/camera/e/h;

    move-result-object v3

    invoke-virtual {p0, v3}, Lcom/oplus/camera/capmode/d;->getPreviewSize(Lcom/oplus/camera/e/h;)Landroid/util/Size;

    move-result-object v3

    .line 4475
    invoke-static {v3}, Lcom/oplus/camera/util/Util;->c(Landroid/util/Size;)Z

    move-result v3

    invoke-interface {v0, v2, v3}, Lcom/oplus/camera/ui/CameraUIInterface;->b(IZ)V

    .line 4477
    iget-object v0, p0, Lcom/oplus/camera/capmode/d;->mCameraUIInterface:Lcom/oplus/camera/ui/CameraUIInterface;

    invoke-interface {v0, v2}, Lcom/oplus/camera/ui/CameraUIInterface;->f(I)V

    .line 4478
    iget-object v0, p0, Lcom/oplus/camera/capmode/d;->mCameraUIInterface:Lcom/oplus/camera/ui/CameraUIInterface;

    invoke-interface {v0, v1}, Lcom/oplus/camera/ui/CameraUIInterface;->P(Z)V

    .line 4479
    iget-object v0, p0, Lcom/oplus/camera/capmode/d;->mCameraInterface:Lcom/oplus/camera/capmode/a;

    const/4 v3, 0x0

    const/4 v4, 0x1

    invoke-interface {v0, v3, v4, v1}, Lcom/oplus/camera/capmode/a;->a(Landroid/animation/AnimatorListenerAdapter;ZZ)V

    .line 4481
    invoke-virtual {p0}, Lcom/oplus/camera/capmode/d;->isPanelMode()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 4482
    iget-object p0, p0, Lcom/oplus/camera/capmode/d;->mCameraUIInterface:Lcom/oplus/camera/ui/CameraUIInterface;

    invoke-interface {p0, v2, v4}, Lcom/oplus/camera/ui/CameraUIInterface;->a(IZ)V

    goto :goto_1

    .line 4484
    :cond_1
    iget-object p0, p0, Lcom/oplus/camera/capmode/d;->mCameraUIInterface:Lcom/oplus/camera/ui/CameraUIInterface;

    invoke-interface {p0, v2, v4}, Lcom/oplus/camera/ui/CameraUIInterface;->a(II)V

    :goto_1
    return-void
.end method

.method private initBeauty3DManager()V
    .locals 3

    const-string v0, "key_beauty3d"

    .line 360
    invoke-virtual {p0, v0}, Lcom/oplus/camera/capmode/d;->getSupportFunction(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 364
    :cond_0
    iget-object v0, p0, Lcom/oplus/camera/capmode/d;->mBeauty3DManager:Lcom/oplus/camera/d/b;

    if-eqz v0, :cond_1

    return-void

    .line 368
    :cond_1
    new-instance v0, Lcom/oplus/camera/d/b;

    iget-object v1, p0, Lcom/oplus/camera/capmode/d;->mActivity:Landroid/app/Activity;

    new-instance v2, Lcom/oplus/camera/capmode/d$11;

    invoke-direct {v2, p0}, Lcom/oplus/camera/capmode/d$11;-><init>(Lcom/oplus/camera/capmode/d;)V

    invoke-direct {v0, v1, v2}, Lcom/oplus/camera/d/b;-><init>(Landroid/app/Activity;Lcom/oplus/camera/d/d;)V

    iput-object v0, p0, Lcom/oplus/camera/capmode/d;->mBeauty3DManager:Lcom/oplus/camera/d/b;

    .line 479
    iget-object p0, p0, Lcom/oplus/camera/capmode/d;->mBeauty3DManager:Lcom/oplus/camera/d/b;

    invoke-virtual {p0}, Lcom/oplus/camera/d/b;->a()V

    return-void
.end method

.method private initGoogleLensIcon()V
    .locals 3

    .line 4266
    iget-object v0, p0, Lcom/oplus/camera/capmode/d;->mActivity:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v0

    .line 4267
    iget-object v1, p0, Lcom/oplus/camera/capmode/d;->mCameraRootView:Landroid/view/ViewGroup;

    const v2, 0x7f0c00db

    invoke-virtual {v0, v2, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    .line 4269
    iget-object v0, p0, Lcom/oplus/camera/capmode/d;->mCameraRootView:Landroid/view/ViewGroup;

    const v1, 0x7f0901ae

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/oplus/camera/ui/RotateImageView;

    iput-object v0, p0, Lcom/oplus/camera/capmode/d;->mGoogleLensIcon:Lcom/oplus/camera/ui/RotateImageView;

    .line 4270
    iget-object v0, p0, Lcom/oplus/camera/capmode/d;->mGoogleLensIcon:Lcom/oplus/camera/ui/RotateImageView;

    new-instance v1, Lcom/oplus/camera/capmode/d$7;

    invoke-direct {v1, p0}, Lcom/oplus/camera/capmode/d$7;-><init>(Lcom/oplus/camera/capmode/d;)V

    invoke-virtual {v0, v1}, Lcom/oplus/camera/ui/RotateImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method private isAISSnapshotUseMFNR(Z)Z
    .locals 2

    const-string p0, "com.oplus.mfnr.support"

    .line 4546
    invoke-static {p0}, Lcom/oplus/camera/aps/config/CameraConfig;->getConfigBooleanValue(Ljava/lang/String;)Z

    move-result p0

    const/4 v0, 0x0

    if-nez p0, :cond_0

    return v0

    :cond_0
    const-string p0, "com.oplus.aissnapshot.use.mfnr"

    .line 4550
    invoke-static {p0}, Lcom/oplus/camera/aps/config/CameraConfig;->getConfigIntArrayValue(Ljava/lang/String;)[I

    move-result-object p0

    if-nez p0, :cond_1

    return v0

    :cond_1
    const/4 v1, 0x1

    if-eqz p1, :cond_3

    .line 4557
    aget p0, p0, v1

    if-ne v1, p0, :cond_2

    move v0, v1

    :cond_2
    return v0

    .line 4559
    :cond_3
    aget p0, p0, v0

    if-ne v1, p0, :cond_4

    move v0, v1

    :cond_4
    return v0
.end method

.method private isDeviceLocked()Z
    .locals 1

    .line 4349
    iget-object v0, p0, Lcom/oplus/camera/capmode/d;->mActivity:Landroid/app/Activity;

    if-eqz v0, :cond_0

    .line 4350
    iget-object p0, p0, Lcom/oplus/camera/capmode/d;->mActivity:Landroid/app/Activity;

    invoke-virtual {p0}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object p0

    const-string v0, "keyguard"

    .line 4351
    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/app/KeyguardManager;

    if-eqz p0, :cond_0

    .line 4354
    invoke-virtual {p0}, Landroid/app/KeyguardManager;->isDeviceLocked()Z

    move-result p0

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method private isMoreModeShowing()Z
    .locals 1

    .line 4434
    iget-object v0, p0, Lcom/oplus/camera/capmode/d;->mCameraUIInterface:Lcom/oplus/camera/ui/CameraUIInterface;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/oplus/camera/capmode/d;->mCameraUIInterface:Lcom/oplus/camera/ui/CameraUIInterface;

    .line 4435
    invoke-interface {v0}, Lcom/oplus/camera/ui/CameraUIInterface;->R()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object p0, p0, Lcom/oplus/camera/capmode/d;->mCameraUIInterface:Lcom/oplus/camera/ui/CameraUIInterface;

    invoke-interface {p0}, Lcom/oplus/camera/ui/CameraUIInterface;->S()Z

    move-result p0

    if-eqz p0, :cond_1

    :cond_0
    const/4 p0, 0x1

    goto :goto_0

    :cond_1
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method private isTorchMode()Z
    .locals 1

    const-string v0, "pref_camera_flashmode_key"

    .line 4362
    invoke-virtual {p0, v0}, Lcom/oplus/camera/capmode/d;->getSupportFunction(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/oplus/camera/capmode/d;->getRearFlashMode()Ljava/lang/String;

    move-result-object p0

    const-string v0, "torch"

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

.method private onBeauty3DChange(Z)V
    .locals 1

    .line 3887
    iget-object v0, p0, Lcom/oplus/camera/capmode/d;->mCameraInterface:Lcom/oplus/camera/capmode/a;

    if-eqz v0, :cond_0

    .line 3888
    iget-object p0, p0, Lcom/oplus/camera/capmode/d;->mCameraInterface:Lcom/oplus/camera/capmode/a;

    invoke-interface {p0, p1}, Lcom/oplus/camera/capmode/a;->h(Z)V

    :cond_0
    return-void
.end method

.method private onFirstCaptureArrived()V
    .locals 12

    .line 2769
    invoke-virtual {p0}, Lcom/oplus/camera/capmode/d;->isCountDownStarted()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 2775
    :cond_0
    iget-wide v0, p0, Lcom/oplus/camera/capmode/d;->mNightCaptureTotalTime:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-eqz v0, :cond_2

    iget-boolean v0, p0, Lcom/oplus/camera/capmode/d;->mbSupportNightPictureTime:Z

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lcom/oplus/camera/capmode/d;->isTripodNight()Z

    move-result v0

    if-nez v0, :cond_1

    goto :goto_0

    :cond_1
    move-wide v4, v2

    goto :goto_3

    :cond_2
    :goto_0
    const/4 v0, 0x0

    move-wide v4, v2

    .line 2776
    :goto_1
    invoke-virtual {p0}, Lcom/oplus/camera/capmode/d;->getDefaultCaptureNumber()I

    move-result v1

    if-ge v0, v1, :cond_4

    .line 2777
    iget-wide v6, p0, Lcom/oplus/camera/capmode/d;->mFirstExposureTime:J

    long-to-double v6, v6

    const-wide/high16 v8, 0x4000000000000000L    # 2.0

    int-to-float v1, v0

    const/high16 v10, 0x40000000    # 2.0f

    div-float/2addr v1, v10

    float-to-double v10, v1

    invoke-static {v8, v9, v10, v11}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v8

    mul-double/2addr v6, v8

    const-wide v8, 0x412e848000000000L    # 1000000.0

    div-double/2addr v6, v8

    double-to-long v6, v6

    .line 2778
    invoke-virtual {p0}, Lcom/oplus/camera/capmode/d;->isTripodNight()Z

    move-result v1

    if-eqz v1, :cond_3

    const-wide/16 v8, 0x1388

    goto :goto_2

    :cond_3
    const-wide/16 v8, 0xc8

    .line 2779
    :goto_2
    invoke-static {v6, v7, v8, v9}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v6

    add-long/2addr v4, v6

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 2783
    :cond_4
    iput-wide v4, p0, Lcom/oplus/camera/capmode/d;->mNightCaptureTotalTime:J

    .line 2786
    :goto_3
    invoke-virtual {p0}, Lcom/oplus/camera/capmode/d;->isInOfflineNightProcess()Z

    move-result v0

    const-wide/16 v6, 0x3e8

    if-eqz v0, :cond_5

    const-wide/16 v0, 0x64

    goto :goto_4

    :cond_5
    move-wide v0, v6

    .line 2787
    :goto_4
    iget-wide v8, p0, Lcom/oplus/camera/capmode/d;->mNightCaptureTotalTime:J

    long-to-float v8, v8

    long-to-float v9, v0

    div-float/2addr v8, v9

    invoke-static {v8}, Ljava/lang/Math;->round(F)I

    move-result v8

    int-to-long v8, v8

    mul-long/2addr v0, v8

    cmp-long v2, v2, v0

    const-wide/16 v8, 0x1f4

    if-nez v2, :cond_6

    move-wide v0, v6

    goto :goto_5

    :cond_6
    cmp-long v2, v0, v8

    if-gez v2, :cond_7

    move-wide v0, v8

    .line 2795
    :cond_7
    :goto_5
    iget-object v2, p0, Lcom/oplus/camera/capmode/d;->mNightCountDownUI:Lcom/oplus/camera/ui/p;

    invoke-virtual {v2, v0, v1}, Lcom/oplus/camera/ui/p;->a(J)V

    .line 2797
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "onFirstCaptureArrived, nightProcessTotalTime: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v0, ", realTime: "

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v0, ", mNightCaptureTotalTime: "

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v0, p0, Lcom/oplus/camera/capmode/d;->mNightCaptureTotalTime:J

    invoke-virtual {v2, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "CommonCapMode"

    invoke-static {v1, v0}, Lcom/oplus/camera/e;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 2800
    invoke-virtual {p0}, Lcom/oplus/camera/capmode/d;->updateNightCaptureShutter()V

    return-void
.end method

.method private onHighResolution()V
    .locals 4

    const/4 v0, 0x1

    .line 3722
    iput-boolean v0, p0, Lcom/oplus/camera/capmode/d;->mbHighResolutionChangeRatio:Z

    .line 3723
    sget v1, Lcom/oplus/camera/ui/preview/a/j;->a:I

    invoke-virtual {p0, v1}, Lcom/oplus/camera/capmode/d;->onFilterItemChange(I)V

    const/4 v1, 0x0

    .line 3724
    iput-boolean v1, p0, Lcom/oplus/camera/capmode/d;->mbHighResolutionChangeRatio:Z

    .line 3726
    iget-object v2, p0, Lcom/oplus/camera/capmode/d;->mCameraUIInterface:Lcom/oplus/camera/ui/CameraUIInterface;

    invoke-interface {v2}, Lcom/oplus/camera/ui/CameraUIInterface;->A()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-virtual {p0}, Lcom/oplus/camera/capmode/d;->getCurrEffectMenuName()Ljava/lang/String;

    move-result-object v2

    const-string v3, "filter"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 3727
    iget-object v2, p0, Lcom/oplus/camera/capmode/d;->mCameraUIInterface:Lcom/oplus/camera/ui/CameraUIInterface;

    invoke-interface {v2, v0}, Lcom/oplus/camera/ui/CameraUIInterface;->s(Z)V

    .line 3728
    iget-object v2, p0, Lcom/oplus/camera/capmode/d;->mCameraInterface:Lcom/oplus/camera/capmode/a;

    invoke-interface {v2, v0, v1}, Lcom/oplus/camera/capmode/a;->a(ZZ)V

    .line 3729
    iget-object v1, p0, Lcom/oplus/camera/capmode/d;->mCameraInterface:Lcom/oplus/camera/capmode/a;

    invoke-interface {v1, v0}, Lcom/oplus/camera/capmode/a;->d(Z)V

    goto :goto_0

    .line 3731
    :cond_0
    iget-object v1, p0, Lcom/oplus/camera/capmode/d;->mCameraUIInterface:Lcom/oplus/camera/ui/CameraUIInterface;

    const-string v2, "pref_filter_menu"

    invoke-interface {v1, v2}, Lcom/oplus/camera/ui/CameraUIInterface;->g(Ljava/lang/String;)V

    .line 3734
    :goto_0
    iget-object v1, p0, Lcom/oplus/camera/capmode/d;->mCameraUIInterface:Lcom/oplus/camera/ui/CameraUIInterface;

    invoke-interface {v1}, Lcom/oplus/camera/ui/CameraUIInterface;->K()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 3735
    iget-object v1, p0, Lcom/oplus/camera/capmode/d;->mCameraUIInterface:Lcom/oplus/camera/ui/CameraUIInterface;

    invoke-interface {v1, v0, v0, v0, v0}, Lcom/oplus/camera/ui/CameraUIInterface;->a(ZZZZ)V

    .line 3738
    :cond_1
    iget-object p0, p0, Lcom/oplus/camera/capmode/d;->mCameraUIInterface:Lcom/oplus/camera/ui/CameraUIInterface;

    invoke-interface {p0, v0}, Lcom/oplus/camera/ui/CameraUIInterface;->r(Z)V

    return-void
.end method

.method private pauseNightCapture()V
    .locals 0

    .line 4670
    iget-object p0, p0, Lcom/oplus/camera/capmode/d;->mNightCountDownUI:Lcom/oplus/camera/ui/p;

    if-eqz p0, :cond_0

    .line 4671
    invoke-virtual {p0}, Lcom/oplus/camera/ui/p;->b()V

    :cond_0
    return-void
.end method

.method private reportClickMenuToDcs()V
    .locals 2

    .line 4286
    new-instance v0, Lcom/oplus/camera/statistics/model/MenuClickMsgData;

    iget-object v1, p0, Lcom/oplus/camera/capmode/d;->mActivity:Landroid/app/Activity;

    invoke-direct {v0, v1}, Lcom/oplus/camera/statistics/model/MenuClickMsgData;-><init>(Landroid/content/Context;)V

    const/4 v1, 0x0

    .line 4287
    invoke-virtual {v0, v1}, Lcom/oplus/camera/statistics/model/MenuClickMsgData;->buildEvent(Z)V

    .line 4289
    iget-object v1, p0, Lcom/oplus/camera/capmode/d;->mCameraInterface:Lcom/oplus/camera/capmode/a;

    if-eqz v1, :cond_0

    .line 4290
    iget-object v1, p0, Lcom/oplus/camera/capmode/d;->mCameraInterface:Lcom/oplus/camera/capmode/a;

    invoke-interface {v1}, Lcom/oplus/camera/capmode/a;->aw()I

    move-result v1

    iput v1, v0, Lcom/oplus/camera/statistics/model/MenuClickMsgData;->mCameraId:I

    .line 4293
    :cond_0
    invoke-virtual {p0}, Lcom/oplus/camera/capmode/d;->getCameraMode()Ljava/lang/String;

    move-result-object p0

    iput-object p0, v0, Lcom/oplus/camera/statistics/model/MenuClickMsgData;->mCaptureMode:Ljava/lang/String;

    const/16 p0, 0x35

    .line 4294
    iput p0, v0, Lcom/oplus/camera/statistics/model/MenuClickMsgData;->mFuncKeyId:I

    .line 4295
    invoke-virtual {v0}, Lcom/oplus/camera/statistics/model/MenuClickMsgData;->report()V

    return-void
.end method

.method private reportMicroShowReminderToDcs()V
    .locals 3

    .line 3810
    new-instance v0, Lcom/oplus/camera/statistics/model/ReminderMsgData;

    iget-object v1, p0, Lcom/oplus/camera/capmode/d;->mActivity:Landroid/app/Activity;

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2}, Lcom/oplus/camera/statistics/model/ReminderMsgData;-><init>(Landroid/content/Context;Z)V

    iput-object v0, p0, Lcom/oplus/camera/capmode/d;->mMsgData:Lcom/oplus/camera/statistics/model/ReminderMsgData;

    .line 3812
    iget-object v0, p0, Lcom/oplus/camera/capmode/d;->mCameraInterface:Lcom/oplus/camera/capmode/a;

    if-eqz v0, :cond_1

    .line 3813
    iget-object v0, p0, Lcom/oplus/camera/capmode/d;->mCameraInterface:Lcom/oplus/camera/capmode/a;

    invoke-interface {v0}, Lcom/oplus/camera/capmode/a;->i()Z

    move-result v0

    if-nez v0, :cond_0

    .line 3814
    iget-object v0, p0, Lcom/oplus/camera/capmode/d;->mMsgData:Lcom/oplus/camera/statistics/model/ReminderMsgData;

    const/4 v1, 0x2

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/oplus/camera/statistics/model/ReminderMsgData;->mCameraEnterType:Ljava/lang/String;

    .line 3817
    :cond_0
    iget-object v0, p0, Lcom/oplus/camera/capmode/d;->mMsgData:Lcom/oplus/camera/statistics/model/ReminderMsgData;

    iget-object v1, p0, Lcom/oplus/camera/capmode/d;->mCameraInterface:Lcom/oplus/camera/capmode/a;

    invoke-interface {v1}, Lcom/oplus/camera/capmode/a;->aw()I

    move-result v1

    iput v1, v0, Lcom/oplus/camera/statistics/model/ReminderMsgData;->mCameraId:I

    .line 3820
    :cond_1
    iget-object v0, p0, Lcom/oplus/camera/capmode/d;->mMsgData:Lcom/oplus/camera/statistics/model/ReminderMsgData;

    invoke-virtual {p0}, Lcom/oplus/camera/capmode/d;->getCameraMode()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/oplus/camera/statistics/model/ReminderMsgData;->mCaptureMode:Ljava/lang/String;

    .line 3821
    iget-object v0, p0, Lcom/oplus/camera/capmode/d;->mMsgData:Lcom/oplus/camera/statistics/model/ReminderMsgData;

    iget v1, p0, Lcom/oplus/camera/capmode/d;->mOrientation:I

    iput v1, v0, Lcom/oplus/camera/statistics/model/ReminderMsgData;->mOrientation:I

    .line 3822
    iget-object v0, p0, Lcom/oplus/camera/capmode/d;->mMsgData:Lcom/oplus/camera/statistics/model/ReminderMsgData;

    const-string v1, "ai_scene"

    iput-object v1, v0, Lcom/oplus/camera/statistics/model/ReminderMsgData;->mReminderTypeValue:Ljava/lang/String;

    const/16 v1, 0x12

    .line 3823
    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/oplus/camera/statistics/model/ReminderMsgData;->mReminderCodeValue:Ljava/lang/String;

    .line 3824
    iget-object v0, p0, Lcom/oplus/camera/capmode/d;->mMsgData:Lcom/oplus/camera/statistics/model/ReminderMsgData;

    iget-boolean v1, p0, Lcom/oplus/camera/capmode/d;->mbFrontCamera:Z

    if-eqz v1, :cond_2

    const-string v1, "front"

    goto :goto_0

    :cond_2
    const-string v1, "rear"

    :goto_0
    iput-object v1, v0, Lcom/oplus/camera/statistics/model/ReminderMsgData;->mRearOrFront:Ljava/lang/String;

    .line 3825
    iget-object v0, p0, Lcom/oplus/camera/capmode/d;->mMsgData:Lcom/oplus/camera/statistics/model/ReminderMsgData;

    invoke-virtual {v0}, Lcom/oplus/camera/statistics/model/ReminderMsgData;->report()V

    const/4 v0, 0x0

    .line 3826
    iput-object v0, p0, Lcom/oplus/camera/capmode/d;->mMsgData:Lcom/oplus/camera/statistics/model/ReminderMsgData;

    return-void
.end method

.method private resetPIModeAfterCapture()V
    .locals 3

    const-string v0, "com.oplus.feature.pi.ai.support"

    .line 1073
    invoke-static {v0}, Lcom/oplus/camera/aps/config/CameraConfig;->getConfigBooleanValue(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    const-string v0, "pref_camera_pi_mode_key"

    .line 1074
    invoke-virtual {p0, v0}, Lcom/oplus/camera/capmode/d;->getSupportFunction(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    return-void

    .line 1078
    :cond_0
    iget-object v1, p0, Lcom/oplus/camera/capmode/d;->mCameraUIInterface:Lcom/oplus/camera/ui/CameraUIInterface;

    const/4 v2, 0x0

    invoke-interface {v1, v0, v2}, Lcom/oplus/camera/ui/CameraUIInterface;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 1080
    invoke-virtual {p0}, Lcom/oplus/camera/capmode/d;->isPIModeOpen()Z

    move-result v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    invoke-virtual {p0, v2, v0, v2, v1}, Lcom/oplus/camera/capmode/d;->onPIChanged(ZZZZ)V

    :cond_1
    return-void
.end method

.method private setGoogleLensIconClickable(Z)V
    .locals 0

    .line 4343
    iget-object p0, p0, Lcom/oplus/camera/capmode/d;->mGoogleLensIcon:Lcom/oplus/camera/ui/RotateImageView;

    if-eqz p0, :cond_0

    .line 4344
    invoke-virtual {p0, p1}, Lcom/oplus/camera/ui/RotateImageView;->setClickable(Z)V

    :cond_0
    return-void
.end method

.method private showOutPreviewGuide()Z
    .locals 1

    .line 4399
    iget-object v0, p0, Lcom/oplus/camera/capmode/d;->mCameraUIInterface:Lcom/oplus/camera/ui/CameraUIInterface;

    if-eqz v0, :cond_0

    iget-object p0, p0, Lcom/oplus/camera/capmode/d;->mCameraUIInterface:Lcom/oplus/camera/ui/CameraUIInterface;

    invoke-interface {p0}, Lcom/oplus/camera/ui/CameraUIInterface;->be()Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method private startNightCaptureCountDown()V
    .locals 5

    .line 4664
    iget v0, p0, Lcom/oplus/camera/capmode/d;->mSeNightCostTime:I

    int-to-long v1, v0

    const-wide/16 v3, 0x64

    cmp-long v1, v1, v3

    if-ltz v1, :cond_0

    int-to-float v0, v0

    const/high16 v1, 0x447a0000    # 1000.0f

    div-float/2addr v0, v1

    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    move-result v0

    mul-int/lit16 v0, v0, 0x3e8

    int-to-long v3, v0

    :cond_0
    iput-wide v3, p0, Lcom/oplus/camera/capmode/d;->mNightCaptureTotalTime:J

    .line 4665
    iget-object v0, p0, Lcom/oplus/camera/capmode/d;->mNightCountDownUI:Lcom/oplus/camera/ui/p;

    iget-wide v1, p0, Lcom/oplus/camera/capmode/d;->mNightCaptureTotalTime:J

    invoke-virtual {v0, v1, v2}, Lcom/oplus/camera/ui/p;->a(J)V

    .line 4666
    invoke-virtual {p0}, Lcom/oplus/camera/capmode/d;->updateNightCaptureShutter()V

    return-void
.end method

.method private updateFujiFilterHint(Ljava/lang/String;)V
    .locals 12

    .line 2066
    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    move-result v0

    const/4 v1, 0x5

    const/4 v2, 0x4

    const/4 v3, 0x3

    const/4 v4, 0x2

    const/4 v5, 0x1

    sparse-switch v0, :sswitch_data_0

    goto :goto_0

    :sswitch_0
    const-string v0, "default"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x0

    goto :goto_1

    :sswitch_1
    const-string v0, "type_fuji_velvia"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    move p1, v4

    goto :goto_1

    :sswitch_2
    const-string v0, "type_fuji_provia"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    move p1, v1

    goto :goto_1

    :sswitch_3
    const-string v0, "type_fuji_chrome"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    move p1, v2

    goto :goto_1

    :sswitch_4
    const-string v0, "type_fuji_astia"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    move p1, v3

    goto :goto_1

    :sswitch_5
    const-string v0, "type_fuji_acros"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    move p1, v5

    goto :goto_1

    :cond_0
    :goto_0
    const/4 p1, -0x1

    :goto_1
    if-eqz p1, :cond_6

    if-eq p1, v5, :cond_5

    if-eq p1, v4, :cond_4

    if-eq p1, v3, :cond_3

    if-eq p1, v2, :cond_2

    if-eq p1, v1, :cond_1

    goto :goto_2

    .line 2092
    :cond_1
    iget-object v6, p0, Lcom/oplus/camera/capmode/d;->mCameraUIInterface:Lcom/oplus/camera/ui/CameraUIInterface;

    const v7, 0x7f1002f5

    const/4 v8, -0x1

    const/4 v9, 0x1

    const/4 v10, 0x0

    const/4 v11, 0x0

    invoke-interface/range {v6 .. v11}, Lcom/oplus/camera/ui/CameraUIInterface;->a(IIZZZ)V

    goto :goto_2

    .line 2087
    :cond_2
    iget-object v0, p0, Lcom/oplus/camera/capmode/d;->mCameraUIInterface:Lcom/oplus/camera/ui/CameraUIInterface;

    const v1, 0x7f1000f4

    const/4 v2, -0x1

    const/4 v3, 0x1

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-interface/range {v0 .. v5}, Lcom/oplus/camera/ui/CameraUIInterface;->a(IIZZZ)V

    goto :goto_2

    .line 2082
    :cond_3
    iget-object v6, p0, Lcom/oplus/camera/capmode/d;->mCameraUIInterface:Lcom/oplus/camera/ui/CameraUIInterface;

    const v7, 0x7f1000b6

    const/4 v8, -0x1

    const/4 v9, 0x1

    const/4 v10, 0x0

    const/4 v11, 0x0

    invoke-interface/range {v6 .. v11}, Lcom/oplus/camera/ui/CameraUIInterface;->a(IIZZZ)V

    goto :goto_2

    .line 2077
    :cond_4
    iget-object v0, p0, Lcom/oplus/camera/capmode/d;->mCameraUIInterface:Lcom/oplus/camera/ui/CameraUIInterface;

    const v1, 0x7f10048c

    const/4 v2, -0x1

    const/4 v3, 0x1

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-interface/range {v0 .. v5}, Lcom/oplus/camera/ui/CameraUIInterface;->a(IIZZZ)V

    goto :goto_2

    .line 2072
    :cond_5
    iget-object v6, p0, Lcom/oplus/camera/capmode/d;->mCameraUIInterface:Lcom/oplus/camera/ui/CameraUIInterface;

    const v7, 0x7f100079

    const/4 v8, -0x1

    const/4 v9, 0x1

    const/4 v10, 0x0

    const/4 v11, 0x0

    invoke-interface/range {v6 .. v11}, Lcom/oplus/camera/ui/CameraUIInterface;->a(IIZZZ)V

    goto :goto_2

    .line 2068
    :cond_6
    invoke-direct {p0}, Lcom/oplus/camera/capmode/d;->hideAllFujiHint()V

    :goto_2
    return-void

    :sswitch_data_0
    .sparse-switch
        -0x6da16c98 -> :sswitch_5
        -0x6d9a1ff2 -> :sswitch_4
        -0x42dbfffa -> :sswitch_3
        -0x2c215833 -> :sswitch_2
        -0x229cd323 -> :sswitch_1
        0x5c13d641 -> :sswitch_0
    .end sparse-switch
.end method

.method private updateMenuWithMono(Z)V
    .locals 2

    .line 3683
    iget-object v0, p0, Lcom/oplus/camera/capmode/d;->mActivity:Landroid/app/Activity;

    new-instance v1, Lcom/oplus/camera/capmode/d$4;

    invoke-direct {v1, p0, p1}, Lcom/oplus/camera/capmode/d$4;-><init>(Lcom/oplus/camera/capmode/d;Z)V

    invoke-virtual {v0, v1}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method private updateMonoFilterEffect(Landroid/hardware/camera2/CaptureResult;)V
    .locals 2

    .line 3650
    iget-object v0, p0, Lcom/oplus/camera/capmode/d;->mActivity:Landroid/app/Activity;

    if-nez v0, :cond_0

    return-void

    .line 3654
    :cond_0
    iget-object v0, p0, Lcom/oplus/camera/capmode/d;->mOneCamera:Lcom/oplus/camera/e/d;

    sget-object v1, Lcom/oplus/camera/e/b;->aa:Landroid/hardware/camera2/CaptureResult$Key;

    invoke-interface {v0, v1, p1}, Lcom/oplus/camera/e/d;->a(Landroid/hardware/camera2/CaptureResult$Key;Landroid/hardware/camera2/CaptureResult;)[I

    move-result-object p1

    .line 3656
    iget-object v0, p0, Lcom/oplus/camera/capmode/d;->mActivity:Landroid/app/Activity;

    new-instance v1, Lcom/oplus/camera/capmode/d$3;

    invoke-direct {v1, p0, p1}, Lcom/oplus/camera/capmode/d$3;-><init>(Lcom/oplus/camera/capmode/d;[I)V

    invoke-virtual {v0, v1}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method private updateNowRearEffectIndex()V
    .locals 3

    .line 3673
    iget-boolean v0, p0, Lcom/oplus/camera/capmode/d;->mbFrontCamera:Z

    if-nez v0, :cond_0

    .line 3674
    iget-object v0, p0, Lcom/oplus/camera/capmode/d;->mPreferences:Landroid/content/SharedPreferences;

    sget v1, Lcom/oplus/camera/ui/preview/a/j;->a:I

    const-string v2, "key_filter_index"

    invoke-interface {v0, v2, v1}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/oplus/camera/capmode/d;->mNowRearEffectIndex:I

    :cond_0
    const-string v0, "key_photo_mode_filter"

    .line 3677
    invoke-virtual {p0, v0}, Lcom/oplus/camera/capmode/d;->getSupportFunction(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 3678
    invoke-virtual {p0}, Lcom/oplus/camera/capmode/d;->getCurrFilterIndex()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/oplus/camera/capmode/d;->isMonoIndex(I)Z

    move-result v0

    invoke-direct {p0, v0}, Lcom/oplus/camera/capmode/d;->updateMenuWithMono(Z)V

    :cond_1
    return-void
.end method

.method private updateSeNightCaptureTime(Lcom/oplus/camera/aps/util/CameraApsDecision;)V
    .locals 0

    if-eqz p1, :cond_0

    .line 4693
    iget p1, p1, Lcom/oplus/camera/aps/util/CameraApsDecision;->mNightTotalExpTime:I

    iput p1, p0, Lcom/oplus/camera/capmode/d;->mSeNightCostTime:I

    :cond_0
    return-void
.end method

.method private updateShelter(I)V
    .locals 7

    .line 3755
    iget-object v0, p0, Lcom/oplus/camera/capmode/d;->mPreviewEffectProcess:Lcom/oplus/camera/ui/preview/a/t;

    if-nez v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x1

    if-ne v0, p1, :cond_1

    .line 3763
    iput-boolean v0, p0, Lcom/oplus/camera/capmode/d;->mbOcclusion:Z

    .line 3764
    iget-object v1, p0, Lcom/oplus/camera/capmode/d;->mCameraUIInterface:Lcom/oplus/camera/ui/CameraUIInterface;

    const v2, 0x7f1000e7

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x1

    invoke-interface/range {v1 .. v6}, Lcom/oplus/camera/ui/CameraUIInterface;->a(IIZZZ)V

    const-string p1, "default"

    goto :goto_0

    .line 3766
    :cond_1
    invoke-virtual {p0}, Lcom/oplus/camera/capmode/d;->getCurrFilterIndex()I

    move-result p1

    invoke-direct {p0, p1}, Lcom/oplus/camera/capmode/d;->getDefaultFilterType(I)Ljava/lang/String;

    move-result-object p1

    .line 3768
    iget-boolean v1, p0, Lcom/oplus/camera/capmode/d;->mbOcclusion:Z

    if-eqz v1, :cond_2

    const/4 v1, 0x0

    .line 3769
    iput-boolean v1, p0, Lcom/oplus/camera/capmode/d;->mbOcclusion:Z

    .line 3770
    iget-object v2, p0, Lcom/oplus/camera/capmode/d;->mCameraUIInterface:Lcom/oplus/camera/ui/CameraUIInterface;

    invoke-interface {v2, v0, v1, v0}, Lcom/oplus/camera/ui/CameraUIInterface;->a(ZZZ)V

    .line 3774
    :cond_2
    :goto_0
    iget-object v0, p0, Lcom/oplus/camera/capmode/d;->mPreviewEffectProcess:Lcom/oplus/camera/ui/preview/a/t;

    invoke-interface {v0, p1}, Lcom/oplus/camera/ui/preview/a/t;->a(Ljava/lang/String;)V

    .line 3775
    iget-object v0, p0, Lcom/oplus/camera/capmode/d;->mCameraUIInterface:Lcom/oplus/camera/ui/CameraUIInterface;

    invoke-virtual {p0}, Lcom/oplus/camera/capmode/d;->getCurrFilterIndex()I

    move-result p0

    invoke-interface {v0, p0, p1}, Lcom/oplus/camera/ui/CameraUIInterface;->a(ILjava/lang/String;)V

    return-void
.end method


# virtual methods
.method public cameraIdChanged(I)V
    .locals 2

    const-string v0, "CommonCapMode"

    const-string v1, "onCameraIdChanged"

    .line 1732
    invoke-static {v0, v1}, Lcom/oplus/camera/e;->f(Ljava/lang/String;Ljava/lang/String;)V

    .line 1734
    invoke-super {p0, p1}, Lcom/oplus/camera/capmode/BaseMode;->cameraIdChanged(I)V

    const/4 p1, 0x0

    .line 1735
    iput-boolean p1, p0, Lcom/oplus/camera/capmode/d;->mbNightCheckClosed:Z

    .line 1736
    iput p1, p0, Lcom/oplus/camera/capmode/d;->mReceivedRawResultNum:I

    .line 1737
    iput-boolean p1, p0, Lcom/oplus/camera/capmode/d;->mbCheckTakeAnimateDelay:Z

    .line 1738
    iput-boolean p1, p0, Lcom/oplus/camera/capmode/d;->mbTakeAnimateDelay:Z

    .line 1740
    invoke-direct {p0}, Lcom/oplus/camera/capmode/d;->updateNowRearEffectIndex()V

    .line 1742
    iget-object p1, p0, Lcom/oplus/camera/capmode/d;->mActivity:Landroid/app/Activity;

    if-eqz p1, :cond_0

    .line 1743
    iget-object p1, p0, Lcom/oplus/camera/capmode/d;->mActivity:Landroid/app/Activity;

    new-instance v0, Lcom/oplus/camera/capmode/d$12;

    invoke-direct {v0, p0}, Lcom/oplus/camera/capmode/d$12;-><init>(Lcom/oplus/camera/capmode/d;)V

    invoke-virtual {p1, v0}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    :cond_0
    return-void
.end method

.method public changeModeAllViewWhenAnimation(IZ)V
    .locals 5

    .line 3196
    invoke-super {p0, p1, p2}, Lcom/oplus/camera/capmode/BaseMode;->changeModeAllViewWhenAnimation(IZ)V

    const/4 v0, 0x2

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eq p1, v0, :cond_7

    const/4 v0, 0x3

    if-eq p1, v0, :cond_4

    const/4 v0, 0x5

    if-eq p1, v0, :cond_4

    const/16 v0, 0x12

    if-eq p1, v0, :cond_2

    const/16 v0, 0x14

    if-eq p1, v0, :cond_1

    packed-switch p1, :pswitch_data_0

    goto/16 :goto_2

    .line 3290
    :pswitch_0
    invoke-virtual {p0}, Lcom/oplus/camera/capmode/d;->showBeauty3DView()V

    goto/16 :goto_2

    .line 3283
    :pswitch_1
    iget-object p0, p0, Lcom/oplus/camera/capmode/d;->mBeauty3DManager:Lcom/oplus/camera/d/b;

    if-eqz p0, :cond_e

    .line 3284
    invoke-virtual {p0}, Lcom/oplus/camera/d/b;->j()V

    goto/16 :goto_2

    .line 3279
    :pswitch_2
    invoke-direct {p0, p2}, Lcom/oplus/camera/capmode/d;->handleBeauty3DGuideView(Z)V

    goto/16 :goto_2

    .line 3200
    :pswitch_3
    iget-object p1, p0, Lcom/oplus/camera/capmode/d;->mBeauty3DManager:Lcom/oplus/camera/d/b;

    if-eqz p1, :cond_e

    if-eqz p2, :cond_0

    .line 3201
    invoke-virtual {p0}, Lcom/oplus/camera/capmode/d;->isShowBeauty3DEditChooseMenu()Z

    move-result p1

    if-eqz p1, :cond_0

    .line 3202
    iget-object p1, p0, Lcom/oplus/camera/capmode/d;->mBeauty3DManager:Lcom/oplus/camera/d/b;

    invoke-virtual {p1, v2}, Lcom/oplus/camera/d/b;->e(Z)V

    .line 3203
    iget-object p0, p0, Lcom/oplus/camera/capmode/d;->mBeauty3DManager:Lcom/oplus/camera/d/b;

    invoke-virtual {p0}, Lcom/oplus/camera/d/b;->p()V

    goto/16 :goto_2

    .line 3205
    :cond_0
    iget-object p0, p0, Lcom/oplus/camera/capmode/d;->mBeauty3DManager:Lcom/oplus/camera/d/b;

    invoke-virtual {p0}, Lcom/oplus/camera/d/b;->q()V

    goto/16 :goto_2

    .line 3294
    :cond_1
    invoke-virtual {p0}, Lcom/oplus/camera/capmode/d;->getCurrFilterIndex()I

    move-result p1

    invoke-virtual {p0, p1}, Lcom/oplus/camera/capmode/d;->isMonoIndex(I)Z

    move-result p1

    invoke-direct {p0, p1}, Lcom/oplus/camera/capmode/d;->updateMenuWithMono(Z)V

    .line 3295
    iget-object p0, p0, Lcom/oplus/camera/capmode/d;->mCameraUIInterface:Lcom/oplus/camera/ui/CameraUIInterface;

    invoke-interface {p0, v2, v1, v2}, Lcom/oplus/camera/ui/CameraUIInterface;->a(ZZZ)V

    goto/16 :goto_2

    .line 3249
    :cond_2
    invoke-direct {p0, v1}, Lcom/oplus/camera/capmode/d;->handleBeauty3DGuideView(Z)V

    .line 3251
    invoke-virtual {p0}, Lcom/oplus/camera/capmode/d;->isGoogleLensEnable()Z

    move-result p1

    if-eqz p1, :cond_e

    if-eqz p2, :cond_3

    .line 3253
    invoke-virtual {p0, v2}, Lcom/oplus/camera/capmode/d;->showGoogleLensIcon(Z)V

    goto/16 :goto_2

    .line 3255
    :cond_3
    invoke-virtual {p0, v2}, Lcom/oplus/camera/capmode/d;->hideGoogleLensIcon(Z)V

    goto/16 :goto_2

    .line 3264
    :cond_4
    iget-object p1, p0, Lcom/oplus/camera/capmode/d;->mBeauty3DManager:Lcom/oplus/camera/d/b;

    if-eqz p1, :cond_5

    .line 3265
    invoke-virtual {p1}, Lcom/oplus/camera/d/b;->q()V

    .line 3268
    :cond_5
    invoke-virtual {p0}, Lcom/oplus/camera/capmode/d;->isGoogleLensEnable()Z

    move-result p1

    if-eqz p1, :cond_e

    if-eqz p2, :cond_6

    .line 3270
    invoke-virtual {p0, v2}, Lcom/oplus/camera/capmode/d;->showGoogleLensIcon(Z)V

    goto/16 :goto_2

    .line 3272
    :cond_6
    invoke-virtual {p0, v2}, Lcom/oplus/camera/capmode/d;->hideGoogleLensIcon(Z)V

    goto/16 :goto_2

    :cond_7
    const-string p1, "key_bubble_type_add_beuty3d"

    .line 3212
    invoke-virtual {p0, p1}, Lcom/oplus/camera/capmode/d;->isBubbleOpen(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_9

    const-string p1, "key_beauty3d"

    .line 3213
    invoke-virtual {p0, p1}, Lcom/oplus/camera/capmode/d;->getSupportFunction(Ljava/lang/String;)Z

    move-result p1

    const/4 v0, 0x6

    if-eqz p1, :cond_8

    .line 3214
    invoke-virtual {p0}, Lcom/oplus/camera/capmode/d;->isShowBeauty3D()Z

    move-result p1

    if-nez p1, :cond_8

    iget-object p1, p0, Lcom/oplus/camera/capmode/d;->mCameraUIInterface:Lcom/oplus/camera/ui/CameraUIInterface;

    .line 3215
    invoke-interface {p1}, Lcom/oplus/camera/ui/CameraUIInterface;->A()Z

    move-result p1

    if-eqz p1, :cond_8

    .line 3216
    invoke-virtual {p0}, Lcom/oplus/camera/capmode/d;->getCurrEffectMenuName()Ljava/lang/String;

    move-result-object p1

    const-string v3, "beauty"

    invoke-virtual {v3, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_8

    iget-object p1, p0, Lcom/oplus/camera/capmode/d;->mActivity:Landroid/app/Activity;

    .line 3217
    invoke-static {p1}, Lcom/oplus/camera/ui/preview/a/o;->a(Landroid/content/Context;)I

    move-result p1

    if-nez p1, :cond_8

    .line 3219
    iget-object p1, p0, Lcom/oplus/camera/capmode/d;->mCameraUIInterface:Lcom/oplus/camera/ui/CameraUIInterface;

    const/4 v1, 0x0

    invoke-virtual {p0, v0}, Lcom/oplus/camera/capmode/d;->getBubbleOffsetX(I)I

    move-result v3

    invoke-virtual {p0, v0}, Lcom/oplus/camera/capmode/d;->getBubbleOffsetY(I)I

    move-result v4

    invoke-interface {p1, v1, v0, v3, v4}, Lcom/oplus/camera/ui/CameraUIInterface;->a(Landroid/view/View;III)V

    goto :goto_0

    .line 3221
    :cond_8
    iget-object p1, p0, Lcom/oplus/camera/capmode/d;->mCameraUIInterface:Lcom/oplus/camera/ui/CameraUIInterface;

    invoke-interface {p1, v0, v1}, Lcom/oplus/camera/ui/CameraUIInterface;->f(IZ)V

    .line 3225
    :cond_9
    :goto_0
    iget-object p1, p0, Lcom/oplus/camera/capmode/d;->mBeauty3DManager:Lcom/oplus/camera/d/b;

    if-eqz p1, :cond_b

    .line 3226
    invoke-virtual {p0}, Lcom/oplus/camera/capmode/d;->isShowBeauty3DEditChooseMenu()Z

    move-result p1

    if-eqz p1, :cond_a

    .line 3227
    iget-object p1, p0, Lcom/oplus/camera/capmode/d;->mBeauty3DManager:Lcom/oplus/camera/d/b;

    invoke-virtual {p1, v2}, Lcom/oplus/camera/d/b;->e(Z)V

    .line 3228
    iget-object p1, p0, Lcom/oplus/camera/capmode/d;->mBeauty3DManager:Lcom/oplus/camera/d/b;

    invoke-virtual {p1}, Lcom/oplus/camera/d/b;->p()V

    goto :goto_1

    .line 3230
    :cond_a
    iget-object p1, p0, Lcom/oplus/camera/capmode/d;->mBeauty3DManager:Lcom/oplus/camera/d/b;

    invoke-virtual {p1}, Lcom/oplus/camera/d/b;->q()V

    .line 3234
    :cond_b
    :goto_1
    invoke-virtual {p0}, Lcom/oplus/camera/capmode/d;->isGoogleLensEnable()Z

    move-result p1

    if-eqz p1, :cond_d

    if-eqz p2, :cond_c

    .line 3236
    iget-object p1, p0, Lcom/oplus/camera/capmode/d;->mCameraUIInterface:Lcom/oplus/camera/ui/CameraUIInterface;

    invoke-interface {p1}, Lcom/oplus/camera/ui/CameraUIInterface;->A()Z

    move-result p1

    if-nez p1, :cond_e

    .line 3237
    invoke-virtual {p0, v2}, Lcom/oplus/camera/capmode/d;->showGoogleLensIcon(Z)V

    goto :goto_2

    .line 3240
    :cond_c
    invoke-virtual {p0, v2}, Lcom/oplus/camera/capmode/d;->hideGoogleLensIcon(Z)V

    goto :goto_2

    .line 3243
    :cond_d
    invoke-virtual {p0, v2}, Lcom/oplus/camera/capmode/d;->hideGoogleLensIcon(Z)V

    :cond_e
    :goto_2
    return-void

    :pswitch_data_0
    .packed-switch 0xc
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public checkSensorMask(ZZ)Z
    .locals 3

    .line 4113
    invoke-virtual {p0}, Lcom/oplus/camera/capmode/d;->isSatOpen()Z

    move-result v0

    if-eqz v0, :cond_6

    .line 4114
    iget-object v0, p0, Lcom/oplus/camera/capmode/d;->mApsDecisionResultLock:Ljava/lang/Object;

    monitor-enter v0

    .line 4115
    :try_start_0
    iget-object v1, p0, Lcom/oplus/camera/capmode/d;->mDecisionResult:Lcom/oplus/camera/aps/util/CameraApsDecision;

    if-eqz v1, :cond_5

    iget-object v1, p0, Lcom/oplus/camera/capmode/d;->mDecisionResult:Lcom/oplus/camera/aps/util/CameraApsDecision;

    iget-object v1, v1, Lcom/oplus/camera/aps/util/CameraApsDecision;->mSensorMask:[I

    if-eqz v1, :cond_5

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz p1, :cond_1

    .line 4117
    iget-object p0, p0, Lcom/oplus/camera/capmode/d;->mDecisionResult:Lcom/oplus/camera/aps/util/CameraApsDecision;

    iget-object p0, p0, Lcom/oplus/camera/aps/util/CameraApsDecision;->mSensorMask:[I

    aget p0, p0, v1

    if-ne v2, p0, :cond_0

    move v1, v2

    :cond_0
    monitor-exit v0

    return v1

    :cond_1
    if-eqz p2, :cond_3

    .line 4119
    iget-object p0, p0, Lcom/oplus/camera/capmode/d;->mDecisionResult:Lcom/oplus/camera/aps/util/CameraApsDecision;

    iget-object p0, p0, Lcom/oplus/camera/aps/util/CameraApsDecision;->mSensorMask:[I

    const/4 p1, 0x2

    aget p0, p0, p1

    if-ne v2, p0, :cond_2

    move v1, v2

    :cond_2
    monitor-exit v0

    return v1

    .line 4121
    :cond_3
    iget-object p0, p0, Lcom/oplus/camera/capmode/d;->mDecisionResult:Lcom/oplus/camera/aps/util/CameraApsDecision;

    iget-object p0, p0, Lcom/oplus/camera/aps/util/CameraApsDecision;->mSensorMask:[I

    aget p0, p0, v2

    if-ne v2, p0, :cond_4

    move v1, v2

    :cond_4
    monitor-exit v0

    return v1

    .line 4124
    :cond_5
    monitor-exit v0

    goto :goto_0

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0

    .line 4127
    :cond_6
    :goto_0
    invoke-super {p0, p1, p2}, Lcom/oplus/camera/capmode/BaseMode;->checkSensorMask(ZZ)Z

    move-result p0

    return p0
.end method

.method public dispatchTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 0

    .line 2161
    invoke-virtual {p0}, Lcom/oplus/camera/capmode/d;->isShowBeauty3D()Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public displayFixedUpModeHint()V
    .locals 2

    .line 3998
    invoke-super {p0}, Lcom/oplus/camera/capmode/BaseMode;->displayFixedUpModeHint()V

    .line 4000
    iget-object v0, p0, Lcom/oplus/camera/capmode/d;->mActivity:Landroid/app/Activity;

    if-nez v0, :cond_0

    return-void

    :cond_0
    const-string v0, "CommonCapMode"

    const-string v1, "displayFixedUpModeHint"

    .line 4004
    invoke-static {v0, v1}, Lcom/oplus/camera/e;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 4006
    iget-object v0, p0, Lcom/oplus/camera/capmode/d;->mActivity:Landroid/app/Activity;

    new-instance v1, Lcom/oplus/camera/capmode/d$5;

    invoke-direct {v1, p0}, Lcom/oplus/camera/capmode/d$5;-><init>(Lcom/oplus/camera/capmode/d;)V

    invoke-virtual {v0, v1}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method public displayScreenHintIconInSwitchOn()V
    .locals 5

    .line 3794
    iget-boolean v0, p0, Lcom/oplus/camera/capmode/d;->mbShowSteadyTips:Z

    if-nez v0, :cond_0

    .line 3795
    invoke-super {p0}, Lcom/oplus/camera/capmode/BaseMode;->displayScreenHintIconInSwitchOn()V

    .line 3798
    :cond_0
    invoke-virtual {p0}, Lcom/oplus/camera/capmode/d;->is10bitsHeicEncodeEnable()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-boolean v0, p0, Lcom/oplus/camera/capmode/d;->mbFrontCamera:Z

    if-nez v0, :cond_1

    .line 3799
    iget-object v0, p0, Lcom/oplus/camera/capmode/d;->mCameraUIInterface:Lcom/oplus/camera/ui/CameraUIInterface;

    const v1, 0x7f100070

    const v2, 0x7f0805e9

    const v3, 0x7f0604ff

    const/4 v4, 0x0

    new-array v4, v4, [Ljava/lang/Object;

    invoke-interface {v0, v1, v2, v3, v4}, Lcom/oplus/camera/ui/CameraUIInterface;->b(III[Ljava/lang/Object;)V

    .line 3804
    :cond_1
    iget-boolean v0, p0, Lcom/oplus/camera/capmode/d;->mbAutoMicroOpen:Z

    if-eqz v0, :cond_2

    iget-object p0, p0, Lcom/oplus/camera/capmode/d;->mMyHandler:Landroid/os/Handler;

    if-eqz p0, :cond_2

    const/4 v0, 0x4

    .line 3805
    invoke-virtual {p0, v0}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    :cond_2
    return-void
.end method

.method protected forceClosePIEffect()V
    .locals 3

    const-string v0, "com.oplus.feature.pi.ai.support"

    .line 3938
    invoke-static {v0}, Lcom/oplus/camera/aps/config/CameraConfig;->getConfigBooleanValue(Ljava/lang/String;)Z

    move-result v0

    const-string v1, "off"

    if-eqz v0, :cond_1

    const-string v0, "pref_camera_pi_ai_mode_key"

    .line 3939
    invoke-virtual {p0, v0}, Lcom/oplus/camera/capmode/d;->getSupportFunction(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_0

    return-void

    .line 3943
    :cond_0
    iget-object v2, p0, Lcom/oplus/camera/capmode/d;->mPreferences:Landroid/content/SharedPreferences;

    if-eqz v2, :cond_3

    .line 3944
    iget-object v2, p0, Lcom/oplus/camera/capmode/d;->mPreferences:Landroid/content/SharedPreferences;

    invoke-interface {v2}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v2

    .line 3945
    invoke-interface {v2, v0, v1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 3946
    invoke-interface {v2}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 3947
    iget-object p0, p0, Lcom/oplus/camera/capmode/d;->mCameraUIInterface:Lcom/oplus/camera/ui/CameraUIInterface;

    invoke-interface {p0, v0}, Lcom/oplus/camera/ui/CameraUIInterface;->f(Ljava/lang/String;)V

    goto :goto_0

    :cond_1
    const-string v0, "pref_camera_pi_mode_key"

    .line 3950
    invoke-virtual {p0, v0}, Lcom/oplus/camera/capmode/d;->getSupportFunction(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_2

    return-void

    .line 3954
    :cond_2
    iget-object v2, p0, Lcom/oplus/camera/capmode/d;->mPreferences:Landroid/content/SharedPreferences;

    if-eqz v2, :cond_3

    .line 3955
    iget-object v2, p0, Lcom/oplus/camera/capmode/d;->mPreferences:Landroid/content/SharedPreferences;

    invoke-interface {v2}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v2

    .line 3956
    invoke-interface {v2, v0, v1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 3957
    invoke-interface {v2}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 3958
    iget-object p0, p0, Lcom/oplus/camera/capmode/d;->mCameraUIInterface:Lcom/oplus/camera/ui/CameraUIInterface;

    invoke-interface {p0, v0}, Lcom/oplus/camera/ui/CameraUIInterface;->f(Ljava/lang/String;)V

    :cond_3
    :goto_0
    return-void
.end method

.method public getBeauty3DConfigured()Z
    .locals 0

    .line 608
    iget-object p0, p0, Lcom/oplus/camera/capmode/d;->mBeauty3DManager:Lcom/oplus/camera/d/b;

    if-eqz p0, :cond_0

    .line 609
    invoke-virtual {p0}, Lcom/oplus/camera/d/b;->g()Z

    move-result p0

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public getBeauty3DScanIconType(I)I
    .locals 5

    .line 649
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "getBeauty3DScanIconType, effectIndex: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "CommonCapMode"

    invoke-static {v1, v0}, Lcom/oplus/camera/e;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 651
    iget-object v0, p0, Lcom/oplus/camera/capmode/d;->mActivity:Landroid/app/Activity;

    invoke-static {v0}, Lcom/oplus/camera/ui/preview/a/o;->a(Landroid/content/Context;)I

    move-result v0

    const-string v1, "key_beauty3d"

    const-string v2, "beauty"

    const/4 v3, 0x1

    if-nez p1, :cond_0

    .line 654
    invoke-virtual {p0}, Lcom/oplus/camera/capmode/d;->getCurrEffectMenuName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 655
    invoke-virtual {p0, v1}, Lcom/oplus/camera/capmode/d;->getSupportFunction(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_0

    if-nez v0, :cond_0

    .line 657
    iget-object p0, p0, Lcom/oplus/camera/capmode/d;->mCameraUIInterface:Lcom/oplus/camera/ui/CameraUIInterface;

    const/4 p1, 0x6

    invoke-interface {p0, p1, v3}, Lcom/oplus/camera/ui/CameraUIInterface;->f(IZ)V

    return v3

    :cond_0
    if-nez p1, :cond_1

    .line 660
    invoke-virtual {p0}, Lcom/oplus/camera/capmode/d;->getCurrEffectMenuName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    .line 661
    invoke-virtual {p0, v1}, Lcom/oplus/camera/capmode/d;->getSupportFunction(Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_1

    if-ne v0, v3, :cond_1

    const/4 p0, 0x2

    return p0

    :cond_1
    const/4 p0, 0x0

    return p0
.end method

.method protected getBeauty3Dstatus()I
    .locals 0

    .line 3530
    iget-object p0, p0, Lcom/oplus/camera/capmode/d;->mBeauty3DManager:Lcom/oplus/camera/d/b;

    if-eqz p0, :cond_0

    .line 3531
    invoke-virtual {p0}, Lcom/oplus/camera/d/b;->f()I

    move-result p0

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method protected getBubbleOffsetX(I)I
    .locals 3

    const/4 v0, 0x6

    if-ne v0, p1, :cond_0

    .line 3150
    iget-object p0, p0, Lcom/oplus/camera/capmode/d;->mActivity:Landroid/app/Activity;

    invoke-virtual {p0}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    const p1, 0x7f070117

    invoke-virtual {p0, p1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p0

    return p0

    :cond_0
    const/16 v0, 0x9

    const/4 v1, 0x0

    if-ne v0, p1, :cond_3

    .line 3154
    iget-object p1, p0, Lcom/oplus/camera/capmode/d;->mCameraInterface:Lcom/oplus/camera/capmode/a;

    invoke-interface {p1}, Lcom/oplus/camera/capmode/a;->aK()[F

    move-result-object p1

    if-nez p1, :cond_1

    const/4 p0, -0x1

    return p0

    :cond_1
    const/4 p1, 0x1

    .line 3158
    iget-object v2, p0, Lcom/oplus/camera/capmode/d;->mCameraInterface:Lcom/oplus/camera/capmode/a;

    invoke-interface {v2}, Lcom/oplus/camera/capmode/a;->aU()Lcom/oplus/camera/screen/b/a;

    move-result-object v2

    invoke-virtual {v2}, Lcom/oplus/camera/screen/b/a;->j()I

    move-result v2

    if-ne p1, v2, :cond_2

    .line 3159
    iget-object p1, p0, Lcom/oplus/camera/capmode/d;->mCameraInterface:Lcom/oplus/camera/capmode/a;

    iget-object v2, p0, Lcom/oplus/camera/capmode/d;->mActivity:Landroid/app/Activity;

    invoke-interface {p1, v2, v0}, Lcom/oplus/camera/capmode/a;->a(Landroid/app/Activity;I)[I

    move-result-object p1

    if-eqz p1, :cond_2

    .line 3162
    aget p0, p1, v1

    return p0

    .line 3166
    :cond_2
    iget-object p0, p0, Lcom/oplus/camera/capmode/d;->mCameraInterface:Lcom/oplus/camera/capmode/a;

    invoke-interface {p0}, Lcom/oplus/camera/capmode/a;->aK()[F

    move-result-object p0

    aget p0, p0, v1

    float-to-int p0, p0

    return p0

    :cond_3
    return v1
.end method

.method protected getBubbleOffsetY(I)I
    .locals 3

    const/4 v0, 0x6

    if-ne v0, p1, :cond_0

    .line 3175
    iget-object p0, p0, Lcom/oplus/camera/capmode/d;->mActivity:Landroid/app/Activity;

    invoke-virtual {p0}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    const p1, 0x7f070118

    invoke-virtual {p0, p1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p0

    return p0

    :cond_0
    const/16 v0, 0x9

    if-ne v0, p1, :cond_2

    .line 3178
    iget-object p1, p0, Lcom/oplus/camera/capmode/d;->mCameraInterface:Lcom/oplus/camera/capmode/a;

    invoke-interface {p1}, Lcom/oplus/camera/capmode/a;->aK()[F

    move-result-object p1

    if-eqz p1, :cond_2

    .line 3179
    iget-object p1, p0, Lcom/oplus/camera/capmode/d;->mCameraInterface:Lcom/oplus/camera/capmode/a;

    invoke-interface {p1}, Lcom/oplus/camera/capmode/a;->aU()Lcom/oplus/camera/screen/b/a;

    move-result-object p1

    invoke-virtual {p1}, Lcom/oplus/camera/screen/b/a;->j()I

    move-result p1

    const/4 v1, 0x1

    if-ne v1, p1, :cond_1

    .line 3180
    iget-object p1, p0, Lcom/oplus/camera/capmode/d;->mCameraInterface:Lcom/oplus/camera/capmode/a;

    iget-object v2, p0, Lcom/oplus/camera/capmode/d;->mActivity:Landroid/app/Activity;

    invoke-interface {p1, v2, v0}, Lcom/oplus/camera/capmode/a;->a(Landroid/app/Activity;I)[I

    move-result-object p1

    if-eqz p1, :cond_1

    .line 3183
    aget p0, p1, v1

    return p0

    .line 3187
    :cond_1
    iget-object p1, p0, Lcom/oplus/camera/capmode/d;->mCameraInterface:Lcom/oplus/camera/capmode/a;

    invoke-interface {p1}, Lcom/oplus/camera/capmode/a;->aK()[F

    move-result-object p1

    aget p1, p1, v1

    float-to-int p1, p1

    iget-object p0, p0, Lcom/oplus/camera/capmode/d;->mActivity:Landroid/app/Activity;

    .line 3188
    invoke-virtual {p0}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    const v0, 0x7f07010d

    invoke-virtual {p0, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p0

    sub-int/2addr p1, p0

    return p1

    :cond_2
    const/4 p0, 0x0

    return p0
.end method

.method public getCameraFeature()Ljava/lang/String;
    .locals 2

    .line 4074
    iget-boolean v0, p0, Lcom/oplus/camera/capmode/d;->mbDestroyed:Z

    if-nez v0, :cond_4

    iget-object v0, p0, Lcom/oplus/camera/capmode/d;->mCameraInterface:Lcom/oplus/camera/capmode/a;

    if-nez v0, :cond_0

    goto :goto_1

    .line 4078
    :cond_0
    iget-object v0, p0, Lcom/oplus/camera/capmode/d;->mCameraInterface:Lcom/oplus/camera/capmode/a;

    invoke-interface {v0}, Lcom/oplus/camera/capmode/a;->i()Z

    move-result v0

    const-string v1, "commonDummy"

    if-nez v0, :cond_1

    return-object v1

    .line 4082
    :cond_1
    invoke-virtual {p0}, Lcom/oplus/camera/capmode/d;->isSatOpen()Z

    move-result v0

    if-eqz v0, :cond_2

    const-string v0, "com.oplus.sat.use.hal"

    invoke-static {v0}, Lcom/oplus/camera/aps/config/CameraConfig;->getConfigBooleanValue(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    const-string p0, "commonSatHal"

    return-object p0

    .line 4086
    :cond_2
    invoke-virtual {p0}, Lcom/oplus/camera/capmode/d;->isHighPictureSize()Z

    move-result v0

    if-eqz v0, :cond_3

    goto :goto_0

    :cond_3
    invoke-super {p0}, Lcom/oplus/camera/capmode/BaseMode;->getCameraFeature()Ljava/lang/String;

    move-result-object v1

    :goto_0
    return-object v1

    :cond_4
    :goto_1
    const/4 p0, 0x0

    return-object p0
.end method

.method public getCameraMode()Ljava/lang/String;
    .locals 0

    const-string p0, "common"

    return-object p0
.end method

.method protected getCaptureCallback()Lcom/oplus/camera/e/d$a;
    .locals 1

    const/4 v0, 0x0

    .line 3336
    iput v0, p0, Lcom/oplus/camera/capmode/d;->mReceivedRawResultNum:I

    .line 3339
    invoke-super {p0}, Lcom/oplus/camera/capmode/BaseMode;->getCaptureCallback()Lcom/oplus/camera/e/d$a;

    move-result-object p0

    return-object p0
.end method

.method public getCurFilterListType()I
    .locals 2

    .line 2015
    iget-object v0, p0, Lcom/oplus/camera/capmode/d;->mPreferences:Landroid/content/SharedPreferences;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    :cond_0
    const-string v0, "pref_fuji_filter_menu"

    .line 2019
    invoke-virtual {p0, v0}, Lcom/oplus/camera/capmode/d;->getSupportFunction(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 2020
    iget-object p0, p0, Lcom/oplus/camera/capmode/d;->mPreferences:Landroid/content/SharedPreferences;

    const-string v0, "key_filter_list_type"

    invoke-interface {p0, v0, v1}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result p0

    return p0

    .line 2023
    :cond_1
    invoke-super {p0}, Lcom/oplus/camera/capmode/BaseMode;->getCurFilterListType()I

    move-result p0

    return p0
.end method

.method public getCurrFilterIndex()I
    .locals 1

    .line 2004
    invoke-virtual {p0}, Lcom/oplus/camera/capmode/d;->isPIModeOpen()Z

    move-result v0

    if-nez v0, :cond_1

    invoke-virtual {p0}, Lcom/oplus/camera/capmode/d;->isShowBeauty3D()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 2010
    :cond_0
    invoke-super {p0}, Lcom/oplus/camera/capmode/BaseMode;->getCurrFilterIndex()I

    move-result p0

    return p0

    :cond_1
    :goto_0
    const-string p0, "CommonCapMode"

    const-string v0, "getCurrFilterIndex, no filter"

    .line 2005
    invoke-static {p0, v0}, Lcom/oplus/camera/e;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 2007
    sget p0, Lcom/oplus/camera/ui/preview/a/j;->a:I

    return p0
.end method

.method protected getCustomBeautyKeys()[Ljava/lang/String;
    .locals 1

    .line 489
    sget-object v0, Lcom/oplus/camera/ui/CameraUIInterface;->KEY_COMMON_CUSTOM_BEAUTY:[Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/oplus/camera/capmode/d;->getCurrentKeys([Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method protected getFaceBeautyKey()Ljava/lang/String;
    .locals 0

    const-string p0, "pref_common_facebeauty_level_menu"

    return-object p0
.end method

.method public getFilterEffectMenuPreferenceKey()Ljava/lang/String;
    .locals 2

    .line 1951
    iget-object p0, p0, Lcom/oplus/camera/capmode/d;->mCameraEntry:Lcom/oplus/camera/entry/b;

    invoke-virtual {p0}, Lcom/oplus/camera/entry/b;->J()I

    move-result p0

    const-string v0, "key_filter_index"

    const/4 v1, 0x2

    if-ne v1, p0, :cond_0

    :cond_0
    return-object v0
.end method

.method public getFilterEffectPrevSelectedKey()Ljava/lang/String;
    .locals 1

    .line 1960
    iget-object p0, p0, Lcom/oplus/camera/capmode/d;->mCameraEntry:Lcom/oplus/camera/entry/b;

    invoke-virtual {p0}, Lcom/oplus/camera/entry/b;->J()I

    move-result p0

    const/4 v0, 0x2

    if-ne v0, p0, :cond_0

    const-string p0, "key_filter_prev_selected_filterType_other_app"

    return-object p0

    :cond_0
    const-string p0, "key_filter_prev_selected_filterType"

    return-object p0
.end method

.method protected getFilterNameIdList(I)Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .line 1969
    iget-object v0, p0, Lcom/oplus/camera/capmode/d;->mCameraEntry:Lcom/oplus/camera/entry/b;

    invoke-virtual {v0}, Lcom/oplus/camera/entry/b;->J()I

    move-result v0

    const/4 v1, 0x2

    if-ne v1, v0, :cond_0

    .line 1970
    sget-object p0, Lcom/oplus/camera/ui/preview/a/j;->q:Lcom/oplus/camera/ui/preview/a/i;

    invoke-static {p1}, Lcom/oplus/camera/e/a;->a(I)Z

    move-result p1

    invoke-virtual {p0, p1}, Lcom/oplus/camera/ui/preview/a/i;->b(Z)Ljava/util/List;

    move-result-object p0

    return-object p0

    :cond_0
    const/4 v0, 0x1

    .line 1973
    invoke-virtual {p0}, Lcom/oplus/camera/capmode/d;->getCurFilterListType()I

    move-result v1

    if-ne v0, v1, :cond_1

    .line 1974
    sget-object p0, Lcom/oplus/camera/ui/preview/a/j;->l:Lcom/oplus/camera/ui/preview/a/i;

    iget-object p0, p0, Lcom/oplus/camera/ui/preview/a/i;->d:Ljava/util/List;

    return-object p0

    .line 1977
    :cond_1
    invoke-super {p0, p1}, Lcom/oplus/camera/capmode/BaseMode;->getFilterNameIdList(I)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method protected getFilterTypeList(I)Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 1991
    iget-object v0, p0, Lcom/oplus/camera/capmode/d;->mCameraEntry:Lcom/oplus/camera/entry/b;

    invoke-virtual {v0}, Lcom/oplus/camera/entry/b;->J()I

    move-result v0

    const/4 v1, 0x2

    if-ne v1, v0, :cond_0

    .line 1992
    sget-object p0, Lcom/oplus/camera/ui/preview/a/j;->q:Lcom/oplus/camera/ui/preview/a/i;

    invoke-static {p1}, Lcom/oplus/camera/e/a;->a(I)Z

    move-result p1

    invoke-virtual {p0, p1}, Lcom/oplus/camera/ui/preview/a/i;->a(Z)Ljava/util/List;

    move-result-object p0

    return-object p0

    :cond_0
    const/4 v0, 0x1

    .line 1995
    invoke-virtual {p0}, Lcom/oplus/camera/capmode/d;->getCurFilterListType()I

    move-result v1

    if-ne v0, v1, :cond_1

    .line 1996
    sget-object p0, Lcom/oplus/camera/ui/preview/a/j;->l:Lcom/oplus/camera/ui/preview/a/i;

    iget-object p0, p0, Lcom/oplus/camera/ui/preview/a/i;->b:Ljava/util/List;

    return-object p0

    .line 1999
    :cond_1
    invoke-super {p0, p1}, Lcom/oplus/camera/capmode/BaseMode;->getFilterTypeList(I)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method public getFlashMode()Ljava/lang/String;
    .locals 1

    .line 3642
    invoke-virtual {p0}, Lcom/oplus/camera/capmode/d;->getCurrFilterIndex()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/oplus/camera/capmode/d;->isMonoIndex(I)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string p0, "off"

    return-object p0

    .line 3646
    :cond_0
    invoke-super {p0}, Lcom/oplus/camera/capmode/BaseMode;->getFlashMode()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public getGrandTourFilterKey(Ljava/lang/String;)Z
    .locals 3

    .line 1831
    iget-boolean p0, p0, Lcom/oplus/camera/capmode/d;->mbFrontCamera:Z

    const-string v0, "CommonCapMode"

    const/4 v1, 0x0

    if-eqz p0, :cond_0

    const-string p0, "getGrandTourFilterKey, Front camera. Ignore"

    .line 1832
    invoke-static {v0, p0}, Lcom/oplus/camera/e;->e(Ljava/lang/String;Ljava/lang/String;)V

    return v1

    .line 1837
    :cond_0
    sget-object p0, Lcom/oplus/camera/ui/preview/a/j;->b:Ljava/lang/String;

    const-string v2, "None"

    invoke-virtual {p0, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p0

    if-nez p0, :cond_3

    .line 1838
    sget-object p0, Lcom/oplus/camera/ui/preview/a/j;->b:Ljava/lang/String;

    invoke-static {p0}, Lcom/oplus/camera/ui/preview/a/j;->a(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object p0

    if-nez p0, :cond_1

    .line 1841
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string p1, "getGrandTourFilterKey, No grand filter for "

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object p1, Lcom/oplus/camera/ui/preview/a/j;->b:Ljava/lang/String;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " city."

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Lcom/oplus/camera/e;->e(Ljava/lang/String;Ljava/lang/String;)V

    return v1

    :cond_1
    move v0, v1

    .line 1846
    :goto_0
    invoke-virtual {p0}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v0, v2, :cond_3

    .line 1848
    invoke-virtual {p0, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    const/4 p0, 0x1

    return p0

    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_3
    return v1
.end method

.method protected getHighPictureSizeHint()I
    .locals 0

    const p0, 0x7f1002dc

    return p0
.end method

.method protected getHintTextId()I
    .locals 1

    .line 3984
    invoke-virtual {p0}, Lcom/oplus/camera/capmode/d;->isNoneSatUltraWideAngleOpen()Z

    move-result v0

    if-eqz v0, :cond_2

    const-string v0, "com.oplus.isUWFixedFocus"

    .line 3985
    invoke-static {v0}, Lcom/oplus/camera/aps/config/CameraConfig;->getConfigBooleanValue(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    iget-object p0, p0, Lcom/oplus/camera/capmode/d;->mOneCamera:Lcom/oplus/camera/e/d;

    .line 3986
    invoke-interface {p0}, Lcom/oplus/camera/e/d;->e()Lcom/oplus/camera/e/h;

    move-result-object p0

    invoke-virtual {p0}, Lcom/oplus/camera/e/h;->n()F

    move-result p0

    const/4 v0, 0x0

    invoke-static {p0, v0}, Ljava/lang/Float;->compare(FF)I

    move-result p0

    if-nez p0, :cond_0

    goto :goto_0

    :cond_0
    const p0, 0x7f1006d6

    .line 3989
    invoke-static {p0}, Lcom/oplus/camera/util/Util;->f(I)I

    move-result p0

    return p0

    :cond_1
    :goto_0
    const p0, 0x7f1006d5

    return p0

    :cond_2
    const/4 p0, -0x1

    return p0
.end method

.method protected getIsCapturingState()Z
    .locals 1

    .line 4722
    invoke-super {p0}, Lcom/oplus/camera/capmode/BaseMode;->getIsCapturingState()Z

    move-result v0

    if-nez v0, :cond_1

    iget-boolean p0, p0, Lcom/oplus/camera/capmode/d;->mbCaptureRawTimeDone:Z

    if-nez p0, :cond_0

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

.method protected getMakeupKeys()[Ljava/lang/String;
    .locals 1

    .line 494
    sget-object v0, Lcom/oplus/camera/ui/preview/a/g;->c:Ljava/util/List;

    invoke-virtual {p0, v0}, Lcom/oplus/camera/capmode/d;->getCurrentKeys(Ljava/util/List;)[Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method protected getMakeupTypeKey()Ljava/lang/String;
    .locals 2

    .line 499
    iget v0, p0, Lcom/oplus/camera/capmode/d;->mCameraEntryType:I

    invoke-static {v0}, Lcom/oplus/camera/entry/b;->b(I)Z

    move-result v0

    const-string v1, "pref_common_makeup_type"

    if-eqz v0, :cond_0

    .line 500
    iget p0, p0, Lcom/oplus/camera/capmode/d;->mCameraEntryType:I

    invoke-static {v1, p0}, Lcom/oplus/camera/entry/b;->b(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_0
    return-object v1
.end method

.method public getOperatingMode()I
    .locals 2

    .line 197
    invoke-virtual {p0}, Lcom/oplus/camera/capmode/d;->getBeauty3Dstatus()I

    move-result v0

    const/4 v1, 0x2

    if-eq v0, v1, :cond_3

    .line 198
    invoke-virtual {p0}, Lcom/oplus/camera/capmode/d;->getBeauty3Dstatus()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    goto :goto_1

    .line 200
    :cond_0
    invoke-virtual {p0}, Lcom/oplus/camera/capmode/d;->getBeauty3Dstatus()I

    move-result v0

    const/4 v1, 0x6

    if-eq v0, v1, :cond_2

    .line 201
    invoke-virtual {p0}, Lcom/oplus/camera/capmode/d;->getBeauty3Dstatus()I

    move-result v0

    const/4 v1, 0x7

    if-eq v0, v1, :cond_2

    .line 202
    invoke-virtual {p0}, Lcom/oplus/camera/capmode/d;->getBeauty3Dstatus()I

    move-result v0

    const/16 v1, 0x8

    if-eq v0, v1, :cond_2

    .line 203
    invoke-virtual {p0}, Lcom/oplus/camera/capmode/d;->getBeauty3Dstatus()I

    move-result p0

    const/16 v0, 0x9

    if-ne p0, v0, :cond_1

    goto :goto_0

    :cond_1
    const p0, 0x8001

    return p0

    :cond_2
    :goto_0
    const p0, 0x8014

    return p0

    :cond_3
    :goto_1
    const p0, 0x8013

    return p0
.end method

.method public getPictureSize(Lcom/oplus/camera/e/h;)Landroid/util/Size;
    .locals 2

    .line 671
    invoke-virtual {p0}, Lcom/oplus/camera/capmode/d;->getBeauty3Dstatus()I

    move-result v0

    const/4 v1, 0x2

    if-eq v0, v1, :cond_5

    .line 672
    invoke-virtual {p0}, Lcom/oplus/camera/capmode/d;->getBeauty3Dstatus()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    goto :goto_1

    .line 674
    :cond_0
    invoke-virtual {p0}, Lcom/oplus/camera/capmode/d;->getBeauty3Dstatus()I

    move-result v0

    const/4 v1, 0x6

    if-eq v0, v1, :cond_4

    .line 675
    invoke-virtual {p0}, Lcom/oplus/camera/capmode/d;->getBeauty3Dstatus()I

    move-result v0

    const/4 v1, 0x7

    if-eq v0, v1, :cond_4

    .line 676
    invoke-virtual {p0}, Lcom/oplus/camera/capmode/d;->getBeauty3Dstatus()I

    move-result v0

    const/16 v1, 0x8

    if-eq v0, v1, :cond_4

    .line 677
    invoke-virtual {p0}, Lcom/oplus/camera/capmode/d;->getBeauty3Dstatus()I

    move-result v0

    const/16 v1, 0x9

    if-ne v0, v1, :cond_1

    goto :goto_0

    .line 681
    :cond_1
    iget-object v0, p0, Lcom/oplus/camera/capmode/d;->mCameraInterface:Lcom/oplus/camera/capmode/a;

    if-nez v0, :cond_2

    const/4 p0, 0x0

    return-object p0

    .line 685
    :cond_2
    iget-boolean v0, p0, Lcom/oplus/camera/capmode/d;->mbDestroyed:Z

    if-nez v0, :cond_3

    iget-object v0, p0, Lcom/oplus/camera/capmode/d;->mCameraInterface:Lcom/oplus/camera/capmode/a;

    invoke-interface {v0}, Lcom/oplus/camera/capmode/a;->i()Z

    move-result v0

    if-nez v0, :cond_3

    .line 686
    invoke-virtual {p0, p1}, Lcom/oplus/camera/capmode/d;->getDecreasedSizeForThirdApp(Lcom/oplus/camera/e/h;)Landroid/util/Size;

    move-result-object v0

    if-eqz v0, :cond_3

    return-object v0

    .line 693
    :cond_3
    invoke-super {p0, p1}, Lcom/oplus/camera/capmode/BaseMode;->getPictureSize(Lcom/oplus/camera/e/h;)Landroid/util/Size;

    move-result-object p0

    return-object p0

    .line 678
    :cond_4
    :goto_0
    new-instance p0, Landroid/util/Size;

    const/16 p1, 0x5a0

    const/16 v0, 0x438

    invoke-direct {p0, p1, v0}, Landroid/util/Size;-><init>(II)V

    return-object p0

    .line 673
    :cond_5
    :goto_1
    new-instance p0, Landroid/util/Size;

    const/16 p1, 0xcc0

    const/16 v0, 0x990

    invoke-direct {p0, p1, v0}, Landroid/util/Size;-><init>(II)V

    return-object p0
.end method

.method public getPreviewSize(Lcom/oplus/camera/e/h;)Landroid/util/Size;
    .locals 5

    .line 698
    invoke-super {p0, p1}, Lcom/oplus/camera/capmode/BaseMode;->getPreviewSize(Lcom/oplus/camera/e/h;)Landroid/util/Size;

    move-result-object v0

    .line 699
    iput-object v0, p0, Lcom/oplus/camera/capmode/d;->mLastPreviewSize:Landroid/util/Size;

    const-string v1, "com.oplus.feature.facebeauty.previewsize.support"

    .line 701
    invoke-static {v1}, Lcom/oplus/camera/aps/config/CameraConfig;->getConfigBooleanValue(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-boolean v1, p0, Lcom/oplus/camera/capmode/d;->mbFrontCamera:Z

    if-eqz v1, :cond_0

    .line 703
    invoke-virtual {p0}, Lcom/oplus/camera/capmode/d;->getFaceBeautyCurrIndex()I

    move-result v1

    if-nez v1, :cond_2

    .line 704
    :cond_0
    invoke-static {}, Lcom/oplus/camera/e/a;->h()I

    move-result v1

    iget v2, p0, Lcom/oplus/camera/capmode/d;->mCameraId:I

    if-ne v1, v2, :cond_1

    iget-object v1, p0, Lcom/oplus/camera/capmode/d;->mCameraUIInterface:Lcom/oplus/camera/ui/CameraUIInterface;

    .line 705
    invoke-interface {v1}, Lcom/oplus/camera/ui/CameraUIInterface;->K()Z

    move-result v1

    if-nez v1, :cond_2

    .line 706
    invoke-virtual {p0}, Lcom/oplus/camera/capmode/d;->getFaceBeautyCurrIndex()I

    move-result v1

    if-nez v1, :cond_2

    .line 707
    :cond_1
    invoke-static {}, Lcom/oplus/camera/e/a;->j()I

    move-result v1

    iget v2, p0, Lcom/oplus/camera/capmode/d;->mCameraId:I

    invoke-virtual {p0, v2}, Lcom/oplus/camera/capmode/d;->getProperCameraId(I)I

    move-result v2

    if-ne v1, v2, :cond_3

    .line 708
    :cond_2
    invoke-direct {p0}, Lcom/oplus/camera/capmode/d;->getFaceBeautyPreviewSize()Landroid/util/Size;

    move-result-object v1

    iput-object v1, p0, Lcom/oplus/camera/capmode/d;->mChangePreviewSize:Landroid/util/Size;

    .line 710
    iget-object v1, p0, Lcom/oplus/camera/capmode/d;->mChangePreviewSize:Landroid/util/Size;

    if-eqz v1, :cond_3

    move-object v0, v1

    .line 715
    :cond_3
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getPreviewSize, previewSize: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, ", mLastPreviewSize: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/oplus/camera/capmode/d;->mLastPreviewSize:Landroid/util/Size;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, ", mChangePreviewSize: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/oplus/camera/capmode/d;->mChangePreviewSize:Landroid/util/Size;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "CommonCapMode"

    invoke-static {v2, v1}, Lcom/oplus/camera/e;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 718
    invoke-virtual {p0}, Lcom/oplus/camera/capmode/d;->getBeauty3Dstatus()I

    move-result v1

    if-eqz v1, :cond_4

    const/4 v2, 0x4

    if-eq v1, v2, :cond_4

    .line 721
    new-instance p0, Landroid/util/Size;

    const/16 p1, 0x5a0

    const/16 v0, 0x438

    invoke-direct {p0, p1, v0}, Landroid/util/Size;-><init>(II)V

    return-object p0

    :cond_4
    const-string v1, "com.oplus.feature.makeup.low.performance"

    .line 722
    invoke-static {v1}, Lcom/oplus/camera/aps/config/CameraConfig;->getConfigBooleanValue(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_8

    invoke-virtual {p0}, Lcom/oplus/camera/capmode/d;->isMakeupOpen()Z

    move-result v1

    if-eqz v1, :cond_8

    .line 723
    invoke-virtual {p0, p1}, Lcom/oplus/camera/capmode/d;->getTargetPreviewRatio(Lcom/oplus/camera/e/h;)D

    move-result-wide p0

    const-wide v0, 0x3ff5555555555555L    # 1.3333333333333333

    .line 725
    invoke-static {p0, p1, v0, v1}, Ljava/lang/Double;->compare(DD)I

    move-result v0

    const/16 v1, 0x2d0

    const/16 v2, 0x3c0

    if-nez v0, :cond_5

    .line 726
    new-instance p0, Landroid/util/Size;

    invoke-direct {p0, v2, v1}, Landroid/util/Size;-><init>(II)V

    return-object p0

    :cond_5
    const-wide/high16 v3, 0x3ff0000000000000L    # 1.0

    .line 727
    invoke-static {p0, p1, v3, v4}, Ljava/lang/Double;->compare(DD)I

    move-result v0

    if-nez v0, :cond_6

    .line 728
    new-instance p0, Landroid/util/Size;

    invoke-direct {p0, v2, v2}, Landroid/util/Size;-><init>(II)V

    return-object p0

    :cond_6
    const-wide v2, 0x3ffc71c71c71c71cL    # 1.7777777777777777

    .line 729
    invoke-static {p0, p1, v2, v3}, Ljava/lang/Double;->compare(DD)I

    move-result p0

    if-nez p0, :cond_7

    .line 730
    new-instance p0, Landroid/util/Size;

    const/16 p1, 0x500

    invoke-direct {p0, p1, v1}, Landroid/util/Size;-><init>(II)V

    return-object p0

    .line 732
    :cond_7
    new-instance p0, Landroid/util/Size;

    const/16 p1, 0x640

    invoke-direct {p0, p1, v1}, Landroid/util/Size;-><init>(II)V

    return-object p0

    :cond_8
    return-object v0
.end method

.method public getPreviewStreamNum()I
    .locals 1

    .line 3325
    invoke-virtual {p0}, Lcom/oplus/camera/capmode/d;->isSatOpen()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 3326
    iget-object v0, p0, Lcom/oplus/camera/capmode/d;->mApsDecisionResultLock:Ljava/lang/Object;

    monitor-enter v0

    .line 3327
    :try_start_0
    iget p0, p0, Lcom/oplus/camera/capmode/d;->mSensorNumber:I

    monitor-exit v0

    return p0

    :catchall_0
    move-exception p0

    .line 3328
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0

    .line 3331
    :cond_0
    invoke-super {p0}, Lcom/oplus/camera/capmode/BaseMode;->getPreviewStreamNum()I

    move-result p0

    return p0
.end method

.method public getReceiveBustShotNum()I
    .locals 0

    .line 2574
    iget p0, p0, Lcom/oplus/camera/capmode/d;->mReceivedSnapNum:I

    return p0
.end method

.method public getShutterButtonInfo()Lcom/oplus/camera/ui/control/b;
    .locals 4

    .line 913
    invoke-super {p0}, Lcom/oplus/camera/capmode/BaseMode;->getShutterButtonInfo()Lcom/oplus/camera/ui/control/b;

    move-result-object v0

    .line 915
    invoke-static {}, Lcom/oplus/camera/util/Util;->ao()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 916
    iget-object v1, p0, Lcom/oplus/camera/capmode/d;->mCameraUIInterface:Lcom/oplus/camera/ui/CameraUIInterface;

    invoke-interface {v1}, Lcom/oplus/camera/ui/CameraUIInterface;->s()I

    move-result v1

    const/16 v2, 0x1c

    const/16 v3, 0x1a

    if-eq v1, v2, :cond_1

    iget-object v1, p0, Lcom/oplus/camera/capmode/d;->mCameraUIInterface:Lcom/oplus/camera/ui/CameraUIInterface;

    .line 917
    invoke-interface {v1}, Lcom/oplus/camera/ui/CameraUIInterface;->s()I

    move-result v1

    const/16 v2, 0x1d

    if-eq v1, v2, :cond_1

    iget-object p0, p0, Lcom/oplus/camera/capmode/d;->mCameraUIInterface:Lcom/oplus/camera/ui/CameraUIInterface;

    .line 918
    invoke-interface {p0}, Lcom/oplus/camera/ui/CameraUIInterface;->s()I

    move-result p0

    if-ne p0, v3, :cond_0

    goto :goto_0

    :cond_0
    const/16 p0, 0x17

    .line 921
    invoke-virtual {v0, p0}, Lcom/oplus/camera/ui/control/b;->a(I)V

    goto :goto_1

    .line 919
    :cond_1
    :goto_0
    invoke-virtual {v0, v3}, Lcom/oplus/camera/ui/control/b;->a(I)V

    :cond_2
    :goto_1
    return-object v0
.end method

.method public getSupportFunction(Ljava/lang/String;)Z
    .locals 18

    move-object/from16 v0, p0

    .line 1086
    invoke-static/range {p1 .. p1}, Lcom/oplus/camera/entry/b;->d(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 1087
    iget-boolean v2, v0, Lcom/oplus/camera/capmode/d;->mbFrontCamera:Z

    .line 1089
    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v3

    const-string v4, "key_high_picture_size"

    const-string v5, "pref_none_sat_ultra_wide_angle_key"

    const-string v6, "pref_camera_pi_ai_mode_key"

    const-string v7, "pref_front_zoom_key"

    const-string v8, "key_support_update_thumbnail_user_picture"

    const/4 v10, 0x2

    const/4 v11, 0x6

    const-string v12, "func_super_text"

    const-string v13, "high_resolution_cancel_snapshot"

    const-string v14, "key_beauty3d"

    const-string v15, "func_face_beauty_process"

    const/16 v16, 0x0

    const/4 v9, 0x1

    sparse-switch v3, :sswitch_data_0

    goto/16 :goto_0

    :sswitch_0
    const-string v3, "pref_camera_tap_shutter_key"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    const/16 v3, 0x35

    goto/16 :goto_1

    :sswitch_1
    const-string v3, "pref_filter_menu"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    const/16 v3, 0x2e

    goto/16 :goto_1

    :sswitch_2
    const-string v3, "pref_support_night_process"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    const/16 v3, 0x2d

    goto/16 :goto_1

    :sswitch_3
    const-string v3, "key_support_no_face_forbid_beauty"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    const/4 v3, 0x5

    goto/16 :goto_1

    :sswitch_4
    const-string v3, "pref_expand_popbar_key"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    const/16 v3, 0x1c

    goto/16 :goto_1

    :sswitch_5
    const-string v3, "key_raw_hdr"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    const/16 v3, 0x31

    goto/16 :goto_1

    :sswitch_6
    const-string v3, "pref_camera_flashmode_key"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    const/16 v3, 0x17

    goto/16 :goto_1

    :sswitch_7
    const-string v3, "pref_filter_process_key"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    const/16 v3, 0xc

    goto/16 :goto_1

    :sswitch_8
    const-string v3, "pref_support_capture_preview"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    const/16 v3, 0x11

    goto/16 :goto_1

    :sswitch_9
    const-string v3, "key_suppport_multi_focus"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    const/16 v3, 0x3e

    goto/16 :goto_1

    :sswitch_a
    const-string v3, "pref_macro_switch"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    const/16 v3, 0x46

    goto/16 :goto_1

    :sswitch_b
    const-string v3, "pref_switch_front_dual_camera_key"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    const/16 v3, 0x24

    goto/16 :goto_1

    :sswitch_c
    invoke-virtual {v1, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    const/16 v3, 0x38

    goto/16 :goto_1

    :sswitch_d
    const-string v3, "pref_auto_night_scence_key"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    const/16 v3, 0x14

    goto/16 :goto_1

    :sswitch_e
    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    const/16 v3, 0x32

    goto/16 :goto_1

    :sswitch_f
    const-string v3, "key_remosaic"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    const/16 v3, 0x23

    goto/16 :goto_1

    :sswitch_10
    const-string v3, "key_support_makeup"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    const/16 v3, 0x19

    goto/16 :goto_1

    :sswitch_11
    const-string v3, "func_face_slender_process"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    const/16 v3, 0xe

    goto/16 :goto_1

    :sswitch_12
    const-string v3, "pref_face_detection_key"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    const/16 v3, 0x26

    goto/16 :goto_1

    :sswitch_13
    const-string v3, "pref_heif_support_key"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    move v3, v9

    goto/16 :goto_1

    :sswitch_14
    const-string v3, "pref_camera_gradienter_key"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    const/16 v3, 0xa

    goto/16 :goto_1

    :sswitch_15
    const-string v3, "key_beauty3d_main_face_detect"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    const/16 v3, 0x25

    goto/16 :goto_1

    :sswitch_16
    const-string v3, "func_mode_panel"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    move/from16 v3, v16

    goto/16 :goto_1

    :sswitch_17
    invoke-virtual {v1, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    const/16 v3, 0x36

    goto/16 :goto_1

    :sswitch_18
    const-string v3, "func_super_text_gpu_process"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    const/16 v3, 0x3a

    goto/16 :goto_1

    :sswitch_19
    const-string v3, "pref_zoom_key"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    const/16 v3, 0x3b

    goto/16 :goto_1

    :sswitch_1a
    invoke-virtual {v1, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    const/16 v3, 0x29

    goto/16 :goto_1

    :sswitch_1b
    const-string v3, "pref_camera_pi_mode_key"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    const/16 v3, 0x2b

    goto/16 :goto_1

    :sswitch_1c
    const-string v3, "func_sat_camera"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    const/16 v3, 0x34

    goto/16 :goto_1

    :sswitch_1d
    const-string v3, "pref_ultra_wide_high_picture_size_key"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    const/16 v3, 0x33

    goto/16 :goto_1

    :sswitch_1e
    const-string v3, "pref_qr_code_key"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    const/16 v3, 0x3d

    goto/16 :goto_1

    :sswitch_1f
    const-string v3, "func_google_lens"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    const/16 v3, 0x3f

    goto/16 :goto_1

    :sswitch_20
    invoke-virtual {v1, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    const/16 v3, 0x3c

    goto/16 :goto_1

    :sswitch_21
    const-string v3, "pref_fuji_filter_menu"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    const/16 v3, 0x30

    goto/16 :goto_1

    :sswitch_22
    const-string v3, "pref_burst_shot_key"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    const/16 v3, 0x10

    goto/16 :goto_1

    :sswitch_23
    const-string v3, "pref_camera_torch_mode_key"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    const/16 v3, 0x15

    goto/16 :goto_1

    :sswitch_24
    invoke-virtual {v1, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    const/16 v3, 0x13

    goto/16 :goto_1

    :sswitch_25
    const-string v3, "pref_subsetting_key"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    const/16 v3, 0x9

    goto/16 :goto_1

    :sswitch_26
    const-string v3, "key_photo_mode_filter"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    const/16 v3, 0x47

    goto/16 :goto_1

    :sswitch_27
    const-string v3, "func_pf_v3"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    const/16 v3, 0x2a

    goto/16 :goto_1

    :sswitch_28
    invoke-virtual {v1, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    const/16 v3, 0x12

    goto/16 :goto_1

    :sswitch_29
    const-string v3, "pref_face_rectify_key"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    const/16 v3, 0x37

    goto/16 :goto_1

    :sswitch_2a
    const-string v3, "func_super_text_cpu_process"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    const/16 v3, 0x39

    goto/16 :goto_1

    :sswitch_2b
    invoke-virtual {v1, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    const/16 v3, 0x1d

    goto/16 :goto_1

    :sswitch_2c
    const-string v3, "pref_camera_hdr_mode_key"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    const/16 v3, 0x18

    goto/16 :goto_1

    :sswitch_2d
    const-string v3, "key_support_grand_tour_fitlers"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    const/16 v3, 0x2f

    goto/16 :goto_1

    :sswitch_2e
    const-string v3, "func_face_beauty_custom"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    const/16 v3, 0x1e

    goto/16 :goto_1

    :sswitch_2f
    const-string v3, "func_face_beauty_common"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    const/16 v3, 0x1f

    goto/16 :goto_1

    :sswitch_30
    const-string v3, "pref_ai_scene_key"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    const/16 v3, 0x21

    goto/16 :goto_1

    :sswitch_31
    const-string v3, "pref_10bits_heic_encode_key"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    const/16 v3, 0x41

    goto/16 :goto_1

    :sswitch_32
    const-string v3, "key_bubble_type_zoom_ultra_wide"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    const/16 v3, 0x42

    goto/16 :goto_1

    :sswitch_33
    const-string v3, "pref_camera_timer_shutter_key"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    const/4 v3, 0x3

    goto/16 :goto_1

    :sswitch_34
    invoke-virtual {v1, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    const/16 v3, 0x1a

    goto/16 :goto_1

    :sswitch_35
    const-string v3, "pref_setting_key"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    const/16 v3, 0x8

    goto/16 :goto_1

    :sswitch_36
    const-string v3, "key_support_insensor_zoom_20x"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    const/16 v3, 0x40

    goto/16 :goto_1

    :sswitch_37
    const-string v3, "pref_super_clear_portrait"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    const/16 v3, 0x22

    goto/16 :goto_1

    :sswitch_38
    const-string v3, "pref_camera_high_resolution_key"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    const/4 v3, 0x4

    goto/16 :goto_1

    :sswitch_39
    const-string v3, "pref_camera_vivid_effect_key"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    const/16 v3, 0xf

    goto/16 :goto_1

    :sswitch_3a
    const-string v3, "pref_watermark_function_key"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    const/16 v3, 0x20

    goto/16 :goto_1

    :sswitch_3b
    const-string v3, "pref_camera_photo_ratio_key"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    move v3, v10

    goto/16 :goto_1

    :sswitch_3c
    const-string v3, "pref_support_post_view"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    const/16 v3, 0xb

    goto/16 :goto_1

    :sswitch_3d
    const-string v3, "support_focus_out_of_range"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    const/16 v3, 0x44

    goto/16 :goto_1

    :sswitch_3e
    const-string v3, "func_torch_soft_light"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    const/16 v3, 0x16

    goto/16 :goto_1

    :sswitch_3f
    const-string v3, "pref_save_jpg_after_pause_key"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    const/16 v3, 0xd

    goto :goto_1

    :sswitch_40
    const-string v3, "pref_assist_gradienter"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    const/16 v3, 0x28

    goto :goto_1

    :sswitch_41
    const-string v3, "key_show_pull_down_tip"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    const/16 v3, 0x45

    goto :goto_1

    :sswitch_42
    const-string v3, "key_support_show_dim_hint"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    const/4 v3, 0x7

    goto :goto_1

    :sswitch_43
    const-string v3, "pref_support_raw_post_process"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    const/16 v3, 0x2c

    goto :goto_1

    :sswitch_44
    const-string v3, "key_support_mode_change_vibrate"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    move v3, v11

    goto :goto_1

    :sswitch_45
    const-string v3, "pref_camera_assistant_line_key"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    const/16 v3, 0x27

    goto :goto_1

    :sswitch_46
    const-string v3, "pref_tele_small_preview_key"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    const/16 v3, 0x43

    goto :goto_1

    :sswitch_47
    const-string v3, "func_ais_snapshot"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    const/16 v3, 0x1b

    goto :goto_1

    :cond_0
    :goto_0
    const/4 v3, -0x1

    :goto_1
    const-string v17, "com.oplus.feature.pi.ai.support"

    packed-switch v3, :pswitch_data_0

    goto/16 :goto_6

    :pswitch_0
    if-nez v2, :cond_2

    const-string v0, "com.oplus.mono.filter.mode.place"

    .line 1451
    invoke-static {v0}, Lcom/oplus/camera/aps/config/CameraConfig;->getConfigIntValue(Ljava/lang/String;)I

    move-result v0

    if-eqz v0, :cond_1

    const-string v0, "com.oplus.mono.filter.mode.place"

    .line 1453
    invoke-static {v0}, Lcom/oplus/camera/aps/config/CameraConfig;->getConfigIntValue(Ljava/lang/String;)I

    move-result v0

    if-ne v10, v0, :cond_2

    :cond_1
    move/from16 v16, v9

    :cond_2
    return v16

    :pswitch_1
    if-nez v2, :cond_3

    const-string v0, "com.oplus.feature.auto.micro"

    .line 1447
    invoke-static {v0}, Lcom/oplus/camera/aps/config/CameraConfig;->getConfigBooleanValue(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3

    move/from16 v16, v9

    :cond_3
    return v16

    .line 1442
    :pswitch_2
    iget-object v1, v0, Lcom/oplus/camera/capmode/d;->mCameraInterface:Lcom/oplus/camera/capmode/a;

    if-eqz v1, :cond_4

    iget-object v0, v0, Lcom/oplus/camera/capmode/d;->mCameraInterface:Lcom/oplus/camera/capmode/a;

    .line 1443
    invoke-interface {v0}, Lcom/oplus/camera/capmode/a;->i()Z

    move-result v0

    if-eqz v0, :cond_4

    if-nez v2, :cond_4

    move/from16 v16, v9

    :cond_4
    return v16

    :pswitch_3
    xor-int/lit8 v0, v2, 0x1

    return v0

    :pswitch_4
    const-string v1, "com.oplus.tele.small.preview.support"

    .line 1435
    invoke-static {v1}, Lcom/oplus/camera/aps/config/CameraConfig;->getConfigBooleanValue(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_5

    .line 1436
    invoke-virtual/range {p0 .. p0}, Lcom/oplus/camera/capmode/d;->isSatOpen()Z

    move-result v0

    if-eqz v0, :cond_5

    move/from16 v16, v9

    :cond_5
    return v16

    .line 1428
    :pswitch_5
    iget-boolean v1, v0, Lcom/oplus/camera/capmode/d;->mbFrontCamera:Z

    if-nez v1, :cond_7

    .line 1429
    invoke-virtual/range {p0 .. p0}, Lcom/oplus/camera/capmode/d;->isSatOpen()Z

    move-result v1

    if-nez v1, :cond_6

    invoke-virtual {v0, v5}, Lcom/oplus/camera/capmode/d;->getSupportFunction(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_7

    :cond_6
    iget-object v1, v0, Lcom/oplus/camera/capmode/d;->mCameraUIInterface:Lcom/oplus/camera/ui/CameraUIInterface;

    if-eqz v1, :cond_7

    iget-object v1, v0, Lcom/oplus/camera/capmode/d;->mCameraUIInterface:Lcom/oplus/camera/ui/CameraUIInterface;

    .line 1431
    invoke-interface {v1}, Lcom/oplus/camera/ui/CameraUIInterface;->R()Z

    move-result v1

    if-nez v1, :cond_7

    iget-object v0, v0, Lcom/oplus/camera/capmode/d;->mCameraUIInterface:Lcom/oplus/camera/ui/CameraUIInterface;

    .line 1432
    invoke-interface {v0}, Lcom/oplus/camera/ui/CameraUIInterface;->A()Z

    move-result v0

    if-nez v0, :cond_7

    move/from16 v16, v9

    :cond_7
    return v16

    :pswitch_6
    const-string v1, "com.oplus.10bits.heic.encode.support"

    .line 1422
    invoke-static {v1}, Lcom/oplus/camera/aps/config/CameraConfig;->getConfigBooleanValue(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_8

    iget-boolean v1, v0, Lcom/oplus/camera/capmode/d;->mbFrontCamera:Z

    if-nez v1, :cond_8

    iget-object v1, v0, Lcom/oplus/camera/capmode/d;->mCameraInterface:Lcom/oplus/camera/capmode/a;

    if-eqz v1, :cond_8

    iget-object v0, v0, Lcom/oplus/camera/capmode/d;->mCameraInterface:Lcom/oplus/camera/capmode/a;

    .line 1425
    invoke-interface {v0}, Lcom/oplus/camera/capmode/a;->i()Z

    move-result v0

    if-eqz v0, :cond_8

    move/from16 v16, v9

    :cond_8
    return v16

    :pswitch_7
    const-string v1, "com.oplus.feature.insensor.zoom.20x.support"

    .line 1417
    invoke-static {v1}, Lcom/oplus/camera/aps/config/CameraConfig;->getConfigBooleanValue(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_9

    iget-object v1, v0, Lcom/oplus/camera/capmode/d;->mCameraInterface:Lcom/oplus/camera/capmode/a;

    if-eqz v1, :cond_9

    iget-object v0, v0, Lcom/oplus/camera/capmode/d;->mCameraInterface:Lcom/oplus/camera/capmode/a;

    .line 1419
    invoke-interface {v0}, Lcom/oplus/camera/capmode/a;->i()Z

    move-result v0

    if-eqz v0, :cond_9

    move/from16 v16, v9

    :cond_9
    return v16

    .line 1411
    :pswitch_8
    invoke-static {}, Lcom/oplus/camera/l/c;->a()Z

    move-result v1

    if-eqz v1, :cond_b

    iget-object v1, v0, Lcom/oplus/camera/capmode/d;->mCameraInterface:Lcom/oplus/camera/capmode/a;

    if-eqz v1, :cond_b

    iget-object v1, v0, Lcom/oplus/camera/capmode/d;->mCameraInterface:Lcom/oplus/camera/capmode/a;

    .line 1412
    invoke-interface {v1}, Lcom/oplus/camera/capmode/a;->i()Z

    move-result v1

    if-eqz v1, :cond_b

    iget-boolean v1, v0, Lcom/oplus/camera/capmode/d;->mbFrontCamera:Z

    if-nez v1, :cond_b

    .line 1414
    invoke-direct/range {p0 .. p0}, Lcom/oplus/camera/capmode/d;->isDeviceLocked()Z

    move-result v1

    if-eqz v1, :cond_a

    iget-object v0, v0, Lcom/oplus/camera/capmode/d;->mCameraEntry:Lcom/oplus/camera/entry/b;

    invoke-virtual {v0}, Lcom/oplus/camera/entry/b;->w()Z

    move-result v0

    if-nez v0, :cond_b

    :cond_a
    move/from16 v16, v9

    :cond_b
    return v16

    :pswitch_9
    xor-int/lit8 v0, v2, 0x1

    return v0

    :pswitch_a
    const-string v1, "com.oplus.feature.qr.code.enable.support"

    .line 1400
    invoke-static {v1}, Lcom/oplus/camera/aps/config/CameraConfig;->getConfigBooleanValue(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_c

    iget-boolean v1, v0, Lcom/oplus/camera/capmode/d;->mbFrontCamera:Z

    if-nez v1, :cond_c

    .line 1402
    invoke-virtual/range {p0 .. p0}, Lcom/oplus/camera/capmode/d;->isInNightProcess()Z

    move-result v1

    if-nez v1, :cond_c

    .line 1403
    invoke-virtual/range {p0 .. p0}, Lcom/oplus/camera/capmode/d;->isSuperTextOpen()Z

    move-result v1

    if-nez v1, :cond_c

    iget-object v1, v0, Lcom/oplus/camera/capmode/d;->mCameraInterface:Lcom/oplus/camera/capmode/a;

    if-eqz v1, :cond_c

    iget-object v0, v0, Lcom/oplus/camera/capmode/d;->mCameraInterface:Lcom/oplus/camera/capmode/a;

    .line 1405
    invoke-interface {v0}, Lcom/oplus/camera/capmode/a;->i()Z

    move-result v0

    if-eqz v0, :cond_c

    move/from16 v16, v9

    :cond_c
    return v16

    .line 1390
    :pswitch_b
    iget-boolean v1, v0, Lcom/oplus/camera/capmode/d;->mbFrontCamera:Z

    if-eqz v1, :cond_d

    const-string v1, "com.oplus.feature.front.camera.auto.zoom.support"

    .line 1391
    invoke-static {v1}, Lcom/oplus/camera/aps/config/CameraConfig;->getConfigBooleanValue(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_d

    iget-object v1, v0, Lcom/oplus/camera/capmode/d;->mCameraInterface:Lcom/oplus/camera/capmode/a;

    if-eqz v1, :cond_d

    iget-object v0, v0, Lcom/oplus/camera/capmode/d;->mCameraInterface:Lcom/oplus/camera/capmode/a;

    .line 1393
    invoke-interface {v0}, Lcom/oplus/camera/capmode/a;->i()Z

    move-result v0

    if-eqz v0, :cond_d

    return v9

    :cond_d
    return v16

    .line 1377
    :pswitch_c
    invoke-virtual {v0, v7}, Lcom/oplus/camera/capmode/d;->getSupportFunction(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_e

    return v9

    .line 1381
    :cond_e
    invoke-virtual/range {p0 .. p0}, Lcom/oplus/camera/capmode/d;->isHighPictureSize()Z

    move-result v2

    if-eqz v2, :cond_f

    const-string v2, "com.oplus.ultra.wide.high.picturesize"

    .line 1382
    invoke-static {v2}, Lcom/oplus/camera/aps/config/CameraConfig;->getConfigBooleanValue(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_10

    .line 1383
    :cond_f
    invoke-virtual/range {p0 .. p0}, Lcom/oplus/camera/capmode/d;->getCurrFilterIndex()I

    move-result v2

    invoke-virtual {v0, v2}, Lcom/oplus/camera/capmode/d;->isMonoIndex(I)Z

    move-result v2

    if-eqz v2, :cond_48

    :cond_10
    return v16

    .line 1373
    :pswitch_d
    invoke-virtual {v0, v12}, Lcom/oplus/camera/capmode/d;->getSupportFunction(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_11

    const-string v0, "com.oplus.feature.super.text.cpu.process"

    .line 1374
    invoke-static {v0}, Lcom/oplus/camera/aps/config/CameraConfig;->getConfigBooleanValue(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_11

    move/from16 v16, v9

    :cond_11
    return v16

    .line 1369
    :pswitch_e
    invoke-virtual {v0, v12}, Lcom/oplus/camera/capmode/d;->getSupportFunction(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_12

    const-string v0, "com.oplus.feature.super.text.cpu.process"

    .line 1370
    invoke-static {v0}, Lcom/oplus/camera/aps/config/CameraConfig;->getConfigBooleanValue(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_12

    move/from16 v16, v9

    :cond_12
    return v16

    :pswitch_f
    const-string v1, "com.oplus.feature.super.text.support"

    .line 1365
    invoke-static {v1}, Lcom/oplus/camera/aps/config/CameraConfig;->getConfigBooleanValue(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_13

    iget-boolean v0, v0, Lcom/oplus/camera/capmode/d;->mbFrontCamera:Z

    if-nez v0, :cond_13

    move/from16 v16, v9

    :cond_13
    return v16

    :pswitch_10
    const-string v1, "com.oplus.face.rectify.support"

    .line 1360
    invoke-static {v1}, Lcom/oplus/camera/aps/config/CameraConfig;->getConfigBooleanValue(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_14

    iget-object v1, v0, Lcom/oplus/camera/capmode/d;->mCameraInterface:Lcom/oplus/camera/capmode/a;

    if-eqz v1, :cond_14

    iget-object v0, v0, Lcom/oplus/camera/capmode/d;->mCameraInterface:Lcom/oplus/camera/capmode/a;

    .line 1362
    invoke-interface {v0}, Lcom/oplus/camera/capmode/a;->i()Z

    move-result v0

    if-eqz v0, :cond_14

    move/from16 v16, v9

    :cond_14
    return v16

    .line 1355
    :pswitch_11
    invoke-virtual/range {p0 .. p0}, Lcom/oplus/camera/capmode/d;->isSupportNoneSat()Z

    move-result v1

    if-eqz v1, :cond_15

    iget-object v1, v0, Lcom/oplus/camera/capmode/d;->mCameraInterface:Lcom/oplus/camera/capmode/a;

    if-eqz v1, :cond_15

    iget-object v0, v0, Lcom/oplus/camera/capmode/d;->mCameraInterface:Lcom/oplus/camera/capmode/a;

    .line 1357
    invoke-interface {v0}, Lcom/oplus/camera/capmode/a;->i()Z

    move-result v0

    if-eqz v0, :cond_15

    move/from16 v16, v9

    :cond_15
    return v16

    .line 1352
    :pswitch_12
    iget-boolean v1, v0, Lcom/oplus/camera/capmode/d;->mbNightJpegDone:Z

    if-eqz v1, :cond_16

    iget-boolean v0, v0, Lcom/oplus/camera/capmode/d;->mbCaptureRawTimeDone:Z

    if-eqz v0, :cond_16

    move/from16 v16, v9

    :cond_16
    return v16

    :pswitch_13
    if-nez v2, :cond_17

    .line 1347
    invoke-static {}, Lcom/oplus/camera/e/a;->f()Z

    move-result v1

    if-eqz v1, :cond_17

    iget-object v1, v0, Lcom/oplus/camera/capmode/d;->mCameraInterface:Lcom/oplus/camera/capmode/a;

    if-eqz v1, :cond_17

    iget-object v0, v0, Lcom/oplus/camera/capmode/d;->mCameraInterface:Lcom/oplus/camera/capmode/a;

    .line 1349
    invoke-interface {v0}, Lcom/oplus/camera/capmode/a;->i()Z

    move-result v0

    if-eqz v0, :cond_17

    move/from16 v16, v9

    :cond_17
    return v16

    .line 1342
    :pswitch_14
    invoke-virtual {v0, v4}, Lcom/oplus/camera/capmode/d;->getSupportFunction(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_18

    const-string v0, "com.oplus.ultra.wide.high.picturesize"

    .line 1343
    invoke-static {v0}, Lcom/oplus/camera/aps/config/CameraConfig;->getConfigBooleanValue(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_18

    move/from16 v16, v9

    :cond_18
    return v16

    .line 1333
    :pswitch_15
    iget-object v2, v0, Lcom/oplus/camera/capmode/d;->mCameraInterface:Lcom/oplus/camera/capmode/a;

    if-eqz v2, :cond_48

    iget-object v2, v0, Lcom/oplus/camera/capmode/d;->mCameraInterface:Lcom/oplus/camera/capmode/a;

    .line 1334
    invoke-interface {v2}, Lcom/oplus/camera/capmode/a;->i()Z

    move-result v2

    if-eqz v2, :cond_48

    const-string v2, "com.oplus.feature.high.definition.support"

    .line 1335
    invoke-static {v2}, Lcom/oplus/camera/aps/config/CameraConfig;->getConfigBooleanValue(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_48

    .line 1336
    iget v0, v0, Lcom/oplus/camera/capmode/d;->mCameraId:I

    const-string v1, "com.oplus.high.picturesize"

    invoke-static {v1, v0}, Lcom/oplus/camera/aps/config/CameraConfig;->getSizeConfigValue(Ljava/lang/String;I)Landroid/util/Size;

    move-result-object v0

    if-eqz v0, :cond_19

    move/from16 v16, v9

    :cond_19
    return v16

    .line 1322
    :pswitch_16
    invoke-static {}, Lcom/oplus/camera/util/Util;->C()Z

    move-result v3

    if-eqz v3, :cond_48

    if-nez v2, :cond_1b

    .line 1323
    invoke-virtual/range {p0 .. p0}, Lcom/oplus/camera/capmode/d;->isHighPictureSize()Z

    move-result v0

    if-eqz v0, :cond_1a

    goto :goto_2

    :cond_1a
    const-string v0, "com.oplus.support.raw.hdr"

    .line 1327
    invoke-static {v0}, Lcom/oplus/camera/aps/config/CameraConfig;->getConfigBooleanValue(Ljava/lang/String;)Z

    move-result v0

    return v0

    :cond_1b
    :goto_2
    return v16

    :pswitch_17
    const-string v1, "com.oplus.fuji.style.filter.support"

    .line 1317
    invoke-static {v1}, Lcom/oplus/camera/aps/config/CameraConfig;->getConfigBooleanValue(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1c

    iget-boolean v0, v0, Lcom/oplus/camera/capmode/d;->mbFrontCamera:Z

    if-nez v0, :cond_1c

    move/from16 v16, v9

    :cond_1c
    return v16

    :pswitch_18
    const-string v0, "com.oplus.support.grand.tour.filter"

    .line 1314
    invoke-static {v0}, Lcom/oplus/camera/aps/config/CameraConfig;->getConfigBooleanValue(Ljava/lang/String;)Z

    move-result v0

    return v0

    :pswitch_19
    const-string v1, "pref_filter_process_key"

    .line 1311
    invoke-virtual {v0, v1}, Lcom/oplus/camera/capmode/d;->getSupportFunction(Ljava/lang/String;)Z

    move-result v0

    return v0

    .line 1294
    :pswitch_1a
    invoke-virtual/range {p0 .. p0}, Lcom/oplus/camera/capmode/d;->getCameraMode()Ljava/lang/String;

    move-result-object v1

    iget v2, v0, Lcom/oplus/camera/capmode/d;->mCameraId:I

    const-string v3, "aps_algo_supernight"

    invoke-static {v1, v2, v3}, Lcom/oplus/camera/aps/util/AlgoSwitchConfig;->getSupportCaptureAlgo(Ljava/lang/String;ILjava/lang/String;)Z

    move-result v1

    .line 1296
    invoke-virtual/range {p0 .. p0}, Lcom/oplus/camera/capmode/d;->getCameraMode()Ljava/lang/String;

    move-result-object v2

    iget v3, v0, Lcom/oplus/camera/capmode/d;->mCameraId:I

    const-string v4, "aps_algo_supernight_se"

    invoke-static {v2, v3, v4}, Lcom/oplus/camera/aps/util/AlgoSwitchConfig;->getSupportCaptureAlgo(Ljava/lang/String;ILjava/lang/String;)Z

    move-result v2

    const-string v3, "com.oplus.ainight.support.night.process"

    .line 1298
    invoke-static {v3}, Lcom/oplus/camera/aps/config/CameraConfig;->getConfigBooleanValue(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_1e

    .line 1299
    invoke-virtual/range {p0 .. p0}, Lcom/oplus/camera/capmode/d;->isAISceneOpen()Z

    move-result v3

    if-eqz v3, :cond_1e

    const/16 v3, 0xc

    .line 1300
    iget-object v4, v0, Lcom/oplus/camera/capmode/d;->mCameraInterface:Lcom/oplus/camera/capmode/a;

    if-eqz v4, :cond_1d

    iget-object v4, v0, Lcom/oplus/camera/capmode/d;->mCameraInterface:Lcom/oplus/camera/capmode/a;

    invoke-interface {v4}, Lcom/oplus/camera/capmode/a;->j()I

    move-result v4

    goto :goto_3

    :cond_1d
    move/from16 v4, v16

    :goto_3
    if-ne v3, v4, :cond_1e

    move v3, v9

    goto :goto_4

    :cond_1e
    move/from16 v3, v16

    .line 1301
    :goto_4
    invoke-virtual/range {p0 .. p0}, Lcom/oplus/camera/capmode/d;->getCameraMode()Ljava/lang/String;

    move-result-object v4

    iget v5, v0, Lcom/oplus/camera/capmode/d;->mCameraId:I

    const-string v6, "aps_algo_portrait_supernight"

    invoke-static {v4, v5, v6}, Lcom/oplus/camera/aps/util/AlgoSwitchConfig;->getSupportCaptureAlgo(Ljava/lang/String;ILjava/lang/String;)Z

    move-result v4

    if-nez v1, :cond_1f

    if-nez v2, :cond_1f

    if-nez v3, :cond_1f

    if-eqz v4, :cond_20

    const-string v1, "com.oplus.night.offline.r2y"

    .line 1307
    invoke-static {v1}, Lcom/oplus/camera/aps/config/CameraConfig;->getConfigBooleanValue(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_20

    .line 1308
    :cond_1f
    invoke-virtual/range {p0 .. p0}, Lcom/oplus/camera/capmode/d;->isHighPictureSize()Z

    move-result v0

    if-nez v0, :cond_20

    move/from16 v16, v9

    :cond_20
    return v16

    .line 1288
    :pswitch_1b
    invoke-virtual/range {p0 .. p0}, Lcom/oplus/camera/capmode/d;->getCameraMode()Ljava/lang/String;

    move-result-object v1

    iget v2, v0, Lcom/oplus/camera/capmode/d;->mCameraId:I

    const-string v3, "aps_algo_raw2yuv"

    invoke-static {v1, v2, v3}, Lcom/oplus/camera/aps/util/AlgoSwitchConfig;->getSupportCaptureAlgo(Ljava/lang/String;ILjava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_21

    const-string v1, "pref_support_night_process"

    .line 1289
    invoke-virtual {v0, v1}, Lcom/oplus/camera/capmode/d;->getSupportFunction(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_21

    const-string v1, "key_raw_hdr"

    .line 1290
    invoke-virtual {v0, v1}, Lcom/oplus/camera/capmode/d;->getSupportFunction(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_22

    :cond_21
    move/from16 v16, v9

    :cond_22
    return v16

    .line 1282
    :pswitch_1c
    iget-object v1, v0, Lcom/oplus/camera/capmode/d;->mCameraInterface:Lcom/oplus/camera/capmode/a;

    if-eqz v1, :cond_23

    iget-object v1, v0, Lcom/oplus/camera/capmode/d;->mCameraInterface:Lcom/oplus/camera/capmode/a;

    invoke-interface {v1}, Lcom/oplus/camera/capmode/a;->i()Z

    move-result v1

    if-eqz v1, :cond_23

    .line 1283
    invoke-virtual/range {p0 .. p0}, Lcom/oplus/camera/capmode/d;->getCameraMode()Ljava/lang/String;

    move-result-object v1

    iget v0, v0, Lcom/oplus/camera/capmode/d;->mCameraId:I

    const-string v3, "aps_algo_pf"

    invoke-static {v1, v0, v3}, Lcom/oplus/camera/aps/util/AlgoSwitchConfig;->getSupportCaptureAlgo(Ljava/lang/String;ILjava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_23

    const-string v0, "com.oplus.feature.pi.support"

    .line 1284
    invoke-static {v0}, Lcom/oplus/camera/aps/config/CameraConfig;->getConfigBooleanValue(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_23

    if-nez v2, :cond_23

    move/from16 v16, v9

    :cond_23
    return v16

    .line 1275
    :pswitch_1d
    iget-object v1, v0, Lcom/oplus/camera/capmode/d;->mCameraInterface:Lcom/oplus/camera/capmode/a;

    if-eqz v1, :cond_24

    iget-object v1, v0, Lcom/oplus/camera/capmode/d;->mCameraInterface:Lcom/oplus/camera/capmode/a;

    .line 1276
    invoke-interface {v1}, Lcom/oplus/camera/capmode/a;->i()Z

    move-result v1

    if-eqz v1, :cond_24

    .line 1277
    invoke-virtual/range {p0 .. p0}, Lcom/oplus/camera/capmode/d;->getCameraMode()Ljava/lang/String;

    move-result-object v1

    iget v0, v0, Lcom/oplus/camera/capmode/d;->mCameraId:I

    const-string v3, "aps_algo_pf_v3"

    invoke-static {v1, v0, v3}, Lcom/oplus/camera/aps/util/AlgoSwitchConfig;->getSupportCaptureAlgo(Ljava/lang/String;ILjava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_24

    .line 1278
    invoke-static/range {v17 .. v17}, Lcom/oplus/camera/aps/config/CameraConfig;->getConfigBooleanValue(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_24

    if-nez v2, :cond_24

    move/from16 v16, v9

    :cond_24
    return v16

    .line 1268
    :pswitch_1e
    iget-object v1, v0, Lcom/oplus/camera/capmode/d;->mCameraInterface:Lcom/oplus/camera/capmode/a;

    if-eqz v1, :cond_26

    iget-object v1, v0, Lcom/oplus/camera/capmode/d;->mCameraInterface:Lcom/oplus/camera/capmode/a;

    invoke-interface {v1}, Lcom/oplus/camera/capmode/a;->i()Z

    move-result v1

    if-eqz v1, :cond_26

    .line 1269
    invoke-virtual/range {p0 .. p0}, Lcom/oplus/camera/capmode/d;->getCameraMode()Ljava/lang/String;

    move-result-object v1

    iget v3, v0, Lcom/oplus/camera/capmode/d;->mCameraId:I

    const-string v4, "aps_algo_pf_v1"

    invoke-static {v1, v3, v4}, Lcom/oplus/camera/aps/util/AlgoSwitchConfig;->getSupportCaptureAlgo(Ljava/lang/String;ILjava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_25

    .line 1270
    invoke-virtual/range {p0 .. p0}, Lcom/oplus/camera/capmode/d;->getCameraMode()Ljava/lang/String;

    move-result-object v1

    iget v0, v0, Lcom/oplus/camera/capmode/d;->mCameraId:I

    const-string v3, "aps_algo_pf_v3"

    invoke-static {v1, v0, v3}, Lcom/oplus/camera/aps/util/AlgoSwitchConfig;->getSupportCaptureAlgo(Ljava/lang/String;ILjava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_26

    .line 1271
    :cond_25
    invoke-static/range {v17 .. v17}, Lcom/oplus/camera/aps/config/CameraConfig;->getConfigBooleanValue(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_26

    if-nez v2, :cond_26

    move/from16 v16, v9

    :cond_26
    return v16

    .line 1265
    :pswitch_1f
    invoke-virtual/range {p0 .. p0}, Lcom/oplus/camera/capmode/d;->isShowBeauty3D()Z

    move-result v0

    xor-int/2addr v0, v9

    return v0

    .line 1252
    :pswitch_20
    invoke-virtual {v0, v14}, Lcom/oplus/camera/capmode/d;->getSupportFunction(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_28

    .line 1253
    invoke-virtual/range {p0 .. p0}, Lcom/oplus/camera/capmode/d;->getBeauty3Dstatus()I

    move-result v1

    if-eq v1, v11, :cond_27

    .line 1254
    invoke-virtual/range {p0 .. p0}, Lcom/oplus/camera/capmode/d;->getBeauty3Dstatus()I

    move-result v1

    const/4 v2, 0x7

    if-eq v1, v2, :cond_27

    .line 1255
    invoke-virtual/range {p0 .. p0}, Lcom/oplus/camera/capmode/d;->getBeauty3Dstatus()I

    move-result v1

    const/16 v2, 0x8

    if-eq v1, v2, :cond_27

    .line 1256
    invoke-virtual/range {p0 .. p0}, Lcom/oplus/camera/capmode/d;->getBeauty3Dstatus()I

    move-result v1

    const/16 v2, 0xa

    if-eq v1, v2, :cond_27

    .line 1257
    invoke-virtual/range {p0 .. p0}, Lcom/oplus/camera/capmode/d;->getBeauty3Dstatus()I

    move-result v0

    const/16 v1, 0x9

    if-ne v0, v1, :cond_28

    :cond_27
    return v16

    :cond_28
    return v9

    .line 1248
    :pswitch_21
    invoke-virtual {v0, v14}, Lcom/oplus/camera/capmode/d;->getSupportFunction(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_29

    .line 1249
    invoke-virtual/range {p0 .. p0}, Lcom/oplus/camera/capmode/d;->getFaceBeautyCurrIndex()I

    move-result v0

    const/4 v1, -0x1

    if-ne v0, v1, :cond_29

    move/from16 v16, v9

    :cond_29
    return v16

    .line 1243
    :pswitch_22
    invoke-virtual {v0, v14}, Lcom/oplus/camera/capmode/d;->getSupportFunction(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2b

    .line 1244
    invoke-virtual/range {p0 .. p0}, Lcom/oplus/camera/capmode/d;->getBeauty3Dstatus()I

    move-result v1

    if-eq v1, v10, :cond_2a

    .line 1245
    invoke-virtual/range {p0 .. p0}, Lcom/oplus/camera/capmode/d;->getBeauty3Dstatus()I

    move-result v0

    if-ne v0, v9, :cond_2b

    :cond_2a
    move/from16 v16, v9

    :cond_2b
    return v16

    :pswitch_23
    if-nez v2, :cond_2c

    .line 1240
    invoke-virtual/range {p0 .. p0}, Lcom/oplus/camera/capmode/d;->isHighPictureSize()Z

    move-result v0

    if-eqz v0, :cond_2d

    :cond_2c
    move/from16 v16, v9

    :cond_2d
    return v16

    .line 1235
    :pswitch_24
    iget-object v1, v0, Lcom/oplus/camera/capmode/d;->mCameraInterface:Lcom/oplus/camera/capmode/a;

    if-eqz v1, :cond_2e

    iget-object v0, v0, Lcom/oplus/camera/capmode/d;->mCameraInterface:Lcom/oplus/camera/capmode/a;

    .line 1236
    invoke-interface {v0}, Lcom/oplus/camera/capmode/a;->i()Z

    move-result v0

    if-eqz v0, :cond_2e

    const-string v0, "com.oplus.feature.super.clear.portrait.support"

    .line 1237
    invoke-static {v0}, Lcom/oplus/camera/aps/config/CameraConfig;->getConfigBooleanValue(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2e

    move/from16 v16, v9

    :cond_2e
    return v16

    .line 1227
    :pswitch_25
    invoke-static/range {v17 .. v17}, Lcom/oplus/camera/aps/config/CameraConfig;->getConfigBooleanValue(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2f

    .line 1228
    invoke-virtual {v0, v6}, Lcom/oplus/camera/capmode/d;->getSupportFunction(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_2f

    return v16

    :cond_2f
    xor-int/lit8 v0, v2, 0x1

    return v0

    .line 1217
    :pswitch_26
    invoke-virtual/range {p0 .. p0}, Lcom/oplus/camera/capmode/d;->isSuperTextOpen()Z

    move-result v1

    if-eqz v1, :cond_30

    invoke-virtual/range {p0 .. p0}, Lcom/oplus/camera/capmode/d;->isHasSuperTextDetectResult()Z

    move-result v1

    if-eqz v1, :cond_30

    return v16

    .line 1222
    :cond_30
    invoke-virtual/range {p0 .. p0}, Lcom/oplus/camera/capmode/d;->getCameraMode()Ljava/lang/String;

    move-result-object v1

    iget v0, v0, Lcom/oplus/camera/capmode/d;->mCameraId:I

    const-string v2, "aps_algo_watermark"

    invoke-static {v1, v0, v2}, Lcom/oplus/camera/aps/util/AlgoSwitchConfig;->getSupportCaptureAlgo(Ljava/lang/String;ILjava/lang/String;)Z

    move-result v0

    return v0

    .line 1212
    :pswitch_27
    invoke-virtual {v0, v15}, Lcom/oplus/camera/capmode/d;->getSupportFunction(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_32

    if-eqz v2, :cond_31

    const-string v0, "com.oplus.feature.face.beauty.custom.menu.support"

    .line 1214
    invoke-static {v0}, Lcom/oplus/camera/aps/config/CameraConfig;->getConfigBooleanValue(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_32

    :cond_31
    move/from16 v16, v9

    :cond_32
    return v16

    :pswitch_28
    if-eqz v2, :cond_33

    .line 1208
    invoke-virtual {v0, v15}, Lcom/oplus/camera/capmode/d;->getSupportFunction(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_33

    const-string v0, "com.oplus.feature.face.beauty.custom.menu.support"

    .line 1209
    invoke-static {v0}, Lcom/oplus/camera/aps/config/CameraConfig;->getConfigBooleanValue(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_33

    move/from16 v16, v9

    :cond_33
    return v16

    .line 1201
    :pswitch_29
    invoke-virtual {v0, v15}, Lcom/oplus/camera/capmode/d;->getSupportFunction(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_34

    .line 1202
    invoke-static {}, Lcom/oplus/camera/e/a;->e()Z

    move-result v0

    if-eqz v0, :cond_34

    if-eqz v2, :cond_34

    const-string v0, "com.oplus.feature.beauty3d.support"

    .line 1204
    invoke-static {v0}, Lcom/oplus/camera/aps/config/CameraConfig;->getConfigBooleanValue(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_34

    move/from16 v16, v9

    :cond_34
    return v16

    .line 1198
    :pswitch_2a
    iget-object v0, v0, Lcom/oplus/camera/capmode/d;->mCameraUIInterface:Lcom/oplus/camera/ui/CameraUIInterface;

    invoke-interface {v0}, Lcom/oplus/camera/ui/CameraUIInterface;->K()Z

    move-result v0

    return v0

    .line 1195
    :pswitch_2b
    invoke-virtual/range {p0 .. p0}, Lcom/oplus/camera/capmode/d;->isHighPictureSize()Z

    move-result v0

    xor-int/2addr v0, v9

    return v0

    .line 1192
    :pswitch_2c
    invoke-virtual/range {p0 .. p0}, Lcom/oplus/camera/capmode/d;->getCameraMode()Ljava/lang/String;

    move-result-object v1

    iget v0, v0, Lcom/oplus/camera/capmode/d;->mCameraId:I

    const-string v2, "aps_algo_face_beauty"

    invoke-static {v1, v0, v2}, Lcom/oplus/camera/aps/util/AlgoSwitchConfig;->getSupportCaptureAlgo(Ljava/lang/String;ILjava/lang/String;)Z

    move-result v0

    return v0

    .line 1186
    :pswitch_2d
    iget-boolean v1, v0, Lcom/oplus/camera/capmode/d;->mbFrontCamera:Z

    if-eqz v1, :cond_35

    const-string v1, "com.oplus.feature.custom.makeup.front.support"

    .line 1187
    invoke-static {v1}, Lcom/oplus/camera/aps/config/CameraConfig;->getConfigBooleanValue(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_35

    iget-object v1, v0, Lcom/oplus/camera/capmode/d;->mCameraInterface:Lcom/oplus/camera/capmode/a;

    if-eqz v1, :cond_35

    iget-object v0, v0, Lcom/oplus/camera/capmode/d;->mCameraInterface:Lcom/oplus/camera/capmode/a;

    .line 1189
    invoke-interface {v0}, Lcom/oplus/camera/capmode/a;->i()Z

    move-result v0

    if-eqz v0, :cond_35

    move/from16 v16, v9

    :cond_35
    return v16

    .line 1182
    :pswitch_2e
    invoke-virtual/range {p0 .. p0}, Lcom/oplus/camera/capmode/d;->getCameraMode()Ljava/lang/String;

    move-result-object v1

    iget v2, v0, Lcom/oplus/camera/capmode/d;->mCameraId:I

    const-string v3, "aps_algo_hdr"

    invoke-static {v1, v2, v3}, Lcom/oplus/camera/aps/util/AlgoSwitchConfig;->getSupportCaptureAlgo(Ljava/lang/String;ILjava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_36

    .line 1183
    invoke-virtual/range {p0 .. p0}, Lcom/oplus/camera/capmode/d;->getCameraMode()Ljava/lang/String;

    move-result-object v1

    iget v0, v0, Lcom/oplus/camera/capmode/d;->mCameraId:I

    const-string v2, "aps_algo_merge_hdr"

    invoke-static {v1, v0, v2}, Lcom/oplus/camera/aps/util/AlgoSwitchConfig;->getSupportCaptureAlgo(Ljava/lang/String;ILjava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_37

    :cond_36
    move/from16 v16, v9

    :cond_37
    return v16

    .line 1175
    :pswitch_2f
    invoke-static {}, Lcom/oplus/camera/util/Util;->aQ()Z

    move-result v0

    if-eqz v0, :cond_38

    return v16

    :cond_38
    xor-int/lit8 v0, v2, 0x1

    return v0

    :pswitch_30
    const-string v0, "com.oplus.feature.torch.softlight.support"

    .line 1172
    invoke-static {v0}, Lcom/oplus/camera/aps/config/CameraConfig;->getConfigBooleanValue(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_39

    if-eqz v2, :cond_39

    move/from16 v16, v9

    :cond_39
    return v16

    :pswitch_31
    return v2

    :pswitch_32
    const-string v0, "com.oplus.feature.auto.night.scence.support"

    .line 1166
    invoke-static {v0}, Lcom/oplus/camera/aps/config/CameraConfig;->getConfigBooleanValue(Ljava/lang/String;)Z

    move-result v0

    return v0

    .line 1161
    :pswitch_33
    invoke-static {}, Lcom/oplus/camera/MyApplication;->d()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/oplus/camera/util/Util;->h(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_3b

    .line 1163
    invoke-virtual/range {p0 .. p0}, Lcom/oplus/camera/capmode/d;->isHighPictureSize()Z

    move-result v1

    if-nez v1, :cond_3a

    invoke-virtual/range {p0 .. p0}, Lcom/oplus/camera/capmode/d;->isUltraHighResolutionOpened()Z

    move-result v0

    if-eqz v0, :cond_3b

    :cond_3a
    move/from16 v16, v9

    :cond_3b
    return v16

    .line 1151
    :pswitch_34
    iget-object v1, v0, Lcom/oplus/camera/capmode/d;->mCameraInterface:Lcom/oplus/camera/capmode/a;

    if-eqz v1, :cond_3c

    iget-object v1, v0, Lcom/oplus/camera/capmode/d;->mCameraInterface:Lcom/oplus/camera/capmode/a;

    .line 1152
    invoke-interface {v1}, Lcom/oplus/camera/capmode/a;->i()Z

    move-result v1

    if-eqz v1, :cond_3c

    .line 1153
    invoke-virtual/range {p0 .. p0}, Lcom/oplus/camera/capmode/d;->isInNightProcess()Z

    move-result v1

    if-eqz v1, :cond_3c

    .line 1154
    invoke-virtual/range {p0 .. p0}, Lcom/oplus/camera/capmode/d;->isInOfflineNightProcess()Z

    move-result v1

    if-nez v1, :cond_3c

    iget-boolean v1, v0, Lcom/oplus/camera/capmode/d;->mbBurstShot:Z

    if-eqz v1, :cond_3d

    .line 1156
    :cond_3c
    invoke-virtual/range {p0 .. p0}, Lcom/oplus/camera/capmode/d;->isSuperTextOpen()Z

    move-result v1

    if-nez v1, :cond_3d

    .line 1157
    invoke-virtual/range {p0 .. p0}, Lcom/oplus/camera/capmode/d;->isIdPhotoOpen()Z

    move-result v1

    if-nez v1, :cond_3d

    .line 1158
    invoke-virtual {v0, v13}, Lcom/oplus/camera/capmode/d;->getSupportFunction(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3e

    :cond_3d
    move/from16 v16, v9

    :cond_3e
    return v16

    .line 1143
    :pswitch_35
    iget-object v1, v0, Lcom/oplus/camera/capmode/d;->mCameraInterface:Lcom/oplus/camera/capmode/a;

    if-eqz v1, :cond_3f

    iget-object v1, v0, Lcom/oplus/camera/capmode/d;->mCameraInterface:Lcom/oplus/camera/capmode/a;

    .line 1144
    invoke-interface {v1}, Lcom/oplus/camera/capmode/a;->i()Z

    move-result v1

    if-eqz v1, :cond_3f

    .line 1145
    invoke-virtual {v0, v8}, Lcom/oplus/camera/capmode/d;->getSupportFunction(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_3f

    .line 1146
    invoke-virtual/range {p0 .. p0}, Lcom/oplus/camera/capmode/d;->isSuperTextOpen()Z

    move-result v1

    if-nez v1, :cond_3f

    .line 1147
    invoke-virtual/range {p0 .. p0}, Lcom/oplus/camera/capmode/d;->isIdPhotoOpen()Z

    move-result v1

    if-nez v1, :cond_3f

    .line 1148
    invoke-virtual {v0, v13}, Lcom/oplus/camera/capmode/d;->getSupportFunction(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_3f

    move/from16 v16, v9

    :cond_3f
    return v16

    .line 1134
    :pswitch_36
    iget-object v1, v0, Lcom/oplus/camera/capmode/d;->mCameraInterface:Lcom/oplus/camera/capmode/a;

    if-eqz v1, :cond_40

    iget-object v1, v0, Lcom/oplus/camera/capmode/d;->mCameraInterface:Lcom/oplus/camera/capmode/a;

    invoke-interface {v1}, Lcom/oplus/camera/capmode/a;->i()Z

    move-result v1

    if-eqz v1, :cond_42

    :cond_40
    if-nez v2, :cond_42

    .line 1136
    invoke-virtual/range {p0 .. p0}, Lcom/oplus/camera/capmode/d;->isHighPictureSize()Z

    move-result v0

    if-eqz v0, :cond_41

    goto :goto_5

    :cond_41
    return v9

    :cond_42
    :goto_5
    return v16

    :pswitch_37
    const-string v1, "com.oplus.feature.vivid.support"

    .line 1129
    invoke-static {v1}, Lcom/oplus/camera/aps/config/CameraConfig;->getConfigBooleanValue(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_43

    .line 1130
    invoke-static {}, Lcom/oplus/camera/l/c;->b()Z

    move-result v1

    if-eqz v1, :cond_43

    .line 1131
    invoke-virtual/range {p0 .. p0}, Lcom/oplus/camera/capmode/d;->isPIModeOpen()Z

    move-result v0

    if-nez v0, :cond_43

    move/from16 v16, v9

    :cond_43
    return v16

    .line 1123
    :pswitch_38
    invoke-virtual {v0, v15}, Lcom/oplus/camera/capmode/d;->getSupportFunction(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_45

    if-nez v2, :cond_44

    const-string v1, "com.oplus.facebeauty.version"

    .line 1124
    invoke-static {v1}, Lcom/oplus/camera/aps/config/CameraConfig;->getConfigIntValue(Ljava/lang/String;)I

    move-result v1

    if-lt v1, v11, :cond_45

    .line 1126
    :cond_44
    invoke-virtual/range {p0 .. p0}, Lcom/oplus/camera/capmode/d;->isShowBeauty3D()Z

    move-result v0

    if-nez v0, :cond_45

    move/from16 v16, v9

    :cond_45
    return v16

    .line 1116
    :pswitch_39
    iget-object v1, v0, Lcom/oplus/camera/capmode/d;->mCameraInterface:Lcom/oplus/camera/capmode/a;

    if-eqz v1, :cond_46

    iget-object v1, v0, Lcom/oplus/camera/capmode/d;->mCameraInterface:Lcom/oplus/camera/capmode/a;

    .line 1117
    invoke-interface {v1}, Lcom/oplus/camera/capmode/a;->i()Z

    move-result v1

    if-eqz v1, :cond_46

    const-string v1, "com.oplus.feature.postprocess.savejpeg.support"

    .line 1118
    invoke-static {v1}, Lcom/oplus/camera/aps/config/CameraConfig;->getConfigBooleanValue(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_46

    .line 1119
    invoke-virtual/range {p0 .. p0}, Lcom/oplus/camera/capmode/d;->isFlashRequired()Z

    move-result v0

    if-nez v0, :cond_46

    .line 1120
    invoke-static {}, Lcom/oplus/camera/util/Util;->C()Z

    move-result v0

    if-eqz v0, :cond_46

    move/from16 v16, v9

    :cond_46
    return v16

    .line 1113
    :pswitch_3a
    invoke-virtual/range {p0 .. p0}, Lcom/oplus/camera/capmode/d;->getCameraMode()Ljava/lang/String;

    move-result-object v1

    iget v0, v0, Lcom/oplus/camera/capmode/d;->mCameraId:I

    const-string v2, "aps_algo_filter"

    invoke-static {v1, v0, v2}, Lcom/oplus/camera/aps/util/AlgoSwitchConfig;->getSupportCaptureAlgo(Ljava/lang/String;ILjava/lang/String;)Z

    move-result v0

    return v0

    :pswitch_3b
    return v16

    .line 1102
    :pswitch_3c
    iget v0, v0, Lcom/oplus/camera/capmode/d;->mCameraEntryType:I

    invoke-static {v0}, Lcom/oplus/camera/entry/b;->b(I)Z

    move-result v0

    if-eqz v0, :cond_47

    return v16

    :cond_47
    :pswitch_3d
    return v9

    .line 1459
    :cond_48
    :goto_6
    invoke-super {v0, v1}, Lcom/oplus/camera/capmode/BaseMode;->getSupportFunction(Ljava/lang/String;)Z

    move-result v0

    return v0

    :sswitch_data_0
    .sparse-switch
        -0x7d80482d -> :sswitch_47
        -0x7bb8f589 -> :sswitch_46
        -0x7b6c9fed -> :sswitch_45
        -0x768ef054 -> :sswitch_44
        -0x74ade66d -> :sswitch_43
        -0x7336bb70 -> :sswitch_42
        -0x717ea7aa -> :sswitch_41
        -0x6aa537a9 -> :sswitch_40
        -0x68904d91 -> :sswitch_3f
        -0x61c4af01 -> :sswitch_3e
        -0x616206e3 -> :sswitch_3d
        -0x5f5094a8 -> :sswitch_3c
        -0x5f048920 -> :sswitch_3b
        -0x5efa20f1 -> :sswitch_3a
        -0x5d1e6b30 -> :sswitch_39
        -0x5c5df3f5 -> :sswitch_38
        -0x566a0cd3 -> :sswitch_37
        -0x545357a2 -> :sswitch_36
        -0x541be82c -> :sswitch_35
        -0x500c4e2d -> :sswitch_34
        -0x4f05d6eb -> :sswitch_33
        -0x4c8257a0 -> :sswitch_32
        -0x4c684fe0 -> :sswitch_31
        -0x43b4b28f -> :sswitch_30
        -0x423965f9 -> :sswitch_2f
        -0x41e20473 -> :sswitch_2e
        -0x40c9f939 -> :sswitch_2d
        -0x3f608456 -> :sswitch_2c
        -0x3f33ca13 -> :sswitch_2b
        -0x3aba411b -> :sswitch_2a
        -0x3959800e -> :sswitch_29
        -0x289e651d -> :sswitch_28
        -0x273583d5 -> :sswitch_27
        -0x2257ced9 -> :sswitch_26
        -0xdae10b4 -> :sswitch_25
        -0xd09a2ed -> :sswitch_24
        -0x953b61c -> :sswitch_23
        -0x5f8f68b -> :sswitch_22
        -0xca2c0f -> :sswitch_21
        -0x861d1b -> :sswitch_20
        0x2537249 -> :sswitch_1f
        0x67d194f -> :sswitch_1e
        0x807bae2 -> :sswitch_1d
        0xb8585f9 -> :sswitch_1c
        0xbbf8ecb -> :sswitch_1b
        0x1073c1f2 -> :sswitch_1a
        0x140b168f -> :sswitch_19
        0x18d889e9 -> :sswitch_18
        0x1e7c3c3e -> :sswitch_17
        0x26d830c3 -> :sswitch_16
        0x28269551 -> :sswitch_15
        0x3cbb423b -> :sswitch_14
        0x3df76ea6 -> :sswitch_13
        0x408542df -> :sswitch_12
        0x4a67fef8 -> :sswitch_11
        0x51f99d59 -> :sswitch_10
        0x5303d65d -> :sswitch_f
        0x55733c3f -> :sswitch_e
        0x5666c336 -> :sswitch_d
        0x583e93cc -> :sswitch_c
        0x586f29a3 -> :sswitch_b
        0x590e13a3 -> :sswitch_a
        0x601dc156 -> :sswitch_9
        0x65b53143 -> :sswitch_8
        0x74ed85e4 -> :sswitch_7
        0x75ca6ab5 -> :sswitch_6
        0x783e9c7f -> :sswitch_5
        0x78e7e46b -> :sswitch_4
        0x7b875213 -> :sswitch_3
        0x7d1ae3bc -> :sswitch_2
        0x7e1951aa -> :sswitch_1
        0x7e4b5cf3 -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_3d
        :pswitch_3d
        :pswitch_3d
        :pswitch_3d
        :pswitch_3d
        :pswitch_3d
        :pswitch_3d
        :pswitch_3d
        :pswitch_3d
        :pswitch_3c
        :pswitch_3b
        :pswitch_3b
        :pswitch_3a
        :pswitch_39
        :pswitch_38
        :pswitch_37
        :pswitch_36
        :pswitch_35
        :pswitch_34
        :pswitch_33
        :pswitch_32
        :pswitch_31
        :pswitch_30
        :pswitch_2f
        :pswitch_2e
        :pswitch_2d
        :pswitch_2c
        :pswitch_2b
        :pswitch_2a
        :pswitch_29
        :pswitch_28
        :pswitch_27
        :pswitch_26
        :pswitch_25
        :pswitch_24
        :pswitch_23
        :pswitch_22
        :pswitch_21
        :pswitch_20
        :pswitch_1f
        :pswitch_1f
        :pswitch_1e
        :pswitch_1d
        :pswitch_1c
        :pswitch_1b
        :pswitch_1a
        :pswitch_19
        :pswitch_18
        :pswitch_17
        :pswitch_16
        :pswitch_15
        :pswitch_14
        :pswitch_13
        :pswitch_12
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

.method public getSupportMenu(Ljava/lang/String;)Z
    .locals 2

    .line 1464
    invoke-static {p1}, Lcom/oplus/camera/entry/b;->d(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    const-string v0, "pref_camera_flashmode_key"

    .line 1466
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_6

    const-string v0, "pref_setting_key"

    .line 1467
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_6

    const-string v0, "pref_camera_hdr_mode_key"

    .line 1468
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_6

    const-string v0, "pref_camera_vivid_effect_key"

    .line 1469
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_6

    const-string v0, "pref_camera_pi_ai_mode_key"

    .line 1470
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_6

    const-string v0, "pref_camera_pi_mode_key"

    .line 1471
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_6

    const-string v0, "pref_camera_photo_ratio_key"

    .line 1472
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_2

    :cond_0
    const-string v0, "pref_camera_timer_shutter_key"

    .line 1476
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 1477
    iget-boolean p1, p0, Lcom/oplus/camera/capmode/d;->mbFrontCamera:Z

    if-nez p1, :cond_2

    iget-object p0, p0, Lcom/oplus/camera/capmode/d;->mCameraEntry:Lcom/oplus/camera/entry/b;

    invoke-virtual {p0}, Lcom/oplus/camera/entry/b;->J()I

    move-result p0

    invoke-static {p0}, Lcom/oplus/camera/entry/b;->b(I)Z

    move-result p0

    if-eqz p0, :cond_1

    goto :goto_0

    :cond_1
    const/4 p0, 0x0

    goto :goto_1

    :cond_2
    :goto_0
    const/4 p0, 0x1

    :goto_1
    return p0

    :cond_3
    const-string v0, "pref_subsetting_key"

    .line 1480
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 1481
    invoke-virtual {p0, v0}, Lcom/oplus/camera/capmode/d;->getSupportFunction(Ljava/lang/String;)Z

    move-result p0

    return p0

    :cond_4
    const-string v0, "pref_camera_high_resolution_key"

    .line 1484
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    const-string p1, "key_high_picture_size"

    .line 1485
    invoke-virtual {p0, p1}, Lcom/oplus/camera/capmode/d;->getSupportFunction(Ljava/lang/String;)Z

    move-result p0

    return p0

    .line 1488
    :cond_5
    invoke-super {p0, p1}, Lcom/oplus/camera/capmode/BaseMode;->getSupportMenu(Ljava/lang/String;)Z

    move-result p0

    return p0

    .line 1473
    :cond_6
    :goto_2
    invoke-virtual {p0, p1}, Lcom/oplus/camera/capmode/d;->getSupportFunction(Ljava/lang/String;)Z

    move-result p0

    return p0
.end method

.method public getSupportSubMenu(Ljava/lang/String;)Z
    .locals 2

    .line 1493
    invoke-static {p1}, Lcom/oplus/camera/entry/b;->d(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    const-string v0, "pref_camera_high_resolution_key"

    .line 1495
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string p1, "key_high_picture_size"

    .line 1496
    invoke-virtual {p0, p1}, Lcom/oplus/camera/capmode/d;->getSupportFunction(Ljava/lang/String;)Z

    move-result p0

    return p0

    :cond_0
    const-string v0, "pref_camera_timer_shutter_key"

    .line 1499
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_1

    .line 1500
    iget-boolean p0, p0, Lcom/oplus/camera/capmode/d;->mbFrontCamera:Z

    xor-int/2addr p0, v1

    return p0

    :cond_1
    const-string v0, "pref_camera_photo_ratio_key"

    .line 1503
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 1504
    invoke-virtual {p0, p1}, Lcom/oplus/camera/capmode/d;->getSupportFunction(Ljava/lang/String;)Z

    move-result p0

    return p0

    :cond_2
    const-string v0, "pref_setting_key"

    .line 1507
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 1508
    iget p0, p0, Lcom/oplus/camera/capmode/d;->mCameraEntryType:I

    invoke-static {p0}, Lcom/oplus/camera/entry/b;->b(I)Z

    move-result p0

    if-eqz p0, :cond_3

    const/4 p0, 0x0

    return p0

    :cond_3
    return v1

    :cond_4
    const-string v0, "pref_macro_switch"

    .line 1515
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 1516
    invoke-virtual {p0, p1}, Lcom/oplus/camera/capmode/d;->getSupportFunction(Ljava/lang/String;)Z

    move-result p0

    return p0

    .line 1519
    :cond_5
    invoke-super {p0, p1}, Lcom/oplus/camera/capmode/BaseMode;->getSupportSubMenu(Ljava/lang/String;)Z

    move-result p0

    return p0
.end method

.method public getZSLMode()Z
    .locals 3

    .line 759
    iget-object v0, p0, Lcom/oplus/camera/capmode/d;->mCameraInterface:Lcom/oplus/camera/capmode/a;

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/oplus/camera/capmode/d;->mCameraInterface:Lcom/oplus/camera/capmode/a;

    .line 760
    invoke-interface {v0}, Lcom/oplus/camera/capmode/a;->i()Z

    move-result v0

    if-nez v0, :cond_0

    iget v0, p0, Lcom/oplus/camera/capmode/d;->mApsBracketMode:I

    if-gtz v0, :cond_0

    .line 762
    invoke-static {}, Lcom/oplus/camera/util/Util;->C()Z

    move-result v0

    if-eqz v0, :cond_0

    return v1

    .line 767
    :cond_0
    invoke-static {}, Lcom/oplus/camera/util/Util;->C()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/oplus/camera/capmode/d;->mDecisionResult:Lcom/oplus/camera/aps/util/CameraApsDecision;

    if-eqz v0, :cond_1

    const/16 v0, 0x1c

    iget-object v2, p0, Lcom/oplus/camera/capmode/d;->mDecisionResult:Lcom/oplus/camera/aps/util/CameraApsDecision;

    iget v2, v2, Lcom/oplus/camera/aps/util/CameraApsDecision;->mApsDecisionFeatureType:I

    if-ne v0, v2, :cond_1

    const/16 v0, 0x11

    iget-object v2, p0, Lcom/oplus/camera/capmode/d;->mDecisionResult:Lcom/oplus/camera/aps/util/CameraApsDecision;

    iget v2, v2, Lcom/oplus/camera/aps/util/CameraApsDecision;->mApsBracketMode:I

    if-ne v0, v2, :cond_1

    return v1

    .line 775
    :cond_1
    iget-boolean v0, p0, Lcom/oplus/camera/capmode/d;->mbFrontCamera:Z

    if-eqz v0, :cond_2

    .line 776
    invoke-static {}, Lcom/oplus/camera/util/Util;->C()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 777
    invoke-virtual {p0}, Lcom/oplus/camera/capmode/d;->isFaceBeautyOrMakeupOpen()Z

    move-result v0

    if-eqz v0, :cond_2

    const-string v0, "com.oplus.zsl.support.preversion"

    .line 778
    invoke-static {v0}, Lcom/oplus/camera/aps/config/CameraConfig;->getConfigBooleanValue(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/oplus/camera/capmode/d;->mDecisionResult:Lcom/oplus/camera/aps/util/CameraApsDecision;

    if-eqz v0, :cond_2

    const/4 v0, 0x4

    iget-object v2, p0, Lcom/oplus/camera/capmode/d;->mDecisionResult:Lcom/oplus/camera/aps/util/CameraApsDecision;

    iget v2, v2, Lcom/oplus/camera/aps/util/CameraApsDecision;->mApsDecisionFeatureType:I

    if-eq v0, v2, :cond_2

    const/16 v0, 0x18

    iget-object v2, p0, Lcom/oplus/camera/capmode/d;->mDecisionResult:Lcom/oplus/camera/aps/util/CameraApsDecision;

    iget v2, v2, Lcom/oplus/camera/aps/util/CameraApsDecision;->mApsDecisionFeatureType:I

    if-eq v0, v2, :cond_2

    const/4 v0, 0x5

    iget-object v2, p0, Lcom/oplus/camera/capmode/d;->mDecisionResult:Lcom/oplus/camera/aps/util/CameraApsDecision;

    iget v2, v2, Lcom/oplus/camera/aps/util/CameraApsDecision;->mApsDecisionFeatureType:I

    if-eq v0, v2, :cond_2

    return v1

    .line 786
    :cond_2
    invoke-super {p0}, Lcom/oplus/camera/capmode/BaseMode;->getZSLMode()Z

    move-result p0

    return p0
.end method

.method protected getZoomAutoMicroOpen()Z
    .locals 0

    .line 741
    iget-boolean p0, p0, Lcom/oplus/camera/capmode/d;->mbAutoMicroOpen:Z

    return p0
.end method

.method public getZoomConfigure()Lcom/oplus/camera/af;
    .locals 3

    .line 4036
    invoke-super {p0}, Lcom/oplus/camera/capmode/BaseMode;->getZoomConfigure()Lcom/oplus/camera/af;

    move-result-object v0

    .line 4037
    invoke-virtual {p0}, Lcom/oplus/camera/capmode/d;->isHighPictureSize()Z

    move-result v1

    invoke-virtual {v0, v1}, Lcom/oplus/camera/af;->l(Z)V

    const-string v1, "pref_ultra_wide_high_picture_size_key"

    .line 4039
    invoke-virtual {p0, v1}, Lcom/oplus/camera/capmode/d;->getSupportFunction(Ljava/lang/String;)Z

    move-result v1

    .line 4038
    invoke-virtual {v0, v1}, Lcom/oplus/camera/af;->n(Z)V

    const-string v1, "key_support_insensor_zoom_20x"

    .line 4040
    invoke-virtual {p0, v1}, Lcom/oplus/camera/capmode/d;->getSupportFunction(Ljava/lang/String;)Z

    move-result v2

    invoke-virtual {v0, v2}, Lcom/oplus/camera/af;->t(Z)V

    .line 4041
    invoke-virtual {p0, v1}, Lcom/oplus/camera/capmode/d;->getSupportFunction(Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_0

    const-string p0, "com.oplus.zoom.point.3x.support"

    .line 4042
    invoke-static {p0}, Lcom/oplus/camera/aps/config/CameraConfig;->getConfigBooleanValue(Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    .line 4041
    :goto_0
    invoke-virtual {v0, p0}, Lcom/oplus/camera/af;->u(Z)V

    const-string p0, "com.oplus.second.zoom.point.specific.value"

    .line 4044
    invoke-static {p0}, Lcom/oplus/camera/aps/config/CameraConfig;->getConfigFloatValue(Ljava/lang/String;)F

    move-result p0

    .line 4043
    invoke-virtual {v0, p0}, Lcom/oplus/camera/af;->b(F)V

    return-object v0
.end method

.method public hideGoogleLensIcon(Z)V
    .locals 1

    .line 4327
    iget-object v0, p0, Lcom/oplus/camera/capmode/d;->mGoogleLensIcon:Lcom/oplus/camera/ui/RotateImageView;

    if-eqz v0, :cond_2

    if-eqz p1, :cond_0

    .line 4329
    invoke-static {v0}, Lcom/oplus/camera/util/Util;->b(Landroid/view/View;)V

    goto :goto_0

    .line 4331
    :cond_0
    invoke-virtual {v0}, Lcom/oplus/camera/ui/RotateImageView;->getAnimation()Landroid/view/animation/Animation;

    move-result-object p1

    if-eqz p1, :cond_1

    .line 4333
    invoke-virtual {p1}, Landroid/view/animation/Animation;->hasStarted()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p1}, Landroid/view/animation/Animation;->hasEnded()Z

    move-result v0

    if-nez v0, :cond_1

    .line 4334
    invoke-virtual {p1}, Landroid/view/animation/Animation;->cancel()V

    .line 4337
    :cond_1
    iget-object p0, p0, Lcom/oplus/camera/capmode/d;->mGoogleLensIcon:Lcom/oplus/camera/ui/RotateImageView;

    const/16 p1, 0x8

    invoke-virtual {p0, p1}, Lcom/oplus/camera/ui/RotateImageView;->setVisibility(I)V

    :cond_2
    :goto_0
    return-void
.end method

.method protected hideViewWhileResume()V
    .locals 0

    return-void
.end method

.method public isAISceneOpen()Z
    .locals 4

    const-string v0, "pref_ai_scene_key"

    .line 3507
    invoke-virtual {p0, v0}, Lcom/oplus/camera/capmode/d;->getSupportFunction(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 3510
    iget-object v1, p0, Lcom/oplus/camera/capmode/d;->mActivity:Landroid/app/Activity;

    const-string v2, "on"

    if-eqz v1, :cond_0

    .line 3511
    iget-object v1, p0, Lcom/oplus/camera/capmode/d;->mActivity:Landroid/app/Activity;

    const v3, 0x7f10008e

    invoke-virtual {v1, v3}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    :cond_0
    move-object v1, v2

    :goto_0
    const-string v3, "com.oplus.feature.pi.ai.support"

    .line 3514
    invoke-static {v3}, Lcom/oplus/camera/aps/config/CameraConfig;->getConfigBooleanValue(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_1

    iget-object v3, p0, Lcom/oplus/camera/capmode/d;->mActivity:Landroid/app/Activity;

    if-eqz v3, :cond_1

    .line 3515
    iget-object v1, p0, Lcom/oplus/camera/capmode/d;->mActivity:Landroid/app/Activity;

    const v3, 0x7f1002c4

    invoke-virtual {v1, v3}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 3518
    :cond_1
    iget-object v3, p0, Lcom/oplus/camera/capmode/d;->mPreferences:Landroid/content/SharedPreferences;

    if-eqz v3, :cond_2

    .line 3519
    iget-object p0, p0, Lcom/oplus/camera/capmode/d;->mPreferences:Landroid/content/SharedPreferences;

    invoke-interface {p0, v0, v1}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 3522
    :cond_2
    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    return p0

    :cond_3
    const/4 p0, 0x0

    return p0
.end method

.method protected isCameraSettingMenuOptionEnable(Ljava/lang/String;)Z
    .locals 2

    .line 2188
    invoke-virtual {p0}, Lcom/oplus/camera/capmode/d;->getCurrFilterIndex()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/oplus/camera/capmode/d;->isMonoIndex(I)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "pref_macro_switch"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 2189
    invoke-virtual {p0, v0}, Lcom/oplus/camera/capmode/d;->getSupportFunction(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 p0, 0x0

    return p0

    .line 2193
    :cond_0
    invoke-super {p0, p1}, Lcom/oplus/camera/capmode/BaseMode;->isCameraSettingMenuOptionEnable(Ljava/lang/String;)Z

    move-result p0

    return p0
.end method

.method protected isCaptureInDarkLight(I)Z
    .locals 3

    const/4 v0, 0x0

    const/4 v1, 0x1

    const/16 v2, 0x11

    if-eq v2, p1, :cond_1

    const/16 v2, 0x12

    if-eq v2, p1, :cond_1

    const/16 v2, 0x13

    if-ne v2, p1, :cond_0

    goto :goto_0

    :cond_0
    move p1, v0

    goto :goto_1

    :cond_1
    :goto_0
    move p1, v1

    .line 4136
    :goto_1
    iget-boolean v2, p0, Lcom/oplus/camera/capmode/d;->mbBurstShot:Z

    if-nez v2, :cond_2

    if-eqz p1, :cond_2

    iget-boolean p0, p0, Lcom/oplus/camera/capmode/d;->mbFrontCamera:Z

    if-nez p0, :cond_2

    move v0, v1

    :cond_2
    return v0
.end method

.method public isCountDownStarted()Z
    .locals 0

    .line 2812
    iget-object p0, p0, Lcom/oplus/camera/capmode/d;->mNightCountDownUI:Lcom/oplus/camera/ui/p;

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return p0

    .line 2816
    :cond_0
    invoke-virtual {p0}, Lcom/oplus/camera/ui/p;->g()Z

    move-result p0

    return p0
.end method

.method public isFaceRectifyMenuOpen()Z
    .locals 3

    const-string v0, "pref_face_rectify_key"

    .line 880
    invoke-virtual {p0, v0}, Lcom/oplus/camera/capmode/d;->getSupportFunction(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2

    const-string v1, "com.oplus.face.rectify.config.value"

    .line 881
    invoke-static {v1}, Lcom/oplus/camera/aps/config/CameraConfig;->getConfigStringValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 882
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 883
    iget-object v1, p0, Lcom/oplus/camera/capmode/d;->mActivity:Landroid/app/Activity;

    const v2, 0x7f100148

    invoke-virtual {v1, v2}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 885
    :cond_0
    iget-object v2, p0, Lcom/oplus/camera/capmode/d;->mPreferences:Landroid/content/SharedPreferences;

    if-eqz v2, :cond_1

    .line 886
    iget-object p0, p0, Lcom/oplus/camera/capmode/d;->mPreferences:Landroid/content/SharedPreferences;

    invoke-interface {p0, v0, v1}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    :cond_1
    const-string p0, "on"

    .line 889
    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    return p0

    .line 892
    :cond_2
    invoke-super {p0}, Lcom/oplus/camera/capmode/BaseMode;->isFaceRectifyMenuOpen()Z

    move-result p0

    return p0
.end method

.method public isFaceRectifyOpen()Z
    .locals 1

    .line 897
    invoke-virtual {p0}, Lcom/oplus/camera/capmode/d;->isFaceRectifyMenuOpen()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/oplus/camera/capmode/d;->isZoomFaceRectifySupported()Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public isFirstTipsEnable(Ljava/lang/String;)Z
    .locals 3

    .line 4440
    iget v0, p0, Lcom/oplus/camera/capmode/d;->mCameraEntryType:I

    invoke-static {v0}, Lcom/oplus/camera/entry/b;->b(I)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    return v1

    :cond_0
    const-string v0, "key_first_beauty_tip"

    .line 4444
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 4445
    iget-object p1, p0, Lcom/oplus/camera/capmode/d;->mCameraEntry:Lcom/oplus/camera/entry/b;

    if-eqz p1, :cond_1

    .line 4446
    iget-object p1, p0, Lcom/oplus/camera/capmode/d;->mCameraEntry:Lcom/oplus/camera/entry/b;

    invoke-virtual {p1}, Lcom/oplus/camera/entry/b;->R()Z

    move-result p1

    if-eqz p1, :cond_1

    return v1

    .line 4451
    :cond_1
    invoke-virtual {p0, v0}, Lcom/oplus/camera/capmode/d;->isBubbleOpen(Ljava/lang/String;)Z

    move-result p0

    return p0

    :cond_2
    const-string v0, "key_drawer_layout_anchor"

    .line 4452
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 4453
    invoke-virtual {p0, v0}, Lcom/oplus/camera/capmode/d;->isBubbleOpen(Ljava/lang/String;)Z

    move-result p0

    return p0

    :cond_3
    const-string v0, "key_bubble_type_zoom_ultra_wide"

    .line 4454
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_4

    .line 4455
    invoke-virtual {p0, v0}, Lcom/oplus/camera/capmode/d;->isBubbleOpen(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_4

    const-string p1, "pref_zoom_key"

    .line 4456
    invoke-virtual {p0, p1}, Lcom/oplus/camera/capmode/d;->getSupportFunction(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_4

    const-string p1, "com.oplus.ultrawide.bubble.tips.support"

    .line 4457
    invoke-static {p1}, Lcom/oplus/camera/aps/config/CameraConfig;->getConfigBooleanValue(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_4

    iget-boolean p0, p0, Lcom/oplus/camera/capmode/d;->mbFrontCamera:Z

    if-nez p0, :cond_4

    const/4 v1, 0x1

    :cond_4
    return v1
.end method

.method public isGoogleLensEnable()Z
    .locals 1

    const-string v0, "func_google_lens"

    .line 4258
    invoke-virtual {p0, v0}, Lcom/oplus/camera/capmode/d;->getSupportFunction(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 4259
    iget-boolean p0, p0, Lcom/oplus/camera/capmode/d;->mbGoogleLensStatusReady:Z

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method protected isHideHeadLine()Z
    .locals 1

    .line 4538
    iget-boolean v0, p0, Lcom/oplus/camera/capmode/d;->mbInCapturing:Z

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/oplus/camera/capmode/d;->isInNightProcess()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 p0, 0x1

    return p0

    .line 4542
    :cond_0
    invoke-super {p0}, Lcom/oplus/camera/capmode/BaseMode;->isHideHeadLine()Z

    move-result p0

    return p0
.end method

.method public isHighPictureSize()Z
    .locals 3

    const-string v0, "key_high_picture_size"

    .line 861
    invoke-virtual {p0, v0}, Lcom/oplus/camera/capmode/d;->getSupportFunction(Ljava/lang/String;)Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/oplus/camera/capmode/d;->mPreferences:Landroid/content/SharedPreferences;

    if-eqz v1, :cond_0

    .line 862
    iget-object p0, p0, Lcom/oplus/camera/capmode/d;->mPreferences:Landroid/content/SharedPreferences;

    invoke-interface {p0, v0, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result p0

    return p0

    :cond_0
    return v2
.end method

.method protected isInNightProMode()Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method protected isInNightProProcess()Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method protected isInNightProcess()Z
    .locals 5

    .line 3911
    invoke-virtual {p0}, Lcom/oplus/camera/capmode/d;->isSuperSeNightOpen()Z

    move-result v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    const-string v3, "pref_support_night_process"

    if-eqz v0, :cond_1

    .line 3912
    invoke-virtual {p0, v3}, Lcom/oplus/camera/capmode/d;->getSupportFunction(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 3913
    invoke-virtual {p0}, Lcom/oplus/camera/capmode/d;->getNightStateDecision()I

    move-result p0

    if-lez p0, :cond_0

    goto :goto_0

    :cond_0
    move v1, v2

    :goto_0
    return v1

    :cond_1
    const-string v0, "com.oplus.night.offline.r2y"

    .line 3916
    invoke-static {v0}, Lcom/oplus/camera/aps/config/CameraConfig;->getConfigBooleanValue(Ljava/lang/String;)Z

    move-result v4

    .line 3917
    invoke-virtual {p0, v3}, Lcom/oplus/camera/capmode/d;->getSupportFunction(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_7

    iget-boolean v3, p0, Lcom/oplus/camera/capmode/d;->mbBurstShot:Z

    if-nez v3, :cond_7

    .line 3919
    invoke-virtual {p0}, Lcom/oplus/camera/capmode/d;->getNightStateDecision()I

    move-result v3

    if-lez v3, :cond_7

    iget-object v3, p0, Lcom/oplus/camera/capmode/d;->mCameraInterface:Lcom/oplus/camera/capmode/a;

    if-eqz v3, :cond_7

    iget-object v3, p0, Lcom/oplus/camera/capmode/d;->mCameraInterface:Lcom/oplus/camera/capmode/a;

    .line 3921
    invoke-interface {v3}, Lcom/oplus/camera/capmode/a;->i()Z

    move-result v3

    if-eqz v3, :cond_7

    .line 3922
    invoke-static {v0}, Lcom/oplus/camera/aps/config/CameraConfig;->getConfigBooleanValue(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 3923
    invoke-virtual {p0}, Lcom/oplus/camera/capmode/d;->isAISceneOpen()Z

    move-result v0

    if-eqz v0, :cond_7

    const/16 v0, 0xc

    iget-object v3, p0, Lcom/oplus/camera/capmode/d;->mCameraInterface:Lcom/oplus/camera/capmode/a;

    invoke-interface {v3}, Lcom/oplus/camera/capmode/a;->j()I

    move-result v3

    if-ne v0, v3, :cond_7

    :cond_2
    const-string v0, "com.oplus.feature.pi.ai.support"

    .line 3924
    invoke-static {v0}, Lcom/oplus/camera/aps/config/CameraConfig;->getConfigBooleanValue(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_3

    invoke-virtual {p0}, Lcom/oplus/camera/capmode/d;->isPIModeOpen()Z

    move-result v0

    if-nez v0, :cond_7

    .line 3925
    :cond_3
    invoke-virtual {p0}, Lcom/oplus/camera/capmode/d;->isFaceBeautyOrMakeupOpen()Z

    move-result v0

    if-eqz v0, :cond_4

    if-eqz v4, :cond_7

    .line 3926
    :cond_4
    invoke-virtual {p0}, Lcom/oplus/camera/capmode/d;->isFilterEffectOpen()Z

    move-result v0

    if-eqz v0, :cond_5

    if-eqz v4, :cond_7

    .line 3927
    :cond_5
    invoke-virtual {p0}, Lcom/oplus/camera/capmode/d;->isHDRState()Z

    move-result v0

    if-eqz v0, :cond_6

    if-eqz v4, :cond_7

    .line 3928
    :cond_6
    invoke-virtual {p0}, Lcom/oplus/camera/capmode/d;->isFlashState()Z

    move-result v0

    if-nez v0, :cond_7

    .line 3929
    invoke-virtual {p0}, Lcom/oplus/camera/capmode/d;->isSuperClearPortraitOpen()Z

    move-result p0

    if-nez p0, :cond_7

    goto :goto_1

    :cond_7
    move v1, v2

    :goto_1
    return v1
.end method

.method protected isInOfflineNightProcess()Z
    .locals 1

    const-string v0, "com.oplus.night.offline.r2y"

    .line 3934
    invoke-static {v0}, Lcom/oplus/camera/aps/config/CameraConfig;->getConfigBooleanValue(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/oplus/camera/capmode/d;->isInNightProcess()Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public isMonoIndex(I)Z
    .locals 2

    const-string p0, "com.oplus.mono.filter.support"

    .line 582
    invoke-static {p0}, Lcom/oplus/camera/aps/config/CameraConfig;->getConfigBooleanValue(Ljava/lang/String;)Z

    move-result p0

    const/4 v0, 0x0

    if-eqz p0, :cond_2

    const-string p0, "com.oplus.mono.filter.mode.place"

    .line 583
    invoke-static {p0}, Lcom/oplus/camera/aps/config/CameraConfig;->getConfigIntValue(Ljava/lang/String;)I

    move-result p0

    const/4 v1, 0x1

    if-ne v1, p0, :cond_0

    goto :goto_0

    .line 587
    :cond_0
    invoke-static {}, Lcom/oplus/camera/ui/preview/a/j;->h()I

    move-result p0

    if-eq p1, p0, :cond_1

    invoke-static {}, Lcom/oplus/camera/ui/preview/a/j;->i()I

    move-result p0

    if-eq p1, p0, :cond_1

    .line 588
    invoke-static {}, Lcom/oplus/camera/ui/preview/a/j;->j()I

    move-result p0

    if-eq p1, p0, :cond_1

    invoke-static {}, Lcom/oplus/camera/ui/preview/a/j;->k()I

    move-result p0

    if-ne p1, p0, :cond_2

    :cond_1
    move v0, v1

    :cond_2
    :goto_0
    return v0
.end method

.method public isNeedProgressBarInCapture()Z
    .locals 1

    .line 3311
    invoke-virtual {p0}, Lcom/oplus/camera/capmode/d;->isInNightProcess()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/oplus/camera/capmode/d;->isTripodNight()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 p0, 0x1

    return p0

    .line 3315
    :cond_0
    invoke-super {p0}, Lcom/oplus/camera/capmode/BaseMode;->isNeedProgressBarInCapture()Z

    move-result p0

    return p0
.end method

.method protected isNeedResetNoneSatWide()Z
    .locals 1

    .line 929
    invoke-virtual {p0}, Lcom/oplus/camera/capmode/d;->isNoneSatUltraWideAngleOpen()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/oplus/camera/capmode/d;->isHighPictureSize()Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public isNeedShowMenuOnTimeSnapShotEnd()Z
    .locals 1

    .line 4533
    invoke-virtual {p0}, Lcom/oplus/camera/capmode/d;->shouldShowSteadyTips()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lcom/oplus/camera/capmode/d;->isNightAlgoCaptureTriggered()Z

    move-result p0

    if-nez p0, :cond_0

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

.method protected isNightAlgoCaptureTriggered()Z
    .locals 1

    .line 2804
    iget-boolean v0, p0, Lcom/oplus/camera/capmode/d;->mbBurstShot:Z

    if-nez v0, :cond_1

    .line 2805
    invoke-virtual {p0}, Lcom/oplus/camera/capmode/d;->isTripodModeOpened()Z

    move-result v0

    if-nez v0, :cond_1

    .line 2806
    invoke-virtual {p0}, Lcom/oplus/camera/capmode/d;->isInNightProcess()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 2807
    invoke-virtual {p0}, Lcom/oplus/camera/capmode/d;->isInNightProcess()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/oplus/camera/capmode/d;->isTripodNight()Z

    move-result v0

    if-nez v0, :cond_1

    .line 2808
    :cond_0
    invoke-virtual {p0}, Lcom/oplus/camera/capmode/d;->isInNightProProcess()Z

    move-result p0

    if-nez p0, :cond_1

    const/4 p0, 0x1

    goto :goto_0

    :cond_1
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method protected isNightProSoundPlayed()Z
    .locals 0

    const/4 p0, 0x1

    return p0
.end method

.method public isPIAISceneOpen()Z
    .locals 2

    .line 3497
    iget-object v0, p0, Lcom/oplus/camera/capmode/d;->mPreferences:Landroid/content/SharedPreferences;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/oplus/camera/capmode/d;->mActivity:Landroid/app/Activity;

    if-eqz v0, :cond_0

    const-string v0, "com.oplus.feature.pi.ai.support"

    invoke-static {v0}, Lcom/oplus/camera/aps/config/CameraConfig;->getConfigBooleanValue(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/oplus/camera/capmode/d;->mbFrontCamera:Z

    if-nez v0, :cond_0

    .line 3498
    iget-object v0, p0, Lcom/oplus/camera/capmode/d;->mPreferences:Landroid/content/SharedPreferences;

    iget-object p0, p0, Lcom/oplus/camera/capmode/d;->mActivity:Landroid/app/Activity;

    const v1, 0x7f1002c1

    .line 3499
    invoke-virtual {p0, v1}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object p0

    const-string v1, "pref_camera_pi_ai_mode_key"

    .line 3498
    invoke-interface {v0, v1, p0}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    const-string v0, "on"

    invoke-static {v0, p0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result p0

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public isPIModeOpen()Z
    .locals 3

    const-string v0, "com.oplus.feature.pi.ai.support"

    .line 3894
    invoke-static {v0}, Lcom/oplus/camera/aps/config/CameraConfig;->getConfigBooleanValue(Ljava/lang/String;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    const-string v0, "pref_camera_pi_ai_mode_key"

    .line 3895
    invoke-virtual {p0, v0}, Lcom/oplus/camera/capmode/d;->getSupportFunction(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    return v1

    .line 3899
    :cond_0
    invoke-virtual {p0}, Lcom/oplus/camera/capmode/d;->isPIAISceneOpen()Z

    move-result p0

    return p0

    :cond_1
    const-string v0, "pref_camera_pi_mode_key"

    .line 3901
    invoke-virtual {p0, v0}, Lcom/oplus/camera/capmode/d;->getSupportFunction(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_2

    return v1

    .line 3905
    :cond_2
    iget-object v2, p0, Lcom/oplus/camera/capmode/d;->mPreferences:Landroid/content/SharedPreferences;

    if-eqz v2, :cond_3

    iget-object p0, p0, Lcom/oplus/camera/capmode/d;->mPreferences:Landroid/content/SharedPreferences;

    const-string v2, "off"

    invoke-interface {p0, v0, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    const-string v0, "on"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_3

    const/4 v1, 0x1

    :cond_3
    return v1
.end method

.method protected isSalientObjectDetectionEnabled()Z
    .locals 0

    const/4 p0, 0x1

    return p0
.end method

.method public isSatOpen()Z
    .locals 1

    const-string v0, "func_sat_camera"

    .line 3965
    invoke-virtual {p0, v0}, Lcom/oplus/camera/capmode/d;->getSupportFunction(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 3966
    invoke-virtual {p0}, Lcom/oplus/camera/capmode/d;->isHighPictureSize()Z

    move-result p0

    xor-int/lit8 p0, p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public isShowBeauty3D()Z
    .locals 1

    const-string v0, "key_beauty3d"

    .line 1524
    invoke-virtual {p0, v0}, Lcom/oplus/camera/capmode/d;->getSupportFunction(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1525
    invoke-virtual {p0}, Lcom/oplus/camera/capmode/d;->getBeauty3Dstatus()I

    move-result v0

    if-lez v0, :cond_0

    .line 1526
    invoke-virtual {p0}, Lcom/oplus/camera/capmode/d;->getBeauty3Dstatus()I

    move-result p0

    const/4 v0, 0x4

    if-eq p0, v0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public isShowBeauty3DEditChooseMenu()Z
    .locals 3

    .line 3538
    iget-object v0, p0, Lcom/oplus/camera/capmode/d;->mActivity:Landroid/app/Activity;

    invoke-static {v0}, Lcom/oplus/camera/ui/preview/a/o;->a(Landroid/content/Context;)I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    const-string v0, "key_beauty3d"

    .line 3539
    invoke-virtual {p0, v0}, Lcom/oplus/camera/capmode/d;->getSupportFunction(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 3540
    invoke-virtual {p0}, Lcom/oplus/camera/capmode/d;->getFaceBeautyCurrIndex()I

    move-result v0

    const/4 v2, -0x1

    if-ne v0, v2, :cond_0

    iget-object v0, p0, Lcom/oplus/camera/capmode/d;->mCameraUIInterface:Lcom/oplus/camera/ui/CameraUIInterface;

    .line 3541
    invoke-interface {v0}, Lcom/oplus/camera/ui/CameraUIInterface;->A()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 3542
    invoke-virtual {p0}, Lcom/oplus/camera/capmode/d;->getBeauty3Dstatus()I

    move-result v0

    if-nez v0, :cond_0

    .line 3543
    invoke-virtual {p0}, Lcom/oplus/camera/capmode/d;->getCurrEffectMenuName()Ljava/lang/String;

    move-result-object p0

    const-string v0, "beauty"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_0

    return v1

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public isShowProgressBarForOtherApp()Z
    .locals 1

    .line 3320
    invoke-virtual {p0}, Lcom/oplus/camera/capmode/d;->isFilterEffectOpen()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/oplus/camera/capmode/d;->isHDRState()Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public isShowingGuideView()Z
    .locals 1

    const-string v0, "key_beauty3d"

    .line 522
    invoke-virtual {p0, v0}, Lcom/oplus/camera/capmode/d;->getSupportFunction(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object p0, p0, Lcom/oplus/camera/capmode/d;->mBeauty3DManager:Lcom/oplus/camera/d/b;

    if-eqz p0, :cond_0

    .line 523
    invoke-virtual {p0}, Lcom/oplus/camera/d/b;->i()Z

    move-result p0

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method protected isSuperClearPortraitEnable()Z
    .locals 3

    const-string v0, "pref_super_clear_portrait"

    .line 3070
    invoke-virtual {p0, v0}, Lcom/oplus/camera/capmode/d;->getSupportFunction(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 3071
    invoke-virtual {p0}, Lcom/oplus/camera/capmode/d;->isPIAISceneOpen()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/oplus/camera/capmode/d;->mPreferences:Landroid/content/SharedPreferences;

    const-string v1, "pref_camera_pi_mode_key"

    const-string v2, "off"

    .line 3072
    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "on"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 3073
    invoke-virtual {p0}, Lcom/oplus/camera/capmode/d;->isFilterEffectOpen()Z

    move-result v0

    if-nez v0, :cond_0

    .line 3074
    invoke-virtual {p0}, Lcom/oplus/camera/capmode/d;->isUltraHighResolutionOpened()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/oplus/camera/capmode/d;->isHighPictureSize()Z

    move-result v0

    if-nez v0, :cond_0

    .line 3075
    invoke-virtual {p0}, Lcom/oplus/camera/capmode/d;->isSuperSeNightOpen()Z

    move-result p0

    if-nez p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method protected isSuperClearPortraitOpen()Z
    .locals 3

    .line 3063
    iget-object v0, p0, Lcom/oplus/camera/capmode/d;->mPreferences:Landroid/content/SharedPreferences;

    const-string v1, "pref_super_clear_portrait"

    const-string v2, "off"

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "on"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 3064
    invoke-virtual {p0}, Lcom/oplus/camera/capmode/d;->isSuperClearPortraitEnable()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-boolean p0, p0, Lcom/oplus/camera/capmode/d;->mbBurstShot:Z

    if-nez p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public isSuperNightShutterCountDownOpen()Z
    .locals 1

    const-string v0, "com.oplus.night.mode.shutter.countdown.support"

    .line 4684
    invoke-static {v0}, Lcom/oplus/camera/aps/config/CameraConfig;->getConfigBooleanValue(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 4685
    iget-boolean p0, p0, Lcom/oplus/camera/capmode/d;->mbNightShutterCountDown:Z

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public isSuperSeNightOpen()Z
    .locals 1

    const-string v0, "com.oplus.feature.se.night.support"

    .line 4676
    invoke-static {v0}, Lcom/oplus/camera/aps/config/CameraConfig;->getConfigBooleanValue(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 4677
    iget-boolean p0, p0, Lcom/oplus/camera/capmode/d;->mbAutoSeNight:Z

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public isSuperTextOpen()Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method protected isTripodModeOpened()Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public isUltraWideHighPictureSize()Z
    .locals 4

    const-string v0, "pref_ultra_wide_high_picture_size_key"

    .line 870
    invoke-virtual {p0, v0}, Lcom/oplus/camera/capmode/d;->getSupportFunction(Ljava/lang/String;)Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/oplus/camera/capmode/d;->mPreferences:Landroid/content/SharedPreferences;

    if-eqz v1, :cond_0

    .line 871
    iget-object v1, p0, Lcom/oplus/camera/capmode/d;->mPreferences:Landroid/content/SharedPreferences;

    const-string v3, "key_high_picture_size"

    invoke-interface {v1, v3, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object p0, p0, Lcom/oplus/camera/capmode/d;->mPreferences:Landroid/content/SharedPreferences;

    const-string v1, "off"

    .line 872
    invoke-interface {p0, v0, v1}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    const-string v0, "on"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 v2, 0x1

    :cond_0
    return v2
.end method

.method public isZoomFaceRectifySupported()Z
    .locals 2

    .line 902
    invoke-virtual {p0}, Lcom/oplus/camera/capmode/d;->getZoomValue()F

    move-result v0

    .line 903
    invoke-virtual {p0}, Lcom/oplus/camera/capmode/d;->getMinZoomValue()F

    move-result v1

    .line 906
    invoke-static {v0, v1}, Ljava/lang/Float;->compare(FF)I

    move-result v1

    if-eqz v1, :cond_1

    const/high16 v1, 0x3f800000    # 1.0f

    .line 907
    invoke-static {v0, v1}, Ljava/lang/Float;->compare(FF)I

    move-result v1

    if-eqz v1, :cond_1

    iget-boolean p0, p0, Lcom/oplus/camera/capmode/d;->mbFrontCamera:Z

    if-eqz p0, :cond_0

    const p0, 0x3f95c28f    # 1.17f

    .line 908
    invoke-static {v0, p0}, Ljava/lang/Float;->compare(FF)I

    move-result p0

    if-nez p0, :cond_0

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

.method public synthetic lambda$onPictureCallback$0$d()V
    .locals 2

    const-string v0, "CommonCapMode"

    const-string v1, "onPictureCallback, animateTakePicture delay"

    .line 2905
    invoke-static {v0, v1}, Lcom/oplus/camera/e;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 2907
    iget-object p0, p0, Lcom/oplus/camera/capmode/d;->mCameraInterface:Lcom/oplus/camera/capmode/a;

    invoke-interface {p0}, Lcom/oplus/camera/capmode/a;->h()V

    return-void
.end method

.method public synthetic lambda$resetWhenCaptureFail$1$d()V
    .locals 3

    .line 4709
    iget-boolean v0, p0, Lcom/oplus/camera/capmode/d;->mbPaused:Z

    if-eqz v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x1

    .line 4713
    iput-boolean v0, p0, Lcom/oplus/camera/capmode/d;->mbCaptureRawTimeDone:Z

    .line 4714
    iget-object v1, p0, Lcom/oplus/camera/capmode/d;->mCameraUIInterface:Lcom/oplus/camera/ui/CameraUIInterface;

    const/4 v2, 0x0

    invoke-interface {v1, v0, v2}, Lcom/oplus/camera/ui/CameraUIInterface;->d(ZZ)V

    .line 4715
    invoke-virtual {p0}, Lcom/oplus/camera/capmode/d;->isInNightProcess()Z

    move-result v0

    iget-boolean v1, p0, Lcom/oplus/camera/capmode/d;->mbBurstShot:Z

    invoke-virtual {p0, v0, v1}, Lcom/oplus/camera/capmode/d;->resetAfterPictureTaken(ZZ)V

    return-void
.end method

.method public needConfigPhysicalStream(Ljava/lang/String;)Z
    .locals 4

    const-string v0, "type_sub_preview_frame"

    .line 4091
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    const-string v3, "com.oplus.qualcomm.physical.id.support"

    if-nez v0, :cond_5

    const-string v0, "type_third_preview_frame"

    .line 4092
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_2

    :cond_0
    const-string v0, "type_still_capture_yuv_main"

    .line 4099
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    const-string v0, "type_still_capture_yuv_sub"

    .line 4100
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    const-string v0, "type_still_capture_yuv_third"

    .line 4101
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    const-string v0, "type_tuning_data_yuv"

    .line 4102
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    goto :goto_0

    .line 4108
    :cond_1
    invoke-super {p0, p1}, Lcom/oplus/camera/capmode/BaseMode;->needConfigPhysicalStream(Ljava/lang/String;)Z

    move-result p0

    return p0

    .line 4103
    :cond_2
    :goto_0
    invoke-static {}, Lcom/oplus/camera/util/Util;->C()Z

    move-result p1

    if-eqz p1, :cond_3

    .line 4104
    invoke-static {v3}, Lcom/oplus/camera/aps/config/CameraConfig;->getConfigBooleanValue(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_4

    .line 4105
    :cond_3
    invoke-virtual {p0}, Lcom/oplus/camera/capmode/d;->isSatOpen()Z

    move-result p0

    if-eqz p0, :cond_4

    goto :goto_1

    :cond_4
    move v1, v2

    :goto_1
    return v1

    .line 4093
    :cond_5
    :goto_2
    invoke-static {}, Lcom/oplus/camera/util/Util;->C()Z

    move-result p1

    if-eqz p1, :cond_6

    .line 4094
    invoke-static {v3}, Lcom/oplus/camera/aps/config/CameraConfig;->getConfigBooleanValue(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_7

    .line 4095
    :cond_6
    invoke-virtual {p0}, Lcom/oplus/camera/capmode/d;->isSatOpen()Z

    move-result p0

    if-eqz p0, :cond_7

    const-string p0, "com.oplus.sat.use.hal"

    .line 4096
    invoke-static {p0}, Lcom/oplus/camera/aps/config/CameraConfig;->getConfigBooleanValue(Ljava/lang/String;)Z

    move-result p0

    if-nez p0, :cond_7

    goto :goto_3

    :cond_7
    move v1, v2

    :goto_3
    return v1
.end method

.method protected needOverlayBitmap()Z
    .locals 2

    .line 3140
    invoke-virtual {p0}, Lcom/oplus/camera/capmode/d;->getCurFilterListType()I

    move-result v0

    const/4 v1, 0x1

    if-ne v1, v0, :cond_0

    const/4 p0, 0x0

    return p0

    .line 3144
    :cond_0
    invoke-super {p0}, Lcom/oplus/camera/capmode/BaseMode;->needOverlayBitmap()Z

    move-result p0

    return p0
.end method

.method public needPreviewMeta(I)Z
    .locals 1

    const-string v0, "com.oplus.sat.use.hal"

    .line 4141
    invoke-static {v0}, Lcom/oplus/camera/aps/config/CameraConfig;->getConfigBooleanValue(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    if-nez p1, :cond_0

    iget v0, p0, Lcom/oplus/camera/capmode/d;->mReceivedPreviewResultNum:I

    if-nez v0, :cond_0

    const/4 p0, 0x0

    return p0

    .line 4153
    :cond_0
    invoke-super {p0, p1}, Lcom/oplus/camera/capmode/BaseMode;->needPreviewMeta(I)Z

    move-result p0

    return p0
.end method

.method public needSurface(Ljava/lang/String;)Z
    .locals 5

    const-string v0, "type_preview_frame"

    .line 3419
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz v0, :cond_3

    const-string p1, "pref_camera_gesture_shutter_key"

    .line 3420
    invoke-virtual {p0, p1}, Lcom/oplus/camera/capmode/d;->getSupportFunction(Ljava/lang/String;)Z

    move-result p1

    if-nez p1, :cond_0

    const-string p1, "func_super_text_cpu_process"

    .line 3421
    invoke-virtual {p0, p1}, Lcom/oplus/camera/capmode/d;->getSupportFunction(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_2

    .line 3422
    :cond_0
    invoke-virtual {p0}, Lcom/oplus/camera/capmode/d;->getBeauty3Dstatus()I

    move-result p1

    if-eqz p1, :cond_1

    .line 3423
    invoke-virtual {p0}, Lcom/oplus/camera/capmode/d;->getBeauty3Dstatus()I

    move-result p0

    const/4 p1, 0x4

    if-ne p0, p1, :cond_2

    :cond_1
    move v1, v2

    :cond_2
    return v1

    :cond_3
    const-string v0, "type_sub_preview_frame"

    .line 3426
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_f

    const-string v0, "type_third_preview_frame"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    goto/16 :goto_1

    :cond_4
    const-string v0, "type_still_capture_raw"

    .line 3433
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const-string v3, "com.oplus.disable.raw"

    const-string v4, "pref_support_raw_post_process"

    if-eqz v0, :cond_6

    .line 3434
    invoke-virtual {p0, v4}, Lcom/oplus/camera/capmode/d;->getSupportFunction(Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_5

    .line 3435
    invoke-static {v3}, Lcom/oplus/camera/aps/config/CameraConfig;->getConfigBooleanValue(Ljava/lang/String;)Z

    move-result p0

    if-nez p0, :cond_5

    const-string p0, "com.oplus.feature.capture.mode.raw.support"

    .line 3436
    invoke-static {p0}, Lcom/oplus/camera/aps/config/CameraConfig;->getConfigBooleanValue(Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_5

    move v1, v2

    :cond_5
    return v1

    :cond_6
    const-string v0, "type_still_capture_yuv_sub"

    .line 3439
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_e

    const-string v0, "type_still_capture_yuv_third"

    .line 3440
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_7

    goto :goto_0

    :cond_7
    const-string v0, "type_tele_small_preview"

    .line 3444
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_9

    const-string p1, "com.oplus.tele.small.preview.support"

    .line 3445
    invoke-static {p1}, Lcom/oplus/camera/aps/config/CameraConfig;->getConfigBooleanValue(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_8

    invoke-virtual {p0}, Lcom/oplus/camera/capmode/d;->isSatOpen()Z

    move-result p0

    if-eqz p0, :cond_8

    move v1, v2

    :cond_8
    return v1

    :cond_9
    const-string v0, "type_still_capture_jpeg"

    .line 3448
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_a

    .line 3449
    invoke-static {}, Lcom/oplus/camera/aps/util/AlgoSwitchConfig;->getSupportApsCapture()Z

    move-result p0

    xor-int/2addr p0, v2

    return p0

    :cond_a
    const-string v0, "type_reprocess_data_yuv"

    .line 3452
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_c

    .line 3453
    invoke-static {}, Lcom/oplus/camera/util/Util;->C()Z

    move-result p1

    if-eqz p1, :cond_b

    .line 3454
    invoke-virtual {p0, v4}, Lcom/oplus/camera/capmode/d;->getSupportFunction(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_b

    .line 3455
    invoke-static {v3}, Lcom/oplus/camera/aps/config/CameraConfig;->getConfigBooleanValue(Ljava/lang/String;)Z

    move-result p1

    if-nez p1, :cond_b

    const-string p1, "com.oplus.supernight.reprocess.extra.yuv"

    .line 3456
    invoke-static {p1}, Lcom/oplus/camera/aps/config/CameraConfig;->getConfigBooleanValue(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_b

    iget-boolean p1, p0, Lcom/oplus/camera/capmode/d;->mbFrontCamera:Z

    if-nez p1, :cond_b

    iget-object p0, p0, Lcom/oplus/camera/capmode/d;->mCameraInterface:Lcom/oplus/camera/capmode/a;

    .line 3458
    invoke-interface {p0}, Lcom/oplus/camera/capmode/a;->i()Z

    move-result p0

    if-eqz p0, :cond_b

    move v1, v2

    :cond_b
    return v1

    :cond_c
    const-string v0, "type_capture"

    .line 3461
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_d

    return v2

    .line 3465
    :cond_d
    invoke-super {p0, p1}, Lcom/oplus/camera/capmode/BaseMode;->needSurface(Ljava/lang/String;)Z

    move-result p0

    return p0

    .line 3441
    :cond_e
    :goto_0
    invoke-virtual {p0}, Lcom/oplus/camera/capmode/d;->isSatOpen()Z

    move-result p0

    return p0

    :cond_f
    :goto_1
    const/4 p1, 0x3

    .line 3427
    invoke-static {}, Lcom/oplus/camera/aps/util/AlgoSwitchConfig;->getApsVersion()I

    move-result v0

    if-ne p1, v0, :cond_10

    const-string p1, "func_sat_camera"

    .line 3428
    invoke-virtual {p0, p1}, Lcom/oplus/camera/capmode/d;->getSupportFunction(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_10

    .line 3429
    invoke-virtual {p0}, Lcom/oplus/camera/capmode/d;->isHighPictureSize()Z

    move-result p0

    if-nez p0, :cond_10

    const-string p0, "com.oplus.sat.use.hal"

    .line 3430
    invoke-static {p0}, Lcom/oplus/camera/aps/config/CameraConfig;->getConfigBooleanValue(Ljava/lang/String;)Z

    move-result p0

    if-nez p0, :cond_10

    move v1, v2

    :cond_10
    return v1
.end method

.method protected onAISSnapshotChecked(Lcom/oplus/camera/aps/util/CameraApsDecision;)V
    .locals 1

    .line 2490
    invoke-static {}, Lcom/oplus/camera/util/Util;->C()Z

    move-result v0

    if-nez v0, :cond_0

    .line 2491
    iget-object p0, p0, Lcom/oplus/camera/capmode/d;->mOneCamera:Lcom/oplus/camera/e/d;

    iget-boolean p1, p1, Lcom/oplus/camera/aps/util/CameraApsDecision;->mbAIShutter:Z

    invoke-interface {p0, p1}, Lcom/oplus/camera/e/d;->u(Z)V

    :cond_0
    return-void
.end method

.method public onAISceneClosed(I)V
    .locals 2

    const/16 v0, 0xc

    if-ne p1, v0, :cond_1

    .line 594
    iget-boolean p1, p0, Lcom/oplus/camera/capmode/d;->mbNightCheckClosed:Z

    if-nez p1, :cond_1

    const/4 p1, 0x1

    .line 595
    iput-boolean p1, p0, Lcom/oplus/camera/capmode/d;->mbNightCheckClosed:Z

    .line 597
    iget-object v0, p0, Lcom/oplus/camera/capmode/d;->mOneCamera:Lcom/oplus/camera/e/d;

    if-eqz v0, :cond_0

    .line 598
    iget-object v0, p0, Lcom/oplus/camera/capmode/d;->mOneCamera:Lcom/oplus/camera/e/d;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Lcom/oplus/camera/e/d;->o(I)V

    .line 599
    iget-object v0, p0, Lcom/oplus/camera/capmode/d;->mOneCamera:Lcom/oplus/camera/e/d;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Lcom/oplus/camera/e/d;->a(Lcom/oplus/camera/e/d$c;)V

    .line 602
    :cond_0
    iget v0, p0, Lcom/oplus/camera/capmode/d;->mNightClosedCounter:I

    add-int/2addr v0, p1

    iput v0, p0, Lcom/oplus/camera/capmode/d;->mNightClosedCounter:I

    :cond_1
    return-void
.end method

.method protected onAfterPictureTaken([BZ)V
    .locals 5

    .line 2917
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "onAfterPictureTaken, mReceivedSnapNum: "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v0, p0, Lcom/oplus/camera/capmode/d;->mReceivedSnapNum:I

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, ", mBurstCaptureBufferLostNum: "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v0, p0, Lcom/oplus/camera/capmode/d;->mBurstCaptureBufferLostNum:I

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, ", isBurstShot: "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v0, ", isInBurstShotCapturing: "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v0, p0, Lcom/oplus/camera/capmode/d;->mbInBurstShotCapturing:Z

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v0, ", getMainShutterButtonType: "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/oplus/camera/capmode/d;->mCameraUIInterface:Lcom/oplus/camera/ui/CameraUIInterface;

    .line 2921
    invoke-interface {v0}, Lcom/oplus/camera/ui/CameraUIInterface;->s()I

    move-result v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "CommonCapMode"

    .line 2917
    invoke-static {v0, p1}, Lcom/oplus/camera/e;->a(Ljava/lang/String;Ljava/lang/String;)V

    const/4 p1, 0x1

    .line 2923
    iput-boolean p1, p0, Lcom/oplus/camera/capmode/d;->mbNightJpegDone:Z

    .line 2924
    iput-boolean p1, p0, Lcom/oplus/camera/capmode/d;->mbStopSteadyTips:Z

    .line 2926
    iget-boolean v0, p0, Lcom/oplus/camera/capmode/d;->mbEnableUILater:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 2927
    iput-boolean v1, p0, Lcom/oplus/camera/capmode/d;->mbEnableUILater:Z

    .line 2928
    iget-object v0, p0, Lcom/oplus/camera/capmode/d;->mCameraUIInterface:Lcom/oplus/camera/ui/CameraUIInterface;

    invoke-interface {v0, p1, v1}, Lcom/oplus/camera/ui/CameraUIInterface;->d(ZZ)V

    .line 2929
    iget-boolean v0, p0, Lcom/oplus/camera/capmode/d;->mbBurstShot:Z

    invoke-virtual {p0, p1, v0}, Lcom/oplus/camera/capmode/d;->resetAfterPictureTaken(ZZ)V

    :cond_0
    if-eqz p2, :cond_3

    .line 2933
    sget p1, Lcom/oplus/camera/util/Util;->d:I

    iget p2, p0, Lcom/oplus/camera/capmode/d;->mReceivedSnapNum:I

    iget v0, p0, Lcom/oplus/camera/capmode/d;->mBurstCaptureBufferLostNum:I

    add-int/2addr p2, v0

    if-eq p1, p2, :cond_2

    .line 2934
    invoke-static {}, Lcom/oplus/camera/util/Util;->C()Z

    move-result p1

    if-nez p1, :cond_1

    iget-object p1, p0, Lcom/oplus/camera/capmode/d;->mMemoryManager:Lcom/oplus/camera/capmode/d$a;

    invoke-virtual {p1}, Lcom/oplus/camera/capmode/d$a;->b()Z

    move-result p1

    if-nez p1, :cond_2

    :cond_1
    iget-boolean p1, p0, Lcom/oplus/camera/capmode/d;->mbInBurstShotCapturing:Z

    if-nez p1, :cond_11

    .line 2936
    :cond_2
    invoke-virtual {p0}, Lcom/oplus/camera/capmode/d;->disableBurstShot()V

    goto/16 :goto_2

    .line 2939
    :cond_3
    iget-object v0, p0, Lcom/oplus/camera/capmode/d;->mCameraInterface:Lcom/oplus/camera/capmode/a;

    invoke-interface {v0}, Lcom/oplus/camera/capmode/a;->i()Z

    move-result v0

    if-eqz v0, :cond_5

    iget-boolean v0, p0, Lcom/oplus/camera/capmode/d;->mbCaptureRawTimeDone:Z

    if-eqz v0, :cond_5

    iget-boolean v0, p0, Lcom/oplus/camera/capmode/d;->mbCaptureHasSuperTextResult:Z

    if-nez v0, :cond_5

    .line 2943
    iget-object v0, p0, Lcom/oplus/camera/capmode/d;->mCameraUIInterface:Lcom/oplus/camera/ui/CameraUIInterface;

    invoke-interface {v0}, Lcom/oplus/camera/ui/CameraUIInterface;->R()Z

    move-result v0

    if-nez v0, :cond_4

    .line 2944
    iget-object v0, p0, Lcom/oplus/camera/capmode/d;->mCameraUIInterface:Lcom/oplus/camera/ui/CameraUIInterface;

    invoke-interface {v0, p1, v1}, Lcom/oplus/camera/ui/CameraUIInterface;->d(ZZ)V

    goto :goto_0

    .line 2946
    :cond_4
    iget-object v0, p0, Lcom/oplus/camera/capmode/d;->mCameraUIInterface:Lcom/oplus/camera/ui/CameraUIInterface;

    invoke-interface {v0, v1, p1}, Lcom/oplus/camera/ui/CameraUIInterface;->d(ZZ)V

    .line 2950
    :cond_5
    :goto_0
    invoke-virtual {p0}, Lcom/oplus/camera/capmode/d;->isInNightProcess()Z

    move-result v0

    .line 2952
    iget-object v2, p0, Lcom/oplus/camera/capmode/d;->mCameraUIInterface:Lcom/oplus/camera/ui/CameraUIInterface;

    invoke-interface {v2}, Lcom/oplus/camera/ui/CameraUIInterface;->s()I

    move-result v2

    const/4 v3, 0x4

    const/4 v4, 0x2

    if-eq v2, v3, :cond_6

    iget-object v2, p0, Lcom/oplus/camera/capmode/d;->mCameraUIInterface:Lcom/oplus/camera/ui/CameraUIInterface;

    .line 2953
    invoke-interface {v2}, Lcom/oplus/camera/ui/CameraUIInterface;->s()I

    move-result v2

    const/4 v3, 0x3

    if-eq v2, v3, :cond_6

    iget-object v2, p0, Lcom/oplus/camera/capmode/d;->mCameraUIInterface:Lcom/oplus/camera/ui/CameraUIInterface;

    .line 2954
    invoke-interface {v2}, Lcom/oplus/camera/ui/CameraUIInterface;->s()I

    move-result v2

    const/16 v3, 0x1c

    if-eq v2, v3, :cond_6

    iget-object v2, p0, Lcom/oplus/camera/capmode/d;->mCameraUIInterface:Lcom/oplus/camera/ui/CameraUIInterface;

    .line 2955
    invoke-interface {v2}, Lcom/oplus/camera/ui/CameraUIInterface;->s()I

    move-result v2

    const/16 v3, 0x17

    if-eq v2, v3, :cond_6

    iget-object v2, p0, Lcom/oplus/camera/capmode/d;->mCameraUIInterface:Lcom/oplus/camera/ui/CameraUIInterface;

    .line 2956
    invoke-interface {v2}, Lcom/oplus/camera/ui/CameraUIInterface;->s()I

    move-result v2

    const/16 v3, 0x1a

    if-ne v2, v3, :cond_8

    :cond_6
    const-string v2, "pref_camera_hdr_mode_key"

    .line 2957
    invoke-virtual {p0, v2}, Lcom/oplus/camera/capmode/d;->getSupportFunction(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_7

    const-string v2, "pref_auto_night_scence_key"

    .line 2958
    invoke-virtual {p0, v2}, Lcom/oplus/camera/capmode/d;->getSupportFunction(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_7

    const-string v2, "pref_camera_pi_mode_key"

    .line 2959
    invoke-virtual {p0, v2}, Lcom/oplus/camera/capmode/d;->getSupportFunction(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_7

    if-eqz v0, :cond_8

    :cond_7
    iget-boolean v2, p0, Lcom/oplus/camera/capmode/d;->mbCaptureHasSuperTextResult:Z

    if-nez v2, :cond_8

    .line 2962
    invoke-virtual {p0}, Lcom/oplus/camera/capmode/d;->isIdPhotoOpen()Z

    move-result v2

    if-eqz v2, :cond_9

    :cond_8
    iget v2, p0, Lcom/oplus/camera/capmode/d;->mNightAlgoTriggeredStep:I

    if-ne v4, v2, :cond_a

    .line 2964
    :cond_9
    invoke-virtual {p0, v0, p2}, Lcom/oplus/camera/capmode/d;->resetAfterPictureTaken(ZZ)V

    .line 2967
    :cond_a
    iget-boolean p2, p0, Lcom/oplus/camera/capmode/d;->mbShowSteadyTips:Z

    if-eqz p2, :cond_b

    iget-boolean p2, p0, Lcom/oplus/camera/capmode/d;->mbCaptureRawTimeDone:Z

    if-eqz p2, :cond_b

    .line 2968
    iget-object p2, p0, Lcom/oplus/camera/capmode/d;->mCameraUIInterface:Lcom/oplus/camera/ui/CameraUIInterface;

    const v0, 0x7f100314

    invoke-interface {p2, v0}, Lcom/oplus/camera/ui/CameraUIInterface;->a(I)V

    .line 2969
    iput-boolean v1, p0, Lcom/oplus/camera/capmode/d;->mbShowSteadyTips:Z

    .line 2972
    :cond_b
    iget-boolean p2, p0, Lcom/oplus/camera/capmode/d;->mbShowImageOptimizingTips:Z

    if-eqz p2, :cond_c

    iget-boolean p2, p0, Lcom/oplus/camera/capmode/d;->mbCaptureRawTimeDone:Z

    if-eqz p2, :cond_c

    .line 2973
    iget-object p2, p0, Lcom/oplus/camera/capmode/d;->mCameraUIInterface:Lcom/oplus/camera/ui/CameraUIInterface;

    const v0, 0x7f100312

    invoke-interface {p2, v0}, Lcom/oplus/camera/ui/CameraUIInterface;->a(I)V

    .line 2974
    iput-boolean v1, p0, Lcom/oplus/camera/capmode/d;->mbShowImageOptimizingTips:Z

    .line 2977
    :cond_c
    iget-boolean p2, p0, Lcom/oplus/camera/capmode/d;->mbCaptureRawTimeDone:Z

    if-eqz p2, :cond_d

    .line 2978
    iget-object p2, p0, Lcom/oplus/camera/capmode/d;->mCameraUIInterface:Lcom/oplus/camera/ui/CameraUIInterface;

    const v0, 0x7f10031b

    invoke-interface {p2, v0}, Lcom/oplus/camera/ui/CameraUIInterface;->a(I)V

    .line 2981
    :cond_d
    iget p2, p0, Lcom/oplus/camera/capmode/d;->mNightAlgoTriggeredStep:I

    if-ne v4, p2, :cond_e

    .line 2982
    iput v1, p0, Lcom/oplus/camera/capmode/d;->mNightAlgoTriggeredStep:I

    .line 2985
    :cond_e
    iget-object p2, p0, Lcom/oplus/camera/capmode/d;->mBeauty3DManager:Lcom/oplus/camera/d/b;

    if-eqz p2, :cond_10

    .line 2986
    invoke-virtual {p0}, Lcom/oplus/camera/capmode/d;->isShowBeauty3DEditChooseMenu()Z

    move-result p2

    if-eqz p2, :cond_f

    .line 2987
    iget-object p2, p0, Lcom/oplus/camera/capmode/d;->mBeauty3DManager:Lcom/oplus/camera/d/b;

    invoke-virtual {p2, p1}, Lcom/oplus/camera/d/b;->e(Z)V

    .line 2988
    iget-object p2, p0, Lcom/oplus/camera/capmode/d;->mBeauty3DManager:Lcom/oplus/camera/d/b;

    invoke-virtual {p2}, Lcom/oplus/camera/d/b;->p()V

    goto :goto_1

    .line 2990
    :cond_f
    iget-object p2, p0, Lcom/oplus/camera/capmode/d;->mBeauty3DManager:Lcom/oplus/camera/d/b;

    invoke-virtual {p2}, Lcom/oplus/camera/d/b;->q()V

    .line 2994
    :cond_10
    :goto_1
    invoke-virtual {p0}, Lcom/oplus/camera/capmode/d;->isGoogleLensEnable()Z

    move-result p2

    if-eqz p2, :cond_11

    .line 2995
    invoke-direct {p0, p1}, Lcom/oplus/camera/capmode/d;->setGoogleLensIconClickable(Z)V

    .line 2999
    :cond_11
    :goto_2
    invoke-virtual {p0}, Lcom/oplus/camera/capmode/d;->resetAeLockAfterCaptured()V

    .line 3001
    iget-boolean p1, p0, Lcom/oplus/camera/capmode/d;->mbFrontCamera:Z

    if-nez p1, :cond_12

    const-string p1, "com.oplus.lock.awb.before.capture.rear.support"

    invoke-static {p1}, Lcom/oplus/camera/aps/config/CameraConfig;->getConfigBooleanValue(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_13

    .line 3002
    :cond_12
    invoke-static {}, Lcom/oplus/camera/util/Util;->C()Z

    move-result p1

    if-eqz p1, :cond_13

    iget-object p1, p0, Lcom/oplus/camera/capmode/d;->mCameraInterface:Lcom/oplus/camera/capmode/a;

    .line 3003
    invoke-interface {p1}, Lcom/oplus/camera/capmode/a;->i()Z

    move-result p1

    if-eqz p1, :cond_13

    .line 3004
    invoke-virtual {p0}, Lcom/oplus/camera/capmode/d;->resetAwbLockAfterCaptured()V

    :cond_13
    return-void
.end method

.method public onAfterSnapping()Z
    .locals 1

    const-string p0, "CommonCapMode"

    const-string v0, "onAfterSnapping()"

    .line 2562
    invoke-static {p0, v0}, Lcom/oplus/camera/e;->a(Ljava/lang/String;Ljava/lang/String;)V

    const/4 p0, 0x1

    return p0
.end method

.method public onAfterStartPreview(Z)V
    .locals 2

    .line 2506
    iget-object v0, p0, Lcom/oplus/camera/capmode/d;->mActivity:Landroid/app/Activity;

    new-instance v1, Lcom/oplus/camera/capmode/d$15;

    invoke-direct {v1, p0}, Lcom/oplus/camera/capmode/d$15;-><init>(Lcom/oplus/camera/capmode/d;)V

    invoke-virtual {v0, v1}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 2542
    invoke-super {p0, p1}, Lcom/oplus/camera/capmode/BaseMode;->onAfterStartPreview(Z)V

    return-void
.end method

.method public onBackPressed()Z
    .locals 3

    const-string v0, "key_beauty3d"

    .line 1934
    invoke-virtual {p0, v0}, Lcom/oplus/camera/capmode/d;->getSupportFunction(Ljava/lang/String;)Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/oplus/camera/capmode/d;->mBeauty3DManager:Lcom/oplus/camera/d/b;

    if-eqz v0, :cond_0

    .line 1935
    invoke-virtual {v0}, Lcom/oplus/camera/d/b;->d()Z

    move-result v0

    if-eqz v0, :cond_0

    return v1

    .line 1940
    :cond_0
    iget-boolean v0, p0, Lcom/oplus/camera/capmode/d;->mbInBurstShotCapturing:Z

    if-eqz v0, :cond_1

    .line 1941
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onBackPressed, mbInBurstShotCapturing: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean p0, p0, Lcom/oplus/camera/capmode/d;->mbInBurstShotCapturing:Z

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string v0, "CommonCapMode"

    invoke-static {v0, p0}, Lcom/oplus/camera/e;->a(Ljava/lang/String;Ljava/lang/String;)V

    return v1

    .line 1946
    :cond_1
    invoke-super {p0}, Lcom/oplus/camera/capmode/BaseMode;->onBackPressed()Z

    move-result p0

    return p0
.end method

.method protected onBeforePictureTaken([BZ)V
    .locals 4

    .line 2871
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "onBeforePictureTaken, mReceivedSnapNum: "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v0, p0, Lcom/oplus/camera/capmode/d;->mReceivedSnapNum:I

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, ", isBurstShot: "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "CommonCapMode"

    invoke-static {v0, p1}, Lcom/oplus/camera/e;->c(Ljava/lang/String;Ljava/lang/String;)V

    .line 2873
    iget-boolean p1, p0, Lcom/oplus/camera/capmode/d;->mbPaused:Z

    if-eqz p1, :cond_0

    return-void

    :cond_0
    if-eqz p2, :cond_3

    .line 2877
    iget p1, p0, Lcom/oplus/camera/capmode/d;->mReceivedSnapNum:I

    sget p2, Lcom/oplus/camera/util/Util;->d:I

    if-ge p1, p2, :cond_3

    .line 2878
    iget p1, p0, Lcom/oplus/camera/capmode/d;->mReceivedSnapNum:I

    const/4 p2, 0x1

    add-int/2addr p1, p2

    iput p1, p0, Lcom/oplus/camera/capmode/d;->mReceivedSnapNum:I

    .line 2880
    invoke-static {}, Lcom/oplus/camera/util/Util;->C()Z

    move-result p1

    const/4 v0, 0x0

    const/4 v1, 0x0

    if-eqz p1, :cond_1

    iget p1, p0, Lcom/oplus/camera/capmode/d;->mReceivedSnapNum:I

    if-ne p2, p1, :cond_1

    iget-object p1, p0, Lcom/oplus/camera/capmode/d;->mOneCamera:Lcom/oplus/camera/e/d;

    if-eqz p1, :cond_1

    .line 2881
    iget-object p1, p0, Lcom/oplus/camera/capmode/d;->mOneCamera:Lcom/oplus/camera/e/d;

    invoke-interface {p1, v1}, Lcom/oplus/camera/e/d;->l(Z)V

    .line 2882
    iget-object p1, p0, Lcom/oplus/camera/capmode/d;->mOneCamera:Lcom/oplus/camera/e/d;

    invoke-interface {p1, v0}, Lcom/oplus/camera/e/d;->a(Lcom/oplus/camera/e/d$c;)V

    .line 2885
    :cond_1
    iget-object p1, p0, Lcom/oplus/camera/capmode/d;->mCameraInterface:Lcom/oplus/camera/capmode/a;

    invoke-interface {p1}, Lcom/oplus/camera/capmode/a;->aU()Lcom/oplus/camera/screen/b/a;

    move-result-object p1

    invoke-virtual {p1}, Lcom/oplus/camera/screen/b/a;->j()I

    move-result p1

    if-eq p2, p1, :cond_2

    const/4 v2, 0x4

    if-eq v2, p1, :cond_2

    .line 2889
    iget-object p1, p0, Lcom/oplus/camera/capmode/d;->mCameraInterface:Lcom/oplus/camera/capmode/a;

    invoke-interface {p1, v0, v1, v1}, Lcom/oplus/camera/capmode/a;->a(Landroid/animation/AnimatorListenerAdapter;ZZ)V

    .line 2892
    :cond_2
    iget-object p1, p0, Lcom/oplus/camera/capmode/d;->mCameraUIInterface:Lcom/oplus/camera/ui/CameraUIInterface;

    iget v0, p0, Lcom/oplus/camera/capmode/d;->mReceivedSnapNum:I

    invoke-interface {p1, v0, v1, v1}, Lcom/oplus/camera/ui/CameraUIInterface;->a(IZZ)V

    .line 2894
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    iget-wide v2, p0, Lcom/oplus/camera/capmode/d;->mPlaySoundTime:J

    sub-long/2addr v0, v2

    const-wide/16 v2, 0x1e

    cmp-long p1, v0, v2

    if-ltz p1, :cond_3

    .line 2895
    iget-object p1, p0, Lcom/oplus/camera/capmode/d;->mCameraInterface:Lcom/oplus/camera/capmode/a;

    invoke-interface {p1, p2}, Lcom/oplus/camera/capmode/a;->c(I)V

    .line 2896
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide p1

    iput-wide p1, p0, Lcom/oplus/camera/capmode/d;->mPlaySoundTime:J

    :cond_3
    return-void
.end method

.method protected onBeforePreview()V
    .locals 2

    const-string v0, "CommonCapMode"

    const-string v1, "onBeforePreview"

    .line 2141
    invoke-static {v0, v1}, Lcom/oplus/camera/e;->a(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x0

    .line 2143
    iput-boolean v0, p0, Lcom/oplus/camera/capmode/d;->mbSuperTextOpen:Z

    .line 2144
    iput-boolean v0, p0, Lcom/oplus/camera/capmode/d;->mbAutoMicroOpen:Z

    const-string v0, "func_super_text_gpu_process"

    .line 2146
    invoke-virtual {p0, v0}, Lcom/oplus/camera/capmode/d;->getSupportFunction(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/oplus/camera/capmode/d;->mPreviewEffectProcess:Lcom/oplus/camera/ui/preview/a/t;

    if-eqz v0, :cond_0

    .line 2147
    iget-object v0, p0, Lcom/oplus/camera/capmode/d;->mPreviewEffectProcess:Lcom/oplus/camera/ui/preview/a/t;

    invoke-virtual {p0}, Lcom/oplus/camera/capmode/d;->isSuperTextOpen()Z

    move-result v1

    invoke-interface {v0, v1}, Lcom/oplus/camera/ui/preview/a/t;->k(Z)V

    .line 2150
    :cond_0
    invoke-virtual {p0}, Lcom/oplus/camera/capmode/d;->applyBeautyParam()V

    .line 2152
    iget-object v0, p0, Lcom/oplus/camera/capmode/d;->mBeauty3DManager:Lcom/oplus/camera/d/b;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lcom/oplus/camera/d/b;->f()I

    move-result v0

    if-lez v0, :cond_1

    .line 2153
    iget-object v0, p0, Lcom/oplus/camera/capmode/d;->mBeauty3DManager:Lcom/oplus/camera/d/b;

    iget-object v1, p0, Lcom/oplus/camera/capmode/d;->mOneCamera:Lcom/oplus/camera/e/d;

    invoke-virtual {v0, v1}, Lcom/oplus/camera/d/b;->b(Lcom/oplus/camera/e/d;)V

    .line 2156
    :cond_1
    invoke-virtual {p0}, Lcom/oplus/camera/capmode/d;->setTiltShiftPreview()V

    return-void
.end method

.method protected onBeforeSnapping(Lcom/oplus/camera/e/c;)Z
    .locals 6

    .line 2244
    iget-boolean v0, p0, Lcom/oplus/camera/capmode/d;->mbFrontCamera:Z

    iput-boolean v0, p0, Lcom/oplus/camera/capmode/d;->mbCheckTakeAnimateDelay:Z

    .line 2245
    invoke-virtual {p0}, Lcom/oplus/camera/capmode/d;->isInNightProcess()Z

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/oplus/camera/capmode/d;->isInNightProMode()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/oplus/camera/capmode/d;->isSuperSeNightOpen()Z

    move-result v0

    if-nez v0, :cond_0

    move v0, v2

    goto :goto_0

    :cond_0
    move v0, v1

    :goto_0
    iput-boolean v0, p0, Lcom/oplus/camera/capmode/d;->mbNightShutterCountDown:Z

    .line 2247
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "onBeforeSnapping, mbNightShutterCountDown: "

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v4, p0, Lcom/oplus/camera/capmode/d;->mbNightShutterCountDown:Z

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v4, "CommonCapMode"

    invoke-static {v4, v0}, Lcom/oplus/camera/e;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 2249
    iget-object v0, p0, Lcom/oplus/camera/capmode/d;->mActivity:Landroid/app/Activity;

    new-instance v5, Lcom/oplus/camera/capmode/d$13;

    invoke-direct {v5, p0}, Lcom/oplus/camera/capmode/d$13;-><init>(Lcom/oplus/camera/capmode/d;)V

    invoke-virtual {v0, v5}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 2368
    invoke-static {}, Lcom/oplus/camera/util/Util;->C()Z

    move-result v0

    if-eqz v0, :cond_5

    iget-object v0, p0, Lcom/oplus/camera/capmode/d;->mCameraInterface:Lcom/oplus/camera/capmode/a;

    invoke-interface {v0}, Lcom/oplus/camera/capmode/a;->i()Z

    move-result v0

    if-eqz v0, :cond_5

    const-string v0, "com.oplus.lock.ae.before.capture.support"

    .line 2369
    invoke-static {v0}, Lcom/oplus/camera/aps/config/CameraConfig;->getConfigBooleanValue(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-boolean v0, p0, Lcom/oplus/camera/capmode/d;->mbFrontCamera:Z

    if-eqz v0, :cond_1

    .line 2371
    iget-object v0, p0, Lcom/oplus/camera/capmode/d;->mOneCamera:Lcom/oplus/camera/e/d;

    invoke-interface {v0, v2, v1}, Lcom/oplus/camera/e/d;->b(ZZ)V

    .line 2372
    iput-boolean v2, p0, Lcom/oplus/camera/capmode/d;->mbResetAeLockAfterCaptured:Z

    :cond_1
    const-string v0, "com.oplus.lock.awb.before.capture.rear.support"

    .line 2375
    invoke-static {v0}, Lcom/oplus/camera/aps/config/CameraConfig;->getConfigBooleanValue(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 2376
    invoke-virtual {p0}, Lcom/oplus/camera/capmode/d;->isFlashRequired()Z

    move-result v0

    if-nez v0, :cond_2

    .line 2377
    invoke-direct {p0}, Lcom/oplus/camera/capmode/d;->isTorchMode()Z

    move-result v0

    if-eqz v0, :cond_3

    :cond_2
    iget-boolean v0, p0, Lcom/oplus/camera/capmode/d;->mbFrontCamera:Z

    if-eqz v0, :cond_4

    .line 2379
    :cond_3
    iget-object v0, p0, Lcom/oplus/camera/capmode/d;->mOneCamera:Lcom/oplus/camera/e/d;

    sget-object v5, Landroid/hardware/camera2/CaptureRequest;->CONTROL_AWB_LOCK:Landroid/hardware/camera2/CaptureRequest$Key;

    invoke-interface {v0, v5, v3}, Lcom/oplus/camera/e/d;->a(Landroid/hardware/camera2/CaptureRequest$Key;Ljava/lang/Object;)V

    .line 2380
    iput-boolean v2, p0, Lcom/oplus/camera/capmode/d;->mbResetAwbLockAfterCaptured:Z

    .line 2383
    :cond_4
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "beforeSnapping, in QualcommPlatform front\uff1a"

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v5, p0, Lcom/oplus/camera/capmode/d;->mbFrontCamera:Z

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v5, ", camera lock ae: "

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v5, p0, Lcom/oplus/camera/capmode/d;->mbResetAeLockAfterCaptured:Z

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v5, " and awb: "

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v5, p0, Lcom/oplus/camera/capmode/d;->mbResetAwbLockAfterCaptured:Z

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v5, ", CameraMode: "

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2385
    invoke-virtual {p0}, Lcom/oplus/camera/capmode/d;->getCameraMode()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 2383
    invoke-static {v4, v0}, Lcom/oplus/camera/e;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 2388
    :cond_5
    iget-boolean v0, p1, Lcom/oplus/camera/e/c;->Y:Z

    if-eqz v0, :cond_b

    .line 2389
    invoke-virtual {p0}, Lcom/oplus/camera/capmode/d;->isTripodNight()Z

    move-result v0

    if-eqz v0, :cond_6

    .line 2390
    iget-object v0, p0, Lcom/oplus/camera/capmode/d;->mOneCamera:Lcom/oplus/camera/e/d;

    const/16 v4, 0x960

    invoke-interface {v0, v4}, Lcom/oplus/camera/e/d;->t(I)V

    .line 2393
    :cond_6
    iget-object v0, p0, Lcom/oplus/camera/capmode/d;->mOneCamera:Lcom/oplus/camera/e/d;

    invoke-virtual {p0}, Lcom/oplus/camera/capmode/d;->getNightStateDecision()I

    move-result v4

    invoke-interface {v0, v4}, Lcom/oplus/camera/e/d;->o(I)V

    .line 2395
    invoke-virtual {p0}, Lcom/oplus/camera/capmode/d;->isInNightProMode()Z

    move-result v0

    if-nez v0, :cond_7

    .line 2396
    iget-object v0, p0, Lcom/oplus/camera/capmode/d;->mOneCamera:Lcom/oplus/camera/e/d;

    invoke-static {}, Lcom/oplus/camera/a;->b()[Landroid/hardware/camera2/params/MeteringRectangle;

    move-result-object v4

    .line 2397
    invoke-static {}, Lcom/oplus/camera/a;->b()[Landroid/hardware/camera2/params/MeteringRectangle;

    move-result-object v5

    .line 2396
    invoke-interface {v0, v2, v4, v5, v1}, Lcom/oplus/camera/e/d;->a(I[Landroid/hardware/camera2/params/MeteringRectangle;[Landroid/hardware/camera2/params/MeteringRectangle;Z)V

    .line 2400
    :cond_7
    invoke-virtual {p0}, Lcom/oplus/camera/capmode/d;->isFlashRequired()Z

    move-result v0

    if-nez v0, :cond_8

    .line 2401
    iget-object v0, p0, Lcom/oplus/camera/capmode/d;->mOneCamera:Lcom/oplus/camera/e/d;

    sget-object v4, Landroid/hardware/camera2/CaptureRequest;->CONTROL_AWB_LOCK:Landroid/hardware/camera2/CaptureRequest$Key;

    invoke-interface {v0, v4, v3}, Lcom/oplus/camera/e/d;->a(Landroid/hardware/camera2/CaptureRequest$Key;Ljava/lang/Object;)V

    :cond_8
    const-string v0, "com.oplus.night.filter.support"

    .line 2404
    invoke-static {v0}, Lcom/oplus/camera/aps/config/CameraConfig;->getConfigBooleanValue(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_9

    const-string v0, "pref_night_filter_menu"

    .line 2405
    invoke-virtual {p0, v0}, Lcom/oplus/camera/capmode/d;->getSupportFunction(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_9

    .line 2406
    sget v0, Lcom/oplus/camera/ui/preview/a/j;->a:I

    invoke-virtual {p0, v0}, Lcom/oplus/camera/capmode/d;->updateFilterParam(I)V

    .line 2409
    :cond_9
    iget-boolean v0, p0, Lcom/oplus/camera/capmode/d;->mbAutoSeNight:Z

    if-nez v0, :cond_a

    .line 2410
    invoke-virtual {p0}, Lcom/oplus/camera/capmode/d;->closeHdrAndFlashModeBeforeCapture()V

    .line 2413
    :cond_a
    iget-object v0, p0, Lcom/oplus/camera/capmode/d;->mOneCamera:Lcom/oplus/camera/e/d;

    const/4 v3, 0x0

    invoke-interface {v0, v3}, Lcom/oplus/camera/e/d;->a(Lcom/oplus/camera/e/d$c;)V

    :cond_b
    const-string v0, "com.oplus.feature.mtk.face.beauty.remosaic.support"

    .line 2416
    invoke-static {v0}, Lcom/oplus/camera/aps/config/CameraConfig;->getConfigBooleanValue(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_c

    iget-boolean v0, p0, Lcom/oplus/camera/capmode/d;->mbFrontCamera:Z

    if-eqz v0, :cond_c

    .line 2418
    invoke-virtual {p0}, Lcom/oplus/camera/capmode/d;->isFaceBeautyOrMakeupOpen()Z

    move-result v0

    if-eqz v0, :cond_c

    .line 2419
    invoke-virtual {p0}, Lcom/oplus/camera/capmode/d;->isFilterEffectOpen()Z

    move-result v0

    if-nez v0, :cond_c

    .line 2420
    iget-object v0, p0, Lcom/oplus/camera/capmode/d;->mOneCamera:Lcom/oplus/camera/e/d;

    invoke-interface {v0, v2}, Lcom/oplus/camera/e/d;->q(I)V

    goto :goto_2

    .line 2421
    :cond_c
    invoke-virtual {p0}, Lcom/oplus/camera/capmode/d;->isFaceBeautyOrMakeupOpen()Z

    move-result v0

    if-nez v0, :cond_e

    invoke-virtual {p0}, Lcom/oplus/camera/capmode/d;->isFilterEffectOpen()Z

    move-result v0

    if-nez v0, :cond_e

    invoke-virtual {p0}, Lcom/oplus/camera/capmode/d;->isPIModeOpen()Z

    move-result v0

    if-eqz v0, :cond_d

    goto :goto_1

    .line 2424
    :cond_d
    iget-object v0, p0, Lcom/oplus/camera/capmode/d;->mOneCamera:Lcom/oplus/camera/e/d;

    const-string v3, "com.oplus.feature.remosaic.support.default.value"

    invoke-static {v3}, Lcom/oplus/camera/aps/config/CameraConfig;->getConfigIntValue(Ljava/lang/String;)I

    move-result v3

    invoke-interface {v0, v3}, Lcom/oplus/camera/e/d;->q(I)V

    goto :goto_2

    .line 2422
    :cond_e
    :goto_1
    iget-object v0, p0, Lcom/oplus/camera/capmode/d;->mOneCamera:Lcom/oplus/camera/e/d;

    invoke-interface {v0, v1}, Lcom/oplus/camera/e/d;->q(I)V

    :goto_2
    const-string v0, "com.oplus.feature.mtk.insensor.zoom"

    .line 2427
    invoke-static {v0}, Lcom/oplus/camera/aps/config/CameraConfig;->getConfigBooleanValue(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_10

    .line 2428
    invoke-static {}, Lcom/oplus/camera/util/Util;->C()Z

    move-result v0

    if-nez v0, :cond_f

    const/4 v0, 0x4

    iget p1, p1, Lcom/oplus/camera/e/c;->U:I

    if-ne v0, p1, :cond_f

    .line 2429
    iget-object p1, p0, Lcom/oplus/camera/capmode/d;->mOneCamera:Lcom/oplus/camera/e/d;

    invoke-interface {p1, v2}, Lcom/oplus/camera/e/d;->r(I)V

    goto :goto_3

    .line 2431
    :cond_f
    iget-object p1, p0, Lcom/oplus/camera/capmode/d;->mOneCamera:Lcom/oplus/camera/e/d;

    invoke-interface {p1, v1}, Lcom/oplus/camera/e/d;->r(I)V

    .line 2435
    :cond_10
    :goto_3
    invoke-virtual {p0}, Lcom/oplus/camera/capmode/d;->setCaptureRequestPictureSizeScale()V

    const-string p1, "high_resolution_cancel_snapshot"

    .line 2437
    invoke-virtual {p0, p1}, Lcom/oplus/camera/capmode/d;->getSupportFunction(Ljava/lang/String;)Z

    move-result p1

    .line 2439
    invoke-virtual {p0}, Lcom/oplus/camera/capmode/d;->isSuperTextOpen()Z

    move-result v0

    if-nez v0, :cond_11

    invoke-virtual {p0}, Lcom/oplus/camera/capmode/d;->isIdPhotoOpen()Z

    move-result v0

    if-nez v0, :cond_11

    if-eqz p1, :cond_12

    :cond_11
    iget-boolean p1, p0, Lcom/oplus/camera/capmode/d;->mbBurstShot:Z

    if-nez p1, :cond_12

    .line 2440
    iget-object p1, p0, Lcom/oplus/camera/capmode/d;->mActivity:Landroid/app/Activity;

    new-instance v0, Lcom/oplus/camera/capmode/d$14;

    invoke-direct {v0, p0}, Lcom/oplus/camera/capmode/d$14;-><init>(Lcom/oplus/camera/capmode/d;)V

    invoke-virtual {p1, v0}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    :cond_12
    return v2
.end method

.method protected onBurstShotCapture()Z
    .locals 4

    const-string v0, "CommonCapMode"

    const-string v1, "onBurstShotCapture"

    .line 2579
    invoke-static {v0, v1}, Lcom/oplus/camera/e;->a(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x0

    .line 2581
    iput v0, p0, Lcom/oplus/camera/capmode/d;->mReceivedSnapNum:I

    .line 2582
    iput v0, p0, Lcom/oplus/camera/capmode/d;->mBurstCaptureBufferLostNum:I

    .line 2583
    iget-object v1, p0, Lcom/oplus/camera/capmode/d;->mMyHandler:Landroid/os/Handler;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/os/Handler;->removeMessages(I)V

    .line 2584
    iget-object v1, p0, Lcom/oplus/camera/capmode/d;->mCameraInterface:Lcom/oplus/camera/capmode/a;

    invoke-interface {v1, v2}, Lcom/oplus/camera/capmode/a;->a(Z)V

    .line 2586
    iget-boolean v1, p0, Lcom/oplus/camera/capmode/d;->mbAutoMicroOpen:Z

    if-nez v1, :cond_0

    .line 2587
    invoke-direct {p0}, Lcom/oplus/camera/capmode/d;->closePIBeforeCapture()V

    :cond_0
    const/4 v1, 0x0

    .line 2590
    invoke-virtual {p0, v1}, Lcom/oplus/camera/capmode/d;->getExif(Lcom/oplus/ocs/camera/CameraPictureCallback$CameraPictureResult;)Ljava/lang/String;

    .line 2592
    invoke-static {}, Lcom/oplus/camera/util/Util;->C()Z

    move-result v3

    if-eqz v3, :cond_1

    iget-object v3, p0, Lcom/oplus/camera/capmode/d;->mOneCamera:Lcom/oplus/camera/e/d;

    if-eqz v3, :cond_1

    .line 2593
    iget-object v3, p0, Lcom/oplus/camera/capmode/d;->mOneCamera:Lcom/oplus/camera/e/d;

    invoke-interface {v3, v2}, Lcom/oplus/camera/e/d;->l(Z)V

    .line 2594
    iget-object v3, p0, Lcom/oplus/camera/capmode/d;->mOneCamera:Lcom/oplus/camera/e/d;

    invoke-interface {v3, v1}, Lcom/oplus/camera/e/d;->a(Lcom/oplus/camera/e/d$c;)V

    .line 2597
    :cond_1
    invoke-virtual {p0}, Lcom/oplus/camera/capmode/d;->isGoogleLensEnable()Z

    move-result v3

    if-eqz v3, :cond_2

    .line 2598
    invoke-direct {p0, v0}, Lcom/oplus/camera/capmode/d;->setGoogleLensIconClickable(Z)V

    .line 2601
    :cond_2
    invoke-virtual {p0, v0}, Lcom/oplus/camera/capmode/d;->capture(Z)Z

    move-result v3

    if-nez v3, :cond_4

    .line 2602
    invoke-virtual {p0}, Lcom/oplus/camera/capmode/d;->disableBurstShot()V

    .line 2604
    iget-object v2, p0, Lcom/oplus/camera/capmode/d;->mOneCamera:Lcom/oplus/camera/e/d;

    if-eqz v2, :cond_3

    .line 2605
    iget-object v2, p0, Lcom/oplus/camera/capmode/d;->mOneCamera:Lcom/oplus/camera/e/d;

    invoke-interface {v2, v0}, Lcom/oplus/camera/e/d;->l(Z)V

    .line 2606
    iget-object p0, p0, Lcom/oplus/camera/capmode/d;->mOneCamera:Lcom/oplus/camera/e/d;

    invoke-interface {p0, v1}, Lcom/oplus/camera/e/d;->a(Lcom/oplus/camera/e/d$c;)V

    :cond_3
    return v0

    :cond_4
    return v2
.end method

.method public onCameraPermissionGranted()V
    .locals 1

    const-string v0, "key_photo_mode_filter"

    .line 1982
    invoke-virtual {p0, v0}, Lcom/oplus/camera/capmode/d;->getSupportFunction(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1983
    invoke-static {}, Lcom/oplus/camera/ui/preview/a/j;->c()V

    .line 1986
    :cond_0
    invoke-direct {p0}, Lcom/oplus/camera/capmode/d;->updateNowRearEffectIndex()V

    return-void
.end method

.method public onCancelTakePicture()V
    .locals 2

    const-string v0, "CommonCapMode"

    const-string v1, "onCancelTakePicture, reset mbShutterCallback"

    .line 2497
    invoke-static {v0, v1}, Lcom/oplus/camera/e;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 2499
    invoke-virtual {p0}, Lcom/oplus/camera/capmode/d;->isGoogleLensEnable()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    .line 2500
    invoke-direct {p0, v0}, Lcom/oplus/camera/capmode/d;->setGoogleLensIconClickable(Z)V

    :cond_0
    return-void
.end method

.method public onCaptureCompleted(Lcom/oplus/camera/aps/service/CameraCaptureResult;Lcom/oplus/camera/e/c;)V
    .locals 8

    .line 2693
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onCaptureCompleted, result: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", mReceivedRawResultNum: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/oplus/camera/capmode/d;->mReceivedRawResultNum:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", mbPaused: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/oplus/camera/capmode/d;->mbPaused:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "CommonCapMode"

    invoke-static {v1, v0}, Lcom/oplus/camera/e;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 2696
    iget-boolean v0, p2, Lcom/oplus/camera/e/c;->ac:Z

    if-eqz v0, :cond_0

    .line 2698
    iget-object v1, p0, Lcom/oplus/camera/capmode/d;->mCameraInterface:Lcom/oplus/camera/capmode/a;

    iget-wide v2, p1, Lcom/oplus/camera/aps/service/CameraCaptureResult;->mIdentity:J

    .line 2699
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    invoke-static {v4, v5}, Lcom/oplus/camera/util/Util;->a(J)Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    .line 2698
    invoke-interface/range {v1 .. v7}, Lcom/oplus/camera/capmode/a;->a(JLjava/lang/String;ZZZ)V

    .line 2702
    :cond_0
    iget-boolean v0, p0, Lcom/oplus/camera/capmode/d;->mbPaused:Z

    if-nez v0, :cond_2

    invoke-virtual {p0}, Lcom/oplus/camera/capmode/d;->isInNightProcess()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 2703
    invoke-virtual {p2}, Lcom/oplus/camera/e/c;->a()Lcom/oplus/camera/e/c$a;

    move-result-object v0

    .line 2705
    sget-object v1, Lcom/oplus/camera/e/c$a;->CAPTURE_RAW:Lcom/oplus/camera/e/c$a;

    if-ne v1, v0, :cond_1

    .line 2706
    iget-object v1, p2, Lcom/oplus/camera/e/c;->N:Lcom/oplus/camera/aps/util/CameraApsDecision;

    if-eqz v1, :cond_1

    iget v1, p0, Lcom/oplus/camera/capmode/d;->mReceivedRawResultNum:I

    iget-object v2, p2, Lcom/oplus/camera/e/c;->N:Lcom/oplus/camera/aps/util/CameraApsDecision;

    iget v2, v2, Lcom/oplus/camera/aps/util/CameraApsDecision;->mMultiFrameCount:I

    if-ge v1, v2, :cond_1

    .line 2707
    iget v1, p0, Lcom/oplus/camera/capmode/d;->mReceivedRawResultNum:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/oplus/camera/capmode/d;->mReceivedRawResultNum:I

    .line 2711
    :cond_1
    iget-object v1, p0, Lcom/oplus/camera/capmode/d;->mOneCamera:Lcom/oplus/camera/e/d;

    if-eqz v1, :cond_2

    .line 2712
    invoke-static {}, Lcom/oplus/camera/util/Util;->C()Z

    move-result v1

    if-nez v1, :cond_2

    sget-object v1, Lcom/oplus/camera/e/c$a;->CAPTURE_REPROCESS:Lcom/oplus/camera/e/c$a;

    if-ne v1, v0, :cond_2

    iget v0, p0, Lcom/oplus/camera/capmode/d;->mReceivedRawResultNum:I

    if-lez v0, :cond_2

    .line 2715
    iget-object v0, p0, Lcom/oplus/camera/capmode/d;->mOneCamera:Lcom/oplus/camera/e/d;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Lcom/oplus/camera/e/d;->o(I)V

    .line 2716
    iget-object v0, p0, Lcom/oplus/camera/capmode/d;->mOneCamera:Lcom/oplus/camera/e/d;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Lcom/oplus/camera/e/d;->a(Lcom/oplus/camera/e/d$c;)V

    .line 2720
    :cond_2
    invoke-super {p0, p1, p2}, Lcom/oplus/camera/capmode/BaseMode;->onCaptureCompleted(Lcom/oplus/camera/aps/service/CameraCaptureResult;Lcom/oplus/camera/e/c;)V

    return-void
.end method

.method public onCaptureFailed(Landroid/hardware/camera2/CaptureRequest;Lcom/oplus/camera/e/c;)V
    .locals 1

    .line 2666
    iget-boolean v0, p0, Lcom/oplus/camera/capmode/d;->mbBurstShot:Z

    if-eqz v0, :cond_0

    .line 2667
    iget v0, p0, Lcom/oplus/camera/capmode/d;->mBurstCaptureBufferLostNum:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/oplus/camera/capmode/d;->mBurstCaptureBufferLostNum:I

    .line 2670
    :cond_0
    invoke-super {p0, p1, p2}, Lcom/oplus/camera/capmode/BaseMode;->onCaptureFailed(Landroid/hardware/camera2/CaptureRequest;Lcom/oplus/camera/e/c;)V

    return-void
.end method

.method public onCaptureFirstFrameArrived(Landroid/hardware/camera2/CaptureRequest;Lcom/oplus/camera/aps/service/CameraCaptureResult;)V
    .locals 2

    .line 2675
    invoke-super {p0, p1, p2}, Lcom/oplus/camera/capmode/BaseMode;->onCaptureFirstFrameArrived(Landroid/hardware/camera2/CaptureRequest;Lcom/oplus/camera/aps/service/CameraCaptureResult;)V

    .line 2677
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "onCaptureFirstFrameArrived, result: "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v0, ", isTripodNight: "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/oplus/camera/capmode/d;->isTripodNight()Z

    move-result v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "CommonCapMode"

    invoke-static {v0, p1}, Lcom/oplus/camera/e;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 2679
    iget-boolean p1, p0, Lcom/oplus/camera/capmode/d;->mbPaused:Z

    if-nez p1, :cond_3

    invoke-virtual {p0}, Lcom/oplus/camera/capmode/d;->isInNightProcess()Z

    move-result p1

    if-eqz p1, :cond_3

    .line 2680
    iget-boolean p1, p0, Lcom/oplus/camera/capmode/d;->mbSupportNightPictureTime:Z

    if-eqz p1, :cond_0

    invoke-virtual {p0}, Lcom/oplus/camera/capmode/d;->isTripodNight()Z

    move-result p1

    if-eqz p1, :cond_1

    .line 2681
    :cond_0
    iget-wide v0, p2, Lcom/oplus/camera/aps/service/CameraCaptureResult;->mNightCaptureTotaltime:J

    iput-wide v0, p0, Lcom/oplus/camera/capmode/d;->mNightCaptureTotalTime:J

    .line 2684
    :cond_1
    invoke-virtual {p0}, Lcom/oplus/camera/capmode/d;->isTripodNight()Z

    move-result p1

    if-nez p1, :cond_2

    iget-boolean p1, p0, Lcom/oplus/camera/capmode/d;->mbSupportNightPictureTime:Z

    if-eqz p1, :cond_3

    invoke-virtual {p0}, Lcom/oplus/camera/capmode/d;->isInNightProProcess()Z

    move-result p1

    if-nez p1, :cond_3

    .line 2685
    :cond_2
    iget-wide p1, p2, Lcom/oplus/camera/aps/service/CameraCaptureResult;->mFirstExposureTime:J

    iput-wide p1, p0, Lcom/oplus/camera/capmode/d;->mFirstExposureTime:J

    .line 2686
    invoke-direct {p0}, Lcom/oplus/camera/capmode/d;->onFirstCaptureArrived()V

    :cond_3
    return-void
.end method

.method public onCaptureSequenceCompleted()V
    .locals 2

    .line 2725
    iget-boolean v0, p0, Lcom/oplus/camera/capmode/d;->mbPaused:Z

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/oplus/camera/capmode/d;->mActivity:Landroid/app/Activity;

    if-nez v0, :cond_0

    goto :goto_0

    .line 2729
    :cond_0
    iget-boolean v0, p0, Lcom/oplus/camera/capmode/d;->mbFrontCamera:Z

    if-eqz v0, :cond_1

    const/4 v0, 0x2

    iget v1, p0, Lcom/oplus/camera/capmode/d;->mCameraEntryType:I

    if-ne v0, v1, :cond_1

    .line 2730
    iget-object v0, p0, Lcom/oplus/camera/capmode/d;->mCameraInterface:Lcom/oplus/camera/capmode/a;

    invoke-interface {v0}, Lcom/oplus/camera/capmode/a;->aS()V

    .line 2733
    :cond_1
    iget-object v0, p0, Lcom/oplus/camera/capmode/d;->mActivity:Landroid/app/Activity;

    new-instance v1, Lcom/oplus/camera/capmode/d$17;

    invoke-direct {v1, p0}, Lcom/oplus/camera/capmode/d$17;-><init>(Lcom/oplus/camera/capmode/d;)V

    invoke-virtual {v0, v1}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    :cond_2
    :goto_0
    return-void
.end method

.method protected onDeInitCameraMode(Ljava/lang/String;)V
    .locals 4

    const-string p1, "CommonCapMode"

    const-string v0, "onDeInitCameraMode"

    .line 791
    invoke-static {p1, v0}, Lcom/oplus/camera/e;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 793
    iget-object p1, p0, Lcom/oplus/camera/capmode/d;->mCameraUIInterface:Lcom/oplus/camera/ui/CameraUIInterface;

    const/4 v0, 0x1

    invoke-interface {p1, v0}, Lcom/oplus/camera/ui/CameraUIInterface;->w(Z)V

    .line 794
    iget-object p1, p0, Lcom/oplus/camera/capmode/d;->mCameraUIInterface:Lcom/oplus/camera/ui/CameraUIInterface;

    const v1, 0x7f1005f0

    invoke-interface {p1, v1}, Lcom/oplus/camera/ui/CameraUIInterface;->a(I)V

    const/4 p1, 0x0

    .line 795
    iput-boolean p1, p0, Lcom/oplus/camera/capmode/d;->mbNightCheckClosed:Z

    .line 796
    iput p1, p0, Lcom/oplus/camera/capmode/d;->mReceivedRawResultNum:I

    .line 797
    iput p1, p0, Lcom/oplus/camera/capmode/d;->mReceivedPreviewResultNum:I

    .line 798
    iput-boolean p1, p0, Lcom/oplus/camera/capmode/d;->mbAutoMicroOpen:Z

    .line 799
    iput-boolean p1, p0, Lcom/oplus/camera/capmode/d;->mGoogleLensShouldShow:Z

    .line 800
    iput-boolean p1, p0, Lcom/oplus/camera/capmode/d;->mbCheckTakeAnimateDelay:Z

    .line 801
    iput-boolean p1, p0, Lcom/oplus/camera/capmode/d;->mbTakeAnimateDelay:Z

    .line 803
    iget-object v1, p0, Lcom/oplus/camera/capmode/d;->mMyHandler:Landroid/os/Handler;

    if-eqz v1, :cond_0

    const/4 v2, 0x0

    .line 804
    invoke-virtual {v1, v2}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    .line 807
    :cond_0
    iget-object v1, p0, Lcom/oplus/camera/capmode/d;->mOneCamera:Lcom/oplus/camera/e/d;

    if-eqz v1, :cond_1

    .line 808
    iget-object v1, p0, Lcom/oplus/camera/capmode/d;->mOneCamera:Lcom/oplus/camera/e/d;

    sget-object v2, Landroid/hardware/camera2/CaptureRequest;->CONTROL_SCENE_MODE:Landroid/hardware/camera2/CaptureRequest$Key;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v1, v2, v3}, Lcom/oplus/camera/e/d;->a(Landroid/hardware/camera2/CaptureRequest$Key;Ljava/lang/Object;)V

    const-string v1, "com.oplus.feature.mtk.insensor.zoom"

    .line 810
    invoke-static {v1}, Lcom/oplus/camera/aps/config/CameraConfig;->getConfigBooleanValue(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 811
    iget-object v1, p0, Lcom/oplus/camera/capmode/d;->mOneCamera:Lcom/oplus/camera/e/d;

    invoke-interface {v1, p1}, Lcom/oplus/camera/e/d;->r(I)V

    .line 815
    :cond_1
    invoke-virtual {p0, p1, p1}, Lcom/oplus/camera/capmode/d;->updateFaceBeautyLevel(IZ)V

    .line 817
    iget-object v1, p0, Lcom/oplus/camera/capmode/d;->mPreviewEffectProcess:Lcom/oplus/camera/ui/preview/a/t;

    if-eqz v1, :cond_2

    .line 818
    iget-object v1, p0, Lcom/oplus/camera/capmode/d;->mPreviewEffectProcess:Lcom/oplus/camera/ui/preview/a/t;

    invoke-interface {v1, p1}, Lcom/oplus/camera/ui/preview/a/t;->g(I)V

    .line 821
    :cond_2
    iget-object v1, p0, Lcom/oplus/camera/capmode/d;->mCameraUIInterface:Lcom/oplus/camera/ui/CameraUIInterface;

    invoke-interface {v1, p1, p1}, Lcom/oplus/camera/ui/CameraUIInterface;->e(ZZ)V

    const-string v1, "key_bubble_type_add_beuty3d"

    .line 823
    invoke-virtual {p0, v1}, Lcom/oplus/camera/capmode/d;->isBubbleOpen(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_3

    const-string v1, "key_beauty3d"

    .line 824
    invoke-virtual {p0, v1}, Lcom/oplus/camera/capmode/d;->getSupportFunction(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 825
    iget-object v1, p0, Lcom/oplus/camera/capmode/d;->mCameraUIInterface:Lcom/oplus/camera/ui/CameraUIInterface;

    const/4 v2, 0x6

    invoke-interface {v1, v2, p1}, Lcom/oplus/camera/ui/CameraUIInterface;->f(IZ)V

    :cond_3
    const-string v1, "key_bubble_type_custom_beuty3d"

    .line 828
    invoke-virtual {p0, v1}, Lcom/oplus/camera/capmode/d;->isBubbleOpen(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 829
    iget-object v1, p0, Lcom/oplus/camera/capmode/d;->mCameraUIInterface:Lcom/oplus/camera/ui/CameraUIInterface;

    const/4 v2, 0x5

    invoke-interface {v1, v2, p1}, Lcom/oplus/camera/ui/CameraUIInterface;->f(IZ)V

    .line 832
    :cond_4
    iget-object v1, p0, Lcom/oplus/camera/capmode/d;->mBeauty3DManager:Lcom/oplus/camera/d/b;

    if-eqz v1, :cond_5

    .line 833
    invoke-virtual {v1}, Lcom/oplus/camera/d/b;->c()V

    .line 836
    :cond_5
    invoke-virtual {p0}, Lcom/oplus/camera/capmode/d;->isUltraWideHighPictureSize()Z

    move-result v1

    if-eqz v1, :cond_6

    iget-object v1, p0, Lcom/oplus/camera/capmode/d;->mPreferences:Landroid/content/SharedPreferences;

    if-eqz v1, :cond_6

    .line 837
    iput-boolean v0, p0, Lcom/oplus/camera/capmode/d;->mbForbidPreferenceChange:Z

    .line 838
    iget-object v1, p0, Lcom/oplus/camera/capmode/d;->mPreferences:Landroid/content/SharedPreferences;

    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    const-string v2, "pref_ultra_wide_high_picture_size_key"

    const-string v3, "off"

    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 839
    iput-boolean p1, p0, Lcom/oplus/camera/capmode/d;->mbForbidPreferenceChange:Z

    .line 842
    :cond_6
    iget-object p1, p0, Lcom/oplus/camera/capmode/d;->mPreferences:Landroid/content/SharedPreferences;

    if-eqz p1, :cond_7

    iget-object p1, p0, Lcom/oplus/camera/capmode/d;->mPreferences:Landroid/content/SharedPreferences;

    const-string v1, "key_bubble_type_zoom_ultra_wide"

    invoke-interface {p1, v1, v0}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result p1

    if-eqz p1, :cond_7

    .line 843
    iget-object p1, p0, Lcom/oplus/camera/capmode/d;->mCameraUIInterface:Lcom/oplus/camera/ui/CameraUIInterface;

    const/16 v1, 0x9

    invoke-interface {p1, v1, v0}, Lcom/oplus/camera/ui/CameraUIInterface;->f(IZ)V

    :cond_7
    const-string p1, "key_first_beauty_tip"

    .line 846
    invoke-virtual {p0, p1}, Lcom/oplus/camera/capmode/d;->isBubbleOpen(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_8

    .line 847
    iget-object p1, p0, Lcom/oplus/camera/capmode/d;->mCameraUIInterface:Lcom/oplus/camera/ui/CameraUIInterface;

    const/16 v1, 0x11

    invoke-interface {p1, v1, v0}, Lcom/oplus/camera/ui/CameraUIInterface;->f(IZ)V

    .line 851
    :cond_8
    iget-object p1, p0, Lcom/oplus/camera/capmode/d;->mPreferences:Landroid/content/SharedPreferences;

    if-eqz p1, :cond_9

    const-string p1, "key_support_grand_tour_fitlers"

    invoke-virtual {p0, p1}, Lcom/oplus/camera/capmode/d;->getSupportFunction(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_9

    iget-boolean p1, p0, Lcom/oplus/camera/capmode/d;->mbFirstEffectMenuOpened:Z

    if-eqz p1, :cond_9

    .line 853
    iget-object p1, p0, Lcom/oplus/camera/capmode/d;->mPreferences:Landroid/content/SharedPreferences;

    invoke-interface {p1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object p1

    invoke-virtual {p0}, Lcom/oplus/camera/capmode/d;->getFilterEffectPrevSelectedKey()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0}, Lcom/oplus/camera/capmode/d;->getCurrFilterType()Ljava/lang/String;

    move-result-object v2

    invoke-interface {p1, v1, v2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object p1

    invoke-interface {p1}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 856
    :cond_9
    iget-object p0, p0, Lcom/oplus/camera/capmode/d;->mCameraUIInterface:Lcom/oplus/camera/ui/CameraUIInterface;

    invoke-interface {p0, v0}, Lcom/oplus/camera/ui/CameraUIInterface;->l(Z)V

    return-void
.end method

.method protected onDestroy()V
    .locals 4

    const-string v0, "CommonCapMode"

    const-string v1, "onDestroy"

    .line 1908
    invoke-static {v0, v1}, Lcom/oplus/camera/e;->a(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x0

    .line 1910
    iput-object v0, p0, Lcom/oplus/camera/capmode/d;->mMemoryManager:Lcom/oplus/camera/capmode/d$a;

    .line 1912
    iget-object v1, p0, Lcom/oplus/camera/capmode/d;->mMsgData:Lcom/oplus/camera/statistics/model/ReminderMsgData;

    if-eqz v1, :cond_0

    .line 1913
    invoke-virtual {v1}, Lcom/oplus/camera/statistics/model/ReminderMsgData;->destroy()V

    :cond_0
    const-string v1, "key_bubble_type_add_beuty3d"

    .line 1916
    invoke-virtual {p0, v1}, Lcom/oplus/camera/capmode/d;->isBubbleOpen(Ljava/lang/String;)Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_1

    .line 1917
    iget-object v1, p0, Lcom/oplus/camera/capmode/d;->mCameraUIInterface:Lcom/oplus/camera/ui/CameraUIInterface;

    const/4 v3, 0x6

    invoke-interface {v1, v3, v2}, Lcom/oplus/camera/ui/CameraUIInterface;->f(IZ)V

    :cond_1
    const-string v1, "key_bubble_type_custom_beuty3d"

    .line 1920
    invoke-virtual {p0, v1}, Lcom/oplus/camera/capmode/d;->isBubbleOpen(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 1921
    iget-object v1, p0, Lcom/oplus/camera/capmode/d;->mCameraUIInterface:Lcom/oplus/camera/ui/CameraUIInterface;

    const/4 v3, 0x5

    invoke-interface {v1, v3, v2}, Lcom/oplus/camera/ui/CameraUIInterface;->f(IZ)V

    .line 1924
    :cond_2
    iget-object v1, p0, Lcom/oplus/camera/capmode/d;->mBeauty3DManager:Lcom/oplus/camera/d/b;

    if-eqz v1, :cond_3

    .line 1925
    invoke-virtual {v1}, Lcom/oplus/camera/d/b;->r()V

    .line 1926
    iput-object v0, p0, Lcom/oplus/camera/capmode/d;->mBeauty3DManager:Lcom/oplus/camera/d/b;

    .line 1929
    :cond_3
    invoke-virtual {p0}, Lcom/oplus/camera/capmode/d;->resetMonoFilter()V

    return-void
.end method

.method protected onDisableBurstShot()V
    .locals 5

    const-string v0, "CommonCapMode"

    const-string v1, "onDisableBurstShot"

    .line 3080
    invoke-static {v0, v1}, Lcom/oplus/camera/e;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 3082
    iget-boolean v1, p0, Lcom/oplus/camera/capmode/d;->mbBurstShot:Z

    if-nez v1, :cond_0

    return-void

    .line 3086
    :cond_0
    iget v1, p0, Lcom/oplus/camera/capmode/d;->mReceivedSnapNum:I

    if-lez v1, :cond_1

    .line 3087
    iget-object v1, p0, Lcom/oplus/camera/capmode/d;->mCameraInterface:Lcom/oplus/camera/capmode/a;

    const/4 v2, 0x2

    invoke-interface {v1, v2}, Lcom/oplus/camera/capmode/a;->c(I)V

    :cond_1
    const/4 v1, 0x0

    .line 3090
    iput-boolean v1, p0, Lcom/oplus/camera/capmode/d;->mbBurstShot:Z

    .line 3091
    iput-boolean v1, p0, Lcom/oplus/camera/capmode/d;->mbInCapturing:Z

    .line 3092
    iget-object v2, p0, Lcom/oplus/camera/capmode/d;->mCameraInterface:Lcom/oplus/camera/capmode/a;

    invoke-interface {v2, v1}, Lcom/oplus/camera/capmode/a;->a(Z)V

    .line 3093
    iget-object v2, p0, Lcom/oplus/camera/capmode/d;->mCameraInterface:Lcom/oplus/camera/capmode/a;

    iget v3, p0, Lcom/oplus/camera/capmode/d;->mReceivedSnapNum:I

    invoke-interface {v2, v3}, Lcom/oplus/camera/capmode/a;->f(I)V

    const-string v2, "onDisableBurstShot, CameraTest Continuous Shot End"

    .line 3095
    invoke-static {v0, v2}, Lcom/oplus/camera/e;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 3097
    iget-object v0, p0, Lcom/oplus/camera/capmode/d;->mMyHandler:Landroid/os/Handler;

    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Landroid/os/Handler;->removeMessages(I)V

    .line 3099
    iget v0, p0, Lcom/oplus/camera/capmode/d;->mReceivedSnapNum:I

    if-lez v0, :cond_3

    .line 3100
    iget-boolean v0, p0, Lcom/oplus/camera/capmode/d;->mbPaused:Z

    if-nez v0, :cond_2

    .line 3101
    iget-object v0, p0, Lcom/oplus/camera/capmode/d;->mCameraUIInterface:Lcom/oplus/camera/ui/CameraUIInterface;

    invoke-interface {v0}, Lcom/oplus/camera/ui/CameraUIInterface;->as()V

    .line 3104
    :cond_2
    iget-object v0, p0, Lcom/oplus/camera/capmode/d;->mMyHandler:Landroid/os/Handler;

    const-wide/16 v3, 0x1f4

    invoke-virtual {v0, v2, v3, v4}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 3105
    iget-object v0, p0, Lcom/oplus/camera/capmode/d;->mCameraInterface:Lcom/oplus/camera/capmode/a;

    invoke-interface {v0}, Lcom/oplus/camera/capmode/a;->B()V

    goto :goto_0

    .line 3107
    :cond_3
    iget-object v0, p0, Lcom/oplus/camera/capmode/d;->mCameraUIInterface:Lcom/oplus/camera/ui/CameraUIInterface;

    invoke-interface {v0, v1, v1}, Lcom/oplus/camera/ui/CameraUIInterface;->e(ZZ)V

    const-string v0, "pref_expand_popbar_key"

    .line 3109
    invoke-virtual {p0, v0}, Lcom/oplus/camera/capmode/d;->getSupportFunction(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_4

    .line 3110
    iget-object v0, p0, Lcom/oplus/camera/capmode/d;->mCameraInterface:Lcom/oplus/camera/capmode/a;

    invoke-interface {v0, v2, v1}, Lcom/oplus/camera/capmode/a;->a(ZZ)V

    :cond_4
    const-string v0, "pref_filter_menu"

    .line 3113
    invoke-virtual {p0, v0}, Lcom/oplus/camera/capmode/d;->getSupportFunction(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 3114
    iget-object v0, p0, Lcom/oplus/camera/capmode/d;->mCameraUIInterface:Lcom/oplus/camera/ui/CameraUIInterface;

    invoke-interface {v0, v2}, Lcom/oplus/camera/ui/CameraUIInterface;->c(Z)V

    :cond_5
    const-string v0, "func_face_beauty_process"

    .line 3117
    invoke-virtual {p0, v0}, Lcom/oplus/camera/capmode/d;->getSupportFunction(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_6

    .line 3118
    iget-object v0, p0, Lcom/oplus/camera/capmode/d;->mCameraUIInterface:Lcom/oplus/camera/ui/CameraUIInterface;

    invoke-interface {v0, v2}, Lcom/oplus/camera/ui/CameraUIInterface;->c(Z)V

    .line 3121
    :cond_6
    invoke-virtual {p0}, Lcom/oplus/camera/capmode/d;->displayScreenHintIconInSwitchOn()V

    .line 3124
    :goto_0
    invoke-direct {p0}, Lcom/oplus/camera/capmode/d;->resetPIModeAfterCapture()V

    .line 3126
    iget-object v0, p0, Lcom/oplus/camera/capmode/d;->mCameraUIInterface:Lcom/oplus/camera/ui/CameraUIInterface;

    invoke-interface {v0}, Lcom/oplus/camera/ui/CameraUIInterface;->R()Z

    move-result v0

    if-nez v0, :cond_7

    .line 3127
    iget-object v0, p0, Lcom/oplus/camera/capmode/d;->mCameraUIInterface:Lcom/oplus/camera/ui/CameraUIInterface;

    invoke-interface {v0, v2, v1}, Lcom/oplus/camera/ui/CameraUIInterface;->a(ZZ)V

    .line 3128
    iget-object v0, p0, Lcom/oplus/camera/capmode/d;->mCameraUIInterface:Lcom/oplus/camera/ui/CameraUIInterface;

    invoke-interface {v0, v2, v1}, Lcom/oplus/camera/ui/CameraUIInterface;->b(ZZ)V

    .line 3129
    iget-object v0, p0, Lcom/oplus/camera/capmode/d;->mCameraUIInterface:Lcom/oplus/camera/ui/CameraUIInterface;

    invoke-interface {v0, v2, v1}, Lcom/oplus/camera/ui/CameraUIInterface;->c(ZZ)V

    .line 3130
    iget-object v0, p0, Lcom/oplus/camera/capmode/d;->mCameraUIInterface:Lcom/oplus/camera/ui/CameraUIInterface;

    invoke-interface {v0, v2, v1}, Lcom/oplus/camera/ui/CameraUIInterface;->f(ZZ)V

    .line 3133
    :cond_7
    invoke-virtual {p0}, Lcom/oplus/camera/capmode/d;->isGoogleLensEnable()Z

    move-result v0

    if-eqz v0, :cond_8

    .line 3134
    invoke-direct {p0, v2}, Lcom/oplus/camera/capmode/d;->setGoogleLensIconClickable(Z)V

    :cond_8
    return-void
.end method

.method public onEffectItemClick(I)Z
    .locals 1

    .line 512
    invoke-virtual {p0, p1}, Lcom/oplus/camera/capmode/d;->getBeauty3DScanIconType(I)I

    move-result p1

    const/4 v0, 0x1

    if-ne v0, p1, :cond_0

    iget-object p0, p0, Lcom/oplus/camera/capmode/d;->mBeauty3DManager:Lcom/oplus/camera/d/b;

    if-eqz p0, :cond_0

    .line 513
    invoke-virtual {p0}, Lcom/oplus/camera/d/b;->k()V

    return v0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public onEffectMenuPopDown(Z)V
    .locals 2

    const-string p1, "key_bubble_type_add_beuty3d"

    .line 3470
    invoke-virtual {p0, p1}, Lcom/oplus/camera/capmode/d;->isBubbleOpen(Ljava/lang/String;)Z

    move-result p1

    const/4 v0, 0x1

    if-eqz p1, :cond_0

    .line 3471
    iget-object p1, p0, Lcom/oplus/camera/capmode/d;->mCameraUIInterface:Lcom/oplus/camera/ui/CameraUIInterface;

    const/4 v1, 0x6

    invoke-interface {p1, v1, v0}, Lcom/oplus/camera/ui/CameraUIInterface;->f(IZ)V

    :cond_0
    const-string p1, "key_bubble_type_custom_beuty3d"

    .line 3474
    invoke-virtual {p0, p1}, Lcom/oplus/camera/capmode/d;->isBubbleOpen(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_1

    .line 3475
    iget-object p1, p0, Lcom/oplus/camera/capmode/d;->mCameraUIInterface:Lcom/oplus/camera/ui/CameraUIInterface;

    const/4 v1, 0x5

    invoke-interface {p1, v1, v0}, Lcom/oplus/camera/ui/CameraUIInterface;->f(IZ)V

    .line 3478
    :cond_1
    iget-object p1, p0, Lcom/oplus/camera/capmode/d;->mBeauty3DManager:Lcom/oplus/camera/d/b;

    if-eqz p1, :cond_2

    .line 3479
    invoke-virtual {p1}, Lcom/oplus/camera/d/b;->q()V

    .line 3482
    :cond_2
    invoke-virtual {p0}, Lcom/oplus/camera/capmode/d;->isGoogleLensEnable()Z

    move-result p1

    if-eqz p1, :cond_3

    .line 3483
    invoke-virtual {p0, v0}, Lcom/oplus/camera/capmode/d;->showGoogleLensIcon(Z)V

    :cond_3
    const-string p1, "com.oplus.feature.facebeauty.previewsize.support"

    .line 3486
    invoke-static {p1}, Lcom/oplus/camera/aps/config/CameraConfig;->getConfigBooleanValue(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_4

    .line 3487
    invoke-static {}, Lcom/oplus/camera/e/a;->j()I

    move-result p1

    iget v0, p0, Lcom/oplus/camera/capmode/d;->mCameraId:I

    invoke-virtual {p0, v0}, Lcom/oplus/camera/capmode/d;->getProperCameraId(I)I

    move-result v0

    if-eq p1, v0, :cond_4

    iget-boolean p1, p0, Lcom/oplus/camera/capmode/d;->mbFrontCamera:Z

    if-nez p1, :cond_4

    .line 3489
    invoke-virtual {p0}, Lcom/oplus/camera/capmode/d;->getFaceBeautyCurrIndex()I

    move-result p1

    if-nez p1, :cond_4

    iget-boolean p1, p0, Lcom/oplus/camera/capmode/d;->mbPreburstShotCapture:Z

    if-nez p1, :cond_4

    .line 3491
    iget-object p1, p0, Lcom/oplus/camera/capmode/d;->mCameraInterface:Lcom/oplus/camera/capmode/a;

    iget-object p0, p0, Lcom/oplus/camera/capmode/d;->mLastPreviewSize:Landroid/util/Size;

    invoke-interface {p1, p0}, Lcom/oplus/camera/capmode/a;->b(Landroid/util/Size;)V

    :cond_4
    return-void
.end method

.method public onEffectMenuPopUp()V
    .locals 6

    const-string v0, "key_bubble_type_custom_beuty3d"

    .line 3388
    invoke-virtual {p0, v0}, Lcom/oplus/camera/capmode/d;->isBubbleOpen(Ljava/lang/String;)Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    .line 3389
    iget-object v0, p0, Lcom/oplus/camera/capmode/d;->mCameraUIInterface:Lcom/oplus/camera/ui/CameraUIInterface;

    const/4 v2, 0x5

    invoke-interface {v0, v2, v1}, Lcom/oplus/camera/ui/CameraUIInterface;->f(IZ)V

    :cond_0
    const-string v0, "key_bubble_type_add_beuty3d"

    .line 3392
    invoke-virtual {p0, v0}, Lcom/oplus/camera/capmode/d;->isBubbleOpen(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/oplus/camera/capmode/d;->mActivity:Landroid/app/Activity;

    .line 3393
    invoke-static {v0}, Lcom/oplus/camera/ui/preview/a/o;->a(Landroid/content/Context;)I

    move-result v0

    if-nez v0, :cond_1

    .line 3394
    invoke-virtual {p0}, Lcom/oplus/camera/capmode/d;->isShowBeauty3D()Z

    move-result v0

    if-nez v0, :cond_1

    const-string v0, "key_beauty3d"

    .line 3395
    invoke-virtual {p0, v0}, Lcom/oplus/camera/capmode/d;->getSupportFunction(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 3396
    invoke-virtual {p0}, Lcom/oplus/camera/capmode/d;->getCurrEffectMenuName()Ljava/lang/String;

    move-result-object v0

    const-string v2, "beauty"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 v0, 0x6

    .line 3398
    iget-object v2, p0, Lcom/oplus/camera/capmode/d;->mCameraUIInterface:Lcom/oplus/camera/ui/CameraUIInterface;

    const/4 v3, 0x0

    invoke-virtual {p0, v0}, Lcom/oplus/camera/capmode/d;->getBubbleOffsetX(I)I

    move-result v4

    invoke-virtual {p0, v0}, Lcom/oplus/camera/capmode/d;->getBubbleOffsetY(I)I

    move-result v5

    invoke-interface {v2, v3, v0, v4, v5}, Lcom/oplus/camera/ui/CameraUIInterface;->a(Landroid/view/View;III)V

    .line 3401
    :cond_1
    iget-object v0, p0, Lcom/oplus/camera/capmode/d;->mBeauty3DManager:Lcom/oplus/camera/d/b;

    if-eqz v0, :cond_3

    .line 3402
    invoke-virtual {p0}, Lcom/oplus/camera/capmode/d;->isShowBeauty3DEditChooseMenu()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 3403
    iget-object v0, p0, Lcom/oplus/camera/capmode/d;->mBeauty3DManager:Lcom/oplus/camera/d/b;

    invoke-virtual {v0, v1}, Lcom/oplus/camera/d/b;->e(Z)V

    .line 3404
    iget-object v0, p0, Lcom/oplus/camera/capmode/d;->mBeauty3DManager:Lcom/oplus/camera/d/b;

    invoke-virtual {v0}, Lcom/oplus/camera/d/b;->p()V

    goto :goto_0

    .line 3406
    :cond_2
    iget-object v0, p0, Lcom/oplus/camera/capmode/d;->mBeauty3DManager:Lcom/oplus/camera/d/b;

    invoke-virtual {v0}, Lcom/oplus/camera/d/b;->q()V

    .line 3410
    :cond_3
    :goto_0
    iput-boolean v1, p0, Lcom/oplus/camera/capmode/d;->mbFirstEffectMenuOpened:Z

    .line 3412
    invoke-virtual {p0}, Lcom/oplus/camera/capmode/d;->isGoogleLensEnable()Z

    move-result v0

    if-eqz v0, :cond_4

    const/4 v0, 0x0

    .line 3413
    invoke-virtual {p0, v0}, Lcom/oplus/camera/capmode/d;->hideGoogleLensIcon(Z)V

    :cond_4
    return-void
.end method

.method public onFaceBeautyItemChange(I)V
    .locals 3

    .line 4570
    iget-boolean v0, p0, Lcom/oplus/camera/capmode/d;->mbPaused:Z

    if-eqz v0, :cond_0

    .line 4571
    invoke-virtual {p0, p1}, Lcom/oplus/camera/capmode/d;->updateFaceBeautyValue(I)Z

    return-void

    :cond_0
    const-string v0, "com.oplus.feature.facebeauty.previewsize.support"

    .line 4576
    invoke-static {v0}, Lcom/oplus/camera/aps/config/CameraConfig;->getConfigBooleanValue(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_4

    iget-boolean v0, p0, Lcom/oplus/camera/capmode/d;->mbFrontCamera:Z

    if-eqz v0, :cond_4

    iget-boolean v0, p0, Lcom/oplus/camera/capmode/d;->mbPreburstShotCapture:Z

    if-eqz v0, :cond_1

    goto :goto_1

    .line 4584
    :cond_1
    invoke-virtual {p0}, Lcom/oplus/camera/capmode/d;->getFaceBeautyCurrIndex()I

    move-result v0

    .line 4586
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onFaceBeautyItemChange, level: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", currentLevel: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "CommonCapMode"

    invoke-static {v2, v1}, Lcom/oplus/camera/e;->a(Ljava/lang/String;Ljava/lang/String;)V

    if-eq v0, p1, :cond_3

    if-eqz p1, :cond_2

    .line 4590
    invoke-direct {p0}, Lcom/oplus/camera/capmode/d;->getFaceBeautyPreviewSize()Landroid/util/Size;

    move-result-object v0

    iput-object v0, p0, Lcom/oplus/camera/capmode/d;->mChangePreviewSize:Landroid/util/Size;

    .line 4592
    iget-object v0, p0, Lcom/oplus/camera/capmode/d;->mChangePreviewSize:Landroid/util/Size;

    if-eqz v0, :cond_3

    .line 4593
    iget-object v0, p0, Lcom/oplus/camera/capmode/d;->mCameraInterface:Lcom/oplus/camera/capmode/a;

    iget-object v1, p0, Lcom/oplus/camera/capmode/d;->mChangePreviewSize:Landroid/util/Size;

    invoke-interface {v0, v1}, Lcom/oplus/camera/capmode/a;->b(Landroid/util/Size;)V

    goto :goto_0

    .line 4596
    :cond_2
    iget-object v0, p0, Lcom/oplus/camera/capmode/d;->mCameraInterface:Lcom/oplus/camera/capmode/a;

    iget-object v1, p0, Lcom/oplus/camera/capmode/d;->mLastPreviewSize:Landroid/util/Size;

    invoke-interface {v0, v1}, Lcom/oplus/camera/capmode/a;->b(Landroid/util/Size;)V

    .line 4600
    :cond_3
    :goto_0
    invoke-super {p0, p1}, Lcom/oplus/camera/capmode/BaseMode;->onFaceBeautyItemChange(I)V

    return-void

    .line 4579
    :cond_4
    :goto_1
    invoke-super {p0, p1}, Lcom/oplus/camera/capmode/BaseMode;->onFaceBeautyItemChange(I)V

    return-void
.end method

.method public onFaceBeautyMenuClick()Z
    .locals 3

    const-string v0, "com.oplus.feature.facebeauty.previewsize.support"

    .line 4639
    invoke-static {v0}, Lcom/oplus/camera/aps/config/CameraConfig;->getConfigBooleanValue(Ljava/lang/String;)Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_1

    .line 4640
    invoke-static {}, Lcom/oplus/camera/e/a;->j()I

    move-result v0

    iget v2, p0, Lcom/oplus/camera/capmode/d;->mCameraId:I

    invoke-virtual {p0, v2}, Lcom/oplus/camera/capmode/d;->getProperCameraId(I)I

    move-result v2

    if-eq v0, v2, :cond_1

    iget-boolean v0, p0, Lcom/oplus/camera/capmode/d;->mbFrontCamera:Z

    if-nez v0, :cond_1

    iget-boolean v0, p0, Lcom/oplus/camera/capmode/d;->mbPreburstShotCapture:Z

    if-eqz v0, :cond_0

    goto :goto_0

    .line 4646
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onFaceBeautyMenuClick, isFaceBeautyMenuOpen: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/oplus/camera/capmode/d;->mCameraUIInterface:Lcom/oplus/camera/ui/CameraUIInterface;

    invoke-interface {v2}, Lcom/oplus/camera/ui/CameraUIInterface;->K()Z

    move-result v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v2, "CommonCapMode"

    invoke-static {v2, v0}, Lcom/oplus/camera/e;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 4648
    iget-object v0, p0, Lcom/oplus/camera/capmode/d;->mCameraUIInterface:Lcom/oplus/camera/ui/CameraUIInterface;

    invoke-interface {v0}, Lcom/oplus/camera/ui/CameraUIInterface;->K()Z

    move-result v0

    if-nez v0, :cond_1

    .line 4649
    invoke-direct {p0}, Lcom/oplus/camera/capmode/d;->getFaceBeautyPreviewSize()Landroid/util/Size;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 4652
    iget-object p0, p0, Lcom/oplus/camera/capmode/d;->mCameraInterface:Lcom/oplus/camera/capmode/a;

    invoke-interface {p0, v0}, Lcom/oplus/camera/capmode/a;->b(Landroid/util/Size;)V

    :cond_1
    :goto_0
    return v1
.end method

.method public onFilterItemChange(I)V
    .locals 4

    .line 2028
    invoke-virtual {p0}, Lcom/oplus/camera/capmode/d;->isPIModeOpen()Z

    move-result v0

    if-eqz v0, :cond_0

    sget v0, Lcom/oplus/camera/ui/preview/a/j;->a:I

    if-eq p1, v0, :cond_0

    .line 2029
    invoke-virtual {p0}, Lcom/oplus/camera/capmode/d;->forceClosePIEffect()V

    .line 2032
    :cond_0
    invoke-super {p0}, Lcom/oplus/camera/capmode/BaseMode;->getCurrFilterIndex()I

    move-result v0

    .line 2034
    iget-boolean v1, p0, Lcom/oplus/camera/capmode/d;->mbFrontCamera:Z

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-nez v1, :cond_2

    invoke-virtual {p0, v0}, Lcom/oplus/camera/capmode/d;->isMonoIndex(I)Z

    move-result v1

    if-nez v1, :cond_1

    invoke-virtual {p0, p1}, Lcom/oplus/camera/capmode/d;->isMonoIndex(I)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 2035
    :cond_1
    iput-boolean v3, p0, Lcom/oplus/camera/capmode/d;->mbShowBlurAnim:Z

    goto :goto_0

    .line 2037
    :cond_2
    iput-boolean v2, p0, Lcom/oplus/camera/capmode/d;->mbShowBlurAnim:Z

    .line 2040
    :goto_0
    invoke-virtual {p0}, Lcom/oplus/camera/capmode/d;->isHighPictureSize()Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-virtual {p0, p1}, Lcom/oplus/camera/capmode/d;->isMonoIndex(I)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 2041
    invoke-direct {p0}, Lcom/oplus/camera/capmode/d;->forceCloseHighResolution()V

    .line 2044
    :cond_3
    invoke-virtual {p0}, Lcom/oplus/camera/capmode/d;->getCurFilterListType()I

    move-result v1

    if-ne v3, v1, :cond_4

    .line 2045
    invoke-virtual {p0, p1}, Lcom/oplus/camera/capmode/d;->getFilterType(I)Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/oplus/camera/capmode/d;->updateFujiFilterHint(Ljava/lang/String;)V

    .line 2048
    :cond_4
    iget-boolean v1, p0, Lcom/oplus/camera/capmode/d;->mbFrontCamera:Z

    if-nez v1, :cond_8

    if-eq v0, p1, :cond_8

    .line 2049
    iget-boolean v0, p0, Lcom/oplus/camera/capmode/d;->mbShowBlurAnim:Z

    if-eqz v0, :cond_7

    const-string v0, "com.oplus.mono.id.include.in.sat"

    .line 2050
    invoke-static {v0}, Lcom/oplus/camera/aps/config/CameraConfig;->getConfigBooleanValue(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_5

    .line 2051
    iget-object v0, p0, Lcom/oplus/camera/capmode/d;->mCameraInterface:Lcom/oplus/camera/capmode/a;

    invoke-interface {v0}, Lcom/oplus/camera/capmode/a;->X()V

    goto :goto_1

    .line 2052
    :cond_5
    iget-boolean v0, p0, Lcom/oplus/camera/capmode/d;->mbInBurstShotCapturing:Z

    if-nez v0, :cond_6

    iget-boolean v0, p0, Lcom/oplus/camera/capmode/d;->mbBurstShot:Z

    if-nez v0, :cond_6

    iget-boolean v0, p0, Lcom/oplus/camera/capmode/d;->mbHighResolutionChangeRatio:Z

    if-nez v0, :cond_6

    .line 2053
    iget-object v0, p0, Lcom/oplus/camera/capmode/d;->mCameraInterface:Lcom/oplus/camera/capmode/a;

    invoke-virtual {p0, p1}, Lcom/oplus/camera/capmode/d;->isMonoIndex(I)Z

    move-result v1

    invoke-interface {v0, v1}, Lcom/oplus/camera/capmode/a;->g(Z)V

    .line 2056
    :cond_6
    :goto_1
    iget-object v0, p0, Lcom/oplus/camera/capmode/d;->mCameraUIInterface:Lcom/oplus/camera/ui/CameraUIInterface;

    invoke-interface {v0, v3, v2, v3}, Lcom/oplus/camera/ui/CameraUIInterface;->a(ZZZ)V

    .line 2059
    :cond_7
    iput p1, p0, Lcom/oplus/camera/capmode/d;->mNowRearEffectIndex:I

    .line 2062
    :cond_8
    invoke-super {p0, p1}, Lcom/oplus/camera/capmode/BaseMode;->onFilterItemChange(I)V

    return-void
.end method

.method protected onFilterListTypeChanged(I)V
    .locals 2

    .line 2111
    iget-object v0, p0, Lcom/oplus/camera/capmode/d;->mPreferences:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "key_filter_list_type"

    invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    move-result-object p1

    invoke-interface {p1}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 2113
    sget p1, Lcom/oplus/camera/ui/preview/a/j;->a:I

    invoke-virtual {p0, p1}, Lcom/oplus/camera/capmode/d;->onFilterItemChange(I)V

    return-void
.end method

.method public onGetBeforeCaptureMsgCommonData(Lcom/oplus/camera/statistics/model/DcsMsgData;)Lcom/oplus/camera/statistics/model/DcsMsgData;
    .locals 2

    const/4 v0, 0x0

    if-eqz p1, :cond_0

    .line 1018
    instance-of v1, p1, Lcom/oplus/camera/statistics/model/CaptureMsgData;

    if-eqz v1, :cond_0

    .line 1019
    move-object v1, p1

    check-cast v1, Lcom/oplus/camera/statistics/model/CaptureMsgData;

    goto :goto_0

    :cond_0
    move-object v1, v0

    :goto_0
    if-nez v1, :cond_1

    return-object v0

    :cond_1
    const-string v0, "pref_support_night_process"

    .line 1026
    invoke-virtual {p0, v0}, Lcom/oplus/camera/capmode/d;->getSupportFunction(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-virtual {p0}, Lcom/oplus/camera/capmode/d;->isAISceneOpen()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 1027
    invoke-virtual {p0}, Lcom/oplus/camera/capmode/d;->getNightStateDecision()I

    move-result v0

    iput v0, v1, Lcom/oplus/camera/statistics/model/CaptureMsgData;->mNightState:I

    :cond_2
    const-string v0, "com.oplus.feature.auto.micro"

    .line 1030
    invoke-static {v0}, Lcom/oplus/camera/aps/config/CameraConfig;->getConfigBooleanValue(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 1031
    iget-boolean v0, p0, Lcom/oplus/camera/capmode/d;->mbAutoMicroOpen:Z

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v1, Lcom/oplus/camera/statistics/model/CaptureMsgData;->mIsMacro:Ljava/lang/String;

    .line 1034
    :cond_3
    iget-boolean v0, p0, Lcom/oplus/camera/capmode/d;->mbFrontCamera:Z

    if-eqz v0, :cond_5

    .line 1035
    sget-boolean v0, Lcom/oplus/camera/capmode/d;->sHighBrightness:Z

    if-eqz v0, :cond_4

    const-string v0, "on"

    goto :goto_1

    :cond_4
    const-string v0, "off"

    :goto_1
    iput-object v0, v1, Lcom/oplus/camera/statistics/model/CaptureMsgData;->mScreenHighLight:Ljava/lang/String;

    .line 1038
    :cond_5
    invoke-super {p0, p1}, Lcom/oplus/camera/capmode/BaseMode;->onGetBeforeCaptureMsgCommonData(Lcom/oplus/camera/statistics/model/DcsMsgData;)Lcom/oplus/camera/statistics/model/DcsMsgData;

    return-object p1
.end method

.method public onGetNearMeOnClickData()V
    .locals 3

    .line 1000
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 1002
    iget v1, p0, Lcom/oplus/camera/capmode/d;->mNightClosedCounter:I

    if-lez v1, :cond_0

    .line 1004
    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    const-string v2, "close_night_num"

    .line 1003
    invoke-static {v2, v1}, Lcom/oplus/camera/statistics/CameraStatisticsUtil;->format(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    .line 1005
    iput v2, p0, Lcom/oplus/camera/capmode/d;->mNightClosedCounter:I

    .line 1006
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1009
    :cond_0
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    move-result v1

    if-lez v1, :cond_1

    .line 1010
    iget-object p0, p0, Lcom/oplus/camera/capmode/d;->mActivity:Landroid/app/Activity;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "menuClick"

    invoke-static {p0, v1, v0}, Lcom/oplus/camera/statistics/CameraStatisticsUtil;->onCommon(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    :cond_1
    return-void
.end method

.method public onHomeKeyClick()V
    .locals 0

    .line 4069
    invoke-virtual {p0}, Lcom/oplus/camera/capmode/d;->resetMonoFilter()V

    return-void
.end method

.method protected onInitCameraMode()V
    .locals 4

    const-string v0, "CommonCapMode"

    const-string v1, "onInitCameraMode"

    .line 212
    invoke-static {v0, v1}, Lcom/oplus/camera/e;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 214
    iget-object v0, p0, Lcom/oplus/camera/capmode/d;->mMemoryManager:Lcom/oplus/camera/capmode/d$a;

    if-eqz v0, :cond_0

    .line 215
    invoke-virtual {v0}, Lcom/oplus/camera/capmode/d$a;->a()V

    .line 218
    :cond_0
    iget-object v0, p0, Lcom/oplus/camera/capmode/d;->mNightCountDownUI:Lcom/oplus/camera/ui/p;

    if-nez v0, :cond_1

    .line 219
    new-instance v0, Lcom/oplus/camera/ui/p;

    iget-object v1, p0, Lcom/oplus/camera/capmode/d;->mCameraUIInterface:Lcom/oplus/camera/ui/CameraUIInterface;

    new-instance v2, Lcom/oplus/camera/capmode/d$1;

    invoke-direct {v2, p0}, Lcom/oplus/camera/capmode/d$1;-><init>(Lcom/oplus/camera/capmode/d;)V

    invoke-direct {v0, v1, v2}, Lcom/oplus/camera/ui/p;-><init>(Lcom/oplus/camera/ui/CameraUIInterface;Lcom/oplus/camera/ui/h$a;)V

    iput-object v0, p0, Lcom/oplus/camera/capmode/d;->mNightCountDownUI:Lcom/oplus/camera/ui/p;

    .line 236
    :cond_1
    iget-object v0, p0, Lcom/oplus/camera/capmode/d;->mMyHandler:Landroid/os/Handler;

    if-nez v0, :cond_2

    .line 237
    new-instance v0, Lcom/oplus/camera/capmode/d$10;

    invoke-direct {v0, p0}, Lcom/oplus/camera/capmode/d$10;-><init>(Lcom/oplus/camera/capmode/d;)V

    iput-object v0, p0, Lcom/oplus/camera/capmode/d;->mMyHandler:Landroid/os/Handler;

    :cond_2
    const/4 v0, 0x1

    .line 302
    iput-boolean v0, p0, Lcom/oplus/camera/capmode/d;->mbSupportNightPictureTime:Z

    .line 303
    iget-object v1, p0, Lcom/oplus/camera/capmode/d;->mCameraUIInterface:Lcom/oplus/camera/ui/CameraUIInterface;

    iget-object v2, p0, Lcom/oplus/camera/capmode/d;->mActivity:Landroid/app/Activity;

    const v3, 0x7f1000fd

    invoke-virtual {v2, v3}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Lcom/oplus/camera/ui/CameraUIInterface;->c(Ljava/lang/String;)V

    .line 304
    invoke-direct {p0}, Lcom/oplus/camera/capmode/d;->initBeauty3DManager()V

    const/4 v1, 0x0

    .line 305
    invoke-virtual {p0, v1}, Lcom/oplus/camera/capmode/d;->setBurstShotCapturing(Z)V

    .line 306
    iput v1, p0, Lcom/oplus/camera/capmode/d;->mReceivedPreviewResultNum:I

    .line 307
    iput-boolean v0, p0, Lcom/oplus/camera/capmode/d;->mGoogleLensShouldShow:Z

    const-string v2, "com.oplus.ultra.wide.high.picturesize"

    .line 309
    invoke-static {v2}, Lcom/oplus/camera/aps/config/CameraConfig;->getConfigBooleanValue(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_3

    iget-object v2, p0, Lcom/oplus/camera/capmode/d;->mPreferences:Landroid/content/SharedPreferences;

    const-string v3, "pref_ultra_wide_high_picture_size_key"

    .line 310
    invoke-interface {v2, v3}, Landroid/content/SharedPreferences;->contains(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 311
    iput-boolean v0, p0, Lcom/oplus/camera/capmode/d;->mbForbidPreferenceChange:Z

    .line 312
    iget-object v0, p0, Lcom/oplus/camera/capmode/d;->mPreferences:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v2, "off"

    invoke-interface {v0, v3, v2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 313
    iput-boolean v1, p0, Lcom/oplus/camera/capmode/d;->mbForbidPreferenceChange:Z

    :cond_3
    const-string v0, "key_photo_mode_filter"

    .line 316
    invoke-virtual {p0, v0}, Lcom/oplus/camera/capmode/d;->getSupportFunction(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 317
    invoke-static {}, Lcom/oplus/camera/ui/preview/a/j;->c()V

    .line 320
    :cond_4
    invoke-direct {p0}, Lcom/oplus/camera/capmode/d;->updateNowRearEffectIndex()V

    return-void
.end method

.method public onMoreModeHidden(I)V
    .locals 2

    .line 4202
    invoke-super {p0, p1}, Lcom/oplus/camera/capmode/BaseMode;->onMoreModeHidden(I)V

    .line 4204
    invoke-virtual {p0}, Lcom/oplus/camera/capmode/d;->isGoogleLensEnable()Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    .line 4205
    invoke-virtual {p0, v1}, Lcom/oplus/camera/capmode/d;->showGoogleLensIcon(Z)V

    :cond_0
    if-eq v1, p1, :cond_1

    const/4 v0, 0x2

    if-eq v0, p1, :cond_1

    .line 4210
    invoke-virtual {p0}, Lcom/oplus/camera/capmode/d;->showNextTip()V

    :cond_1
    return-void
.end method

.method public onMoreModeShown()V
    .locals 2

    .line 4191
    invoke-virtual {p0}, Lcom/oplus/camera/capmode/d;->isGoogleLensEnable()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 4192
    invoke-virtual {p0, v1}, Lcom/oplus/camera/capmode/d;->hideGoogleLensIcon(Z)V

    .line 4195
    :cond_0
    invoke-virtual {p0}, Lcom/oplus/camera/capmode/d;->isAISceneOpen()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 4196
    iget-object p0, p0, Lcom/oplus/camera/capmode/d;->mCameraUIInterface:Lcom/oplus/camera/ui/CameraUIInterface;

    invoke-interface {p0, v1}, Lcom/oplus/camera/ui/CameraUIInterface;->l(Z)V

    :cond_1
    return-void
.end method

.method public onPIChanged(ZZZZ)V
    .locals 15

    move-object v0, p0

    move/from16 v1, p1

    move/from16 v2, p2

    move/from16 v3, p3

    .line 1670
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "onPIChanged, isOpen: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v5, ", isBurstShot: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v5, ", isShowHint: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v5, ", isUpdateParam: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move/from16 v5, p4

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const-string v5, "CommonCapMode"

    invoke-static {v5, v4}, Lcom/oplus/camera/e;->a(Ljava/lang/String;Ljava/lang/String;)V

    if-nez v1, :cond_a

    const v1, 0x7f1002cc

    const-string v4, "com.oplus.feature.pi.ai.support"

    const/4 v5, 0x0

    const/4 v6, 0x1

    if-eqz v2, :cond_6

    if-eqz v3, :cond_3

    .line 1675
    iget-object v2, v0, Lcom/oplus/camera/capmode/d;->mCameraUIInterface:Lcom/oplus/camera/ui/CameraUIInterface;

    .line 1676
    invoke-interface {v2}, Lcom/oplus/camera/ui/CameraUIInterface;->k()Lcom/oplus/camera/ui/a/a;

    move-result-object v2

    const-string v3, "pref_camera_pi_ai_mode_key"

    invoke-virtual {v2, v3}, Lcom/oplus/camera/ui/a/a;->a(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_0

    iget-object v2, v0, Lcom/oplus/camera/capmode/d;->mCameraUIInterface:Lcom/oplus/camera/ui/CameraUIInterface;

    .line 1677
    invoke-interface {v2}, Lcom/oplus/camera/ui/CameraUIInterface;->k()Lcom/oplus/camera/ui/a/a;

    move-result-object v2

    const-string v3, "pref_camera_pi_mode_key"

    invoke-virtual {v2, v3}, Lcom/oplus/camera/ui/a/a;->a(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 1678
    :cond_0
    invoke-static {v4}, Lcom/oplus/camera/aps/config/CameraConfig;->getConfigBooleanValue(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1

    const v3, 0x7f1002c6

    goto :goto_0

    :cond_1
    const v3, 0x7f1002d0

    :goto_0
    move v8, v3

    .line 1680
    iget-object v3, v0, Lcom/oplus/camera/capmode/d;->mCameraUIInterface:Lcom/oplus/camera/ui/CameraUIInterface;

    if-eqz v2, :cond_2

    const v1, 0x7f1002c5

    :cond_2
    invoke-interface {v3, v1}, Lcom/oplus/camera/ui/CameraUIInterface;->a(I)V

    .line 1682
    iget-object v7, v0, Lcom/oplus/camera/capmode/d;->mCameraUIInterface:Lcom/oplus/camera/ui/CameraUIInterface;

    const/4 v9, -0x1

    const/4 v10, 0x1

    const/4 v11, 0x0

    const/4 v12, 0x0

    invoke-interface/range {v7 .. v12}, Lcom/oplus/camera/ui/CameraUIInterface;->a(IIZZZ)V

    .line 1685
    :cond_3
    sget v1, Lcom/oplus/camera/ui/preview/a/j;->a:I

    invoke-virtual {p0, v1}, Lcom/oplus/camera/capmode/d;->onFilterItemChange(I)V

    .line 1687
    iget-object v1, v0, Lcom/oplus/camera/capmode/d;->mCameraUIInterface:Lcom/oplus/camera/ui/CameraUIInterface;

    invoke-interface {v1}, Lcom/oplus/camera/ui/CameraUIInterface;->A()Z

    move-result v1

    if-eqz v1, :cond_4

    invoke-virtual {p0}, Lcom/oplus/camera/capmode/d;->getCurrEffectMenuName()Ljava/lang/String;

    move-result-object v1

    const-string v2, "filter"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 1688
    iget-object v1, v0, Lcom/oplus/camera/capmode/d;->mCameraUIInterface:Lcom/oplus/camera/ui/CameraUIInterface;

    invoke-interface {v1, v6}, Lcom/oplus/camera/ui/CameraUIInterface;->s(Z)V

    .line 1689
    iget-object v1, v0, Lcom/oplus/camera/capmode/d;->mCameraInterface:Lcom/oplus/camera/capmode/a;

    invoke-interface {v1, v6, v5}, Lcom/oplus/camera/capmode/a;->a(ZZ)V

    .line 1690
    iget-object v1, v0, Lcom/oplus/camera/capmode/d;->mCameraInterface:Lcom/oplus/camera/capmode/a;

    invoke-interface {v1, v6}, Lcom/oplus/camera/capmode/a;->d(Z)V

    goto :goto_1

    .line 1692
    :cond_4
    iget-object v1, v0, Lcom/oplus/camera/capmode/d;->mCameraUIInterface:Lcom/oplus/camera/ui/CameraUIInterface;

    const-string v2, "pref_filter_menu"

    invoke-interface {v1, v2}, Lcom/oplus/camera/ui/CameraUIInterface;->g(Ljava/lang/String;)V

    .line 1695
    :goto_1
    iget-object v1, v0, Lcom/oplus/camera/capmode/d;->mCameraUIInterface:Lcom/oplus/camera/ui/CameraUIInterface;

    invoke-interface {v1}, Lcom/oplus/camera/ui/CameraUIInterface;->K()Z

    move-result v1

    if-eqz v1, :cond_5

    .line 1696
    iget-object v1, v0, Lcom/oplus/camera/capmode/d;->mCameraUIInterface:Lcom/oplus/camera/ui/CameraUIInterface;

    invoke-interface {v1, v6, v6, v6, v6}, Lcom/oplus/camera/ui/CameraUIInterface;->a(ZZZZ)V

    .line 1699
    :cond_5
    iget-object v0, v0, Lcom/oplus/camera/capmode/d;->mCameraUIInterface:Lcom/oplus/camera/ui/CameraUIInterface;

    invoke-interface {v0, v6}, Lcom/oplus/camera/ui/CameraUIInterface;->r(Z)V

    goto :goto_2

    .line 1701
    :cond_6
    invoke-static {v4}, Lcom/oplus/camera/aps/config/CameraConfig;->getConfigBooleanValue(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_9

    .line 1702
    iput-boolean v5, v0, Lcom/oplus/camera/capmode/d;->mbSuperTextOpen:Z

    .line 1703
    iget-object v1, v0, Lcom/oplus/camera/capmode/d;->mCameraUIInterface:Lcom/oplus/camera/ui/CameraUIInterface;

    const/4 v2, 0x0

    invoke-interface {v1, v2}, Lcom/oplus/camera/ui/CameraUIInterface;->a(Lcom/oplus/camera/u/a;)V

    .line 1704
    iget-object v1, v0, Lcom/oplus/camera/capmode/d;->mCameraUIInterface:Lcom/oplus/camera/ui/CameraUIInterface;

    invoke-interface {v1, v6}, Lcom/oplus/camera/ui/CameraUIInterface;->l(Z)V

    const-string v1, "func_super_text_gpu_process"

    .line 1706
    invoke-virtual {p0, v1}, Lcom/oplus/camera/capmode/d;->getSupportFunction(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_7

    iget-object v1, v0, Lcom/oplus/camera/capmode/d;->mPreviewEffectProcess:Lcom/oplus/camera/ui/preview/a/t;

    if-eqz v1, :cond_7

    .line 1707
    iget-object v1, v0, Lcom/oplus/camera/capmode/d;->mPreviewEffectProcess:Lcom/oplus/camera/ui/preview/a/t;

    invoke-interface {v1, v5}, Lcom/oplus/camera/ui/preview/a/t;->k(Z)V

    :cond_7
    const-string v1, "func_super_text"

    .line 1710
    invoke-virtual {p0, v1}, Lcom/oplus/camera/capmode/d;->getSupportFunction(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_8

    .line 1711
    iget-object v1, v0, Lcom/oplus/camera/capmode/d;->mCameraUIInterface:Lcom/oplus/camera/ui/CameraUIInterface;

    invoke-interface {v1, v2}, Lcom/oplus/camera/ui/CameraUIInterface;->a(Lcom/oplus/camera/u/a;)V

    :cond_8
    if-eqz v3, :cond_a

    .line 1715
    iget-object v1, v0, Lcom/oplus/camera/capmode/d;->mCameraUIInterface:Lcom/oplus/camera/ui/CameraUIInterface;

    const v2, 0x7f10050c

    invoke-interface {v1, v2}, Lcom/oplus/camera/ui/CameraUIInterface;->a(I)V

    .line 1716
    iget-object v3, v0, Lcom/oplus/camera/capmode/d;->mCameraUIInterface:Lcom/oplus/camera/ui/CameraUIInterface;

    const v4, 0x7f1002c5

    const/4 v5, -0x1

    const/4 v6, 0x1

    const/4 v7, 0x0

    const/4 v8, 0x0

    invoke-interface/range {v3 .. v8}, Lcom/oplus/camera/ui/CameraUIInterface;->a(IIZZZ)V

    goto :goto_2

    :cond_9
    if-eqz v3, :cond_a

    .line 1721
    iget-object v9, v0, Lcom/oplus/camera/capmode/d;->mCameraUIInterface:Lcom/oplus/camera/ui/CameraUIInterface;

    .line 1722
    invoke-static {v1}, Lcom/oplus/camera/util/Util;->f(I)I

    move-result v10

    const/4 v11, -0x1

    const/4 v12, 0x1

    const/4 v13, 0x0

    const/4 v14, 0x0

    .line 1721
    invoke-interface/range {v9 .. v14}, Lcom/oplus/camera/ui/CameraUIInterface;->a(IIZZZ)V

    :cond_a
    :goto_2
    return-void
.end method

.method protected onPause()V
    .locals 5

    .line 1754
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onPause, mbBurstShot: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/oplus/camera/capmode/d;->mbBurstShot:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "CommonCapMode"

    invoke-static {v1, v0}, Lcom/oplus/camera/e;->a(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x0

    .line 1756
    iput-boolean v0, p0, Lcom/oplus/camera/capmode/d;->mbAutoMicroOpen:Z

    const/4 v1, 0x1

    .line 1757
    iput-boolean v1, p0, Lcom/oplus/camera/capmode/d;->mbCaptureRawTimeDone:Z

    .line 1758
    iput-boolean v1, p0, Lcom/oplus/camera/capmode/d;->mbNightJpegDone:Z

    .line 1759
    iput-boolean v0, p0, Lcom/oplus/camera/capmode/d;->mbCheckTakeAnimateDelay:Z

    .line 1760
    iput-boolean v0, p0, Lcom/oplus/camera/capmode/d;->mbTakeAnimateDelay:Z

    .line 1762
    iget-boolean v2, p0, Lcom/oplus/camera/capmode/d;->mbBurstShot:Z

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/oplus/camera/capmode/d;->mMyHandler:Landroid/os/Handler;

    if-eqz v2, :cond_0

    .line 1763
    invoke-virtual {p0}, Lcom/oplus/camera/capmode/d;->disableBurstShot()V

    .line 1764
    iput-boolean v0, p0, Lcom/oplus/camera/capmode/d;->mbBurstShot:Z

    .line 1767
    :cond_0
    invoke-virtual {p0}, Lcom/oplus/camera/capmode/d;->isInNightProcess()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 1768
    iget-object v2, p0, Lcom/oplus/camera/capmode/d;->mCameraUIInterface:Lcom/oplus/camera/ui/CameraUIInterface;

    invoke-interface {v2, v0}, Lcom/oplus/camera/ui/CameraUIInterface;->g(I)V

    .line 1771
    :cond_1
    iput-boolean v0, p0, Lcom/oplus/camera/capmode/d;->mbTripodNight:Z

    .line 1773
    iget-object v2, p0, Lcom/oplus/camera/capmode/d;->mMyHandler:Landroid/os/Handler;

    if-eqz v2, :cond_2

    const/4 v3, 0x0

    .line 1774
    invoke-virtual {v2, v3}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    .line 1777
    :cond_2
    iget-object v2, p0, Lcom/oplus/camera/capmode/d;->mCameraUIInterface:Lcom/oplus/camera/ui/CameraUIInterface;

    invoke-interface {v2}, Lcom/oplus/camera/ui/CameraUIInterface;->w()V

    .line 1778
    iget-object v2, p0, Lcom/oplus/camera/capmode/d;->mCameraUIInterface:Lcom/oplus/camera/ui/CameraUIInterface;

    invoke-interface {v2, v0, v0}, Lcom/oplus/camera/ui/CameraUIInterface;->e(ZZ)V

    .line 1779
    iget-object v2, p0, Lcom/oplus/camera/capmode/d;->mCameraUIInterface:Lcom/oplus/camera/ui/CameraUIInterface;

    invoke-interface {v2, v0}, Lcom/oplus/camera/ui/CameraUIInterface;->g(Z)V

    .line 1780
    iget-object v2, p0, Lcom/oplus/camera/capmode/d;->mCameraUIInterface:Lcom/oplus/camera/ui/CameraUIInterface;

    const/16 v3, 0x8

    invoke-interface {v2, v3, v0}, Lcom/oplus/camera/ui/CameraUIInterface;->c(IZ)V

    .line 1781
    iput-boolean v0, p0, Lcom/oplus/camera/capmode/d;->mbNightCheckClosed:Z

    .line 1782
    iput v0, p0, Lcom/oplus/camera/capmode/d;->mReceivedRawResultNum:I

    const-string v2, "key_beauty3d"

    .line 1784
    invoke-virtual {p0, v2}, Lcom/oplus/camera/capmode/d;->getSupportFunction(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_3

    iget-object v3, p0, Lcom/oplus/camera/capmode/d;->mBeauty3DManager:Lcom/oplus/camera/d/b;

    if-eqz v3, :cond_3

    .line 1785
    invoke-virtual {v3}, Lcom/oplus/camera/d/b;->b()V

    .line 1788
    :cond_3
    invoke-virtual {p0, v2}, Lcom/oplus/camera/capmode/d;->getSupportFunction(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_4

    const-string v3, "key_bubble_type_add_beuty3d"

    .line 1789
    invoke-virtual {p0, v3}, Lcom/oplus/camera/capmode/d;->isBubbleOpen(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_4

    iget-object v3, p0, Lcom/oplus/camera/capmode/d;->mCameraUIInterface:Lcom/oplus/camera/ui/CameraUIInterface;

    .line 1790
    invoke-interface {v3}, Lcom/oplus/camera/ui/CameraUIInterface;->A()Z

    move-result v3

    if-eqz v3, :cond_4

    .line 1791
    iget-object v3, p0, Lcom/oplus/camera/capmode/d;->mCameraUIInterface:Lcom/oplus/camera/ui/CameraUIInterface;

    const/4 v4, 0x6

    invoke-interface {v3, v4, v1}, Lcom/oplus/camera/ui/CameraUIInterface;->f(IZ)V

    .line 1794
    :cond_4
    invoke-virtual {p0, v2}, Lcom/oplus/camera/capmode/d;->getSupportFunction(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_5

    const-string v2, "key_bubble_type_custom_beuty3d"

    .line 1795
    invoke-virtual {p0, v2}, Lcom/oplus/camera/capmode/d;->isBubbleOpen(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_5

    .line 1796
    iget-object v2, p0, Lcom/oplus/camera/capmode/d;->mCameraUIInterface:Lcom/oplus/camera/ui/CameraUIInterface;

    const/4 v3, 0x5

    invoke-interface {v2, v3, v1}, Lcom/oplus/camera/ui/CameraUIInterface;->f(IZ)V

    :cond_5
    const-string v2, "key_support_grand_tour_fitlers"

    .line 1800
    invoke-virtual {p0, v2}, Lcom/oplus/camera/capmode/d;->getSupportFunction(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_6

    iget-boolean v2, p0, Lcom/oplus/camera/capmode/d;->mbFirstEffectMenuOpened:Z

    if-eqz v2, :cond_6

    .line 1802
    iget-object v2, p0, Lcom/oplus/camera/capmode/d;->mPreferences:Landroid/content/SharedPreferences;

    invoke-interface {v2}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v2

    invoke-virtual {p0}, Lcom/oplus/camera/capmode/d;->getFilterEffectPrevSelectedKey()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0}, Lcom/oplus/camera/capmode/d;->getCurrFilterType()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v2, v3, v4}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v2

    invoke-interface {v2}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 1805
    :cond_6
    iget-object v2, p0, Lcom/oplus/camera/capmode/d;->mCameraInterface:Lcom/oplus/camera/capmode/a;

    if-eqz v2, :cond_7

    iget-object v2, p0, Lcom/oplus/camera/capmode/d;->mCameraInterface:Lcom/oplus/camera/capmode/a;

    invoke-interface {v2}, Lcom/oplus/camera/capmode/a;->at()Z

    move-result v2

    if-nez v2, :cond_7

    const-string v2, "com.oplus.ultra.wide.high.picturesize"

    .line 1806
    invoke-static {v2}, Lcom/oplus/camera/aps/config/CameraConfig;->getConfigBooleanValue(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_7

    iget-object v2, p0, Lcom/oplus/camera/capmode/d;->mPreferences:Landroid/content/SharedPreferences;

    const-string v3, "pref_ultra_wide_high_picture_size_key"

    .line 1807
    invoke-interface {v2, v3}, Landroid/content/SharedPreferences;->contains(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_7

    .line 1808
    iput-boolean v1, p0, Lcom/oplus/camera/capmode/d;->mbForbidPreferenceChange:Z

    .line 1809
    iget-object v2, p0, Lcom/oplus/camera/capmode/d;->mPreferences:Landroid/content/SharedPreferences;

    invoke-interface {v2}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v2

    const-string v4, "off"

    invoke-interface {v2, v3, v4}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v2

    invoke-interface {v2}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 1810
    iput-boolean v0, p0, Lcom/oplus/camera/capmode/d;->mbForbidPreferenceChange:Z

    .line 1814
    :cond_7
    iget-object v0, p0, Lcom/oplus/camera/capmode/d;->mLensApi:Lcom/google/lens/sdk/LensApi;

    if-eqz v0, :cond_8

    .line 1816
    :try_start_0
    invoke-virtual {v0}, Lcom/google/lens/sdk/LensApi;->onPause()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 1818
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 1822
    :cond_8
    :goto_0
    invoke-virtual {p0}, Lcom/oplus/camera/capmode/d;->isAISceneOpen()Z

    move-result v0

    if-eqz v0, :cond_9

    .line 1823
    iget-object v0, p0, Lcom/oplus/camera/capmode/d;->mCameraUIInterface:Lcom/oplus/camera/ui/CameraUIInterface;

    invoke-interface {v0, v1}, Lcom/oplus/camera/ui/CameraUIInterface;->l(Z)V

    .line 1826
    :cond_9
    invoke-direct {p0}, Lcom/oplus/camera/capmode/d;->pauseNightCapture()V

    return-void
.end method

.method public onPictureCallback([BIIIZI)V
    .locals 1

    .line 2903
    iget-boolean v0, p0, Lcom/oplus/camera/capmode/d;->mbTakeAnimateDelay:Z

    if-eqz v0, :cond_0

    .line 2904
    new-instance v0, Lcom/oplus/camera/capmode/-$$Lambda$d$PcUHyhOV5vydrXaGsH7sT22LGZE;

    invoke-direct {v0, p0}, Lcom/oplus/camera/capmode/-$$Lambda$d$PcUHyhOV5vydrXaGsH7sT22LGZE;-><init>(Lcom/oplus/camera/capmode/d;)V

    invoke-static {v0}, Lcom/oplus/camera/util/Util;->c(Ljava/lang/Runnable;)V

    .line 2911
    :cond_0
    invoke-super/range {p0 .. p6}, Lcom/oplus/camera/capmode/BaseMode;->onPictureCallback([BIIIZI)V

    return-void
.end method

.method public onPreviewCaptureResult(Lcom/oplus/ocs/camera/CameraPreviewCallback$CameraPreviewResult;)V
    .locals 9

    const-string v0, "CommonCapMode"

    if-eqz p1, :cond_e

    .line 3552
    invoke-virtual {p1}, Lcom/oplus/ocs/camera/CameraPreviewCallback$CameraPreviewResult;->getCaptureResult()Landroid/hardware/camera2/CaptureResult;

    move-result-object v1

    if-nez v1, :cond_0

    goto/16 :goto_5

    .line 3558
    :cond_0
    invoke-virtual {p1}, Lcom/oplus/ocs/camera/CameraPreviewCallback$CameraPreviewResult;->getCaptureResult()Landroid/hardware/camera2/CaptureResult;

    move-result-object v1

    .line 3560
    iget-boolean v2, p0, Lcom/oplus/camera/capmode/d;->mbCheckTakeAnimateDelay:Z

    const/4 v3, 0x1

    const/4 v4, 0x0

    if-eqz v2, :cond_2

    .line 3561
    iput-boolean v4, p0, Lcom/oplus/camera/capmode/d;->mbCheckTakeAnimateDelay:Z

    .line 3562
    invoke-static {v1}, Lcom/oplus/camera/util/Util;->a(Landroid/hardware/camera2/CaptureResult;)F

    move-result v2

    const-string v5, "com.oplus.lux.delay.animate.threshold"

    .line 3563
    invoke-static {v5}, Lcom/oplus/camera/aps/config/CameraConfig;->getConfigIntValue(Ljava/lang/String;)I

    move-result v5

    int-to-float v5, v5

    cmpl-float v2, v2, v5

    if-lez v2, :cond_1

    move v2, v3

    goto :goto_0

    :cond_1
    move v2, v4

    :goto_0
    iput-boolean v2, p0, Lcom/oplus/camera/capmode/d;->mbTakeAnimateDelay:Z

    .line 3566
    :cond_2
    invoke-virtual {p0}, Lcom/oplus/camera/capmode/d;->isShowBeauty3D()Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-virtual {p0}, Lcom/oplus/camera/capmode/d;->getBeauty3DConfigured()Z

    move-result v2

    if-eqz v2, :cond_3

    .line 3567
    iget-object p0, p0, Lcom/oplus/camera/capmode/d;->mBeauty3DManager:Lcom/oplus/camera/d/b;

    invoke-virtual {p0, v1}, Lcom/oplus/camera/d/b;->b(Landroid/hardware/camera2/CaptureResult;)V

    return-void

    .line 3571
    :cond_3
    iget-object v2, p0, Lcom/oplus/camera/capmode/d;->mOneCamera:Lcom/oplus/camera/e/d;

    sget-object v5, Lcom/oplus/camera/e/b;->Z:Landroid/hardware/camera2/CaptureResult$Key;

    invoke-interface {v2, v5, v1}, Lcom/oplus/camera/e/d;->a(Landroid/hardware/camera2/CaptureResult$Key;Landroid/hardware/camera2/CaptureResult;)[I

    move-result-object v2

    if-eqz v2, :cond_8

    .line 3573
    array-length v5, v2

    if-lez v5, :cond_8

    .line 3575
    invoke-virtual {p0}, Lcom/oplus/camera/capmode/d;->isHalVideoRecording()Z

    move-result v5

    if-nez v5, :cond_8

    const-string v5, "com.oplus.feature.auto.micro"

    .line 3576
    invoke-static {v5}, Lcom/oplus/camera/aps/config/CameraConfig;->getConfigBooleanValue(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_8

    .line 3577
    iget-boolean v5, p0, Lcom/oplus/camera/capmode/d;->mbInCapturing:Z

    if-eqz v5, :cond_4

    .line 3578
    iget-boolean v0, p0, Lcom/oplus/camera/capmode/d;->mbAutoMicroOpen:Z

    if-nez v0, :cond_8

    .line 3579
    iget-object v0, p0, Lcom/oplus/camera/capmode/d;->mOneCamera:Lcom/oplus/camera/e/d;

    invoke-interface {v0, v4}, Lcom/oplus/camera/e/d;->B(Z)V

    goto/16 :goto_1

    .line 3581
    :cond_4
    invoke-virtual {p0}, Lcom/oplus/camera/capmode/d;->isTiltShiftOpen()Z

    move-result v5

    const/4 v6, 0x0

    if-eqz v5, :cond_5

    .line 3582
    iget-object v0, p0, Lcom/oplus/camera/capmode/d;->mOneCamera:Lcom/oplus/camera/e/d;

    invoke-interface {v0, v4}, Lcom/oplus/camera/e/d;->B(Z)V

    .line 3583
    iget-object v0, p0, Lcom/oplus/camera/capmode/d;->mOneCamera:Lcom/oplus/camera/e/d;

    invoke-interface {v0, v6}, Lcom/oplus/camera/e/d;->a(Lcom/oplus/camera/e/d$c;)V

    goto/16 :goto_1

    .line 3585
    :cond_5
    iget-object v5, p0, Lcom/oplus/camera/capmode/d;->mPreferences:Landroid/content/SharedPreferences;

    const-string v7, "auto"

    const-string v8, "pref_macro_switch"

    invoke-interface {v5, v8, v7}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 3587
    aget v2, v2, v4

    if-ne v3, v2, :cond_6

    invoke-virtual {v7, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_6

    invoke-virtual {p0}, Lcom/oplus/camera/capmode/d;->getCurrFilterIndex()I

    move-result v2

    invoke-virtual {p0, v2}, Lcom/oplus/camera/capmode/d;->isMonoIndex(I)Z

    move-result v2

    if-nez v2, :cond_6

    invoke-virtual {p0}, Lcom/oplus/camera/capmode/d;->isInNightProcess()Z

    move-result v2

    if-nez v2, :cond_6

    .line 3588
    iget-boolean v2, p0, Lcom/oplus/camera/capmode/d;->mbAutoMicroOpen:Z

    if-nez v2, :cond_8

    iget-object v2, p0, Lcom/oplus/camera/capmode/d;->mCameraUIInterface:Lcom/oplus/camera/ui/CameraUIInterface;

    invoke-interface {v2}, Lcom/oplus/camera/ui/CameraUIInterface;->R()Z

    move-result v2

    if-nez v2, :cond_8

    const-string v2, "onPreviewCaptureResult, micro mode"

    .line 3589
    invoke-static {v0, v2}, Lcom/oplus/camera/e;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 3591
    iput-boolean v3, p0, Lcom/oplus/camera/capmode/d;->mbAutoMicroOpen:Z

    .line 3593
    iget-object v0, p0, Lcom/oplus/camera/capmode/d;->mMyHandler:Landroid/os/Handler;

    if-eqz v0, :cond_8

    .line 3594
    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v0

    const/4 v2, 0x4

    .line 3595
    iput v2, v0, Landroid/os/Message;->what:I

    .line 3596
    iput v3, v0, Landroid/os/Message;->arg1:I

    .line 3597
    iget-object v2, p0, Lcom/oplus/camera/capmode/d;->mMyHandler:Landroid/os/Handler;

    invoke-virtual {v2, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    goto :goto_1

    .line 3601
    :cond_6
    iget-boolean v2, p0, Lcom/oplus/camera/capmode/d;->mbAutoMicroOpen:Z

    if-eqz v2, :cond_7

    const-string v2, "onPreviewCaptureResult, exit micro mode"

    .line 3602
    invoke-static {v0, v2}, Lcom/oplus/camera/e;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 3604
    iput-boolean v4, p0, Lcom/oplus/camera/capmode/d;->mbAutoMicroOpen:Z

    .line 3606
    iget-object v0, p0, Lcom/oplus/camera/capmode/d;->mMyHandler:Landroid/os/Handler;

    if-eqz v0, :cond_8

    const/4 v2, 0x5

    .line 3607
    invoke-virtual {v0, v2}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    goto :goto_1

    :cond_7
    const-string v0, "off"

    .line 3609
    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_8

    .line 3610
    iget-object v0, p0, Lcom/oplus/camera/capmode/d;->mOneCamera:Lcom/oplus/camera/e/d;

    invoke-interface {v0, v4}, Lcom/oplus/camera/e/d;->B(Z)V

    .line 3611
    iget-object v0, p0, Lcom/oplus/camera/capmode/d;->mOneCamera:Lcom/oplus/camera/e/d;

    invoke-interface {v0, v6}, Lcom/oplus/camera/e/d;->a(Lcom/oplus/camera/e/d$c;)V

    .line 3617
    :cond_8
    :goto_1
    iget-boolean v0, p0, Lcom/oplus/camera/capmode/d;->mbInCapturing:Z

    if-nez v0, :cond_c

    .line 3620
    invoke-static {}, Lcom/oplus/camera/util/Util;->C()Z

    move-result v0

    if-eqz v0, :cond_9

    .line 3621
    iget-object v0, p0, Lcom/oplus/camera/capmode/d;->mOneCamera:Lcom/oplus/camera/e/d;

    sget-object v2, Lcom/oplus/camera/e/b;->ab:Landroid/hardware/camera2/CaptureResult$Key;

    invoke-interface {v0, v2, v1}, Lcom/oplus/camera/e/d;->a(Landroid/hardware/camera2/CaptureResult$Key;Landroid/hardware/camera2/CaptureResult;)[I

    move-result-object v0

    goto :goto_2

    .line 3623
    :cond_9
    iget-object v0, p0, Lcom/oplus/camera/capmode/d;->mOneCamera:Lcom/oplus/camera/e/d;

    sget-object v2, Lcom/oplus/camera/e/b;->ac:Landroid/hardware/camera2/CaptureResult$Key;

    invoke-interface {v0, v2, v1}, Lcom/oplus/camera/e/d;->a(Landroid/hardware/camera2/CaptureResult$Key;Landroid/hardware/camera2/CaptureResult;)[I

    move-result-object v0

    :goto_2
    if-eqz v0, :cond_b

    .line 3626
    array-length v2, v0

    if-lez v2, :cond_b

    .line 3627
    aget v0, v0, v4

    if-ne v0, v3, :cond_a

    goto :goto_3

    :cond_a
    move v3, v4

    :goto_3
    iput-boolean v3, p0, Lcom/oplus/camera/capmode/d;->mbSceneNight:Z

    goto :goto_4

    .line 3629
    :cond_b
    iput-boolean v4, p0, Lcom/oplus/camera/capmode/d;->mbSceneNight:Z

    .line 3633
    :cond_c
    :goto_4
    invoke-virtual {p0}, Lcom/oplus/camera/capmode/d;->getCurrFilterIndex()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/oplus/camera/capmode/d;->isMonoIndex(I)Z

    move-result v0

    if-eqz v0, :cond_d

    .line 3634
    invoke-direct {p0, v1}, Lcom/oplus/camera/capmode/d;->updateMonoFilterEffect(Landroid/hardware/camera2/CaptureResult;)V

    .line 3637
    :cond_d
    invoke-super {p0, p1}, Lcom/oplus/camera/capmode/BaseMode;->onPreviewCaptureResult(Lcom/oplus/ocs/camera/CameraPreviewCallback$CameraPreviewResult;)V

    return-void

    .line 3553
    :cond_e
    :goto_5
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onPreviewCaptureResult, invalid totalResult: "

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Lcom/oplus/camera/e;->f(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public onPreviewDecisionResult(Lcom/oplus/camera/aps/util/CameraApsDecision;)V
    .locals 0

    .line 4699
    invoke-super {p0, p1}, Lcom/oplus/camera/capmode/BaseMode;->onPreviewDecisionResult(Lcom/oplus/camera/aps/util/CameraApsDecision;)V

    .line 4700
    invoke-direct {p0, p1}, Lcom/oplus/camera/capmode/d;->updateSeNightCaptureTime(Lcom/oplus/camera/aps/util/CameraApsDecision;)V

    return-void
.end method

.method public onReceivePreviewCaptureResult(Landroid/hardware/camera2/CaptureResult;)V
    .locals 0

    .line 4158
    invoke-super {p0, p1}, Lcom/oplus/camera/capmode/BaseMode;->onReceivePreviewCaptureResult(Landroid/hardware/camera2/CaptureResult;)V

    .line 4159
    iget p1, p0, Lcom/oplus/camera/capmode/d;->mReceivedPreviewResultNum:I

    add-int/lit8 p1, p1, 0x1

    iput p1, p0, Lcom/oplus/camera/capmode/d;->mReceivedPreviewResultNum:I

    return-void
.end method

.method protected onResume(Z)V
    .locals 4

    const-string p1, "CommonCapMode"

    const-string v0, "onResume"

    .line 934
    invoke-static {p1, v0}, Lcom/oplus/camera/e;->f(Ljava/lang/String;Ljava/lang/String;)V

    .line 936
    iget-object p1, p0, Lcom/oplus/camera/capmode/d;->mActivity:Landroid/app/Activity;

    invoke-virtual {p1}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    const-string v0, "keyguard"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/app/KeyguardManager;

    .line 939
    invoke-virtual {p1}, Landroid/app/KeyguardManager;->isKeyguardLocked()Z

    move-result p1

    const/4 v0, 0x1

    if-eqz p1, :cond_0

    .line 940
    iput-boolean v0, p0, Lcom/oplus/camera/capmode/d;->mbDisplayOnLock:Z

    .line 943
    :cond_0
    iget-boolean p1, p0, Lcom/oplus/camera/capmode/d;->mbDisplayOnLock:Z

    if-eqz p1, :cond_1

    .line 944
    invoke-virtual {p0}, Lcom/oplus/camera/capmode/d;->resetMonoFilter()V

    .line 947
    :cond_1
    invoke-direct {p0}, Lcom/oplus/camera/capmode/d;->updateNowRearEffectIndex()V

    const-string p1, "key_beauty3d"

    .line 949
    invoke-virtual {p0, p1}, Lcom/oplus/camera/capmode/d;->getSupportFunction(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_2

    iget-object p1, p0, Lcom/oplus/camera/capmode/d;->mBeauty3DManager:Lcom/oplus/camera/d/b;

    if-eqz p1, :cond_2

    .line 951
    invoke-virtual {p1}, Lcom/oplus/camera/d/b;->f()I

    move-result p1

    if-eqz p1, :cond_2

    .line 952
    iget-object p1, p0, Lcom/oplus/camera/capmode/d;->mBeauty3DManager:Lcom/oplus/camera/d/b;

    new-instance v1, Landroid/util/Size;

    const/16 v2, 0x5a0

    const/16 v3, 0x990

    invoke-direct {v1, v2, v3}, Landroid/util/Size;-><init>(II)V

    invoke-virtual {p1, v1}, Lcom/oplus/camera/d/b;->a(Landroid/util/Size;)V

    .line 955
    :cond_2
    invoke-virtual {p0}, Lcom/oplus/camera/capmode/d;->isNeedResetNoneSatWide()Z

    move-result p1

    const/4 v1, 0x0

    if-eqz p1, :cond_3

    .line 956
    iget-object p1, p0, Lcom/oplus/camera/capmode/d;->mCameraInterface:Lcom/oplus/camera/capmode/a;

    invoke-interface {p1, v0}, Lcom/oplus/camera/capmode/a;->c(Z)V

    .line 957
    iget-object p1, p0, Lcom/oplus/camera/capmode/d;->mPreferences:Landroid/content/SharedPreferences;

    invoke-interface {p1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object p1

    const-string v2, "pref_none_sat_ultra_wide_angle_key"

    const-string v3, "off"

    invoke-interface {p1, v2, v3}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object p1

    invoke-interface {p1}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 958
    iget-object p1, p0, Lcom/oplus/camera/capmode/d;->mCameraInterface:Lcom/oplus/camera/capmode/a;

    invoke-interface {p1, v1}, Lcom/oplus/camera/capmode/a;->c(Z)V

    .line 961
    :cond_3
    iget-object p1, p0, Lcom/oplus/camera/capmode/d;->mLensApi:Lcom/google/lens/sdk/LensApi;

    if-eqz p1, :cond_4

    .line 963
    :try_start_0
    invoke-virtual {p1}, Lcom/google/lens/sdk/LensApi;->onResume()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 965
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    .line 969
    :cond_4
    :goto_0
    invoke-virtual {p0}, Lcom/oplus/camera/capmode/d;->isGoogleLensEnable()Z

    move-result p1

    if-eqz p1, :cond_5

    .line 970
    invoke-virtual {p0, v0}, Lcom/oplus/camera/capmode/d;->showGoogleLensIcon(Z)V

    .line 971
    invoke-direct {p0, v0}, Lcom/oplus/camera/capmode/d;->setGoogleLensIconClickable(Z)V

    goto :goto_1

    .line 973
    :cond_5
    invoke-virtual {p0, v1}, Lcom/oplus/camera/capmode/d;->hideGoogleLensIcon(Z)V

    .line 976
    :goto_1
    iget-boolean p1, p0, Lcom/oplus/camera/capmode/d;->mbShowSteadyTips:Z

    if-eqz p1, :cond_6

    .line 977
    iget-object p1, p0, Lcom/oplus/camera/capmode/d;->mCameraUIInterface:Lcom/oplus/camera/ui/CameraUIInterface;

    const v0, 0x7f100314

    invoke-interface {p1, v0}, Lcom/oplus/camera/ui/CameraUIInterface;->a(I)V

    .line 978
    iget-object p1, p0, Lcom/oplus/camera/capmode/d;->mCameraUIInterface:Lcom/oplus/camera/ui/CameraUIInterface;

    const v0, 0x7f10031b

    invoke-interface {p1, v0}, Lcom/oplus/camera/ui/CameraUIInterface;->a(I)V

    .line 979
    iput-boolean v1, p0, Lcom/oplus/camera/capmode/d;->mbShowSteadyTips:Z

    .line 980
    iput v1, p0, Lcom/oplus/camera/capmode/d;->mNightAlgoTriggeredStep:I

    .line 983
    :cond_6
    iget-boolean p1, p0, Lcom/oplus/camera/capmode/d;->mbShowImageOptimizingTips:Z

    if-eqz p1, :cond_7

    .line 984
    iget-object p1, p0, Lcom/oplus/camera/capmode/d;->mCameraUIInterface:Lcom/oplus/camera/ui/CameraUIInterface;

    const v0, 0x7f100312

    invoke-interface {p1, v0}, Lcom/oplus/camera/ui/CameraUIInterface;->a(I)V

    .line 985
    iput-boolean v1, p0, Lcom/oplus/camera/capmode/d;->mbShowImageOptimizingTips:Z

    .line 986
    iput v1, p0, Lcom/oplus/camera/capmode/d;->mNightAlgoTriggeredStep:I

    .line 989
    :cond_7
    iget-object p1, p0, Lcom/oplus/camera/capmode/d;->mCameraUIInterface:Lcom/oplus/camera/ui/CameraUIInterface;

    invoke-interface {p1, v1}, Lcom/oplus/camera/ui/CameraUIInterface;->g(Z)V

    .line 990
    iget-object p0, p0, Lcom/oplus/camera/capmode/d;->mCameraUIInterface:Lcom/oplus/camera/ui/CameraUIInterface;

    const/16 p1, 0x8

    invoke-interface {p0, p1, v1}, Lcom/oplus/camera/ui/CameraUIInterface;->c(IZ)V

    return-void
.end method

.method public onSessionConfigured()V
    .locals 2

    .line 1056
    iget-object v0, p0, Lcom/oplus/camera/capmode/d;->mBeauty3DManager:Lcom/oplus/camera/d/b;

    if-eqz v0, :cond_0

    .line 1057
    iget-object v1, p0, Lcom/oplus/camera/capmode/d;->mOneCamera:Lcom/oplus/camera/e/d;

    invoke-virtual {v0, v1}, Lcom/oplus/camera/d/b;->a(Lcom/oplus/camera/e/d;)V

    .line 1060
    :cond_0
    invoke-super {p0}, Lcom/oplus/camera/capmode/BaseMode;->onSessionConfigured()V

    return-void
.end method

.method public onSharedPreferenceChanged(Landroid/content/SharedPreferences;Ljava/lang/String;)V
    .locals 11

    const-string v0, "pref_camera_pi_ai_mode_key"

    .line 1531
    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    const-string v2, "on"

    const-string v3, "off"

    const/4 v4, 0x1

    if-eqz v1, :cond_2

    invoke-virtual {p0, v0}, Lcom/oplus/camera/capmode/d;->getSupportFunction(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 1532
    iget-object p2, p0, Lcom/oplus/camera/capmode/d;->mActivity:Landroid/app/Activity;

    const v1, 0x7f1002c1

    .line 1533
    invoke-virtual {p2, v1}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object p2

    .line 1532
    invoke-interface {p1, v0, p2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    .line 1535
    iget-object p2, p0, Lcom/oplus/camera/capmode/d;->mPreferences:Landroid/content/SharedPreferences;

    if-eqz p2, :cond_1

    .line 1536
    iget-object p2, p0, Lcom/oplus/camera/capmode/d;->mPreferences:Landroid/content/SharedPreferences;

    invoke-interface {p2}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object p2

    if-eqz p1, :cond_0

    goto :goto_0

    :cond_0
    move-object v2, v3

    :goto_0
    const-string v0, "pref_ai_scene_key"

    invoke-interface {p2, v0, v2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object p2

    invoke-interface {p2}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 1539
    :cond_1
    iget-boolean p2, p0, Lcom/oplus/camera/capmode/d;->mbBurstShot:Z

    invoke-virtual {p0, p2, p1, v4, v4}, Lcom/oplus/camera/capmode/d;->onPIChanged(ZZZZ)V

    return-void

    :cond_2
    const-string v0, "pref_camera_pi_mode_key"

    .line 1543
    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-virtual {p0, v0}, Lcom/oplus/camera/capmode/d;->getSupportFunction(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 1544
    invoke-interface {p1, v0, v3}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    .line 1545
    iget-boolean p2, p0, Lcom/oplus/camera/capmode/d;->mbBurstShot:Z

    invoke-virtual {p0, p2, p1, v4, v4}, Lcom/oplus/camera/capmode/d;->onPIChanged(ZZZZ)V

    return-void

    :cond_3
    const-string v0, "pref_ultra_wide_high_picture_size_key"

    .line 1549
    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    const/4 v5, 0x0

    if-eqz v1, :cond_7

    iget-boolean v1, p0, Lcom/oplus/camera/capmode/d;->mbForbidPreferenceChange:Z

    if-nez v1, :cond_7

    const-string p1, "pref_camera_flashmode_key"

    .line 1550
    invoke-virtual {p0, p1}, Lcom/oplus/camera/capmode/d;->getSupportFunction(Ljava/lang/String;)Z

    move-result p2

    if-eqz p2, :cond_5

    iget-object p2, p0, Lcom/oplus/camera/capmode/d;->mPreferences:Landroid/content/SharedPreferences;

    if-eqz p2, :cond_5

    .line 1551
    invoke-virtual {p0}, Lcom/oplus/camera/capmode/d;->isUltraWideHighPictureSize()Z

    move-result p2

    if-eqz p2, :cond_4

    const-string p2, "com.oplus.feature.flash.full.zoom.support"

    .line 1552
    invoke-static {p2}, Lcom/oplus/camera/aps/config/CameraConfig;->getConfigBooleanValue(Ljava/lang/String;)Z

    move-result p2

    if-nez p2, :cond_4

    .line 1553
    iput-boolean v4, p0, Lcom/oplus/camera/capmode/d;->mbFlashTemporaryDisabled:Z

    .line 1554
    invoke-virtual {p0, v3}, Lcom/oplus/camera/capmode/d;->updateFlashState(Ljava/lang/String;)V

    .line 1555
    iget-object p2, p0, Lcom/oplus/camera/capmode/d;->mCameraUIInterface:Lcom/oplus/camera/ui/CameraUIInterface;

    invoke-interface {p2, p1, v3}, Lcom/oplus/camera/ui/CameraUIInterface;->a(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    .line 1558
    :cond_4
    iput-boolean v5, p0, Lcom/oplus/camera/capmode/d;->mbFlashTemporaryDisabled:Z

    .line 1559
    invoke-virtual {p0}, Lcom/oplus/camera/capmode/d;->getFlashMode()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/oplus/camera/capmode/d;->updateFlashState(Ljava/lang/String;)V

    .line 1563
    :cond_5
    :goto_1
    iget-object p1, p0, Lcom/oplus/camera/capmode/d;->mCameraInterface:Lcom/oplus/camera/capmode/a;

    if-eqz p1, :cond_6

    .line 1564
    iget-object p0, p0, Lcom/oplus/camera/capmode/d;->mCameraInterface:Lcom/oplus/camera/capmode/a;

    invoke-interface {p0}, Lcom/oplus/camera/capmode/a;->au()V

    :cond_6
    return-void

    :cond_7
    const-string v1, "pref_camera_id_key"

    .line 1570
    invoke-virtual {v1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_a

    .line 1571
    invoke-virtual {p0}, Lcom/oplus/camera/capmode/d;->isUltraWideHighPictureSize()Z

    move-result p1

    if-eqz p1, :cond_8

    iget-object p1, p0, Lcom/oplus/camera/capmode/d;->mPreferences:Landroid/content/SharedPreferences;

    if-eqz p1, :cond_8

    .line 1572
    iput-boolean v4, p0, Lcom/oplus/camera/capmode/d;->mbForbidPreferenceChange:Z

    .line 1573
    iget-object p1, p0, Lcom/oplus/camera/capmode/d;->mPreferences:Landroid/content/SharedPreferences;

    invoke-interface {p1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object p1

    invoke-interface {p1, v0, v3}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object p1

    invoke-interface {p1}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 1574
    iput-boolean v5, p0, Lcom/oplus/camera/capmode/d;->mbForbidPreferenceChange:Z

    .line 1577
    :cond_8
    invoke-virtual {p0}, Lcom/oplus/camera/capmode/d;->isAISceneOpen()Z

    move-result p1

    if-eqz p1, :cond_9

    .line 1578
    iget-object p0, p0, Lcom/oplus/camera/capmode/d;->mCameraUIInterface:Lcom/oplus/camera/ui/CameraUIInterface;

    invoke-interface {p0, v4}, Lcom/oplus/camera/ui/CameraUIInterface;->l(Z)V

    :cond_9
    return-void

    :cond_a
    const-string v1, "pref_camera_high_resolution_key"

    .line 1584
    invoke-virtual {v1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    const-string v7, "pref_last_macro_switch"

    const-string v8, "pref_macro_switch"

    const-string v9, "auto"

    const-string v10, "standard"

    if-eqz v6, :cond_12

    .line 1585
    invoke-virtual {p0, v0}, Lcom/oplus/camera/capmode/d;->getSupportFunction(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_c

    iget-object p1, p0, Lcom/oplus/camera/capmode/d;->mPreferences:Landroid/content/SharedPreferences;

    if-eqz p1, :cond_c

    iget-object p1, p0, Lcom/oplus/camera/capmode/d;->mPreferences:Landroid/content/SharedPreferences;

    const-string p2, "standard_high"

    .line 1587
    invoke-interface {p1, v1, p2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_c

    .line 1589
    invoke-virtual {p0}, Lcom/oplus/camera/capmode/d;->getZoomValue()F

    move-result p1

    const/high16 p2, 0x3f800000    # 1.0f

    invoke-static {p1, p2}, Ljava/lang/Float;->compare(FF)I

    move-result p1

    if-gez p1, :cond_b

    .line 1590
    iput-boolean v4, p0, Lcom/oplus/camera/capmode/d;->mbForbidPreferenceChange:Z

    .line 1591
    iget-object p1, p0, Lcom/oplus/camera/capmode/d;->mPreferences:Landroid/content/SharedPreferences;

    invoke-interface {p1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object p1

    invoke-interface {p1, v0, v2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object p1

    invoke-interface {p1}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 1592
    iput-boolean v5, p0, Lcom/oplus/camera/capmode/d;->mbForbidPreferenceChange:Z

    goto :goto_2

    .line 1594
    :cond_b
    iput-boolean v4, p0, Lcom/oplus/camera/capmode/d;->mbForbidPreferenceChange:Z

    .line 1595
    iget-object p1, p0, Lcom/oplus/camera/capmode/d;->mPreferences:Landroid/content/SharedPreferences;

    invoke-interface {p1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object p1

    invoke-interface {p1, v0, v3}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object p1

    invoke-interface {p1}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 1596
    iput-boolean v5, p0, Lcom/oplus/camera/capmode/d;->mbForbidPreferenceChange:Z

    .line 1600
    :cond_c
    :goto_2
    invoke-virtual {p0, v0}, Lcom/oplus/camera/capmode/d;->getSupportFunction(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_d

    iget-object p1, p0, Lcom/oplus/camera/capmode/d;->mPreferences:Landroid/content/SharedPreferences;

    if-eqz p1, :cond_d

    iget-object p1, p0, Lcom/oplus/camera/capmode/d;->mPreferences:Landroid/content/SharedPreferences;

    .line 1602
    invoke-interface {p1, v1, v10}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v10, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_d

    .line 1604
    iput-boolean v4, p0, Lcom/oplus/camera/capmode/d;->mbForbidPreferenceChange:Z

    .line 1605
    iget-object p1, p0, Lcom/oplus/camera/capmode/d;->mPreferences:Landroid/content/SharedPreferences;

    invoke-interface {p1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object p1

    invoke-interface {p1, v0, v3}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object p1

    invoke-interface {p1}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 1606
    iput-boolean v5, p0, Lcom/oplus/camera/capmode/d;->mbForbidPreferenceChange:Z

    .line 1609
    :cond_d
    iget-object p1, p0, Lcom/oplus/camera/capmode/d;->mPreferences:Landroid/content/SharedPreferences;

    if-eqz p1, :cond_e

    iget-object p1, p0, Lcom/oplus/camera/capmode/d;->mPreferences:Landroid/content/SharedPreferences;

    invoke-interface {p1, v1, v10}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v10, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_e

    iget-object p1, p0, Lcom/oplus/camera/capmode/d;->mPreferences:Landroid/content/SharedPreferences;

    .line 1610
    invoke-interface {p1, v8, v9}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v9, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_e

    .line 1612
    iget-object p1, p0, Lcom/oplus/camera/capmode/d;->mPreferences:Landroid/content/SharedPreferences;

    invoke-interface {p1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object p1

    .line 1613
    invoke-interface {p1, v7, v9}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 1614
    invoke-interface {p1, v8, v3}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 1615
    invoke-interface {p1}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 1618
    :cond_e
    iget-object p1, p0, Lcom/oplus/camera/capmode/d;->mPreferences:Landroid/content/SharedPreferences;

    if-eqz p1, :cond_10

    iget-object p1, p0, Lcom/oplus/camera/capmode/d;->mPreferences:Landroid/content/SharedPreferences;

    .line 1619
    invoke-interface {p1, v1, v10}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v10, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_10

    iget-object p1, p0, Lcom/oplus/camera/capmode/d;->mPreferences:Landroid/content/SharedPreferences;

    .line 1620
    invoke-interface {p1, v7}, Landroid/content/SharedPreferences;->contains(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_10

    .line 1621
    iget-object p1, p0, Lcom/oplus/camera/capmode/d;->mPreferences:Landroid/content/SharedPreferences;

    invoke-interface {p1, v8, v9}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v9, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_f

    iget-object p1, p0, Lcom/oplus/camera/capmode/d;->mPreferences:Landroid/content/SharedPreferences;

    .line 1622
    invoke-interface {p1, v7, v9}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v9, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_f

    .line 1623
    iget-object p1, p0, Lcom/oplus/camera/capmode/d;->mPreferences:Landroid/content/SharedPreferences;

    invoke-interface {p1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object p1

    invoke-interface {p1, v8, v9}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object p1

    invoke-interface {p1}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 1626
    :cond_f
    iget-object p1, p0, Lcom/oplus/camera/capmode/d;->mPreferences:Landroid/content/SharedPreferences;

    invoke-interface {p1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object p1

    invoke-interface {p1, v7}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object p1

    invoke-interface {p1}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 1629
    :cond_10
    iget-object p1, p0, Lcom/oplus/camera/capmode/d;->mPreferences:Landroid/content/SharedPreferences;

    if-eqz p1, :cond_11

    invoke-virtual {p0}, Lcom/oplus/camera/capmode/d;->getCurrFilterIndex()I

    move-result p1

    invoke-virtual {p0, p1}, Lcom/oplus/camera/capmode/d;->isMonoIndex(I)Z

    move-result p1

    if-eqz p1, :cond_11

    iget-object p1, p0, Lcom/oplus/camera/capmode/d;->mPreferences:Landroid/content/SharedPreferences;

    .line 1630
    invoke-interface {p1, v1, v10}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v10, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_11

    .line 1632
    invoke-direct {p0}, Lcom/oplus/camera/capmode/d;->onHighResolution()V

    :cond_11
    return-void

    .line 1638
    :cond_12
    invoke-virtual {v8, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_14

    .line 1639
    iget-object p1, p0, Lcom/oplus/camera/capmode/d;->mPreferences:Landroid/content/SharedPreferences;

    if-eqz p1, :cond_13

    iget-object p1, p0, Lcom/oplus/camera/capmode/d;->mPreferences:Landroid/content/SharedPreferences;

    .line 1640
    invoke-interface {p1, v8, v9}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v9, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_13

    .line 1641
    iget-object p1, p0, Lcom/oplus/camera/capmode/d;->mPreferences:Landroid/content/SharedPreferences;

    invoke-interface {p1, v1, v10}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v10, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_13

    .line 1642
    iget-object p1, p0, Lcom/oplus/camera/capmode/d;->mPreferences:Landroid/content/SharedPreferences;

    invoke-interface {p1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object p1

    invoke-interface {p1, v1, v10}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object p1

    invoke-interface {p1}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 1644
    iget-object p1, p0, Lcom/oplus/camera/capmode/d;->mPreferences:Landroid/content/SharedPreferences;

    invoke-interface {p1, v7}, Landroid/content/SharedPreferences;->contains(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_13

    .line 1645
    iget-object p0, p0, Lcom/oplus/camera/capmode/d;->mPreferences:Landroid/content/SharedPreferences;

    invoke-interface {p0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object p0

    invoke-interface {p0, v7}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object p0

    invoke-interface {p0}, Landroid/content/SharedPreferences$Editor;->apply()V

    :cond_13
    return-void

    .line 1653
    :cond_14
    invoke-super {p0, p1, p2}, Lcom/oplus/camera/capmode/BaseMode;->onSharedPreferenceChanged(Landroid/content/SharedPreferences;Ljava/lang/String;)V

    return-void
.end method

.method protected onShutterCallback(ZZ)V
    .locals 1

    .line 2617
    invoke-super {p0, p1, p2}, Lcom/oplus/camera/capmode/BaseMode;->onShutterCallback(ZZ)V

    if-nez p1, :cond_4

    if-eqz p2, :cond_4

    .line 2620
    iget-boolean p1, p0, Lcom/oplus/camera/capmode/d;->mbTakeAnimateDelay:Z

    const-string p2, "CommonCapMode"

    if-nez p1, :cond_0

    .line 2621
    iget-object p1, p0, Lcom/oplus/camera/capmode/d;->mCameraInterface:Lcom/oplus/camera/capmode/a;

    invoke-interface {p1}, Lcom/oplus/camera/capmode/a;->h()V

    goto :goto_0

    :cond_0
    const-string p1, "onShutterCallback, animateTakePicture delay"

    .line 2623
    invoke-static {p2, p1}, Lcom/oplus/camera/e;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 2626
    :goto_0
    invoke-virtual {p0}, Lcom/oplus/camera/capmode/d;->isInNightProcess()Z

    move-result p1

    if-nez p1, :cond_1

    .line 2627
    iget-object p1, p0, Lcom/oplus/camera/capmode/d;->mCameraInterface:Lcom/oplus/camera/capmode/a;

    const/4 v0, 0x0

    invoke-interface {p1, v0}, Lcom/oplus/camera/capmode/a;->c(I)V

    .line 2630
    :cond_1
    invoke-virtual {p0}, Lcom/oplus/camera/capmode/d;->isPIModeOpen()Z

    move-result p1

    if-eqz p1, :cond_2

    const-string p1, "com.oplus.feature.pi.ai.support"

    invoke-static {p1}, Lcom/oplus/camera/aps/config/CameraConfig;->getConfigBooleanValue(Ljava/lang/String;)Z

    move-result p1

    if-nez p1, :cond_2

    const-string p1, "onShutterCallback, PIOpen"

    .line 2631
    invoke-static {p2, p1}, Lcom/oplus/camera/e;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 2633
    iget-object p1, p0, Lcom/oplus/camera/capmode/d;->mMyHandler:Landroid/os/Handler;

    if-eqz p1, :cond_2

    .line 2634
    new-instance p2, Lcom/oplus/camera/capmode/d$16;

    invoke-direct {p2, p0}, Lcom/oplus/camera/capmode/d$16;-><init>(Lcom/oplus/camera/capmode/d;)V

    invoke-virtual {p1, p2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 2654
    :cond_2
    iget-object p1, p0, Lcom/oplus/camera/capmode/d;->mBeauty3DManager:Lcom/oplus/camera/d/b;

    if-eqz p1, :cond_4

    .line 2655
    invoke-virtual {p0}, Lcom/oplus/camera/capmode/d;->isShowBeauty3DEditChooseMenu()Z

    move-result p1

    if-eqz p1, :cond_3

    .line 2656
    iget-object p0, p0, Lcom/oplus/camera/capmode/d;->mBeauty3DManager:Lcom/oplus/camera/d/b;

    invoke-virtual {p0}, Lcom/oplus/camera/d/b;->p()V

    goto :goto_1

    .line 2658
    :cond_3
    iget-object p0, p0, Lcom/oplus/camera/capmode/d;->mBeauty3DManager:Lcom/oplus/camera/d/b;

    invoke-virtual {p0}, Lcom/oplus/camera/d/b;->q()V

    :cond_4
    :goto_1
    return-void
.end method

.method protected onStop()V
    .locals 1

    const-string p0, "CommonCapMode"

    const-string v0, "OnStop"

    .line 995
    invoke-static {p0, v0}, Lcom/oplus/camera/e;->f(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method protected onStopTakePicture()Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public onTimeSnapShotEnd(Z)V
    .locals 2

    .line 2467
    invoke-virtual {p0}, Lcom/oplus/camera/capmode/d;->getShutterButtonInfo()Lcom/oplus/camera/ui/control/b;

    move-result-object v0

    .line 2469
    iget-boolean v1, p0, Lcom/oplus/camera/capmode/d;->mbSceneNight:Z

    if-nez v1, :cond_0

    invoke-virtual {p0}, Lcom/oplus/camera/capmode/d;->isPIModeOpen()Z

    move-result v1

    if-eqz v1, :cond_2

    const-string v1, "com.oplus.feature.pi.ai.support"

    invoke-static {v1}, Lcom/oplus/camera/aps/config/CameraConfig;->getConfigBooleanValue(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_2

    :cond_0
    iget-boolean v1, p0, Lcom/oplus/camera/capmode/d;->mbFrontCamera:Z

    if-nez v1, :cond_2

    const-string v1, "button_color_inside_none"

    if-eqz p1, :cond_1

    const/16 p1, 0x8

    .line 2472
    invoke-virtual {v0, p1}, Lcom/oplus/camera/ui/control/b;->a(I)V

    .line 2473
    invoke-virtual {v0, v1}, Lcom/oplus/camera/ui/control/b;->a(Ljava/lang/String;)V

    goto :goto_0

    :cond_1
    const/16 p1, 0xb

    .line 2475
    invoke-virtual {v0, p1}, Lcom/oplus/camera/ui/control/b;->a(I)V

    .line 2476
    invoke-virtual {v0, v1}, Lcom/oplus/camera/ui/control/b;->a(Ljava/lang/String;)V

    .line 2480
    :cond_2
    :goto_0
    iget-object p0, p0, Lcom/oplus/camera/capmode/d;->mCameraUIInterface:Lcom/oplus/camera/ui/CameraUIInterface;

    invoke-interface {p0, v0}, Lcom/oplus/camera/ui/CameraUIInterface;->a(Lcom/oplus/camera/ui/control/b;)V

    return-void
.end method

.method protected onTimerCountDownEnd()V
    .locals 10

    .line 324
    iget-boolean v0, p0, Lcom/oplus/camera/capmode/d;->mbDestroyed:Z

    if-eqz v0, :cond_0

    return-void

    .line 328
    :cond_0
    invoke-virtual {p0}, Lcom/oplus/camera/capmode/d;->isInNightProProcess()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lcom/oplus/camera/capmode/d;->isNightProSoundPlayed()Z

    move-result v0

    if-nez v0, :cond_2

    .line 329
    :cond_1
    iget-object v0, p0, Lcom/oplus/camera/capmode/d;->mCameraInterface:Lcom/oplus/camera/capmode/a;

    invoke-interface {v0, v1}, Lcom/oplus/camera/capmode/a;->c(I)V

    :cond_2
    const/4 v0, 0x1

    .line 332
    iput-boolean v0, p0, Lcom/oplus/camera/capmode/d;->mbCaptureRawTimeDone:Z

    .line 334
    iget-boolean v2, p0, Lcom/oplus/camera/capmode/d;->mbNightJpegDone:Z

    const-string v3, "CommonCapMode"

    if-nez v2, :cond_5

    invoke-virtual {p0}, Lcom/oplus/camera/capmode/d;->isInOfflineNightProcess()Z

    move-result v2

    if-eqz v2, :cond_3

    goto :goto_1

    .line 341
    :cond_3
    iput-boolean v0, p0, Lcom/oplus/camera/capmode/d;->mbEnableUILater:Z

    const-string v2, "onTimerCountDownEnd"

    .line 344
    invoke-static {v3, v2}, Lcom/oplus/camera/e;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 346
    iget-object v2, p0, Lcom/oplus/camera/capmode/d;->mCameraUIInterface:Lcom/oplus/camera/ui/CameraUIInterface;

    const v3, 0x7f100314

    invoke-interface {v2, v3}, Lcom/oplus/camera/ui/CameraUIInterface;->a(I)V

    .line 347
    iget-object v4, p0, Lcom/oplus/camera/capmode/d;->mCameraUIInterface:Lcom/oplus/camera/ui/CameraUIInterface;

    const v5, 0x7f10031b

    const/4 v6, -0x1

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x1

    invoke-interface/range {v4 .. v9}, Lcom/oplus/camera/ui/CameraUIInterface;->a(IIZZZ)V

    .line 349
    invoke-static {}, Lcom/oplus/camera/util/Util;->ao()Z

    move-result v2

    if-eqz v2, :cond_4

    const/16 v2, 0x1c

    goto :goto_0

    :cond_4
    const/4 v2, 0x4

    .line 350
    :goto_0
    new-instance v3, Lcom/oplus/camera/ui/control/b;

    invoke-direct {v3}, Lcom/oplus/camera/ui/control/b;-><init>()V

    const-string v4, "button_color_inside_none"

    .line 351
    invoke-virtual {v3, v4}, Lcom/oplus/camera/ui/control/b;->a(Ljava/lang/String;)V

    .line 352
    invoke-virtual {v3, v2}, Lcom/oplus/camera/ui/control/b;->a(I)V

    .line 354
    iget-object v2, p0, Lcom/oplus/camera/capmode/d;->mCameraUIInterface:Lcom/oplus/camera/ui/CameraUIInterface;

    invoke-interface {v2, v3}, Lcom/oplus/camera/ui/CameraUIInterface;->a(Lcom/oplus/camera/ui/control/b;)V

    .line 355
    iget-object v2, p0, Lcom/oplus/camera/capmode/d;->mCameraUIInterface:Lcom/oplus/camera/ui/CameraUIInterface;

    invoke-interface {v2, v1, v1}, Lcom/oplus/camera/ui/CameraUIInterface;->a(ZZ)V

    .line 356
    invoke-virtual {p0, v1, v1, v0}, Lcom/oplus/camera/capmode/d;->restoreAllViews(ZZZ)V

    return-void

    :cond_5
    :goto_1
    const-string v2, "onTimerCountDownEnd, resetAfterPictureTaken"

    .line 335
    invoke-static {v3, v2}, Lcom/oplus/camera/e;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 337
    iget-object v2, p0, Lcom/oplus/camera/capmode/d;->mCameraUIInterface:Lcom/oplus/camera/ui/CameraUIInterface;

    invoke-interface {v2, v0, v1}, Lcom/oplus/camera/ui/CameraUIInterface;->d(ZZ)V

    .line 338
    iget-boolean v1, p0, Lcom/oplus/camera/capmode/d;->mbBurstShot:Z

    invoke-virtual {p0, v0, v1}, Lcom/oplus/camera/capmode/d;->resetAfterPictureTaken(ZZ)V

    return-void
.end method

.method public onUltraWideAngleOpened()V
    .locals 3

    .line 3974
    invoke-virtual {p0}, Lcom/oplus/camera/capmode/d;->isHighPictureSize()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 3975
    iget-object v0, p0, Lcom/oplus/camera/capmode/d;->mPreferences:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const/4 v1, 0x0

    const-string v2, "key_high_picture_size"

    .line 3976
    invoke-interface {v0, v2, v1}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 3977
    iget-object p0, p0, Lcom/oplus/camera/capmode/d;->mActivity:Landroid/app/Activity;

    const v1, 0x7f1002be

    invoke-virtual {p0, v1}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object p0

    const-string v1, "pref_camera_photo_ratio_key"

    invoke-interface {v0, v1, p0}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 3978
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    :cond_0
    return-void
.end method

.method public onUpdateCameraSettingMenu()V
    .locals 1

    const-string v0, "key_photo_mode_filter"

    .line 2179
    invoke-virtual {p0, v0}, Lcom/oplus/camera/capmode/d;->getSupportFunction(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2180
    invoke-virtual {p0}, Lcom/oplus/camera/capmode/d;->getCurrFilterIndex()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/oplus/camera/capmode/d;->isMonoIndex(I)Z

    move-result v0

    invoke-direct {p0, v0}, Lcom/oplus/camera/capmode/d;->updateMenuWithMono(Z)V

    .line 2183
    :cond_0
    invoke-super {p0}, Lcom/oplus/camera/capmode/BaseMode;->onUpdateCameraSettingMenu()V

    return-void
.end method

.method public onZoomChanged()V
    .locals 0

    .line 4185
    invoke-super {p0}, Lcom/oplus/camera/capmode/BaseMode;->onZoomChanged()V

    .line 4186
    invoke-virtual {p0}, Lcom/oplus/camera/capmode/d;->displayScreenHintIconInSwitchOn()V

    return-void
.end method

.method public onZoomMenuCollapsed()V
    .locals 1

    .line 4178
    invoke-virtual {p0}, Lcom/oplus/camera/capmode/d;->isGoogleLensEnable()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    .line 4179
    invoke-virtual {p0, v0}, Lcom/oplus/camera/capmode/d;->showGoogleLensIcon(Z)V

    :cond_0
    return-void
.end method

.method public onZoomMenuExpand()V
    .locals 2

    .line 4168
    invoke-virtual {p0}, Lcom/oplus/camera/capmode/d;->isGoogleLensEnable()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 4169
    invoke-virtual {p0, v1}, Lcom/oplus/camera/capmode/d;->hideGoogleLensIcon(Z)V

    .line 4172
    :cond_0
    invoke-virtual {p0}, Lcom/oplus/camera/capmode/d;->isAISceneOpen()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 4173
    iget-object p0, p0, Lcom/oplus/camera/capmode/d;->mCameraUIInterface:Lcom/oplus/camera/ui/CameraUIInterface;

    invoke-interface {p0, v1}, Lcom/oplus/camera/ui/CameraUIInterface;->l(Z)V

    :cond_1
    return-void
.end method

.method protected resetAfterPictureTaken(ZZ)V
    .locals 3

    .line 3009
    iget-boolean v0, p0, Lcom/oplus/camera/capmode/d;->mbCaptureRawTimeDone:Z

    if-nez v0, :cond_0

    if-eqz p1, :cond_0

    const-string p0, "CommonCapMode"

    const-string p1, "resetAfterPictureTaken, CaptureRawTime not end"

    .line 3010
    invoke-static {p0, p1}, Lcom/oplus/camera/e;->a(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    .line 3015
    :cond_0
    iget-object v0, p0, Lcom/oplus/camera/capmode/d;->mCameraUIInterface:Lcom/oplus/camera/ui/CameraUIInterface;

    invoke-virtual {p0}, Lcom/oplus/camera/capmode/d;->getShutterButtonInfo()Lcom/oplus/camera/ui/control/b;

    move-result-object v1

    const-string v2, "pref_burst_shot_key"

    .line 3016
    invoke-virtual {p0, v2}, Lcom/oplus/camera/capmode/d;->getSupportFunction(Ljava/lang/String;)Z

    move-result v2

    .line 3015
    invoke-interface {v0, v1, v2}, Lcom/oplus/camera/ui/CameraUIInterface;->a(Lcom/oplus/camera/ui/control/b;Z)V

    .line 3018
    iget-object v0, p0, Lcom/oplus/camera/capmode/d;->mCameraUIInterface:Lcom/oplus/camera/ui/CameraUIInterface;

    invoke-interface {v0}, Lcom/oplus/camera/ui/CameraUIInterface;->A()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_1

    .line 3019
    invoke-virtual {p0}, Lcom/oplus/camera/capmode/d;->isPIModeOpen()Z

    move-result v0

    if-eqz v0, :cond_1

    if-nez p2, :cond_1

    iget-object p2, p0, Lcom/oplus/camera/capmode/d;->mCameraUIInterface:Lcom/oplus/camera/ui/CameraUIInterface;

    .line 3021
    invoke-interface {p2}, Lcom/oplus/camera/ui/CameraUIInterface;->K()Z

    move-result p2

    if-eqz p2, :cond_1

    .line 3022
    iget-object p2, p0, Lcom/oplus/camera/capmode/d;->mCameraUIInterface:Lcom/oplus/camera/ui/CameraUIInterface;

    invoke-interface {p2, v1, v1}, Lcom/oplus/camera/ui/CameraUIInterface;->l(ZZ)V

    :cond_1
    if-eqz p1, :cond_5

    .line 3026
    iget-boolean p1, p0, Lcom/oplus/camera/capmode/d;->mbTripodNight:Z

    if-nez p1, :cond_2

    iget-boolean p1, p0, Lcom/oplus/camera/capmode/d;->mbSupportNightPictureTime:Z

    if-nez p1, :cond_2

    const/4 p1, 0x2

    iget p2, p0, Lcom/oplus/camera/capmode/d;->mNightAlgoTriggeredStep:I

    if-eq p1, p2, :cond_2

    .line 3029
    invoke-virtual {p0}, Lcom/oplus/camera/capmode/d;->isSuperNightShutterCountDownOpen()Z

    move-result p1

    if-eqz p1, :cond_3

    .line 3030
    :cond_2
    iget-boolean p1, p0, Lcom/oplus/camera/capmode/d;->mbPaused:Z

    const/4 p2, 0x1

    xor-int/2addr p1, p2

    invoke-virtual {p0, p1, p2, v1}, Lcom/oplus/camera/capmode/d;->restoreAllViews(ZZZ)V

    .line 3031
    iget-object p1, p0, Lcom/oplus/camera/capmode/d;->mCameraUIInterface:Lcom/oplus/camera/ui/CameraUIInterface;

    const p2, 0x7f100314

    invoke-interface {p1, p2}, Lcom/oplus/camera/ui/CameraUIInterface;->a(I)V

    .line 3032
    iput-boolean v1, p0, Lcom/oplus/camera/capmode/d;->mbTripodNight:Z

    .line 3035
    :cond_3
    iget-object p1, p0, Lcom/oplus/camera/capmode/d;->mOneCamera:Lcom/oplus/camera/e/d;

    invoke-interface {p1, v1}, Lcom/oplus/camera/e/d;->o(I)V

    .line 3037
    invoke-virtual {p0}, Lcom/oplus/camera/capmode/d;->isInNightProMode()Z

    move-result p1

    if-nez p1, :cond_4

    iget-object p1, p0, Lcom/oplus/camera/capmode/d;->mCameraInterface:Lcom/oplus/camera/capmode/a;

    if-eqz p1, :cond_4

    iget-object p1, p0, Lcom/oplus/camera/capmode/d;->mCameraInterface:Lcom/oplus/camera/capmode/a;

    invoke-interface {p1}, Lcom/oplus/camera/capmode/a;->ae()Z

    move-result p1

    if-nez p1, :cond_4

    .line 3038
    iget-object p1, p0, Lcom/oplus/camera/capmode/d;->mCameraInterface:Lcom/oplus/camera/capmode/a;

    invoke-interface {p1}, Lcom/oplus/camera/capmode/a;->ac()V

    .line 3039
    iget-object p1, p0, Lcom/oplus/camera/capmode/d;->mOneCamera:Lcom/oplus/camera/e/d;

    const/4 p2, 0x4

    .line 3040
    invoke-static {}, Lcom/oplus/camera/a;->b()[Landroid/hardware/camera2/params/MeteringRectangle;

    move-result-object v0

    invoke-static {}, Lcom/oplus/camera/a;->b()[Landroid/hardware/camera2/params/MeteringRectangle;

    move-result-object v2

    .line 3039
    invoke-interface {p1, p2, v0, v2, v1}, Lcom/oplus/camera/e/d;->a(I[Landroid/hardware/camera2/params/MeteringRectangle;[Landroid/hardware/camera2/params/MeteringRectangle;Z)V

    .line 3043
    :cond_4
    iget-object p1, p0, Lcom/oplus/camera/capmode/d;->mOneCamera:Lcom/oplus/camera/e/d;

    sget-object p2, Landroid/hardware/camera2/CaptureRequest;->CONTROL_AWB_LOCK:Landroid/hardware/camera2/CaptureRequest$Key;

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-interface {p1, p2, v0}, Lcom/oplus/camera/e/d;->a(Landroid/hardware/camera2/CaptureRequest$Key;Ljava/lang/Object;)V

    .line 3044
    iget-object p1, p0, Lcom/oplus/camera/capmode/d;->mOneCamera:Lcom/oplus/camera/e/d;

    const/4 p2, 0x0

    invoke-interface {p1, p2}, Lcom/oplus/camera/e/d;->a(Lcom/oplus/camera/e/d$c;)V

    .line 3046
    invoke-virtual {p0}, Lcom/oplus/camera/capmode/d;->getCurrFilterIndex()I

    move-result p1

    invoke-virtual {p0, p1}, Lcom/oplus/camera/capmode/d;->updateFilterParam(I)V

    .line 3047
    invoke-virtual {p0}, Lcom/oplus/camera/capmode/d;->resetHdrAndFlashModeAfterCapture()V

    .line 3048
    invoke-direct {p0}, Lcom/oplus/camera/capmode/d;->resetPIModeAfterCapture()V

    .line 3049
    invoke-virtual {p0}, Lcom/oplus/camera/capmode/d;->displayScreenHintIconInSwitchOn()V

    :cond_5
    return-void
.end method

.method public resetCaptureButton()V
    .locals 3

    .line 4056
    iget-object v0, p0, Lcom/oplus/camera/capmode/d;->mCameraInterface:Lcom/oplus/camera/capmode/a;

    invoke-interface {v0}, Lcom/oplus/camera/capmode/a;->i()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 4057
    iget-object v0, p0, Lcom/oplus/camera/capmode/d;->mCameraUIInterface:Lcom/oplus/camera/ui/CameraUIInterface;

    const/4 v1, 0x1

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Lcom/oplus/camera/ui/CameraUIInterface;->d(ZZ)V

    .line 4060
    :cond_0
    iget-object v0, p0, Lcom/oplus/camera/capmode/d;->mCameraUIInterface:Lcom/oplus/camera/ui/CameraUIInterface;

    invoke-interface {v0}, Lcom/oplus/camera/ui/CameraUIInterface;->s()I

    move-result v0

    const/4 v1, 0x4

    if-eq v0, v1, :cond_1

    iget-object v0, p0, Lcom/oplus/camera/capmode/d;->mCameraUIInterface:Lcom/oplus/camera/ui/CameraUIInterface;

    invoke-interface {v0}, Lcom/oplus/camera/ui/CameraUIInterface;->s()I

    move-result v0

    const/16 v1, 0x1c

    if-ne v0, v1, :cond_2

    .line 4061
    :cond_1
    iget-object v0, p0, Lcom/oplus/camera/capmode/d;->mCameraUIInterface:Lcom/oplus/camera/ui/CameraUIInterface;

    invoke-virtual {p0}, Lcom/oplus/camera/capmode/d;->getShutterButtonInfo()Lcom/oplus/camera/ui/control/b;

    move-result-object v1

    const-string v2, "pref_burst_shot_key"

    .line 4062
    invoke-virtual {p0, v2}, Lcom/oplus/camera/capmode/d;->getSupportFunction(Ljava/lang/String;)Z

    move-result p0

    .line 4061
    invoke-interface {v0, v1, p0}, Lcom/oplus/camera/ui/CameraUIInterface;->a(Lcom/oplus/camera/ui/control/b;Z)V

    :cond_2
    return-void
.end method

.method public resetFiltersList()V
    .locals 3

    const-string v0, "CommonCapMode"

    const-string v1, "resetFilterList() - Grand tour filters"

    .line 1890
    invoke-static {v0, v1}, Lcom/oplus/camera/e;->b(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "key_support_grand_tour_fitlers"

    .line 1892
    invoke-virtual {p0, v0}, Lcom/oplus/camera/capmode/d;->getSupportFunction(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1893
    invoke-virtual {p0}, Lcom/oplus/camera/capmode/d;->getCurrFilterType()Ljava/lang/String;

    move-result-object v0

    .line 1896
    invoke-virtual {p0}, Lcom/oplus/camera/capmode/d;->getFilterEffectPrevSelectedKey()Ljava/lang/String;

    move-result-object v1

    const-string v2, "key_filter_prev_selected_filterType_other_app"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1897
    iget-object v0, p0, Lcom/oplus/camera/capmode/d;->mPreferences:Landroid/content/SharedPreferences;

    invoke-virtual {p0}, Lcom/oplus/camera/capmode/d;->getFilterEffectPrevSelectedKey()Ljava/lang/String;

    move-result-object v1

    const-string v2, "default"

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1900
    :cond_0
    invoke-static {}, Lcom/oplus/camera/ui/preview/a/j;->f()V

    .line 1901
    iget v1, p0, Lcom/oplus/camera/capmode/d;->mCameraId:I

    invoke-static {v0, v1}, Lcom/oplus/camera/ui/preview/a/j;->a(Ljava/lang/String;I)I

    move-result v0

    .line 1902
    invoke-virtual {p0, v0}, Lcom/oplus/camera/capmode/d;->onFilterItemChange(I)V

    :cond_1
    return-void
.end method

.method protected resetWhenCaptureFail()V
    .locals 2

    .line 4705
    invoke-super {p0}, Lcom/oplus/camera/capmode/BaseMode;->resetWhenCaptureFail()V

    .line 4707
    iget-object v0, p0, Lcom/oplus/camera/capmode/d;->mActivity:Landroid/app/Activity;

    if-eqz v0, :cond_0

    .line 4708
    iget-object v0, p0, Lcom/oplus/camera/capmode/d;->mActivity:Landroid/app/Activity;

    new-instance v1, Lcom/oplus/camera/capmode/-$$Lambda$d$19iBhqhD5oPK5U7BWQ2wrzx52H8;

    invoke-direct {v1, p0}, Lcom/oplus/camera/capmode/-$$Lambda$d$19iBhqhD5oPK5U7BWQ2wrzx52H8;-><init>(Lcom/oplus/camera/capmode/d;)V

    invoke-virtual {v0, v1}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    :cond_0
    return-void
.end method

.method protected restoreAllViews(Z)V
    .locals 2

    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 2765
    invoke-virtual {p0, p1, v0, v1}, Lcom/oplus/camera/capmode/d;->restoreAllViews(ZZZ)V

    return-void
.end method

.method protected restoreAllViews(ZZZ)V
    .locals 4

    .line 4489
    iget-object v0, p0, Lcom/oplus/camera/capmode/d;->mCameraUIInterface:Lcom/oplus/camera/ui/CameraUIInterface;

    const/4 v1, 0x1

    invoke-interface {v0, v1}, Lcom/oplus/camera/ui/CameraUIInterface;->g(Z)V

    .line 4490
    iget-object v0, p0, Lcom/oplus/camera/capmode/d;->mCameraUIInterface:Lcom/oplus/camera/ui/CameraUIInterface;

    const/4 v2, 0x0

    const/16 v3, 0x8

    invoke-interface {v0, v3, v2}, Lcom/oplus/camera/ui/CameraUIInterface;->c(IZ)V

    .line 4491
    iget-object v0, p0, Lcom/oplus/camera/capmode/d;->mCameraUIInterface:Lcom/oplus/camera/ui/CameraUIInterface;

    invoke-interface {v0, v2}, Lcom/oplus/camera/ui/CameraUIInterface;->g(I)V

    .line 4492
    iget-object v0, p0, Lcom/oplus/camera/capmode/d;->mCameraUIInterface:Lcom/oplus/camera/ui/CameraUIInterface;

    iget v3, p0, Lcom/oplus/camera/capmode/d;->mCameraId:I

    .line 4493
    invoke-virtual {p0, v3}, Lcom/oplus/camera/capmode/d;->getCameraInfo(I)Lcom/oplus/camera/e/h;

    move-result-object v3

    invoke-virtual {p0, v3}, Lcom/oplus/camera/capmode/d;->getPreviewSize(Lcom/oplus/camera/e/h;)Landroid/util/Size;

    move-result-object v3

    .line 4492
    invoke-static {v3}, Lcom/oplus/camera/util/Util;->c(Landroid/util/Size;)Z

    move-result v3

    invoke-interface {v0, v2, v3}, Lcom/oplus/camera/ui/CameraUIInterface;->b(IZ)V

    .line 4494
    iget-object v0, p0, Lcom/oplus/camera/capmode/d;->mCameraUIInterface:Lcom/oplus/camera/ui/CameraUIInterface;

    invoke-interface {v0, v1}, Lcom/oplus/camera/ui/CameraUIInterface;->P(Z)V

    const-string v0, "pref_support_switch_camera"

    .line 4496
    invoke-virtual {p0, v0}, Lcom/oplus/camera/capmode/d;->getSupportFunction(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 4497
    iget-object v0, p0, Lcom/oplus/camera/capmode/d;->mCameraUIInterface:Lcom/oplus/camera/ui/CameraUIInterface;

    invoke-interface {v0, v2}, Lcom/oplus/camera/ui/CameraUIInterface;->d(I)V

    .line 4500
    :cond_0
    invoke-virtual {p0}, Lcom/oplus/camera/capmode/d;->supportBeautyButton()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 4501
    iget-object v0, p0, Lcom/oplus/camera/capmode/d;->mCameraUIInterface:Lcom/oplus/camera/ui/CameraUIInterface;

    invoke-interface {v0, v1, v2}, Lcom/oplus/camera/ui/CameraUIInterface;->l(ZZ)V

    :cond_1
    if-eqz p2, :cond_2

    .line 4505
    iget-object p2, p0, Lcom/oplus/camera/capmode/d;->mCameraUIInterface:Lcom/oplus/camera/ui/CameraUIInterface;

    invoke-interface {p2, v2}, Lcom/oplus/camera/ui/CameraUIInterface;->f(I)V

    .line 4508
    :cond_2
    iget-object p2, p0, Lcom/oplus/camera/capmode/d;->mCameraInterface:Lcom/oplus/camera/capmode/a;

    invoke-interface {p2}, Lcom/oplus/camera/capmode/a;->az()V

    if-eqz p1, :cond_3

    .line 4511
    iget-object p1, p0, Lcom/oplus/camera/capmode/d;->mCameraUIInterface:Lcom/oplus/camera/ui/CameraUIInterface;

    invoke-interface {p1}, Lcom/oplus/camera/ui/CameraUIInterface;->as()V

    .line 4514
    :cond_3
    iget-object p1, p0, Lcom/oplus/camera/capmode/d;->mCameraUIInterface:Lcom/oplus/camera/ui/CameraUIInterface;

    invoke-interface {p1}, Lcom/oplus/camera/ui/CameraUIInterface;->A()Z

    move-result p1

    if-nez p1, :cond_6

    .line 4515
    iget-object p1, p0, Lcom/oplus/camera/capmode/d;->mCameraUIInterface:Lcom/oplus/camera/ui/CameraUIInterface;

    invoke-interface {p1, v1}, Lcom/oplus/camera/ui/CameraUIInterface;->r(Z)V

    .line 4517
    invoke-virtual {p0}, Lcom/oplus/camera/capmode/d;->isPanelMode()Z

    move-result p1

    if-eqz p1, :cond_4

    .line 4518
    iget-object p1, p0, Lcom/oplus/camera/capmode/d;->mCameraUIInterface:Lcom/oplus/camera/ui/CameraUIInterface;

    invoke-interface {p1, v2, v1}, Lcom/oplus/camera/ui/CameraUIInterface;->a(IZ)V

    goto :goto_0

    .line 4520
    :cond_4
    iget-object p1, p0, Lcom/oplus/camera/capmode/d;->mCameraUIInterface:Lcom/oplus/camera/ui/CameraUIInterface;

    invoke-interface {p1, v2, v1}, Lcom/oplus/camera/ui/CameraUIInterface;->a(II)V

    .line 4523
    :goto_0
    invoke-virtual {p0}, Lcom/oplus/camera/capmode/d;->isShowProPanelMenu()Z

    move-result p1

    if-nez p1, :cond_6

    .line 4524
    invoke-virtual {p0}, Lcom/oplus/camera/capmode/d;->isInNightProMode()Z

    move-result p1

    if-eqz p1, :cond_5

    if-nez p3, :cond_6

    .line 4525
    :cond_5
    iget-object p0, p0, Lcom/oplus/camera/capmode/d;->mCameraInterface:Lcom/oplus/camera/capmode/a;

    invoke-interface {p0, v1, v2}, Lcom/oplus/camera/capmode/a;->a(ZZ)V

    :cond_6
    return-void
.end method

.method protected restoreEffectAfterBurstShot()V
    .locals 2

    .line 1065
    iget v0, p0, Lcom/oplus/camera/capmode/d;->mSaveFilterIndexBeforeBurstShot:I

    invoke-virtual {p0, v0}, Lcom/oplus/camera/capmode/d;->onFilterItemChange(I)V

    .line 1066
    iget v0, p0, Lcom/oplus/camera/capmode/d;->mSaveBeautyIndexBeforeBurstShot:I

    invoke-virtual {p0, v0}, Lcom/oplus/camera/capmode/d;->onFaceBeautyItemChange(I)V

    .line 1067
    invoke-virtual {p0}, Lcom/oplus/camera/capmode/d;->updateEffectMenuNames()V

    .line 1068
    iget-object v0, p0, Lcom/oplus/camera/capmode/d;->mCameraUIInterface:Lcom/oplus/camera/ui/CameraUIInterface;

    const-string v1, "pref_filter_menu"

    invoke-interface {v0, v1}, Lcom/oplus/camera/ui/CameraUIInterface;->g(Ljava/lang/String;)V

    .line 1069
    iget-object v0, p0, Lcom/oplus/camera/capmode/d;->mCameraUIInterface:Lcom/oplus/camera/ui/CameraUIInterface;

    iget p0, p0, Lcom/oplus/camera/capmode/d;->mSaveBeautyIndexBeforeBurstShot:I

    invoke-interface {v0, p0}, Lcom/oplus/camera/ui/CameraUIInterface;->j(I)V

    return-void
.end method

.method protected saveAndClearEffectBeforeBurstShot()V
    .locals 3

    .line 1045
    invoke-virtual {p0}, Lcom/oplus/camera/capmode/d;->getCurrFilterIndex()I

    move-result v0

    iput v0, p0, Lcom/oplus/camera/capmode/d;->mSaveFilterIndexBeforeBurstShot:I

    .line 1046
    invoke-virtual {p0}, Lcom/oplus/camera/capmode/d;->getFaceBeautyCurrIndex()I

    move-result v0

    iput v0, p0, Lcom/oplus/camera/capmode/d;->mSaveBeautyIndexBeforeBurstShot:I

    .line 1047
    sget v0, Lcom/oplus/camera/ui/preview/a/j;->a:I

    invoke-virtual {p0, v0}, Lcom/oplus/camera/capmode/d;->onFilterItemChange(I)V

    const/4 v0, 0x0

    .line 1048
    invoke-virtual {p0, v0}, Lcom/oplus/camera/capmode/d;->onFaceBeautyItemChange(I)V

    .line 1049
    invoke-virtual {p0}, Lcom/oplus/camera/capmode/d;->updateEffectMenuNames()V

    .line 1050
    iget-object v1, p0, Lcom/oplus/camera/capmode/d;->mCameraUIInterface:Lcom/oplus/camera/ui/CameraUIInterface;

    const-string v2, "pref_filter_menu"

    invoke-interface {v1, v2}, Lcom/oplus/camera/ui/CameraUIInterface;->g(Ljava/lang/String;)V

    .line 1051
    iget-object p0, p0, Lcom/oplus/camera/capmode/d;->mCameraUIInterface:Lcom/oplus/camera/ui/CameraUIInterface;

    invoke-interface {p0, v0}, Lcom/oplus/camera/ui/CameraUIInterface;->j(I)V

    return-void
.end method

.method protected setBeauty3DState(I)V
    .locals 0

    .line 3831
    iget-object p0, p0, Lcom/oplus/camera/capmode/d;->mBeauty3DManager:Lcom/oplus/camera/d/b;

    if-eqz p0, :cond_0

    .line 3832
    invoke-virtual {p0, p1}, Lcom/oplus/camera/d/b;->a(I)V

    :cond_0
    return-void
.end method

.method public setConfigureParameter(Lcom/oplus/ocs/camera/CameraDeviceConfig$Builder;)V
    .locals 1

    .line 2170
    invoke-super {p0, p1}, Lcom/oplus/camera/capmode/BaseMode;->setConfigureParameter(Lcom/oplus/ocs/camera/CameraDeviceConfig$Builder;)V

    .line 2172
    invoke-virtual {p0}, Lcom/oplus/camera/capmode/d;->getCurrFilterIndex()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/oplus/camera/capmode/d;->isMonoIndex(I)Z

    move-result p0

    if-eqz p0, :cond_0

    .line 2173
    sget-object p0, Lcom/oplus/ocs/camera/CameraParameter;->MONO_FILTER_TYPE:Lcom/oplus/ocs/camera/CameraParameter$ConfigureKey;

    const-string v0, "black_white"

    invoke-virtual {p1, p0, v0}, Lcom/oplus/ocs/camera/CameraDeviceConfig$Builder;->setParameter(Lcom/oplus/ocs/camera/CameraParameter$ConfigureKey;Ljava/lang/Object;)Lcom/oplus/ocs/camera/CameraDeviceConfig$Builder;

    :cond_0
    return-void
.end method

.method public setPIEnable(IZ)V
    .locals 7

    .line 531
    iget-object v0, p0, Lcom/oplus/camera/capmode/d;->mOneCamera:Lcom/oplus/camera/e/d;

    if-nez v0, :cond_0

    return-void

    .line 535
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "setPIEnable, code: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", enable: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "CommonCapMode"

    invoke-static {v1, v0}, Lcom/oplus/camera/e;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 537
    iget-boolean v0, p0, Lcom/oplus/camera/capmode/d;->mbSuperTextOpen:Z

    .line 539
    iget-boolean v2, p0, Lcom/oplus/camera/capmode/d;->mbBurstShot:Z

    const-string v3, "func_super_text_gpu_process"

    const/4 v4, 0x0

    if-nez v2, :cond_1

    const-string v2, "com.oplus.feature.pi.ai.support"

    .line 540
    invoke-static {v2}, Lcom/oplus/camera/aps/config/CameraConfig;->getConfigBooleanValue(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1

    const/4 v2, 0x4

    if-ne v2, p1, :cond_1

    .line 542
    iput-boolean p2, p0, Lcom/oplus/camera/capmode/d;->mbSuperTextOpen:Z

    .line 544
    invoke-virtual {p0, v3}, Lcom/oplus/camera/capmode/d;->getSupportFunction(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_2

    iget-object v2, p0, Lcom/oplus/camera/capmode/d;->mPreviewEffectProcess:Lcom/oplus/camera/ui/preview/a/t;

    if-eqz v2, :cond_2

    .line 545
    iget-object v2, p0, Lcom/oplus/camera/capmode/d;->mPreviewEffectProcess:Lcom/oplus/camera/ui/preview/a/t;

    const/16 v5, 0x40

    invoke-interface {v2, v5}, Lcom/oplus/camera/ui/preview/a/t;->b(I)V

    goto :goto_0

    :cond_1
    const/4 v2, 0x0

    .line 548
    iput-boolean v2, p0, Lcom/oplus/camera/capmode/d;->mbSuperTextOpen:Z

    const/16 v5, 0xc

    if-ne v5, p1, :cond_2

    .line 551
    iget-boolean v5, p0, Lcom/oplus/camera/capmode/d;->mbNightCheckClosed:Z

    if-nez v5, :cond_2

    if-eqz p2, :cond_2

    const/4 v5, 0x1

    .line 552
    iput-boolean v5, p0, Lcom/oplus/camera/capmode/d;->mbNightCheckClosed:Z

    .line 553
    iget-object v6, p0, Lcom/oplus/camera/capmode/d;->mOneCamera:Lcom/oplus/camera/e/d;

    invoke-interface {v6, v2}, Lcom/oplus/camera/e/d;->o(I)V

    .line 554
    iget-object v2, p0, Lcom/oplus/camera/capmode/d;->mOneCamera:Lcom/oplus/camera/e/d;

    invoke-interface {v2, v4}, Lcom/oplus/camera/e/d;->a(Lcom/oplus/camera/e/d$c;)V

    .line 555
    iget v2, p0, Lcom/oplus/camera/capmode/d;->mNightClosedCounter:I

    add-int/2addr v2, v5

    iput v2, p0, Lcom/oplus/camera/capmode/d;->mNightClosedCounter:I

    .line 560
    :cond_2
    :goto_0
    invoke-virtual {p0, v3}, Lcom/oplus/camera/capmode/d;->getSupportFunction(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_3

    iget-object v2, p0, Lcom/oplus/camera/capmode/d;->mPreviewEffectProcess:Lcom/oplus/camera/ui/preview/a/t;

    if-eqz v2, :cond_3

    .line 561
    iget-object v2, p0, Lcom/oplus/camera/capmode/d;->mPreviewEffectProcess:Lcom/oplus/camera/ui/preview/a/t;

    iget-boolean v3, p0, Lcom/oplus/camera/capmode/d;->mbSuperTextOpen:Z

    invoke-interface {v2, v3}, Lcom/oplus/camera/ui/preview/a/t;->k(Z)V

    :cond_3
    const-string v2, "func_super_text"

    .line 564
    invoke-virtual {p0, v2}, Lcom/oplus/camera/capmode/d;->getSupportFunction(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_4

    if-eqz v0, :cond_4

    iget-boolean v0, p0, Lcom/oplus/camera/capmode/d;->mbSuperTextOpen:Z

    if-nez v0, :cond_4

    const-string v0, "setPIEnable, clear SuperText!"

    .line 565
    invoke-static {v1, v0}, Lcom/oplus/camera/e;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 567
    iget-object v0, p0, Lcom/oplus/camera/capmode/d;->mCameraUIInterface:Lcom/oplus/camera/ui/CameraUIInterface;

    invoke-interface {v0, v4}, Lcom/oplus/camera/ui/CameraUIInterface;->a(Lcom/oplus/camera/u/a;)V

    :cond_4
    const/16 v0, 0x12

    if-ne v0, p1, :cond_5

    .line 571
    iget-object p1, p0, Lcom/oplus/camera/capmode/d;->mOneCamera:Lcom/oplus/camera/e/d;

    invoke-interface {p1, p2}, Lcom/oplus/camera/e/d;->B(Z)V

    .line 572
    iget-object p0, p0, Lcom/oplus/camera/capmode/d;->mOneCamera:Lcom/oplus/camera/e/d;

    invoke-interface {p0, v4}, Lcom/oplus/camera/e/d;->a(Lcom/oplus/camera/e/d$c;)V

    goto :goto_1

    .line 574
    :cond_5
    iget-object p1, p0, Lcom/oplus/camera/capmode/d;->mCameraUIInterface:Lcom/oplus/camera/ui/CameraUIInterface;

    invoke-interface {p1}, Lcom/oplus/camera/ui/CameraUIInterface;->aa()I

    move-result p1

    .line 575
    iget-object p2, p0, Lcom/oplus/camera/capmode/d;->mOneCamera:Lcom/oplus/camera/e/d;

    invoke-interface {p2, p1}, Lcom/oplus/camera/e/d;->p(I)V

    .line 576
    iget-object p0, p0, Lcom/oplus/camera/capmode/d;->mOneCamera:Lcom/oplus/camera/e/d;

    invoke-interface {p0, v4}, Lcom/oplus/camera/e/d;->a(Lcom/oplus/camera/e/d$c;)V

    :goto_1
    return-void
.end method

.method public setPreburstShotCapture(Z)V
    .locals 0

    .line 4565
    iput-boolean p1, p0, Lcom/oplus/camera/capmode/d;->mbPreburstShotCapture:Z

    return-void
.end method

.method public shouldShowSteadyTips()Z
    .locals 8

    .line 2202
    invoke-virtual {p0}, Lcom/oplus/camera/capmode/d;->isInNightProcess()Z

    move-result v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_0

    .line 2203
    invoke-virtual {p0}, Lcom/oplus/camera/capmode/d;->isTripodNight()Z

    move-result v3

    if-eqz v3, :cond_0

    move v3, v1

    goto :goto_0

    :cond_0
    move v3, v2

    .line 2204
    :goto_0
    invoke-virtual {p0}, Lcom/oplus/camera/capmode/d;->isInNightProProcess()Z

    move-result v4

    .line 2207
    iget-object v5, p0, Lcom/oplus/camera/capmode/d;->mApsDecisionResultLock:Ljava/lang/Object;

    monitor-enter v5

    .line 2208
    :try_start_0
    iget-object v6, p0, Lcom/oplus/camera/capmode/d;->mDecisionResult:Lcom/oplus/camera/aps/util/CameraApsDecision;

    .line 2209
    monitor-exit v5
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2211
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "shouldShowSteadyTips, isInNightProcess: "

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v7, ", isTripodNight: "

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v7, ", mbBurstShot: "

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v7, p0, Lcom/oplus/camera/capmode/d;->mbBurstShot:Z

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v7, ", mbSceneNight: "

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v7, p0, Lcom/oplus/camera/capmode/d;->mbSceneNight:Z

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v7, ", mSupportCaptureZoomFeature: "

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-nez v6, :cond_1

    const/4 v7, 0x0

    goto :goto_1

    .line 2214
    :cond_1
    iget v7, v6, Lcom/oplus/camera/aps/util/CameraApsDecision;->mSupportCaptureZoomFeature:I

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    :goto_1
    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v7, ", mRequestNum: "

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2215
    iget-boolean v7, p0, Lcom/oplus/camera/capmode/d;->mbBurstShot:Z

    if-eqz v7, :cond_2

    sget v7, Lcom/oplus/camera/util/Util;->d:I

    goto :goto_2

    :cond_2
    invoke-virtual {p0}, Lcom/oplus/camera/capmode/d;->getDefaultCaptureNumber()I

    move-result v7

    :goto_2
    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v7, ", isTripodModeOpened: "

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2216
    invoke-virtual {p0}, Lcom/oplus/camera/capmode/d;->isTripodModeOpened()Z

    move-result v7

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    const-string v7, "CommonCapMode"

    .line 2211
    invoke-static {v7, v5}, Lcom/oplus/camera/e;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 2218
    iget-boolean v5, p0, Lcom/oplus/camera/capmode/d;->mbBurstShot:Z

    if-nez v5, :cond_8

    invoke-virtual {p0}, Lcom/oplus/camera/capmode/d;->isTripodModeOpened()Z

    move-result v5

    if-eqz v5, :cond_3

    goto :goto_3

    .line 2222
    :cond_3
    invoke-virtual {p0}, Lcom/oplus/camera/capmode/d;->isSuperSeNightOpen()Z

    move-result v5

    if-eqz v5, :cond_4

    return v2

    .line 2226
    :cond_4
    iget-boolean v5, p0, Lcom/oplus/camera/capmode/d;->mbSceneNight:Z

    if-nez v5, :cond_5

    if-eqz v0, :cond_6

    :cond_5
    if-nez v3, :cond_6

    if-nez v4, :cond_6

    return v1

    .line 2230
    :cond_6
    invoke-virtual {p0}, Lcom/oplus/camera/capmode/d;->getDefaultCaptureNumber()I

    move-result v0

    if-eqz v6, :cond_8

    const/4 v3, 0x4

    .line 2232
    iget v4, v6, Lcom/oplus/camera/aps/util/CameraApsDecision;->mSupportCaptureZoomFeature:I

    if-ne v3, v4, :cond_8

    if-eq v1, v0, :cond_7

    const/4 v3, 0x3

    if-gt v3, v0, :cond_8

    :cond_7
    iget-object p0, p0, Lcom/oplus/camera/capmode/d;->mCameraInterface:Lcom/oplus/camera/capmode/a;

    .line 2235
    invoke-interface {p0}, Lcom/oplus/camera/capmode/a;->i()Z

    move-result p0

    if-eqz p0, :cond_8

    return v1

    :cond_8
    :goto_3
    return v2

    :catchall_0
    move-exception p0

    .line 2209
    :try_start_1
    monitor-exit v5
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p0
.end method

.method public showBeauty3DView()V
    .locals 5

    .line 616
    iget-object v0, p0, Lcom/oplus/camera/capmode/d;->mBeauty3DManager:Lcom/oplus/camera/d/b;

    if-nez v0, :cond_0

    return-void

    .line 620
    :cond_0
    invoke-virtual {v0}, Lcom/oplus/camera/d/b;->f()I

    move-result v0

    .line 621
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "updateBeauty3DView, type: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "CommonCapMode"

    invoke-static {v2, v1}, Lcom/oplus/camera/e;->a(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v1, 0x1

    if-eq v0, v1, :cond_3

    const/16 v2, 0xa

    const/16 v3, 0x438

    const/16 v4, 0x5a0

    if-eq v0, v2, :cond_2

    const/4 v2, 0x6

    if-eq v0, v2, :cond_1

    const/4 v2, 0x7

    if-eq v0, v2, :cond_1

    const/16 v1, 0x8

    if-eq v0, v1, :cond_2

    goto :goto_0

    .line 638
    :cond_1
    iget-object p0, p0, Lcom/oplus/camera/capmode/d;->mBeauty3DManager:Lcom/oplus/camera/d/b;

    new-instance v0, Landroid/util/Size;

    invoke-direct {v0, v4, v3}, Landroid/util/Size;-><init>(II)V

    invoke-virtual {p0, v1, v0}, Lcom/oplus/camera/d/b;->a(ILandroid/util/Size;)V

    goto :goto_0

    .line 631
    :cond_2
    iget-object p0, p0, Lcom/oplus/camera/capmode/d;->mBeauty3DManager:Lcom/oplus/camera/d/b;

    const/4 v0, 0x2

    new-instance v1, Landroid/util/Size;

    invoke-direct {v1, v4, v3}, Landroid/util/Size;-><init>(II)V

    invoke-virtual {p0, v0, v1}, Lcom/oplus/camera/d/b;->a(ILandroid/util/Size;)V

    goto :goto_0

    .line 625
    :cond_3
    iget-object p0, p0, Lcom/oplus/camera/capmode/d;->mBeauty3DManager:Lcom/oplus/camera/d/b;

    invoke-virtual {p0}, Lcom/oplus/camera/d/b;->h()V

    :goto_0
    return-void
.end method

.method public showEffectMenu()Z
    .locals 1

    .line 3306
    invoke-virtual {p0}, Lcom/oplus/camera/capmode/d;->isInNightProcess()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-boolean p0, p0, Lcom/oplus/camera/capmode/d;->mbInCapturing:Z

    if-nez p0, :cond_0

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

.method public showGoogleLensIcon(Z)V
    .locals 1

    .line 4299
    iget-object v0, p0, Lcom/oplus/camera/capmode/d;->mCameraUIInterface:Lcom/oplus/camera/ui/CameraUIInterface;

    invoke-interface {v0}, Lcom/oplus/camera/ui/CameraUIInterface;->A()Z

    move-result v0

    if-nez v0, :cond_4

    iget-object v0, p0, Lcom/oplus/camera/capmode/d;->mCameraUIInterface:Lcom/oplus/camera/ui/CameraUIInterface;

    .line 4300
    invoke-interface {v0}, Lcom/oplus/camera/ui/CameraUIInterface;->K()Z

    move-result v0

    if-nez v0, :cond_4

    iget-object v0, p0, Lcom/oplus/camera/capmode/d;->mCameraUIInterface:Lcom/oplus/camera/ui/CameraUIInterface;

    .line 4301
    invoke-interface {v0}, Lcom/oplus/camera/ui/CameraUIInterface;->R()Z

    move-result v0

    if-nez v0, :cond_4

    iget-object v0, p0, Lcom/oplus/camera/capmode/d;->mCameraUIInterface:Lcom/oplus/camera/ui/CameraUIInterface;

    .line 4302
    invoke-interface {v0}, Lcom/oplus/camera/ui/CameraUIInterface;->aw()Z

    move-result v0

    if-nez v0, :cond_4

    iget-object v0, p0, Lcom/oplus/camera/capmode/d;->mCameraUIInterface:Lcom/oplus/camera/ui/CameraUIInterface;

    .line 4303
    invoke-interface {v0}, Lcom/oplus/camera/ui/CameraUIInterface;->ax()Z

    move-result v0

    if-nez v0, :cond_4

    iget-object v0, p0, Lcom/oplus/camera/capmode/d;->mCameraInterface:Lcom/oplus/camera/capmode/a;

    .line 4304
    invoke-interface {v0}, Lcom/oplus/camera/capmode/a;->A()Z

    move-result v0

    if-nez v0, :cond_4

    iget-boolean v0, p0, Lcom/oplus/camera/capmode/d;->mGoogleLensShouldShow:Z

    if-nez v0, :cond_0

    goto :goto_0

    .line 4309
    :cond_0
    iget-object v0, p0, Lcom/oplus/camera/capmode/d;->mGoogleLensIcon:Lcom/oplus/camera/ui/RotateImageView;

    if-nez v0, :cond_1

    .line 4310
    invoke-direct {p0}, Lcom/oplus/camera/capmode/d;->initGoogleLensIcon()V

    :cond_1
    if-eqz p1, :cond_2

    .line 4314
    iget-object p0, p0, Lcom/oplus/camera/capmode/d;->mGoogleLensIcon:Lcom/oplus/camera/ui/RotateImageView;

    invoke-static {p0}, Lcom/oplus/camera/util/Util;->a(Landroid/view/View;)V

    goto :goto_0

    .line 4316
    :cond_2
    iget-object p1, p0, Lcom/oplus/camera/capmode/d;->mGoogleLensIcon:Lcom/oplus/camera/ui/RotateImageView;

    invoke-virtual {p1}, Lcom/oplus/camera/ui/RotateImageView;->getAnimation()Landroid/view/animation/Animation;

    move-result-object p1

    if-eqz p1, :cond_3

    .line 4318
    invoke-virtual {p1}, Landroid/view/animation/Animation;->hasStarted()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-virtual {p1}, Landroid/view/animation/Animation;->hasEnded()Z

    move-result v0

    if-nez v0, :cond_3

    .line 4319
    invoke-virtual {p1}, Landroid/view/animation/Animation;->cancel()V

    .line 4322
    :cond_3
    iget-object p0, p0, Lcom/oplus/camera/capmode/d;->mGoogleLensIcon:Lcom/oplus/camera/ui/RotateImageView;

    const/4 p1, 0x0

    invoke-virtual {p0, p1}, Lcom/oplus/camera/ui/RotateImageView;->setVisibility(I)V

    :cond_4
    :goto_0
    return-void
.end method

.method public showNextTip()V
    .locals 3

    .line 4367
    invoke-super {p0}, Lcom/oplus/camera/capmode/BaseMode;->showNextTip()V

    .line 4369
    iget-object v0, p0, Lcom/oplus/camera/capmode/d;->mActivity:Landroid/app/Activity;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/oplus/camera/capmode/d;->mCameraUIInterface:Lcom/oplus/camera/ui/CameraUIInterface;

    if-eqz v0, :cond_3

    .line 4371
    invoke-direct {p0}, Lcom/oplus/camera/capmode/d;->isMoreModeShowing()Z

    move-result v0

    if-nez v0, :cond_3

    .line 4372
    invoke-direct {p0}, Lcom/oplus/camera/capmode/d;->showOutPreviewGuide()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    const-string v0, "key_first_beauty_tip"

    .line 4374
    invoke-virtual {p0, v0}, Lcom/oplus/camera/capmode/d;->isFirstTipsEnable(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 4375
    invoke-virtual {p0}, Lcom/oplus/camera/capmode/d;->showFirstBeautyTipView()V

    goto :goto_0

    :cond_1
    const-string v0, "key_bubble_type_zoom_ultra_wide"

    .line 4376
    invoke-virtual {p0, v0}, Lcom/oplus/camera/capmode/d;->isFirstTipsEnable(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 4377
    iget-object v0, p0, Lcom/oplus/camera/capmode/d;->mActivity:Landroid/app/Activity;

    const v1, 0x7f090434

    invoke-virtual {v0, v1}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 4380
    invoke-virtual {v0}, Landroid/view/View;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v1

    new-instance v2, Lcom/oplus/camera/capmode/d$8;

    invoke-direct {v2, p0, v0}, Lcom/oplus/camera/capmode/d$8;-><init>(Lcom/oplus/camera/capmode/d;Landroid/view/View;)V

    invoke-virtual {v1, v2}, Landroid/view/ViewTreeObserver;->addOnGlobalLayoutListener(Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    .line 4393
    :cond_2
    iget-object p0, p0, Lcom/oplus/camera/capmode/d;->mCameraUIInterface:Lcom/oplus/camera/ui/CameraUIInterface;

    invoke-interface {p0}, Lcom/oplus/camera/ui/CameraUIInterface;->aE()V

    :cond_3
    :goto_0
    return-void
.end method

.method public showUltraWideTips()V
    .locals 3

    .line 4403
    iget-object v0, p0, Lcom/oplus/camera/capmode/d;->mActivity:Landroid/app/Activity;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/oplus/camera/capmode/d;->mCameraUIInterface:Lcom/oplus/camera/ui/CameraUIInterface;

    if-eqz v0, :cond_1

    .line 4405
    invoke-direct {p0}, Lcom/oplus/camera/capmode/d;->isMoreModeShowing()Z

    move-result v0

    if-nez v0, :cond_1

    const-string v0, "key_bubble_type_zoom_ultra_wide"

    .line 4406
    invoke-virtual {p0, v0}, Lcom/oplus/camera/capmode/d;->isFirstTipsEnable(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 4407
    iget-object v0, p0, Lcom/oplus/camera/capmode/d;->mActivity:Landroid/app/Activity;

    const v1, 0x7f090434

    invoke-virtual {v0, v1}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 4410
    invoke-virtual {v0}, Landroid/view/View;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v1

    new-instance v2, Lcom/oplus/camera/capmode/d$9;

    invoke-direct {v2, p0, v0}, Lcom/oplus/camera/capmode/d$9;-><init>(Lcom/oplus/camera/capmode/d;Landroid/view/View;)V

    invoke-virtual {v1, v2}, Landroid/view/ViewTreeObserver;->addOnGlobalLayoutListener(Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    goto :goto_0

    .line 4424
    :cond_0
    invoke-static {}, Lcom/oplus/camera/j;->a()Lcom/oplus/camera/j;

    move-result-object v0

    invoke-virtual {v0}, Lcom/oplus/camera/j;->c()V

    .line 4427
    :goto_0
    iget-object p0, p0, Lcom/oplus/camera/capmode/d;->mCameraUIInterface:Lcom/oplus/camera/ui/CameraUIInterface;

    invoke-interface {p0}, Lcom/oplus/camera/ui/CameraUIInterface;->aE()V

    goto :goto_1

    .line 4429
    :cond_1
    invoke-static {}, Lcom/oplus/camera/j;->a()Lcom/oplus/camera/j;

    move-result-object p0

    invoke-virtual {p0}, Lcom/oplus/camera/j;->c()V

    :goto_1
    return-void
.end method

.method protected stopNightCountdownTime()V
    .locals 0

    .line 507
    iget-object p0, p0, Lcom/oplus/camera/capmode/d;->mNightCountDownUI:Lcom/oplus/camera/ui/p;

    invoke-virtual {p0}, Lcom/oplus/camera/ui/p;->a()V

    return-void
.end method

.method protected updateCaptureParam(Lcom/oplus/camera/e/c;)V
    .locals 2

    .line 2132
    invoke-super {p0, p1}, Lcom/oplus/camera/capmode/BaseMode;->updateCaptureParam(Lcom/oplus/camera/e/c;)V

    .line 2134
    iget-boolean p1, p0, Lcom/oplus/camera/capmode/d;->mbOcclusion:Z

    if-eqz p1, :cond_0

    invoke-virtual {p0}, Lcom/oplus/camera/capmode/d;->getCurrFilterIndex()I

    move-result p1

    invoke-virtual {p0, p1}, Lcom/oplus/camera/capmode/d;->isMonoIndex(I)Z

    move-result p1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/oplus/camera/capmode/d;->mOneCamera:Lcom/oplus/camera/e/d;

    if-eqz p1, :cond_0

    .line 2135
    iget-object p1, p0, Lcom/oplus/camera/capmode/d;->mOneCamera:Lcom/oplus/camera/e/d;

    const-string v0, "default"

    invoke-virtual {p0, v0}, Lcom/oplus/camera/capmode/d;->isFilterOpen(Ljava/lang/String;)Z

    move-result p0

    const/4 v1, 0x0

    invoke-interface {p1, v0, p0, v1}, Lcom/oplus/camera/e/d;->a(Ljava/lang/String;ZZ)V

    :cond_0
    return-void
.end method

.method public updateFilterParam(I)V
    .locals 1

    .line 2123
    invoke-virtual {p0}, Lcom/oplus/camera/capmode/d;->isPIModeOpen()Z

    move-result v0

    if-eqz v0, :cond_0

    sget v0, Lcom/oplus/camera/ui/preview/a/j;->a:I

    if-eq p1, v0, :cond_0

    .line 2124
    invoke-virtual {p0}, Lcom/oplus/camera/capmode/d;->forceClosePIEffect()V

    .line 2127
    :cond_0
    invoke-super {p0, p1}, Lcom/oplus/camera/capmode/BaseMode;->updateFilterParam(I)V

    return-void
.end method

.method public updateGrandTourCityFiltersPosition(Ljava/lang/String;)V
    .locals 3

    const-string v0, "CommonCapMode"

    if-nez p1, :cond_0

    const-string p0, "updateGrandTourCityFiltersPosition, City is null. Ignore!"

    .line 1862
    invoke-static {v0, p0}, Lcom/oplus/camera/e;->e(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    .line 1867
    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "updateGrandTourCityFiltersPosition, City : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/oplus/camera/e;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 1869
    iget-object v0, p0, Lcom/oplus/camera/capmode/d;->mPreferences:Landroid/content/SharedPreferences;

    invoke-virtual {p0}, Lcom/oplus/camera/capmode/d;->getFilterEffectPrevSelectedKey()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_2

    .line 1873
    iget-boolean v0, p0, Lcom/oplus/camera/capmode/d;->mbFirstEffectMenuOpened:Z

    if-eqz v0, :cond_1

    .line 1874
    iget-object v0, p0, Lcom/oplus/camera/capmode/d;->mPreferences:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-virtual {p0}, Lcom/oplus/camera/capmode/d;->getFilterEffectPrevSelectedKey()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0}, Lcom/oplus/camera/capmode/d;->getCurrFilterType()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 1875
    invoke-virtual {p0}, Lcom/oplus/camera/capmode/d;->getCurrFilterType()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_1
    const-string v0, "default"

    .line 1882
    :cond_2
    :goto_0
    invoke-static {p1}, Lcom/oplus/camera/ui/preview/a/j;->b(Ljava/lang/String;)V

    .line 1883
    iget v1, p0, Lcom/oplus/camera/capmode/d;->mCameraId:I

    invoke-static {v0, v1}, Lcom/oplus/camera/ui/preview/a/j;->a(Ljava/lang/String;I)I

    move-result v0

    .line 1884
    invoke-virtual {p0, v0}, Lcom/oplus/camera/capmode/d;->onFilterItemChange(I)V

    .line 1885
    invoke-super {p0, p1}, Lcom/oplus/camera/capmode/BaseMode;->updateGrandTourCityFiltersPosition(Ljava/lang/String;)V

    return-void
.end method

.method public updateInversePositionRatio(Z)V
    .locals 3

    .line 2547
    iget-object v0, p0, Lcom/oplus/camera/capmode/d;->mPreferences:Landroid/content/SharedPreferences;

    iget-object v1, p0, Lcom/oplus/camera/capmode/d;->mActivity:Landroid/app/Activity;

    const v2, 0x7f1002be

    .line 2548
    invoke-virtual {v1, v2}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v1

    const-string v2, "pref_camera_photo_ratio_key"

    .line 2547
    invoke-interface {v0, v2, v1}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "square"

    .line 2549
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3

    .line 2550
    invoke-static {}, Lcom/oplus/camera/util/Util;->t()Z

    move-result v1

    const-string v2, "standard"

    if-eqz v1, :cond_0

    invoke-static {}, Lcom/oplus/camera/util/Util;->u()Z

    move-result v1

    if-nez v1, :cond_0

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_1

    .line 2552
    :cond_0
    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    const-string v1, "standard_high"

    .line 2553
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    goto :goto_0

    .line 2556
    :cond_1
    sget-object v0, Lcom/oplus/camera/ui/inverse/e;->INS:Lcom/oplus/camera/ui/inverse/e;

    iget-object p0, p0, Lcom/oplus/camera/capmode/d;->mActivity:Landroid/app/Activity;

    const v1, 0x3f5eb852    # 0.87f

    invoke-virtual {v0, p0, v1, p1}, Lcom/oplus/camera/ui/inverse/e;->setPositionRatio(Landroid/content/Context;FZ)V

    goto :goto_2

    .line 2554
    :cond_2
    :goto_0
    sget-object v0, Lcom/oplus/camera/ui/inverse/e;->INS:Lcom/oplus/camera/ui/inverse/e;

    iget-object p0, p0, Lcom/oplus/camera/capmode/d;->mActivity:Landroid/app/Activity;

    const/high16 v1, 0x3f000000    # 0.5f

    invoke-virtual {v0, p0, v1, p1}, Lcom/oplus/camera/ui/inverse/e;->setPositionRatio(Landroid/content/Context;FZ)V

    goto :goto_2

    .line 2551
    :cond_3
    :goto_1
    sget-object v0, Lcom/oplus/camera/ui/inverse/e;->INS:Lcom/oplus/camera/ui/inverse/e;

    iget-object p0, p0, Lcom/oplus/camera/capmode/d;->mActivity:Landroid/app/Activity;

    invoke-static {}, Lcom/oplus/camera/ui/inverse/InverseMaskView;->getPositionRatioSquare()F

    move-result v1

    invoke-virtual {v0, p0, v1, p1}, Lcom/oplus/camera/ui/inverse/e;->setPositionRatio(Landroid/content/Context;FZ)V

    :goto_2
    return-void
.end method

.method protected updateNightCaptureShutter()V
    .locals 2

    .line 2820
    iget-object v0, p0, Lcom/oplus/camera/capmode/d;->mActivity:Landroid/app/Activity;

    if-eqz v0, :cond_0

    .line 2821
    iget-object v0, p0, Lcom/oplus/camera/capmode/d;->mActivity:Landroid/app/Activity;

    new-instance v1, Lcom/oplus/camera/capmode/d$2;

    invoke-direct {v1, p0}, Lcom/oplus/camera/capmode/d$2;-><init>(Lcom/oplus/camera/capmode/d;)V

    invoke-virtual {v0, v1}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    :cond_0
    return-void
.end method
