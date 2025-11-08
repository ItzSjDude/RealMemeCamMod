.class public abstract Lcom/oplus/ocs/camera/CameraStateCallback;
.super Ljava/lang/Object;
.source "CameraStateCallback.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/oplus/ocs/camera/CameraStateCallback$CameraErrorResult;
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 27
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCameraClosed()V
    .locals 0

    return-void
.end method

.method public onCameraDisconnected()V
    .locals 0

    return-void
.end method

.method public onCameraError(Lcom/oplus/ocs/camera/CameraStateCallback$CameraErrorResult;)V
    .locals 0

    return-void
.end method

.method public onCameraOpened(Lcom/oplus/ocs/camera/CameraDevice;)V
    .locals 0

    return-void
.end method

.method public onSessionClosed()V
    .locals 0

    return-void
.end method

.method public onSessionConfigureFail(Lcom/oplus/ocs/camera/CameraStateCallback$CameraErrorResult;)V
    .locals 0

    return-void
.end method

.method public onSessionConfigured()V
    .locals 0

    return-void
.end method
