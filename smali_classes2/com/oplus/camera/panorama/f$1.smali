.class Lcom/oplus/camera/panorama/f$1;
.super Landroid/os/Handler;
.source "PanoramaCapMode.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/oplus/camera/panorama/f;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/oplus/camera/panorama/f;


# direct methods
.method constructor <init>(Lcom/oplus/camera/panorama/f;Landroid/os/Looper;)V
    .locals 0

    .line 175
    iput-object p1, p0, Lcom/oplus/camera/panorama/f$1;->a:Lcom/oplus/camera/panorama/f;

    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 19

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    .line 178
    iget v2, v1, Landroid/os/Message;->what:I

    const/4 v3, 0x0

    const/4 v4, 0x6

    const/4 v5, 0x0

    packed-switch v2, :pswitch_data_0

    goto/16 :goto_3

    .line 301
    :pswitch_0
    invoke-static {}, Lcom/oplus/camera/panorama/f;->h()Ljava/lang/Object;

    move-result-object v2

    monitor-enter v2

    .line 302
    :try_start_0
    iget-object v3, v0, Lcom/oplus/camera/panorama/f$1;->a:Lcom/oplus/camera/panorama/f;

    invoke-static {v3}, Lcom/oplus/camera/panorama/f;->j(Lcom/oplus/camera/panorama/f;)Z

    move-result v3

    if-nez v3, :cond_0

    iget-object v3, v0, Lcom/oplus/camera/panorama/f$1;->a:Lcom/oplus/camera/panorama/f;

    invoke-static {v3}, Lcom/oplus/camera/panorama/f;->k(Lcom/oplus/camera/panorama/f;)Lcom/oplus/camera/panorama/PanoramaProgressBar;

    move-result-object v3

    if-eqz v3, :cond_0

    iget-object v3, v0, Lcom/oplus/camera/panorama/f$1;->a:Lcom/oplus/camera/panorama/f;

    invoke-static {v3}, Lcom/oplus/camera/panorama/f;->G(Lcom/oplus/camera/panorama/f;)Landroid/util/Size;

    move-result-object v3

    if-eqz v3, :cond_0

    iget-object v3, v0, Lcom/oplus/camera/panorama/f$1;->a:Lcom/oplus/camera/panorama/f;

    invoke-static {v3}, Lcom/oplus/camera/panorama/f;->H(Lcom/oplus/camera/panorama/f;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 303
    iget-object v1, v1, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object v7, v1

    check-cast v7, [B

    .line 304
    iget-object v1, v0, Lcom/oplus/camera/panorama/f$1;->a:Lcom/oplus/camera/panorama/f;

    invoke-static {v1}, Lcom/oplus/camera/panorama/f;->I(Lcom/oplus/camera/panorama/f;)Landroid/app/Activity;

    move-result-object v6

    iget-object v1, v0, Lcom/oplus/camera/panorama/f$1;->a:Lcom/oplus/camera/panorama/f;

    .line 305
    invoke-static {v1}, Lcom/oplus/camera/panorama/f;->G(Lcom/oplus/camera/panorama/f;)Landroid/util/Size;

    move-result-object v1

    invoke-virtual {v1}, Landroid/util/Size;->getWidth()I

    move-result v8

    iget-object v1, v0, Lcom/oplus/camera/panorama/f$1;->a:Lcom/oplus/camera/panorama/f;

    invoke-static {v1}, Lcom/oplus/camera/panorama/f;->G(Lcom/oplus/camera/panorama/f;)Landroid/util/Size;

    move-result-object v1

    invoke-virtual {v1}, Landroid/util/Size;->getHeight()I

    move-result v9

    iget-object v1, v0, Lcom/oplus/camera/panorama/f$1;->a:Lcom/oplus/camera/panorama/f;

    invoke-static {v1}, Lcom/oplus/camera/panorama/f;->J(Lcom/oplus/camera/panorama/f;)I

    move-result v10

    iget-object v1, v0, Lcom/oplus/camera/panorama/f$1;->a:Lcom/oplus/camera/panorama/f;

    .line 306
    invoke-static {v1}, Lcom/oplus/camera/panorama/f;->K(Lcom/oplus/camera/panorama/f;)I

    move-result v11

    .line 304
    invoke-static/range {v6 .. v11}, Lcom/oplus/camera/panorama/e;->a(Landroid/content/Context;[BIIII)Landroid/graphics/Bitmap;

    move-result-object v12

    .line 308
    iget-object v1, v0, Lcom/oplus/camera/panorama/f$1;->a:Lcom/oplus/camera/panorama/f;

    invoke-static {v1}, Lcom/oplus/camera/panorama/f;->L(Lcom/oplus/camera/panorama/f;)Z

    move-result v1

    if-nez v1, :cond_0

    if-eqz v12, :cond_0

    const/4 v13, 0x0

    const/4 v14, 0x0

    .line 310
    invoke-virtual {v12}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v15

    invoke-virtual {v12}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v16

    iget-object v1, v0, Lcom/oplus/camera/panorama/f$1;->a:Lcom/oplus/camera/panorama/f;

    invoke-static {v1}, Lcom/oplus/camera/panorama/f;->M(Lcom/oplus/camera/panorama/f;)Landroid/graphics/Matrix;

    move-result-object v17

    const/16 v18, 0x1

    .line 309
    invoke-static/range {v12 .. v18}, Lcom/oplus/camera/util/Util;->a(Landroid/graphics/Bitmap;IIIILandroid/graphics/Matrix;Z)Landroid/graphics/Bitmap;

    move-result-object v1

    .line 311
    iget-object v3, v0, Lcom/oplus/camera/panorama/f$1;->a:Lcom/oplus/camera/panorama/f;

    invoke-static {v3}, Lcom/oplus/camera/panorama/f;->k(Lcom/oplus/camera/panorama/f;)Lcom/oplus/camera/panorama/PanoramaProgressBar;

    move-result-object v3

    invoke-virtual {v1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v4

    invoke-virtual {v3, v4}, Lcom/oplus/camera/panorama/PanoramaProgressBar;->setFrameSize(I)V

    .line 312
    iget-object v0, v0, Lcom/oplus/camera/panorama/f$1;->a:Lcom/oplus/camera/panorama/f;

    invoke-static {v0}, Lcom/oplus/camera/panorama/f;->k(Lcom/oplus/camera/panorama/f;)Lcom/oplus/camera/panorama/PanoramaProgressBar;

    move-result-object v0

    invoke-virtual {v0, v1, v5, v5}, Lcom/oplus/camera/panorama/PanoramaProgressBar;->a(Landroid/graphics/Bitmap;II)V

    .line 315
    :cond_0
    monitor-exit v2

    goto/16 :goto_3

    :catchall_0
    move-exception v0

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    .line 249
    :pswitch_1
    iget-object v1, v0, Lcom/oplus/camera/panorama/f$1;->a:Lcom/oplus/camera/panorama/f;

    invoke-static {v1}, Lcom/oplus/camera/panorama/f;->o(Lcom/oplus/camera/panorama/f;)I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/oplus/camera/panorama/f;->setOrientation(I)V

    .line 251
    iget-object v1, v0, Lcom/oplus/camera/panorama/f$1;->a:Lcom/oplus/camera/panorama/f;

    invoke-static {v1}, Lcom/oplus/camera/panorama/f;->k(Lcom/oplus/camera/panorama/f;)Lcom/oplus/camera/panorama/PanoramaProgressBar;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 252
    iget-object v1, v0, Lcom/oplus/camera/panorama/f$1;->a:Lcom/oplus/camera/panorama/f;

    invoke-static {v1}, Lcom/oplus/camera/panorama/f;->k(Lcom/oplus/camera/panorama/f;)Lcom/oplus/camera/panorama/PanoramaProgressBar;

    move-result-object v1

    iget-object v2, v0, Lcom/oplus/camera/panorama/f$1;->a:Lcom/oplus/camera/panorama/f;

    invoke-static {v2}, Lcom/oplus/camera/panorama/f;->l(Lcom/oplus/camera/panorama/f;)Landroid/graphics/Bitmap;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/oplus/camera/panorama/PanoramaProgressBar;->a(Landroid/graphics/Bitmap;)V

    .line 255
    :cond_1
    iget-object v1, v0, Lcom/oplus/camera/panorama/f$1;->a:Lcom/oplus/camera/panorama/f;

    invoke-static {v1, v5}, Lcom/oplus/camera/panorama/f;->a(Lcom/oplus/camera/panorama/f;Z)Z

    .line 257
    iget-object v1, v0, Lcom/oplus/camera/panorama/f$1;->a:Lcom/oplus/camera/panorama/f;

    invoke-virtual {v1, v5}, Lcom/oplus/camera/panorama/f;->b(I)V

    const-string v1, "PanoramaCapMode"

    const-string v2, "handleMessage, MSG_REAR_PANORAMA_FINISH"

    .line 259
    invoke-static {v1, v2}, Lcom/oplus/camera/e;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 261
    invoke-static {}, Lcom/oplus/camera/util/Util;->ao()Z

    move-result v1

    if-eqz v1, :cond_2

    new-instance v1, Lcom/oplus/camera/ui/control/b;

    const/4 v2, 0x3

    const-string v6, "button_color_inside_hasselblad"

    const-string v7, "button_shape_ring_none"

    invoke-direct {v1, v4, v6, v7, v2}, Lcom/oplus/camera/ui/control/b;-><init>(ILjava/lang/String;Ljava/lang/String;I)V

    goto :goto_0

    .line 263
    :cond_2
    new-instance v1, Lcom/oplus/camera/ui/control/b;

    const/16 v2, 0xb

    const-string v4, "button_color_inside_none"

    invoke-direct {v1, v2, v4}, Lcom/oplus/camera/ui/control/b;-><init>(ILjava/lang/String;)V

    .line 265
    :goto_0
    iget-object v2, v0, Lcom/oplus/camera/panorama/f$1;->a:Lcom/oplus/camera/panorama/f;

    invoke-static {v2}, Lcom/oplus/camera/panorama/f;->p(Lcom/oplus/camera/panorama/f;)Lcom/oplus/camera/ui/CameraUIInterface;

    move-result-object v2

    invoke-interface {v2, v1}, Lcom/oplus/camera/ui/CameraUIInterface;->a(Lcom/oplus/camera/ui/control/b;)V

    .line 266
    iget-object v1, v0, Lcom/oplus/camera/panorama/f$1;->a:Lcom/oplus/camera/panorama/f;

    invoke-static {v1}, Lcom/oplus/camera/panorama/f;->q(Lcom/oplus/camera/panorama/f;)Lcom/oplus/camera/ui/CameraUIInterface;

    move-result-object v1

    invoke-interface {v1, v5}, Lcom/oplus/camera/ui/CameraUIInterface;->g(I)V

    .line 267
    iget-object v1, v0, Lcom/oplus/camera/panorama/f$1;->a:Lcom/oplus/camera/panorama/f;

    invoke-static {v1}, Lcom/oplus/camera/panorama/f;->r(Lcom/oplus/camera/panorama/f;)Lcom/oplus/camera/ui/CameraUIInterface;

    move-result-object v1

    const/4 v2, 0x1

    invoke-interface {v1, v5, v2}, Lcom/oplus/camera/ui/CameraUIInterface;->b(IZ)V

    .line 268
    iget-object v1, v0, Lcom/oplus/camera/panorama/f$1;->a:Lcom/oplus/camera/panorama/f;

    invoke-static {v1}, Lcom/oplus/camera/panorama/f;->s(Lcom/oplus/camera/panorama/f;)Lcom/oplus/camera/ui/CameraUIInterface;

    move-result-object v1

    invoke-interface {v1, v5}, Lcom/oplus/camera/ui/CameraUIInterface;->c(I)V

    .line 269
    iget-object v1, v0, Lcom/oplus/camera/panorama/f$1;->a:Lcom/oplus/camera/panorama/f;

    invoke-static {v1}, Lcom/oplus/camera/panorama/f;->t(Lcom/oplus/camera/panorama/f;)Lcom/oplus/camera/ui/CameraUIInterface;

    move-result-object v1

    iget-object v4, v0, Lcom/oplus/camera/panorama/f$1;->a:Lcom/oplus/camera/panorama/f;

    invoke-virtual {v4}, Lcom/oplus/camera/panorama/f;->getFrontEnable()Z

    move-result v4

    const/4 v6, 0x4

    if-eqz v4, :cond_3

    move v4, v5

    goto :goto_1

    :cond_3
    move v4, v6

    :goto_1
    invoke-interface {v1, v4}, Lcom/oplus/camera/ui/CameraUIInterface;->d(I)V

    .line 271
    iget-object v1, v0, Lcom/oplus/camera/panorama/f$1;->a:Lcom/oplus/camera/panorama/f;

    invoke-static {v1}, Lcom/oplus/camera/panorama/f;->u(Lcom/oplus/camera/panorama/f;)Lcom/oplus/camera/ui/CameraUIInterface;

    move-result-object v1

    invoke-interface {v1, v5}, Lcom/oplus/camera/ui/CameraUIInterface;->f(I)V

    .line 273
    iget-object v1, v0, Lcom/oplus/camera/panorama/f$1;->a:Lcom/oplus/camera/panorama/f;

    invoke-static {v1}, Lcom/oplus/camera/panorama/f;->d(Lcom/oplus/camera/panorama/f;)Z

    move-result v1

    if-eqz v1, :cond_5

    .line 274
    iget-object v1, v0, Lcom/oplus/camera/panorama/f$1;->a:Lcom/oplus/camera/panorama/f;

    invoke-static {v1}, Lcom/oplus/camera/panorama/f;->v(Lcom/oplus/camera/panorama/f;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 275
    iget-object v1, v0, Lcom/oplus/camera/panorama/f$1;->a:Lcom/oplus/camera/panorama/f;

    invoke-static {v1}, Lcom/oplus/camera/panorama/f;->w(Lcom/oplus/camera/panorama/f;)Lcom/oplus/camera/ui/CameraUIInterface;

    move-result-object v1

    invoke-interface {v1, v5, v5}, Lcom/oplus/camera/ui/CameraUIInterface;->a(IZ)V

    goto :goto_2

    .line 277
    :cond_4
    iget-object v1, v0, Lcom/oplus/camera/panorama/f$1;->a:Lcom/oplus/camera/panorama/f;

    invoke-static {v1}, Lcom/oplus/camera/panorama/f;->x(Lcom/oplus/camera/panorama/f;)Lcom/oplus/camera/ui/CameraUIInterface;

    move-result-object v1

    invoke-interface {v1, v5, v2}, Lcom/oplus/camera/ui/CameraUIInterface;->a(II)V

    .line 281
    :cond_5
    :goto_2
    iget-object v1, v0, Lcom/oplus/camera/panorama/f$1;->a:Lcom/oplus/camera/panorama/f;

    invoke-static {v1}, Lcom/oplus/camera/panorama/f;->y(Lcom/oplus/camera/panorama/f;)Lcom/oplus/camera/ui/CameraUIInterface;

    move-result-object v1

    invoke-interface {v1, v2, v5}, Lcom/oplus/camera/ui/CameraUIInterface;->d(ZZ)V

    .line 283
    iget-object v1, v0, Lcom/oplus/camera/panorama/f$1;->a:Lcom/oplus/camera/panorama/f;

    invoke-static {v1}, Lcom/oplus/camera/panorama/f;->z(Lcom/oplus/camera/panorama/f;)Lcom/oplus/camera/capmode/a;

    move-result-object v1

    invoke-interface {v1}, Lcom/oplus/camera/capmode/a;->z()Z

    move-result v1

    if-nez v1, :cond_6

    .line 284
    iget-object v1, v0, Lcom/oplus/camera/panorama/f$1;->a:Lcom/oplus/camera/panorama/f;

    invoke-static {v1}, Lcom/oplus/camera/panorama/f;->A(Lcom/oplus/camera/panorama/f;)Lcom/oplus/camera/capmode/a;

    move-result-object v1

    invoke-interface {v1}, Lcom/oplus/camera/capmode/a;->ac()V

    .line 285
    iget-object v1, v0, Lcom/oplus/camera/panorama/f$1;->a:Lcom/oplus/camera/panorama/f;

    invoke-static {v1}, Lcom/oplus/camera/panorama/f;->B(Lcom/oplus/camera/panorama/f;)Lcom/oplus/camera/e/d;

    move-result-object v1

    invoke-interface {v1, v5, v5}, Lcom/oplus/camera/e/d;->b(ZZ)V

    .line 286
    iget-object v1, v0, Lcom/oplus/camera/panorama/f$1;->a:Lcom/oplus/camera/panorama/f;

    invoke-static {v1}, Lcom/oplus/camera/panorama/f;->C(Lcom/oplus/camera/panorama/f;)Lcom/oplus/camera/e/d;

    move-result-object v1

    .line 287
    invoke-static {}, Lcom/oplus/camera/a;->b()[Landroid/hardware/camera2/params/MeteringRectangle;

    move-result-object v4

    invoke-static {}, Lcom/oplus/camera/a;->b()[Landroid/hardware/camera2/params/MeteringRectangle;

    move-result-object v7

    .line 286
    invoke-interface {v1, v6, v4, v7, v2}, Lcom/oplus/camera/e/d;->a(I[Landroid/hardware/camera2/params/MeteringRectangle;[Landroid/hardware/camera2/params/MeteringRectangle;Z)V

    .line 288
    iget-object v1, v0, Lcom/oplus/camera/panorama/f$1;->a:Lcom/oplus/camera/panorama/f;

    invoke-static {v1}, Lcom/oplus/camera/panorama/f;->D(Lcom/oplus/camera/panorama/f;)Lcom/oplus/camera/e/d;

    move-result-object v1

    sget-object v2, Landroid/hardware/camera2/CaptureRequest;->CONTROL_AE_EXPOSURE_COMPENSATION:Landroid/hardware/camera2/CaptureRequest$Key;

    invoke-static {}, Lcom/oplus/camera/a;->c()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-interface {v1, v2, v4}, Lcom/oplus/camera/e/d;->a(Landroid/hardware/camera2/CaptureRequest$Key;Ljava/lang/Object;)V

    .line 291
    :cond_6
    iget-object v1, v0, Lcom/oplus/camera/panorama/f$1;->a:Lcom/oplus/camera/panorama/f;

    invoke-static {v1}, Lcom/oplus/camera/panorama/f;->E(Lcom/oplus/camera/panorama/f;)Lcom/oplus/camera/e/d;

    move-result-object v1

    sget-object v2, Landroid/hardware/camera2/CaptureRequest;->CONTROL_AWB_LOCK:Landroid/hardware/camera2/CaptureRequest$Key;

    invoke-static {v5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    invoke-interface {v1, v2, v4}, Lcom/oplus/camera/e/d;->a(Landroid/hardware/camera2/CaptureRequest$Key;Ljava/lang/Object;)V

    .line 292
    iget-object v1, v0, Lcom/oplus/camera/panorama/f$1;->a:Lcom/oplus/camera/panorama/f;

    invoke-static {v1}, Lcom/oplus/camera/panorama/f;->F(Lcom/oplus/camera/panorama/f;)Lcom/oplus/camera/e/d;

    move-result-object v1

    invoke-interface {v1, v3}, Lcom/oplus/camera/e/d;->a(Lcom/oplus/camera/e/d$c;)V

    .line 294
    iget-object v1, v0, Lcom/oplus/camera/panorama/f$1;->a:Lcom/oplus/camera/panorama/f;

    invoke-static {v1, v5}, Lcom/oplus/camera/panorama/f;->b(Lcom/oplus/camera/panorama/f;Z)Z

    .line 295
    iget-object v6, v0, Lcom/oplus/camera/panorama/f$1;->a:Lcom/oplus/camera/panorama/f;

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    invoke-virtual {v6}, Lcom/oplus/camera/panorama/f;->getImageFormat()I

    move-result v0

    invoke-static {v0}, Lcom/oplus/camera/util/Util;->a(I)Ljava/lang/String;

    move-result-object v10

    const/4 v11, 0x0

    const/4 v12, 0x0

    const-wide/16 v13, 0x0

    const/4 v15, 0x0

    invoke-virtual/range {v6 .. v15}, Lcom/oplus/camera/panorama/f;->pictureTakenCallback([BIILjava/lang/String;ZZJI)V

    goto/16 :goto_3

    .line 235
    :pswitch_2
    iget-object v2, v0, Lcom/oplus/camera/panorama/f$1;->a:Lcom/oplus/camera/panorama/f;

    invoke-static {v2}, Lcom/oplus/camera/panorama/f;->j(Lcom/oplus/camera/panorama/f;)Z

    move-result v2

    if-eqz v2, :cond_a

    iget-object v2, v0, Lcom/oplus/camera/panorama/f$1;->a:Lcom/oplus/camera/panorama/f;

    invoke-static {v2}, Lcom/oplus/camera/panorama/f;->l(Lcom/oplus/camera/panorama/f;)Landroid/graphics/Bitmap;

    move-result-object v2

    if-eqz v2, :cond_a

    iget-object v2, v0, Lcom/oplus/camera/panorama/f$1;->a:Lcom/oplus/camera/panorama/f;

    invoke-static {v2}, Lcom/oplus/camera/panorama/f;->k(Lcom/oplus/camera/panorama/f;)Lcom/oplus/camera/panorama/PanoramaProgressBar;

    move-result-object v2

    if-eqz v2, :cond_a

    .line 236
    iget v1, v1, Landroid/os/Message;->arg1:I

    .line 238
    iget-object v2, v0, Lcom/oplus/camera/panorama/f$1;->a:Lcom/oplus/camera/panorama/f;

    invoke-static {v2}, Lcom/oplus/camera/panorama/f;->m(Lcom/oplus/camera/panorama/f;)I

    move-result v2

    if-nez v2, :cond_7

    .line 239
    iget-object v2, v0, Lcom/oplus/camera/panorama/f$1;->a:Lcom/oplus/camera/panorama/f;

    invoke-static {v2, v1}, Lcom/oplus/camera/panorama/f;->a(Lcom/oplus/camera/panorama/f;I)I

    .line 242
    :cond_7
    iget-object v2, v0, Lcom/oplus/camera/panorama/f$1;->a:Lcom/oplus/camera/panorama/f;

    invoke-static {v2}, Lcom/oplus/camera/panorama/f;->k(Lcom/oplus/camera/panorama/f;)Lcom/oplus/camera/panorama/PanoramaProgressBar;

    move-result-object v2

    iget-object v3, v0, Lcom/oplus/camera/panorama/f$1;->a:Lcom/oplus/camera/panorama/f;

    invoke-static {v3}, Lcom/oplus/camera/panorama/f;->l(Lcom/oplus/camera/panorama/f;)Landroid/graphics/Bitmap;

    move-result-object v3

    iget-object v4, v0, Lcom/oplus/camera/panorama/f$1;->a:Lcom/oplus/camera/panorama/f;

    invoke-static {v4}, Lcom/oplus/camera/panorama/f;->l(Lcom/oplus/camera/panorama/f;)Landroid/graphics/Bitmap;

    move-result-object v4

    invoke-virtual {v4}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v4

    iget-object v5, v0, Lcom/oplus/camera/panorama/f$1;->a:Lcom/oplus/camera/panorama/f;

    invoke-static {v5}, Lcom/oplus/camera/panorama/f;->n(Lcom/oplus/camera/panorama/f;)I

    move-result v5

    sub-int/2addr v4, v5

    iget-object v0, v0, Lcom/oplus/camera/panorama/f$1;->a:Lcom/oplus/camera/panorama/f;

    .line 243
    invoke-static {v0}, Lcom/oplus/camera/panorama/f;->m(Lcom/oplus/camera/panorama/f;)I

    move-result v0

    sub-int/2addr v1, v0

    int-to-float v0, v1

    const v1, 0x3dcccccd    # 0.1f

    mul-float/2addr v0, v1

    float-to-int v0, v0

    .line 242
    invoke-virtual {v2, v3, v4, v0}, Lcom/oplus/camera/panorama/PanoramaProgressBar;->a(Landroid/graphics/Bitmap;II)V

    goto/16 :goto_3

    .line 223
    :pswitch_3
    iget-object v1, v0, Lcom/oplus/camera/panorama/f$1;->a:Lcom/oplus/camera/panorama/f;

    invoke-static {v1}, Lcom/oplus/camera/panorama/f;->j(Lcom/oplus/camera/panorama/f;)Z

    move-result v1

    if-nez v1, :cond_a

    iget-object v1, v0, Lcom/oplus/camera/panorama/f$1;->a:Lcom/oplus/camera/panorama/f;

    .line 224
    invoke-static {v1}, Lcom/oplus/camera/panorama/f;->k(Lcom/oplus/camera/panorama/f;)Lcom/oplus/camera/panorama/PanoramaProgressBar;

    move-result-object v1

    if-eqz v1, :cond_a

    iget-object v1, v0, Lcom/oplus/camera/panorama/f$1;->a:Lcom/oplus/camera/panorama/f;

    .line 225
    invoke-static {v1}, Lcom/oplus/camera/panorama/f;->k(Lcom/oplus/camera/panorama/f;)Lcom/oplus/camera/panorama/PanoramaProgressBar;

    move-result-object v1

    invoke-virtual {v1}, Lcom/oplus/camera/panorama/PanoramaProgressBar;->e()Z

    move-result v1

    if-nez v1, :cond_a

    const/4 v1, -0x1

    iget-object v2, v0, Lcom/oplus/camera/panorama/f$1;->a:Lcom/oplus/camera/panorama/f;

    .line 226
    invoke-static {v2}, Lcom/oplus/camera/panorama/f;->k(Lcom/oplus/camera/panorama/f;)Lcom/oplus/camera/panorama/PanoramaProgressBar;

    move-result-object v2

    invoke-virtual {v2}, Lcom/oplus/camera/panorama/PanoramaProgressBar;->getDirection()I

    move-result v2

    if-eq v1, v2, :cond_a

    .line 227
    iget-object v1, v0, Lcom/oplus/camera/panorama/f$1;->a:Lcom/oplus/camera/panorama/f;

    invoke-static {v1}, Lcom/oplus/camera/panorama/f;->k(Lcom/oplus/camera/panorama/f;)Lcom/oplus/camera/panorama/PanoramaProgressBar;

    move-result-object v1

    invoke-virtual {v1}, Lcom/oplus/camera/panorama/PanoramaProgressBar;->f()V

    .line 228
    iget-object v1, v0, Lcom/oplus/camera/panorama/f$1;->a:Lcom/oplus/camera/panorama/f;

    invoke-static {v1}, Lcom/oplus/camera/panorama/f;->k(Lcom/oplus/camera/panorama/f;)Lcom/oplus/camera/panorama/PanoramaProgressBar;

    move-result-object v1

    invoke-virtual {v1}, Lcom/oplus/camera/panorama/PanoramaProgressBar;->a()V

    .line 229
    iget-object v0, v0, Lcom/oplus/camera/panorama/f$1;->a:Lcom/oplus/camera/panorama/f;

    invoke-static {v0}, Lcom/oplus/camera/panorama/f;->k(Lcom/oplus/camera/panorama/f;)Lcom/oplus/camera/panorama/PanoramaProgressBar;

    move-result-object v0

    invoke-virtual {v0, v4}, Lcom/oplus/camera/panorama/PanoramaProgressBar;->setAnimationState(I)V

    goto/16 :goto_3

    .line 216
    :pswitch_4
    iget-object v2, v0, Lcom/oplus/camera/panorama/f$1;->a:Lcom/oplus/camera/panorama/f;

    invoke-static {v2}, Lcom/oplus/camera/panorama/f;->d(Lcom/oplus/camera/panorama/f;)Z

    move-result v2

    if-eqz v2, :cond_a

    iget-object v2, v0, Lcom/oplus/camera/panorama/f$1;->a:Lcom/oplus/camera/panorama/f;

    invoke-static {v2}, Lcom/oplus/camera/panorama/f;->i(Lcom/oplus/camera/panorama/f;)Lcom/oplus/camera/ui/CameraUIInterface;

    move-result-object v2

    invoke-interface {v2}, Lcom/oplus/camera/ui/CameraUIInterface;->R()Z

    move-result v2

    if-nez v2, :cond_a

    .line 217
    iget-object v0, v0, Lcom/oplus/camera/panorama/f$1;->a:Lcom/oplus/camera/panorama/f;

    iget-object v1, v1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/oplus/camera/panorama/f;->b(I)V

    goto/16 :goto_3

    .line 195
    :pswitch_5
    iget-object v1, v1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Landroid/graphics/Bitmap;

    .line 197
    iget-object v2, v0, Lcom/oplus/camera/panorama/f$1;->a:Lcom/oplus/camera/panorama/f;

    invoke-static {v2}, Lcom/oplus/camera/panorama/f;->d(Lcom/oplus/camera/panorama/f;)Z

    move-result v2

    if-eqz v2, :cond_a

    iget-object v2, v0, Lcom/oplus/camera/panorama/f$1;->a:Lcom/oplus/camera/panorama/f;

    .line 198
    invoke-static {v2}, Lcom/oplus/camera/panorama/f;->e(Lcom/oplus/camera/panorama/f;)Z

    move-result v2

    if-nez v2, :cond_a

    iget-object v2, v0, Lcom/oplus/camera/panorama/f$1;->a:Lcom/oplus/camera/panorama/f;

    .line 199
    invoke-static {v2}, Lcom/oplus/camera/panorama/f;->f(Lcom/oplus/camera/panorama/f;)Landroid/widget/ImageView;

    move-result-object v2

    if-eqz v2, :cond_a

    if-eqz v1, :cond_a

    .line 201
    invoke-virtual {v1}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v2

    if-nez v2, :cond_a

    iget-object v2, v0, Lcom/oplus/camera/panorama/f$1;->a:Lcom/oplus/camera/panorama/f;

    .line 202
    invoke-static {v2}, Lcom/oplus/camera/panorama/f;->g(Lcom/oplus/camera/panorama/f;)Landroid/app/Activity;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Lcom/oplus/camera/g;->a(Landroid/content/Context;)Lcom/oplus/camera/g;

    move-result-object v2

    invoke-virtual {v2}, Lcom/oplus/camera/g;->d()Z

    move-result v2

    if-eqz v2, :cond_a

    .line 203
    iget-object v2, v0, Lcom/oplus/camera/panorama/f$1;->a:Lcom/oplus/camera/panorama/f;

    invoke-static {v2}, Lcom/oplus/camera/panorama/f;->f(Lcom/oplus/camera/panorama/f;)Landroid/widget/ImageView;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 205
    iget-object v2, v0, Lcom/oplus/camera/panorama/f$1;->a:Lcom/oplus/camera/panorama/f;

    invoke-static {v2}, Lcom/oplus/camera/panorama/f;->h(Lcom/oplus/camera/panorama/f;)Landroid/graphics/Bitmap;

    move-result-object v2

    if-eqz v2, :cond_8

    .line 206
    iget-object v2, v0, Lcom/oplus/camera/panorama/f$1;->a:Lcom/oplus/camera/panorama/f;

    invoke-static {v2}, Lcom/oplus/camera/panorama/f;->h(Lcom/oplus/camera/panorama/f;)Landroid/graphics/Bitmap;

    move-result-object v2

    invoke-virtual {v2}, Landroid/graphics/Bitmap;->recycle()V

    .line 207
    iget-object v2, v0, Lcom/oplus/camera/panorama/f$1;->a:Lcom/oplus/camera/panorama/f;

    invoke-static {v2, v3}, Lcom/oplus/camera/panorama/f;->a(Lcom/oplus/camera/panorama/f;Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;

    .line 210
    :cond_8
    iget-object v0, v0, Lcom/oplus/camera/panorama/f$1;->a:Lcom/oplus/camera/panorama/f;

    invoke-static {v0, v1}, Lcom/oplus/camera/panorama/f;->a(Lcom/oplus/camera/panorama/f;Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;

    goto :goto_3

    .line 180
    :pswitch_6
    iget-object v2, v0, Lcom/oplus/camera/panorama/f$1;->a:Lcom/oplus/camera/panorama/f;

    invoke-static {v2}, Lcom/oplus/camera/panorama/f;->a(Lcom/oplus/camera/panorama/f;)Lcom/oplus/camera/panorama/d;

    move-result-object v2

    if-eqz v2, :cond_9

    .line 181
    iget-object v2, v0, Lcom/oplus/camera/panorama/f$1;->a:Lcom/oplus/camera/panorama/f;

    invoke-static {v2}, Lcom/oplus/camera/panorama/f;->a(Lcom/oplus/camera/panorama/f;)Lcom/oplus/camera/panorama/d;

    move-result-object v2

    invoke-virtual {v2}, Lcom/oplus/camera/panorama/d;->a()V

    .line 184
    :cond_9
    iget-object v2, v0, Lcom/oplus/camera/panorama/f$1;->a:Lcom/oplus/camera/panorama/f;

    invoke-static {v2}, Lcom/oplus/camera/panorama/f;->b(Lcom/oplus/camera/panorama/f;)V

    .line 185
    iget-object v1, v1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    .line 186
    iget-object v2, v0, Lcom/oplus/camera/panorama/f$1;->a:Lcom/oplus/camera/panorama/f;

    invoke-virtual {v2, v1}, Lcom/oplus/camera/panorama/f;->a(Z)V

    if-nez v1, :cond_a

    .line 189
    iget-object v0, v0, Lcom/oplus/camera/panorama/f$1;->a:Lcom/oplus/camera/panorama/f;

    invoke-static {v0}, Lcom/oplus/camera/panorama/f;->c(Lcom/oplus/camera/panorama/f;)Lcom/oplus/camera/ui/CameraUIInterface;

    move-result-object v0

    invoke-interface {v0}, Lcom/oplus/camera/ui/CameraUIInterface;->as()V

    :cond_a
    :goto_3
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
