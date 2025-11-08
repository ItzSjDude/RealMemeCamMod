.class Lcom/oplus/ocs/camera/CameraStateCallbackAdapterV2;
.super Lcom/oplus/ocs/camera/appinterface/CameraStateCallbackAdapter;
.source "CameraStateCallbackAdapterV2.java"


# instance fields
.field private mCameraStateCallback:Lcom/oplus/ocs/camera/CameraStateCallback;


# direct methods
.method constructor <init>(Lcom/oplus/ocs/camera/CameraStateCallback;)V
    .locals 1

    .line 10
    invoke-direct {p0}, Lcom/oplus/ocs/camera/appinterface/CameraStateCallbackAdapter;-><init>()V

    const/4 v0, 0x0

    .line 8
    iput-object v0, p0, Lcom/oplus/ocs/camera/CameraStateCallbackAdapterV2;->mCameraStateCallback:Lcom/oplus/ocs/camera/CameraStateCallback;

    .line 11
    iput-object p1, p0, Lcom/oplus/ocs/camera/CameraStateCallbackAdapterV2;->mCameraStateCallback:Lcom/oplus/ocs/camera/CameraStateCallback;

    return-void
.end method


# virtual methods
.method public onCameraClosed()V
    .locals 0

    .line 25
    invoke-super {p0}, Lcom/oplus/ocs/camera/appinterface/CameraStateCallbackAdapter;->onCameraClosed()V

    .line 27
    iget-object p0, p0, Lcom/oplus/ocs/camera/CameraStateCallbackAdapterV2;->mCameraStateCallback:Lcom/oplus/ocs/camera/CameraStateCallback;

    if-eqz p0, :cond_0

    .line 28
    invoke-virtual {p0}, Lcom/oplus/ocs/camera/CameraStateCallback;->onCameraClosed()V

    :cond_0
    return-void
.end method

.method public onCameraDisconnected()V
    .locals 0

    .line 34
    invoke-super {p0}, Lcom/oplus/ocs/camera/appinterface/CameraStateCallbackAdapter;->onCameraDisconnected()V

    .line 36
    iget-object p0, p0, Lcom/oplus/ocs/camera/CameraStateCallbackAdapterV2;->mCameraStateCallback:Lcom/oplus/ocs/camera/CameraStateCallback;

    if-eqz p0, :cond_0

    .line 37
    invoke-virtual {p0}, Lcom/oplus/ocs/camera/CameraStateCallback;->onCameraDisconnected()V

    :cond_0
    return-void
.end method

.method public onCameraError(Lcom/oplus/ocs/camera/common/util/ErrorResult;)V
    .locals 2

    .line 43
    invoke-super {p0, p1}, Lcom/oplus/ocs/camera/appinterface/CameraStateCallbackAdapter;->onCameraError(Lcom/oplus/ocs/camera/common/util/ErrorResult;)V

    .line 45
    iget-object p0, p0, Lcom/oplus/ocs/camera/CameraStateCallbackAdapterV2;->mCameraStateCallback:Lcom/oplus/ocs/camera/CameraStateCallback;

    if-eqz p0, :cond_1

    if-eqz p1, :cond_0

    .line 46
    new-instance v0, Lcom/oplus/ocs/camera/CameraStateCallback$CameraErrorResult;

    new-instance v1, Lcom/oplus/ocs/camera/ErrorResultAdapterV2;

    invoke-direct {v1, p1}, Lcom/oplus/ocs/camera/ErrorResultAdapterV2;-><init>(Lcom/oplus/ocs/camera/common/util/ErrorResult;)V

    invoke-direct {v0, v1}, Lcom/oplus/ocs/camera/CameraStateCallback$CameraErrorResult;-><init>(Lcom/oplus/ocs/camera/ErrorResultAdapter;)V

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    invoke-virtual {p0, v0}, Lcom/oplus/ocs/camera/CameraStateCallback;->onCameraError(Lcom/oplus/ocs/camera/CameraStateCallback$CameraErrorResult;)V

    :cond_1
    return-void
.end method

.method public onCameraOpened(Lcom/oplus/ocs/camera/appinterface/CameraDeviceInterface;)V
    .locals 2

    .line 16
    invoke-super {p0, p1}, Lcom/oplus/ocs/camera/appinterface/CameraStateCallbackAdapter;->onCameraOpened(Lcom/oplus/ocs/camera/appinterface/CameraDeviceInterface;)V

    .line 18
    iget-object p0, p0, Lcom/oplus/ocs/camera/CameraStateCallbackAdapterV2;->mCameraStateCallback:Lcom/oplus/ocs/camera/CameraStateCallback;

    if-eqz p0, :cond_0

    .line 19
    new-instance v0, Lcom/oplus/ocs/camera/CameraDevice;

    new-instance v1, Lcom/oplus/ocs/camera/CameraDeviceAdapterV2;

    invoke-direct {v1, p1}, Lcom/oplus/ocs/camera/CameraDeviceAdapterV2;-><init>(Lcom/oplus/ocs/camera/appinterface/CameraDeviceInterface;)V

    invoke-direct {v0, v1}, Lcom/oplus/ocs/camera/CameraDevice;-><init>(Lcom/oplus/ocs/camera/CameraDeviceAdapter;)V

    invoke-virtual {p0, v0}, Lcom/oplus/ocs/camera/CameraStateCallback;->onCameraOpened(Lcom/oplus/ocs/camera/CameraDevice;)V

    :cond_0
    return-void
.end method

.method public onSessionClosed()V
    .locals 0

    .line 72
    invoke-super {p0}, Lcom/oplus/ocs/camera/appinterface/CameraStateCallbackAdapter;->onSessionClosed()V

    .line 74
    iget-object p0, p0, Lcom/oplus/ocs/camera/CameraStateCallbackAdapterV2;->mCameraStateCallback:Lcom/oplus/ocs/camera/CameraStateCallback;

    if-eqz p0, :cond_0

    .line 75
    invoke-virtual {p0}, Lcom/oplus/ocs/camera/CameraStateCallback;->onSessionClosed()V

    :cond_0
    return-void
.end method

.method public onSessionConfigureFail(Lcom/oplus/ocs/camera/common/util/ErrorResult;)V
    .locals 2

    .line 62
    invoke-super {p0, p1}, Lcom/oplus/ocs/camera/appinterface/CameraStateCallbackAdapter;->onSessionConfigureFail(Lcom/oplus/ocs/camera/common/util/ErrorResult;)V

    .line 64
    iget-object p0, p0, Lcom/oplus/ocs/camera/CameraStateCallbackAdapterV2;->mCameraStateCallback:Lcom/oplus/ocs/camera/CameraStateCallback;

    if-eqz p0, :cond_1

    if-eqz p1, :cond_0

    .line 65
    new-instance v0, Lcom/oplus/ocs/camera/CameraStateCallback$CameraErrorResult;

    new-instance v1, Lcom/oplus/ocs/camera/ErrorResultAdapterV2;

    invoke-direct {v1, p1}, Lcom/oplus/ocs/camera/ErrorResultAdapterV2;-><init>(Lcom/oplus/ocs/camera/common/util/ErrorResult;)V

    invoke-direct {v0, v1}, Lcom/oplus/ocs/camera/CameraStateCallback$CameraErrorResult;-><init>(Lcom/oplus/ocs/camera/ErrorResultAdapter;)V

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    invoke-virtual {p0, v0}, Lcom/oplus/ocs/camera/CameraStateCallback;->onSessionConfigureFail(Lcom/oplus/ocs/camera/CameraStateCallback$CameraErrorResult;)V

    :cond_1
    return-void
.end method

.method public onSessionConfigured()V
    .locals 0

    .line 53
    invoke-super {p0}, Lcom/oplus/ocs/camera/appinterface/CameraStateCallbackAdapter;->onSessionConfigured()V

    .line 55
    iget-object p0, p0, Lcom/oplus/ocs/camera/CameraStateCallbackAdapterV2;->mCameraStateCallback:Lcom/oplus/ocs/camera/CameraStateCallback;

    if-eqz p0, :cond_0

    .line 56
    invoke-virtual {p0}, Lcom/oplus/ocs/camera/CameraStateCallback;->onSessionConfigured()V

    :cond_0
    return-void
.end method
