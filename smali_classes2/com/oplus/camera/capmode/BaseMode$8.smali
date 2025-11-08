.class Lcom/oplus/camera/capmode/BaseMode$8;
.super Lcom/oplus/camera/gl/t$b;
.source "BaseMode.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/oplus/camera/capmode/BaseMode;->capturePreviewData(Lcom/oplus/camera/e/c;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/oplus/camera/e/c;

.field final synthetic b:Lcom/oplus/camera/capmode/BaseMode;


# direct methods
.method constructor <init>(Lcom/oplus/camera/capmode/BaseMode;Lcom/oplus/camera/e/c;)V
    .locals 0

    .line 2901
    iput-object p1, p0, Lcom/oplus/camera/capmode/BaseMode$8;->b:Lcom/oplus/camera/capmode/BaseMode;

    iput-object p2, p0, Lcom/oplus/camera/capmode/BaseMode$8;->a:Lcom/oplus/camera/e/c;

    invoke-direct {p0}, Lcom/oplus/camera/gl/t$b;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Landroid/graphics/Bitmap;)V
    .locals 10

    .line 2934
    iget-object v0, p0, Lcom/oplus/camera/capmode/BaseMode$8;->a:Lcom/oplus/camera/e/c;

    iget-boolean v0, v0, Lcom/oplus/camera/e/c;->ae:Z

    if-eqz v0, :cond_0

    return-void

    .line 2938
    :cond_0
    iget-object v0, p0, Lcom/oplus/camera/capmode/BaseMode$8;->a:Lcom/oplus/camera/e/c;

    iget-boolean v0, v0, Lcom/oplus/camera/e/c;->j:Z

    if-nez v0, :cond_1

    .line 2939
    iget-object v0, p0, Lcom/oplus/camera/capmode/BaseMode$8;->b:Lcom/oplus/camera/capmode/BaseMode;

    invoke-static {v0}, Lcom/oplus/camera/capmode/BaseMode;->access$300(Lcom/oplus/camera/capmode/BaseMode;)Landroid/os/Handler;

    move-result-object v0

    const/4 v1, 0x6

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 2940
    iget-object v0, p0, Lcom/oplus/camera/capmode/BaseMode$8;->b:Lcom/oplus/camera/capmode/BaseMode;

    invoke-static {v0}, Lcom/oplus/camera/capmode/BaseMode;->access$300(Lcom/oplus/camera/capmode/BaseMode;)Landroid/os/Handler;

    move-result-object v0

    iget-object v2, p0, Lcom/oplus/camera/capmode/BaseMode$8;->b:Lcom/oplus/camera/capmode/BaseMode;

    invoke-static {v2}, Lcom/oplus/camera/capmode/BaseMode;->access$300(Lcom/oplus/camera/capmode/BaseMode;)Landroid/os/Handler;

    move-result-object v2

    new-instance v9, Lcom/oplus/camera/ui/control/e;

    iget-object v3, p0, Lcom/oplus/camera/capmode/BaseMode$8;->a:Lcom/oplus/camera/e/c;

    .line 2941
    invoke-virtual {v3}, Ljava/lang/Object;->hashCode()I

    move-result v3

    int-to-long v5, v3

    iget-object p0, p0, Lcom/oplus/camera/capmode/BaseMode$8;->a:Lcom/oplus/camera/e/c;

    iget-wide v7, p0, Lcom/oplus/camera/e/c;->ab:J

    move-object v3, v9

    move-object v4, p1

    invoke-direct/range {v3 .. v8}, Lcom/oplus/camera/ui/control/e;-><init>(Landroid/graphics/Bitmap;JJ)V

    .line 2940
    invoke-virtual {v2, v1, v9}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p0

    invoke-virtual {v0, p0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    goto :goto_0

    .line 2943
    :cond_1
    iget-object p0, p0, Lcom/oplus/camera/capmode/BaseMode$8;->b:Lcom/oplus/camera/capmode/BaseMode;

    iget-object p0, p0, Lcom/oplus/camera/capmode/BaseMode;->mCameraInterface:Lcom/oplus/camera/capmode/a;

    new-instance v0, Lcom/oplus/camera/ui/control/e;

    invoke-direct {v0, p1}, Lcom/oplus/camera/ui/control/e;-><init>(Landroid/graphics/Bitmap;)V

    invoke-interface {p0, v0}, Lcom/oplus/camera/capmode/a;->a(Lcom/oplus/camera/ui/control/e;)V

    :goto_0
    return-void
.end method

.method public a(Ljava/lang/Integer;Landroid/graphics/Bitmap;JJLandroid/hardware/camera2/CaptureResult;)V
    .locals 6

    .line 2950
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "capturePreviewData, onPreviewCaptured, which: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", bitmap: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", timestamp: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p5, p6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, ", result: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", title: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/oplus/camera/capmode/BaseMode$8;->b:Lcom/oplus/camera/capmode/BaseMode;

    .line 2951
    invoke-static {v1}, Lcom/oplus/camera/capmode/BaseMode;->access$500(Lcom/oplus/camera/capmode/BaseMode;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "BaseMode"

    .line 2950
    invoke-static {v1, v0}, Lcom/oplus/camera/e;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 2955
    iget-object v0, p0, Lcom/oplus/camera/capmode/BaseMode$8;->b:Lcom/oplus/camera/capmode/BaseMode;

    iget-object v0, v0, Lcom/oplus/camera/capmode/BaseMode;->mPreferences:Landroid/content/SharedPreferences;

    const-string v2, "off"

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/oplus/camera/capmode/BaseMode$8;->b:Lcom/oplus/camera/capmode/BaseMode;

    iget-object v0, v0, Lcom/oplus/camera/capmode/BaseMode;->mActivity:Landroid/app/Activity;

    if-eqz v0, :cond_0

    .line 2956
    iget-object v0, p0, Lcom/oplus/camera/capmode/BaseMode$8;->b:Lcom/oplus/camera/capmode/BaseMode;

    iget-object v0, v0, Lcom/oplus/camera/capmode/BaseMode;->mPreferences:Landroid/content/SharedPreferences;

    iget-object v3, p0, Lcom/oplus/camera/capmode/BaseMode$8;->b:Lcom/oplus/camera/capmode/BaseMode;

    iget-object v3, v3, Lcom/oplus/camera/capmode/BaseMode;->mActivity:Landroid/app/Activity;

    const v4, 0x7f10023d

    .line 2957
    invoke-virtual {v3, v4}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v3

    const-string v4, "pref_mirror_key"

    .line 2956
    invoke-interface {v0, v4, v3}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_0
    move-object v0, v2

    :goto_0
    const-wide/16 v3, 0x0

    cmp-long v3, v3, p5

    if-nez v3, :cond_1

    .line 2961
    iget-object v3, p0, Lcom/oplus/camera/capmode/BaseMode$8;->b:Lcom/oplus/camera/capmode/BaseMode;

    iget-object v3, v3, Lcom/oplus/camera/capmode/BaseMode;->mActivity:Landroid/app/Activity;

    new-instance v4, Lcom/oplus/camera/capmode/BaseMode$8$1;

    invoke-direct {v4, p0}, Lcom/oplus/camera/capmode/BaseMode$8$1;-><init>(Lcom/oplus/camera/capmode/BaseMode$8;)V

    invoke-virtual {v3, v4}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 2969
    :cond_1
    new-instance v3, Lcom/oplus/camera/aps/service/ThumbnailProcessor$DataRequest;

    invoke-direct {v3}, Lcom/oplus/camera/aps/service/ThumbnailProcessor$DataRequest;-><init>()V

    .line 2971
    iget-object v4, p0, Lcom/oplus/camera/capmode/BaseMode$8;->a:Lcom/oplus/camera/e/c;

    iget-boolean v4, v4, Lcom/oplus/camera/e/c;->ag:Z

    if-eqz v4, :cond_4

    iget-object v4, p0, Lcom/oplus/camera/capmode/BaseMode$8;->a:Lcom/oplus/camera/e/c;

    iget-boolean v4, v4, Lcom/oplus/camera/e/c;->M:Z

    if-nez v4, :cond_4

    .line 2972
    iget-object v4, p0, Lcom/oplus/camera/capmode/BaseMode$8;->a:Lcom/oplus/camera/e/c;

    iget v4, v4, Lcom/oplus/camera/e/c;->J:I

    if-eqz v4, :cond_3

    const/16 v4, 0xb4

    iget-object v5, p0, Lcom/oplus/camera/capmode/BaseMode$8;->a:Lcom/oplus/camera/e/c;

    iget v5, v5, Lcom/oplus/camera/e/c;->J:I

    if-ne v4, v5, :cond_2

    goto :goto_1

    .line 2975
    :cond_2
    invoke-static {p2}, Lcom/oplus/camera/util/Util;->b(Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;

    move-result-object v4

    iput-object v4, v3, Lcom/oplus/camera/aps/service/ThumbnailProcessor$DataRequest;->mThumbBitmap:Landroid/graphics/Bitmap;

    goto :goto_2

    .line 2973
    :cond_3
    :goto_1
    invoke-static {p2}, Lcom/oplus/camera/util/Util;->a(Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;

    move-result-object v4

    iput-object v4, v3, Lcom/oplus/camera/aps/service/ThumbnailProcessor$DataRequest;->mThumbBitmap:Landroid/graphics/Bitmap;

    goto :goto_2

    .line 2978
    :cond_4
    iput-object p2, v3, Lcom/oplus/camera/aps/service/ThumbnailProcessor$DataRequest;->mThumbBitmap:Landroid/graphics/Bitmap;

    .line 2981
    :goto_2
    iget-object v4, p0, Lcom/oplus/camera/capmode/BaseMode$8;->b:Lcom/oplus/camera/capmode/BaseMode;

    invoke-virtual {v4}, Lcom/oplus/camera/capmode/BaseMode;->getCameraMode()Ljava/lang/String;

    move-result-object v4

    iput-object v4, v3, Lcom/oplus/camera/aps/service/ThumbnailProcessor$DataRequest;->mCapMode:Ljava/lang/String;

    .line 2982
    iget-object v4, p0, Lcom/oplus/camera/capmode/BaseMode$8;->b:Lcom/oplus/camera/capmode/BaseMode;

    iget-object v4, v4, Lcom/oplus/camera/capmode/BaseMode;->mActivity:Landroid/app/Activity;

    invoke-virtual {v4}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    iput-object v4, v3, Lcom/oplus/camera/aps/service/ThumbnailProcessor$DataRequest;->mResolver:Landroid/content/ContentResolver;

    .line 2983
    new-instance v4, Landroid/util/Size;

    invoke-virtual {p2}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v5

    invoke-virtual {p2}, Landroid/graphics/Bitmap;->getHeight()I

    move-result p2

    invoke-direct {v4, v5, p2}, Landroid/util/Size;-><init>(II)V

    iput-object v4, v3, Lcom/oplus/camera/aps/service/ThumbnailProcessor$DataRequest;->mPreviewSize:Landroid/util/Size;

    .line 2984
    iget-object p2, p0, Lcom/oplus/camera/capmode/BaseMode$8;->b:Lcom/oplus/camera/capmode/BaseMode;

    iget-wide v4, p2, Lcom/oplus/camera/capmode/BaseMode;->mCaptureDate:J

    iput-wide v4, v3, Lcom/oplus/camera/aps/service/ThumbnailProcessor$DataRequest;->mDate:J

    .line 2985
    iget-object p2, p0, Lcom/oplus/camera/capmode/BaseMode$8;->b:Lcom/oplus/camera/capmode/BaseMode;

    invoke-static {p2}, Lcom/oplus/camera/capmode/BaseMode;->access$500(Lcom/oplus/camera/capmode/BaseMode;)Ljava/lang/String;

    move-result-object p2

    iput-object p2, v3, Lcom/oplus/camera/aps/service/ThumbnailProcessor$DataRequest;->mTitle:Ljava/lang/String;

    .line 2986
    iget-object p2, p0, Lcom/oplus/camera/capmode/BaseMode$8;->b:Lcom/oplus/camera/capmode/BaseMode;

    const/4 v4, 0x0

    invoke-virtual {p2, v4}, Lcom/oplus/camera/capmode/BaseMode;->getExif(Lcom/oplus/ocs/camera/CameraPictureCallback$CameraPictureResult;)Ljava/lang/String;

    move-result-object p2

    iput-object p2, v3, Lcom/oplus/camera/aps/service/ThumbnailProcessor$DataRequest;->mExif:Ljava/lang/String;

    .line 2987
    iput-object v0, v3, Lcom/oplus/camera/aps/service/ThumbnailProcessor$DataRequest;->mMirrorState:Ljava/lang/String;

    .line 2988
    iget-object p2, p0, Lcom/oplus/camera/capmode/BaseMode$8;->a:Lcom/oplus/camera/e/c;

    iget-boolean p2, p2, Lcom/oplus/camera/e/c;->ag:Z

    const-string v0, "on"

    if-eqz p2, :cond_5

    move-object p2, v0

    goto :goto_3

    :cond_5
    move-object p2, v2

    :goto_3
    iput-object p2, v3, Lcom/oplus/camera/aps/service/ThumbnailProcessor$DataRequest;->mRearMirrorState:Ljava/lang/String;

    .line 2989
    iget-object p2, p0, Lcom/oplus/camera/capmode/BaseMode$8;->b:Lcom/oplus/camera/capmode/BaseMode;

    iget p2, p2, Lcom/oplus/camera/capmode/BaseMode;->mCaptureOrientation:I

    iput p2, v3, Lcom/oplus/camera/aps/service/ThumbnailProcessor$DataRequest;->mThumbOrientation:I

    .line 2990
    iget-object p2, p0, Lcom/oplus/camera/capmode/BaseMode$8;->b:Lcom/oplus/camera/capmode/BaseMode;

    iget p2, p2, Lcom/oplus/camera/capmode/BaseMode;->mCameraId:I

    iput p2, v3, Lcom/oplus/camera/aps/service/ThumbnailProcessor$DataRequest;->mCameraId:I

    .line 2991
    iget-object p2, p0, Lcom/oplus/camera/capmode/BaseMode$8;->b:Lcom/oplus/camera/capmode/BaseMode;

    iget v4, p2, Lcom/oplus/camera/capmode/BaseMode;->mCameraId:I

    invoke-virtual {p2, v4}, Lcom/oplus/camera/capmode/BaseMode;->getProperCameraId(I)I

    move-result p2

    iput p2, v3, Lcom/oplus/camera/aps/service/ThumbnailProcessor$DataRequest;->mLogicCameraId:I

    .line 2992
    iget-object p2, p0, Lcom/oplus/camera/capmode/BaseMode$8;->b:Lcom/oplus/camera/capmode/BaseMode;

    iget v4, v3, Lcom/oplus/camera/aps/service/ThumbnailProcessor$DataRequest;->mLogicCameraId:I

    iget-object v5, p0, Lcom/oplus/camera/capmode/BaseMode$8;->b:Lcom/oplus/camera/capmode/BaseMode;

    iget v5, v5, Lcom/oplus/camera/capmode/BaseMode;->mCaptureOrientation:I

    invoke-virtual {p2, v4, v5}, Lcom/oplus/camera/capmode/BaseMode;->getJpegOrientation(II)I

    move-result p2

    iput p2, v3, Lcom/oplus/camera/aps/service/ThumbnailProcessor$DataRequest;->mJpegOrientation:I

    .line 2993
    iput-wide p3, v3, Lcom/oplus/camera/aps/service/ThumbnailProcessor$DataRequest;->mIdentity:J

    .line 2994
    iput-wide p5, v3, Lcom/oplus/camera/aps/service/ThumbnailProcessor$DataRequest;->mTimeStamp:J

    .line 2995
    iget-object p2, p0, Lcom/oplus/camera/capmode/BaseMode$8;->b:Lcom/oplus/camera/capmode/BaseMode;

    iget-boolean p2, p2, Lcom/oplus/camera/capmode/BaseMode;->mbBurstShot:Z

    iput-boolean p2, v3, Lcom/oplus/camera/aps/service/ThumbnailProcessor$DataRequest;->mbBurstShot:Z

    .line 2996
    iget-object p2, p0, Lcom/oplus/camera/capmode/BaseMode$8;->b:Lcom/oplus/camera/capmode/BaseMode;

    iget-boolean p2, p2, Lcom/oplus/camera/capmode/BaseMode;->mbBurstShot:Z

    const/4 p3, 0x1

    if-eqz p2, :cond_6

    move p2, p3

    goto :goto_4

    :cond_6
    const/4 p2, -0x1

    :goto_4
    iput p2, v3, Lcom/oplus/camera/aps/service/ThumbnailProcessor$DataRequest;->mRecBurstNum:I

    .line 2997
    iget-object p2, p0, Lcom/oplus/camera/capmode/BaseMode$8;->b:Lcom/oplus/camera/capmode/BaseMode;

    iget-boolean p2, p2, Lcom/oplus/camera/capmode/BaseMode;->mbDisplayOnLock:Z

    iput-boolean p2, v3, Lcom/oplus/camera/aps/service/ThumbnailProcessor$DataRequest;->mbLockScreen:Z

    .line 2998
    iget-object p2, p0, Lcom/oplus/camera/capmode/BaseMode$8;->a:Lcom/oplus/camera/e/c;

    invoke-virtual {p2}, Ljava/lang/Object;->hashCode()I

    move-result p2

    int-to-long p4, p2

    iput-wide p4, v3, Lcom/oplus/camera/aps/service/ThumbnailProcessor$DataRequest;->mRequestHash:J

    .line 2999
    iget-object p2, p0, Lcom/oplus/camera/capmode/BaseMode$8;->a:Lcom/oplus/camera/e/c;

    iget-wide p4, p2, Lcom/oplus/camera/e/c;->ad:J

    iput-wide p4, v3, Lcom/oplus/camera/aps/service/ThumbnailProcessor$DataRequest;->mStickerCaptureTime:J

    .line 3000
    iget-object p2, p0, Lcom/oplus/camera/capmode/BaseMode$8;->b:Lcom/oplus/camera/capmode/BaseMode;

    invoke-virtual {p2}, Lcom/oplus/camera/capmode/BaseMode;->isUltraHighResolutionOpened()Z

    move-result p2

    iput-boolean p2, v3, Lcom/oplus/camera/aps/service/ThumbnailProcessor$DataRequest;->mbUltraHighResolution:Z

    .line 3001
    iget-object p2, p0, Lcom/oplus/camera/capmode/BaseMode$8;->b:Lcom/oplus/camera/capmode/BaseMode;

    invoke-virtual {p2}, Lcom/oplus/camera/capmode/BaseMode;->isSuperClearPortraitOpen()Z

    move-result p2

    const/4 p4, 0x0

    if-eqz p2, :cond_7

    iget-object p2, p0, Lcom/oplus/camera/capmode/BaseMode$8;->b:Lcom/oplus/camera/capmode/BaseMode;

    const-string p5, "aps_algo_scportrait"

    .line 3002
    invoke-virtual {p2, p5}, Lcom/oplus/camera/capmode/BaseMode;->isApsDecisionAlgoOpen(Ljava/lang/String;)Z

    move-result p2

    if-eqz p2, :cond_7

    move p2, p3

    goto :goto_5

    :cond_7
    move p2, p4

    :goto_5
    iput-boolean p2, v3, Lcom/oplus/camera/aps/service/ThumbnailProcessor$DataRequest;->mbSuperClearPortrait:Z

    .line 3003
    iget-object p2, p0, Lcom/oplus/camera/capmode/BaseMode$8;->a:Lcom/oplus/camera/e/c;

    iget-object p2, p2, Lcom/oplus/camera/e/c;->Z:Ljava/lang/String;

    iput-object p2, v3, Lcom/oplus/camera/aps/service/ThumbnailProcessor$DataRequest;->mHeicCodecFormat:Ljava/lang/String;

    .line 3004
    iget-object p2, p0, Lcom/oplus/camera/capmode/BaseMode$8;->a:Lcom/oplus/camera/e/c;

    iget-boolean p2, p2, Lcom/oplus/camera/e/c;->aa:Z

    iput-boolean p2, v3, Lcom/oplus/camera/aps/service/ThumbnailProcessor$DataRequest;->mbWatchRequest:Z

    .line 3005
    sget-object p2, Lcom/oplus/camera/ui/preview/h;->b:Ljava/lang/Integer;

    if-ne p2, p1, :cond_8

    move p1, p3

    goto :goto_6

    :cond_8
    move p1, p4

    :goto_6
    iput-boolean p1, v3, Lcom/oplus/camera/aps/service/ThumbnailProcessor$DataRequest;->mbQuickJpeg:Z

    .line 3006
    iget-object p1, p0, Lcom/oplus/camera/capmode/BaseMode$8;->b:Lcom/oplus/camera/capmode/BaseMode;

    iget-object p2, p0, Lcom/oplus/camera/capmode/BaseMode$8;->a:Lcom/oplus/camera/e/c;

    invoke-virtual {p1, p2}, Lcom/oplus/camera/capmode/BaseMode;->getSupportQuickJpeg(Lcom/oplus/camera/e/c;)Z

    move-result p1

    iput-boolean p1, v3, Lcom/oplus/camera/aps/service/ThumbnailProcessor$DataRequest;->mbSupportQuickJpeg:Z

    .line 3007
    iget-object p1, p0, Lcom/oplus/camera/capmode/BaseMode$8;->b:Lcom/oplus/camera/capmode/BaseMode;

    iget-object p1, p1, Lcom/oplus/camera/capmode/BaseMode;->mApsService:Lcom/oplus/camera/aps/service/ApsService;

    iput-object p1, v3, Lcom/oplus/camera/aps/service/ThumbnailProcessor$DataRequest;->mApsService:Lcom/oplus/camera/aps/service/ApsService;

    .line 3008
    iget-object p1, p0, Lcom/oplus/camera/capmode/BaseMode$8;->a:Lcom/oplus/camera/e/c;

    iget-object p1, p1, Lcom/oplus/camera/e/c;->e:Ljava/lang/String;

    const-string p2, "none"

    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_9

    iget-object p1, p0, Lcom/oplus/camera/capmode/BaseMode$8;->b:Lcom/oplus/camera/capmode/BaseMode;

    iget-object p1, p1, Lcom/oplus/camera/capmode/BaseMode;->mPreferences:Landroid/content/SharedPreferences;

    if-eqz p1, :cond_9

    iget-object p1, p0, Lcom/oplus/camera/capmode/BaseMode$8;->b:Lcom/oplus/camera/capmode/BaseMode;

    iget-object p1, p1, Lcom/oplus/camera/capmode/BaseMode;->mPreferences:Landroid/content/SharedPreferences;

    const-string p2, "pref_watermark_makeup_function_key"

    .line 3010
    invoke-interface {p1, p2, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_9

    iget-object p1, p0, Lcom/oplus/camera/capmode/BaseMode$8;->b:Lcom/oplus/camera/capmode/BaseMode;

    iget-object p1, p1, Lcom/oplus/camera/capmode/BaseMode;->mPreferences:Landroid/content/SharedPreferences;

    const-string p2, "pref_watermark_function_key"

    .line 3012
    invoke-interface {p1, p2, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_9

    goto :goto_7

    :cond_9
    move p3, p4

    :goto_7
    iput-boolean p3, v3, Lcom/oplus/camera/aps/service/ThumbnailProcessor$DataRequest;->mbMakeupWatermark:Z

    .line 3014
    iget-object p1, p0, Lcom/oplus/camera/capmode/BaseMode$8;->b:Lcom/oplus/camera/capmode/BaseMode;

    invoke-virtual {p1}, Lcom/oplus/camera/capmode/BaseMode;->getZoomValue()F

    move-result p1

    sget p2, Lcom/oplus/camera/ag;->a:F

    invoke-static {p1, p2}, Ljava/lang/Float;->compare(FF)I

    move-result p1

    if-eqz p1, :cond_a

    iget-boolean p1, v3, Lcom/oplus/camera/aps/service/ThumbnailProcessor$DataRequest;->mbQuickJpeg:Z

    if-eqz p1, :cond_a

    if-eqz p7, :cond_a

    iget-object p1, p0, Lcom/oplus/camera/capmode/BaseMode$8;->b:Lcom/oplus/camera/capmode/BaseMode;

    .line 3017
    invoke-virtual {p1}, Lcom/oplus/camera/capmode/BaseMode;->isFaceRectifyOpen()Z

    move-result p1

    if-eqz p1, :cond_a

    .line 3018
    sget-object p1, Landroid/hardware/camera2/CaptureResult;->STATISTICS_FACES:Landroid/hardware/camera2/CaptureResult$Key;

    invoke-virtual {p7, p1}, Landroid/hardware/camera2/CaptureResult;->get(Landroid/hardware/camera2/CaptureResult$Key;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [Landroid/hardware/camera2/params/Face;

    if-eqz p1, :cond_a

    .line 3020
    array-length p1, p1

    if-eqz p1, :cond_a

    .line 3021
    iget-object p1, p0, Lcom/oplus/camera/capmode/BaseMode$8;->b:Lcom/oplus/camera/capmode/BaseMode;

    iget-object p1, p1, Lcom/oplus/camera/capmode/BaseMode;->mOneCamera:Lcom/oplus/camera/e/d;

    iput-object p1, v3, Lcom/oplus/camera/aps/service/ThumbnailProcessor$DataRequest;->mOneCamera:Lcom/oplus/camera/e/d;

    .line 3022
    iput-object p7, v3, Lcom/oplus/camera/aps/service/ThumbnailProcessor$DataRequest;->mResult:Landroid/hardware/camera2/CaptureResult;

    .line 3026
    :cond_a
    iget-object p1, p0, Lcom/oplus/camera/capmode/BaseMode$8;->b:Lcom/oplus/camera/capmode/BaseMode;

    iget-boolean p1, p1, Lcom/oplus/camera/capmode/BaseMode;->mbBurstShot:Z

    if-eqz p1, :cond_b

    .line 3027
    iget-object p1, p0, Lcom/oplus/camera/capmode/BaseMode$8;->b:Lcom/oplus/camera/capmode/BaseMode;

    iget-object p1, p1, Lcom/oplus/camera/capmode/BaseMode;->mCameraInterface:Lcom/oplus/camera/capmode/a;

    invoke-interface {p1}, Lcom/oplus/camera/capmode/a;->w()Ljava/lang/String;

    move-result-object p1

    iput-object p1, v3, Lcom/oplus/camera/aps/service/ThumbnailProcessor$DataRequest;->mCshotPath:Ljava/lang/String;

    .line 3028
    iget-object p1, p0, Lcom/oplus/camera/capmode/BaseMode$8;->b:Lcom/oplus/camera/capmode/BaseMode;

    iget-object p1, p1, Lcom/oplus/camera/capmode/BaseMode;->mCameraInterface:Lcom/oplus/camera/capmode/a;

    invoke-interface {p1}, Lcom/oplus/camera/capmode/a;->x()J

    move-result-wide p1

    iput-wide p1, v3, Lcom/oplus/camera/aps/service/ThumbnailProcessor$DataRequest;->mBurstShotFlagId:J

    .line 3031
    :cond_b
    iget-object p1, p0, Lcom/oplus/camera/capmode/BaseMode$8;->b:Lcom/oplus/camera/capmode/BaseMode;

    invoke-virtual {p1}, Lcom/oplus/camera/capmode/BaseMode;->isInNightProcess()Z

    move-result p1

    .line 3032
    iget-object p2, p0, Lcom/oplus/camera/capmode/BaseMode$8;->b:Lcom/oplus/camera/capmode/BaseMode;

    invoke-virtual {p2}, Lcom/oplus/camera/capmode/BaseMode;->isInOfflineNightProcess()Z

    move-result p2

    .line 3034
    invoke-static {}, Lcom/oplus/camera/util/Util;->C()Z

    move-result p3

    if-eqz p3, :cond_c

    if-eqz p1, :cond_c

    if-nez p2, :cond_c

    iget-object p3, p0, Lcom/oplus/camera/capmode/BaseMode$8;->b:Lcom/oplus/camera/capmode/BaseMode;

    iget-boolean p3, p3, Lcom/oplus/camera/capmode/BaseMode;->mbBurstShot:Z

    if-eqz p3, :cond_d

    :cond_c
    iget-object p3, p0, Lcom/oplus/camera/capmode/BaseMode$8;->a:Lcom/oplus/camera/e/c;

    iget-boolean p3, p3, Lcom/oplus/camera/e/c;->ae:Z

    if-nez p3, :cond_d

    .line 3036
    iget-object p3, p0, Lcom/oplus/camera/capmode/BaseMode$8;->b:Lcom/oplus/camera/capmode/BaseMode;

    iget-object p3, p3, Lcom/oplus/camera/capmode/BaseMode;->mCameraInterface:Lcom/oplus/camera/capmode/a;

    invoke-interface {p3, v3}, Lcom/oplus/camera/capmode/a;->a(Lcom/oplus/camera/aps/service/ThumbnailProcessor$DataRequest;)Landroid/net/Uri;

    .line 3039
    :cond_d
    iget-boolean p3, v3, Lcom/oplus/camera/aps/service/ThumbnailProcessor$DataRequest;->mbQuickJpeg:Z

    if-nez p3, :cond_e

    .line 3040
    iget-object p0, p0, Lcom/oplus/camera/capmode/BaseMode$8;->b:Lcom/oplus/camera/capmode/BaseMode;

    const/4 p3, 0x2

    invoke-virtual {p0, p3}, Lcom/oplus/camera/capmode/BaseMode;->setCapturePreviewDataState(I)V

    .line 3043
    :cond_e
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "capturePreviewData, onPreviewCaptured, X, isInNightProcess: "

    invoke-virtual {p0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string p1, ", isInOfflineNightProcess: "

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v1, p0}, Lcom/oplus/camera/e;->a(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public a()Z
    .locals 0

    .line 2904
    iget-object p0, p0, Lcom/oplus/camera/capmode/BaseMode$8;->a:Lcom/oplus/camera/e/c;

    iget-boolean p0, p0, Lcom/oplus/camera/e/c;->M:Z

    return p0
.end method

.method public b()I
    .locals 3

    .line 2909
    iget-object v0, p0, Lcom/oplus/camera/capmode/BaseMode$8;->b:Lcom/oplus/camera/capmode/BaseMode;

    iget v1, v0, Lcom/oplus/camera/capmode/BaseMode;->mCameraId:I

    invoke-virtual {v0, v1}, Lcom/oplus/camera/capmode/BaseMode;->getProperCameraId(I)I

    move-result v1

    iget-object v2, p0, Lcom/oplus/camera/capmode/BaseMode$8;->a:Lcom/oplus/camera/e/c;

    iget v2, v2, Lcom/oplus/camera/e/c;->J:I

    invoke-virtual {v0, v1, v2}, Lcom/oplus/camera/capmode/BaseMode;->getJpegOrientation(II)I

    move-result v0

    .line 2912
    iget-object v1, p0, Lcom/oplus/camera/capmode/BaseMode$8;->b:Lcom/oplus/camera/capmode/BaseMode;

    iget-boolean v1, v1, Lcom/oplus/camera/capmode/BaseMode;->mbFrontCamera:Z

    if-eqz v1, :cond_1

    .line 2913
    invoke-virtual {p0}, Lcom/oplus/camera/capmode/BaseMode$8;->a()Z

    move-result v1

    if-eqz v1, :cond_0

    rem-int/lit16 v1, v0, 0xb4

    if-nez v1, :cond_0

    rsub-int p0, v0, 0xb4

    return p0

    .line 2917
    :cond_0
    rem-int/lit16 v1, v0, 0xb4

    if-eqz v1, :cond_1

    rsub-int p0, v0, 0x168

    return p0

    .line 2922
    :cond_1
    iget-object p0, p0, Lcom/oplus/camera/capmode/BaseMode$8;->b:Lcom/oplus/camera/capmode/BaseMode;

    iget-object p0, p0, Lcom/oplus/camera/capmode/BaseMode;->mCameraUIInterface:Lcom/oplus/camera/ui/CameraUIInterface;

    invoke-interface {p0}, Lcom/oplus/camera/ui/CameraUIInterface;->e()Z

    move-result p0

    if-eqz p0, :cond_2

    .line 2923
    rem-int/lit16 p0, v0, 0xb4

    if-nez p0, :cond_2

    rsub-int p0, v0, 0xb4

    return p0

    :cond_2
    return v0
.end method
