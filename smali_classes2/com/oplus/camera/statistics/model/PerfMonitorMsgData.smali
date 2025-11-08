.class public Lcom/oplus/camera/statistics/model/PerfMonitorMsgData;
.super Lcom/oplus/camera/statistics/model/DcsMsgData;
.source "PerfMonitorMsgData.java"


# static fields
.field private static final EVENT_PERFORMANCE:Ljava/lang/String; = "performance"

.field private static final KEY_CAMERA_EXIT:Ljava/lang/String; = "cameraExit"

.field private static final KEY_CAPTURE:Ljava/lang/String; = "capture"

.field private static final KEY_COMPREHENSIVE_CAPTURE:Ljava/lang/String; = "comprehensiveCapture"

.field private static final KEY_CONTINUOUS_CAPTURE:Ljava/lang/String; = "continuousCapture"

.field private static final KEY_LAUNCH:Ljava/lang/String; = "launch"

.field private static final KEY_PICTURE_SAVE:Ljava/lang/String; = "pictureSave"

.field private static final KEY_RENDER_FLUENCY:Ljava/lang/String; = "renderFluency"

.field private static final KEY_START_VIDEO_RECORD:Ljava/lang/String; = "startVideoRecord"

.field private static final KEY_SWITCH_CAMERA:Ljava/lang/String; = "switchCamera"

.field private static final KEY_SWITCH_MODE:Ljava/lang/String; = "switchMode"

.field private static final KEY_VIDEO_SAVE:Ljava/lang/String; = "videoSave"

.field private static final LOG_TAG_PERFORMANCE:Ljava/lang/String; = "204"

.field private static final TAG:Ljava/lang/String; = "PerformanceMsgData"

.field private static sGson:Lcom/google/gson/Gson;


# instance fields
.field private mCameraExit:Ljava/lang/String;

.field private mCapture:Ljava/lang/String;

.field private mComprehensive:Ljava/lang/String;

.field private mContinuousCapture:Ljava/lang/String;

.field private mFluency:Ljava/lang/String;

.field private mLaunch:Ljava/lang/String;

.field private mPictureSave:Ljava/lang/String;

.field private mStartVideoRecord:Ljava/lang/String;

.field private mSwitchCamera:Ljava/lang/String;

.field private mSwitchMode:Ljava/lang/String;

.field private mVideoSave:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 46
    new-instance v0, Lcom/google/gson/Gson;

    invoke-direct {v0}, Lcom/google/gson/Gson;-><init>()V

    sput-object v0, Lcom/oplus/camera/statistics/model/PerfMonitorMsgData;->sGson:Lcom/google/gson/Gson;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 2

    const-string v0, "204"

    const-string v1, "performance"

    .line 61
    invoke-direct {p0, p1, v0, v1}, Lcom/oplus/camera/statistics/model/DcsMsgData;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    const-string p1, ""

    .line 48
    iput-object p1, p0, Lcom/oplus/camera/statistics/model/PerfMonitorMsgData;->mLaunch:Ljava/lang/String;

    .line 49
    iput-object p1, p0, Lcom/oplus/camera/statistics/model/PerfMonitorMsgData;->mCapture:Ljava/lang/String;

    .line 50
    iput-object p1, p0, Lcom/oplus/camera/statistics/model/PerfMonitorMsgData;->mSwitchCamera:Ljava/lang/String;

    .line 51
    iput-object p1, p0, Lcom/oplus/camera/statistics/model/PerfMonitorMsgData;->mSwitchMode:Ljava/lang/String;

    .line 52
    iput-object p1, p0, Lcom/oplus/camera/statistics/model/PerfMonitorMsgData;->mStartVideoRecord:Ljava/lang/String;

    .line 53
    iput-object p1, p0, Lcom/oplus/camera/statistics/model/PerfMonitorMsgData;->mVideoSave:Ljava/lang/String;

    .line 54
    iput-object p1, p0, Lcom/oplus/camera/statistics/model/PerfMonitorMsgData;->mPictureSave:Ljava/lang/String;

    .line 55
    iput-object p1, p0, Lcom/oplus/camera/statistics/model/PerfMonitorMsgData;->mCameraExit:Ljava/lang/String;

    .line 56
    iput-object p1, p0, Lcom/oplus/camera/statistics/model/PerfMonitorMsgData;->mContinuousCapture:Ljava/lang/String;

    .line 57
    iput-object p1, p0, Lcom/oplus/camera/statistics/model/PerfMonitorMsgData;->mComprehensive:Ljava/lang/String;

    .line 58
    iput-object p1, p0, Lcom/oplus/camera/statistics/model/PerfMonitorMsgData;->mFluency:Ljava/lang/String;

    return-void
.end method

.method public static reportCameraExit(Landroid/content/Context;Lcom/oplus/camera/perf/CameraExitPerformance$CameraExitPerformanceData;)V
    .locals 1

    if-nez p0, :cond_0

    return-void

    .line 145
    :cond_0
    new-instance v0, Lcom/oplus/camera/statistics/model/PerfMonitorMsgData;

    invoke-direct {v0, p0}, Lcom/oplus/camera/statistics/model/PerfMonitorMsgData;-><init>(Landroid/content/Context;)V

    .line 146
    sget-object p0, Lcom/oplus/camera/statistics/model/PerfMonitorMsgData;->sGson:Lcom/google/gson/Gson;

    invoke-virtual {p0, p1}, Lcom/google/gson/Gson;->toJson(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    iput-object p0, v0, Lcom/oplus/camera/statistics/model/PerfMonitorMsgData;->mCameraExit:Ljava/lang/String;

    .line 147
    invoke-virtual {v0}, Lcom/oplus/camera/statistics/model/PerfMonitorMsgData;->report()V

    return-void
.end method

.method public static reportCapture(Landroid/content/Context;Lcom/oplus/camera/perf/CapturePerformance$CapturePerformanceData;)V
    .locals 1

    if-nez p0, :cond_0

    return-void

    .line 79
    :cond_0
    new-instance v0, Lcom/oplus/camera/statistics/model/PerfMonitorMsgData;

    invoke-direct {v0, p0}, Lcom/oplus/camera/statistics/model/PerfMonitorMsgData;-><init>(Landroid/content/Context;)V

    .line 80
    sget-object p0, Lcom/oplus/camera/statistics/model/PerfMonitorMsgData;->sGson:Lcom/google/gson/Gson;

    invoke-virtual {p0, p1}, Lcom/google/gson/Gson;->toJson(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    iput-object p0, v0, Lcom/oplus/camera/statistics/model/PerfMonitorMsgData;->mCapture:Ljava/lang/String;

    .line 81
    invoke-virtual {v0}, Lcom/oplus/camera/statistics/model/PerfMonitorMsgData;->report()V

    return-void
.end method

.method public static reportComprehensive(Landroid/content/Context;Lcom/oplus/camera/perf/ComprehensivePerformance$PerformanceRecordData;)V
    .locals 1

    if-nez p0, :cond_0

    return-void

    .line 166
    :cond_0
    new-instance v0, Lcom/oplus/camera/statistics/model/PerfMonitorMsgData;

    invoke-direct {v0, p0}, Lcom/oplus/camera/statistics/model/PerfMonitorMsgData;-><init>(Landroid/content/Context;)V

    .line 167
    sget-object p0, Lcom/oplus/camera/statistics/model/PerfMonitorMsgData;->sGson:Lcom/google/gson/Gson;

    invoke-virtual {p0, p1}, Lcom/google/gson/Gson;->toJson(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    iput-object p0, v0, Lcom/oplus/camera/statistics/model/PerfMonitorMsgData;->mComprehensive:Ljava/lang/String;

    .line 168
    invoke-virtual {v0}, Lcom/oplus/camera/statistics/model/PerfMonitorMsgData;->report()V

    return-void
.end method

.method public static reportContinuousCapture(Landroid/content/Context;Lcom/oplus/camera/perf/ContinuousCapturePerformance$ContinuousCapturePerformanceData;)V
    .locals 1

    if-nez p0, :cond_0

    return-void

    .line 156
    :cond_0
    new-instance v0, Lcom/oplus/camera/statistics/model/PerfMonitorMsgData;

    invoke-direct {v0, p0}, Lcom/oplus/camera/statistics/model/PerfMonitorMsgData;-><init>(Landroid/content/Context;)V

    .line 157
    sget-object p0, Lcom/oplus/camera/statistics/model/PerfMonitorMsgData;->sGson:Lcom/google/gson/Gson;

    invoke-virtual {p0, p1}, Lcom/google/gson/Gson;->toJson(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    iput-object p0, v0, Lcom/oplus/camera/statistics/model/PerfMonitorMsgData;->mContinuousCapture:Ljava/lang/String;

    .line 158
    invoke-virtual {v0}, Lcom/oplus/camera/statistics/model/PerfMonitorMsgData;->report()V

    return-void
.end method

.method public static reportFluency(Landroid/content/Context;Lcom/oplus/camera/perf/FluencyPerformance$FluencyPerformanceData;)V
    .locals 1

    if-nez p0, :cond_0

    return-void

    .line 176
    :cond_0
    new-instance v0, Lcom/oplus/camera/statistics/model/PerfMonitorMsgData;

    invoke-direct {v0, p0}, Lcom/oplus/camera/statistics/model/PerfMonitorMsgData;-><init>(Landroid/content/Context;)V

    .line 177
    sget-object p0, Lcom/oplus/camera/statistics/model/PerfMonitorMsgData;->sGson:Lcom/google/gson/Gson;

    invoke-virtual {p0, p1}, Lcom/google/gson/Gson;->toJson(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    iput-object p0, v0, Lcom/oplus/camera/statistics/model/PerfMonitorMsgData;->mFluency:Ljava/lang/String;

    .line 178
    invoke-virtual {v0}, Lcom/oplus/camera/statistics/model/PerfMonitorMsgData;->report()V

    return-void
.end method

.method public static reportLaunch(Landroid/content/Context;Lcom/oplus/camera/perf/LaunchPerformance$LaunchPerformanceData;)V
    .locals 1

    if-nez p0, :cond_0

    return-void

    .line 69
    :cond_0
    new-instance v0, Lcom/oplus/camera/statistics/model/PerfMonitorMsgData;

    invoke-direct {v0, p0}, Lcom/oplus/camera/statistics/model/PerfMonitorMsgData;-><init>(Landroid/content/Context;)V

    .line 70
    sget-object p0, Lcom/oplus/camera/statistics/model/PerfMonitorMsgData;->sGson:Lcom/google/gson/Gson;

    invoke-virtual {p0, p1}, Lcom/google/gson/Gson;->toJson(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    iput-object p0, v0, Lcom/oplus/camera/statistics/model/PerfMonitorMsgData;->mLaunch:Ljava/lang/String;

    .line 71
    invoke-virtual {v0}, Lcom/oplus/camera/statistics/model/PerfMonitorMsgData;->report()V

    return-void
.end method

.method public static reportPictureSave(Landroid/content/Context;Lcom/oplus/camera/perf/PictureSavePerformance$PictureSavePerformanceData;)V
    .locals 1

    if-nez p0, :cond_0

    return-void

    .line 134
    :cond_0
    new-instance v0, Lcom/oplus/camera/statistics/model/PerfMonitorMsgData;

    invoke-direct {v0, p0}, Lcom/oplus/camera/statistics/model/PerfMonitorMsgData;-><init>(Landroid/content/Context;)V

    .line 135
    sget-object p0, Lcom/oplus/camera/statistics/model/PerfMonitorMsgData;->sGson:Lcom/google/gson/Gson;

    invoke-virtual {p0, p1}, Lcom/google/gson/Gson;->toJson(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    iput-object p0, v0, Lcom/oplus/camera/statistics/model/PerfMonitorMsgData;->mPictureSave:Ljava/lang/String;

    .line 136
    invoke-virtual {v0}, Lcom/oplus/camera/statistics/model/PerfMonitorMsgData;->report()V

    return-void
.end method

.method public static reportStartVideoRecord(Landroid/content/Context;Lcom/oplus/camera/perf/VideoRecordPerformance$VideoRecordPerformanceData;)V
    .locals 1

    if-nez p0, :cond_0

    return-void

    .line 112
    :cond_0
    new-instance v0, Lcom/oplus/camera/statistics/model/PerfMonitorMsgData;

    invoke-direct {v0, p0}, Lcom/oplus/camera/statistics/model/PerfMonitorMsgData;-><init>(Landroid/content/Context;)V

    .line 113
    sget-object p0, Lcom/oplus/camera/statistics/model/PerfMonitorMsgData;->sGson:Lcom/google/gson/Gson;

    invoke-virtual {p0, p1}, Lcom/google/gson/Gson;->toJson(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    iput-object p0, v0, Lcom/oplus/camera/statistics/model/PerfMonitorMsgData;->mStartVideoRecord:Ljava/lang/String;

    .line 114
    invoke-virtual {v0}, Lcom/oplus/camera/statistics/model/PerfMonitorMsgData;->report()V

    return-void
.end method

.method public static reportSwitchCamera(Landroid/content/Context;Lcom/oplus/camera/perf/SwitchCameraPerformance$SwitchCameraPerformanceData;)V
    .locals 1

    if-nez p0, :cond_0

    return-void

    .line 90
    :cond_0
    new-instance v0, Lcom/oplus/camera/statistics/model/PerfMonitorMsgData;

    invoke-direct {v0, p0}, Lcom/oplus/camera/statistics/model/PerfMonitorMsgData;-><init>(Landroid/content/Context;)V

    .line 91
    sget-object p0, Lcom/oplus/camera/statistics/model/PerfMonitorMsgData;->sGson:Lcom/google/gson/Gson;

    invoke-virtual {p0, p1}, Lcom/google/gson/Gson;->toJson(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    iput-object p0, v0, Lcom/oplus/camera/statistics/model/PerfMonitorMsgData;->mSwitchCamera:Ljava/lang/String;

    .line 92
    invoke-virtual {v0}, Lcom/oplus/camera/statistics/model/PerfMonitorMsgData;->report()V

    return-void
.end method

.method public static reportSwitchMode(Landroid/content/Context;Lcom/oplus/camera/perf/SwitchModePerformance$SwitchModePerformanceData;)V
    .locals 1

    if-nez p0, :cond_0

    return-void

    .line 101
    :cond_0
    new-instance v0, Lcom/oplus/camera/statistics/model/PerfMonitorMsgData;

    invoke-direct {v0, p0}, Lcom/oplus/camera/statistics/model/PerfMonitorMsgData;-><init>(Landroid/content/Context;)V

    .line 102
    sget-object p0, Lcom/oplus/camera/statistics/model/PerfMonitorMsgData;->sGson:Lcom/google/gson/Gson;

    invoke-virtual {p0, p1}, Lcom/google/gson/Gson;->toJson(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    iput-object p0, v0, Lcom/oplus/camera/statistics/model/PerfMonitorMsgData;->mSwitchMode:Ljava/lang/String;

    .line 103
    invoke-virtual {v0}, Lcom/oplus/camera/statistics/model/PerfMonitorMsgData;->report()V

    return-void
.end method

.method public static reportVideoSave(Landroid/content/Context;Lcom/oplus/camera/perf/VideoSavePerformance$VideoSavePerformanceData;)V
    .locals 1

    if-nez p0, :cond_0

    return-void

    .line 123
    :cond_0
    new-instance v0, Lcom/oplus/camera/statistics/model/PerfMonitorMsgData;

    invoke-direct {v0, p0}, Lcom/oplus/camera/statistics/model/PerfMonitorMsgData;-><init>(Landroid/content/Context;)V

    .line 124
    sget-object p0, Lcom/oplus/camera/statistics/model/PerfMonitorMsgData;->sGson:Lcom/google/gson/Gson;

    invoke-virtual {p0, p1}, Lcom/google/gson/Gson;->toJson(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    iput-object p0, v0, Lcom/oplus/camera/statistics/model/PerfMonitorMsgData;->mVideoSave:Ljava/lang/String;

    .line 125
    invoke-virtual {v0}, Lcom/oplus/camera/statistics/model/PerfMonitorMsgData;->report()V

    return-void
.end method


# virtual methods
.method public report()V
    .locals 2

    .line 184
    iget-object v0, p0, Lcom/oplus/camera/statistics/model/PerfMonitorMsgData;->mLaunch:Ljava/lang/String;

    const-string v1, "launch"

    invoke-virtual {p0, v1, v0}, Lcom/oplus/camera/statistics/model/PerfMonitorMsgData;->checkEmptyCondition(Ljava/lang/String;Ljava/lang/String;)V

    .line 185
    iget-object v0, p0, Lcom/oplus/camera/statistics/model/PerfMonitorMsgData;->mCapture:Ljava/lang/String;

    const-string v1, "capture"

    invoke-virtual {p0, v1, v0}, Lcom/oplus/camera/statistics/model/PerfMonitorMsgData;->checkEmptyCondition(Ljava/lang/String;Ljava/lang/String;)V

    .line 186
    iget-object v0, p0, Lcom/oplus/camera/statistics/model/PerfMonitorMsgData;->mSwitchCamera:Ljava/lang/String;

    const-string v1, "switchCamera"

    invoke-virtual {p0, v1, v0}, Lcom/oplus/camera/statistics/model/PerfMonitorMsgData;->checkEmptyCondition(Ljava/lang/String;Ljava/lang/String;)V

    .line 187
    iget-object v0, p0, Lcom/oplus/camera/statistics/model/PerfMonitorMsgData;->mSwitchMode:Ljava/lang/String;

    const-string v1, "switchMode"

    invoke-virtual {p0, v1, v0}, Lcom/oplus/camera/statistics/model/PerfMonitorMsgData;->checkEmptyCondition(Ljava/lang/String;Ljava/lang/String;)V

    .line 188
    iget-object v0, p0, Lcom/oplus/camera/statistics/model/PerfMonitorMsgData;->mStartVideoRecord:Ljava/lang/String;

    const-string v1, "startVideoRecord"

    invoke-virtual {p0, v1, v0}, Lcom/oplus/camera/statistics/model/PerfMonitorMsgData;->checkEmptyCondition(Ljava/lang/String;Ljava/lang/String;)V

    .line 189
    iget-object v0, p0, Lcom/oplus/camera/statistics/model/PerfMonitorMsgData;->mVideoSave:Ljava/lang/String;

    const-string v1, "videoSave"

    invoke-virtual {p0, v1, v0}, Lcom/oplus/camera/statistics/model/PerfMonitorMsgData;->checkEmptyCondition(Ljava/lang/String;Ljava/lang/String;)V

    .line 190
    iget-object v0, p0, Lcom/oplus/camera/statistics/model/PerfMonitorMsgData;->mPictureSave:Ljava/lang/String;

    const-string v1, "pictureSave"

    invoke-virtual {p0, v1, v0}, Lcom/oplus/camera/statistics/model/PerfMonitorMsgData;->checkEmptyCondition(Ljava/lang/String;Ljava/lang/String;)V

    .line 191
    iget-object v0, p0, Lcom/oplus/camera/statistics/model/PerfMonitorMsgData;->mCameraExit:Ljava/lang/String;

    const-string v1, "cameraExit"

    invoke-virtual {p0, v1, v0}, Lcom/oplus/camera/statistics/model/PerfMonitorMsgData;->checkEmptyCondition(Ljava/lang/String;Ljava/lang/String;)V

    .line 192
    iget-object v0, p0, Lcom/oplus/camera/statistics/model/PerfMonitorMsgData;->mContinuousCapture:Ljava/lang/String;

    const-string v1, "continuousCapture"

    invoke-virtual {p0, v1, v0}, Lcom/oplus/camera/statistics/model/PerfMonitorMsgData;->checkEmptyCondition(Ljava/lang/String;Ljava/lang/String;)V

    .line 193
    iget-object v0, p0, Lcom/oplus/camera/statistics/model/PerfMonitorMsgData;->mComprehensive:Ljava/lang/String;

    const-string v1, "comprehensiveCapture"

    invoke-virtual {p0, v1, v0}, Lcom/oplus/camera/statistics/model/PerfMonitorMsgData;->checkEmptyCondition(Ljava/lang/String;Ljava/lang/String;)V

    .line 194
    iget-object v0, p0, Lcom/oplus/camera/statistics/model/PerfMonitorMsgData;->mFluency:Ljava/lang/String;

    const-string v1, "renderFluency"

    invoke-virtual {p0, v1, v0}, Lcom/oplus/camera/statistics/model/PerfMonitorMsgData;->checkEmptyCondition(Ljava/lang/String;Ljava/lang/String;)V

    .line 196
    invoke-super {p0}, Lcom/oplus/camera/statistics/model/DcsMsgData;->report()V

    return-void
.end method
