.class public Lcom/oplus/camera/aps/service/CaptureRequestParam;
.super Ljava/lang/Object;
.source "CaptureRequestParam.java"


# instance fields
.field public mApsServiceListener:Lcom/oplus/camera/CameraManager$a;

.field public mBurstShotThumbnailCallBack:Lcom/oplus/camera/ui/control/e$a;

.field public mCaptureOrientation:I

.field public mPictureTakenCallback:Lcom/oplus/camera/a/d;

.field public mSuperTextResultProcessor:Lcom/oplus/camera/a/e;

.field public mThumbWidth:I

.field public mbSuperTextOpen:Z


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 8
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 9
    iput-boolean v0, p0, Lcom/oplus/camera/aps/service/CaptureRequestParam;->mbSuperTextOpen:Z

    const/4 v1, 0x0

    .line 10
    iput-object v1, p0, Lcom/oplus/camera/aps/service/CaptureRequestParam;->mSuperTextResultProcessor:Lcom/oplus/camera/a/e;

    .line 11
    iput-object v1, p0, Lcom/oplus/camera/aps/service/CaptureRequestParam;->mPictureTakenCallback:Lcom/oplus/camera/a/d;

    .line 12
    iput-object v1, p0, Lcom/oplus/camera/aps/service/CaptureRequestParam;->mBurstShotThumbnailCallBack:Lcom/oplus/camera/ui/control/e$a;

    .line 13
    iput v0, p0, Lcom/oplus/camera/aps/service/CaptureRequestParam;->mThumbWidth:I

    .line 14
    iput v0, p0, Lcom/oplus/camera/aps/service/CaptureRequestParam;->mCaptureOrientation:I

    .line 15
    iput-object v1, p0, Lcom/oplus/camera/aps/service/CaptureRequestParam;->mApsServiceListener:Lcom/oplus/camera/CameraManager$a;

    return-void
.end method
