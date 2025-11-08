.class public interface abstract Lcom/oplus/camera/e/d$c;
.super Ljava/lang/Object;
.source "OneCamera.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/oplus/camera/e/d;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "c"
.end annotation


# virtual methods
.method public abstract a(J)V
.end method

.method public abstract a(Landroid/hardware/camera2/CameraCaptureSession;Landroid/hardware/camera2/CaptureRequest;Landroid/hardware/camera2/CaptureResult;)V
.end method

.method public abstract a(Landroid/hardware/camera2/CameraCaptureSession;Landroid/hardware/camera2/CaptureRequest;Landroid/hardware/camera2/CaptureResult;I)V
.end method

.method public abstract a(Landroid/hardware/camera2/CaptureResult;)V
.end method

.method public abstract a(Landroid/hardware/camera2/CaptureResult;ILjava/lang/String;)V
.end method

.method public abstract a(Landroid/media/Image;)V
.end method

.method public abstract a(Lcom/oplus/camera/aps/util/CameraApsResult;)V
.end method

.method public abstract a(Lcom/oplus/ocs/camera/CameraPreviewCallback$CameraPreviewResult;)V
.end method

.method public abstract b(Landroid/media/Image;)Ljava/util/Map;
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
.end method

.method public abstract b(Lcom/oplus/ocs/camera/CameraPreviewCallback$CameraPreviewResult;)V
.end method
