.class public Lcom/oplus/camera/aps/service/CameraCaptureResult;
.super Ljava/lang/Object;
.source "CameraCaptureResult.java"


# instance fields
.field private mCaptureResult:Landroid/hardware/camera2/CaptureResult;

.field public mFirstExposureTime:J

.field public mIdentity:J

.field public mMeshPtr:J

.field public mNightCaptureTotaltime:J

.field private mRequestTag:Lcom/oplus/camera/e/c;


# direct methods
.method public constructor <init>(Landroid/hardware/camera2/CaptureResult;)V
    .locals 2

    .line 15
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-wide/16 v0, 0x0

    .line 8
    iput-wide v0, p0, Lcom/oplus/camera/aps/service/CameraCaptureResult;->mIdentity:J

    .line 9
    iput-wide v0, p0, Lcom/oplus/camera/aps/service/CameraCaptureResult;->mNightCaptureTotaltime:J

    .line 10
    iput-wide v0, p0, Lcom/oplus/camera/aps/service/CameraCaptureResult;->mFirstExposureTime:J

    .line 11
    iput-wide v0, p0, Lcom/oplus/camera/aps/service/CameraCaptureResult;->mMeshPtr:J

    const/4 v0, 0x0

    .line 12
    iput-object v0, p0, Lcom/oplus/camera/aps/service/CameraCaptureResult;->mCaptureResult:Landroid/hardware/camera2/CaptureResult;

    .line 13
    iput-object v0, p0, Lcom/oplus/camera/aps/service/CameraCaptureResult;->mRequestTag:Lcom/oplus/camera/e/c;

    .line 16
    iput-object p1, p0, Lcom/oplus/camera/aps/service/CameraCaptureResult;->mCaptureResult:Landroid/hardware/camera2/CaptureResult;

    return-void
.end method


# virtual methods
.method public getCaptureResult()Landroid/hardware/camera2/CaptureResult;
    .locals 0

    .line 20
    iget-object p0, p0, Lcom/oplus/camera/aps/service/CameraCaptureResult;->mCaptureResult:Landroid/hardware/camera2/CaptureResult;

    return-object p0
.end method

.method public getRequestTag()Lcom/oplus/camera/e/c;
    .locals 0

    .line 24
    iget-object p0, p0, Lcom/oplus/camera/aps/service/CameraCaptureResult;->mRequestTag:Lcom/oplus/camera/e/c;

    return-object p0
.end method

.method public setRequestTag(Lcom/oplus/camera/e/c;)V
    .locals 0

    .line 28
    iput-object p1, p0, Lcom/oplus/camera/aps/service/CameraCaptureResult;->mRequestTag:Lcom/oplus/camera/e/c;

    return-void
.end method
