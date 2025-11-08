.class public interface abstract Lcom/oplus/camera/e/d$a;
.super Ljava/lang/Object;
.source "OneCamera.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/oplus/camera/e/d;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "a"
.end annotation


# virtual methods
.method public abstract checkIfLockAutoExposure()V
.end method

.method public abstract onCaptureCanceled(Lcom/oplus/camera/e/c;)V
.end method

.method public abstract onCaptureCompleted(Lcom/oplus/camera/aps/service/CameraCaptureResult;Lcom/oplus/camera/e/c;)V
.end method

.method public abstract onCaptureFailed(Landroid/hardware/camera2/CaptureRequest;Lcom/oplus/camera/e/c;)V
.end method

.method public abstract onCaptureFirstFrameArrived(Landroid/hardware/camera2/CaptureRequest;Lcom/oplus/camera/aps/service/CameraCaptureResult;)V
.end method

.method public abstract onCapturePrepared()V
.end method

.method public abstract onCaptureProgressed(Landroid/hardware/camera2/CaptureRequest;Lcom/oplus/camera/aps/service/CameraCaptureResult;Lcom/oplus/camera/e/c;)V
.end method

.method public abstract onCaptureSequenceCompleted()V
.end method

.method public abstract onCaptureStarted(Landroid/hardware/camera2/CameraCaptureSession;Landroid/hardware/camera2/CaptureRequest;JJ)V
.end method

.method public abstract onFirstCaptureFrameAdd()V
.end method
