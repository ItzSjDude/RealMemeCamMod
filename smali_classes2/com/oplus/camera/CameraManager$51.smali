.class Lcom/oplus/camera/CameraManager$51;
.super Ljava/lang/Object;
.source "CameraManager.java"

# interfaces
.implements Lcom/oplus/camera/ui/preview/f;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/oplus/camera/CameraManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/oplus/camera/CameraManager;


# direct methods
.method constructor <init>(Lcom/oplus/camera/CameraManager;)V
    .locals 0

    .line 16199
    iput-object p1, p0, Lcom/oplus/camera/CameraManager$51;->a:Lcom/oplus/camera/CameraManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(I)V
    .locals 2

    .line 16450
    iget-object v0, p0, Lcom/oplus/camera/CameraManager$51;->a:Lcom/oplus/camera/CameraManager;

    invoke-static {v0}, Lcom/oplus/camera/CameraManager;->f(Lcom/oplus/camera/CameraManager;)Lcom/oplus/camera/e/d;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 16451
    iget-object v0, p0, Lcom/oplus/camera/CameraManager$51;->a:Lcom/oplus/camera/CameraManager;

    invoke-static {v0, p1}, Lcom/oplus/camera/CameraManager;->v(Lcom/oplus/camera/CameraManager;I)I

    .line 16452
    iget-object p1, p0, Lcom/oplus/camera/CameraManager$51;->a:Lcom/oplus/camera/CameraManager;

    invoke-static {p1}, Lcom/oplus/camera/CameraManager;->f(Lcom/oplus/camera/CameraManager;)Lcom/oplus/camera/e/d;

    move-result-object p1

    sget-object v0, Landroid/hardware/camera2/CaptureRequest;->CONTROL_AE_EXPOSURE_COMPENSATION:Landroid/hardware/camera2/CaptureRequest$Key;

    iget-object v1, p0, Lcom/oplus/camera/CameraManager$51;->a:Lcom/oplus/camera/CameraManager;

    invoke-static {v1}, Lcom/oplus/camera/CameraManager;->cD(Lcom/oplus/camera/CameraManager;)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {p1, v0, v1}, Lcom/oplus/camera/e/d;->a(Landroid/hardware/camera2/CaptureRequest$Key;Ljava/lang/Object;)V

    .line 16453
    iget-object p0, p0, Lcom/oplus/camera/CameraManager$51;->a:Lcom/oplus/camera/CameraManager;

    invoke-static {p0}, Lcom/oplus/camera/CameraManager;->f(Lcom/oplus/camera/CameraManager;)Lcom/oplus/camera/e/d;

    move-result-object p0

    const/4 p1, 0x0

    invoke-interface {p0, p1}, Lcom/oplus/camera/e/d;->a(Lcom/oplus/camera/e/d$c;)V

    :cond_0
    return-void
.end method

.method public a(IILandroid/graphics/RectF;)V
    .locals 2

    .line 16418
    iget-object v0, p0, Lcom/oplus/camera/CameraManager$51;->a:Lcom/oplus/camera/CameraManager;

    const/4 v1, 0x1

    invoke-virtual {v0, v1, p1, p2}, Lcom/oplus/camera/CameraManager;->a(ZII)V

    .line 16420
    iget-object p1, p0, Lcom/oplus/camera/CameraManager$51;->a:Lcom/oplus/camera/CameraManager;

    invoke-static {p1}, Lcom/oplus/camera/CameraManager;->f(Lcom/oplus/camera/CameraManager;)Lcom/oplus/camera/e/d;

    move-result-object p1

    sget-object p2, Lcom/oplus/ocs/camera/CameraParameter;->AE_REGIONS:Lcom/oplus/ocs/camera/CameraParameter$PreviewKey;

    invoke-interface {p1, p2, p3}, Lcom/oplus/camera/e/d;->a(Lcom/oplus/ocs/camera/CameraParameter$PreviewKey;Ljava/lang/Object;)V

    .line 16421
    iget-object p0, p0, Lcom/oplus/camera/CameraManager$51;->a:Lcom/oplus/camera/CameraManager;

    invoke-static {p0}, Lcom/oplus/camera/CameraManager;->f(Lcom/oplus/camera/CameraManager;)Lcom/oplus/camera/e/d;

    move-result-object p0

    const/4 p1, 0x0

    invoke-interface {p0, p1}, Lcom/oplus/camera/e/d;->a(Lcom/oplus/camera/e/d$c;)V

    return-void
.end method

.method public a(ILandroid/graphics/RectF;Landroid/graphics/RectF;)V
    .locals 0

    .line 16382
    iget-object p0, p0, Lcom/oplus/camera/CameraManager$51;->a:Lcom/oplus/camera/CameraManager;

    invoke-virtual {p0, p1, p2, p3}, Lcom/oplus/camera/CameraManager;->a(ILandroid/graphics/RectF;Landroid/graphics/RectF;)V

    return-void
.end method

.method public a(Landroid/graphics/Rect;Landroid/graphics/Rect;)V
    .locals 6

    .line 16387
    iget-object v0, p0, Lcom/oplus/camera/CameraManager$51;->a:Lcom/oplus/camera/CameraManager;

    invoke-virtual {v0}, Lcom/oplus/camera/CameraManager;->aO()F

    move-result v0

    const/high16 v1, 0x3f800000    # 1.0f

    cmpl-float v0, v1, v0

    const/4 v1, 0x0

    if-lez v0, :cond_1

    if-eqz p1, :cond_0

    .line 16389
    iget-object v0, p0, Lcom/oplus/camera/CameraManager$51;->a:Lcom/oplus/camera/CameraManager;

    invoke-static {v0}, Lcom/oplus/camera/CameraManager;->f(Lcom/oplus/camera/CameraManager;)Lcom/oplus/camera/e/d;

    move-result-object v0

    new-instance v2, Lcom/oplus/camera/e/i;

    invoke-static {}, Lcom/oplus/camera/a;->e()I

    move-result v3

    invoke-direct {v2, p1, v3}, Lcom/oplus/camera/e/i;-><init>(Landroid/graphics/Rect;I)V

    invoke-interface {v0, v2}, Lcom/oplus/camera/e/d;->a(Lcom/oplus/camera/e/i;)V

    :cond_0
    if-eqz p2, :cond_4

    .line 16393
    iget-object p1, p0, Lcom/oplus/camera/CameraManager$51;->a:Lcom/oplus/camera/CameraManager;

    invoke-static {p1}, Lcom/oplus/camera/CameraManager;->f(Lcom/oplus/camera/CameraManager;)Lcom/oplus/camera/e/d;

    move-result-object p1

    new-instance v0, Lcom/oplus/camera/e/i;

    invoke-static {}, Lcom/oplus/camera/a;->d()I

    move-result v2

    invoke-direct {v0, p2, v2}, Lcom/oplus/camera/e/i;-><init>(Landroid/graphics/Rect;I)V

    invoke-interface {p1, v0}, Lcom/oplus/camera/e/d;->b(Lcom/oplus/camera/e/i;)V

    goto :goto_2

    :cond_1
    const/4 v0, 0x0

    const/4 v2, 0x1

    if-eqz p2, :cond_2

    .line 16400
    new-array v3, v2, [Landroid/hardware/camera2/params/MeteringRectangle;

    .line 16401
    new-instance v4, Landroid/hardware/camera2/params/MeteringRectangle;

    invoke-static {}, Lcom/oplus/camera/a;->d()I

    move-result v5

    invoke-direct {v4, p2, v5}, Landroid/hardware/camera2/params/MeteringRectangle;-><init>(Landroid/graphics/Rect;I)V

    aput-object v4, v3, v0

    goto :goto_0

    :cond_2
    move-object v3, v1

    :goto_0
    if-eqz p1, :cond_3

    .line 16405
    new-array p2, v2, [Landroid/hardware/camera2/params/MeteringRectangle;

    .line 16406
    new-instance v2, Landroid/hardware/camera2/params/MeteringRectangle;

    invoke-static {}, Lcom/oplus/camera/a;->e()I

    move-result v4

    invoke-direct {v2, p1, v4}, Landroid/hardware/camera2/params/MeteringRectangle;-><init>(Landroid/graphics/Rect;I)V

    aput-object v2, p2, v0

    goto :goto_1

    :cond_3
    move-object p2, v1

    .line 16409
    :goto_1
    iget-object p1, p0, Lcom/oplus/camera/CameraManager$51;->a:Lcom/oplus/camera/CameraManager;

    invoke-static {p1}, Lcom/oplus/camera/CameraManager;->f(Lcom/oplus/camera/CameraManager;)Lcom/oplus/camera/e/d;

    move-result-object p1

    sget-object v0, Landroid/hardware/camera2/CaptureRequest;->CONTROL_AE_REGIONS:Landroid/hardware/camera2/CaptureRequest$Key;

    invoke-interface {p1, v0, p2}, Lcom/oplus/camera/e/d;->a(Landroid/hardware/camera2/CaptureRequest$Key;Ljava/lang/Object;)V

    .line 16410
    iget-object p1, p0, Lcom/oplus/camera/CameraManager$51;->a:Lcom/oplus/camera/CameraManager;

    invoke-static {p1}, Lcom/oplus/camera/CameraManager;->f(Lcom/oplus/camera/CameraManager;)Lcom/oplus/camera/e/d;

    move-result-object p1

    sget-object p2, Landroid/hardware/camera2/CaptureRequest;->CONTROL_AF_REGIONS:Landroid/hardware/camera2/CaptureRequest$Key;

    invoke-interface {p1, p2, v3}, Lcom/oplus/camera/e/d;->a(Landroid/hardware/camera2/CaptureRequest$Key;Ljava/lang/Object;)V

    .line 16413
    :cond_4
    :goto_2
    iget-object p0, p0, Lcom/oplus/camera/CameraManager$51;->a:Lcom/oplus/camera/CameraManager;

    invoke-static {p0}, Lcom/oplus/camera/CameraManager;->f(Lcom/oplus/camera/CameraManager;)Lcom/oplus/camera/e/d;

    move-result-object p0

    invoke-interface {p0, v1}, Lcom/oplus/camera/e/d;->a(Lcom/oplus/camera/e/d$c;)V

    return-void
.end method

.method public a(Z)V
    .locals 2

    .line 16321
    iget-object v0, p0, Lcom/oplus/camera/CameraManager$51;->a:Lcom/oplus/camera/CameraManager;

    invoke-static {v0}, Lcom/oplus/camera/CameraManager;->D(Lcom/oplus/camera/CameraManager;)Lcom/oplus/camera/ui/preview/o;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/oplus/camera/CameraManager$51;->a:Lcom/oplus/camera/CameraManager;

    invoke-static {v0}, Lcom/oplus/camera/CameraManager;->D(Lcom/oplus/camera/CameraManager;)Lcom/oplus/camera/ui/preview/o;

    move-result-object v0

    invoke-virtual {v0}, Lcom/oplus/camera/ui/preview/o;->h()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 16322
    iget-object v0, p0, Lcom/oplus/camera/CameraManager$51;->a:Lcom/oplus/camera/CameraManager;

    const-string v1, "tap"

    invoke-static {v0, v1}, Lcom/oplus/camera/CameraManager;->a(Lcom/oplus/camera/CameraManager;Ljava/lang/String;)Ljava/lang/String;

    .line 16325
    :cond_0
    iget-object p0, p0, Lcom/oplus/camera/CameraManager$51;->a:Lcom/oplus/camera/CameraManager;

    const/4 v0, 0x0

    invoke-static {p0, v0, p1}, Lcom/oplus/camera/CameraManager;->a(Lcom/oplus/camera/CameraManager;ZZ)V

    return-void
.end method

.method public a(ZZ)V
    .locals 0

    .line 16218
    invoke-virtual {p0, p1, p2}, Lcom/oplus/camera/CameraManager$51;->c(ZZ)V

    return-void
.end method

.method public a([IZ)V
    .locals 1

    .line 16202
    iget-object v0, p0, Lcom/oplus/camera/CameraManager$51;->a:Lcom/oplus/camera/CameraManager;

    invoke-static {v0}, Lcom/oplus/camera/CameraManager;->f(Lcom/oplus/camera/CameraManager;)Lcom/oplus/camera/e/d;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 16203
    iget-object v0, p0, Lcom/oplus/camera/CameraManager$51;->a:Lcom/oplus/camera/CameraManager;

    invoke-static {v0}, Lcom/oplus/camera/CameraManager;->f(Lcom/oplus/camera/CameraManager;)Lcom/oplus/camera/e/d;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/oplus/camera/e/d;->b([I)V

    if-eqz p2, :cond_0

    .line 16206
    iget-object p1, p0, Lcom/oplus/camera/CameraManager$51;->a:Lcom/oplus/camera/CameraManager;

    invoke-static {p1}, Lcom/oplus/camera/CameraManager;->f(Lcom/oplus/camera/CameraManager;)Lcom/oplus/camera/e/d;

    move-result-object p1

    iget-object p2, p0, Lcom/oplus/camera/CameraManager$51;->a:Lcom/oplus/camera/CameraManager;

    invoke-static {p2}, Lcom/oplus/camera/CameraManager;->bj(Lcom/oplus/camera/CameraManager;)Lcom/oplus/camera/e/d$c;

    move-result-object p2

    invoke-interface {p1, p2}, Lcom/oplus/camera/e/d;->a(Lcom/oplus/camera/e/d$c;)V

    .line 16209
    :cond_0
    iget-object p1, p0, Lcom/oplus/camera/CameraManager$51;->a:Lcom/oplus/camera/CameraManager;

    invoke-static {p1}, Lcom/oplus/camera/CameraManager;->i(Lcom/oplus/camera/CameraManager;)Lcom/oplus/camera/capmode/ModeManager;

    move-result-object p1

    if-eqz p1, :cond_1

    .line 16210
    iget-object p1, p0, Lcom/oplus/camera/CameraManager$51;->a:Lcom/oplus/camera/CameraManager;

    invoke-static {p1}, Lcom/oplus/camera/CameraManager;->i(Lcom/oplus/camera/CameraManager;)Lcom/oplus/camera/capmode/ModeManager;

    move-result-object p1

    iget-object p0, p0, Lcom/oplus/camera/CameraManager$51;->a:Lcom/oplus/camera/CameraManager;

    invoke-static {p0}, Lcom/oplus/camera/CameraManager;->D(Lcom/oplus/camera/CameraManager;)Lcom/oplus/camera/ui/preview/o;

    move-result-object p0

    invoke-virtual {p0}, Lcom/oplus/camera/ui/preview/o;->O()Z

    move-result p0

    invoke-virtual {p1, p0}, Lcom/oplus/camera/capmode/ModeManager;->z(Z)V

    :cond_1
    return-void
.end method

.method public a([Landroid/hardware/camera2/params/MeteringRectangle;)V
    .locals 2

    if-eqz p1, :cond_0

    .line 16435
    iget-object v0, p0, Lcom/oplus/camera/CameraManager$51;->a:Lcom/oplus/camera/CameraManager;

    invoke-static {v0}, Lcom/oplus/camera/CameraManager;->f(Lcom/oplus/camera/CameraManager;)Lcom/oplus/camera/e/d;

    move-result-object v0

    sget-object v1, Landroid/hardware/camera2/CaptureRequest;->CONTROL_AE_REGIONS:Landroid/hardware/camera2/CaptureRequest$Key;

    invoke-interface {v0, v1, p1}, Lcom/oplus/camera/e/d;->c(Landroid/hardware/camera2/CaptureRequest$Key;Ljava/lang/Object;)V

    .line 16436
    iget-object p0, p0, Lcom/oplus/camera/CameraManager$51;->a:Lcom/oplus/camera/CameraManager;

    invoke-static {p0}, Lcom/oplus/camera/CameraManager;->f(Lcom/oplus/camera/CameraManager;)Lcom/oplus/camera/e/d;

    move-result-object p0

    const/4 p1, 0x0

    invoke-interface {p0, p1}, Lcom/oplus/camera/e/d;->a(Lcom/oplus/camera/e/d$c;)V

    :cond_0
    return-void
.end method

.method public a()Z
    .locals 8

    .line 16224
    iget-object v0, p0, Lcom/oplus/camera/CameraManager$51;->a:Lcom/oplus/camera/CameraManager;

    invoke-static {v0}, Lcom/oplus/camera/CameraManager;->i(Lcom/oplus/camera/CameraManager;)Lcom/oplus/camera/capmode/ModeManager;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object p0, p0, Lcom/oplus/camera/CameraManager$51;->a:Lcom/oplus/camera/CameraManager;

    .line 16225
    invoke-static {p0}, Lcom/oplus/camera/CameraManager;->i(Lcom/oplus/camera/CameraManager;)Lcom/oplus/camera/capmode/ModeManager;

    move-result-object p0

    const-wide/16 v0, 0x0

    const-wide/16 v2, 0x0

    const/4 v4, 0x0

    const/high16 v5, -0x40800000    # -1.0f

    const/high16 v6, -0x40800000    # -1.0f

    const/4 v7, -0x1

    invoke-static/range {v0 .. v7}, Landroid/view/MotionEvent;->obtain(JJIFFI)Landroid/view/MotionEvent;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/oplus/camera/capmode/ModeManager;->c(Landroid/view/MotionEvent;)Z

    move-result p0

    if-nez p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public a(II)Z
    .locals 2

    .line 16238
    iget-object v0, p0, Lcom/oplus/camera/CameraManager$51;->a:Lcom/oplus/camera/CameraManager;

    invoke-static {v0}, Lcom/oplus/camera/CameraManager;->g(Lcom/oplus/camera/CameraManager;)Lcom/oplus/camera/ui/d;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 16239
    iget-object v0, p0, Lcom/oplus/camera/CameraManager$51;->a:Lcom/oplus/camera/CameraManager;

    invoke-static {v0}, Lcom/oplus/camera/CameraManager;->g(Lcom/oplus/camera/CameraManager;)Lcom/oplus/camera/ui/d;

    move-result-object v0

    invoke-virtual {v0}, Lcom/oplus/camera/ui/d;->bJ()Landroid/graphics/Rect;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 16242
    iget v1, v0, Landroid/graphics/Rect;->left:I

    add-int/2addr p1, v1

    .line 16243
    iget v0, v0, Landroid/graphics/Rect;->top:I

    add-int/2addr p2, v0

    .line 16247
    :cond_0
    iget-object v0, p0, Lcom/oplus/camera/CameraManager$51;->a:Lcom/oplus/camera/CameraManager;

    invoke-static {v0}, Lcom/oplus/camera/CameraManager;->i(Lcom/oplus/camera/CameraManager;)Lcom/oplus/camera/capmode/ModeManager;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/oplus/camera/CameraManager$51;->a:Lcom/oplus/camera/CameraManager;

    invoke-static {v0}, Lcom/oplus/camera/CameraManager;->i(Lcom/oplus/camera/CameraManager;)Lcom/oplus/camera/capmode/ModeManager;

    move-result-object v0

    iget-object v1, p0, Lcom/oplus/camera/CameraManager$51;->a:Lcom/oplus/camera/CameraManager;

    invoke-static {v1}, Lcom/oplus/camera/CameraManager;->au(Lcom/oplus/camera/CameraManager;)Lcom/oplus/camera/screen/g;

    move-result-object v1

    invoke-virtual {v1}, Lcom/oplus/camera/screen/g;->a()Lcom/oplus/camera/screen/b/a;

    move-result-object v1

    iget-object p0, p0, Lcom/oplus/camera/CameraManager$51;->a:Lcom/oplus/camera/CameraManager;

    .line 16248
    invoke-static {p0}, Lcom/oplus/camera/CameraManager;->g(Lcom/oplus/camera/CameraManager;)Lcom/oplus/camera/ui/d;

    move-result-object p0

    invoke-virtual {v1, p0, p1, p2}, Lcom/oplus/camera/screen/b/a;->a(Lcom/oplus/camera/ui/CameraUIInterface;II)Z

    move-result p0

    .line 16247
    invoke-virtual {v0, p0, p1, p2}, Lcom/oplus/camera/capmode/ModeManager;->a(ZII)Z

    move-result p0

    if-eqz p0, :cond_1

    const/4 p0, 0x1

    goto :goto_0

    :cond_1
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public a(Ljava/lang/String;)Z
    .locals 1

    .line 16307
    iget-object v0, p0, Lcom/oplus/camera/CameraManager$51;->a:Lcom/oplus/camera/CameraManager;

    invoke-static {v0}, Lcom/oplus/camera/CameraManager;->i(Lcom/oplus/camera/CameraManager;)Lcom/oplus/camera/capmode/ModeManager;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 16308
    iget-object p0, p0, Lcom/oplus/camera/CameraManager$51;->a:Lcom/oplus/camera/CameraManager;

    invoke-static {p0}, Lcom/oplus/camera/CameraManager;->i(Lcom/oplus/camera/CameraManager;)Lcom/oplus/camera/capmode/ModeManager;

    move-result-object p0

    invoke-virtual {p0, p1}, Lcom/oplus/camera/capmode/ModeManager;->j(Ljava/lang/String;)Z

    move-result p0

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public b(II)V
    .locals 1

    .line 16512
    iget-object v0, p0, Lcom/oplus/camera/CameraManager$51;->a:Lcom/oplus/camera/CameraManager;

    invoke-virtual {v0, p1, p2}, Lcom/oplus/camera/CameraManager;->a(II)V

    .line 16514
    iget-object v0, p0, Lcom/oplus/camera/CameraManager$51;->a:Lcom/oplus/camera/CameraManager;

    invoke-static {v0}, Lcom/oplus/camera/CameraManager;->aa(Lcom/oplus/camera/CameraManager;)Lcom/oplus/camera/ui/preview/a/t;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 16515
    iget-object p0, p0, Lcom/oplus/camera/CameraManager$51;->a:Lcom/oplus/camera/CameraManager;

    invoke-static {p0}, Lcom/oplus/camera/CameraManager;->aa(Lcom/oplus/camera/CameraManager;)Lcom/oplus/camera/ui/preview/a/t;

    move-result-object p0

    new-instance v0, Landroid/graphics/Point;

    invoke-direct {v0, p1, p2}, Landroid/graphics/Point;-><init>(II)V

    invoke-interface {p0, v0}, Lcom/oplus/camera/ui/preview/a/t;->a(Landroid/graphics/Point;)V

    :cond_0
    return-void
.end method

.method public b(IILandroid/graphics/RectF;)V
    .locals 2

    .line 16426
    iget-object v0, p0, Lcom/oplus/camera/CameraManager$51;->a:Lcom/oplus/camera/CameraManager;

    const/4 v1, 0x0

    invoke-virtual {v0, v1, p1, p2}, Lcom/oplus/camera/CameraManager;->a(ZII)V

    .line 16428
    iget-object p1, p0, Lcom/oplus/camera/CameraManager$51;->a:Lcom/oplus/camera/CameraManager;

    invoke-static {p1}, Lcom/oplus/camera/CameraManager;->f(Lcom/oplus/camera/CameraManager;)Lcom/oplus/camera/e/d;

    move-result-object p1

    sget-object p2, Lcom/oplus/ocs/camera/CameraParameter;->AF_REGIONS:Lcom/oplus/ocs/camera/CameraParameter$PreviewKey;

    invoke-interface {p1, p2, p3}, Lcom/oplus/camera/e/d;->a(Lcom/oplus/ocs/camera/CameraParameter$PreviewKey;Ljava/lang/Object;)V

    .line 16429
    iget-object p0, p0, Lcom/oplus/camera/CameraManager$51;->a:Lcom/oplus/camera/CameraManager;

    invoke-static {p0}, Lcom/oplus/camera/CameraManager;->f(Lcom/oplus/camera/CameraManager;)Lcom/oplus/camera/e/d;

    move-result-object p0

    const/4 p1, 0x0

    invoke-interface {p0, p1}, Lcom/oplus/camera/e/d;->a(Lcom/oplus/camera/e/d$c;)V

    return-void
.end method

.method public b(Z)V
    .locals 0

    .line 16337
    iget-object p0, p0, Lcom/oplus/camera/CameraManager$51;->a:Lcom/oplus/camera/CameraManager;

    invoke-static {p0, p1}, Lcom/oplus/camera/CameraManager;->L(Lcom/oplus/camera/CameraManager;Z)V

    return-void
.end method

.method public b(ZZ)V
    .locals 1

    .line 16330
    iget-object v0, p0, Lcom/oplus/camera/CameraManager$51;->a:Lcom/oplus/camera/CameraManager;

    invoke-static {v0}, Lcom/oplus/camera/CameraManager;->g(Lcom/oplus/camera/CameraManager;)Lcom/oplus/camera/ui/d;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 16331
    iget-object p0, p0, Lcom/oplus/camera/CameraManager$51;->a:Lcom/oplus/camera/CameraManager;

    invoke-static {p0}, Lcom/oplus/camera/CameraManager;->g(Lcom/oplus/camera/CameraManager;)Lcom/oplus/camera/ui/d;

    move-result-object p0

    invoke-virtual {p0, p1, p2}, Lcom/oplus/camera/ui/d;->d(ZZ)V

    :cond_0
    return-void
.end method

.method public b([Landroid/hardware/camera2/params/MeteringRectangle;)V
    .locals 2

    if-eqz p1, :cond_0

    .line 16443
    iget-object v0, p0, Lcom/oplus/camera/CameraManager$51;->a:Lcom/oplus/camera/CameraManager;

    invoke-static {v0}, Lcom/oplus/camera/CameraManager;->f(Lcom/oplus/camera/CameraManager;)Lcom/oplus/camera/e/d;

    move-result-object v0

    sget-object v1, Landroid/hardware/camera2/CaptureRequest;->CONTROL_AF_REGIONS:Landroid/hardware/camera2/CaptureRequest$Key;

    invoke-interface {v0, v1, p1}, Lcom/oplus/camera/e/d;->c(Landroid/hardware/camera2/CaptureRequest$Key;Ljava/lang/Object;)V

    .line 16444
    iget-object p0, p0, Lcom/oplus/camera/CameraManager$51;->a:Lcom/oplus/camera/CameraManager;

    invoke-static {p0}, Lcom/oplus/camera/CameraManager;->f(Lcom/oplus/camera/CameraManager;)Lcom/oplus/camera/e/d;

    move-result-object p0

    const/4 p1, 0x0

    invoke-interface {p0, p1}, Lcom/oplus/camera/e/d;->a(Lcom/oplus/camera/e/d$c;)V

    :cond_0
    return-void
.end method

.method public b()Z
    .locals 0

    .line 16230
    iget-object p0, p0, Lcom/oplus/camera/CameraManager$51;->a:Lcom/oplus/camera/CameraManager;

    invoke-virtual {p0}, Lcom/oplus/camera/CameraManager;->L()Z

    move-result p0

    return p0
.end method

.method public c(ZZ)V
    .locals 0

    .line 16549
    iget-object p0, p0, Lcom/oplus/camera/CameraManager$51;->a:Lcom/oplus/camera/CameraManager;

    invoke-virtual {p0, p1, p2}, Lcom/oplus/camera/CameraManager;->c(ZZ)V

    return-void
.end method

.method public c()Z
    .locals 1

    .line 16253
    iget-object p0, p0, Lcom/oplus/camera/CameraManager$51;->a:Lcom/oplus/camera/CameraManager;

    invoke-static {p0}, Lcom/oplus/camera/CameraManager;->bh(Lcom/oplus/camera/CameraManager;)F

    move-result v0

    invoke-static {p0, v0}, Lcom/oplus/camera/CameraManager;->b(Lcom/oplus/camera/CameraManager;F)Z

    move-result p0

    return p0
.end method

.method public d()Z
    .locals 1

    .line 16258
    iget-object v0, p0, Lcom/oplus/camera/CameraManager$51;->a:Lcom/oplus/camera/CameraManager;

    invoke-static {v0}, Lcom/oplus/camera/CameraManager;->g(Lcom/oplus/camera/CameraManager;)Lcom/oplus/camera/ui/d;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 16259
    iget-object p0, p0, Lcom/oplus/camera/CameraManager$51;->a:Lcom/oplus/camera/CameraManager;

    invoke-static {p0}, Lcom/oplus/camera/CameraManager;->g(Lcom/oplus/camera/CameraManager;)Lcom/oplus/camera/ui/d;

    move-result-object p0

    invoke-virtual {p0}, Lcom/oplus/camera/ui/d;->e()Z

    move-result p0

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public e()Z
    .locals 1

    .line 16267
    iget-object v0, p0, Lcom/oplus/camera/CameraManager$51;->a:Lcom/oplus/camera/CameraManager;

    invoke-static {v0}, Lcom/oplus/camera/CameraManager;->i(Lcom/oplus/camera/CameraManager;)Lcom/oplus/camera/capmode/ModeManager;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 16268
    iget-object p0, p0, Lcom/oplus/camera/CameraManager$51;->a:Lcom/oplus/camera/CameraManager;

    invoke-static {p0}, Lcom/oplus/camera/CameraManager;->i(Lcom/oplus/camera/CameraManager;)Lcom/oplus/camera/capmode/ModeManager;

    move-result-object p0

    invoke-virtual {p0}, Lcom/oplus/camera/capmode/ModeManager;->bm()Z

    move-result p0

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public f()V
    .locals 1

    .line 16276
    iget-object v0, p0, Lcom/oplus/camera/CameraManager$51;->a:Lcom/oplus/camera/CameraManager;

    invoke-static {v0}, Lcom/oplus/camera/CameraManager;->g(Lcom/oplus/camera/CameraManager;)Lcom/oplus/camera/ui/d;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 16277
    iget-object v0, p0, Lcom/oplus/camera/CameraManager$51;->a:Lcom/oplus/camera/CameraManager;

    invoke-static {v0}, Lcom/oplus/camera/CameraManager;->g(Lcom/oplus/camera/CameraManager;)Lcom/oplus/camera/ui/d;

    move-result-object v0

    iget-object p0, p0, Lcom/oplus/camera/CameraManager$51;->a:Lcom/oplus/camera/CameraManager;

    invoke-static {p0}, Lcom/oplus/camera/CameraManager;->M(Lcom/oplus/camera/CameraManager;)Z

    move-result p0

    invoke-virtual {v0, p0}, Lcom/oplus/camera/ui/d;->ab(Z)V

    :cond_0
    return-void
.end method

.method public g()V
    .locals 0

    .line 16283
    iget-object p0, p0, Lcom/oplus/camera/CameraManager$51;->a:Lcom/oplus/camera/CameraManager;

    invoke-static {p0}, Lcom/oplus/camera/CameraManager;->g(Lcom/oplus/camera/CameraManager;)Lcom/oplus/camera/ui/d;

    move-result-object p0

    invoke-virtual {p0}, Lcom/oplus/camera/ui/d;->cc()V

    return-void
.end method

.method public h()V
    .locals 1

    .line 16288
    iget-object v0, p0, Lcom/oplus/camera/CameraManager$51;->a:Lcom/oplus/camera/CameraManager;

    invoke-static {v0}, Lcom/oplus/camera/CameraManager;->g(Lcom/oplus/camera/CameraManager;)Lcom/oplus/camera/ui/d;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 16289
    iget-object p0, p0, Lcom/oplus/camera/CameraManager$51;->a:Lcom/oplus/camera/CameraManager;

    invoke-static {p0}, Lcom/oplus/camera/CameraManager;->g(Lcom/oplus/camera/CameraManager;)Lcom/oplus/camera/ui/d;

    move-result-object p0

    invoke-virtual {p0}, Lcom/oplus/camera/ui/d;->cd()V

    :cond_0
    return-void
.end method

.method public i()V
    .locals 1

    .line 16295
    iget-object v0, p0, Lcom/oplus/camera/CameraManager$51;->a:Lcom/oplus/camera/CameraManager;

    invoke-static {v0}, Lcom/oplus/camera/CameraManager;->g(Lcom/oplus/camera/CameraManager;)Lcom/oplus/camera/ui/d;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 16296
    iget-object p0, p0, Lcom/oplus/camera/CameraManager$51;->a:Lcom/oplus/camera/CameraManager;

    invoke-static {p0}, Lcom/oplus/camera/CameraManager;->g(Lcom/oplus/camera/CameraManager;)Lcom/oplus/camera/ui/d;

    move-result-object p0

    invoke-virtual {p0}, Lcom/oplus/camera/ui/d;->ce()V

    :cond_0
    return-void
.end method

.method public j()Z
    .locals 0

    .line 16302
    iget-object p0, p0, Lcom/oplus/camera/CameraManager$51;->a:Lcom/oplus/camera/CameraManager;

    invoke-static {p0}, Lcom/oplus/camera/CameraManager;->i(Lcom/oplus/camera/CameraManager;)Lcom/oplus/camera/capmode/ModeManager;

    move-result-object p0

    invoke-virtual {p0}, Lcom/oplus/camera/capmode/ModeManager;->h()Z

    move-result p0

    return p0
.end method

.method public k()Z
    .locals 1

    .line 16342
    iget-object v0, p0, Lcom/oplus/camera/CameraManager$51;->a:Lcom/oplus/camera/CameraManager;

    invoke-static {v0}, Lcom/oplus/camera/CameraManager;->g(Lcom/oplus/camera/CameraManager;)Lcom/oplus/camera/ui/d;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 16343
    iget-object p0, p0, Lcom/oplus/camera/CameraManager$51;->a:Lcom/oplus/camera/CameraManager;

    invoke-static {p0}, Lcom/oplus/camera/CameraManager;->g(Lcom/oplus/camera/CameraManager;)Lcom/oplus/camera/ui/d;

    move-result-object p0

    invoke-virtual {p0}, Lcom/oplus/camera/ui/d;->bR()Z

    move-result p0

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public l()V
    .locals 1

    .line 16351
    iget-object p0, p0, Lcom/oplus/camera/CameraManager$51;->a:Lcom/oplus/camera/CameraManager;

    const-string v0, "2"

    invoke-static {p0, v0}, Lcom/oplus/camera/CameraManager;->d(Lcom/oplus/camera/CameraManager;Ljava/lang/String;)V

    return-void
.end method

.method public m()Z
    .locals 2

    .line 16356
    iget-object v0, p0, Lcom/oplus/camera/CameraManager$51;->a:Lcom/oplus/camera/CameraManager;

    invoke-static {v0}, Lcom/oplus/camera/CameraManager;->f(Lcom/oplus/camera/CameraManager;)Lcom/oplus/camera/e/d;

    move-result-object v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/oplus/camera/CameraManager$51;->a:Lcom/oplus/camera/CameraManager;

    invoke-static {v0}, Lcom/oplus/camera/CameraManager;->f(Lcom/oplus/camera/CameraManager;)Lcom/oplus/camera/e/d;

    move-result-object v0

    invoke-interface {v0}, Lcom/oplus/camera/e/d;->e()Lcom/oplus/camera/e/h;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 16357
    iget-object p0, p0, Lcom/oplus/camera/CameraManager$51;->a:Lcom/oplus/camera/CameraManager;

    invoke-static {p0}, Lcom/oplus/camera/CameraManager;->f(Lcom/oplus/camera/CameraManager;)Lcom/oplus/camera/e/d;

    move-result-object p0

    invoke-interface {p0}, Lcom/oplus/camera/e/d;->e()Lcom/oplus/camera/e/h;

    move-result-object p0

    invoke-virtual {p0}, Lcom/oplus/camera/e/h;->n()F

    move-result p0

    const/4 v0, 0x0

    invoke-static {p0, v0}, Ljava/lang/Float;->compare(FF)I

    move-result p0

    if-nez p0, :cond_0

    const/4 v1, 0x1

    :cond_0
    return v1
.end method

.method public n()Z
    .locals 0

    .line 16365
    iget-object p0, p0, Lcom/oplus/camera/CameraManager$51;->a:Lcom/oplus/camera/CameraManager;

    invoke-static {p0}, Lcom/oplus/camera/CameraManager;->i(Lcom/oplus/camera/CameraManager;)Lcom/oplus/camera/capmode/ModeManager;

    move-result-object p0

    invoke-virtual {p0}, Lcom/oplus/camera/capmode/ModeManager;->aV()Z

    move-result p0

    return p0
.end method

.method public o()Z
    .locals 0

    .line 16370
    iget-object p0, p0, Lcom/oplus/camera/CameraManager$51;->a:Lcom/oplus/camera/CameraManager;

    invoke-static {p0}, Lcom/oplus/camera/CameraManager;->g(Lcom/oplus/camera/CameraManager;)Lcom/oplus/camera/ui/d;

    move-result-object p0

    invoke-virtual {p0}, Lcom/oplus/camera/ui/d;->by()Z

    move-result p0

    return p0
.end method

.method public p()Z
    .locals 1

    .line 16459
    iget-object v0, p0, Lcom/oplus/camera/CameraManager$51;->a:Lcom/oplus/camera/CameraManager;

    invoke-static {v0}, Lcom/oplus/camera/CameraManager;->i(Lcom/oplus/camera/CameraManager;)Lcom/oplus/camera/capmode/ModeManager;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 16460
    iget-object p0, p0, Lcom/oplus/camera/CameraManager$51;->a:Lcom/oplus/camera/CameraManager;

    invoke-static {p0}, Lcom/oplus/camera/CameraManager;->i(Lcom/oplus/camera/CameraManager;)Lcom/oplus/camera/capmode/ModeManager;

    move-result-object p0

    const-string v0, "pref_manual_exposure_key"

    invoke-virtual {p0, v0}, Lcom/oplus/camera/capmode/ModeManager;->j(Ljava/lang/String;)Z

    move-result p0

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public q()Z
    .locals 1

    .line 16468
    iget-object v0, p0, Lcom/oplus/camera/CameraManager$51;->a:Lcom/oplus/camera/CameraManager;

    invoke-static {v0}, Lcom/oplus/camera/CameraManager;->f(Lcom/oplus/camera/CameraManager;)Lcom/oplus/camera/e/d;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/oplus/camera/CameraManager$51;->a:Lcom/oplus/camera/CameraManager;

    invoke-static {v0}, Lcom/oplus/camera/CameraManager;->f(Lcom/oplus/camera/CameraManager;)Lcom/oplus/camera/e/d;

    move-result-object v0

    invoke-interface {v0}, Lcom/oplus/camera/e/d;->e()Lcom/oplus/camera/e/h;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 16469
    iget-object p0, p0, Lcom/oplus/camera/CameraManager$51;->a:Lcom/oplus/camera/CameraManager;

    invoke-static {p0}, Lcom/oplus/camera/CameraManager;->f(Lcom/oplus/camera/CameraManager;)Lcom/oplus/camera/e/d;

    move-result-object p0

    invoke-interface {p0}, Lcom/oplus/camera/e/d;->e()Lcom/oplus/camera/e/h;

    move-result-object p0

    invoke-virtual {p0}, Lcom/oplus/camera/e/h;->t()Z

    move-result p0

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public r()Z
    .locals 2

    .line 16477
    iget-object v0, p0, Lcom/oplus/camera/CameraManager$51;->a:Lcom/oplus/camera/CameraManager;

    invoke-static {v0}, Lcom/oplus/camera/CameraManager;->i(Lcom/oplus/camera/CameraManager;)Lcom/oplus/camera/capmode/ModeManager;

    move-result-object v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/oplus/camera/CameraManager$51;->a:Lcom/oplus/camera/CameraManager;

    invoke-static {v0}, Lcom/oplus/camera/CameraManager;->i(Lcom/oplus/camera/CameraManager;)Lcom/oplus/camera/capmode/ModeManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/oplus/camera/capmode/ModeManager;->dE()Z

    move-result v0

    if-nez v0, :cond_0

    return v1

    .line 16481
    :cond_0
    iget-object v0, p0, Lcom/oplus/camera/CameraManager$51;->a:Lcom/oplus/camera/CameraManager;

    invoke-static {v0}, Lcom/oplus/camera/CameraManager;->f(Lcom/oplus/camera/CameraManager;)Lcom/oplus/camera/e/d;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/oplus/camera/CameraManager$51;->a:Lcom/oplus/camera/CameraManager;

    invoke-static {v0}, Lcom/oplus/camera/CameraManager;->f(Lcom/oplus/camera/CameraManager;)Lcom/oplus/camera/e/d;

    move-result-object v0

    invoke-interface {v0}, Lcom/oplus/camera/e/d;->e()Lcom/oplus/camera/e/h;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 16482
    iget-object p0, p0, Lcom/oplus/camera/CameraManager$51;->a:Lcom/oplus/camera/CameraManager;

    invoke-static {p0}, Lcom/oplus/camera/CameraManager;->f(Lcom/oplus/camera/CameraManager;)Lcom/oplus/camera/e/d;

    move-result-object p0

    invoke-interface {p0}, Lcom/oplus/camera/e/d;->e()Lcom/oplus/camera/e/h;

    move-result-object p0

    invoke-virtual {p0}, Lcom/oplus/camera/e/h;->s()Z

    move-result p0

    return p0

    :cond_1
    return v1
.end method

.method public s()V
    .locals 0

    .line 16490
    iget-object p0, p0, Lcom/oplus/camera/CameraManager$51;->a:Lcom/oplus/camera/CameraManager;

    invoke-virtual {p0}, Lcom/oplus/camera/CameraManager;->f()V

    return-void
.end method

.method public t()V
    .locals 1

    .line 16495
    iget-object v0, p0, Lcom/oplus/camera/CameraManager$51;->a:Lcom/oplus/camera/CameraManager;

    invoke-static {v0}, Lcom/oplus/camera/CameraManager;->f(Lcom/oplus/camera/CameraManager;)Lcom/oplus/camera/e/d;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 16496
    iget-object p0, p0, Lcom/oplus/camera/CameraManager$51;->a:Lcom/oplus/camera/CameraManager;

    invoke-static {p0}, Lcom/oplus/camera/CameraManager;->f(Lcom/oplus/camera/CameraManager;)Lcom/oplus/camera/e/d;

    move-result-object p0

    invoke-interface {p0}, Lcom/oplus/camera/e/d;->o()V

    :cond_0
    return-void
.end method

.method public u()Z
    .locals 0

    .line 16502
    iget-object p0, p0, Lcom/oplus/camera/CameraManager$51;->a:Lcom/oplus/camera/CameraManager;

    invoke-virtual {p0}, Lcom/oplus/camera/CameraManager;->d()Z

    move-result p0

    return p0
.end method

.method public v()Z
    .locals 0

    .line 16507
    iget-object p0, p0, Lcom/oplus/camera/CameraManager$51;->a:Lcom/oplus/camera/CameraManager;

    invoke-virtual {p0}, Lcom/oplus/camera/CameraManager;->av()Z

    move-result p0

    return p0
.end method

.method public w()I
    .locals 0

    .line 16521
    iget-object p0, p0, Lcom/oplus/camera/CameraManager$51;->a:Lcom/oplus/camera/CameraManager;

    invoke-virtual {p0}, Lcom/oplus/camera/CameraManager;->g()I

    move-result p0

    return p0
.end method

.method public x()I
    .locals 1

    .line 16526
    iget-object v0, p0, Lcom/oplus/camera/CameraManager$51;->a:Lcom/oplus/camera/CameraManager;

    invoke-static {v0}, Lcom/oplus/camera/CameraManager;->aF(Lcom/oplus/camera/CameraManager;)Lcom/oplus/camera/e/h;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 16527
    iget-object p0, p0, Lcom/oplus/camera/CameraManager$51;->a:Lcom/oplus/camera/CameraManager;

    invoke-static {p0}, Lcom/oplus/camera/CameraManager;->aF(Lcom/oplus/camera/CameraManager;)Lcom/oplus/camera/e/h;

    move-result-object p0

    invoke-virtual {p0}, Lcom/oplus/camera/e/h;->q()I

    move-result p0

    return p0

    .line 16530
    :cond_0
    invoke-static {}, Lcom/oplus/camera/a;->c()I

    move-result p0

    return p0
.end method

.method public y()I
    .locals 1

    .line 16535
    iget-object v0, p0, Lcom/oplus/camera/CameraManager$51;->a:Lcom/oplus/camera/CameraManager;

    invoke-static {v0}, Lcom/oplus/camera/CameraManager;->aF(Lcom/oplus/camera/CameraManager;)Lcom/oplus/camera/e/h;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 16536
    iget-object p0, p0, Lcom/oplus/camera/CameraManager$51;->a:Lcom/oplus/camera/CameraManager;

    invoke-static {p0}, Lcom/oplus/camera/CameraManager;->aF(Lcom/oplus/camera/CameraManager;)Lcom/oplus/camera/e/h;

    move-result-object p0

    invoke-virtual {p0}, Lcom/oplus/camera/e/h;->p()I

    move-result p0

    return p0

    .line 16539
    :cond_0
    invoke-static {}, Lcom/oplus/camera/a;->c()I

    move-result p0

    return p0
.end method

.method public z()Landroid/graphics/Rect;
    .locals 1

    .line 16544
    iget-object p0, p0, Lcom/oplus/camera/CameraManager$51;->a:Lcom/oplus/camera/CameraManager;

    invoke-virtual {p0}, Lcom/oplus/camera/CameraManager;->aO()F

    move-result v0

    invoke-virtual {p0, v0}, Lcom/oplus/camera/CameraManager;->c(F)Landroid/graphics/Rect;

    move-result-object p0

    return-object p0
.end method
