.class abstract Lcom/oplus/ocs/camera/CameraDeviceAdapter;
.super Ljava/lang/Object;
.source "CameraDeviceAdapter.java"


# direct methods
.method constructor <init>()V
    .locals 0

    .line 18
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public abortCaptures()V
    .locals 0

    return-void
.end method

.method public close(Z)V
    .locals 0

    return-void
.end method

.method public close(ZZ)V
    .locals 0

    return-void
.end method

.method public closeSession()V
    .locals 0

    return-void
.end method

.method public configure(Lcom/oplus/ocs/camera/CameraDeviceConfig;)V
    .locals 0

    return-void
.end method

.method public getCameraDeviceInfo(Ljava/lang/String;Ljava/lang/String;)Lcom/oplus/ocs/camera/CameraDeviceInfoAdapter;
    .locals 0

    const/4 p0, 0x0

    return-object p0
.end method

.method public getVideoSurface()Landroid/view/Surface;
    .locals 0

    const/4 p0, 0x0

    return-object p0
.end method

.method public notifyLastCaptureFrame()Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public pauseRecording()V
    .locals 0

    return-void
.end method

.method public processBitmap(Landroid/graphics/Bitmap;Landroid/hardware/camera2/CaptureResult;III)Landroid/graphics/Bitmap;
    .locals 0

    const/4 p0, 0x0

    return-object p0
.end method

.method public registerFlashCallback(Lcom/oplus/ocs/camera/CameraFlashCallback;Landroid/os/Handler;)V
    .locals 0

    return-void
.end method

.method public resumeRecording()V
    .locals 0

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

    return-void
.end method

.method public setParameter(Ljava/lang/String;Ljava/lang/Object;)V
    .locals 0

    return-void
.end method

.method public setParameter(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V
    .locals 0

    return-void
.end method

.method public setStopPreviewAfterCapture(Z)V
    .locals 0

    return-void
.end method

.method public startPreview(Ljava/util/Map;Lcom/oplus/ocs/camera/CameraPreviewCallback;Landroid/os/Handler;)V
    .locals 0
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

    return-void
.end method

.method public startRecording(Lcom/oplus/ocs/camera/CameraRecordingCallback;Landroid/os/Handler;)V
    .locals 0

    return-void
.end method

.method public stopPreview()V
    .locals 0

    return-void
.end method

.method public stopPreview(Z)V
    .locals 0

    return-void
.end method

.method public stopRecording()V
    .locals 0

    return-void
.end method

.method public takePicture(Lcom/oplus/ocs/camera/CameraPictureCallback;Landroid/os/Handler;)V
    .locals 0

    return-void
.end method

.method public updateThumbnailMap(J)V
    .locals 0

    return-void
.end method
