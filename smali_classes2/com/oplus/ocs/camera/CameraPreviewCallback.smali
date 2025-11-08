.class public abstract Lcom/oplus/ocs/camera/CameraPreviewCallback;
.super Ljava/lang/Object;
.source "CameraPreviewCallback.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/oplus/ocs/camera/CameraPreviewCallback$CameraPreviewResult;
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 35
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

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

    const/4 p0, 0x0

    return-object p0
.end method

.method public onHalPreviewCollected(J)V
    .locals 0

    return-void
.end method

.method public onPreviewCaptureProgressed(Landroid/hardware/camera2/CaptureRequest;Landroid/hardware/camera2/CaptureResult;)V
    .locals 0

    return-void
.end method

.method public onPreviewFrameReceived(Landroid/media/Image;)V
    .locals 0

    return-void
.end method

.method public onPreviewMetaReceived(Lcom/oplus/ocs/camera/CameraPreviewCallback$CameraPreviewResult;)V
    .locals 0

    return-void
.end method

.method public onPreviewReceived(Lcom/oplus/ocs/camera/CameraPreviewCallback$CameraPreviewResult;)V
    .locals 0

    return-void
.end method

.method public onVideoReceived(Lcom/oplus/ocs/camera/CameraPreviewCallback$CameraPreviewResult;)V
    .locals 0

    return-void
.end method
