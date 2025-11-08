.class public Lcom/oplus/camera/aps/util/CameraApsResult;
.super Ljava/lang/Object;
.source "CameraApsResult.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "CameraApsResult"


# instance fields
.field public mHeight:I

.field public mIdentity:J

.field public mIsLastVideoFrame:I

.field public mIsMotionDetected:I

.field public mIsStartInterpolationFrame:I

.field private mPreviewResult:Lcom/oplus/ocs/camera/CameraPreviewCallback$CameraPreviewResult;

.field public mWidth:I


# direct methods
.method public constructor <init>(Lcom/oplus/ocs/camera/CameraPreviewCallback$CameraPreviewResult;)V
    .locals 3

    .line 26
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 12
    iput v0, p0, Lcom/oplus/camera/aps/util/CameraApsResult;->mWidth:I

    .line 13
    iput v0, p0, Lcom/oplus/camera/aps/util/CameraApsResult;->mHeight:I

    const-wide/16 v1, 0x0

    .line 14
    iput-wide v1, p0, Lcom/oplus/camera/aps/util/CameraApsResult;->mIdentity:J

    .line 16
    iput v0, p0, Lcom/oplus/camera/aps/util/CameraApsResult;->mIsMotionDetected:I

    .line 17
    iput v0, p0, Lcom/oplus/camera/aps/util/CameraApsResult;->mIsStartInterpolationFrame:I

    .line 18
    iput v0, p0, Lcom/oplus/camera/aps/util/CameraApsResult;->mIsLastVideoFrame:I

    const/4 v0, 0x0

    .line 20
    iput-object v0, p0, Lcom/oplus/camera/aps/util/CameraApsResult;->mPreviewResult:Lcom/oplus/ocs/camera/CameraPreviewCallback$CameraPreviewResult;

    if-eqz p1, :cond_0

    .line 28
    sget-object v0, Lcom/oplus/ocs/camera/CameraParameter;->PREVIEW_RESULT_WIDTH:Lcom/oplus/ocs/camera/CameraParameter$PreviewResultKey;

    invoke-virtual {p1, v0}, Lcom/oplus/ocs/camera/CameraPreviewCallback$CameraPreviewResult;->get(Lcom/oplus/ocs/camera/CameraParameter$PreviewResultKey;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    iput v0, p0, Lcom/oplus/camera/aps/util/CameraApsResult;->mWidth:I

    .line 29
    sget-object v0, Lcom/oplus/ocs/camera/CameraParameter;->PREVIEW_RESULT_HEIGHT:Lcom/oplus/ocs/camera/CameraParameter$PreviewResultKey;

    invoke-virtual {p1, v0}, Lcom/oplus/ocs/camera/CameraPreviewCallback$CameraPreviewResult;->get(Lcom/oplus/ocs/camera/CameraParameter$PreviewResultKey;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    iput v0, p0, Lcom/oplus/camera/aps/util/CameraApsResult;->mHeight:I

    .line 30
    sget-object v0, Lcom/oplus/ocs/camera/CameraParameter;->PREVIEW_RESULT_IDENTITY:Lcom/oplus/ocs/camera/CameraParameter$PreviewResultKey;

    invoke-virtual {p1, v0}, Lcom/oplus/ocs/camera/CameraPreviewCallback$CameraPreviewResult;->get(Lcom/oplus/ocs/camera/CameraParameter$PreviewResultKey;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/oplus/camera/aps/util/CameraApsResult;->mIdentity:J

    .line 31
    sget-object v0, Lcom/oplus/ocs/camera/CameraParameter;->PREVIEW_RESULT_MOTION_DETECTED:Lcom/oplus/ocs/camera/CameraParameter$PreviewResultKey;

    invoke-virtual {p1, v0}, Lcom/oplus/ocs/camera/CameraPreviewCallback$CameraPreviewResult;->get(Lcom/oplus/ocs/camera/CameraParameter$PreviewResultKey;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    iput v0, p0, Lcom/oplus/camera/aps/util/CameraApsResult;->mIsMotionDetected:I

    .line 32
    sget-object v0, Lcom/oplus/ocs/camera/CameraParameter;->PREVIEW_RESULT_START_INTERPOLATION_FRAME:Lcom/oplus/ocs/camera/CameraParameter$PreviewResultKey;

    invoke-virtual {p1, v0}, Lcom/oplus/ocs/camera/CameraPreviewCallback$CameraPreviewResult;->get(Lcom/oplus/ocs/camera/CameraParameter$PreviewResultKey;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    iput v0, p0, Lcom/oplus/camera/aps/util/CameraApsResult;->mIsStartInterpolationFrame:I

    .line 33
    sget-object v0, Lcom/oplus/ocs/camera/CameraParameter;->PREVIEW_RESULT_LAST_VDIEO_FRAME:Lcom/oplus/ocs/camera/CameraParameter$PreviewResultKey;

    invoke-virtual {p1, v0}, Lcom/oplus/ocs/camera/CameraPreviewCallback$CameraPreviewResult;->get(Lcom/oplus/ocs/camera/CameraParameter$PreviewResultKey;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    iput v0, p0, Lcom/oplus/camera/aps/util/CameraApsResult;->mIsLastVideoFrame:I

    .line 35
    iput-object p1, p0, Lcom/oplus/camera/aps/util/CameraApsResult;->mPreviewResult:Lcom/oplus/ocs/camera/CameraPreviewCallback$CameraPreviewResult;

    goto :goto_0

    :cond_0
    const-string p0, "CameraApsResult"

    const-string p1, "CameraApsResult, result is null!"

    .line 37
    invoke-static {p0, p1}, Lcom/oplus/camera/e;->f(Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    return-void
.end method


# virtual methods
.method public addRef()V
    .locals 0

    .line 76
    iget-object p0, p0, Lcom/oplus/camera/aps/util/CameraApsResult;->mPreviewResult:Lcom/oplus/ocs/camera/CameraPreviewCallback$CameraPreviewResult;

    if-eqz p0, :cond_0

    .line 77
    invoke-virtual {p0}, Lcom/oplus/ocs/camera/CameraPreviewCallback$CameraPreviewResult;->addRef()V

    :cond_0
    return-void
.end method

.method public closeImageBuffer()V
    .locals 0

    .line 70
    iget-object p0, p0, Lcom/oplus/camera/aps/util/CameraApsResult;->mPreviewResult:Lcom/oplus/ocs/camera/CameraPreviewCallback$CameraPreviewResult;

    if-eqz p0, :cond_0

    .line 71
    invoke-virtual {p0}, Lcom/oplus/ocs/camera/CameraPreviewCallback$CameraPreviewResult;->close()V

    :cond_0
    return-void
.end method

.method public getCaptureResult()Landroid/hardware/camera2/CaptureResult;
    .locals 0

    .line 82
    iget-object p0, p0, Lcom/oplus/camera/aps/util/CameraApsResult;->mPreviewResult:Lcom/oplus/ocs/camera/CameraPreviewCallback$CameraPreviewResult;

    if-eqz p0, :cond_0

    .line 83
    invoke-virtual {p0}, Lcom/oplus/ocs/camera/CameraPreviewCallback$CameraPreviewResult;->getCaptureResult()Landroid/hardware/camera2/CaptureResult;

    move-result-object p0

    return-object p0

    :cond_0
    const/4 p0, 0x0

    return-object p0
.end method

.method public final getHardwareBuffer()Landroid/hardware/HardwareBuffer;
    .locals 1

    .line 54
    iget-object p0, p0, Lcom/oplus/camera/aps/util/CameraApsResult;->mPreviewResult:Lcom/oplus/ocs/camera/CameraPreviewCallback$CameraPreviewResult;

    if-eqz p0, :cond_0

    .line 55
    sget-object v0, Lcom/oplus/ocs/camera/CameraParameter;->PREVIEW_RESULT_HARDWARE_BUFFER:Lcom/oplus/ocs/camera/CameraParameter$PreviewResultKey;

    invoke-virtual {p0, v0}, Lcom/oplus/ocs/camera/CameraPreviewCallback$CameraPreviewResult;->get(Lcom/oplus/ocs/camera/CameraParameter$PreviewResultKey;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/hardware/HardwareBuffer;

    return-object p0

    :cond_0
    const/4 p0, 0x0

    return-object p0
.end method

.method public getImage()Landroid/media/Image;
    .locals 1

    .line 46
    iget-object p0, p0, Lcom/oplus/camera/aps/util/CameraApsResult;->mPreviewResult:Lcom/oplus/ocs/camera/CameraPreviewCallback$CameraPreviewResult;

    if-eqz p0, :cond_0

    .line 47
    sget-object v0, Lcom/oplus/ocs/camera/CameraParameter;->PREVIEW_RESULT_CAMERA_IMAGE:Lcom/oplus/ocs/camera/CameraParameter$PreviewResultKey;

    invoke-virtual {p0, v0}, Lcom/oplus/ocs/camera/CameraPreviewCallback$CameraPreviewResult;->get(Lcom/oplus/ocs/camera/CameraParameter$PreviewResultKey;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/media/Image;

    return-object p0

    :cond_0
    const/4 p0, 0x0

    return-object p0
.end method

.method public getPreviewResult()Lcom/oplus/ocs/camera/CameraPreviewCallback$CameraPreviewResult;
    .locals 0

    .line 42
    iget-object p0, p0, Lcom/oplus/camera/aps/util/CameraApsResult;->mPreviewResult:Lcom/oplus/ocs/camera/CameraPreviewCallback$CameraPreviewResult;

    return-object p0
.end method

.method public final getTimestamp()J
    .locals 2

    .line 62
    iget-object p0, p0, Lcom/oplus/camera/aps/util/CameraApsResult;->mPreviewResult:Lcom/oplus/ocs/camera/CameraPreviewCallback$CameraPreviewResult;

    if-eqz p0, :cond_0

    .line 63
    sget-object v0, Lcom/oplus/ocs/camera/CameraParameter;->PREVIEW_RESULT_IMAGE_TIME_STAMP:Lcom/oplus/ocs/camera/CameraParameter$PreviewResultKey;

    invoke-virtual {p0, v0}, Lcom/oplus/ocs/camera/CameraPreviewCallback$CameraPreviewResult;->get(Lcom/oplus/ocs/camera/CameraParameter$PreviewResultKey;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Long;

    invoke-virtual {p0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    return-wide v0

    :cond_0
    const-wide/16 v0, -0x1

    return-wide v0
.end method

.method public isValid()Z
    .locals 1

    .line 90
    iget-object p0, p0, Lcom/oplus/camera/aps/util/CameraApsResult;->mPreviewResult:Lcom/oplus/ocs/camera/CameraPreviewCallback$CameraPreviewResult;

    if-eqz p0, :cond_0

    .line 91
    sget-object v0, Lcom/oplus/ocs/camera/CameraParameter;->PREVIEW_RESULT_IMAGE_IS_VALID:Lcom/oplus/ocs/camera/CameraParameter$PreviewResultKey;

    invoke-virtual {p0, v0}, Lcom/oplus/ocs/camera/CameraPreviewCallback$CameraPreviewResult;->get(Lcom/oplus/ocs/camera/CameraParameter$PreviewResultKey;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Boolean;

    invoke-virtual {p0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p0

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method
