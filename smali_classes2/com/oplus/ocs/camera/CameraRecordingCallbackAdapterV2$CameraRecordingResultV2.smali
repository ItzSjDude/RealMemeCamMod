.class public final Lcom/oplus/ocs/camera/CameraRecordingCallbackAdapterV2$CameraRecordingResultV2;
.super Lcom/oplus/ocs/camera/CameraRecordingResultAdapter;
.source "CameraRecordingCallbackAdapterV2.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/oplus/ocs/camera/CameraRecordingCallbackAdapterV2;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "CameraRecordingResultV2"
.end annotation


# instance fields
.field private mRecordingResult:Lcom/oplus/ocs/camera/appinterface/CameraRecordingCallbackAdapter$RecordingResult;


# direct methods
.method constructor <init>(Lcom/oplus/ocs/camera/appinterface/CameraRecordingCallbackAdapter$RecordingResult;)V
    .locals 1

    .line 28
    invoke-direct {p0}, Lcom/oplus/ocs/camera/CameraRecordingResultAdapter;-><init>()V

    const/4 v0, 0x0

    .line 26
    iput-object v0, p0, Lcom/oplus/ocs/camera/CameraRecordingCallbackAdapterV2$CameraRecordingResultV2;->mRecordingResult:Lcom/oplus/ocs/camera/appinterface/CameraRecordingCallbackAdapter$RecordingResult;

    .line 29
    iput-object p1, p0, Lcom/oplus/ocs/camera/CameraRecordingCallbackAdapterV2$CameraRecordingResultV2;->mRecordingResult:Lcom/oplus/ocs/camera/appinterface/CameraRecordingCallbackAdapter$RecordingResult;

    return-void
.end method


# virtual methods
.method public getRecordingState()I
    .locals 0

    .line 33
    iget-object p0, p0, Lcom/oplus/ocs/camera/CameraRecordingCallbackAdapterV2$CameraRecordingResultV2;->mRecordingResult:Lcom/oplus/ocs/camera/appinterface/CameraRecordingCallbackAdapter$RecordingResult;

    invoke-virtual {p0}, Lcom/oplus/ocs/camera/appinterface/CameraRecordingCallbackAdapter$RecordingResult;->getRecordingState()I

    move-result p0

    return p0
.end method
