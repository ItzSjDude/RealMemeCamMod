.class public final Lcom/oplus/ocs/camera/CameraRecordingCallback$CameraRecordingResult;
.super Ljava/lang/Object;
.source "CameraRecordingCallback.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/oplus/ocs/camera/CameraRecordingCallback;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "CameraRecordingResult"
.end annotation


# instance fields
.field private mRecordingResultAdapter:Lcom/oplus/ocs/camera/CameraRecordingResultAdapter;


# direct methods
.method constructor <init>(Lcom/oplus/ocs/camera/CameraRecordingResultAdapter;)V
    .locals 1

    .line 42
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 40
    iput-object v0, p0, Lcom/oplus/ocs/camera/CameraRecordingCallback$CameraRecordingResult;->mRecordingResultAdapter:Lcom/oplus/ocs/camera/CameraRecordingResultAdapter;

    .line 43
    iput-object p1, p0, Lcom/oplus/ocs/camera/CameraRecordingCallback$CameraRecordingResult;->mRecordingResultAdapter:Lcom/oplus/ocs/camera/CameraRecordingResultAdapter;

    return-void
.end method


# virtual methods
.method public getRecordingState()I
    .locals 0

    .line 47
    iget-object p0, p0, Lcom/oplus/ocs/camera/CameraRecordingCallback$CameraRecordingResult;->mRecordingResultAdapter:Lcom/oplus/ocs/camera/CameraRecordingResultAdapter;

    invoke-virtual {p0}, Lcom/oplus/ocs/camera/CameraRecordingResultAdapter;->getRecordingState()I

    move-result p0

    return p0
.end method
