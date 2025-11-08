.class Lcom/oplus/ocs/camera/CameraPictureCallbackAdapterV2;
.super Lcom/oplus/ocs/camera/appinterface/CameraPictureCallbackAdapter;
.source "CameraPictureCallbackAdapterV2.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/oplus/ocs/camera/CameraPictureCallbackAdapterV2$CameraPictureResultV2;,
        Lcom/oplus/ocs/camera/CameraPictureCallbackAdapterV2$CameraPictureImageV2;
    }
.end annotation


# instance fields
.field private mCameraPictureCallback:Lcom/oplus/ocs/camera/CameraPictureCallback;


# direct methods
.method constructor <init>(Lcom/oplus/ocs/camera/CameraPictureCallback;)V
    .locals 1

    .line 19
    invoke-direct {p0}, Lcom/oplus/ocs/camera/appinterface/CameraPictureCallbackAdapter;-><init>()V

    const/4 v0, 0x0

    .line 17
    iput-object v0, p0, Lcom/oplus/ocs/camera/CameraPictureCallbackAdapterV2;->mCameraPictureCallback:Lcom/oplus/ocs/camera/CameraPictureCallback;

    .line 20
    iput-object p1, p0, Lcom/oplus/ocs/camera/CameraPictureCallbackAdapterV2;->mCameraPictureCallback:Lcom/oplus/ocs/camera/CameraPictureCallback;

    return-void
.end method


# virtual methods
.method public afterProcessImage(ILcom/oplus/ocs/camera/appinterface/CameraPictureCallbackAdapter$PictureResult;)V
    .locals 2

    .line 118
    invoke-super {p0, p1, p2}, Lcom/oplus/ocs/camera/appinterface/CameraPictureCallbackAdapter;->afterProcessImage(ILcom/oplus/ocs/camera/appinterface/CameraPictureCallbackAdapter$PictureResult;)V

    .line 120
    iget-object p0, p0, Lcom/oplus/ocs/camera/CameraPictureCallbackAdapterV2;->mCameraPictureCallback:Lcom/oplus/ocs/camera/CameraPictureCallback;

    if-eqz p0, :cond_1

    if-eqz p2, :cond_0

    .line 121
    new-instance v0, Lcom/oplus/ocs/camera/CameraPictureCallback$CameraPictureResult;

    new-instance v1, Lcom/oplus/ocs/camera/CameraPictureCallbackAdapterV2$CameraPictureResultV2;

    invoke-direct {v1, p2}, Lcom/oplus/ocs/camera/CameraPictureCallbackAdapterV2$CameraPictureResultV2;-><init>(Lcom/oplus/ocs/camera/appinterface/CameraPictureCallbackAdapter$PictureResult;)V

    invoke-direct {v0, v1}, Lcom/oplus/ocs/camera/CameraPictureCallback$CameraPictureResult;-><init>(Lcom/oplus/ocs/camera/CameraPictureResultAdapter;)V

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    invoke-virtual {p0, p1, v0}, Lcom/oplus/ocs/camera/CameraPictureCallback;->afterProcessImage(ILcom/oplus/ocs/camera/CameraPictureCallback$CameraPictureResult;)V

    :cond_1
    return-void
.end method

.method public fillApsParameters(ILjava/util/Map;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 128
    iget-object p0, p0, Lcom/oplus/ocs/camera/CameraPictureCallbackAdapterV2;->mCameraPictureCallback:Lcom/oplus/ocs/camera/CameraPictureCallback;

    invoke-virtual {p0, p1, p2}, Lcom/oplus/ocs/camera/CameraPictureCallback;->fillApsParameters(ILjava/util/Map;)V

    return-void
.end method

.method public onBurstShotEnd(Lcom/oplus/ocs/camera/appinterface/CameraPictureCallbackAdapter$PictureResult;)V
    .locals 2

    .line 108
    invoke-super {p0, p1}, Lcom/oplus/ocs/camera/appinterface/CameraPictureCallbackAdapter;->onBurstShotEnd(Lcom/oplus/ocs/camera/appinterface/CameraPictureCallbackAdapter$PictureResult;)V

    .line 110
    iget-object p0, p0, Lcom/oplus/ocs/camera/CameraPictureCallbackAdapterV2;->mCameraPictureCallback:Lcom/oplus/ocs/camera/CameraPictureCallback;

    if-eqz p0, :cond_1

    if-eqz p1, :cond_0

    .line 111
    new-instance v0, Lcom/oplus/ocs/camera/CameraPictureCallback$CameraPictureResult;

    new-instance v1, Lcom/oplus/ocs/camera/CameraPictureCallbackAdapterV2$CameraPictureResultV2;

    invoke-direct {v1, p1}, Lcom/oplus/ocs/camera/CameraPictureCallbackAdapterV2$CameraPictureResultV2;-><init>(Lcom/oplus/ocs/camera/appinterface/CameraPictureCallbackAdapter$PictureResult;)V

    invoke-direct {v0, v1}, Lcom/oplus/ocs/camera/CameraPictureCallback$CameraPictureResult;-><init>(Lcom/oplus/ocs/camera/CameraPictureResultAdapter;)V

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    invoke-virtual {p0, v0}, Lcom/oplus/ocs/camera/CameraPictureCallback;->onBurstShotEnd(Lcom/oplus/ocs/camera/CameraPictureCallback$CameraPictureResult;)V

    :cond_1
    return-void
.end method

.method public onBurstShotStart(J)V
    .locals 0

    .line 99
    invoke-super {p0, p1, p2}, Lcom/oplus/ocs/camera/appinterface/CameraPictureCallbackAdapter;->onBurstShotStart(J)V

    .line 101
    iget-object p0, p0, Lcom/oplus/ocs/camera/CameraPictureCallbackAdapterV2;->mCameraPictureCallback:Lcom/oplus/ocs/camera/CameraPictureCallback;

    if-eqz p0, :cond_0

    .line 102
    invoke-virtual {p0, p1, p2}, Lcom/oplus/ocs/camera/CameraPictureCallback;->onBurstShotStart(J)V

    :cond_0
    return-void
.end method

.method public onCaptureCompleted(Landroid/hardware/camera2/CaptureRequest;Lcom/oplus/ocs/camera/appinterface/CameraPictureCallbackAdapter$PictureResult;)V
    .locals 1

    .line 61
    invoke-super {p0, p1, p2}, Lcom/oplus/ocs/camera/appinterface/CameraPictureCallbackAdapter;->onCaptureCompleted(Landroid/hardware/camera2/CaptureRequest;Lcom/oplus/ocs/camera/appinterface/CameraPictureCallbackAdapter$PictureResult;)V

    .line 63
    iget-object p0, p0, Lcom/oplus/ocs/camera/CameraPictureCallbackAdapterV2;->mCameraPictureCallback:Lcom/oplus/ocs/camera/CameraPictureCallback;

    if-eqz p0, :cond_1

    if-eqz p2, :cond_0

    .line 64
    new-instance p1, Lcom/oplus/ocs/camera/CameraPictureCallback$CameraPictureResult;

    new-instance v0, Lcom/oplus/ocs/camera/CameraPictureCallbackAdapterV2$CameraPictureResultV2;

    invoke-direct {v0, p2}, Lcom/oplus/ocs/camera/CameraPictureCallbackAdapterV2$CameraPictureResultV2;-><init>(Lcom/oplus/ocs/camera/appinterface/CameraPictureCallbackAdapter$PictureResult;)V

    invoke-direct {p1, v0}, Lcom/oplus/ocs/camera/CameraPictureCallback$CameraPictureResult;-><init>(Lcom/oplus/ocs/camera/CameraPictureResultAdapter;)V

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    invoke-virtual {p0, p1}, Lcom/oplus/ocs/camera/CameraPictureCallback;->onCaptureMetaReceived(Lcom/oplus/ocs/camera/CameraPictureCallback$CameraPictureResult;)V

    :cond_1
    return-void
.end method

.method public onCaptureFailed(Landroid/hardware/camera2/CaptureRequest;Lcom/oplus/ocs/camera/appinterface/CameraPictureCallbackAdapter$PictureResult;)V
    .locals 1

    .line 71
    invoke-super {p0, p1, p2}, Lcom/oplus/ocs/camera/appinterface/CameraPictureCallbackAdapter;->onCaptureFailed(Landroid/hardware/camera2/CaptureRequest;Lcom/oplus/ocs/camera/appinterface/CameraPictureCallbackAdapter$PictureResult;)V

    .line 73
    iget-object p0, p0, Lcom/oplus/ocs/camera/CameraPictureCallbackAdapterV2;->mCameraPictureCallback:Lcom/oplus/ocs/camera/CameraPictureCallback;

    if-eqz p0, :cond_1

    if-eqz p2, :cond_0

    .line 74
    new-instance p1, Lcom/oplus/ocs/camera/CameraPictureCallback$CameraPictureResult;

    new-instance v0, Lcom/oplus/ocs/camera/CameraPictureCallbackAdapterV2$CameraPictureResultV2;

    invoke-direct {v0, p2}, Lcom/oplus/ocs/camera/CameraPictureCallbackAdapterV2$CameraPictureResultV2;-><init>(Lcom/oplus/ocs/camera/appinterface/CameraPictureCallbackAdapter$PictureResult;)V

    invoke-direct {p1, v0}, Lcom/oplus/ocs/camera/CameraPictureCallback$CameraPictureResult;-><init>(Lcom/oplus/ocs/camera/CameraPictureResultAdapter;)V

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    invoke-virtual {p0, p1}, Lcom/oplus/ocs/camera/CameraPictureCallback;->onCaptureFailed(Lcom/oplus/ocs/camera/CameraPictureCallback$CameraPictureResult;)V

    :cond_1
    return-void
.end method

.method public onCaptureFirstFrameArrived(Landroid/hardware/camera2/CaptureRequest;Lcom/oplus/ocs/camera/appinterface/CameraPictureCallbackAdapter$PictureResult;)V
    .locals 2

    .line 41
    invoke-super {p0, p1, p2}, Lcom/oplus/ocs/camera/appinterface/CameraPictureCallbackAdapter;->onCaptureFirstFrameArrived(Landroid/hardware/camera2/CaptureRequest;Lcom/oplus/ocs/camera/appinterface/CameraPictureCallbackAdapter$PictureResult;)V

    .line 43
    iget-object p0, p0, Lcom/oplus/ocs/camera/CameraPictureCallbackAdapterV2;->mCameraPictureCallback:Lcom/oplus/ocs/camera/CameraPictureCallback;

    if-eqz p0, :cond_1

    if-eqz p2, :cond_0

    .line 44
    new-instance v0, Lcom/oplus/ocs/camera/CameraPictureCallback$CameraPictureResult;

    new-instance v1, Lcom/oplus/ocs/camera/CameraPictureCallbackAdapterV2$CameraPictureResultV2;

    invoke-direct {v1, p2}, Lcom/oplus/ocs/camera/CameraPictureCallbackAdapterV2$CameraPictureResultV2;-><init>(Lcom/oplus/ocs/camera/appinterface/CameraPictureCallbackAdapter$PictureResult;)V

    invoke-direct {v0, v1}, Lcom/oplus/ocs/camera/CameraPictureCallback$CameraPictureResult;-><init>(Lcom/oplus/ocs/camera/CameraPictureResultAdapter;)V

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    invoke-virtual {p0, p1, v0}, Lcom/oplus/ocs/camera/CameraPictureCallback;->onCaptureFirstFrameArrived(Landroid/hardware/camera2/CaptureRequest;Lcom/oplus/ocs/camera/CameraPictureCallback$CameraPictureResult;)V

    :cond_1
    return-void
.end method

.method public onCapturePrepared()V
    .locals 0

    .line 34
    iget-object p0, p0, Lcom/oplus/ocs/camera/CameraPictureCallbackAdapterV2;->mCameraPictureCallback:Lcom/oplus/ocs/camera/CameraPictureCallback;

    if-eqz p0, :cond_0

    .line 35
    invoke-virtual {p0}, Lcom/oplus/ocs/camera/CameraPictureCallback;->onCapturePrepared()V

    :cond_0
    return-void
.end method

.method public onCaptureStarted(Landroid/hardware/camera2/CaptureRequest;J)V
    .locals 0

    .line 25
    invoke-super {p0, p1, p2, p3}, Lcom/oplus/ocs/camera/appinterface/CameraPictureCallbackAdapter;->onCaptureStarted(Landroid/hardware/camera2/CaptureRequest;J)V

    .line 27
    iget-object p0, p0, Lcom/oplus/ocs/camera/CameraPictureCallbackAdapterV2;->mCameraPictureCallback:Lcom/oplus/ocs/camera/CameraPictureCallback;

    if-eqz p0, :cond_0

    .line 28
    invoke-virtual {p0, p2, p3}, Lcom/oplus/ocs/camera/CameraPictureCallback;->onCaptureShutter(J)V

    :cond_0
    return-void
.end method

.method public onFinishAddFrame(Lcom/oplus/ocs/camera/appinterface/CameraPictureCallbackAdapter$PictureResult;)V
    .locals 2

    .line 133
    iget-object p0, p0, Lcom/oplus/ocs/camera/CameraPictureCallbackAdapterV2;->mCameraPictureCallback:Lcom/oplus/ocs/camera/CameraPictureCallback;

    if-eqz p1, :cond_0

    new-instance v0, Lcom/oplus/ocs/camera/CameraPictureCallback$CameraPictureResult;

    new-instance v1, Lcom/oplus/ocs/camera/CameraPictureCallbackAdapterV2$CameraPictureResultV2;

    invoke-direct {v1, p1}, Lcom/oplus/ocs/camera/CameraPictureCallbackAdapterV2$CameraPictureResultV2;-><init>(Lcom/oplus/ocs/camera/appinterface/CameraPictureCallbackAdapter$PictureResult;)V

    invoke-direct {v0, v1}, Lcom/oplus/ocs/camera/CameraPictureCallback$CameraPictureResult;-><init>(Lcom/oplus/ocs/camera/CameraPictureResultAdapter;)V

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    invoke-virtual {p0, v0}, Lcom/oplus/ocs/camera/CameraPictureCallback;->onFinishAddFrame(Lcom/oplus/ocs/camera/CameraPictureCallback$CameraPictureResult;)V

    return-void
.end method

.method public onFirstCaptureFrameAdd()V
    .locals 0

    .line 139
    iget-object p0, p0, Lcom/oplus/ocs/camera/CameraPictureCallbackAdapterV2;->mCameraPictureCallback:Lcom/oplus/ocs/camera/CameraPictureCallback;

    invoke-virtual {p0}, Lcom/oplus/ocs/camera/CameraPictureCallback;->onFirstCaptureFrameAdd()V

    return-void
.end method

.method public onImageReceived(Lcom/oplus/ocs/camera/common/util/CameraImage;)V
    .locals 2

    .line 81
    invoke-super {p0, p1}, Lcom/oplus/ocs/camera/appinterface/CameraPictureCallbackAdapter;->onImageReceived(Lcom/oplus/ocs/camera/common/util/CameraImage;)V

    .line 83
    iget-object p0, p0, Lcom/oplus/ocs/camera/CameraPictureCallbackAdapterV2;->mCameraPictureCallback:Lcom/oplus/ocs/camera/CameraPictureCallback;

    if-eqz p0, :cond_1

    if-eqz p1, :cond_0

    .line 84
    new-instance v0, Lcom/oplus/ocs/camera/CameraPictureCallback$CameraPictureImage;

    new-instance v1, Lcom/oplus/ocs/camera/CameraPictureCallbackAdapterV2$CameraPictureImageV2;

    invoke-direct {v1, p1}, Lcom/oplus/ocs/camera/CameraPictureCallbackAdapterV2$CameraPictureImageV2;-><init>(Lcom/oplus/ocs/camera/common/util/CameraImage;)V

    invoke-direct {v0, v1}, Lcom/oplus/ocs/camera/CameraPictureCallback$CameraPictureImage;-><init>(Lcom/oplus/ocs/camera/CameraImageAdapter;)V

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    invoke-virtual {p0, v0}, Lcom/oplus/ocs/camera/CameraPictureCallback;->onImageReceived(Lcom/oplus/ocs/camera/CameraPictureCallback$CameraPictureImage;)V

    :cond_1
    return-void
.end method

.method public onPictureCaptureProgressed(Landroid/hardware/camera2/CaptureRequest;Lcom/oplus/ocs/camera/appinterface/CameraPictureCallbackAdapter$PictureResult;)V
    .locals 2

    .line 51
    invoke-super {p0, p1, p2}, Lcom/oplus/ocs/camera/appinterface/CameraPictureCallbackAdapter;->onPictureCaptureProgressed(Landroid/hardware/camera2/CaptureRequest;Lcom/oplus/ocs/camera/appinterface/CameraPictureCallbackAdapter$PictureResult;)V

    .line 53
    iget-object p0, p0, Lcom/oplus/ocs/camera/CameraPictureCallbackAdapterV2;->mCameraPictureCallback:Lcom/oplus/ocs/camera/CameraPictureCallback;

    if-eqz p0, :cond_1

    if-eqz p2, :cond_0

    .line 54
    new-instance v0, Lcom/oplus/ocs/camera/CameraPictureCallback$CameraPictureResult;

    new-instance v1, Lcom/oplus/ocs/camera/CameraPictureCallbackAdapterV2$CameraPictureResultV2;

    invoke-direct {v1, p2}, Lcom/oplus/ocs/camera/CameraPictureCallbackAdapterV2$CameraPictureResultV2;-><init>(Lcom/oplus/ocs/camera/appinterface/CameraPictureCallbackAdapter$PictureResult;)V

    invoke-direct {v0, v1}, Lcom/oplus/ocs/camera/CameraPictureCallback$CameraPictureResult;-><init>(Lcom/oplus/ocs/camera/CameraPictureResultAdapter;)V

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    invoke-virtual {p0, p1, v0}, Lcom/oplus/ocs/camera/CameraPictureCallback;->onPictureCaptureProgressed(Landroid/hardware/camera2/CaptureRequest;Lcom/oplus/ocs/camera/CameraPictureCallback$CameraPictureResult;)V

    :cond_1
    return-void
.end method

.method public onPictureCaptureSequenceCompleted(IJ)V
    .locals 0

    .line 91
    invoke-super {p0, p1, p2, p3}, Lcom/oplus/ocs/camera/appinterface/CameraPictureCallbackAdapter;->onPictureCaptureSequenceCompleted(IJ)V

    .line 93
    iget-object p0, p0, Lcom/oplus/ocs/camera/CameraPictureCallbackAdapterV2;->mCameraPictureCallback:Lcom/oplus/ocs/camera/CameraPictureCallback;

    if-eqz p0, :cond_0

    .line 94
    invoke-virtual {p0, p1, p2, p3}, Lcom/oplus/ocs/camera/CameraPictureCallback;->onPictureCaptureSequenceCompleted(IJ)V

    :cond_0
    return-void
.end method
