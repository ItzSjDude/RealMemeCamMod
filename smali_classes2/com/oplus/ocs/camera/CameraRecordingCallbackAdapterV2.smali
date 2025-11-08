.class Lcom/oplus/ocs/camera/CameraRecordingCallbackAdapterV2;
.super Lcom/oplus/ocs/camera/appinterface/CameraRecordingCallbackAdapter;
.source "CameraRecordingCallbackAdapterV2.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/oplus/ocs/camera/CameraRecordingCallbackAdapterV2$CameraRecordingResultV2;
    }
.end annotation


# instance fields
.field private mCameraRecordingCallback:Lcom/oplus/ocs/camera/CameraRecordingCallback;


# direct methods
.method constructor <init>(Lcom/oplus/ocs/camera/CameraRecordingCallback;)V
    .locals 1

    .line 10
    invoke-direct {p0}, Lcom/oplus/ocs/camera/appinterface/CameraRecordingCallbackAdapter;-><init>()V

    const/4 v0, 0x0

    .line 8
    iput-object v0, p0, Lcom/oplus/ocs/camera/CameraRecordingCallbackAdapterV2;->mCameraRecordingCallback:Lcom/oplus/ocs/camera/CameraRecordingCallback;

    .line 11
    iput-object p1, p0, Lcom/oplus/ocs/camera/CameraRecordingCallbackAdapterV2;->mCameraRecordingCallback:Lcom/oplus/ocs/camera/CameraRecordingCallback;

    return-void
.end method


# virtual methods
.method public onRecordingResult(Lcom/oplus/ocs/camera/appinterface/CameraRecordingCallbackAdapter$RecordingResult;)V
    .locals 2

    .line 16
    iget-object p0, p0, Lcom/oplus/ocs/camera/CameraRecordingCallbackAdapterV2;->mCameraRecordingCallback:Lcom/oplus/ocs/camera/CameraRecordingCallback;

    if-eqz p0, :cond_1

    if-eqz p1, :cond_0

    .line 17
    new-instance v0, Lcom/oplus/ocs/camera/CameraRecordingCallback$CameraRecordingResult;

    new-instance v1, Lcom/oplus/ocs/camera/CameraRecordingCallbackAdapterV2$CameraRecordingResultV2;

    invoke-direct {v1, p1}, Lcom/oplus/ocs/camera/CameraRecordingCallbackAdapterV2$CameraRecordingResultV2;-><init>(Lcom/oplus/ocs/camera/appinterface/CameraRecordingCallbackAdapter$RecordingResult;)V

    invoke-direct {v0, v1}, Lcom/oplus/ocs/camera/CameraRecordingCallback$CameraRecordingResult;-><init>(Lcom/oplus/ocs/camera/CameraRecordingResultAdapter;)V

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    invoke-virtual {p0, v0}, Lcom/oplus/ocs/camera/CameraRecordingCallback;->onRecordingResult(Lcom/oplus/ocs/camera/CameraRecordingCallback$CameraRecordingResult;)V

    :cond_1
    return-void
.end method
