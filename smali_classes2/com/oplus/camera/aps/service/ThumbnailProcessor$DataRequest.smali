.class public Lcom/oplus/camera/aps/service/ThumbnailProcessor$DataRequest;
.super Ljava/lang/Object;
.source "ThumbnailProcessor.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/oplus/camera/aps/service/ThumbnailProcessor;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "DataRequest"
.end annotation


# instance fields
.field public mApsService:Lcom/oplus/camera/aps/service/ApsService;

.field public mBurstShotFlagId:J

.field public mCameraId:I

.field public mCapMode:Ljava/lang/String;

.field public mContentOperatedCallback:Lcom/oplus/camera/capmode/f;

.field public mCshotPath:Ljava/lang/String;

.field public mDate:J

.field public mExif:Ljava/lang/String;

.field public mHeicCodecFormat:Ljava/lang/String;

.field public mIdentity:J

.field public mJpegOrientation:I

.field public mLogicCameraId:I

.field public mMirrorState:Ljava/lang/String;

.field public mOneCamera:Lcom/oplus/camera/e/d;

.field public mPictureSize:Landroid/util/Size;

.field public mPreviewSize:Landroid/util/Size;

.field public mRearMirrorState:Ljava/lang/String;

.field public mRecBurstNum:I

.field public mRequestHash:J

.field public mRequestMode:Lcom/oplus/camera/e/c$a;

.field public mResolver:Landroid/content/ContentResolver;

.field public mResult:Landroid/hardware/camera2/CaptureResult;

.field public mStickerCaptureTime:J

.field public mThumbBitmap:Landroid/graphics/Bitmap;

.field public mThumbData:[B

.field public mThumbOrientation:I

.field public mTimeStamp:J

.field public mTitle:Ljava/lang/String;

.field public mbBurstShot:Z

.field public mbLockScreen:Z

.field public mbMakeupWatermark:Z

.field public mbQuickJpeg:Z

.field public mbSuperClearPortrait:Z

.field public mbSupportQuickJpeg:Z

.field public mbUltraHighResolution:Z

.field public mbWatchRequest:Z


# direct methods
.method public constructor <init>()V
    .locals 6

    .line 408
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 409
    iput-object v0, p0, Lcom/oplus/camera/aps/service/ThumbnailProcessor$DataRequest;->mThumbData:[B

    .line 410
    iput-object v0, p0, Lcom/oplus/camera/aps/service/ThumbnailProcessor$DataRequest;->mThumbBitmap:Landroid/graphics/Bitmap;

    .line 411
    iput-object v0, p0, Lcom/oplus/camera/aps/service/ThumbnailProcessor$DataRequest;->mCapMode:Ljava/lang/String;

    .line 412
    iput-object v0, p0, Lcom/oplus/camera/aps/service/ThumbnailProcessor$DataRequest;->mPreviewSize:Landroid/util/Size;

    .line 413
    iput-object v0, p0, Lcom/oplus/camera/aps/service/ThumbnailProcessor$DataRequest;->mPictureSize:Landroid/util/Size;

    .line 414
    iput-object v0, p0, Lcom/oplus/camera/aps/service/ThumbnailProcessor$DataRequest;->mExif:Ljava/lang/String;

    .line 415
    iput-object v0, p0, Lcom/oplus/camera/aps/service/ThumbnailProcessor$DataRequest;->mMirrorState:Ljava/lang/String;

    .line 416
    iput-object v0, p0, Lcom/oplus/camera/aps/service/ThumbnailProcessor$DataRequest;->mRearMirrorState:Ljava/lang/String;

    .line 417
    iput-object v0, p0, Lcom/oplus/camera/aps/service/ThumbnailProcessor$DataRequest;->mTitle:Ljava/lang/String;

    const-wide/16 v1, 0x0

    .line 418
    iput-wide v1, p0, Lcom/oplus/camera/aps/service/ThumbnailProcessor$DataRequest;->mDate:J

    const/4 v3, 0x0

    .line 419
    iput v3, p0, Lcom/oplus/camera/aps/service/ThumbnailProcessor$DataRequest;->mThumbOrientation:I

    .line 420
    iput v3, p0, Lcom/oplus/camera/aps/service/ThumbnailProcessor$DataRequest;->mJpegOrientation:I

    .line 421
    iput v3, p0, Lcom/oplus/camera/aps/service/ThumbnailProcessor$DataRequest;->mCameraId:I

    .line 422
    iput v3, p0, Lcom/oplus/camera/aps/service/ThumbnailProcessor$DataRequest;->mLogicCameraId:I

    .line 423
    iput-object v0, p0, Lcom/oplus/camera/aps/service/ThumbnailProcessor$DataRequest;->mResolver:Landroid/content/ContentResolver;

    .line 424
    iput-wide v1, p0, Lcom/oplus/camera/aps/service/ThumbnailProcessor$DataRequest;->mTimeStamp:J

    .line 425
    iput-wide v1, p0, Lcom/oplus/camera/aps/service/ThumbnailProcessor$DataRequest;->mIdentity:J

    .line 426
    iput-boolean v3, p0, Lcom/oplus/camera/aps/service/ThumbnailProcessor$DataRequest;->mbBurstShot:Z

    .line 427
    iput-boolean v3, p0, Lcom/oplus/camera/aps/service/ThumbnailProcessor$DataRequest;->mbLockScreen:Z

    .line 428
    iput v3, p0, Lcom/oplus/camera/aps/service/ThumbnailProcessor$DataRequest;->mRecBurstNum:I

    const-string v4, ""

    .line 429
    iput-object v4, p0, Lcom/oplus/camera/aps/service/ThumbnailProcessor$DataRequest;->mCshotPath:Ljava/lang/String;

    const-wide/16 v4, -0x1

    .line 430
    iput-wide v4, p0, Lcom/oplus/camera/aps/service/ThumbnailProcessor$DataRequest;->mBurstShotFlagId:J

    .line 431
    iput-wide v1, p0, Lcom/oplus/camera/aps/service/ThumbnailProcessor$DataRequest;->mRequestHash:J

    .line 432
    iput-boolean v3, p0, Lcom/oplus/camera/aps/service/ThumbnailProcessor$DataRequest;->mbUltraHighResolution:Z

    .line 433
    iput-boolean v3, p0, Lcom/oplus/camera/aps/service/ThumbnailProcessor$DataRequest;->mbSuperClearPortrait:Z

    .line 434
    iput-boolean v3, p0, Lcom/oplus/camera/aps/service/ThumbnailProcessor$DataRequest;->mbQuickJpeg:Z

    .line 435
    iput-boolean v3, p0, Lcom/oplus/camera/aps/service/ThumbnailProcessor$DataRequest;->mbSupportQuickJpeg:Z

    .line 436
    iput-object v0, p0, Lcom/oplus/camera/aps/service/ThumbnailProcessor$DataRequest;->mContentOperatedCallback:Lcom/oplus/camera/capmode/f;

    .line 437
    iput-object v0, p0, Lcom/oplus/camera/aps/service/ThumbnailProcessor$DataRequest;->mHeicCodecFormat:Ljava/lang/String;

    .line 438
    iput-object v0, p0, Lcom/oplus/camera/aps/service/ThumbnailProcessor$DataRequest;->mRequestMode:Lcom/oplus/camera/e/c$a;

    .line 439
    iput-boolean v3, p0, Lcom/oplus/camera/aps/service/ThumbnailProcessor$DataRequest;->mbWatchRequest:Z

    .line 440
    iput-object v0, p0, Lcom/oplus/camera/aps/service/ThumbnailProcessor$DataRequest;->mApsService:Lcom/oplus/camera/aps/service/ApsService;

    .line 441
    iput-object v0, p0, Lcom/oplus/camera/aps/service/ThumbnailProcessor$DataRequest;->mOneCamera:Lcom/oplus/camera/e/d;

    .line 442
    iput-object v0, p0, Lcom/oplus/camera/aps/service/ThumbnailProcessor$DataRequest;->mResult:Landroid/hardware/camera2/CaptureResult;

    .line 443
    iput-boolean v3, p0, Lcom/oplus/camera/aps/service/ThumbnailProcessor$DataRequest;->mbMakeupWatermark:Z

    .line 444
    iput-wide v1, p0, Lcom/oplus/camera/aps/service/ThumbnailProcessor$DataRequest;->mStickerCaptureTime:J

    return-void
.end method
