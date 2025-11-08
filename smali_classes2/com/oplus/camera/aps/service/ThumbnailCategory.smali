.class public Lcom/oplus/camera/aps/service/ThumbnailCategory;
.super Ljava/lang/Object;
.source "ThumbnailCategory.java"


# instance fields
.field public mCameraPictureImage:Lcom/oplus/ocs/camera/CameraPictureCallback$CameraPictureImage;

.field public mCaptureMsgData:Lcom/oplus/camera/statistics/model/CaptureMsgData;

.field public mPictureResult:Lcom/oplus/ocs/camera/CameraPictureCallback$CameraPictureResult;

.field public mThumbnailItem:Lcom/oplus/camera/aps/service/ThumbnailItem;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 10
    iput-object v0, p0, Lcom/oplus/camera/aps/service/ThumbnailCategory;->mThumbnailItem:Lcom/oplus/camera/aps/service/ThumbnailItem;

    .line 11
    iput-object v0, p0, Lcom/oplus/camera/aps/service/ThumbnailCategory;->mPictureResult:Lcom/oplus/ocs/camera/CameraPictureCallback$CameraPictureResult;

    .line 12
    iput-object v0, p0, Lcom/oplus/camera/aps/service/ThumbnailCategory;->mCaptureMsgData:Lcom/oplus/camera/statistics/model/CaptureMsgData;

    .line 13
    iput-object v0, p0, Lcom/oplus/camera/aps/service/ThumbnailCategory;->mCameraPictureImage:Lcom/oplus/ocs/camera/CameraPictureCallback$CameraPictureImage;

    return-void
.end method


# virtual methods
.method public isValid()Z
    .locals 4

    .line 16
    iget-object v0, p0, Lcom/oplus/camera/aps/service/ThumbnailCategory;->mThumbnailItem:Lcom/oplus/camera/aps/service/ThumbnailItem;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/oplus/camera/aps/service/ThumbnailCategory;->mPictureResult:Lcom/oplus/ocs/camera/CameraPictureCallback$CameraPictureResult;

    if-eqz v0, :cond_0

    sget-object v1, Lcom/oplus/ocs/camera/CameraParameter;->IMAGE_CATEGORY_IS_VALID:Lcom/oplus/ocs/camera/CameraParameter$CaptureResultKey;

    .line 18
    invoke-virtual {v0, v1}, Lcom/oplus/ocs/camera/CameraPictureCallback$CameraPictureResult;->get(Lcom/oplus/ocs/camera/CameraParameter$CaptureResultKey;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/oplus/camera/aps/service/ThumbnailCategory;->mThumbnailItem:Lcom/oplus/camera/aps/service/ThumbnailItem;

    iget-wide v0, v0, Lcom/oplus/camera/aps/service/ThumbnailItem;->mIdentity:J

    iget-object v2, p0, Lcom/oplus/camera/aps/service/ThumbnailCategory;->mPictureResult:Lcom/oplus/ocs/camera/CameraPictureCallback$CameraPictureResult;

    sget-object v3, Lcom/oplus/ocs/camera/CameraParameter;->IMAGE_CATEGORY_MERGE_IDENTITY:Lcom/oplus/ocs/camera/CameraParameter$CaptureResultKey;

    .line 19
    invoke-virtual {v2, v3}, Lcom/oplus/ocs/camera/CameraPictureCallback$CameraPictureResult;->get(Lcom/oplus/ocs/camera/CameraParameter$CaptureResultKey;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Long;

    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    cmp-long v0, v0, v2

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/oplus/camera/aps/service/ThumbnailCategory;->mPictureResult:Lcom/oplus/ocs/camera/CameraPictureCallback$CameraPictureResult;

    sget-object v1, Lcom/oplus/ocs/camera/CameraParameter;->IMAGE_CATEGORY_IMAGE_TIME_STAMP:Lcom/oplus/ocs/camera/CameraParameter$CaptureResultKey;

    .line 20
    invoke-virtual {v0, v1}, Lcom/oplus/ocs/camera/CameraPictureCallback$CameraPictureResult;->get(Lcom/oplus/ocs/camera/CameraParameter$CaptureResultKey;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    iget-object p0, p0, Lcom/oplus/camera/aps/service/ThumbnailCategory;->mPictureResult:Lcom/oplus/ocs/camera/CameraPictureCallback$CameraPictureResult;

    sget-object v1, Lcom/oplus/ocs/camera/CameraParameter;->IMAGE_CATEGORY_META_TIME_STAMP:Lcom/oplus/ocs/camera/CameraParameter$CaptureResultKey;

    .line 21
    invoke-virtual {p0, v1}, Lcom/oplus/ocs/camera/CameraPictureCallback$CameraPictureResult;->get(Lcom/oplus/ocs/camera/CameraParameter$CaptureResultKey;)Ljava/lang/Object;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/Long;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public toString()Ljava/lang/String;
    .locals 6

    .line 31
    invoke-virtual {p0}, Lcom/oplus/camera/aps/service/ThumbnailCategory;->isValid()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 32
    iget-object p0, p0, Lcom/oplus/camera/aps/service/ThumbnailCategory;->mThumbnailItem:Lcom/oplus/camera/aps/service/ThumbnailItem;

    invoke-virtual {p0}, Lcom/oplus/camera/aps/service/ThumbnailItem;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 35
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "ThumbnailCategory is invalid! thumbnail.identity: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 36
    iget-object v1, p0, Lcom/oplus/camera/aps/service/ThumbnailCategory;->mThumbnailItem:Lcom/oplus/camera/aps/service/ThumbnailItem;

    const-wide/16 v2, -0x1

    if-eqz v1, :cond_1

    iget-wide v4, v1, Lcom/oplus/camera/aps/service/ThumbnailItem;->mIdentity:J

    goto :goto_0

    :cond_1
    move-wide v4, v2

    :goto_0
    invoke-virtual {v0, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, ", meta.mergeIdentity: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 37
    iget-object v1, p0, Lcom/oplus/camera/aps/service/ThumbnailCategory;->mPictureResult:Lcom/oplus/ocs/camera/CameraPictureCallback$CameraPictureResult;

    if-eqz v1, :cond_2

    sget-object v4, Lcom/oplus/ocs/camera/CameraParameter;->IMAGE_CATEGORY_MERGE_IDENTITY:Lcom/oplus/ocs/camera/CameraParameter$CaptureResultKey;

    invoke-virtual {v1, v4}, Lcom/oplus/ocs/camera/CameraPictureCallback$CameraPictureResult;->get(Lcom/oplus/ocs/camera/CameraParameter$CaptureResultKey;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Long;

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    goto :goto_1

    :cond_2
    move-wide v4, v2

    :goto_1
    invoke-virtual {v0, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, ", meta.timeStamp: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 39
    iget-object v1, p0, Lcom/oplus/camera/aps/service/ThumbnailCategory;->mPictureResult:Lcom/oplus/ocs/camera/CameraPictureCallback$CameraPictureResult;

    if-eqz v1, :cond_3

    sget-object v4, Lcom/oplus/ocs/camera/CameraParameter;->IMAGE_CATEGORY_META_TIME_STAMP:Lcom/oplus/ocs/camera/CameraParameter$CaptureResultKey;

    invoke-virtual {v1, v4}, Lcom/oplus/ocs/camera/CameraPictureCallback$CameraPictureResult;->get(Lcom/oplus/ocs/camera/CameraParameter$CaptureResultKey;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Long;

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    goto :goto_2

    :cond_3
    move-wide v4, v2

    :goto_2
    invoke-virtual {v0, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, ", image.timeStamp: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 41
    iget-object p0, p0, Lcom/oplus/camera/aps/service/ThumbnailCategory;->mPictureResult:Lcom/oplus/ocs/camera/CameraPictureCallback$CameraPictureResult;

    if-eqz p0, :cond_4

    sget-object v1, Lcom/oplus/ocs/camera/CameraParameter;->IMAGE_CATEGORY_IMAGE_TIME_STAMP:Lcom/oplus/ocs/camera/CameraParameter$CaptureResultKey;

    invoke-virtual {p0, v1}, Lcom/oplus/ocs/camera/CameraPictureCallback$CameraPictureResult;->get(Lcom/oplus/ocs/camera/CameraParameter$CaptureResultKey;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Long;

    invoke-virtual {p0}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    :cond_4
    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
