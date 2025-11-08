.class Lcom/oplus/ocs/camera/CameraPreviewCallbackAdapterV2;
.super Lcom/oplus/ocs/camera/appinterface/CameraPreviewCallbackAdapter;
.source "CameraPreviewCallbackAdapterV2.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/oplus/ocs/camera/CameraPreviewCallbackAdapterV2$CameraPreviewResultV2;
    }
.end annotation


# instance fields
.field private mCameraPreviewCallback:Lcom/oplus/ocs/camera/CameraPreviewCallback;


# direct methods
.method constructor <init>(Lcom/oplus/ocs/camera/CameraPreviewCallback;)V
    .locals 1

    .line 19
    invoke-direct {p0}, Lcom/oplus/ocs/camera/appinterface/CameraPreviewCallbackAdapter;-><init>()V

    const/4 v0, 0x0

    .line 17
    iput-object v0, p0, Lcom/oplus/ocs/camera/CameraPreviewCallbackAdapterV2;->mCameraPreviewCallback:Lcom/oplus/ocs/camera/CameraPreviewCallback;

    .line 20
    iput-object p1, p0, Lcom/oplus/ocs/camera/CameraPreviewCallbackAdapterV2;->mCameraPreviewCallback:Lcom/oplus/ocs/camera/CameraPreviewCallback;

    return-void
.end method


# virtual methods
.method public generateImageInfo(Landroid/media/Image;)Ljava/util/Map;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/media/Image;",
            ")",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .line 57
    iget-object p0, p0, Lcom/oplus/ocs/camera/CameraPreviewCallbackAdapterV2;->mCameraPreviewCallback:Lcom/oplus/ocs/camera/CameraPreviewCallback;

    invoke-virtual {p0, p1}, Lcom/oplus/ocs/camera/CameraPreviewCallback;->generateImageInfo(Landroid/media/Image;)Ljava/util/Map;

    move-result-object p0

    return-object p0
.end method

.method public onCaptureCompleted(Landroid/hardware/camera2/CaptureRequest;Lcom/oplus/ocs/camera/appinterface/CameraPreviewCallbackAdapter$PreviewResult;)V
    .locals 1

    .line 25
    invoke-super {p0, p1, p2}, Lcom/oplus/ocs/camera/appinterface/CameraPreviewCallbackAdapter;->onCaptureCompleted(Landroid/hardware/camera2/CaptureRequest;Lcom/oplus/ocs/camera/appinterface/CameraPreviewCallbackAdapter$PreviewResult;)V

    .line 27
    iget-object p0, p0, Lcom/oplus/ocs/camera/CameraPreviewCallbackAdapterV2;->mCameraPreviewCallback:Lcom/oplus/ocs/camera/CameraPreviewCallback;

    if-eqz p0, :cond_0

    if-eqz p2, :cond_0

    .line 28
    new-instance p1, Lcom/oplus/ocs/camera/CameraPreviewCallback$CameraPreviewResult;

    new-instance v0, Lcom/oplus/ocs/camera/CameraPreviewCallbackAdapterV2$CameraPreviewResultV2;

    invoke-direct {v0, p2}, Lcom/oplus/ocs/camera/CameraPreviewCallbackAdapterV2$CameraPreviewResultV2;-><init>(Lcom/oplus/ocs/camera/appinterface/CameraPreviewCallbackAdapter$PreviewResult;)V

    invoke-direct {p1, v0}, Lcom/oplus/ocs/camera/CameraPreviewCallback$CameraPreviewResult;-><init>(Lcom/oplus/ocs/camera/CameraPreviewResultAdapter;)V

    invoke-virtual {p0, p1}, Lcom/oplus/ocs/camera/CameraPreviewCallback;->onPreviewMetaReceived(Lcom/oplus/ocs/camera/CameraPreviewCallback$CameraPreviewResult;)V

    :cond_0
    return-void
.end method

.method public onHalPreviewCollected(J)V
    .locals 0

    .line 62
    iget-object p0, p0, Lcom/oplus/ocs/camera/CameraPreviewCallbackAdapterV2;->mCameraPreviewCallback:Lcom/oplus/ocs/camera/CameraPreviewCallback;

    invoke-virtual {p0, p1, p2}, Lcom/oplus/ocs/camera/CameraPreviewCallback;->onHalPreviewCollected(J)V

    return-void
.end method

.method public onPreviewCaptureProgressed(Landroid/hardware/camera2/CaptureRequest;Landroid/hardware/camera2/CaptureResult;)V
    .locals 0

    .line 52
    iget-object p0, p0, Lcom/oplus/ocs/camera/CameraPreviewCallbackAdapterV2;->mCameraPreviewCallback:Lcom/oplus/ocs/camera/CameraPreviewCallback;

    invoke-virtual {p0, p1, p2}, Lcom/oplus/ocs/camera/CameraPreviewCallback;->onPreviewCaptureProgressed(Landroid/hardware/camera2/CaptureRequest;Landroid/hardware/camera2/CaptureResult;)V

    return-void
.end method

.method public onPreviewFrameReceived(Landroid/media/Image;)V
    .locals 0

    .line 47
    iget-object p0, p0, Lcom/oplus/ocs/camera/CameraPreviewCallbackAdapterV2;->mCameraPreviewCallback:Lcom/oplus/ocs/camera/CameraPreviewCallback;

    invoke-virtual {p0, p1}, Lcom/oplus/ocs/camera/CameraPreviewCallback;->onPreviewFrameReceived(Landroid/media/Image;)V

    return-void
.end method

.method public onPreviewReceived(Lcom/oplus/ocs/camera/appinterface/CameraPreviewCallbackAdapter$PreviewResult;)V
    .locals 2

    .line 35
    iget-object p0, p0, Lcom/oplus/ocs/camera/CameraPreviewCallbackAdapterV2;->mCameraPreviewCallback:Lcom/oplus/ocs/camera/CameraPreviewCallback;

    new-instance v0, Lcom/oplus/ocs/camera/CameraPreviewCallback$CameraPreviewResult;

    new-instance v1, Lcom/oplus/ocs/camera/CameraPreviewCallbackAdapterV2$CameraPreviewResultV2;

    invoke-direct {v1, p1}, Lcom/oplus/ocs/camera/CameraPreviewCallbackAdapterV2$CameraPreviewResultV2;-><init>(Lcom/oplus/ocs/camera/appinterface/CameraPreviewCallbackAdapter$PreviewResult;)V

    invoke-direct {v0, v1}, Lcom/oplus/ocs/camera/CameraPreviewCallback$CameraPreviewResult;-><init>(Lcom/oplus/ocs/camera/CameraPreviewResultAdapter;)V

    invoke-virtual {p0, v0}, Lcom/oplus/ocs/camera/CameraPreviewCallback;->onPreviewReceived(Lcom/oplus/ocs/camera/CameraPreviewCallback$CameraPreviewResult;)V

    return-void
.end method

.method public onVideoReceived(Lcom/oplus/ocs/camera/appinterface/CameraPreviewCallbackAdapter$PreviewResult;)V
    .locals 2

    .line 41
    iget-object p0, p0, Lcom/oplus/ocs/camera/CameraPreviewCallbackAdapterV2;->mCameraPreviewCallback:Lcom/oplus/ocs/camera/CameraPreviewCallback;

    new-instance v0, Lcom/oplus/ocs/camera/CameraPreviewCallback$CameraPreviewResult;

    new-instance v1, Lcom/oplus/ocs/camera/CameraPreviewCallbackAdapterV2$CameraPreviewResultV2;

    invoke-direct {v1, p1}, Lcom/oplus/ocs/camera/CameraPreviewCallbackAdapterV2$CameraPreviewResultV2;-><init>(Lcom/oplus/ocs/camera/appinterface/CameraPreviewCallbackAdapter$PreviewResult;)V

    invoke-direct {v0, v1}, Lcom/oplus/ocs/camera/CameraPreviewCallback$CameraPreviewResult;-><init>(Lcom/oplus/ocs/camera/CameraPreviewResultAdapter;)V

    invoke-virtual {p0, v0}, Lcom/oplus/ocs/camera/CameraPreviewCallback;->onVideoReceived(Lcom/oplus/ocs/camera/CameraPreviewCallback$CameraPreviewResult;)V

    return-void
.end method
