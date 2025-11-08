.class Lcom/oplus/camera/ui/preview/g$11;
.super Lcom/oplus/camera/gl/GLView;
.source "CameraPreviewUI.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/oplus/camera/ui/preview/g;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic j:Lcom/oplus/camera/ui/preview/g;


# direct methods
.method constructor <init>(Lcom/oplus/camera/ui/preview/g;)V
    .locals 0

    .line 296
    iput-object p1, p0, Lcom/oplus/camera/ui/preview/g$11;->j:Lcom/oplus/camera/ui/preview/g;

    invoke-direct {p0}, Lcom/oplus/camera/gl/GLView;-><init>()V

    return-void
.end method


# virtual methods
.method protected a(II)V
    .locals 0

    .line 314
    iget-object p0, p0, Lcom/oplus/camera/ui/preview/g$11;->j:Lcom/oplus/camera/ui/preview/g;

    invoke-static {p0}, Lcom/oplus/camera/ui/preview/g;->d(Lcom/oplus/camera/ui/preview/g;)Lcom/oplus/camera/ui/preview/h;

    move-result-object p0

    invoke-virtual {p0, p1, p2}, Lcom/oplus/camera/ui/preview/h;->b(II)V

    return-void
.end method

.method public a(IIII)V
    .locals 0

    .line 304
    invoke-super {p0, p1, p2, p3, p4}, Lcom/oplus/camera/gl/GLView;->a(IIII)V

    return-void
.end method

.method protected a(Lcom/oplus/camera/gl/h;)V
    .locals 11

    .line 319
    iget-object v0, p0, Lcom/oplus/camera/ui/preview/g$11;->j:Lcom/oplus/camera/ui/preview/g;

    invoke-static {v0}, Lcom/oplus/camera/ui/preview/g;->d(Lcom/oplus/camera/ui/preview/g;)Lcom/oplus/camera/ui/preview/h;

    move-result-object v0

    invoke-virtual {v0}, Lcom/oplus/camera/ui/preview/h;->h()Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_1

    const-string p1, "CameraPreviewUI"

    const-string v0, "render, last wanted frame already drawn, prevent from drawing more frames"

    .line 320
    invoke-static {p1, v0}, Lcom/oplus/camera/e;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 322
    iget-object p1, p0, Lcom/oplus/camera/ui/preview/g$11;->j:Lcom/oplus/camera/ui/preview/g;

    invoke-static {p1}, Lcom/oplus/camera/ui/preview/g;->e(Lcom/oplus/camera/ui/preview/g;)Lcom/oplus/camera/gl/GLRootView;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 323
    iget-object p0, p0, Lcom/oplus/camera/ui/preview/g$11;->j:Lcom/oplus/camera/ui/preview/g;

    invoke-static {p0}, Lcom/oplus/camera/ui/preview/g;->e(Lcom/oplus/camera/ui/preview/g;)Lcom/oplus/camera/gl/GLRootView;

    move-result-object p0

    invoke-virtual {p0, v1}, Lcom/oplus/camera/gl/GLRootView;->setPreventRenderByPause(Z)V

    :cond_0
    return-void

    .line 329
    :cond_1
    iget-object v2, p0, Lcom/oplus/camera/ui/preview/g$11;->j:Lcom/oplus/camera/ui/preview/g;

    invoke-static {v2}, Lcom/oplus/camera/ui/preview/g;->f(Lcom/oplus/camera/ui/preview/g;)Lcom/oplus/camera/ui/preview/PreviewFrameLayout;

    move-result-object v0

    invoke-virtual {v0}, Lcom/oplus/camera/ui/preview/PreviewFrameLayout;->getRight()I

    move-result v0

    iget-object v3, p0, Lcom/oplus/camera/ui/preview/g$11;->j:Lcom/oplus/camera/ui/preview/g;

    invoke-static {v3}, Lcom/oplus/camera/ui/preview/g;->f(Lcom/oplus/camera/ui/preview/g;)Lcom/oplus/camera/ui/preview/PreviewFrameLayout;

    move-result-object v3

    invoke-virtual {v3}, Lcom/oplus/camera/ui/preview/PreviewFrameLayout;->getLeft()I

    move-result v3

    sub-int/2addr v0, v3

    const/4 v8, 0x2

    div-int/lit8 v3, v0, 0x2

    iget-object v0, p0, Lcom/oplus/camera/ui/preview/g$11;->j:Lcom/oplus/camera/ui/preview/g;

    .line 330
    invoke-static {v0}, Lcom/oplus/camera/ui/preview/g;->f(Lcom/oplus/camera/ui/preview/g;)Lcom/oplus/camera/ui/preview/PreviewFrameLayout;

    move-result-object v0

    invoke-virtual {v0}, Lcom/oplus/camera/ui/preview/PreviewFrameLayout;->getBottom()I

    move-result v0

    iget-object v4, p0, Lcom/oplus/camera/ui/preview/g$11;->j:Lcom/oplus/camera/ui/preview/g;

    invoke-static {v4}, Lcom/oplus/camera/ui/preview/g;->f(Lcom/oplus/camera/ui/preview/g;)Lcom/oplus/camera/ui/preview/PreviewFrameLayout;

    move-result-object v4

    invoke-virtual {v4}, Lcom/oplus/camera/ui/preview/PreviewFrameLayout;->getTop()I

    move-result v4

    sub-int/2addr v0, v4

    div-int/lit8 v4, v0, 0x2

    const/4 v5, 0x0

    iget-object v0, p0, Lcom/oplus/camera/ui/preview/g$11;->j:Lcom/oplus/camera/ui/preview/g;

    invoke-static {v0}, Lcom/oplus/camera/ui/preview/g;->g(Lcom/oplus/camera/ui/preview/g;)Z

    move-result v6

    const/4 v7, 0x0

    .line 329
    invoke-static/range {v2 .. v7}, Lcom/oplus/camera/ui/preview/g;->a(Lcom/oplus/camera/ui/preview/g;IIZZZ)V

    const/4 v0, 0x4

    .line 331
    new-array v2, v0, [F

    const/high16 v3, 0x3f800000    # 1.0f

    const/4 v4, 0x0

    aput v3, v2, v4

    const/4 v5, 0x0

    .line 333
    invoke-static {v5}, Lcom/oplus/camera/util/c;->a(F)F

    move-result v6

    aput v6, v2, v1

    .line 334
    invoke-static {v5}, Lcom/oplus/camera/util/c;->b(F)F

    move-result v6

    aput v6, v2, v8

    .line 335
    invoke-static {v5}, Lcom/oplus/camera/util/c;->c(F)F

    move-result v5

    const/4 v6, 0x3

    aput v5, v2, v6

    .line 337
    invoke-interface {p1, v2}, Lcom/oplus/camera/gl/h;->a([F)V

    .line 339
    iget-object v2, p0, Lcom/oplus/camera/ui/preview/g$11;->j:Lcom/oplus/camera/ui/preview/g;

    invoke-static {v2}, Lcom/oplus/camera/ui/preview/g;->h(Lcom/oplus/camera/ui/preview/g;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 340
    new-array v0, v0, [F

    aput v3, v0, v4

    iget-object v2, p0, Lcom/oplus/camera/ui/preview/g$11;->j:Lcom/oplus/camera/ui/preview/g;

    .line 342
    invoke-static {v2}, Lcom/oplus/camera/ui/preview/g;->i(Lcom/oplus/camera/ui/preview/g;)I

    move-result v2

    invoke-static {v2}, Landroid/graphics/Color;->red(I)I

    move-result v2

    int-to-float v2, v2

    const/high16 v3, 0x437f0000    # 255.0f

    div-float/2addr v2, v3

    iget-object v5, p0, Lcom/oplus/camera/ui/preview/g$11;->j:Lcom/oplus/camera/ui/preview/g;

    invoke-static {v5}, Lcom/oplus/camera/ui/preview/g;->i(Lcom/oplus/camera/ui/preview/g;)I

    move-result v5

    invoke-static {v5}, Landroid/graphics/Color;->alpha(I)I

    move-result v5

    int-to-float v5, v5

    mul-float/2addr v2, v5

    div-float/2addr v2, v3

    aput v2, v0, v1

    iget-object v2, p0, Lcom/oplus/camera/ui/preview/g$11;->j:Lcom/oplus/camera/ui/preview/g;

    .line 343
    invoke-static {v2}, Lcom/oplus/camera/ui/preview/g;->i(Lcom/oplus/camera/ui/preview/g;)I

    move-result v2

    invoke-static {v2}, Landroid/graphics/Color;->green(I)I

    move-result v2

    int-to-float v2, v2

    div-float/2addr v2, v3

    iget-object v5, p0, Lcom/oplus/camera/ui/preview/g$11;->j:Lcom/oplus/camera/ui/preview/g;

    invoke-static {v5}, Lcom/oplus/camera/ui/preview/g;->i(Lcom/oplus/camera/ui/preview/g;)I

    move-result v5

    invoke-static {v5}, Landroid/graphics/Color;->alpha(I)I

    move-result v5

    int-to-float v5, v5

    mul-float/2addr v2, v5

    div-float/2addr v2, v3

    aput v2, v0, v8

    iget-object v2, p0, Lcom/oplus/camera/ui/preview/g$11;->j:Lcom/oplus/camera/ui/preview/g;

    .line 344
    invoke-static {v2}, Lcom/oplus/camera/ui/preview/g;->i(Lcom/oplus/camera/ui/preview/g;)I

    move-result v2

    invoke-static {v2}, Landroid/graphics/Color;->blue(I)I

    move-result v2

    int-to-float v2, v2

    div-float/2addr v2, v3

    iget-object v5, p0, Lcom/oplus/camera/ui/preview/g$11;->j:Lcom/oplus/camera/ui/preview/g;

    invoke-static {v5}, Lcom/oplus/camera/ui/preview/g;->i(Lcom/oplus/camera/ui/preview/g;)I

    move-result v5

    invoke-static {v5}, Landroid/graphics/Color;->alpha(I)I

    move-result v5

    int-to-float v5, v5

    mul-float/2addr v2, v5

    div-float/2addr v2, v3

    aput v2, v0, v6

    .line 346
    invoke-interface {p1, v0}, Lcom/oplus/camera/gl/h;->a([F)V

    .line 349
    :cond_2
    iget-object v0, p0, Lcom/oplus/camera/ui/preview/g$11;->j:Lcom/oplus/camera/ui/preview/g;

    invoke-static {v0}, Lcom/oplus/camera/ui/preview/g;->j(Lcom/oplus/camera/ui/preview/g;)Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    .line 350
    :try_start_0
    iget-object v2, p0, Lcom/oplus/camera/ui/preview/g$11;->j:Lcom/oplus/camera/ui/preview/g;

    invoke-static {v2}, Lcom/oplus/camera/ui/preview/g;->k(Lcom/oplus/camera/ui/preview/g;)I

    move-result v2

    if-eqz v2, :cond_5

    iget-object v2, p0, Lcom/oplus/camera/ui/preview/g$11;->j:Lcom/oplus/camera/ui/preview/g;

    invoke-static {v2}, Lcom/oplus/camera/ui/preview/g;->l(Lcom/oplus/camera/ui/preview/g;)Z

    move-result v2

    if-nez v2, :cond_5

    .line 351
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v2

    iget-object v5, p0, Lcom/oplus/camera/ui/preview/g$11;->j:Lcom/oplus/camera/ui/preview/g;

    invoke-static {v5}, Lcom/oplus/camera/ui/preview/g;->m(Lcom/oplus/camera/ui/preview/g;)J

    move-result-wide v5

    sub-long/2addr v2, v5

    long-to-float v2, v2

    .line 353
    iget-object v3, p0, Lcom/oplus/camera/ui/preview/g$11;->j:Lcom/oplus/camera/ui/preview/g;

    invoke-static {v3}, Lcom/oplus/camera/ui/preview/g;->n(Lcom/oplus/camera/ui/preview/g;)F

    move-result v3

    cmpg-float v3, v2, v3

    if-gez v3, :cond_3

    .line 354
    iget-object v3, p0, Lcom/oplus/camera/ui/preview/g$11;->j:Lcom/oplus/camera/ui/preview/g;

    invoke-static {v3}, Lcom/oplus/camera/ui/preview/g;->n(Lcom/oplus/camera/ui/preview/g;)F

    move-result v3

    div-float/2addr v2, v3

    .line 355
    iget-object v3, p0, Lcom/oplus/camera/ui/preview/g$11;->j:Lcom/oplus/camera/ui/preview/g;

    invoke-static {v3}, Lcom/oplus/camera/ui/preview/g;->o(Lcom/oplus/camera/ui/preview/g;)Landroid/view/animation/PathInterpolator;

    move-result-object v3

    invoke-virtual {v3, v2}, Landroid/view/animation/PathInterpolator;->getInterpolation(F)F

    move-result v2

    .line 356
    iget-object v3, p0, Lcom/oplus/camera/ui/preview/g$11;->j:Lcom/oplus/camera/ui/preview/g;

    iget-object v5, p0, Lcom/oplus/camera/ui/preview/g$11;->j:Lcom/oplus/camera/ui/preview/g;

    invoke-static {v5}, Lcom/oplus/camera/ui/preview/g;->p(Lcom/oplus/camera/ui/preview/g;)Landroid/util/Size;

    move-result-object v5

    invoke-virtual {v5}, Landroid/util/Size;->getHeight()I

    move-result v5

    iget-object v6, p0, Lcom/oplus/camera/ui/preview/g$11;->j:Lcom/oplus/camera/ui/preview/g;

    invoke-static {v6}, Lcom/oplus/camera/ui/preview/g;->k(Lcom/oplus/camera/ui/preview/g;)I

    move-result v6

    int-to-float v6, v6

    mul-float/2addr v6, v2

    float-to-int v6, v6

    add-int/2addr v5, v6

    invoke-static {v3, v5}, Lcom/oplus/camera/ui/preview/g;->a(Lcom/oplus/camera/ui/preview/g;I)I

    .line 357
    iget-object v3, p0, Lcom/oplus/camera/ui/preview/g$11;->j:Lcom/oplus/camera/ui/preview/g;

    iget-object v5, p0, Lcom/oplus/camera/ui/preview/g$11;->j:Lcom/oplus/camera/ui/preview/g;

    invoke-static {v5}, Lcom/oplus/camera/ui/preview/g;->q(Lcom/oplus/camera/ui/preview/g;)I

    move-result v5

    iget-object v6, p0, Lcom/oplus/camera/ui/preview/g$11;->j:Lcom/oplus/camera/ui/preview/g;

    invoke-static {v6}, Lcom/oplus/camera/ui/preview/g;->k(Lcom/oplus/camera/ui/preview/g;)I

    move-result v6

    div-int/2addr v6, v8

    int-to-float v6, v6

    mul-float/2addr v6, v2

    float-to-int v2, v6

    sub-int/2addr v5, v2

    invoke-static {v3, v5}, Lcom/oplus/camera/ui/preview/g;->b(Lcom/oplus/camera/ui/preview/g;I)I

    goto :goto_0

    .line 359
    :cond_3
    iget-object v2, p0, Lcom/oplus/camera/ui/preview/g$11;->j:Lcom/oplus/camera/ui/preview/g;

    iget-object v3, p0, Lcom/oplus/camera/ui/preview/g$11;->j:Lcom/oplus/camera/ui/preview/g;

    invoke-static {v3}, Lcom/oplus/camera/ui/preview/g;->r(Lcom/oplus/camera/ui/preview/g;)Landroid/util/Size;

    move-result-object v3

    invoke-virtual {v3}, Landroid/util/Size;->getHeight()I

    move-result v3

    invoke-static {v2, v3}, Lcom/oplus/camera/ui/preview/g;->a(Lcom/oplus/camera/ui/preview/g;I)I

    .line 361
    iget-object v2, p0, Lcom/oplus/camera/ui/preview/g$11;->j:Lcom/oplus/camera/ui/preview/g;

    invoke-static {v2}, Lcom/oplus/camera/ui/preview/g;->s(Lcom/oplus/camera/ui/preview/g;)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 362
    iget-object v2, p0, Lcom/oplus/camera/ui/preview/g$11;->j:Lcom/oplus/camera/ui/preview/g;

    iget-object v3, p0, Lcom/oplus/camera/ui/preview/g$11;->j:Lcom/oplus/camera/ui/preview/g;

    invoke-static {v3}, Lcom/oplus/camera/ui/preview/g;->t(Lcom/oplus/camera/ui/preview/g;)I

    move-result v3

    invoke-static {v2, v3}, Lcom/oplus/camera/ui/preview/g;->b(Lcom/oplus/camera/ui/preview/g;I)I

    .line 365
    :cond_4
    iget-object v2, p0, Lcom/oplus/camera/ui/preview/g$11;->j:Lcom/oplus/camera/ui/preview/g;

    invoke-static {v2, v4}, Lcom/oplus/camera/ui/preview/g;->c(Lcom/oplus/camera/ui/preview/g;I)I

    .line 366
    iget-object v2, p0, Lcom/oplus/camera/ui/preview/g$11;->j:Lcom/oplus/camera/ui/preview/g;

    invoke-static {v2, v4}, Lcom/oplus/camera/ui/preview/g;->d(Lcom/oplus/camera/ui/preview/g;I)I

    .line 369
    :cond_5
    :goto_0
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    .line 371
    iget-object v0, p0, Lcom/oplus/camera/ui/preview/g$11;->j:Lcom/oplus/camera/ui/preview/g;

    invoke-static {v0}, Lcom/oplus/camera/ui/preview/g;->j(Lcom/oplus/camera/ui/preview/g;)Ljava/lang/Object;

    move-result-object v2

    monitor-enter v2

    .line 372
    :try_start_1
    iget-object v0, p0, Lcom/oplus/camera/ui/preview/g$11;->j:Lcom/oplus/camera/ui/preview/g;

    invoke-static {v0}, Lcom/oplus/camera/ui/preview/g;->u(Lcom/oplus/camera/ui/preview/g;)I

    move-result v0

    if-eqz v0, :cond_b

    iget-object v0, p0, Lcom/oplus/camera/ui/preview/g$11;->j:Lcom/oplus/camera/ui/preview/g;

    invoke-static {v0}, Lcom/oplus/camera/ui/preview/g;->l(Lcom/oplus/camera/ui/preview/g;)Z

    move-result v0

    if-nez v0, :cond_b

    .line 373
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v5

    iget-object v0, p0, Lcom/oplus/camera/ui/preview/g$11;->j:Lcom/oplus/camera/ui/preview/g;

    invoke-static {v0}, Lcom/oplus/camera/ui/preview/g;->m(Lcom/oplus/camera/ui/preview/g;)J

    move-result-wide v9

    sub-long/2addr v5, v9

    long-to-float v0, v5

    .line 375
    iget-object v3, p0, Lcom/oplus/camera/ui/preview/g$11;->j:Lcom/oplus/camera/ui/preview/g;

    invoke-static {v3}, Lcom/oplus/camera/ui/preview/g;->n(Lcom/oplus/camera/ui/preview/g;)F

    move-result v3

    cmpg-float v0, v0, v3

    if-gez v0, :cond_9

    .line 378
    iget-object v0, p0, Lcom/oplus/camera/ui/preview/g$11;->j:Lcom/oplus/camera/ui/preview/g;

    invoke-static {v0}, Lcom/oplus/camera/ui/preview/g;->u(Lcom/oplus/camera/ui/preview/g;)I

    move-result v0

    if-lez v0, :cond_6

    .line 379
    iget-object v0, p0, Lcom/oplus/camera/ui/preview/g$11;->j:Lcom/oplus/camera/ui/preview/g;

    invoke-static {v0}, Lcom/oplus/camera/ui/preview/g;->v(Lcom/oplus/camera/ui/preview/g;)Lcom/oplus/camera/ui/preview/g$e;

    move-result-object v0

    goto :goto_1

    .line 381
    :cond_6
    iget-object v0, p0, Lcom/oplus/camera/ui/preview/g$11;->j:Lcom/oplus/camera/ui/preview/g;

    invoke-static {v0}, Lcom/oplus/camera/ui/preview/g;->w(Lcom/oplus/camera/ui/preview/g;)Lcom/oplus/camera/ui/preview/g$e;

    move-result-object v0

    :goto_1
    if-eqz v0, :cond_7

    .line 385
    iget-object v3, p0, Lcom/oplus/camera/ui/preview/g$11;->j:Lcom/oplus/camera/ui/preview/g;

    iget v4, v0, Lcom/oplus/camera/ui/preview/g$e;->a:I

    invoke-static {v3, v4}, Lcom/oplus/camera/ui/preview/g;->e(Lcom/oplus/camera/ui/preview/g;I)I

    .line 386
    iget-object v3, p0, Lcom/oplus/camera/ui/preview/g$11;->j:Lcom/oplus/camera/ui/preview/g;

    iget v0, v0, Lcom/oplus/camera/ui/preview/g$e;->b:I

    invoke-static {v3, v0}, Lcom/oplus/camera/ui/preview/g;->f(Lcom/oplus/camera/ui/preview/g;I)I

    goto :goto_2

    .line 388
    :cond_7
    iget-object v0, p0, Lcom/oplus/camera/ui/preview/g$11;->j:Lcom/oplus/camera/ui/preview/g;

    iget-object v3, p0, Lcom/oplus/camera/ui/preview/g$11;->j:Lcom/oplus/camera/ui/preview/g;

    invoke-static {v3}, Lcom/oplus/camera/ui/preview/g;->x(Lcom/oplus/camera/ui/preview/g;)I

    move-result v3

    invoke-static {v0, v3}, Lcom/oplus/camera/ui/preview/g;->e(Lcom/oplus/camera/ui/preview/g;I)I

    .line 389
    iget-object v0, p0, Lcom/oplus/camera/ui/preview/g$11;->j:Lcom/oplus/camera/ui/preview/g;

    iget-object v3, p0, Lcom/oplus/camera/ui/preview/g$11;->j:Lcom/oplus/camera/ui/preview/g;

    invoke-static {v3}, Lcom/oplus/camera/ui/preview/g;->p(Lcom/oplus/camera/ui/preview/g;)Landroid/util/Size;

    move-result-object v3

    invoke-virtual {v3}, Landroid/util/Size;->getWidth()I

    move-result v3

    invoke-static {v0, v3}, Lcom/oplus/camera/ui/preview/g;->f(Lcom/oplus/camera/ui/preview/g;I)I

    .line 392
    :goto_2
    iget-object v0, p0, Lcom/oplus/camera/ui/preview/g$11;->j:Lcom/oplus/camera/ui/preview/g;

    invoke-static {v0}, Lcom/oplus/camera/ui/preview/g;->y(Lcom/oplus/camera/ui/preview/g;)Landroid/app/Activity;

    move-result-object v0

    invoke-static {v0}, Lcom/oplus/camera/ui/a;->a(Landroid/content/Context;)Lcom/oplus/camera/ui/a;

    move-result-object v0

    iget-object v3, p0, Lcom/oplus/camera/ui/preview/g$11;->j:Lcom/oplus/camera/ui/preview/g;

    invoke-static {v3}, Lcom/oplus/camera/ui/preview/g;->u(Lcom/oplus/camera/ui/preview/g;)I

    move-result v3

    if-lez v3, :cond_8

    goto :goto_3

    :cond_8
    move v1, v8

    :goto_3
    invoke-virtual {v0, v1}, Lcom/oplus/camera/ui/a;->b(I)V

    goto :goto_4

    .line 396
    :cond_9
    iget-object v0, p0, Lcom/oplus/camera/ui/preview/g$11;->j:Lcom/oplus/camera/ui/preview/g;

    iget-object v1, p0, Lcom/oplus/camera/ui/preview/g$11;->j:Lcom/oplus/camera/ui/preview/g;

    invoke-static {v1}, Lcom/oplus/camera/ui/preview/g;->r(Lcom/oplus/camera/ui/preview/g;)Landroid/util/Size;

    move-result-object v1

    invoke-virtual {v1}, Landroid/util/Size;->getWidth()I

    move-result v1

    invoke-static {v0, v1}, Lcom/oplus/camera/ui/preview/g;->f(Lcom/oplus/camera/ui/preview/g;I)I

    .line 398
    iget-object v0, p0, Lcom/oplus/camera/ui/preview/g$11;->j:Lcom/oplus/camera/ui/preview/g;

    invoke-static {v0}, Lcom/oplus/camera/ui/preview/g;->z(Lcom/oplus/camera/ui/preview/g;)Z

    move-result v0

    if-eqz v0, :cond_a

    .line 399
    iget-object v0, p0, Lcom/oplus/camera/ui/preview/g$11;->j:Lcom/oplus/camera/ui/preview/g;

    iget-object v1, p0, Lcom/oplus/camera/ui/preview/g$11;->j:Lcom/oplus/camera/ui/preview/g;

    invoke-static {v1}, Lcom/oplus/camera/ui/preview/g;->A(Lcom/oplus/camera/ui/preview/g;)I

    move-result v1

    invoke-static {v0, v1}, Lcom/oplus/camera/ui/preview/g;->e(Lcom/oplus/camera/ui/preview/g;I)I

    .line 402
    :cond_a
    iget-object v0, p0, Lcom/oplus/camera/ui/preview/g$11;->j:Lcom/oplus/camera/ui/preview/g;

    invoke-static {v0, v4}, Lcom/oplus/camera/ui/preview/g;->g(Lcom/oplus/camera/ui/preview/g;I)I

    .line 403
    iget-object v0, p0, Lcom/oplus/camera/ui/preview/g$11;->j:Lcom/oplus/camera/ui/preview/g;

    invoke-static {v0, v4}, Lcom/oplus/camera/ui/preview/g;->h(Lcom/oplus/camera/ui/preview/g;I)I

    .line 404
    iget-object v0, p0, Lcom/oplus/camera/ui/preview/g$11;->j:Lcom/oplus/camera/ui/preview/g;

    invoke-static {v0, v4}, Lcom/oplus/camera/ui/preview/g;->i(Lcom/oplus/camera/ui/preview/g;I)I

    .line 405
    iget-object v0, p0, Lcom/oplus/camera/ui/preview/g$11;->j:Lcom/oplus/camera/ui/preview/g;

    invoke-static {v0}, Lcom/oplus/camera/ui/preview/g;->B(Lcom/oplus/camera/ui/preview/g;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 406
    iget-object v0, p0, Lcom/oplus/camera/ui/preview/g$11;->j:Lcom/oplus/camera/ui/preview/g;

    invoke-static {v0}, Lcom/oplus/camera/ui/preview/g;->y(Lcom/oplus/camera/ui/preview/g;)Landroid/app/Activity;

    move-result-object v0

    invoke-static {v0}, Lcom/oplus/camera/ui/a;->a(Landroid/content/Context;)Lcom/oplus/camera/ui/a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/oplus/camera/ui/a;->a()V

    .line 409
    :cond_b
    :goto_4
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 411
    invoke-static {}, Lcom/oplus/camera/util/Util;->t()Z

    move-result v0

    if-eqz v0, :cond_c

    .line 412
    iget-object v0, p0, Lcom/oplus/camera/ui/preview/g$11;->j:Lcom/oplus/camera/ui/preview/g;

    invoke-static {v0}, Lcom/oplus/camera/ui/preview/g;->C(Lcom/oplus/camera/ui/preview/g;)V

    .line 415
    :cond_c
    iget-object v0, p0, Lcom/oplus/camera/ui/preview/g$11;->j:Lcom/oplus/camera/ui/preview/g;

    invoke-static {v0}, Lcom/oplus/camera/ui/preview/g;->j(Lcom/oplus/camera/ui/preview/g;)Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    .line 416
    :try_start_2
    iget-object v1, p0, Lcom/oplus/camera/ui/preview/g$11;->j:Lcom/oplus/camera/ui/preview/g;

    invoke-static {v1}, Lcom/oplus/camera/ui/preview/g;->l(Lcom/oplus/camera/ui/preview/g;)Z

    move-result v1

    if-eqz v1, :cond_d

    .line 417
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v1

    iget-object v3, p0, Lcom/oplus/camera/ui/preview/g$11;->j:Lcom/oplus/camera/ui/preview/g;

    invoke-static {v3}, Lcom/oplus/camera/ui/preview/g;->m(Lcom/oplus/camera/ui/preview/g;)J

    move-result-wide v3

    sub-long/2addr v1, v3

    long-to-float v1, v1

    .line 419
    iget-object v2, p0, Lcom/oplus/camera/ui/preview/g$11;->j:Lcom/oplus/camera/ui/preview/g;

    invoke-static {v2}, Lcom/oplus/camera/ui/preview/g;->n(Lcom/oplus/camera/ui/preview/g;)F

    move-result v2

    cmpl-float v1, v1, v2

    if-ltz v1, :cond_d

    .line 420
    iget-object v1, p0, Lcom/oplus/camera/ui/preview/g$11;->j:Lcom/oplus/camera/ui/preview/g;

    invoke-static {v1}, Lcom/oplus/camera/ui/preview/g;->D(Lcom/oplus/camera/ui/preview/g;)V

    .line 423
    :cond_d
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 425
    invoke-static {}, Lcom/oplus/camera/util/Util;->t()Z

    move-result v0

    if-eqz v0, :cond_e

    .line 426
    iget-object v0, p0, Lcom/oplus/camera/ui/preview/g$11;->j:Lcom/oplus/camera/ui/preview/g;

    invoke-static {v0}, Lcom/oplus/camera/ui/preview/g;->E(Lcom/oplus/camera/ui/preview/g;)V

    .line 429
    :cond_e
    iget-object v0, p0, Lcom/oplus/camera/ui/preview/g$11;->j:Lcom/oplus/camera/ui/preview/g;

    invoke-static {v0, p1}, Lcom/oplus/camera/ui/preview/g;->a(Lcom/oplus/camera/ui/preview/g;Lcom/oplus/camera/gl/h;)V

    .line 430
    iget-object v0, p0, Lcom/oplus/camera/ui/preview/g$11;->j:Lcom/oplus/camera/ui/preview/g;

    invoke-static {v0}, Lcom/oplus/camera/ui/preview/g;->d(Lcom/oplus/camera/ui/preview/g;)Lcom/oplus/camera/ui/preview/h;

    move-result-object v1

    const/4 v3, 0x0

    iget-object v0, p0, Lcom/oplus/camera/ui/preview/g$11;->j:Lcom/oplus/camera/ui/preview/g;

    invoke-static {v0}, Lcom/oplus/camera/ui/preview/g;->F(Lcom/oplus/camera/ui/preview/g;)I

    move-result v4

    iget-object v0, p0, Lcom/oplus/camera/ui/preview/g$11;->j:Lcom/oplus/camera/ui/preview/g;

    invoke-static {v0}, Lcom/oplus/camera/ui/preview/g;->G(Lcom/oplus/camera/ui/preview/g;)I

    move-result v5

    iget-object v0, p0, Lcom/oplus/camera/ui/preview/g$11;->j:Lcom/oplus/camera/ui/preview/g;

    invoke-static {v0}, Lcom/oplus/camera/ui/preview/g;->H(Lcom/oplus/camera/ui/preview/g;)I

    move-result v6

    iget-object v0, p0, Lcom/oplus/camera/ui/preview/g$11;->j:Lcom/oplus/camera/ui/preview/g;

    invoke-static {v0}, Lcom/oplus/camera/ui/preview/g;->I(Lcom/oplus/camera/ui/preview/g;)I

    move-result v7

    move-object v2, p1

    invoke-virtual/range {v1 .. v7}, Lcom/oplus/camera/ui/preview/h;->a(Lcom/oplus/camera/gl/h;Lcom/oplus/camera/ui/menu/levelcontrol/j;IIII)Z

    .line 431
    iget-object p0, p0, Lcom/oplus/camera/ui/preview/g$11;->j:Lcom/oplus/camera/ui/preview/g;

    invoke-static {p0, p1}, Lcom/oplus/camera/ui/preview/g;->b(Lcom/oplus/camera/ui/preview/g;Lcom/oplus/camera/gl/h;)V

    return-void

    :catchall_0
    move-exception p0

    .line 423
    :try_start_3
    monitor-exit v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    throw p0

    :catchall_1
    move-exception p0

    .line 409
    :try_start_4
    monitor-exit v2
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    throw p0

    :catchall_2
    move-exception p0

    .line 369
    :try_start_5
    monitor-exit v0
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    throw p0
.end method

.method protected a(Lcom/oplus/camera/gl/h;I)V
    .locals 9

    .line 436
    iget-object v0, p0, Lcom/oplus/camera/ui/preview/g$11;->j:Lcom/oplus/camera/ui/preview/g;

    invoke-static {v0}, Lcom/oplus/camera/ui/preview/g;->d(Lcom/oplus/camera/ui/preview/g;)Lcom/oplus/camera/ui/preview/h;

    move-result-object v0

    if-eqz v0, :cond_2

    if-nez p2, :cond_1

    .line 438
    iget-object v0, p0, Lcom/oplus/camera/ui/preview/g$11;->j:Lcom/oplus/camera/ui/preview/g;

    invoke-static {v0}, Lcom/oplus/camera/ui/preview/g;->d(Lcom/oplus/camera/ui/preview/g;)Lcom/oplus/camera/ui/preview/h;

    move-result-object v1

    const/4 v3, 0x0

    const/4 v4, 0x0

    iget-object v0, p0, Lcom/oplus/camera/ui/preview/g$11;->j:Lcom/oplus/camera/ui/preview/g;

    invoke-static {v0}, Lcom/oplus/camera/ui/preview/g;->J(Lcom/oplus/camera/ui/preview/g;)I

    move-result v5

    iget-object v0, p0, Lcom/oplus/camera/ui/preview/g$11;->j:Lcom/oplus/camera/ui/preview/g;

    invoke-static {v0}, Lcom/oplus/camera/ui/preview/g;->K(Lcom/oplus/camera/ui/preview/g;)I

    move-result v6

    iget-object v0, p0, Lcom/oplus/camera/ui/preview/g$11;->j:Lcom/oplus/camera/ui/preview/g;

    invoke-static {v0}, Lcom/oplus/camera/ui/preview/g;->L(Lcom/oplus/camera/ui/preview/g;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 439
    iget-object p0, p0, Lcom/oplus/camera/ui/preview/g$11;->j:Lcom/oplus/camera/ui/preview/g;

    invoke-static {p0}, Lcom/oplus/camera/ui/preview/g;->M(Lcom/oplus/camera/ui/preview/g;)I

    move-result p0

    goto :goto_0

    :cond_0
    iget-object p0, p0, Lcom/oplus/camera/ui/preview/g$11;->j:Lcom/oplus/camera/ui/preview/g;

    invoke-static {p0}, Lcom/oplus/camera/ui/preview/g;->N(Lcom/oplus/camera/ui/preview/g;)Lcom/oplus/camera/ui/preview/g$b;

    move-result-object p0

    invoke-interface {p0}, Lcom/oplus/camera/ui/preview/g$b;->cu()I

    move-result p0

    :goto_0
    move v7, p0

    move-object v2, p1

    move v8, p2

    .line 438
    invoke-virtual/range {v1 .. v8}, Lcom/oplus/camera/ui/preview/h;->a(Lcom/oplus/camera/gl/h;IIIIII)V

    goto :goto_1

    :cond_1
    const/4 v0, 0x1

    if-ne v0, p2, :cond_2

    .line 441
    iget-object v0, p0, Lcom/oplus/camera/ui/preview/g$11;->j:Lcom/oplus/camera/ui/preview/g;

    invoke-static {v0}, Lcom/oplus/camera/ui/preview/g;->d(Lcom/oplus/camera/ui/preview/g;)Lcom/oplus/camera/ui/preview/h;

    move-result-object v1

    const/4 v3, 0x0

    const/4 v4, 0x0

    iget-object v0, p0, Lcom/oplus/camera/ui/preview/g$11;->j:Lcom/oplus/camera/ui/preview/g;

    invoke-static {v0}, Lcom/oplus/camera/ui/preview/g;->O(Lcom/oplus/camera/ui/preview/g;)I

    move-result v5

    iget-object p0, p0, Lcom/oplus/camera/ui/preview/g$11;->j:Lcom/oplus/camera/ui/preview/g;

    invoke-static {p0}, Lcom/oplus/camera/ui/preview/g;->P(Lcom/oplus/camera/ui/preview/g;)I

    move-result v6

    const/4 v7, 0x0

    move-object v2, p1

    move v8, p2

    invoke-virtual/range {v1 .. v8}, Lcom/oplus/camera/ui/preview/h;->a(Lcom/oplus/camera/gl/h;IIIIII)V

    :cond_2
    :goto_1
    return-void
.end method

.method protected b(Lcom/oplus/camera/gl/h;)V
    .locals 0

    .line 299
    invoke-super {p0, p1}, Lcom/oplus/camera/gl/GLView;->b(Lcom/oplus/camera/gl/h;)V

    return-void
.end method

.method protected f()V
    .locals 0

    .line 309
    iget-object p0, p0, Lcom/oplus/camera/ui/preview/g$11;->j:Lcom/oplus/camera/ui/preview/g;

    invoke-static {p0}, Lcom/oplus/camera/ui/preview/g;->d(Lcom/oplus/camera/ui/preview/g;)Lcom/oplus/camera/ui/preview/h;

    move-result-object p0

    invoke-virtual {p0}, Lcom/oplus/camera/ui/preview/h;->r()V

    return-void
.end method
