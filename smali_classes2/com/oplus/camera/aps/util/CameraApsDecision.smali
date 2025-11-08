.class public Lcom/oplus/camera/aps/util/CameraApsDecision;
.super Ljava/lang/Object;
.source "CameraApsDecision.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "CameraApsDecision"


# instance fields
.field public mAISState:I

.field public mApsAlgoFlag:[Ljava/lang/String;

.field public mApsBracketMode:I

.field public mApsDecisionFeatureType:I

.field public mApsDecisionSceneMode:I

.field public mApsDecisionShowHdrIcon:I

.field public mAsdSceneValue:I

.field public mCameraId:I

.field public mCaptureEVList:[I

.field public mCaptureNoNeedMatchMeta:I

.field public mFullAlgoKey:Ljava/lang/String;

.field public mFullAlgoValue:Ljava/lang/String;

.field public mMFSRFrameCount:I

.field public mMasterPipeline:I

.field public mMetaIndex:I

.field public mMultiFrameCount:I

.field public mNightTotalExpTime:I

.field public mRequestFormat:I

.field public mSensorMask:[I

.field public mSuperNightScene:I

.field public mSupportCaptureZoomFeature:I

.field public mThumbnailIndex:I

.field public mbAIShutter:Z


# direct methods
.method public constructor <init>(Lcom/oplus/ocs/camera/CameraPreviewCallback$CameraPreviewResult;)V
    .locals 3

    .line 37
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, -0x1

    .line 9
    iput v0, p0, Lcom/oplus/camera/aps/util/CameraApsDecision;->mCameraId:I

    const/4 v1, 0x0

    .line 10
    iput v1, p0, Lcom/oplus/camera/aps/util/CameraApsDecision;->mRequestFormat:I

    const/4 v2, 0x1

    .line 11
    iput v2, p0, Lcom/oplus/camera/aps/util/CameraApsDecision;->mMultiFrameCount:I

    .line 12
    iput v1, p0, Lcom/oplus/camera/aps/util/CameraApsDecision;->mSuperNightScene:I

    .line 13
    iput v1, p0, Lcom/oplus/camera/aps/util/CameraApsDecision;->mNightTotalExpTime:I

    .line 14
    iput v1, p0, Lcom/oplus/camera/aps/util/CameraApsDecision;->mApsDecisionSceneMode:I

    .line 15
    iput v0, p0, Lcom/oplus/camera/aps/util/CameraApsDecision;->mApsDecisionShowHdrIcon:I

    .line 16
    iput v1, p0, Lcom/oplus/camera/aps/util/CameraApsDecision;->mApsDecisionFeatureType:I

    const/4 v0, 0x0

    .line 17
    iput-object v0, p0, Lcom/oplus/camera/aps/util/CameraApsDecision;->mApsAlgoFlag:[Ljava/lang/String;

    .line 18
    iput-object v0, p0, Lcom/oplus/camera/aps/util/CameraApsDecision;->mCaptureEVList:[I

    .line 19
    iput-object v0, p0, Lcom/oplus/camera/aps/util/CameraApsDecision;->mSensorMask:[I

    .line 20
    iput v1, p0, Lcom/oplus/camera/aps/util/CameraApsDecision;->mMasterPipeline:I

    .line 21
    iput v1, p0, Lcom/oplus/camera/aps/util/CameraApsDecision;->mApsBracketMode:I

    const-string v0, ""

    .line 23
    iput-object v0, p0, Lcom/oplus/camera/aps/util/CameraApsDecision;->mFullAlgoKey:Ljava/lang/String;

    .line 24
    iput-object v0, p0, Lcom/oplus/camera/aps/util/CameraApsDecision;->mFullAlgoValue:Ljava/lang/String;

    .line 26
    iput v1, p0, Lcom/oplus/camera/aps/util/CameraApsDecision;->mAsdSceneValue:I

    .line 27
    iput v1, p0, Lcom/oplus/camera/aps/util/CameraApsDecision;->mMFSRFrameCount:I

    .line 28
    iput v1, p0, Lcom/oplus/camera/aps/util/CameraApsDecision;->mSupportCaptureZoomFeature:I

    .line 29
    iput v1, p0, Lcom/oplus/camera/aps/util/CameraApsDecision;->mCaptureNoNeedMatchMeta:I

    .line 30
    iput-boolean v1, p0, Lcom/oplus/camera/aps/util/CameraApsDecision;->mbAIShutter:Z

    .line 31
    iput v1, p0, Lcom/oplus/camera/aps/util/CameraApsDecision;->mAISState:I

    .line 32
    iput v2, p0, Lcom/oplus/camera/aps/util/CameraApsDecision;->mThumbnailIndex:I

    .line 33
    iput v1, p0, Lcom/oplus/camera/aps/util/CameraApsDecision;->mMetaIndex:I

    if-eqz p1, :cond_0

    .line 39
    sget-object v0, Lcom/oplus/ocs/camera/CameraParameter;->PREVIEW_RESULT_CAMERA_ID:Lcom/oplus/ocs/camera/CameraParameter$PreviewResultKey;

    invoke-virtual {p1, v0}, Lcom/oplus/ocs/camera/CameraPreviewCallback$CameraPreviewResult;->get(Lcom/oplus/ocs/camera/CameraParameter$PreviewResultKey;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    iput v0, p0, Lcom/oplus/camera/aps/util/CameraApsDecision;->mCameraId:I

    .line 40
    sget-object v0, Lcom/oplus/ocs/camera/CameraParameter;->PREVIEW_RESULT_REQUEST_FORMAT:Lcom/oplus/ocs/camera/CameraParameter$PreviewResultKey;

    invoke-virtual {p1, v0}, Lcom/oplus/ocs/camera/CameraPreviewCallback$CameraPreviewResult;->get(Lcom/oplus/ocs/camera/CameraParameter$PreviewResultKey;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    iput v0, p0, Lcom/oplus/camera/aps/util/CameraApsDecision;->mRequestFormat:I

    .line 41
    sget-object v0, Lcom/oplus/ocs/camera/CameraParameter;->PREVIEW_RESULT_MULTI_FRAME_COUNT:Lcom/oplus/ocs/camera/CameraParameter$PreviewResultKey;

    invoke-virtual {p1, v0}, Lcom/oplus/ocs/camera/CameraPreviewCallback$CameraPreviewResult;->get(Lcom/oplus/ocs/camera/CameraParameter$PreviewResultKey;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    iput v0, p0, Lcom/oplus/camera/aps/util/CameraApsDecision;->mMultiFrameCount:I

    .line 42
    sget-object v0, Lcom/oplus/ocs/camera/CameraParameter;->PREVIEW_RESULT_SUPER_NIGHT_SCENE:Lcom/oplus/ocs/camera/CameraParameter$PreviewResultKey;

    invoke-virtual {p1, v0}, Lcom/oplus/ocs/camera/CameraPreviewCallback$CameraPreviewResult;->get(Lcom/oplus/ocs/camera/CameraParameter$PreviewResultKey;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    iput v0, p0, Lcom/oplus/camera/aps/util/CameraApsDecision;->mSuperNightScene:I

    .line 43
    sget-object v0, Lcom/oplus/ocs/camera/CameraParameter;->PREVIEW_RESULT_NIGHT_TOTAL_EXPTIME:Lcom/oplus/ocs/camera/CameraParameter$PreviewResultKey;

    invoke-virtual {p1, v0}, Lcom/oplus/ocs/camera/CameraPreviewCallback$CameraPreviewResult;->get(Lcom/oplus/ocs/camera/CameraParameter$PreviewResultKey;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    iput v0, p0, Lcom/oplus/camera/aps/util/CameraApsDecision;->mNightTotalExpTime:I

    .line 44
    sget-object v0, Lcom/oplus/ocs/camera/CameraParameter;->PREVIEW_RESULT_SCENE_MODE:Lcom/oplus/ocs/camera/CameraParameter$PreviewResultKey;

    invoke-virtual {p1, v0}, Lcom/oplus/ocs/camera/CameraPreviewCallback$CameraPreviewResult;->get(Lcom/oplus/ocs/camera/CameraParameter$PreviewResultKey;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    iput v0, p0, Lcom/oplus/camera/aps/util/CameraApsDecision;->mApsDecisionSceneMode:I

    .line 45
    sget-object v0, Lcom/oplus/ocs/camera/CameraParameter;->PREVIEW_RESULT_SHOW_HDR_ICON:Lcom/oplus/ocs/camera/CameraParameter$PreviewResultKey;

    invoke-virtual {p1, v0}, Lcom/oplus/ocs/camera/CameraPreviewCallback$CameraPreviewResult;->get(Lcom/oplus/ocs/camera/CameraParameter$PreviewResultKey;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    iput v0, p0, Lcom/oplus/camera/aps/util/CameraApsDecision;->mApsDecisionShowHdrIcon:I

    .line 46
    sget-object v0, Lcom/oplus/ocs/camera/CameraParameter;->PREVIEW_RESULT_FEATURE_TYPE:Lcom/oplus/ocs/camera/CameraParameter$PreviewResultKey;

    invoke-virtual {p1, v0}, Lcom/oplus/ocs/camera/CameraPreviewCallback$CameraPreviewResult;->get(Lcom/oplus/ocs/camera/CameraParameter$PreviewResultKey;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    iput v0, p0, Lcom/oplus/camera/aps/util/CameraApsDecision;->mApsDecisionFeatureType:I

    .line 47
    sget-object v0, Lcom/oplus/ocs/camera/CameraParameter;->PREVIEW_RESULT_ALGO_FLAG:Lcom/oplus/ocs/camera/CameraParameter$PreviewResultKey;

    invoke-virtual {p1, v0}, Lcom/oplus/ocs/camera/CameraPreviewCallback$CameraPreviewResult;->get(Lcom/oplus/ocs/camera/CameraParameter$PreviewResultKey;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/String;

    iput-object v0, p0, Lcom/oplus/camera/aps/util/CameraApsDecision;->mApsAlgoFlag:[Ljava/lang/String;

    .line 48
    sget-object v0, Lcom/oplus/ocs/camera/CameraParameter;->PREVIEW_RESULT_CAPTURE_EV_LIST:Lcom/oplus/ocs/camera/CameraParameter$PreviewResultKey;

    invoke-virtual {p1, v0}, Lcom/oplus/ocs/camera/CameraPreviewCallback$CameraPreviewResult;->get(Lcom/oplus/ocs/camera/CameraParameter$PreviewResultKey;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [I

    iput-object v0, p0, Lcom/oplus/camera/aps/util/CameraApsDecision;->mCaptureEVList:[I

    .line 49
    sget-object v0, Lcom/oplus/ocs/camera/CameraParameter;->PREVIEW_RESULT_SENSOR_MASK:Lcom/oplus/ocs/camera/CameraParameter$PreviewResultKey;

    invoke-virtual {p1, v0}, Lcom/oplus/ocs/camera/CameraPreviewCallback$CameraPreviewResult;->get(Lcom/oplus/ocs/camera/CameraParameter$PreviewResultKey;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [I

    iput-object v0, p0, Lcom/oplus/camera/aps/util/CameraApsDecision;->mSensorMask:[I

    .line 50
    sget-object v0, Lcom/oplus/ocs/camera/CameraParameter;->PREVIEW_RESULT_MASTER_PIPELINE:Lcom/oplus/ocs/camera/CameraParameter$PreviewResultKey;

    invoke-virtual {p1, v0}, Lcom/oplus/ocs/camera/CameraPreviewCallback$CameraPreviewResult;->get(Lcom/oplus/ocs/camera/CameraParameter$PreviewResultKey;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    iput v0, p0, Lcom/oplus/camera/aps/util/CameraApsDecision;->mMasterPipeline:I

    .line 51
    sget-object v0, Lcom/oplus/ocs/camera/CameraParameter;->PREVIEW_RESULT_BRACKET_MODE:Lcom/oplus/ocs/camera/CameraParameter$PreviewResultKey;

    invoke-virtual {p1, v0}, Lcom/oplus/ocs/camera/CameraPreviewCallback$CameraPreviewResult;->get(Lcom/oplus/ocs/camera/CameraParameter$PreviewResultKey;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    iput v0, p0, Lcom/oplus/camera/aps/util/CameraApsDecision;->mApsBracketMode:I

    .line 52
    sget-object v0, Lcom/oplus/ocs/camera/CameraParameter;->KEY_ALGO_VISUALIZATION_KEY:Lcom/oplus/ocs/camera/CameraParameter$PreviewResultKey;

    invoke-virtual {p1, v0}, Lcom/oplus/ocs/camera/CameraPreviewCallback$CameraPreviewResult;->get(Lcom/oplus/ocs/camera/CameraParameter$PreviewResultKey;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iput-object v0, p0, Lcom/oplus/camera/aps/util/CameraApsDecision;->mFullAlgoKey:Ljava/lang/String;

    .line 53
    sget-object v0, Lcom/oplus/ocs/camera/CameraParameter;->KEY_ALGO_VISUALIZATION_VALUE:Lcom/oplus/ocs/camera/CameraParameter$PreviewResultKey;

    invoke-virtual {p1, v0}, Lcom/oplus/ocs/camera/CameraPreviewCallback$CameraPreviewResult;->get(Lcom/oplus/ocs/camera/CameraParameter$PreviewResultKey;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iput-object v0, p0, Lcom/oplus/camera/aps/util/CameraApsDecision;->mFullAlgoValue:Ljava/lang/String;

    .line 54
    sget-object v0, Lcom/oplus/ocs/camera/CameraParameter;->PREVIEW_RESULT_AI_SCENE:Lcom/oplus/ocs/camera/CameraParameter$PreviewResultKey;

    invoke-virtual {p1, v0}, Lcom/oplus/ocs/camera/CameraPreviewCallback$CameraPreviewResult;->get(Lcom/oplus/ocs/camera/CameraParameter$PreviewResultKey;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    iput v0, p0, Lcom/oplus/camera/aps/util/CameraApsDecision;->mAsdSceneValue:I

    .line 55
    sget-object v0, Lcom/oplus/ocs/camera/CameraParameter;->PREVIEW_RESULT_MFSR_FRAME_COUNT:Lcom/oplus/ocs/camera/CameraParameter$PreviewResultKey;

    invoke-virtual {p1, v0}, Lcom/oplus/ocs/camera/CameraPreviewCallback$CameraPreviewResult;->get(Lcom/oplus/ocs/camera/CameraParameter$PreviewResultKey;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    iput v0, p0, Lcom/oplus/camera/aps/util/CameraApsDecision;->mMFSRFrameCount:I

    .line 56
    sget-object v0, Lcom/oplus/ocs/camera/CameraParameter;->PREVIEW_RESULT_SUPPORT_ZOOM_FEATURE:Lcom/oplus/ocs/camera/CameraParameter$PreviewResultKey;

    invoke-virtual {p1, v0}, Lcom/oplus/ocs/camera/CameraPreviewCallback$CameraPreviewResult;->get(Lcom/oplus/ocs/camera/CameraParameter$PreviewResultKey;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    iput v0, p0, Lcom/oplus/camera/aps/util/CameraApsDecision;->mSupportCaptureZoomFeature:I

    .line 57
    sget-object v0, Lcom/oplus/ocs/camera/CameraParameter;->PREVIEW_RESULT_AI_SHUTTER:Lcom/oplus/ocs/camera/CameraParameter$PreviewResultKey;

    invoke-virtual {p1, v0}, Lcom/oplus/ocs/camera/CameraPreviewCallback$CameraPreviewResult;->get(Lcom/oplus/ocs/camera/CameraParameter$PreviewResultKey;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    iput-boolean v0, p0, Lcom/oplus/camera/aps/util/CameraApsDecision;->mbAIShutter:Z

    .line 58
    sget-object v0, Lcom/oplus/ocs/camera/CameraParameter;->PREVIEW_RESULT_AIS_STATE:Lcom/oplus/ocs/camera/CameraParameter$PreviewResultKey;

    invoke-virtual {p1, v0}, Lcom/oplus/ocs/camera/CameraPreviewCallback$CameraPreviewResult;->get(Lcom/oplus/ocs/camera/CameraParameter$PreviewResultKey;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    iput v0, p0, Lcom/oplus/camera/aps/util/CameraApsDecision;->mAISState:I

    .line 59
    sget-object v0, Lcom/oplus/ocs/camera/CameraParameter;->PREVIEW_RESULT_THUMBNAIL_INDEX:Lcom/oplus/ocs/camera/CameraParameter$PreviewResultKey;

    invoke-virtual {p1, v0}, Lcom/oplus/ocs/camera/CameraPreviewCallback$CameraPreviewResult;->get(Lcom/oplus/ocs/camera/CameraParameter$PreviewResultKey;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    iput v0, p0, Lcom/oplus/camera/aps/util/CameraApsDecision;->mThumbnailIndex:I

    .line 60
    sget-object v0, Lcom/oplus/ocs/camera/CameraParameter;->PREVIEW_RESULT_META_INDEX:Lcom/oplus/ocs/camera/CameraParameter$PreviewResultKey;

    invoke-virtual {p1, v0}, Lcom/oplus/ocs/camera/CameraPreviewCallback$CameraPreviewResult;->get(Lcom/oplus/ocs/camera/CameraParameter$PreviewResultKey;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    iput p1, p0, Lcom/oplus/camera/aps/util/CameraApsDecision;->mMetaIndex:I

    :cond_0
    return-void
.end method


# virtual methods
.method public toString()Ljava/lang/String;
    .locals 2

    .line 66
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "mCameraId: "

    .line 67
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/oplus/camera/aps/util/CameraApsDecision;->mCameraId:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", mRequestFormat: "

    .line 68
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/oplus/camera/aps/util/CameraApsDecision;->mRequestFormat:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", mMultiFrameCount: "

    .line 69
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/oplus/camera/aps/util/CameraApsDecision;->mMultiFrameCount:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", mSuperNightScene: "

    .line 70
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/oplus/camera/aps/util/CameraApsDecision;->mSuperNightScene:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", mNightTotalExpTime: "

    .line 71
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/oplus/camera/aps/util/CameraApsDecision;->mNightTotalExpTime:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", mApsDecisionSceneMode: "

    .line 72
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/oplus/camera/aps/util/CameraApsDecision;->mApsDecisionSceneMode:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", mApsDecisionFeatureType: "

    .line 73
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/oplus/camera/aps/util/CameraApsDecision;->mApsDecisionFeatureType:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", mApsAlgoFlag: "

    .line 74
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/oplus/camera/aps/util/CameraApsDecision;->mApsAlgoFlag:[Ljava/lang/String;

    invoke-static {v1}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", mCaptureEVList: "

    .line 75
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/oplus/camera/aps/util/CameraApsDecision;->mCaptureEVList:[I

    invoke-static {v1}, Ljava/util/Arrays;->toString([I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", mSensorMask: "

    .line 76
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/oplus/camera/aps/util/CameraApsDecision;->mSensorMask:[I

    invoke-static {v1}, Ljava/util/Arrays;->toString([I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", mMasterPipeline: "

    .line 77
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/oplus/camera/aps/util/CameraApsDecision;->mMasterPipeline:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", mMFSRFrameCount: "

    .line 78
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/oplus/camera/aps/util/CameraApsDecision;->mMFSRFrameCount:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", mApsBracketMode: "

    .line 79
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/oplus/camera/aps/util/CameraApsDecision;->mApsBracketMode:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", mSupportCaptureZoomFeature: "

    .line 80
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/oplus/camera/aps/util/CameraApsDecision;->mSupportCaptureZoomFeature:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", mCaptureNoNeedMatchMeta: "

    .line 81
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/oplus/camera/aps/util/CameraApsDecision;->mCaptureNoNeedMatchMeta:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", mAsdSceneValue: "

    .line 82
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/oplus/camera/aps/util/CameraApsDecision;->mAsdSceneValue:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", mbAIShutter: "

    .line 83
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/oplus/camera/aps/util/CameraApsDecision;->mbAIShutter:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", mThumbnailIndex: "

    .line 84
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/oplus/camera/aps/util/CameraApsDecision;->mThumbnailIndex:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", mMetaIndex: "

    .line 85
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p0, p0, Lcom/oplus/camera/aps/util/CameraApsDecision;->mMetaIndex:I

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 86
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
