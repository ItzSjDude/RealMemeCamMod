.class public final Lcom/oplus/ocs/camera/CameraPictureCallback$CameraPictureResult;
.super Ljava/lang/Object;
.source "CameraPictureCallback.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/oplus/ocs/camera/CameraPictureCallback;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "CameraPictureResult"
.end annotation


# instance fields
.field private mPictureResultAdapter:Lcom/oplus/ocs/camera/CameraPictureResultAdapter;


# direct methods
.method constructor <init>(Lcom/oplus/ocs/camera/CameraPictureResultAdapter;)V
    .locals 1

    .line 171
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 169
    iput-object v0, p0, Lcom/oplus/ocs/camera/CameraPictureCallback$CameraPictureResult;->mPictureResultAdapter:Lcom/oplus/ocs/camera/CameraPictureResultAdapter;

    .line 172
    iput-object p1, p0, Lcom/oplus/ocs/camera/CameraPictureCallback$CameraPictureResult;->mPictureResultAdapter:Lcom/oplus/ocs/camera/CameraPictureResultAdapter;

    return-void
.end method


# virtual methods
.method public get(Landroid/hardware/camera2/CaptureResult$Key;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Landroid/hardware/camera2/CaptureResult$Key<",
            "TT;>;)TT;"
        }
    .end annotation

    .line 177
    iget-object p0, p0, Lcom/oplus/ocs/camera/CameraPictureCallback$CameraPictureResult;->mPictureResultAdapter:Lcom/oplus/ocs/camera/CameraPictureResultAdapter;

    invoke-virtual {p0, p1}, Lcom/oplus/ocs/camera/CameraPictureResultAdapter;->get(Landroid/hardware/camera2/CaptureResult$Key;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public get(Lcom/oplus/ocs/camera/CameraParameter$CaptureResultKey;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/oplus/ocs/camera/CameraParameter$CaptureResultKey<",
            "TT;>;)TT;"
        }
    .end annotation

    .line 181
    iget-object p0, p0, Lcom/oplus/ocs/camera/CameraPictureCallback$CameraPictureResult;->mPictureResultAdapter:Lcom/oplus/ocs/camera/CameraPictureResultAdapter;

    invoke-virtual {p0, p1}, Lcom/oplus/ocs/camera/CameraPictureResultAdapter;->get(Lcom/oplus/ocs/camera/CameraParameter$CaptureResultKey;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public getCaptureFailure()Landroid/hardware/camera2/CaptureFailure;
    .locals 0

    .line 185
    iget-object p0, p0, Lcom/oplus/ocs/camera/CameraPictureCallback$CameraPictureResult;->mPictureResultAdapter:Lcom/oplus/ocs/camera/CameraPictureResultAdapter;

    invoke-virtual {p0}, Lcom/oplus/ocs/camera/CameraPictureResultAdapter;->getCaptureFailure()Landroid/hardware/camera2/CaptureFailure;

    move-result-object p0

    return-object p0
.end method

.method public getCaptureResult()Landroid/hardware/camera2/CaptureResult;
    .locals 0

    .line 189
    iget-object p0, p0, Lcom/oplus/ocs/camera/CameraPictureCallback$CameraPictureResult;->mPictureResultAdapter:Lcom/oplus/ocs/camera/CameraPictureResultAdapter;

    invoke-virtual {p0}, Lcom/oplus/ocs/camera/CameraPictureResultAdapter;->getCaptureResult()Landroid/hardware/camera2/CaptureResult;

    move-result-object p0

    return-object p0
.end method
