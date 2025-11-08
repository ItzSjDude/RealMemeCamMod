.class Lcom/oplus/ocs/camera/CameraDeviceAdapterV2;
.super Lcom/oplus/ocs/camera/CameraDeviceAdapter;
.source "CameraDeviceAdapterV2.java"


# instance fields
.field private mCameraDeviceInterface:Lcom/oplus/ocs/camera/appinterface/CameraDeviceInterface;


# direct methods
.method constructor <init>(Lcom/oplus/ocs/camera/appinterface/CameraDeviceInterface;)V
    .locals 1

    .line 22
    invoke-direct {p0}, Lcom/oplus/ocs/camera/CameraDeviceAdapter;-><init>()V

    const/4 v0, 0x0

    .line 20
    iput-object v0, p0, Lcom/oplus/ocs/camera/CameraDeviceAdapterV2;->mCameraDeviceInterface:Lcom/oplus/ocs/camera/appinterface/CameraDeviceInterface;

    .line 23
    iput-object p1, p0, Lcom/oplus/ocs/camera/CameraDeviceAdapterV2;->mCameraDeviceInterface:Lcom/oplus/ocs/camera/appinterface/CameraDeviceInterface;

    return-void
.end method


# virtual methods
.method public abortCaptures()V
    .locals 0

    .line 147
    iget-object p0, p0, Lcom/oplus/ocs/camera/CameraDeviceAdapterV2;->mCameraDeviceInterface:Lcom/oplus/ocs/camera/appinterface/CameraDeviceInterface;

    if-eqz p0, :cond_0

    .line 148
    invoke-interface {p0}, Lcom/oplus/ocs/camera/appinterface/CameraDeviceInterface;->abortCaptures()V

    :cond_0
    return-void
.end method

.method public close(Z)V
    .locals 1

    const/4 v0, 0x1

    .line 154
    invoke-virtual {p0, p1, v0}, Lcom/oplus/ocs/camera/CameraDeviceAdapterV2;->close(ZZ)V

    return-void
.end method

.method public close(ZZ)V
    .locals 0

    .line 159
    iget-object p0, p0, Lcom/oplus/ocs/camera/CameraDeviceAdapterV2;->mCameraDeviceInterface:Lcom/oplus/ocs/camera/appinterface/CameraDeviceInterface;

    if-eqz p0, :cond_0

    .line 160
    invoke-interface {p0, p1, p2}, Lcom/oplus/ocs/camera/appinterface/CameraDeviceInterface;->close(ZZ)V

    :cond_0
    return-void
.end method

.method public closeSession()V
    .locals 0

    .line 96
    iget-object p0, p0, Lcom/oplus/ocs/camera/CameraDeviceAdapterV2;->mCameraDeviceInterface:Lcom/oplus/ocs/camera/appinterface/CameraDeviceInterface;

    if-eqz p0, :cond_0

    .line 97
    invoke-interface {p0}, Lcom/oplus/ocs/camera/appinterface/CameraDeviceInterface;->closeSession()V

    :cond_0
    return-void
.end method

.method public configure(Lcom/oplus/ocs/camera/CameraDeviceConfig;)V
    .locals 1

    .line 37
    iget-object v0, p0, Lcom/oplus/ocs/camera/CameraDeviceAdapterV2;->mCameraDeviceInterface:Lcom/oplus/ocs/camera/appinterface/CameraDeviceInterface;

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Lcom/oplus/ocs/camera/CameraDeviceConfig;->getConfig()Ljava/lang/Object;

    move-result-object v0

    instance-of v0, v0, Lcom/oplus/ocs/camera/common/parameter/SdkCameraDeviceConfig;

    if-eqz v0, :cond_0

    .line 38
    iget-object p0, p0, Lcom/oplus/ocs/camera/CameraDeviceAdapterV2;->mCameraDeviceInterface:Lcom/oplus/ocs/camera/appinterface/CameraDeviceInterface;

    invoke-virtual {p1}, Lcom/oplus/ocs/camera/CameraDeviceConfig;->getConfig()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/oplus/ocs/camera/common/parameter/SdkCameraDeviceConfig;

    invoke-interface {p0, p1}, Lcom/oplus/ocs/camera/appinterface/CameraDeviceInterface;->configure(Lcom/oplus/ocs/camera/common/parameter/SdkCameraDeviceConfig;)V

    :cond_0
    return-void
.end method

.method public getCameraDeviceInfo(Ljava/lang/String;Ljava/lang/String;)Lcom/oplus/ocs/camera/CameraDeviceInfoAdapter;
    .locals 1

    .line 28
    iget-object p0, p0, Lcom/oplus/ocs/camera/CameraDeviceAdapterV2;->mCameraDeviceInterface:Lcom/oplus/ocs/camera/appinterface/CameraDeviceInterface;

    if-eqz p0, :cond_0

    .line 29
    new-instance v0, Lcom/oplus/ocs/camera/CameraDeviceInfoAdapterV2;

    invoke-interface {p0, p1, p2}, Lcom/oplus/ocs/camera/appinterface/CameraDeviceInterface;->getCameraDeviceInfo(Ljava/lang/String;Ljava/lang/String;)Lcom/oplus/ocs/camera/appinterface/CameraDeviceInfoInterface;

    move-result-object p0

    invoke-direct {v0, p0}, Lcom/oplus/ocs/camera/CameraDeviceInfoAdapterV2;-><init>(Lcom/oplus/ocs/camera/appinterface/CameraDeviceInfoInterface;)V

    return-object v0

    :cond_0
    const/4 p0, 0x0

    return-object p0
.end method

.method public getVideoSurface()Landroid/view/Surface;
    .locals 0

    .line 103
    iget-object p0, p0, Lcom/oplus/ocs/camera/CameraDeviceAdapterV2;->mCameraDeviceInterface:Lcom/oplus/ocs/camera/appinterface/CameraDeviceInterface;

    if-eqz p0, :cond_0

    .line 104
    invoke-interface {p0}, Lcom/oplus/ocs/camera/appinterface/CameraDeviceInterface;->getVideoSurface()Landroid/view/Surface;

    move-result-object p0

    return-object p0

    :cond_0
    const/4 p0, 0x0

    return-object p0
.end method

.method public notifyLastCaptureFrame()Z
    .locals 0

    .line 182
    iget-object p0, p0, Lcom/oplus/ocs/camera/CameraDeviceAdapterV2;->mCameraDeviceInterface:Lcom/oplus/ocs/camera/appinterface/CameraDeviceInterface;

    invoke-interface {p0}, Lcom/oplus/ocs/camera/appinterface/CameraDeviceInterface;->notifyLastCaptureFrame()Z

    move-result p0

    return p0
.end method

.method public pauseRecording()V
    .locals 0

    .line 126
    iget-object p0, p0, Lcom/oplus/ocs/camera/CameraDeviceAdapterV2;->mCameraDeviceInterface:Lcom/oplus/ocs/camera/appinterface/CameraDeviceInterface;

    if-eqz p0, :cond_0

    .line 127
    invoke-interface {p0}, Lcom/oplus/ocs/camera/appinterface/CameraDeviceInterface;->pauseRecording()V

    :cond_0
    return-void
.end method

.method public processBitmap(Landroid/graphics/Bitmap;Landroid/hardware/camera2/CaptureResult;III)Landroid/graphics/Bitmap;
    .locals 6

    .line 173
    iget-object v0, p0, Lcom/oplus/ocs/camera/CameraDeviceAdapterV2;->mCameraDeviceInterface:Lcom/oplus/ocs/camera/appinterface/CameraDeviceInterface;

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    move v4, p4

    move v5, p5

    invoke-interface/range {v0 .. v5}, Lcom/oplus/ocs/camera/appinterface/CameraDeviceInterface;->processBitmap(Landroid/graphics/Bitmap;Landroid/hardware/camera2/CaptureResult;III)Landroid/graphics/Bitmap;

    move-result-object p0

    return-object p0
.end method

.method public registerFlashCallback(Lcom/oplus/ocs/camera/CameraFlashCallback;Landroid/os/Handler;)V
    .locals 1

    .line 166
    iget-object p0, p0, Lcom/oplus/ocs/camera/CameraDeviceAdapterV2;->mCameraDeviceInterface:Lcom/oplus/ocs/camera/appinterface/CameraDeviceInterface;

    if-eqz p0, :cond_0

    .line 167
    new-instance v0, Lcom/oplus/ocs/camera/CameraFlashCallbackAdapterV2;

    invoke-direct {v0, p1}, Lcom/oplus/ocs/camera/CameraFlashCallbackAdapterV2;-><init>(Lcom/oplus/ocs/camera/CameraFlashCallback;)V

    invoke-interface {p0, v0, p2}, Lcom/oplus/ocs/camera/appinterface/CameraDeviceInterface;->registerFlashCallback(Lcom/oplus/ocs/camera/appinterface/CameraFlashCallbackAdapter;Landroid/os/Handler;)V

    :cond_0
    return-void
.end method

.method public resumeRecording()V
    .locals 0

    .line 119
    iget-object p0, p0, Lcom/oplus/ocs/camera/CameraDeviceAdapterV2;->mCameraDeviceInterface:Lcom/oplus/ocs/camera/appinterface/CameraDeviceInterface;

    if-eqz p0, :cond_0

    .line 120
    invoke-interface {p0}, Lcom/oplus/ocs/camera/appinterface/CameraDeviceInterface;->resumeRecording()V

    :cond_0
    return-void
.end method

.method public setParameter(Landroid/hardware/camera2/CaptureRequest$Key;Ljava/lang/Object;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Landroid/hardware/camera2/CaptureRequest$Key<",
            "TT;>;TT;)V"
        }
    .end annotation

    .line 59
    iget-object p0, p0, Lcom/oplus/ocs/camera/CameraDeviceAdapterV2;->mCameraDeviceInterface:Lcom/oplus/ocs/camera/appinterface/CameraDeviceInterface;

    if-eqz p0, :cond_0

    .line 60
    invoke-interface {p0, p1, p2}, Lcom/oplus/ocs/camera/appinterface/CameraDeviceInterface;->setParameter(Landroid/hardware/camera2/CaptureRequest$Key;Ljava/lang/Object;)V

    :cond_0
    return-void
.end method

.method public setParameter(Ljava/lang/String;Landroid/hardware/camera2/CaptureRequest$Key;Ljava/lang/Object;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/String;",
            "Landroid/hardware/camera2/CaptureRequest$Key<",
            "TT;>;TT;)V"
        }
    .end annotation

    .line 67
    iget-object p0, p0, Lcom/oplus/ocs/camera/CameraDeviceAdapterV2;->mCameraDeviceInterface:Lcom/oplus/ocs/camera/appinterface/CameraDeviceInterface;

    if-eqz p0, :cond_0

    .line 68
    invoke-interface {p0, p1, p2, p3}, Lcom/oplus/ocs/camera/appinterface/CameraDeviceInterface;->setParameter(Ljava/lang/String;Landroid/hardware/camera2/CaptureRequest$Key;Ljava/lang/Object;)V

    :cond_0
    return-void
.end method

.method public setParameter(Ljava/lang/String;Ljava/lang/Object;)V
    .locals 0

    .line 44
    iget-object p0, p0, Lcom/oplus/ocs/camera/CameraDeviceAdapterV2;->mCameraDeviceInterface:Lcom/oplus/ocs/camera/appinterface/CameraDeviceInterface;

    if-eqz p0, :cond_0

    .line 45
    invoke-interface {p0, p1, p2}, Lcom/oplus/ocs/camera/appinterface/CameraDeviceInterface;->setParameter(Ljava/lang/String;Ljava/lang/Object;)V

    :cond_0
    return-void
.end method

.method public setParameter(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V
    .locals 0

    .line 51
    iget-object p0, p0, Lcom/oplus/ocs/camera/CameraDeviceAdapterV2;->mCameraDeviceInterface:Lcom/oplus/ocs/camera/appinterface/CameraDeviceInterface;

    if-eqz p0, :cond_0

    .line 52
    invoke-interface {p0, p1, p2, p3}, Lcom/oplus/ocs/camera/appinterface/CameraDeviceInterface;->setParameter(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    :cond_0
    return-void
.end method

.method public setStopPreviewAfterCapture(Z)V
    .locals 0

    .line 188
    iget-object p0, p0, Lcom/oplus/ocs/camera/CameraDeviceAdapterV2;->mCameraDeviceInterface:Lcom/oplus/ocs/camera/appinterface/CameraDeviceInterface;

    if-eqz p0, :cond_0

    .line 189
    invoke-interface {p0, p1}, Lcom/oplus/ocs/camera/appinterface/CameraDeviceInterface;->setStopPreviewAfterCapture(Z)V

    :cond_0
    return-void
.end method

.method public startPreview(Ljava/util/Map;Lcom/oplus/ocs/camera/CameraPreviewCallback;Landroid/os/Handler;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Landroid/view/Surface;",
            ">;",
            "Lcom/oplus/ocs/camera/CameraPreviewCallback;",
            "Landroid/os/Handler;",
            ")V"
        }
    .end annotation

    .line 74
    iget-object p0, p0, Lcom/oplus/ocs/camera/CameraDeviceAdapterV2;->mCameraDeviceInterface:Lcom/oplus/ocs/camera/appinterface/CameraDeviceInterface;

    if-eqz p0, :cond_0

    .line 75
    new-instance v0, Lcom/oplus/ocs/camera/CameraPreviewCallbackAdapterV2;

    invoke-direct {v0, p2}, Lcom/oplus/ocs/camera/CameraPreviewCallbackAdapterV2;-><init>(Lcom/oplus/ocs/camera/CameraPreviewCallback;)V

    invoke-interface {p0, p1, v0, p3}, Lcom/oplus/ocs/camera/appinterface/CameraDeviceInterface;->startPreview(Ljava/util/Map;Lcom/oplus/ocs/camera/appinterface/CameraPreviewCallbackAdapter;Landroid/os/Handler;)V

    :cond_0
    return-void
.end method

.method public startRecording(Lcom/oplus/ocs/camera/CameraRecordingCallback;Landroid/os/Handler;)V
    .locals 1

    .line 112
    iget-object p0, p0, Lcom/oplus/ocs/camera/CameraDeviceAdapterV2;->mCameraDeviceInterface:Lcom/oplus/ocs/camera/appinterface/CameraDeviceInterface;

    if-eqz p0, :cond_0

    .line 113
    new-instance v0, Lcom/oplus/ocs/camera/CameraRecordingCallbackAdapterV2;

    invoke-direct {v0, p1}, Lcom/oplus/ocs/camera/CameraRecordingCallbackAdapterV2;-><init>(Lcom/oplus/ocs/camera/CameraRecordingCallback;)V

    invoke-interface {p0, v0, p2}, Lcom/oplus/ocs/camera/appinterface/CameraDeviceInterface;->startRecording(Lcom/oplus/ocs/camera/appinterface/CameraRecordingCallbackAdapter;Landroid/os/Handler;)V

    :cond_0
    return-void
.end method

.method public stopPreview()V
    .locals 0

    .line 81
    iget-object p0, p0, Lcom/oplus/ocs/camera/CameraDeviceAdapterV2;->mCameraDeviceInterface:Lcom/oplus/ocs/camera/appinterface/CameraDeviceInterface;

    if-eqz p0, :cond_0

    .line 82
    invoke-interface {p0}, Lcom/oplus/ocs/camera/appinterface/CameraDeviceInterface;->stopPreview()V

    :cond_0
    return-void
.end method

.method public stopPreview(Z)V
    .locals 0

    .line 89
    iget-object p0, p0, Lcom/oplus/ocs/camera/CameraDeviceAdapterV2;->mCameraDeviceInterface:Lcom/oplus/ocs/camera/appinterface/CameraDeviceInterface;

    if-eqz p0, :cond_0

    .line 90
    invoke-interface {p0, p1}, Lcom/oplus/ocs/camera/appinterface/CameraDeviceInterface;->stopPreview(Z)V

    :cond_0
    return-void
.end method

.method public stopRecording()V
    .locals 0

    .line 133
    iget-object p0, p0, Lcom/oplus/ocs/camera/CameraDeviceAdapterV2;->mCameraDeviceInterface:Lcom/oplus/ocs/camera/appinterface/CameraDeviceInterface;

    if-eqz p0, :cond_0

    .line 134
    invoke-interface {p0}, Lcom/oplus/ocs/camera/appinterface/CameraDeviceInterface;->stopRecording()V

    :cond_0
    return-void
.end method

.method public takePicture(Lcom/oplus/ocs/camera/CameraPictureCallback;Landroid/os/Handler;)V
    .locals 1

    .line 140
    iget-object p0, p0, Lcom/oplus/ocs/camera/CameraDeviceAdapterV2;->mCameraDeviceInterface:Lcom/oplus/ocs/camera/appinterface/CameraDeviceInterface;

    if-eqz p0, :cond_0

    .line 141
    new-instance v0, Lcom/oplus/ocs/camera/CameraPictureCallbackAdapterV2;

    invoke-direct {v0, p1}, Lcom/oplus/ocs/camera/CameraPictureCallbackAdapterV2;-><init>(Lcom/oplus/ocs/camera/CameraPictureCallback;)V

    invoke-interface {p0, v0, p2}, Lcom/oplus/ocs/camera/appinterface/CameraDeviceInterface;->takePicture(Lcom/oplus/ocs/camera/appinterface/CameraPictureCallbackAdapter;Landroid/os/Handler;)V

    :cond_0
    return-void
.end method

.method public updateThumbnailMap(J)V
    .locals 0

    .line 178
    iget-object p0, p0, Lcom/oplus/ocs/camera/CameraDeviceAdapterV2;->mCameraDeviceInterface:Lcom/oplus/ocs/camera/appinterface/CameraDeviceInterface;

    invoke-interface {p0, p1, p2}, Lcom/oplus/ocs/camera/appinterface/CameraDeviceInterface;->updateThumbnailMap(J)V

    return-void
.end method
