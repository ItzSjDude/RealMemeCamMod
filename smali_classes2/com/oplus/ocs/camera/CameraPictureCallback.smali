.class public abstract Lcom/oplus/ocs/camera/CameraPictureCallback;
.super Ljava/lang/Object;
.source "CameraPictureCallback.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/oplus/ocs/camera/CameraPictureCallback$CameraPictureResult;,
        Lcom/oplus/ocs/camera/CameraPictureCallback$CameraPictureImage;
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 34
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public afterProcessImage(ILcom/oplus/ocs/camera/CameraPictureCallback$CameraPictureResult;)V
    .locals 0

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

    return-void
.end method

.method public onBurstShotEnd(Lcom/oplus/ocs/camera/CameraPictureCallback$CameraPictureResult;)V
    .locals 0

    return-void
.end method

.method public onBurstShotStart(J)V
    .locals 0

    return-void
.end method

.method public onCaptureFailed(Lcom/oplus/ocs/camera/CameraPictureCallback$CameraPictureResult;)V
    .locals 0

    return-void
.end method

.method public onCaptureFirstFrameArrived(Landroid/hardware/camera2/CaptureRequest;Lcom/oplus/ocs/camera/CameraPictureCallback$CameraPictureResult;)V
    .locals 0

    return-void
.end method

.method public onCaptureMetaReceived(Lcom/oplus/ocs/camera/CameraPictureCallback$CameraPictureResult;)V
    .locals 0

    return-void
.end method

.method public onCapturePrepared()V
    .locals 0

    return-void
.end method

.method public onCaptureShutter(J)V
    .locals 0

    return-void
.end method

.method public onFinishAddFrame(Lcom/oplus/ocs/camera/CameraPictureCallback$CameraPictureResult;)V
    .locals 0

    return-void
.end method

.method public onFirstCaptureFrameAdd()V
    .locals 0

    return-void
.end method

.method public onImageReceived(Lcom/oplus/ocs/camera/CameraPictureCallback$CameraPictureImage;)V
    .locals 0

    return-void
.end method

.method public onPictureCaptureProgressed(Landroid/hardware/camera2/CaptureRequest;Lcom/oplus/ocs/camera/CameraPictureCallback$CameraPictureResult;)V
    .locals 0

    return-void
.end method

.method public onPictureCaptureSequenceCompleted(IJ)V
    .locals 0

    return-void
.end method
