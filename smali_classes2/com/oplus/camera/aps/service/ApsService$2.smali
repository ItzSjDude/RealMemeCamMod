.class Lcom/oplus/camera/aps/service/ApsService$2;
.super Ljava/lang/Object;
.source "ApsService.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/oplus/camera/aps/service/ApsService;->savePicture(Lcom/oplus/camera/aps/service/ThumbnailCategory;Lcom/oplus/ocs/camera/CameraPictureCallback$CameraPictureImage;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/oplus/camera/aps/service/ApsService;

.field final synthetic val$picture:Lcom/oplus/camera/Storage$CameraPicture;

.field final synthetic val$stHeight:I

.field final synthetic val$stWidth:I


# direct methods
.method constructor <init>(Lcom/oplus/camera/aps/service/ApsService;IILcom/oplus/camera/Storage$CameraPicture;)V
    .locals 0

    .line 468
    iput-object p1, p0, Lcom/oplus/camera/aps/service/ApsService$2;->this$0:Lcom/oplus/camera/aps/service/ApsService;

    iput p2, p0, Lcom/oplus/camera/aps/service/ApsService$2;->val$stHeight:I

    iput p3, p0, Lcom/oplus/camera/aps/service/ApsService$2;->val$stWidth:I

    iput-object p4, p0, Lcom/oplus/camera/aps/service/ApsService$2;->val$picture:Lcom/oplus/camera/Storage$CameraPicture;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 11

    .line 471
    iget v0, p0, Lcom/oplus/camera/aps/service/ApsService$2;->val$stHeight:I

    iget v1, p0, Lcom/oplus/camera/aps/service/ApsService$2;->val$stWidth:I

    if-ge v0, v1, :cond_0

    int-to-float v0, v0

    goto :goto_0

    :cond_0
    int-to-float v0, v1

    .line 474
    :goto_0
    invoke-static {}, Lcom/oplus/camera/util/Util;->u()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 476
    invoke-static {}, Lcom/oplus/camera/util/Util;->V()I

    move-result v1

    goto :goto_1

    .line 478
    :cond_1
    invoke-static {}, Lcom/oplus/camera/util/Util;->getScreenWidth()I

    move-result v1

    :goto_1
    int-to-float v1, v1

    div-float/2addr v1, v0

    .line 481
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "savePicture, scale: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v2, "ApsService"

    invoke-static {v2, v0}, Lcom/oplus/camera/e;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 483
    iget-object v0, p0, Lcom/oplus/camera/aps/service/ApsService$2;->this$0:Lcom/oplus/camera/aps/service/ApsService;

    invoke-static {v0}, Lcom/oplus/camera/aps/service/ApsService;->access$300(Lcom/oplus/camera/aps/service/ApsService;)Lcom/oplus/camera/aps/service/CaptureRequestParam;

    move-result-object v0

    iget v0, v0, Lcom/oplus/camera/aps/service/CaptureRequestParam;->mCaptureOrientation:I

    .line 484
    iget-object v2, p0, Lcom/oplus/camera/aps/service/ApsService$2;->val$picture:Lcom/oplus/camera/Storage$CameraPicture;

    iget-object v2, v2, Lcom/oplus/camera/Storage$CameraPicture;->e:[B

    const/4 v3, 0x0

    iget-object v4, p0, Lcom/oplus/camera/aps/service/ApsService$2;->val$picture:Lcom/oplus/camera/Storage$CameraPicture;

    iget-object v4, v4, Lcom/oplus/camera/Storage$CameraPicture;->e:[B

    array-length v4, v4

    .line 485
    invoke-static {v2, v3, v4}, Landroid/graphics/BitmapFactory;->decodeByteArray([BII)Landroid/graphics/Bitmap;

    move-result-object v2

    .line 484
    invoke-static {v2, v1}, Lcom/oplus/camera/util/Util;->b(Landroid/graphics/Bitmap;F)Landroid/graphics/Bitmap;

    move-result-object v1

    .line 487
    invoke-static {}, Lcom/oplus/camera/util/Util;->u()Z

    move-result v2

    if-nez v2, :cond_2

    rsub-int v0, v0, 0x168

    .line 488
    rem-int/lit16 v0, v0, 0x168

    invoke-static {v1, v0}, Lcom/oplus/camera/util/Util;->b(Landroid/graphics/Bitmap;I)Landroid/graphics/Bitmap;

    move-result-object v1

    :cond_2
    move-object v3, v1

    .line 492
    iget-object v0, p0, Lcom/oplus/camera/aps/service/ApsService$2;->val$picture:Lcom/oplus/camera/Storage$CameraPicture;

    iget-object v0, v0, Lcom/oplus/camera/Storage$CameraPicture;->K:Lcom/oplus/camera/a/e;

    if-eqz v0, :cond_4

    .line 493
    iget-object v0, p0, Lcom/oplus/camera/aps/service/ApsService$2;->val$picture:Lcom/oplus/camera/Storage$CameraPicture;

    iget-object v0, v0, Lcom/oplus/camera/Storage$CameraPicture;->K:Lcom/oplus/camera/a/e;

    monitor-enter v0

    .line 494
    :try_start_0
    iget-object v1, p0, Lcom/oplus/camera/aps/service/ApsService$2;->val$picture:Lcom/oplus/camera/Storage$CameraPicture;

    iget-object v1, v1, Lcom/oplus/camera/Storage$CameraPicture;->A:Lcom/oplus/camera/ui/control/e;

    if-eqz v1, :cond_3

    .line 495
    iget-object v1, p0, Lcom/oplus/camera/aps/service/ApsService$2;->val$picture:Lcom/oplus/camera/Storage$CameraPicture;

    iget-object v2, v1, Lcom/oplus/camera/Storage$CameraPicture;->K:Lcom/oplus/camera/a/e;

    iget-object v1, p0, Lcom/oplus/camera/aps/service/ApsService$2;->val$picture:Lcom/oplus/camera/Storage$CameraPicture;

    iget-object v4, v1, Lcom/oplus/camera/Storage$CameraPicture;->A:Lcom/oplus/camera/ui/control/e;

    iget-object v1, p0, Lcom/oplus/camera/aps/service/ApsService$2;->val$picture:Lcom/oplus/camera/Storage$CameraPicture;

    iget-boolean v5, v1, Lcom/oplus/camera/Storage$CameraPicture;->P:Z

    iget-object v1, p0, Lcom/oplus/camera/aps/service/ApsService$2;->val$picture:Lcom/oplus/camera/Storage$CameraPicture;

    iget v6, v1, Lcom/oplus/camera/Storage$CameraPicture;->Q:I

    iget-object v1, p0, Lcom/oplus/camera/aps/service/ApsService$2;->val$picture:Lcom/oplus/camera/Storage$CameraPicture;

    iget-boolean v7, v1, Lcom/oplus/camera/Storage$CameraPicture;->T:Z

    iget-object v1, p0, Lcom/oplus/camera/aps/service/ApsService$2;->val$picture:Lcom/oplus/camera/Storage$CameraPicture;

    iget-boolean v8, v1, Lcom/oplus/camera/Storage$CameraPicture;->Y:Z

    iget-object p0, p0, Lcom/oplus/camera/aps/service/ApsService$2;->val$picture:Lcom/oplus/camera/Storage$CameraPicture;

    iget-wide v9, p0, Lcom/oplus/camera/Storage$CameraPicture;->l:J

    invoke-interface/range {v2 .. v10}, Lcom/oplus/camera/a/e;->a(Landroid/graphics/Bitmap;Lcom/oplus/camera/ui/control/e;ZIZZJ)V

    goto :goto_2

    .line 499
    :cond_3
    iget-object p0, p0, Lcom/oplus/camera/aps/service/ApsService$2;->val$picture:Lcom/oplus/camera/Storage$CameraPicture;

    iput-object v3, p0, Lcom/oplus/camera/Storage$CameraPicture;->L:Landroid/graphics/Bitmap;

    .line 501
    :goto_2
    monitor-exit v0

    goto :goto_3

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0

    :cond_4
    :goto_3
    return-void
.end method
