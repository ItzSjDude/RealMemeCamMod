.class public Lcom/oplus/camera/aps/service/ThumbnailProcessor;
.super Ljava/lang/Thread;
.source "ThumbnailProcessor.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/oplus/camera/aps/service/ThumbnailProcessor$DataRequest;,
        Lcom/oplus/camera/aps/service/ThumbnailProcessor$ThumbnailProcessListener;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "ThumbnailProcessor"

.field private static final THUMBNAIL_SCALE_SIZE:F = 0.6f

.field public static final THUMBNAIL_URI_CREATING_VARIABLE:Landroid/os/ConditionVariable;


# instance fields
.field private mApsService:Lcom/oplus/camera/aps/service/ApsService;

.field private mCameraPictures:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Long;",
            "Lcom/oplus/camera/Storage$CameraPicture;",
            ">;"
        }
    .end annotation
.end field

.field private mLastThumbnailIdentity:J

.field private final mLock:Ljava/lang/Object;

.field private mThumbNailProcessListener:Lcom/oplus/camera/aps/service/ThumbnailProcessor$ThumbnailProcessListener;

.field private mThumbNailQueue:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/oplus/camera/aps/service/ThumbnailProcessor$DataRequest;",
            ">;"
        }
    .end annotation
.end field

.field private volatile mbDestroyed:Z

.field private mbProcessingThumbnail:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 39
    new-instance v0, Landroid/os/ConditionVariable;

    invoke-direct {v0}, Landroid/os/ConditionVariable;-><init>()V

    sput-object v0, Lcom/oplus/camera/aps/service/ThumbnailProcessor;->THUMBNAIL_URI_CREATING_VARIABLE:Landroid/os/ConditionVariable;

    return-void
.end method

.method public constructor <init>()V
    .locals 4

    .line 51
    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    .line 42
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/oplus/camera/aps/service/ThumbnailProcessor;->mLock:Ljava/lang/Object;

    .line 43
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/oplus/camera/aps/service/ThumbnailProcessor;->mThumbNailQueue:Ljava/util/ArrayList;

    const/4 v0, 0x0

    .line 44
    iput-object v0, p0, Lcom/oplus/camera/aps/service/ThumbnailProcessor;->mThumbNailProcessListener:Lcom/oplus/camera/aps/service/ThumbnailProcessor$ThumbnailProcessListener;

    const/4 v1, 0x0

    .line 45
    iput-boolean v1, p0, Lcom/oplus/camera/aps/service/ThumbnailProcessor;->mbDestroyed:Z

    .line 46
    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    iput-object v2, p0, Lcom/oplus/camera/aps/service/ThumbnailProcessor;->mCameraPictures:Ljava/util/Map;

    const-wide/16 v2, 0x0

    .line 47
    iput-wide v2, p0, Lcom/oplus/camera/aps/service/ThumbnailProcessor;->mLastThumbnailIdentity:J

    .line 48
    iput-object v0, p0, Lcom/oplus/camera/aps/service/ThumbnailProcessor;->mApsService:Lcom/oplus/camera/aps/service/ApsService;

    .line 49
    iput-boolean v1, p0, Lcom/oplus/camera/aps/service/ThumbnailProcessor;->mbProcessingThumbnail:Z

    const-string v0, "ThumbnailProcessor"

    .line 52
    invoke-virtual {p0, v0}, Lcom/oplus/camera/aps/service/ThumbnailProcessor;->setName(Ljava/lang/String;)V

    .line 53
    invoke-virtual {p0}, Lcom/oplus/camera/aps/service/ThumbnailProcessor;->start()V

    return-void
.end method

.method private generateThumbnailAndUri(Lcom/oplus/camera/aps/service/ThumbnailProcessor$DataRequest;)V
    .locals 13

    .line 102
    iget-boolean v0, p1, Lcom/oplus/camera/aps/service/ThumbnailProcessor$DataRequest;->mbQuickJpeg:Z

    const/4 v1, 0x1

    xor-int/2addr v0, v1

    iput-boolean v0, p0, Lcom/oplus/camera/aps/service/ThumbnailProcessor;->mbProcessingThumbnail:Z

    .line 103
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "generateThumbnailAndUri, identity: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v2, p1, Lcom/oplus/camera/aps/service/ThumbnailProcessor$DataRequest;->mIdentity:J

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v2, "ThumbnailProcessor"

    invoke-static {v2, v0}, Lcom/oplus/camera/e;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 107
    iget-object v0, p1, Lcom/oplus/camera/aps/service/ThumbnailProcessor$DataRequest;->mThumbData:[B

    const/4 v2, 0x0

    const/16 v3, 0x10e

    const/16 v4, -0x5a

    const/16 v5, 0xb4

    const/16 v6, 0x5a

    if-eqz v0, :cond_9

    .line 108
    iget v0, p1, Lcom/oplus/camera/aps/service/ThumbnailProcessor$DataRequest;->mCameraId:I

    invoke-static {v0}, Lcom/oplus/camera/e/a;->a(I)Z

    move-result v0

    if-eqz v0, :cond_8

    .line 109
    iget-object v7, p1, Lcom/oplus/camera/aps/service/ThumbnailProcessor$DataRequest;->mThumbData:[B

    iget-object v0, p1, Lcom/oplus/camera/aps/service/ThumbnailProcessor$DataRequest;->mPreviewSize:Landroid/util/Size;

    invoke-virtual {v0}, Landroid/util/Size;->getWidth()I

    move-result v8

    iget-object v0, p1, Lcom/oplus/camera/aps/service/ThumbnailProcessor$DataRequest;->mPreviewSize:Landroid/util/Size;

    invoke-virtual {v0}, Landroid/util/Size;->getHeight()I

    move-result v9

    const/16 v10, 0x10e

    const/4 v11, 0x2

    const/4 v12, 0x0

    invoke-static/range {v7 .. v12}, Lcom/oplus/camera/util/Util;->b([BIIIIZ)Landroid/graphics/Bitmap;

    move-result-object v0

    if-nez v0, :cond_0

    const-string p0, "ThumbnailProcessor"

    const-string p1, "generateThumbnailAndUri, bitmap is null"

    .line 113
    invoke-static {p0, p1}, Lcom/oplus/camera/e;->f(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    .line 118
    :cond_0
    iget v7, p1, Lcom/oplus/camera/aps/service/ThumbnailProcessor$DataRequest;->mThumbOrientation:I

    if-eqz v7, :cond_7

    if-eq v7, v6, :cond_5

    if-eq v7, v5, :cond_3

    if-eq v7, v3, :cond_1

    .line 157
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "generateThumbnailAndUri, mOrientation: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v4, p1, Lcom/oplus/camera/aps/service/ThumbnailProcessor$DataRequest;->mThumbOrientation:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, " is wrong!!"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const-string v4, "ThumbnailProcessor"

    invoke-static {v4, v3}, Lcom/oplus/camera/e;->f(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_3

    .line 147
    :cond_1
    iget-object v3, p1, Lcom/oplus/camera/aps/service/ThumbnailProcessor$DataRequest;->mMirrorState:Ljava/lang/String;

    const-string v7, "off"

    invoke-virtual {v7, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 148
    invoke-static {v0}, Lcom/oplus/camera/util/Util;->c(Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 149
    invoke-static {v0, v4}, Lcom/oplus/camera/util/Util;->b(Landroid/graphics/Bitmap;I)Landroid/graphics/Bitmap;

    move-result-object v0

    goto/16 :goto_3

    .line 151
    :cond_2
    invoke-static {v0, v6}, Lcom/oplus/camera/util/Util;->b(Landroid/graphics/Bitmap;I)Landroid/graphics/Bitmap;

    move-result-object v0

    goto/16 :goto_3

    .line 137
    :cond_3
    iget-object v3, p1, Lcom/oplus/camera/aps/service/ThumbnailProcessor$DataRequest;->mMirrorState:Ljava/lang/String;

    const-string v4, "off"

    invoke-virtual {v4, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_4

    .line 138
    invoke-static {v0, v5}, Lcom/oplus/camera/util/Util;->b(Landroid/graphics/Bitmap;I)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 139
    invoke-static {v0}, Lcom/oplus/camera/util/Util;->c(Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;

    move-result-object v0

    goto/16 :goto_3

    .line 141
    :cond_4
    invoke-static {v0, v5}, Lcom/oplus/camera/util/Util;->b(Landroid/graphics/Bitmap;I)Landroid/graphics/Bitmap;

    move-result-object v0

    goto/16 :goto_3

    .line 127
    :cond_5
    iget-object v3, p1, Lcom/oplus/camera/aps/service/ThumbnailProcessor$DataRequest;->mMirrorState:Ljava/lang/String;

    const-string v7, "off"

    invoke-virtual {v7, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_6

    .line 128
    invoke-static {v0}, Lcom/oplus/camera/util/Util;->c(Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 129
    invoke-static {v0, v6}, Lcom/oplus/camera/util/Util;->b(Landroid/graphics/Bitmap;I)Landroid/graphics/Bitmap;

    move-result-object v0

    goto/16 :goto_3

    .line 131
    :cond_6
    invoke-static {v0, v4}, Lcom/oplus/camera/util/Util;->b(Landroid/graphics/Bitmap;I)Landroid/graphics/Bitmap;

    move-result-object v0

    goto/16 :goto_3

    .line 120
    :cond_7
    iget-object v3, p1, Lcom/oplus/camera/aps/service/ThumbnailProcessor$DataRequest;->mMirrorState:Ljava/lang/String;

    const-string v4, "off"

    invoke-virtual {v4, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_18

    .line 121
    invoke-static {v0}, Lcom/oplus/camera/util/Util;->c(Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;

    move-result-object v0

    goto/16 :goto_3

    .line 162
    :cond_8
    iget-object v6, p1, Lcom/oplus/camera/aps/service/ThumbnailProcessor$DataRequest;->mThumbData:[B

    iget-object v0, p1, Lcom/oplus/camera/aps/service/ThumbnailProcessor$DataRequest;->mPreviewSize:Landroid/util/Size;

    invoke-virtual {v0}, Landroid/util/Size;->getWidth()I

    move-result v7

    iget-object v0, p1, Lcom/oplus/camera/aps/service/ThumbnailProcessor$DataRequest;->mPreviewSize:Landroid/util/Size;

    invoke-virtual {v0}, Landroid/util/Size;->getHeight()I

    move-result v8

    const/16 v9, 0x5a

    const/4 v10, 0x2

    const/4 v11, 0x0

    invoke-static/range {v6 .. v11}, Lcom/oplus/camera/util/Util;->b([BIIIIZ)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 164
    iget v3, p1, Lcom/oplus/camera/aps/service/ThumbnailProcessor$DataRequest;->mThumbOrientation:I

    invoke-static {v0, v3}, Lcom/oplus/camera/util/Util;->b(Landroid/graphics/Bitmap;I)Landroid/graphics/Bitmap;

    move-result-object v0

    if-eqz v0, :cond_18

    .line 166
    iget-object v3, p1, Lcom/oplus/camera/aps/service/ThumbnailProcessor$DataRequest;->mRearMirrorState:Ljava/lang/String;

    const-string v4, "on"

    invoke-virtual {v4, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_18

    .line 167
    invoke-static {v0}, Lcom/oplus/camera/util/Util;->c(Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;

    move-result-object v0

    goto/16 :goto_3

    .line 170
    :cond_9
    iget-object v0, p1, Lcom/oplus/camera/aps/service/ThumbnailProcessor$DataRequest;->mThumbBitmap:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_17

    iget-object v0, p1, Lcom/oplus/camera/aps/service/ThumbnailProcessor$DataRequest;->mThumbBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v0

    if-nez v0, :cond_17

    .line 171
    iget-boolean v0, p1, Lcom/oplus/camera/aps/service/ThumbnailProcessor$DataRequest;->mbQuickJpeg:Z

    if-eqz v0, :cond_a

    .line 172
    iget-object v0, p1, Lcom/oplus/camera/aps/service/ThumbnailProcessor$DataRequest;->mThumbBitmap:Landroid/graphics/Bitmap;

    :goto_0
    move-object v8, v0

    goto :goto_1

    .line 174
    :cond_a
    iget-boolean v0, p1, Lcom/oplus/camera/aps/service/ThumbnailProcessor$DataRequest;->mbMakeupWatermark:Z

    const v7, 0x3f19999a    # 0.6f

    if-eqz v0, :cond_d

    .line 175
    new-instance v0, Landroid/util/Size;

    iget-object v8, p1, Lcom/oplus/camera/aps/service/ThumbnailProcessor$DataRequest;->mThumbBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v8}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v8

    iget-object v9, p1, Lcom/oplus/camera/aps/service/ThumbnailProcessor$DataRequest;->mThumbBitmap:Landroid/graphics/Bitmap;

    .line 176
    invoke-virtual {v9}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v9

    invoke-direct {v0, v8, v9}, Landroid/util/Size;-><init>(II)V

    .line 175
    invoke-static {v0}, Lcom/oplus/camera/c;->b(Landroid/util/Size;)Landroid/util/Size;

    move-result-object v0

    .line 178
    iget v8, p1, Lcom/oplus/camera/aps/service/ThumbnailProcessor$DataRequest;->mThumbOrientation:I

    if-eq v6, v8, :cond_b

    iget v8, p1, Lcom/oplus/camera/aps/service/ThumbnailProcessor$DataRequest;->mThumbOrientation:I

    if-ne v3, v8, :cond_c

    .line 180
    :cond_b
    new-instance v0, Landroid/util/Size;

    iget-object v8, p1, Lcom/oplus/camera/aps/service/ThumbnailProcessor$DataRequest;->mThumbBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v8}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v8

    iget-object v9, p1, Lcom/oplus/camera/aps/service/ThumbnailProcessor$DataRequest;->mThumbBitmap:Landroid/graphics/Bitmap;

    .line 181
    invoke-virtual {v9}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v9

    invoke-direct {v0, v8, v9}, Landroid/util/Size;-><init>(II)V

    .line 180
    invoke-static {v0}, Lcom/oplus/camera/c;->b(Landroid/util/Size;)Landroid/util/Size;

    move-result-object v0

    .line 184
    :cond_c
    iget-object v8, p1, Lcom/oplus/camera/aps/service/ThumbnailProcessor$DataRequest;->mThumbBitmap:Landroid/graphics/Bitmap;

    iget v9, p1, Lcom/oplus/camera/aps/service/ThumbnailProcessor$DataRequest;->mThumbOrientation:I

    invoke-static {v8, v7, v0, v9}, Lcom/oplus/camera/util/Util;->a(Landroid/graphics/Bitmap;FLandroid/util/Size;I)Landroid/graphics/Bitmap;

    move-result-object v0

    goto :goto_0

    .line 186
    :cond_d
    iget-object v0, p1, Lcom/oplus/camera/aps/service/ThumbnailProcessor$DataRequest;->mThumbBitmap:Landroid/graphics/Bitmap;

    invoke-static {v0, v7}, Lcom/oplus/camera/util/Util;->b(Landroid/graphics/Bitmap;F)Landroid/graphics/Bitmap;

    move-result-object v0

    goto :goto_0

    .line 190
    :goto_1
    iget-object v0, p1, Lcom/oplus/camera/aps/service/ThumbnailProcessor$DataRequest;->mOneCamera:Lcom/oplus/camera/e/d;

    if-eqz v0, :cond_e

    iget-object v0, p1, Lcom/oplus/camera/aps/service/ThumbnailProcessor$DataRequest;->mResult:Landroid/hardware/camera2/CaptureResult;

    if-eqz v0, :cond_e

    .line 191
    iget-object v7, p1, Lcom/oplus/camera/aps/service/ThumbnailProcessor$DataRequest;->mOneCamera:Lcom/oplus/camera/e/d;

    iget-object v9, p1, Lcom/oplus/camera/aps/service/ThumbnailProcessor$DataRequest;->mResult:Landroid/hardware/camera2/CaptureResult;

    iget v10, p1, Lcom/oplus/camera/aps/service/ThumbnailProcessor$DataRequest;->mCameraId:I

    iget v11, p1, Lcom/oplus/camera/aps/service/ThumbnailProcessor$DataRequest;->mLogicCameraId:I

    iget v12, p1, Lcom/oplus/camera/aps/service/ThumbnailProcessor$DataRequest;->mJpegOrientation:I

    invoke-interface/range {v7 .. v12}, Lcom/oplus/camera/e/d;->a(Landroid/graphics/Bitmap;Landroid/hardware/camera2/CaptureResult;III)Landroid/graphics/Bitmap;

    move-result-object v0

    goto :goto_2

    :cond_e
    move-object v0, v8

    .line 194
    :goto_2
    iget v7, p1, Lcom/oplus/camera/aps/service/ThumbnailProcessor$DataRequest;->mCameraId:I

    invoke-static {v7}, Lcom/oplus/camera/e/a;->a(I)Z

    move-result v7

    if-eqz v7, :cond_16

    .line 195
    iget v7, p1, Lcom/oplus/camera/aps/service/ThumbnailProcessor$DataRequest;->mThumbOrientation:I

    if-eqz v7, :cond_15

    if-eq v7, v6, :cond_13

    if-eq v7, v5, :cond_11

    if-eq v7, v3, :cond_f

    .line 234
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "generateThumbnailAndUri, mOrientation: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v4, p1, Lcom/oplus/camera/aps/service/ThumbnailProcessor$DataRequest;->mThumbOrientation:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, " is wrong!!"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const-string v4, "ThumbnailProcessor"

    invoke-static {v4, v3}, Lcom/oplus/camera/e;->f(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_3

    .line 224
    :cond_f
    iget-object v3, p1, Lcom/oplus/camera/aps/service/ThumbnailProcessor$DataRequest;->mMirrorState:Ljava/lang/String;

    const-string v6, "on"

    invoke-virtual {v6, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_10

    .line 225
    invoke-static {v0, v4}, Lcom/oplus/camera/util/Util;->b(Landroid/graphics/Bitmap;I)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 226
    invoke-static {v0}, Lcom/oplus/camera/util/Util;->c(Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;

    move-result-object v0

    goto :goto_3

    .line 228
    :cond_10
    invoke-static {v0, v4}, Lcom/oplus/camera/util/Util;->b(Landroid/graphics/Bitmap;I)Landroid/graphics/Bitmap;

    move-result-object v0

    goto :goto_3

    .line 214
    :cond_11
    iget-object v3, p1, Lcom/oplus/camera/aps/service/ThumbnailProcessor$DataRequest;->mMirrorState:Ljava/lang/String;

    const-string v4, "on"

    invoke-virtual {v4, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_12

    .line 215
    invoke-static {v0, v5}, Lcom/oplus/camera/util/Util;->b(Landroid/graphics/Bitmap;I)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 216
    invoke-static {v0}, Lcom/oplus/camera/util/Util;->c(Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;

    move-result-object v0

    goto :goto_3

    .line 218
    :cond_12
    invoke-static {v0, v5}, Lcom/oplus/camera/util/Util;->b(Landroid/graphics/Bitmap;I)Landroid/graphics/Bitmap;

    move-result-object v0

    goto :goto_3

    .line 204
    :cond_13
    iget-object v3, p1, Lcom/oplus/camera/aps/service/ThumbnailProcessor$DataRequest;->mMirrorState:Ljava/lang/String;

    const-string v4, "on"

    invoke-virtual {v4, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_14

    .line 205
    invoke-static {v0, v6}, Lcom/oplus/camera/util/Util;->b(Landroid/graphics/Bitmap;I)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 206
    invoke-static {v0}, Lcom/oplus/camera/util/Util;->c(Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;

    move-result-object v0

    goto :goto_3

    .line 208
    :cond_14
    invoke-static {v0, v6}, Lcom/oplus/camera/util/Util;->b(Landroid/graphics/Bitmap;I)Landroid/graphics/Bitmap;

    move-result-object v0

    goto :goto_3

    .line 197
    :cond_15
    iget-object v3, p1, Lcom/oplus/camera/aps/service/ThumbnailProcessor$DataRequest;->mMirrorState:Ljava/lang/String;

    const-string v4, "on"

    invoke-virtual {v4, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_18

    .line 198
    invoke-static {v0}, Lcom/oplus/camera/util/Util;->c(Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;

    move-result-object v0

    goto :goto_3

    .line 239
    :cond_16
    iget v3, p1, Lcom/oplus/camera/aps/service/ThumbnailProcessor$DataRequest;->mThumbOrientation:I

    invoke-static {v0, v3}, Lcom/oplus/camera/util/Util;->b(Landroid/graphics/Bitmap;I)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 241
    iget-object v3, p1, Lcom/oplus/camera/aps/service/ThumbnailProcessor$DataRequest;->mRearMirrorState:Ljava/lang/String;

    const-string v4, "on"

    invoke-virtual {v4, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_18

    .line 242
    invoke-static {v0}, Lcom/oplus/camera/util/Util;->c(Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;

    move-result-object v0

    goto :goto_3

    :cond_17
    move-object v0, v2

    :cond_18
    :goto_3
    const/4 v3, 0x0

    if-eqz v0, :cond_26

    .line 248
    iget-boolean v4, p1, Lcom/oplus/camera/aps/service/ThumbnailProcessor$DataRequest;->mbQuickJpeg:Z

    if-nez v4, :cond_22

    .line 252
    iget-object v4, p1, Lcom/oplus/camera/aps/service/ThumbnailProcessor$DataRequest;->mPictureSize:Landroid/util/Size;

    const/4 v6, -0x1

    if-eqz v4, :cond_1a

    .line 253
    iget v4, p1, Lcom/oplus/camera/aps/service/ThumbnailProcessor$DataRequest;->mJpegOrientation:I

    rem-int/2addr v4, v5

    if-nez v4, :cond_19

    .line 254
    iget-object v4, p1, Lcom/oplus/camera/aps/service/ThumbnailProcessor$DataRequest;->mPictureSize:Landroid/util/Size;

    invoke-virtual {v4}, Landroid/util/Size;->getWidth()I

    move-result v4

    neg-int v6, v4

    .line 255
    iget-object v4, p1, Lcom/oplus/camera/aps/service/ThumbnailProcessor$DataRequest;->mPictureSize:Landroid/util/Size;

    invoke-virtual {v4}, Landroid/util/Size;->getHeight()I

    move-result v4

    goto :goto_4

    .line 257
    :cond_19
    iget-object v4, p1, Lcom/oplus/camera/aps/service/ThumbnailProcessor$DataRequest;->mPictureSize:Landroid/util/Size;

    invoke-virtual {v4}, Landroid/util/Size;->getHeight()I

    move-result v4

    neg-int v6, v4

    .line 258
    iget-object v4, p1, Lcom/oplus/camera/aps/service/ThumbnailProcessor$DataRequest;->mPictureSize:Landroid/util/Size;

    invoke-virtual {v4}, Landroid/util/Size;->getWidth()I

    move-result v4

    :goto_4
    neg-int v4, v4

    goto :goto_5

    :cond_1a
    move v4, v6

    .line 262
    :goto_5
    new-instance v5, Lcom/oplus/camera/Storage$CameraPicture;

    invoke-direct {v5}, Lcom/oplus/camera/Storage$CameraPicture;-><init>()V

    .line 263
    iget-object v7, p1, Lcom/oplus/camera/aps/service/ThumbnailProcessor$DataRequest;->mTitle:Ljava/lang/String;

    iput-object v7, v5, Lcom/oplus/camera/Storage$CameraPicture;->g:Ljava/lang/String;

    .line 264
    iget-wide v7, p1, Lcom/oplus/camera/aps/service/ThumbnailProcessor$DataRequest;->mDate:J

    iput-wide v7, v5, Lcom/oplus/camera/Storage$CameraPicture;->l:J

    .line 265
    iget-object v7, p1, Lcom/oplus/camera/aps/service/ThumbnailProcessor$DataRequest;->mCapMode:Ljava/lang/String;

    iput-object v7, v5, Lcom/oplus/camera/Storage$CameraPicture;->i:Ljava/lang/String;

    .line 266
    iget v7, p1, Lcom/oplus/camera/aps/service/ThumbnailProcessor$DataRequest;->mCameraId:I

    iput v7, v5, Lcom/oplus/camera/Storage$CameraPicture;->s:I

    .line 267
    iget-object v7, p1, Lcom/oplus/camera/aps/service/ThumbnailProcessor$DataRequest;->mHeicCodecFormat:Ljava/lang/String;

    if-eqz v7, :cond_1b

    iget-object v7, p1, Lcom/oplus/camera/aps/service/ThumbnailProcessor$DataRequest;->mHeicCodecFormat:Ljava/lang/String;

    goto :goto_6

    :cond_1b
    const-string v7, "jpeg"

    :goto_6
    iput-object v7, v5, Lcom/oplus/camera/Storage$CameraPicture;->h:Ljava/lang/String;

    .line 269
    sget-object v7, Lcom/oplus/camera/e/c$a;->CAPTURE_RAW:Lcom/oplus/camera/e/c$a;

    iget-object v8, v5, Lcom/oplus/camera/Storage$CameraPicture;->j:Lcom/oplus/camera/e/c$a;

    if-ne v7, v8, :cond_1c

    const-string v7, "raw"

    .line 270
    iput-object v7, v5, Lcom/oplus/camera/Storage$CameraPicture;->h:Ljava/lang/String;

    .line 273
    :cond_1c
    iput v6, v5, Lcom/oplus/camera/Storage$CameraPicture;->o:I

    .line 274
    iput v4, v5, Lcom/oplus/camera/Storage$CameraPicture;->p:I

    .line 275
    iget-object v4, p1, Lcom/oplus/camera/aps/service/ThumbnailProcessor$DataRequest;->mExif:Ljava/lang/String;

    iput-object v4, v5, Lcom/oplus/camera/Storage$CameraPicture;->F:Ljava/lang/String;

    .line 276
    iget-object v4, p1, Lcom/oplus/camera/aps/service/ThumbnailProcessor$DataRequest;->mResolver:Landroid/content/ContentResolver;

    iput-object v4, v5, Lcom/oplus/camera/Storage$CameraPicture;->a:Landroid/content/ContentResolver;

    .line 277
    iget v4, p1, Lcom/oplus/camera/aps/service/ThumbnailProcessor$DataRequest;->mRecBurstNum:I

    iput v4, v5, Lcom/oplus/camera/Storage$CameraPicture;->n:I

    .line 278
    iget-object v4, p1, Lcom/oplus/camera/aps/service/ThumbnailProcessor$DataRequest;->mRequestMode:Lcom/oplus/camera/e/c$a;

    iput-object v4, v5, Lcom/oplus/camera/Storage$CameraPicture;->j:Lcom/oplus/camera/e/c$a;

    .line 280
    iget-wide v6, p1, Lcom/oplus/camera/aps/service/ThumbnailProcessor$DataRequest;->mBurstShotFlagId:J

    iput-wide v6, v5, Lcom/oplus/camera/Storage$CameraPicture;->m:J

    .line 281
    iget-object v4, p1, Lcom/oplus/camera/aps/service/ThumbnailProcessor$DataRequest;->mCshotPath:Ljava/lang/String;

    iput-object v4, v5, Lcom/oplus/camera/Storage$CameraPicture;->k:Ljava/lang/String;

    .line 283
    iget-boolean v4, p1, Lcom/oplus/camera/aps/service/ThumbnailProcessor$DataRequest;->mbLockScreen:Z

    iput-boolean v4, v5, Lcom/oplus/camera/Storage$CameraPicture;->E:Z

    .line 284
    iget-boolean v4, p1, Lcom/oplus/camera/aps/service/ThumbnailProcessor$DataRequest;->mbUltraHighResolution:Z

    iput-boolean v4, v5, Lcom/oplus/camera/Storage$CameraPicture;->R:Z

    .line 285
    iget-boolean v4, p1, Lcom/oplus/camera/aps/service/ThumbnailProcessor$DataRequest;->mbSuperClearPortrait:Z

    iput-boolean v4, v5, Lcom/oplus/camera/Storage$CameraPicture;->S:Z

    .line 286
    iget-object v4, p1, Lcom/oplus/camera/aps/service/ThumbnailProcessor$DataRequest;->mContentOperatedCallback:Lcom/oplus/camera/capmode/f;

    iput-object v4, v5, Lcom/oplus/camera/Storage$CameraPicture;->V:Lcom/oplus/camera/capmode/f;

    .line 289
    invoke-static {v5}, Lcom/oplus/camera/Storage;->b(Lcom/oplus/camera/Storage$CameraPicture;)Landroid/net/Uri;

    move-result-object v4

    iput-object v4, v5, Lcom/oplus/camera/Storage$CameraPicture;->c:Landroid/net/Uri;

    .line 291
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "generateThumbnailAndUri, thumb uri: "

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v6, v5, Lcom/oplus/camera/Storage$CameraPicture;->c:Landroid/net/Uri;

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v6, ", mbBurstShot: "

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v6, p1, Lcom/oplus/camera/aps/service/ThumbnailProcessor$DataRequest;->mbBurstShot:Z

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const-string v6, "ThumbnailProcessor"

    invoke-static {v6, v4}, Lcom/oplus/camera/e;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 293
    new-instance v4, Lcom/oplus/camera/aps/service/ThumbnailItem;

    invoke-direct {v4}, Lcom/oplus/camera/aps/service/ThumbnailItem;-><init>()V

    .line 294
    iget-object v6, v5, Lcom/oplus/camera/Storage$CameraPicture;->c:Landroid/net/Uri;

    iput-object v6, v4, Lcom/oplus/camera/aps/service/ThumbnailItem;->mUri:Landroid/net/Uri;

    .line 295
    iget-object v6, v5, Lcom/oplus/camera/Storage$CameraPicture;->a:Landroid/content/ContentResolver;

    iput-object v6, v4, Lcom/oplus/camera/aps/service/ThumbnailItem;->mResolver:Landroid/content/ContentResolver;

    .line 296
    iget-object v6, p1, Lcom/oplus/camera/aps/service/ThumbnailProcessor$DataRequest;->mHeicCodecFormat:Ljava/lang/String;

    if-eqz v6, :cond_1d

    iget-object v6, p1, Lcom/oplus/camera/aps/service/ThumbnailProcessor$DataRequest;->mHeicCodecFormat:Ljava/lang/String;

    goto :goto_7

    :cond_1d
    const-string v6, "jpeg"

    .line 297
    :goto_7
    iput-object v6, v4, Lcom/oplus/camera/aps/service/ThumbnailItem;->mPictureFormat:Ljava/lang/String;

    .line 298
    iget-object v6, v5, Lcom/oplus/camera/Storage$CameraPicture;->g:Ljava/lang/String;

    iput-object v6, v4, Lcom/oplus/camera/aps/service/ThumbnailItem;->mJpegName:Ljava/lang/String;

    .line 299
    iget-object v6, p1, Lcom/oplus/camera/aps/service/ThumbnailProcessor$DataRequest;->mThumbBitmap:Landroid/graphics/Bitmap;

    iput-object v6, v4, Lcom/oplus/camera/aps/service/ThumbnailItem;->mOriginBitmap:Landroid/graphics/Bitmap;

    .line 300
    iget v6, p1, Lcom/oplus/camera/aps/service/ThumbnailProcessor$DataRequest;->mJpegOrientation:I

    iput v6, v4, Lcom/oplus/camera/aps/service/ThumbnailItem;->mOrientation:I

    .line 301
    iget-wide v6, p1, Lcom/oplus/camera/aps/service/ThumbnailProcessor$DataRequest;->mTimeStamp:J

    iput-wide v6, v4, Lcom/oplus/camera/aps/service/ThumbnailItem;->mTimeStamp:J

    .line 302
    iget-wide v6, p1, Lcom/oplus/camera/aps/service/ThumbnailProcessor$DataRequest;->mIdentity:J

    iput-wide v6, v4, Lcom/oplus/camera/aps/service/ThumbnailItem;->mIdentity:J

    .line 303
    iget-boolean v6, p1, Lcom/oplus/camera/aps/service/ThumbnailProcessor$DataRequest;->mbBurstShot:Z

    iput-boolean v6, v4, Lcom/oplus/camera/aps/service/ThumbnailItem;->mbBurstShot:Z

    .line 304
    iget-wide v6, v5, Lcom/oplus/camera/Storage$CameraPicture;->l:J

    iput-wide v6, v4, Lcom/oplus/camera/aps/service/ThumbnailItem;->mDate:J

    .line 305
    iget-wide v6, p1, Lcom/oplus/camera/aps/service/ThumbnailProcessor$DataRequest;->mRequestHash:J

    iput-wide v6, v4, Lcom/oplus/camera/aps/service/ThumbnailItem;->mRequestHash:J

    .line 306
    iget-wide v6, p1, Lcom/oplus/camera/aps/service/ThumbnailProcessor$DataRequest;->mStickerCaptureTime:J

    iput-wide v6, v4, Lcom/oplus/camera/aps/service/ThumbnailItem;->mStickerCaptureTime:J

    .line 307
    iget-boolean v6, p1, Lcom/oplus/camera/aps/service/ThumbnailProcessor$DataRequest;->mbLockScreen:Z

    iput-boolean v6, v4, Lcom/oplus/camera/aps/service/ThumbnailItem;->mbLockScreen:Z

    .line 308
    iget-object v6, p1, Lcom/oplus/camera/aps/service/ThumbnailProcessor$DataRequest;->mMirrorState:Ljava/lang/String;

    const-string v7, "off"

    invoke-virtual {v7, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    iput-boolean v6, v4, Lcom/oplus/camera/aps/service/ThumbnailItem;->mbMirror:Z

    .line 309
    iget-boolean v6, v5, Lcom/oplus/camera/Storage$CameraPicture;->R:Z

    iput-boolean v6, v4, Lcom/oplus/camera/aps/service/ThumbnailItem;->mbUltraHighResolution:Z

    .line 310
    iget-boolean v6, p1, Lcom/oplus/camera/aps/service/ThumbnailProcessor$DataRequest;->mbWatchRequest:Z

    iput-boolean v6, v4, Lcom/oplus/camera/aps/service/ThumbnailItem;->mbWatchRequest:Z

    const/4 v7, 0x0

    const/4 v8, 0x1

    .line 312
    iget-object v9, v5, Lcom/oplus/camera/Storage$CameraPicture;->c:Landroid/net/Uri;

    iget-wide v10, v5, Lcom/oplus/camera/Storage$CameraPicture;->l:J

    .line 313
    invoke-static {v10, v11}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v6

    iget-object v10, v5, Lcom/oplus/camera/Storage$CameraPicture;->h:Ljava/lang/String;

    invoke-static {v6, v10}, Lcom/oplus/camera/Storage;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    iget-wide v11, v5, Lcom/oplus/camera/Storage$CameraPicture;->l:J

    move-object v6, v0

    .line 312
    invoke-static/range {v6 .. v12}, Lcom/oplus/camera/ui/control/e;->a(Landroid/graphics/Bitmap;IILandroid/net/Uri;Ljava/lang/String;J)Lcom/oplus/camera/ui/control/e;

    move-result-object v6

    .line 315
    iget-boolean v7, p1, Lcom/oplus/camera/aps/service/ThumbnailProcessor$DataRequest;->mbSupportQuickJpeg:Z

    invoke-virtual {v6, v7}, Lcom/oplus/camera/ui/control/e;->a(Z)V

    .line 317
    iget-wide v7, p1, Lcom/oplus/camera/aps/service/ThumbnailProcessor$DataRequest;->mRequestHash:J

    invoke-virtual {v6, v7, v8}, Lcom/oplus/camera/ui/control/e;->a(J)V

    .line 321
    iget-object v7, p0, Lcom/oplus/camera/aps/service/ThumbnailProcessor;->mLock:Ljava/lang/Object;

    monitor-enter v7

    .line 322
    :try_start_0
    iget-object v8, p0, Lcom/oplus/camera/aps/service/ThumbnailProcessor;->mThumbNailProcessListener:Lcom/oplus/camera/aps/service/ThumbnailProcessor$ThumbnailProcessListener;

    if-eqz v8, :cond_1e

    .line 324
    iget-object v8, p0, Lcom/oplus/camera/aps/service/ThumbnailProcessor;->mThumbNailProcessListener:Lcom/oplus/camera/aps/service/ThumbnailProcessor$ThumbnailProcessListener;

    iget-object v9, v5, Lcom/oplus/camera/Storage$CameraPicture;->a:Landroid/content/ContentResolver;

    invoke-interface {v8, v6, v4, v9}, Lcom/oplus/camera/aps/service/ThumbnailProcessor$ThumbnailProcessListener;->updateThumbnail(Lcom/oplus/camera/ui/control/e;Lcom/oplus/camera/aps/service/ThumbnailItem;Landroid/content/ContentResolver;)V

    goto :goto_8

    :cond_1e
    move v1, v3

    .line 329
    :goto_8
    monitor-exit v7
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 331
    iget-object v6, p0, Lcom/oplus/camera/aps/service/ThumbnailProcessor;->mApsService:Lcom/oplus/camera/aps/service/ApsService;

    if-eqz v6, :cond_1f

    if-nez v1, :cond_1f

    .line 332
    invoke-virtual {v6, v4}, Lcom/oplus/camera/aps/service/ApsService;->deleteThumbnailAndCache(Lcom/oplus/camera/aps/service/ThumbnailItem;)V

    .line 335
    :cond_1f
    iget-wide v6, v4, Lcom/oplus/camera/aps/service/ThumbnailItem;->mIdentity:J

    iput-wide v6, p0, Lcom/oplus/camera/aps/service/ThumbnailProcessor;->mLastThumbnailIdentity:J

    .line 337
    iget-boolean v1, p1, Lcom/oplus/camera/aps/service/ThumbnailProcessor$DataRequest;->mbSupportQuickJpeg:Z

    if-eqz v1, :cond_20

    .line 338
    iget-object v1, p0, Lcom/oplus/camera/aps/service/ThumbnailProcessor;->mCameraPictures:Ljava/util/Map;

    iget-wide v6, p1, Lcom/oplus/camera/aps/service/ThumbnailProcessor$DataRequest;->mIdentity:J

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    invoke-interface {v1, p1, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 341
    :cond_20
    invoke-static {}, Lcom/oplus/camera/Storage;->c()Z

    move-result p1

    if-eqz p1, :cond_21

    .line 342
    invoke-static {}, Lcom/oplus/camera/util/n;->a()Lcom/oplus/camera/util/n;

    move-result-object p1

    iget-object v1, v5, Lcom/oplus/camera/Storage$CameraPicture;->g:Ljava/lang/String;

    invoke-virtual {p1, v1, v0, v3}, Lcom/oplus/camera/util/n;->b(Ljava/lang/String;Landroid/graphics/Bitmap;Z)V

    goto :goto_9

    .line 344
    :cond_21
    invoke-static {}, Lcom/oplus/camera/util/n;->a()Lcom/oplus/camera/util/n;

    move-result-object p1

    iget-object v1, v5, Lcom/oplus/camera/Storage$CameraPicture;->g:Ljava/lang/String;

    invoke-virtual {p1, v1, v0, v3}, Lcom/oplus/camera/util/n;->a(Ljava/lang/String;Landroid/graphics/Bitmap;Z)V

    .line 347
    :goto_9
    sget-object p1, Lcom/oplus/camera/aps/service/ThumbnailProcessor;->THUMBNAIL_URI_CREATING_VARIABLE:Landroid/os/ConditionVariable;

    invoke-virtual {p1}, Landroid/os/ConditionVariable;->open()V

    goto/16 :goto_b

    :catchall_0
    move-exception p0

    .line 329
    :try_start_1
    monitor-exit v7
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p0

    .line 348
    :cond_22
    iget-object v4, p0, Lcom/oplus/camera/aps/service/ThumbnailProcessor;->mCameraPictures:Ljava/util/Map;

    iget-wide v5, p1, Lcom/oplus/camera/aps/service/ThumbnailProcessor$DataRequest;->mIdentity:J

    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    invoke-interface {v4, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    if-eqz v4, :cond_26

    .line 349
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "generateThumbnailAndUri, quick uri: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, p0, Lcom/oplus/camera/aps/service/ThumbnailProcessor;->mCameraPictures:Ljava/util/Map;

    iget-wide v6, p1, Lcom/oplus/camera/aps/service/ThumbnailProcessor$DataRequest;->mIdentity:J

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    invoke-interface {v5, v6}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/oplus/camera/Storage$CameraPicture;

    iget-object v5, v5, Lcom/oplus/camera/Storage$CameraPicture;->c:Landroid/net/Uri;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const-string v5, "ThumbnailProcessor"

    invoke-static {v5, v4}, Lcom/oplus/camera/e;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 351
    iget-object v4, p0, Lcom/oplus/camera/aps/service/ThumbnailProcessor;->mLock:Ljava/lang/Object;

    monitor-enter v4

    .line 352
    :try_start_2
    iget-object v5, p0, Lcom/oplus/camera/aps/service/ThumbnailProcessor;->mThumbNailProcessListener:Lcom/oplus/camera/aps/service/ThumbnailProcessor$ThumbnailProcessListener;

    if-eqz v5, :cond_23

    iget-wide v5, p0, Lcom/oplus/camera/aps/service/ThumbnailProcessor;->mLastThumbnailIdentity:J

    iget-wide v7, p1, Lcom/oplus/camera/aps/service/ThumbnailProcessor$DataRequest;->mIdentity:J

    cmp-long v5, v5, v7

    if-nez v5, :cond_23

    .line 353
    iget-object v5, p0, Lcom/oplus/camera/aps/service/ThumbnailProcessor;->mThumbNailProcessListener:Lcom/oplus/camera/aps/service/ThumbnailProcessor$ThumbnailProcessListener;

    invoke-interface {v5, v0}, Lcom/oplus/camera/aps/service/ThumbnailProcessor$ThumbnailProcessListener;->updateQuickBitmap(Landroid/graphics/Bitmap;)V

    .line 355
    :cond_23
    monitor-exit v4
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 357
    iget-object v4, p1, Lcom/oplus/camera/aps/service/ThumbnailProcessor$DataRequest;->mApsService:Lcom/oplus/camera/aps/service/ApsService;

    if-eqz v4, :cond_25

    iget-object v4, p1, Lcom/oplus/camera/aps/service/ThumbnailProcessor$DataRequest;->mApsService:Lcom/oplus/camera/aps/service/ApsService;

    iget-wide v5, p1, Lcom/oplus/camera/aps/service/ThumbnailProcessor$DataRequest;->mIdentity:J

    invoke-virtual {v4, v5, v6}, Lcom/oplus/camera/aps/service/ApsService;->containThumbnailInfo(J)Z

    move-result v4

    if-eqz v4, :cond_25

    .line 358
    iget-object v4, p0, Lcom/oplus/camera/aps/service/ThumbnailProcessor;->mCameraPictures:Ljava/util/Map;

    iget-wide v5, p1, Lcom/oplus/camera/aps/service/ThumbnailProcessor$DataRequest;->mIdentity:J

    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    invoke-interface {v4, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/oplus/camera/Storage$CameraPicture;

    .line 360
    invoke-static {}, Lcom/oplus/camera/Storage;->c()Z

    move-result v5

    if-eqz v5, :cond_24

    .line 361
    invoke-static {}, Lcom/oplus/camera/util/n;->a()Lcom/oplus/camera/util/n;

    move-result-object v5

    iget-object v6, v4, Lcom/oplus/camera/Storage$CameraPicture;->g:Ljava/lang/String;

    invoke-virtual {v5, v6, v0, v1}, Lcom/oplus/camera/util/n;->b(Ljava/lang/String;Landroid/graphics/Bitmap;Z)V

    goto :goto_a

    .line 363
    :cond_24
    invoke-static {}, Lcom/oplus/camera/util/n;->a()Lcom/oplus/camera/util/n;

    move-result-object v5

    iget-object v6, v4, Lcom/oplus/camera/Storage$CameraPicture;->g:Ljava/lang/String;

    invoke-virtual {v5, v6, v0, v1}, Lcom/oplus/camera/util/n;->a(Ljava/lang/String;Landroid/graphics/Bitmap;Z)V

    .line 367
    :goto_a
    invoke-static {v4}, Lcom/oplus/camera/Storage;->c(Lcom/oplus/camera/Storage$CameraPicture;)V

    .line 370
    :cond_25
    iget-object v0, p0, Lcom/oplus/camera/aps/service/ThumbnailProcessor;->mCameraPictures:Ljava/util/Map;

    iget-wide v4, p1, Lcom/oplus/camera/aps/service/ThumbnailProcessor$DataRequest;->mIdentity:J

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    invoke-interface {v0, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_b

    :catchall_1
    move-exception p0

    .line 355
    :try_start_3
    monitor-exit v4
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    throw p0

    .line 374
    :cond_26
    :goto_b
    iput-boolean v3, p0, Lcom/oplus/camera/aps/service/ThumbnailProcessor;->mbProcessingThumbnail:Z

    .line 376
    invoke-virtual {p0}, Lcom/oplus/camera/aps/service/ThumbnailProcessor;->isEmpty()Z

    move-result p1

    if-eqz p1, :cond_27

    iget-boolean p1, p0, Lcom/oplus/camera/aps/service/ThumbnailProcessor;->mbDestroyed:Z

    if-eqz p1, :cond_27

    .line 377
    invoke-virtual {p0, v2}, Lcom/oplus/camera/aps/service/ThumbnailProcessor;->setThumbNailProcessListener(Lcom/oplus/camera/aps/service/ThumbnailProcessor$ThumbnailProcessListener;)V

    :cond_27
    return-void
.end method


# virtual methods
.method public addQueue(Lcom/oplus/camera/aps/service/ThumbnailProcessor$DataRequest;)V
    .locals 1

    .line 67
    monitor-enter p0

    .line 68
    :try_start_0
    iget-object v0, p0, Lcom/oplus/camera/aps/service/ThumbnailProcessor;->mThumbNailQueue:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 69
    invoke-virtual {p0}, Ljava/lang/Object;->notifyAll()V

    .line 70
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public isEmpty()Z
    .locals 3

    .line 382
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "isEmpty, isEmpty:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/oplus/camera/aps/service/ThumbnailProcessor;->mThumbNailQueue:Ljava/util/ArrayList;

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    goto :goto_0

    :cond_0
    const-string v1, "null"

    :goto_0
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", !mbProcessingThumbnail: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/oplus/camera/aps/service/ThumbnailProcessor;->mbProcessingThumbnail:Z

    const/4 v2, 0x1

    xor-int/2addr v1, v2

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "ThumbnailProcessor"

    invoke-static {v1, v0}, Lcom/oplus/camera/e;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 385
    iget-object v0, p0, Lcom/oplus/camera/aps/service/ThumbnailProcessor;->mThumbNailQueue:Ljava/util/ArrayList;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_2

    :cond_1
    iget-boolean p0, p0, Lcom/oplus/camera/aps/service/ThumbnailProcessor;->mbProcessingThumbnail:Z

    if-nez p0, :cond_2

    goto :goto_1

    :cond_2
    const/4 v2, 0x0

    :goto_1
    return v2
.end method

.method public onDestroy()V
    .locals 2

    const-string v0, "ThumbnailProcessor"

    const-string v1, "onDestroy"

    .line 389
    invoke-static {v0, v1}, Lcom/oplus/camera/e;->a(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x1

    .line 391
    iput-boolean v0, p0, Lcom/oplus/camera/aps/service/ThumbnailProcessor;->mbDestroyed:Z

    .line 393
    monitor-enter p0

    .line 394
    :try_start_0
    invoke-virtual {p0}, Ljava/lang/Object;->notifyAll()V

    .line 395
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public run()V
    .locals 2

    .line 78
    :goto_0
    monitor-enter p0

    .line 79
    :try_start_0
    iget-boolean v0, p0, Lcom/oplus/camera/aps/service/ThumbnailProcessor;->mbDestroyed:Z

    if-eqz v0, :cond_0

    .line 80
    monitor-exit p0

    return-void

    .line 83
    :cond_0
    iget-object v0, p0, Lcom/oplus/camera/aps/service/ThumbnailProcessor;->mThumbNailQueue:Ljava/util/ArrayList;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/oplus/camera/aps/service/ThumbnailProcessor;->mThumbNailQueue:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    goto :goto_1

    .line 94
    :cond_1
    iget-object v0, p0, Lcom/oplus/camera/aps/service/ThumbnailProcessor;->mThumbNailQueue:Ljava/util/ArrayList;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/oplus/camera/aps/service/ThumbnailProcessor$DataRequest;

    .line 95
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 97
    invoke-direct {p0, v0}, Lcom/oplus/camera/aps/service/ThumbnailProcessor;->generateThumbnailAndUri(Lcom/oplus/camera/aps/service/ThumbnailProcessor$DataRequest;)V

    goto :goto_0

    .line 86
    :cond_2
    :goto_1
    :try_start_1
    invoke-virtual {p0}, Ljava/lang/Object;->wait()V
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 91
    :catch_0
    :try_start_2
    monitor-exit p0

    goto :goto_0

    :catchall_0
    move-exception v0

    .line 95
    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v0
.end method

.method public setApsService(Lcom/oplus/camera/aps/service/ApsService;)V
    .locals 0

    .line 63
    iput-object p1, p0, Lcom/oplus/camera/aps/service/ThumbnailProcessor;->mApsService:Lcom/oplus/camera/aps/service/ApsService;

    return-void
.end method

.method public setThumbNailProcessListener(Lcom/oplus/camera/aps/service/ThumbnailProcessor$ThumbnailProcessListener;)V
    .locals 1

    .line 57
    iget-object v0, p0, Lcom/oplus/camera/aps/service/ThumbnailProcessor;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 58
    :try_start_0
    iput-object p1, p0, Lcom/oplus/camera/aps/service/ThumbnailProcessor;->mThumbNailProcessListener:Lcom/oplus/camera/aps/service/ThumbnailProcessor$ThumbnailProcessListener;

    .line 59
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method
