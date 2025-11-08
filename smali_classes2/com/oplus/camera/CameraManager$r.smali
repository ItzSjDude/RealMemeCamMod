.class Lcom/oplus/camera/CameraManager$r;
.super Ljava/lang/Object;
.source "CameraManager.java"

# interfaces
.implements Landroid/view/GestureDetector$OnGestureListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/oplus/camera/CameraManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "r"
.end annotation


# instance fields
.field final synthetic a:Lcom/oplus/camera/CameraManager;

.field private b:Z

.field private c:Z


# direct methods
.method private constructor <init>(Lcom/oplus/camera/CameraManager;)V
    .locals 0

    .line 5120
    iput-object p1, p0, Lcom/oplus/camera/CameraManager$r;->a:Lcom/oplus/camera/CameraManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 p1, 0x0

    .line 5121
    iput-boolean p1, p0, Lcom/oplus/camera/CameraManager$r;->b:Z

    return-void
.end method

.method synthetic constructor <init>(Lcom/oplus/camera/CameraManager;Lcom/oplus/camera/CameraManager$1;)V
    .locals 0

    .line 5120
    invoke-direct {p0, p1}, Lcom/oplus/camera/CameraManager$r;-><init>(Lcom/oplus/camera/CameraManager;)V

    return-void
.end method

.method private a()Z
    .locals 3

    .line 5604
    iget-object v0, p0, Lcom/oplus/camera/CameraManager$r;->a:Lcom/oplus/camera/CameraManager;

    invoke-static {v0}, Lcom/oplus/camera/CameraManager;->e(Lcom/oplus/camera/CameraManager;)Z

    move-result v0

    const/4 v1, 0x1

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/oplus/camera/CameraManager$r;->a:Lcom/oplus/camera/CameraManager;

    .line 5605
    invoke-static {v0}, Lcom/oplus/camera/CameraManager;->f(Lcom/oplus/camera/CameraManager;)Lcom/oplus/camera/e/d;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/oplus/camera/CameraManager$r;->a:Lcom/oplus/camera/CameraManager;

    .line 5606
    invoke-virtual {v0}, Lcom/oplus/camera/CameraManager;->e()Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/oplus/camera/CameraManager$r;->a:Lcom/oplus/camera/CameraManager;

    .line 5607
    invoke-static {v0}, Lcom/oplus/camera/CameraManager;->E(Lcom/oplus/camera/CameraManager;)Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/oplus/camera/CameraManager$r;->a:Lcom/oplus/camera/CameraManager;

    .line 5608
    invoke-virtual {v0}, Lcom/oplus/camera/CameraManager;->V()Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/oplus/camera/CameraManager$r;->a:Lcom/oplus/camera/CameraManager;

    .line 5609
    invoke-virtual {v0}, Lcom/oplus/camera/CameraManager;->T()Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    return v1

    .line 5610
    :cond_1
    :goto_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "checkCanTap, mbPaused: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/oplus/camera/CameraManager$r;->a:Lcom/oplus/camera/CameraManager;

    invoke-static {v2}, Lcom/oplus/camera/CameraManager;->e(Lcom/oplus/camera/CameraManager;)Z

    move-result v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, ", mbSwitchingCamera: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/oplus/camera/CameraManager$r;->a:Lcom/oplus/camera/CameraManager;

    .line 5611
    invoke-static {v2}, Lcom/oplus/camera/CameraManager;->E(Lcom/oplus/camera/CameraManager;)Z

    move-result v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, ", isSnapShotProgress: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/oplus/camera/CameraManager$r;->a:Lcom/oplus/camera/CameraManager;

    .line 5612
    invoke-virtual {v2}, Lcom/oplus/camera/CameraManager;->V()Z

    move-result v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, ", !isPreviewStarted: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/oplus/camera/CameraManager$r;->a:Lcom/oplus/camera/CameraManager;

    .line 5613
    invoke-virtual {p0}, Lcom/oplus/camera/CameraManager;->T()Z

    move-result p0

    xor-int/2addr p0, v1

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string v0, "CameraManager"

    .line 5610
    invoke-static {v0, p0}, Lcom/oplus/camera/e;->a(Ljava/lang/String;Ljava/lang/String;)V

    const/4 p0, 0x0

    return p0
.end method

.method private a(FFFF)Z
    .locals 7

    .line 5288
    iget-object v0, p0, Lcom/oplus/camera/CameraManager$r;->a:Lcom/oplus/camera/CameraManager;

    invoke-static {v0}, Lcom/oplus/camera/CameraManager;->i(Lcom/oplus/camera/CameraManager;)Lcom/oplus/camera/capmode/ModeManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/oplus/camera/capmode/ModeManager;->aV()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_7

    iget-object v0, p0, Lcom/oplus/camera/CameraManager$r;->a:Lcom/oplus/camera/CameraManager;

    .line 5289
    invoke-static {v0}, Lcom/oplus/camera/CameraManager;->i(Lcom/oplus/camera/CameraManager;)Lcom/oplus/camera/capmode/ModeManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/oplus/camera/capmode/ModeManager;->W()Z

    move-result v0

    if-nez v0, :cond_7

    iget-object v0, p0, Lcom/oplus/camera/CameraManager$r;->a:Lcom/oplus/camera/CameraManager;

    .line 5290
    invoke-static {v0}, Lcom/oplus/camera/CameraManager;->E(Lcom/oplus/camera/CameraManager;)Z

    move-result v0

    if-nez v0, :cond_7

    iget-object v0, p0, Lcom/oplus/camera/CameraManager$r;->a:Lcom/oplus/camera/CameraManager;

    .line 5291
    invoke-static {v0}, Lcom/oplus/camera/CameraManager;->i(Lcom/oplus/camera/CameraManager;)Lcom/oplus/camera/capmode/ModeManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/oplus/camera/capmode/ModeManager;->X()Z

    move-result v0

    if-nez v0, :cond_7

    iget-object v0, p0, Lcom/oplus/camera/CameraManager$r;->a:Lcom/oplus/camera/CameraManager;

    .line 5292
    invoke-static {v0}, Lcom/oplus/camera/CameraManager;->i(Lcom/oplus/camera/CameraManager;)Lcom/oplus/camera/capmode/ModeManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/oplus/camera/capmode/ModeManager;->cb()Z

    move-result v0

    if-nez v0, :cond_7

    .line 5293
    iget-object v0, p0, Lcom/oplus/camera/CameraManager$r;->a:Lcom/oplus/camera/CameraManager;

    invoke-static {v0}, Lcom/oplus/camera/CameraManager;->aw(Lcom/oplus/camera/CameraManager;)Landroid/view/VelocityTracker;

    move-result-object v0

    const/16 v2, 0x190

    invoke-virtual {v0, v2}, Landroid/view/VelocityTracker;->computeCurrentVelocity(I)V

    .line 5295
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "handleScrollNormal, xVelocity: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/oplus/camera/CameraManager$r;->a:Lcom/oplus/camera/CameraManager;

    invoke-static {v2}, Lcom/oplus/camera/CameraManager;->aw(Lcom/oplus/camera/CameraManager;)Landroid/view/VelocityTracker;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/VelocityTracker;->getXVelocity()F

    move-result v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v2, ", yVelocity: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/oplus/camera/CameraManager$r;->a:Lcom/oplus/camera/CameraManager;

    .line 5296
    invoke-static {v2}, Lcom/oplus/camera/CameraManager;->aw(Lcom/oplus/camera/CameraManager;)Landroid/view/VelocityTracker;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/VelocityTracker;->getYVelocity()F

    move-result v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v2, "CameraManager"

    .line 5295
    invoke-static {v2, v0}, Lcom/oplus/camera/e;->a(Ljava/lang/String;Ljava/lang/String;)V

    sub-float v0, p3, p4

    .line 5298
    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v2

    sub-float v3, p1, p2

    invoke-static {v3}, Ljava/lang/Math;->abs(F)F

    move-result v4

    cmpg-float v2, v2, v4

    const v4, 0x3f147ae1    # 0.58f

    const/4 v5, 0x1

    const/4 v6, 0x3

    if-gez v2, :cond_3

    .line 5299
    iget-object p3, p0, Lcom/oplus/camera/CameraManager$r;->a:Lcom/oplus/camera/CameraManager;

    invoke-static {p3}, Lcom/oplus/camera/CameraManager;->aw(Lcom/oplus/camera/CameraManager;)Landroid/view/VelocityTracker;

    move-result-object p3

    invoke-virtual {p3}, Landroid/view/VelocityTracker;->getXVelocity()F

    move-result p3

    .line 5300
    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result p4

    invoke-static {v3}, Ljava/lang/Math;->abs(F)F

    move-result v0

    div-float/2addr p4, v0

    .line 5302
    iget-object v0, p0, Lcom/oplus/camera/CameraManager$r;->a:Lcom/oplus/camera/CameraManager;

    invoke-static {v0}, Lcom/oplus/camera/CameraManager;->k(Lcom/oplus/camera/CameraManager;)Lcom/oplus/camera/entry/b;

    move-result-object v0

    invoke-virtual {v0}, Lcom/oplus/camera/entry/b;->J()I

    move-result v0

    if-eq v6, v0, :cond_1

    .line 5303
    invoke-static {p4, v4}, Ljava/lang/Float;->compare(FF)I

    move-result v0

    if-le v5, v0, :cond_1

    iget-object v0, p0, Lcom/oplus/camera/CameraManager$r;->a:Lcom/oplus/camera/CameraManager;

    .line 5304
    invoke-static {v0}, Lcom/oplus/camera/CameraManager;->ax(Lcom/oplus/camera/CameraManager;)I

    move-result v0

    int-to-float v0, v0

    cmpl-float v0, v3, v0

    if-gtz v0, :cond_0

    iget-object v0, p0, Lcom/oplus/camera/CameraManager$r;->a:Lcom/oplus/camera/CameraManager;

    .line 5305
    invoke-static {v0}, Lcom/oplus/camera/CameraManager;->ay(Lcom/oplus/camera/CameraManager;)I

    move-result v0

    neg-int v0, v0

    int-to-float v0, v0

    cmpg-float v0, p3, v0

    if-gez v0, :cond_1

    iget-object v0, p0, Lcom/oplus/camera/CameraManager$r;->a:Lcom/oplus/camera/CameraManager;

    invoke-static {v0}, Lcom/oplus/camera/CameraManager;->az(Lcom/oplus/camera/CameraManager;)I

    move-result v0

    int-to-float v0, v0

    cmpl-float v0, v3, v0

    if-lez v0, :cond_1

    .line 5306
    :cond_0
    iget-object p1, p0, Lcom/oplus/camera/CameraManager$r;->a:Lcom/oplus/camera/CameraManager;

    invoke-static {p1, v5}, Lcom/oplus/camera/CameraManager;->c(Lcom/oplus/camera/CameraManager;I)I

    .line 5307
    iput-boolean v1, p0, Lcom/oplus/camera/CameraManager$r;->c:Z

    return v1

    .line 5310
    :cond_1
    iget-object v0, p0, Lcom/oplus/camera/CameraManager$r;->a:Lcom/oplus/camera/CameraManager;

    invoke-static {v0}, Lcom/oplus/camera/CameraManager;->k(Lcom/oplus/camera/CameraManager;)Lcom/oplus/camera/entry/b;

    move-result-object v0

    invoke-virtual {v0}, Lcom/oplus/camera/entry/b;->J()I

    move-result v0

    if-eq v6, v0, :cond_7

    .line 5311
    invoke-static {p4, v4}, Ljava/lang/Float;->compare(FF)I

    move-result p4

    if-le v5, p4, :cond_7

    sub-float/2addr p2, p1

    iget-object p1, p0, Lcom/oplus/camera/CameraManager$r;->a:Lcom/oplus/camera/CameraManager;

    .line 5312
    invoke-static {p1}, Lcom/oplus/camera/CameraManager;->ax(Lcom/oplus/camera/CameraManager;)I

    move-result p1

    int-to-float p1, p1

    cmpl-float p1, p2, p1

    if-gtz p1, :cond_2

    iget-object p1, p0, Lcom/oplus/camera/CameraManager$r;->a:Lcom/oplus/camera/CameraManager;

    .line 5313
    invoke-static {p1}, Lcom/oplus/camera/CameraManager;->ay(Lcom/oplus/camera/CameraManager;)I

    move-result p1

    int-to-float p1, p1

    cmpl-float p1, p3, p1

    if-lez p1, :cond_7

    iget-object p1, p0, Lcom/oplus/camera/CameraManager$r;->a:Lcom/oplus/camera/CameraManager;

    invoke-static {p1}, Lcom/oplus/camera/CameraManager;->az(Lcom/oplus/camera/CameraManager;)I

    move-result p1

    int-to-float p1, p1

    cmpl-float p1, p2, p1

    if-lez p1, :cond_7

    .line 5314
    :cond_2
    iget-object p1, p0, Lcom/oplus/camera/CameraManager$r;->a:Lcom/oplus/camera/CameraManager;

    const/4 p2, 0x2

    invoke-static {p1, p2}, Lcom/oplus/camera/CameraManager;->c(Lcom/oplus/camera/CameraManager;I)I

    .line 5315
    iput-boolean v1, p0, Lcom/oplus/camera/CameraManager$r;->c:Z

    return v1

    .line 5320
    :cond_3
    iget-object p1, p0, Lcom/oplus/camera/CameraManager$r;->a:Lcom/oplus/camera/CameraManager;

    invoke-virtual {p1}, Lcom/oplus/camera/CameraManager;->U()Z

    move-result p1

    if-nez p1, :cond_7

    iget-object p1, p0, Lcom/oplus/camera/CameraManager$r;->a:Lcom/oplus/camera/CameraManager;

    invoke-static {p1}, Lcom/oplus/camera/CameraManager;->D(Lcom/oplus/camera/CameraManager;)Lcom/oplus/camera/ui/preview/o;

    move-result-object p1

    invoke-virtual {p1}, Lcom/oplus/camera/ui/preview/o;->A()Z

    move-result p1

    if-nez p1, :cond_7

    iget-object p1, p0, Lcom/oplus/camera/CameraManager$r;->a:Lcom/oplus/camera/CameraManager;

    invoke-static {p1}, Lcom/oplus/camera/CameraManager;->D(Lcom/oplus/camera/CameraManager;)Lcom/oplus/camera/ui/preview/o;

    move-result-object p1

    invoke-virtual {p1}, Lcom/oplus/camera/ui/preview/o;->w()Z

    move-result p1

    if-nez p1, :cond_7

    .line 5321
    iget-object p1, p0, Lcom/oplus/camera/CameraManager$r;->a:Lcom/oplus/camera/CameraManager;

    invoke-static {p1}, Lcom/oplus/camera/CameraManager;->aw(Lcom/oplus/camera/CameraManager;)Landroid/view/VelocityTracker;

    move-result-object p1

    invoke-virtual {p1}, Landroid/view/VelocityTracker;->getYVelocity()F

    move-result p1

    .line 5322
    invoke-static {v3}, Ljava/lang/Math;->abs(F)F

    move-result p2

    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v2

    div-float/2addr p2, v2

    .line 5324
    iget-object v2, p0, Lcom/oplus/camera/CameraManager$r;->a:Lcom/oplus/camera/CameraManager;

    invoke-static {v2}, Lcom/oplus/camera/CameraManager;->k(Lcom/oplus/camera/CameraManager;)Lcom/oplus/camera/entry/b;

    move-result-object v2

    invoke-virtual {v2}, Lcom/oplus/camera/entry/b;->J()I

    move-result v2

    if-eq v6, v2, :cond_5

    .line 5325
    invoke-static {p2, v4}, Ljava/lang/Float;->compare(FF)I

    move-result v2

    if-le v5, v2, :cond_5

    sub-float/2addr p4, p3

    iget-object p3, p0, Lcom/oplus/camera/CameraManager$r;->a:Lcom/oplus/camera/CameraManager;

    .line 5326
    invoke-static {p3}, Lcom/oplus/camera/CameraManager;->ax(Lcom/oplus/camera/CameraManager;)I

    move-result p3

    int-to-float p3, p3

    cmpl-float p3, p4, p3

    if-gtz p3, :cond_4

    iget-object p3, p0, Lcom/oplus/camera/CameraManager$r;->a:Lcom/oplus/camera/CameraManager;

    .line 5327
    invoke-static {p3}, Lcom/oplus/camera/CameraManager;->ay(Lcom/oplus/camera/CameraManager;)I

    move-result p3

    neg-int p3, p3

    int-to-float p3, p3

    cmpg-float p3, p1, p3

    if-gez p3, :cond_5

    iget-object p3, p0, Lcom/oplus/camera/CameraManager$r;->a:Lcom/oplus/camera/CameraManager;

    .line 5328
    invoke-static {p3}, Lcom/oplus/camera/CameraManager;->az(Lcom/oplus/camera/CameraManager;)I

    move-result p3

    int-to-float p3, p3

    cmpl-float p3, p4, p3

    if-lez p3, :cond_5

    .line 5329
    :cond_4
    iget-object p1, p0, Lcom/oplus/camera/CameraManager$r;->a:Lcom/oplus/camera/CameraManager;

    invoke-static {p1, v6}, Lcom/oplus/camera/CameraManager;->c(Lcom/oplus/camera/CameraManager;I)I

    .line 5330
    iput-boolean v1, p0, Lcom/oplus/camera/CameraManager$r;->c:Z

    return v1

    .line 5333
    :cond_5
    iget-object p3, p0, Lcom/oplus/camera/CameraManager$r;->a:Lcom/oplus/camera/CameraManager;

    invoke-static {p3}, Lcom/oplus/camera/CameraManager;->k(Lcom/oplus/camera/CameraManager;)Lcom/oplus/camera/entry/b;

    move-result-object p3

    invoke-virtual {p3}, Lcom/oplus/camera/entry/b;->J()I

    move-result p3

    if-eq v6, p3, :cond_7

    .line 5334
    invoke-static {p2, v4}, Ljava/lang/Float;->compare(FF)I

    move-result p2

    if-le v5, p2, :cond_7

    iget-object p2, p0, Lcom/oplus/camera/CameraManager$r;->a:Lcom/oplus/camera/CameraManager;

    .line 5335
    invoke-static {p2}, Lcom/oplus/camera/CameraManager;->ax(Lcom/oplus/camera/CameraManager;)I

    move-result p2

    int-to-float p2, p2

    cmpl-float p2, v0, p2

    if-gtz p2, :cond_6

    iget-object p2, p0, Lcom/oplus/camera/CameraManager$r;->a:Lcom/oplus/camera/CameraManager;

    .line 5336
    invoke-static {p2}, Lcom/oplus/camera/CameraManager;->ay(Lcom/oplus/camera/CameraManager;)I

    move-result p2

    neg-int p2, p2

    int-to-float p2, p2

    cmpg-float p1, p1, p2

    if-gez p1, :cond_7

    iget-object p1, p0, Lcom/oplus/camera/CameraManager$r;->a:Lcom/oplus/camera/CameraManager;

    .line 5337
    invoke-static {p1}, Lcom/oplus/camera/CameraManager;->az(Lcom/oplus/camera/CameraManager;)I

    move-result p1

    int-to-float p1, p1

    cmpl-float p1, v0, p1

    if-lez p1, :cond_7

    .line 5338
    :cond_6
    iget-object p1, p0, Lcom/oplus/camera/CameraManager$r;->a:Lcom/oplus/camera/CameraManager;

    const/4 p2, 0x4

    invoke-static {p1, p2}, Lcom/oplus/camera/CameraManager;->c(Lcom/oplus/camera/CameraManager;I)I

    .line 5339
    iput-boolean v1, p0, Lcom/oplus/camera/CameraManager$r;->c:Z

    :cond_7
    return v1
.end method

.method private a(II)Z
    .locals 5

    .line 5574
    iget-object v0, p0, Lcom/oplus/camera/CameraManager$r;->a:Lcom/oplus/camera/CameraManager;

    invoke-static {v0}, Lcom/oplus/camera/CameraManager;->i(Lcom/oplus/camera/CameraManager;)Lcom/oplus/camera/capmode/ModeManager;

    move-result-object v0

    iget-object v1, p0, Lcom/oplus/camera/CameraManager$r;->a:Lcom/oplus/camera/CameraManager;

    invoke-static {v1}, Lcom/oplus/camera/CameraManager;->aF(Lcom/oplus/camera/CameraManager;)Lcom/oplus/camera/e/h;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/oplus/camera/capmode/ModeManager;->a(Lcom/oplus/camera/e/h;)Landroid/util/Size;

    move-result-object v0

    .line 5575
    invoke-virtual {v0}, Landroid/util/Size;->getHeight()I

    move-result v1

    .line 5576
    invoke-virtual {v0}, Landroid/util/Size;->getWidth()I

    move-result v0

    .line 5577
    iget-object v2, p0, Lcom/oplus/camera/CameraManager$r;->a:Lcom/oplus/camera/CameraManager;

    invoke-virtual {v2}, Lcom/oplus/camera/CameraManager;->aj()Lcom/oplus/camera/screen/b/a;

    move-result-object v2

    invoke-virtual {v2, v1, v0}, Lcom/oplus/camera/screen/b/a;->b(II)Landroid/graphics/Rect;

    move-result-object v0

    .line 5578
    iget-object v1, p0, Lcom/oplus/camera/CameraManager$r;->a:Lcom/oplus/camera/CameraManager;

    invoke-static {v1}, Lcom/oplus/camera/CameraManager;->g(Lcom/oplus/camera/CameraManager;)Lcom/oplus/camera/ui/d;

    move-result-object v1

    invoke-virtual {v1}, Lcom/oplus/camera/ui/d;->am()I

    move-result v1

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-lt p2, v1, :cond_0

    iget-object v1, p0, Lcom/oplus/camera/CameraManager$r;->a:Lcom/oplus/camera/CameraManager;

    invoke-static {v1}, Lcom/oplus/camera/CameraManager;->g(Lcom/oplus/camera/CameraManager;)Lcom/oplus/camera/ui/d;

    move-result-object v1

    invoke-virtual {v1}, Lcom/oplus/camera/ui/d;->an()I

    move-result v1

    if-gt p2, v1, :cond_0

    move v1, v2

    goto :goto_0

    :cond_0
    move v1, v3

    .line 5580
    :goto_0
    invoke-static {}, Lcom/oplus/camera/util/Util;->u()Z

    move-result v4

    if-eqz v4, :cond_1

    if-eqz v0, :cond_1

    .line 5581
    invoke-virtual {v0, p1, p2}, Landroid/graphics/Rect;->contains(II)Z

    move-result v1

    .line 5584
    :cond_1
    invoke-direct {p0}, Lcom/oplus/camera/CameraManager$r;->a()Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/oplus/camera/CameraManager$r;->a:Lcom/oplus/camera/CameraManager;

    .line 5585
    invoke-virtual {v0}, Lcom/oplus/camera/CameraManager;->aD()Z

    move-result v0

    if-eqz v0, :cond_2

    if-eqz v1, :cond_2

    iget-object v0, p0, Lcom/oplus/camera/CameraManager$r;->a:Lcom/oplus/camera/CameraManager;

    .line 5587
    invoke-virtual {v0}, Lcom/oplus/camera/CameraManager;->aE()Z

    move-result v0

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/oplus/camera/CameraManager$r;->a:Lcom/oplus/camera/CameraManager;

    .line 5588
    invoke-virtual {v0}, Lcom/oplus/camera/CameraManager;->T()Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/oplus/camera/CameraManager$r;->a:Lcom/oplus/camera/CameraManager;

    .line 5589
    invoke-static {v0}, Lcom/oplus/camera/CameraManager;->f(Lcom/oplus/camera/CameraManager;)Lcom/oplus/camera/e/d;

    move-result-object v0

    check-cast v0, Lcom/oplus/camera/e/f;

    invoke-virtual {v0}, Lcom/oplus/camera/e/f;->E()Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/oplus/camera/CameraManager$r;->a:Lcom/oplus/camera/CameraManager;

    .line 5590
    invoke-static {v0}, Lcom/oplus/camera/CameraManager;->aG(Lcom/oplus/camera/CameraManager;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 5591
    invoke-direct {p0}, Lcom/oplus/camera/CameraManager$r;->b()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 5592
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onDoubleClick, x:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, ", y: "

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p2, "CameraManager"

    invoke-static {p2, p1}, Lcom/oplus/camera/e;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 5594
    iget-object p1, p0, Lcom/oplus/camera/CameraManager$r;->a:Lcom/oplus/camera/CameraManager;

    invoke-static {p1}, Lcom/oplus/camera/CameraManager;->aH(Lcom/oplus/camera/CameraManager;)V

    .line 5595
    iget-object p0, p0, Lcom/oplus/camera/CameraManager$r;->a:Lcom/oplus/camera/CameraManager;

    const-string p1, "9"

    invoke-static {p0, p1}, Lcom/oplus/camera/CameraManager;->d(Lcom/oplus/camera/CameraManager;Ljava/lang/String;)V

    return v2

    :cond_2
    return v3
.end method

.method private b()Z
    .locals 1

    .line 5622
    iget-object v0, p0, Lcom/oplus/camera/CameraManager$r;->a:Lcom/oplus/camera/CameraManager;

    invoke-static {v0}, Lcom/oplus/camera/CameraManager;->g(Lcom/oplus/camera/CameraManager;)Lcom/oplus/camera/ui/d;

    move-result-object v0

    invoke-virtual {v0}, Lcom/oplus/camera/ui/d;->c()Lcom/oplus/camera/ui/preview/h;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/oplus/camera/CameraManager$r;->a:Lcom/oplus/camera/CameraManager;

    .line 5623
    invoke-static {v0}, Lcom/oplus/camera/CameraManager;->g(Lcom/oplus/camera/CameraManager;)Lcom/oplus/camera/ui/d;

    move-result-object v0

    invoke-virtual {v0}, Lcom/oplus/camera/ui/d;->c()Lcom/oplus/camera/ui/preview/h;

    move-result-object v0

    invoke-virtual {v0}, Lcom/oplus/camera/ui/preview/h;->u()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object p0, p0, Lcom/oplus/camera/CameraManager$r;->a:Lcom/oplus/camera/CameraManager;

    .line 5624
    invoke-static {p0}, Lcom/oplus/camera/CameraManager;->g(Lcom/oplus/camera/CameraManager;)Lcom/oplus/camera/ui/d;

    move-result-object p0

    invoke-virtual {p0}, Lcom/oplus/camera/ui/d;->c()Lcom/oplus/camera/ui/preview/h;

    move-result-object p0

    invoke-virtual {p0}, Lcom/oplus/camera/ui/preview/h;->v()Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method private b(FFFF)Z
    .locals 10

    sub-float v0, p2, p1

    sub-float v1, p4, p3

    .line 5353
    iget-object v2, p0, Lcom/oplus/camera/CameraManager$r;->a:Lcom/oplus/camera/CameraManager;

    invoke-static {v2}, Lcom/oplus/camera/CameraManager;->aw(Lcom/oplus/camera/CameraManager;)Landroid/view/VelocityTracker;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/VelocityTracker;->getXVelocity()F

    move-result v2

    .line 5354
    iget-object v3, p0, Lcom/oplus/camera/CameraManager$r;->a:Lcom/oplus/camera/CameraManager;

    invoke-static {v3}, Lcom/oplus/camera/CameraManager;->aw(Lcom/oplus/camera/CameraManager;)Landroid/view/VelocityTracker;

    move-result-object v3

    invoke-virtual {v3}, Landroid/view/VelocityTracker;->getYVelocity()F

    move-result v3

    .line 5355
    iget-object v4, p0, Lcom/oplus/camera/CameraManager$r;->a:Lcom/oplus/camera/CameraManager;

    invoke-static {v4}, Lcom/oplus/camera/CameraManager;->au(Lcom/oplus/camera/CameraManager;)Lcom/oplus/camera/screen/g;

    move-result-object v4

    invoke-virtual {v4}, Lcom/oplus/camera/screen/g;->a()Lcom/oplus/camera/screen/b/a;

    move-result-object v4

    invoke-virtual {v4}, Lcom/oplus/camera/screen/b/a;->k()I

    move-result v4

    .line 5356
    iget-object v5, p0, Lcom/oplus/camera/CameraManager$r;->a:Lcom/oplus/camera/CameraManager;

    invoke-static {v5}, Lcom/oplus/camera/CameraManager;->au(Lcom/oplus/camera/CameraManager;)Lcom/oplus/camera/screen/g;

    move-result-object v5

    invoke-virtual {v5}, Lcom/oplus/camera/screen/g;->a()Lcom/oplus/camera/screen/b/a;

    move-result-object v5

    invoke-virtual {v5}, Lcom/oplus/camera/screen/b/a;->j()I

    move-result v5

    const/4 v6, 0x4

    const/4 v7, 0x1

    if-ne v7, v5, :cond_1

    if-nez v4, :cond_0

    .line 5362
    iget-object p1, p0, Lcom/oplus/camera/CameraManager$r;->a:Lcom/oplus/camera/CameraManager;

    invoke-static {p1}, Lcom/oplus/camera/CameraManager;->aw(Lcom/oplus/camera/CameraManager;)Landroid/view/VelocityTracker;

    move-result-object p1

    invoke-virtual {p1}, Landroid/view/VelocityTracker;->getYVelocity()F

    move-result v2

    .line 5363
    iget-object p1, p0, Lcom/oplus/camera/CameraManager$r;->a:Lcom/oplus/camera/CameraManager;

    invoke-static {p1}, Lcom/oplus/camera/CameraManager;->aw(Lcom/oplus/camera/CameraManager;)Landroid/view/VelocityTracker;

    move-result-object p1

    invoke-virtual {p1}, Landroid/view/VelocityTracker;->getXVelocity()F

    move-result v3

    goto :goto_0

    :cond_0
    const/16 v8, 0x5a

    if-ne v8, v4, :cond_2

    sub-float v0, p1, p2

    sub-float p1, p3, p4

    .line 5367
    iget-object p2, p0, Lcom/oplus/camera/CameraManager$r;->a:Lcom/oplus/camera/CameraManager;

    invoke-static {p2}, Lcom/oplus/camera/CameraManager;->aw(Lcom/oplus/camera/CameraManager;)Landroid/view/VelocityTracker;

    move-result-object p2

    invoke-virtual {p2}, Landroid/view/VelocityTracker;->getXVelocity()F

    move-result p2

    neg-float v2, p2

    .line 5368
    iget-object p2, p0, Lcom/oplus/camera/CameraManager$r;->a:Lcom/oplus/camera/CameraManager;

    invoke-static {p2}, Lcom/oplus/camera/CameraManager;->aw(Lcom/oplus/camera/CameraManager;)Landroid/view/VelocityTracker;

    move-result-object p2

    invoke-virtual {p2}, Landroid/view/VelocityTracker;->getYVelocity()F

    move-result p2

    neg-float v3, p2

    goto :goto_1

    :cond_1
    if-ne v6, v5, :cond_2

    .line 5374
    iget-object p1, p0, Lcom/oplus/camera/CameraManager$r;->a:Lcom/oplus/camera/CameraManager;

    invoke-static {p1}, Lcom/oplus/camera/CameraManager;->aw(Lcom/oplus/camera/CameraManager;)Landroid/view/VelocityTracker;

    move-result-object p1

    invoke-virtual {p1}, Landroid/view/VelocityTracker;->getYVelocity()F

    move-result v2

    .line 5375
    iget-object p1, p0, Lcom/oplus/camera/CameraManager$r;->a:Lcom/oplus/camera/CameraManager;

    invoke-static {p1}, Lcom/oplus/camera/CameraManager;->aw(Lcom/oplus/camera/CameraManager;)Landroid/view/VelocityTracker;

    move-result-object p1

    invoke-virtual {p1}, Landroid/view/VelocityTracker;->getXVelocity()F

    move-result v3

    :goto_0
    move p1, v0

    move v0, v1

    goto :goto_1

    :cond_2
    move p1, v1

    .line 5378
    :goto_1
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "handleScrollVerticalMode, moveX: "

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string p3, ", moveY: "

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    const-string p3, "CameraManager"

    invoke-static {p3, p2}, Lcom/oplus/camera/e;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 5380
    iget-object p2, p0, Lcom/oplus/camera/CameraManager$r;->a:Lcom/oplus/camera/CameraManager;

    invoke-static {p2}, Lcom/oplus/camera/CameraManager;->i(Lcom/oplus/camera/CameraManager;)Lcom/oplus/camera/capmode/ModeManager;

    move-result-object p2

    invoke-virtual {p2}, Lcom/oplus/camera/capmode/ModeManager;->aV()Z

    move-result p2

    const/4 p4, 0x0

    if-nez p2, :cond_c

    iget-object p2, p0, Lcom/oplus/camera/CameraManager$r;->a:Lcom/oplus/camera/CameraManager;

    .line 5381
    invoke-static {p2}, Lcom/oplus/camera/CameraManager;->i(Lcom/oplus/camera/CameraManager;)Lcom/oplus/camera/capmode/ModeManager;

    move-result-object p2

    invoke-virtual {p2}, Lcom/oplus/camera/capmode/ModeManager;->W()Z

    move-result p2

    if-nez p2, :cond_c

    iget-object p2, p0, Lcom/oplus/camera/CameraManager$r;->a:Lcom/oplus/camera/CameraManager;

    .line 5382
    invoke-static {p2}, Lcom/oplus/camera/CameraManager;->E(Lcom/oplus/camera/CameraManager;)Z

    move-result p2

    if-nez p2, :cond_c

    iget-object p2, p0, Lcom/oplus/camera/CameraManager$r;->a:Lcom/oplus/camera/CameraManager;

    .line 5383
    invoke-static {p2}, Lcom/oplus/camera/CameraManager;->i(Lcom/oplus/camera/CameraManager;)Lcom/oplus/camera/capmode/ModeManager;

    move-result-object p2

    invoke-virtual {p2}, Lcom/oplus/camera/capmode/ModeManager;->X()Z

    move-result p2

    if-nez p2, :cond_c

    iget-object p2, p0, Lcom/oplus/camera/CameraManager$r;->a:Lcom/oplus/camera/CameraManager;

    .line 5384
    invoke-static {p2}, Lcom/oplus/camera/CameraManager;->i(Lcom/oplus/camera/CameraManager;)Lcom/oplus/camera/capmode/ModeManager;

    move-result-object p2

    invoke-virtual {p2}, Lcom/oplus/camera/capmode/ModeManager;->cb()Z

    move-result p2

    if-nez p2, :cond_c

    .line 5385
    iget-object p2, p0, Lcom/oplus/camera/CameraManager$r;->a:Lcom/oplus/camera/CameraManager;

    invoke-static {p2}, Lcom/oplus/camera/CameraManager;->aw(Lcom/oplus/camera/CameraManager;)Landroid/view/VelocityTracker;

    move-result-object p2

    const/16 v1, 0x190

    invoke-virtual {p2, v1}, Landroid/view/VelocityTracker;->computeCurrentVelocity(I)V

    .line 5387
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onScroll, xVelocity: "

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/oplus/camera/CameraManager$r;->a:Lcom/oplus/camera/CameraManager;

    invoke-static {v1}, Lcom/oplus/camera/CameraManager;->aw(Lcom/oplus/camera/CameraManager;)Landroid/view/VelocityTracker;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/VelocityTracker;->getXVelocity()F

    move-result v1

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v1, ", yVelocity: "

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/oplus/camera/CameraManager$r;->a:Lcom/oplus/camera/CameraManager;

    .line 5388
    invoke-static {v1}, Lcom/oplus/camera/CameraManager;->aw(Lcom/oplus/camera/CameraManager;)Landroid/view/VelocityTracker;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/VelocityTracker;->getYVelocity()F

    move-result v1

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    .line 5387
    invoke-static {p3, p2}, Lcom/oplus/camera/e;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 5390
    invoke-static {p1}, Ljava/lang/Math;->abs(F)F

    move-result p2

    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result p3

    cmpg-float p2, p2, p3

    const p3, 0x3f147ae1    # 0.58f

    const/4 v1, 0x3

    if-gez p2, :cond_8

    .line 5391
    invoke-static {p1}, Ljava/lang/Math;->abs(F)F

    move-result p1

    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result p2

    div-float/2addr p1, p2

    .line 5393
    iget-object p2, p0, Lcom/oplus/camera/CameraManager$r;->a:Lcom/oplus/camera/CameraManager;

    invoke-static {p2}, Lcom/oplus/camera/CameraManager;->k(Lcom/oplus/camera/CameraManager;)Lcom/oplus/camera/entry/b;

    move-result-object p2

    invoke-virtual {p2}, Lcom/oplus/camera/entry/b;->J()I

    move-result p2

    const/4 v3, 0x2

    const/16 v8, 0x10e

    if-eq v1, p2, :cond_5

    .line 5394
    invoke-static {p1, p3}, Ljava/lang/Float;->compare(FF)I

    move-result p2

    if-le v7, p2, :cond_5

    neg-float p2, v0

    iget-object v9, p0, Lcom/oplus/camera/CameraManager$r;->a:Lcom/oplus/camera/CameraManager;

    .line 5395
    invoke-static {v9}, Lcom/oplus/camera/CameraManager;->ax(Lcom/oplus/camera/CameraManager;)I

    move-result v9

    int-to-float v9, v9

    cmpl-float v9, p2, v9

    if-gtz v9, :cond_3

    iget-object v9, p0, Lcom/oplus/camera/CameraManager$r;->a:Lcom/oplus/camera/CameraManager;

    .line 5396
    invoke-static {v9}, Lcom/oplus/camera/CameraManager;->ay(Lcom/oplus/camera/CameraManager;)I

    move-result v9

    neg-int v9, v9

    int-to-float v9, v9

    cmpg-float v9, v2, v9

    if-gez v9, :cond_5

    iget-object v9, p0, Lcom/oplus/camera/CameraManager$r;->a:Lcom/oplus/camera/CameraManager;

    invoke-static {v9}, Lcom/oplus/camera/CameraManager;->az(Lcom/oplus/camera/CameraManager;)I

    move-result v9

    int-to-float v9, v9

    cmpl-float p2, p2, v9

    if-lez p2, :cond_5

    :cond_3
    if-ne v6, v5, :cond_4

    if-ne v8, v4, :cond_4

    .line 5399
    iget-object p1, p0, Lcom/oplus/camera/CameraManager$r;->a:Lcom/oplus/camera/CameraManager;

    invoke-static {p1, v3}, Lcom/oplus/camera/CameraManager;->c(Lcom/oplus/camera/CameraManager;I)I

    goto :goto_2

    .line 5401
    :cond_4
    iget-object p1, p0, Lcom/oplus/camera/CameraManager$r;->a:Lcom/oplus/camera/CameraManager;

    invoke-static {p1, v7}, Lcom/oplus/camera/CameraManager;->c(Lcom/oplus/camera/CameraManager;I)I

    .line 5404
    :goto_2
    iput-boolean p4, p0, Lcom/oplus/camera/CameraManager$r;->c:Z

    return p4

    .line 5407
    :cond_5
    iget-object p2, p0, Lcom/oplus/camera/CameraManager$r;->a:Lcom/oplus/camera/CameraManager;

    invoke-static {p2}, Lcom/oplus/camera/CameraManager;->k(Lcom/oplus/camera/CameraManager;)Lcom/oplus/camera/entry/b;

    move-result-object p2

    invoke-virtual {p2}, Lcom/oplus/camera/entry/b;->J()I

    move-result p2

    if-eq v1, p2, :cond_c

    .line 5408
    invoke-static {p1, p3}, Ljava/lang/Float;->compare(FF)I

    move-result p1

    if-le v7, p1, :cond_c

    iget-object p1, p0, Lcom/oplus/camera/CameraManager$r;->a:Lcom/oplus/camera/CameraManager;

    .line 5409
    invoke-static {p1}, Lcom/oplus/camera/CameraManager;->ax(Lcom/oplus/camera/CameraManager;)I

    move-result p1

    int-to-float p1, p1

    cmpl-float p1, v0, p1

    if-gtz p1, :cond_6

    iget-object p1, p0, Lcom/oplus/camera/CameraManager$r;->a:Lcom/oplus/camera/CameraManager;

    .line 5410
    invoke-static {p1}, Lcom/oplus/camera/CameraManager;->ay(Lcom/oplus/camera/CameraManager;)I

    move-result p1

    int-to-float p1, p1

    cmpl-float p1, v2, p1

    if-lez p1, :cond_c

    iget-object p1, p0, Lcom/oplus/camera/CameraManager$r;->a:Lcom/oplus/camera/CameraManager;

    invoke-static {p1}, Lcom/oplus/camera/CameraManager;->az(Lcom/oplus/camera/CameraManager;)I

    move-result p1

    int-to-float p1, p1

    cmpl-float p1, v0, p1

    if-lez p1, :cond_c

    :cond_6
    if-ne v6, v5, :cond_7

    if-ne v8, v4, :cond_7

    .line 5413
    iget-object p1, p0, Lcom/oplus/camera/CameraManager$r;->a:Lcom/oplus/camera/CameraManager;

    invoke-static {p1, v7}, Lcom/oplus/camera/CameraManager;->c(Lcom/oplus/camera/CameraManager;I)I

    goto :goto_3

    .line 5415
    :cond_7
    iget-object p1, p0, Lcom/oplus/camera/CameraManager$r;->a:Lcom/oplus/camera/CameraManager;

    invoke-static {p1, v3}, Lcom/oplus/camera/CameraManager;->c(Lcom/oplus/camera/CameraManager;I)I

    .line 5418
    :goto_3
    iput-boolean p4, p0, Lcom/oplus/camera/CameraManager$r;->c:Z

    return p4

    .line 5423
    :cond_8
    iget-object p2, p0, Lcom/oplus/camera/CameraManager$r;->a:Lcom/oplus/camera/CameraManager;

    invoke-virtual {p2}, Lcom/oplus/camera/CameraManager;->U()Z

    move-result p2

    if-nez p2, :cond_c

    iget-object p2, p0, Lcom/oplus/camera/CameraManager$r;->a:Lcom/oplus/camera/CameraManager;

    invoke-static {p2}, Lcom/oplus/camera/CameraManager;->D(Lcom/oplus/camera/CameraManager;)Lcom/oplus/camera/ui/preview/o;

    move-result-object p2

    invoke-virtual {p2}, Lcom/oplus/camera/ui/preview/o;->A()Z

    move-result p2

    if-nez p2, :cond_c

    iget-object p2, p0, Lcom/oplus/camera/CameraManager$r;->a:Lcom/oplus/camera/CameraManager;

    invoke-static {p2}, Lcom/oplus/camera/CameraManager;->D(Lcom/oplus/camera/CameraManager;)Lcom/oplus/camera/ui/preview/o;

    move-result-object p2

    invoke-virtual {p2}, Lcom/oplus/camera/ui/preview/o;->w()Z

    move-result p2

    if-nez p2, :cond_c

    .line 5424
    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result p2

    invoke-static {p1}, Ljava/lang/Math;->abs(F)F

    move-result v0

    div-float/2addr p2, v0

    .line 5426
    iget-object v0, p0, Lcom/oplus/camera/CameraManager$r;->a:Lcom/oplus/camera/CameraManager;

    invoke-static {v0}, Lcom/oplus/camera/CameraManager;->k(Lcom/oplus/camera/CameraManager;)Lcom/oplus/camera/entry/b;

    move-result-object v0

    invoke-virtual {v0}, Lcom/oplus/camera/entry/b;->J()I

    move-result v0

    if-eq v1, v0, :cond_a

    .line 5427
    invoke-static {p2, p3}, Ljava/lang/Float;->compare(FF)I

    move-result v0

    if-le v7, v0, :cond_a

    iget-object v0, p0, Lcom/oplus/camera/CameraManager$r;->a:Lcom/oplus/camera/CameraManager;

    .line 5428
    invoke-static {v0}, Lcom/oplus/camera/CameraManager;->ax(Lcom/oplus/camera/CameraManager;)I

    move-result v0

    int-to-float v0, v0

    cmpl-float v0, p1, v0

    if-gtz v0, :cond_9

    iget-object v0, p0, Lcom/oplus/camera/CameraManager$r;->a:Lcom/oplus/camera/CameraManager;

    .line 5429
    invoke-static {v0}, Lcom/oplus/camera/CameraManager;->ay(Lcom/oplus/camera/CameraManager;)I

    move-result v0

    neg-int v0, v0

    int-to-float v0, v0

    cmpg-float v0, v3, v0

    if-gez v0, :cond_a

    iget-object v0, p0, Lcom/oplus/camera/CameraManager$r;->a:Lcom/oplus/camera/CameraManager;

    .line 5430
    invoke-static {v0}, Lcom/oplus/camera/CameraManager;->az(Lcom/oplus/camera/CameraManager;)I

    move-result v0

    int-to-float v0, v0

    cmpl-float v0, p1, v0

    if-lez v0, :cond_a

    .line 5431
    :cond_9
    iget-object p1, p0, Lcom/oplus/camera/CameraManager$r;->a:Lcom/oplus/camera/CameraManager;

    invoke-static {p1, v1}, Lcom/oplus/camera/CameraManager;->c(Lcom/oplus/camera/CameraManager;I)I

    .line 5432
    iput-boolean p4, p0, Lcom/oplus/camera/CameraManager$r;->c:Z

    return p4

    .line 5435
    :cond_a
    iget-object v0, p0, Lcom/oplus/camera/CameraManager$r;->a:Lcom/oplus/camera/CameraManager;

    invoke-static {v0}, Lcom/oplus/camera/CameraManager;->k(Lcom/oplus/camera/CameraManager;)Lcom/oplus/camera/entry/b;

    move-result-object v0

    invoke-virtual {v0}, Lcom/oplus/camera/entry/b;->J()I

    move-result v0

    if-eq v1, v0, :cond_c

    .line 5436
    invoke-static {p2, p3}, Ljava/lang/Float;->compare(FF)I

    move-result p2

    if-le v7, p2, :cond_c

    neg-float p1, p1

    iget-object p2, p0, Lcom/oplus/camera/CameraManager$r;->a:Lcom/oplus/camera/CameraManager;

    .line 5437
    invoke-static {p2}, Lcom/oplus/camera/CameraManager;->ax(Lcom/oplus/camera/CameraManager;)I

    move-result p2

    int-to-float p2, p2

    cmpl-float p2, p1, p2

    if-gtz p2, :cond_b

    iget-object p2, p0, Lcom/oplus/camera/CameraManager$r;->a:Lcom/oplus/camera/CameraManager;

    .line 5438
    invoke-static {p2}, Lcom/oplus/camera/CameraManager;->ay(Lcom/oplus/camera/CameraManager;)I

    move-result p2

    neg-int p2, p2

    int-to-float p2, p2

    cmpg-float p2, v3, p2

    if-gez p2, :cond_c

    iget-object p2, p0, Lcom/oplus/camera/CameraManager$r;->a:Lcom/oplus/camera/CameraManager;

    .line 5439
    invoke-static {p2}, Lcom/oplus/camera/CameraManager;->az(Lcom/oplus/camera/CameraManager;)I

    move-result p2

    int-to-float p2, p2

    cmpl-float p1, p1, p2

    if-lez p1, :cond_c

    .line 5440
    :cond_b
    iget-object p1, p0, Lcom/oplus/camera/CameraManager$r;->a:Lcom/oplus/camera/CameraManager;

    invoke-static {p1, v6}, Lcom/oplus/camera/CameraManager;->c(Lcom/oplus/camera/CameraManager;I)I

    .line 5441
    iput-boolean p4, p0, Lcom/oplus/camera/CameraManager$r;->c:Z

    :cond_c
    return p4
.end method


# virtual methods
.method public a(Z)V
    .locals 0

    .line 5136
    iput-boolean p1, p0, Lcom/oplus/camera/CameraManager$r;->c:Z

    return-void
.end method

.method public onDown(Landroid/view/MotionEvent;)Z
    .locals 1

    .line 5126
    iget-object v0, p0, Lcom/oplus/camera/CameraManager$r;->a:Lcom/oplus/camera/CameraManager;

    invoke-static {v0}, Lcom/oplus/camera/CameraManager;->i(Lcom/oplus/camera/CameraManager;)Lcom/oplus/camera/capmode/ModeManager;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/oplus/camera/capmode/ModeManager;->a(Landroid/view/MotionEvent;)Z

    move-result p1

    const/4 v0, 0x0

    if-eqz p1, :cond_0

    return v0

    :cond_0
    const/4 p1, 0x1

    .line 5130
    iput-boolean p1, p0, Lcom/oplus/camera/CameraManager$r;->c:Z

    .line 5131
    iput-boolean p1, p0, Lcom/oplus/camera/CameraManager$r;->b:Z

    return v0
.end method

.method public onFling(Landroid/view/MotionEvent;Landroid/view/MotionEvent;FF)Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public onLongPress(Landroid/view/MotionEvent;)V
    .locals 6

    .line 5146
    iget-object v0, p0, Lcom/oplus/camera/CameraManager$r;->a:Lcom/oplus/camera/CameraManager;

    invoke-static {v0}, Lcom/oplus/camera/CameraManager;->e(Lcom/oplus/camera/CameraManager;)Z

    move-result v0

    const-string v1, "CameraManager"

    if-nez v0, :cond_7

    iget-object v0, p0, Lcom/oplus/camera/CameraManager$r;->a:Lcom/oplus/camera/CameraManager;

    .line 5147
    invoke-static {v0}, Lcom/oplus/camera/CameraManager;->ar(Lcom/oplus/camera/CameraManager;)Z

    move-result v0

    if-eqz v0, :cond_7

    iget-object v0, p0, Lcom/oplus/camera/CameraManager$r;->a:Lcom/oplus/camera/CameraManager;

    .line 5148
    invoke-static {v0}, Lcom/oplus/camera/CameraManager;->f(Lcom/oplus/camera/CameraManager;)Lcom/oplus/camera/e/d;

    move-result-object v0

    if-eqz v0, :cond_7

    iget-object v0, p0, Lcom/oplus/camera/CameraManager$r;->a:Lcom/oplus/camera/CameraManager;

    .line 5149
    invoke-static {v0}, Lcom/oplus/camera/CameraManager;->g(Lcom/oplus/camera/CameraManager;)Lcom/oplus/camera/ui/d;

    move-result-object v0

    invoke-virtual {v0}, Lcom/oplus/camera/ui/d;->p()Landroid/widget/RelativeLayout;

    move-result-object v0

    if-eqz v0, :cond_7

    iget-object v0, p0, Lcom/oplus/camera/CameraManager$r;->a:Lcom/oplus/camera/CameraManager;

    .line 5150
    invoke-static {v0}, Lcom/oplus/camera/CameraManager;->as(Lcom/oplus/camera/CameraManager;)Z

    move-result v0

    if-nez v0, :cond_7

    iget-object v0, p0, Lcom/oplus/camera/CameraManager$r;->a:Lcom/oplus/camera/CameraManager;

    .line 5151
    invoke-static {v0}, Lcom/oplus/camera/CameraManager;->E(Lcom/oplus/camera/CameraManager;)Z

    move-result v0

    if-nez v0, :cond_7

    iget-object v0, p0, Lcom/oplus/camera/CameraManager$r;->a:Lcom/oplus/camera/CameraManager;

    .line 5152
    invoke-virtual {v0}, Lcom/oplus/camera/CameraManager;->V()Z

    move-result v0

    if-nez v0, :cond_7

    iget-object v0, p0, Lcom/oplus/camera/CameraManager$r;->a:Lcom/oplus/camera/CameraManager;

    .line 5153
    invoke-virtual {v0}, Lcom/oplus/camera/CameraManager;->U()Z

    move-result v0

    if-nez v0, :cond_7

    iget-object v0, p0, Lcom/oplus/camera/CameraManager$r;->a:Lcom/oplus/camera/CameraManager;

    .line 5154
    invoke-static {v0}, Lcom/oplus/camera/CameraManager;->ag(Lcom/oplus/camera/CameraManager;)Lcom/oplus/camera/ag;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/oplus/camera/CameraManager$r;->a:Lcom/oplus/camera/CameraManager;

    invoke-static {v0}, Lcom/oplus/camera/CameraManager;->ag(Lcom/oplus/camera/CameraManager;)Lcom/oplus/camera/ag;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/oplus/camera/ag;->b(Landroid/view/MotionEvent;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto/16 :goto_0

    .line 5160
    :cond_0
    invoke-static {}, Lcom/oplus/camera/gl/b/e;->a()Lcom/oplus/camera/gl/b/e;

    move-result-object v0

    invoke-virtual {v0}, Lcom/oplus/camera/gl/b/e;->b()Z

    move-result v0

    const-string v2, "onLongPress, small surface is moving, so return"

    if-eqz v0, :cond_1

    .line 5161
    invoke-static {v1, v2}, Lcom/oplus/camera/e;->f(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    .line 5166
    :cond_1
    invoke-static {}, Lcom/oplus/camera/gl/b/e;->a()Lcom/oplus/camera/gl/b/e;

    move-result-object v0

    invoke-virtual {v0}, Lcom/oplus/camera/gl/b/e;->b()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 5167
    invoke-static {v1, v2}, Lcom/oplus/camera/e;->f(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    .line 5172
    :cond_2
    iget-object v0, p0, Lcom/oplus/camera/CameraManager$r;->a:Lcom/oplus/camera/CameraManager;

    invoke-static {v0}, Lcom/oplus/camera/CameraManager;->g(Lcom/oplus/camera/CameraManager;)Lcom/oplus/camera/ui/d;

    move-result-object v0

    invoke-virtual {v0}, Lcom/oplus/camera/ui/d;->bK()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 5173
    iget-object p0, p0, Lcom/oplus/camera/CameraManager$r;->a:Lcom/oplus/camera/CameraManager;

    invoke-static {p0}, Lcom/oplus/camera/CameraManager;->g(Lcom/oplus/camera/CameraManager;)Lcom/oplus/camera/ui/d;

    move-result-object p0

    invoke-virtual {p0}, Lcom/oplus/camera/ui/d;->cw()V

    const-string p0, "onLongPress, hidepopupwindow, so return"

    .line 5175
    invoke-static {v1, p0}, Lcom/oplus/camera/e;->f(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    .line 5180
    :cond_3
    iget-object v0, p0, Lcom/oplus/camera/CameraManager$r;->a:Lcom/oplus/camera/CameraManager;

    invoke-static {v0}, Lcom/oplus/camera/CameraManager;->D(Lcom/oplus/camera/CameraManager;)Lcom/oplus/camera/ui/preview/o;

    move-result-object v0

    invoke-virtual {v0}, Lcom/oplus/camera/ui/preview/o;->w()Z

    move-result v0

    if-eqz v0, :cond_4

    return-void

    .line 5184
    :cond_4
    iget-object v0, p0, Lcom/oplus/camera/CameraManager$r;->a:Lcom/oplus/camera/CameraManager;

    invoke-static {v0}, Lcom/oplus/camera/CameraManager;->g(Lcom/oplus/camera/CameraManager;)Lcom/oplus/camera/ui/d;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/oplus/camera/ui/d;->b(Landroid/view/MotionEvent;)Z

    move-result v0

    if-eqz v0, :cond_5

    const-string p0, "onLongPress, needSubSettingTouchEvent, so return"

    .line 5185
    invoke-static {v1, p0}, Lcom/oplus/camera/e;->f(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    .line 5190
    :cond_5
    iget-object v0, p0, Lcom/oplus/camera/CameraManager$r;->a:Lcom/oplus/camera/CameraManager;

    invoke-static {v0}, Lcom/oplus/camera/CameraManager;->i(Lcom/oplus/camera/CameraManager;)Lcom/oplus/camera/capmode/ModeManager;

    move-result-object v0

    if-eqz v0, :cond_6

    iget-object v0, p0, Lcom/oplus/camera/CameraManager$r;->a:Lcom/oplus/camera/CameraManager;

    invoke-static {v0}, Lcom/oplus/camera/CameraManager;->i(Lcom/oplus/camera/CameraManager;)Lcom/oplus/camera/capmode/ModeManager;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/oplus/camera/capmode/ModeManager;->c(Landroid/view/MotionEvent;)Z

    move-result v0

    if-eqz v0, :cond_6

    return-void

    .line 5194
    :cond_6
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    float-to-double v0, v0

    const-wide/high16 v2, 0x3fe0000000000000L    # 0.5

    add-double/2addr v0, v2

    double-to-int v0, v0

    .line 5195
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v1

    float-to-double v4, v1

    add-double/2addr v4, v2

    double-to-int v1, v4

    .line 5197
    iget-object p0, p0, Lcom/oplus/camera/CameraManager$r;->a:Lcom/oplus/camera/CameraManager;

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getEventTime()J

    move-result-wide v2

    invoke-static {p0, v0, v1, v2, v3}, Lcom/oplus/camera/CameraManager;->a(Lcom/oplus/camera/CameraManager;IIJ)V

    return-void

    :cond_7
    :goto_0
    const-string p0, "onLongPress, is not preview state,so return"

    .line 5155
    invoke-static {v1, p0}, Lcom/oplus/camera/e;->f(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public onScroll(Landroid/view/MotionEvent;Landroid/view/MotionEvent;FF)Z
    .locals 7

    .line 5202
    iget-object v0, p0, Lcom/oplus/camera/CameraManager$r;->a:Lcom/oplus/camera/CameraManager;

    invoke-static {v0}, Lcom/oplus/camera/CameraManager;->i(Lcom/oplus/camera/CameraManager;)Lcom/oplus/camera/capmode/ModeManager;

    move-result-object v0

    const-string v1, "CameraManager"

    const/4 v2, 0x0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/oplus/camera/CameraManager$r;->a:Lcom/oplus/camera/CameraManager;

    invoke-static {v0}, Lcom/oplus/camera/CameraManager;->i(Lcom/oplus/camera/CameraManager;)Lcom/oplus/camera/capmode/ModeManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/oplus/camera/capmode/ModeManager;->aV()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string p0, "onScroll, isVideoRecording, so return"

    .line 5203
    invoke-static {v1, p0}, Lcom/oplus/camera/e;->f(Ljava/lang/String;Ljava/lang/String;)V

    return v2

    .line 5208
    :cond_0
    iget-object v0, p0, Lcom/oplus/camera/CameraManager$r;->a:Lcom/oplus/camera/CameraManager;

    invoke-static {v0}, Lcom/oplus/camera/CameraManager;->g(Lcom/oplus/camera/CameraManager;)Lcom/oplus/camera/ui/d;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/oplus/camera/CameraManager$r;->a:Lcom/oplus/camera/CameraManager;

    invoke-static {v0}, Lcom/oplus/camera/CameraManager;->g(Lcom/oplus/camera/CameraManager;)Lcom/oplus/camera/ui/d;

    move-result-object v0

    invoke-virtual {v0}, Lcom/oplus/camera/ui/d;->cf()Z

    move-result v0

    if-eqz v0, :cond_1

    const-string p0, "onScroll, isRecordTimeViewShow, so return"

    .line 5209
    invoke-static {v1, p0}, Lcom/oplus/camera/e;->f(Ljava/lang/String;Ljava/lang/String;)V

    return v2

    .line 5214
    :cond_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "onScroll, mCameraProcessManager.isPreviewStarted() :"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/oplus/camera/CameraManager$r;->a:Lcom/oplus/camera/CameraManager;

    invoke-virtual {v3}, Lcom/oplus/camera/CameraManager;->T()Z

    move-result v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/oplus/camera/e;->f(Ljava/lang/String;Ljava/lang/String;)V

    .line 5216
    iget-boolean v0, p0, Lcom/oplus/camera/CameraManager$r;->c:Z

    if-eqz v0, :cond_10

    iget-object v0, p0, Lcom/oplus/camera/CameraManager$r;->a:Lcom/oplus/camera/CameraManager;

    invoke-static {v0}, Lcom/oplus/camera/CameraManager;->at(Lcom/oplus/camera/CameraManager;)Z

    move-result v0

    if-nez v0, :cond_10

    iget-object v0, p0, Lcom/oplus/camera/CameraManager$r;->a:Lcom/oplus/camera/CameraManager;

    invoke-virtual {v0}, Lcom/oplus/camera/CameraManager;->V()Z

    move-result v0

    if-eqz v0, :cond_2

    goto/16 :goto_3

    .line 5223
    :cond_2
    iget-object v0, p0, Lcom/oplus/camera/CameraManager$r;->a:Lcom/oplus/camera/CameraManager;

    invoke-static {v0}, Lcom/oplus/camera/CameraManager;->i(Lcom/oplus/camera/CameraManager;)Lcom/oplus/camera/capmode/ModeManager;

    move-result-object v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/oplus/camera/CameraManager$r;->a:Lcom/oplus/camera/CameraManager;

    invoke-static {v0}, Lcom/oplus/camera/CameraManager;->i(Lcom/oplus/camera/CameraManager;)Lcom/oplus/camera/capmode/ModeManager;

    move-result-object v0

    invoke-virtual {v0, p1, p2, p3, p4}, Lcom/oplus/camera/capmode/ModeManager;->a(Landroid/view/MotionEvent;Landroid/view/MotionEvent;FF)Z

    move-result p3

    if-eqz p3, :cond_3

    return v2

    .line 5227
    :cond_3
    iget-object p3, p0, Lcom/oplus/camera/CameraManager$r;->a:Lcom/oplus/camera/CameraManager;

    invoke-static {p3}, Lcom/oplus/camera/CameraManager;->au(Lcom/oplus/camera/CameraManager;)Lcom/oplus/camera/screen/g;

    move-result-object p3

    const/4 p4, 0x1

    if-eqz p3, :cond_4

    iget-object p3, p0, Lcom/oplus/camera/CameraManager$r;->a:Lcom/oplus/camera/CameraManager;

    .line 5228
    invoke-static {p3}, Lcom/oplus/camera/CameraManager;->au(Lcom/oplus/camera/CameraManager;)Lcom/oplus/camera/screen/g;

    move-result-object p3

    invoke-virtual {p3}, Lcom/oplus/camera/screen/g;->a()Lcom/oplus/camera/screen/b/a;

    move-result-object p3

    invoke-virtual {p3}, Lcom/oplus/camera/screen/b/a;->j()I

    move-result p3

    if-ne p4, p3, :cond_4

    move p3, p4

    goto :goto_0

    :cond_4
    move p3, v2

    .line 5230
    :goto_0
    iget-object v0, p0, Lcom/oplus/camera/CameraManager$r;->a:Lcom/oplus/camera/CameraManager;

    invoke-static {v0}, Lcom/oplus/camera/CameraManager;->D(Lcom/oplus/camera/CameraManager;)Lcom/oplus/camera/ui/preview/o;

    move-result-object v0

    if-eqz v0, :cond_6

    iget-object v0, p0, Lcom/oplus/camera/CameraManager$r;->a:Lcom/oplus/camera/CameraManager;

    .line 5231
    invoke-static {v0}, Lcom/oplus/camera/CameraManager;->D(Lcom/oplus/camera/CameraManager;)Lcom/oplus/camera/ui/preview/o;

    move-result-object v0

    invoke-virtual {v0}, Lcom/oplus/camera/ui/preview/o;->w()Z

    move-result v0

    if-eqz v0, :cond_6

    iget-object v0, p0, Lcom/oplus/camera/CameraManager$r;->a:Lcom/oplus/camera/CameraManager;

    .line 5232
    invoke-static {v0}, Lcom/oplus/camera/CameraManager;->P(Lcom/oplus/camera/CameraManager;)I

    move-result v0

    rem-int/lit16 v0, v0, 0xb4

    if-nez v0, :cond_5

    if-eqz p3, :cond_6

    :cond_5
    return v2

    .line 5236
    :cond_6
    iget-object p3, p0, Lcom/oplus/camera/CameraManager$r;->a:Lcom/oplus/camera/CameraManager;

    invoke-static {p3}, Lcom/oplus/camera/CameraManager;->ar(Lcom/oplus/camera/CameraManager;)Z

    move-result p3

    if-nez p3, :cond_7

    const-string p0, "onScroll, mFirstTimeInitialized is false, so return."

    .line 5237
    invoke-static {v1, p0}, Lcom/oplus/camera/e;->a(Ljava/lang/String;Ljava/lang/String;)V

    return v2

    .line 5242
    :cond_7
    iget-object p3, p0, Lcom/oplus/camera/CameraManager$r;->a:Lcom/oplus/camera/CameraManager;

    invoke-virtual {p3}, Lcom/oplus/camera/CameraManager;->aN()Z

    move-result p3

    if-eqz p3, :cond_8

    iget-object p3, p0, Lcom/oplus/camera/CameraManager$r;->a:Lcom/oplus/camera/CameraManager;

    invoke-static {p3}, Lcom/oplus/camera/CameraManager;->av(Lcom/oplus/camera/CameraManager;)F

    move-result p3

    iget-object v0, p0, Lcom/oplus/camera/CameraManager$r;->a:Lcom/oplus/camera/CameraManager;

    invoke-static {v0}, Lcom/oplus/camera/CameraManager;->g(Lcom/oplus/camera/CameraManager;)Lcom/oplus/camera/ui/d;

    move-result-object v0

    invoke-virtual {v0}, Lcom/oplus/camera/ui/d;->an()I

    move-result v0

    int-to-float v0, v0

    cmpl-float p3, p3, v0

    if-ltz p3, :cond_8

    .line 5243
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "isCanScrollHeadLine, isZoomSeekBarExpand: "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/oplus/camera/CameraManager$r;->a:Lcom/oplus/camera/CameraManager;

    invoke-virtual {p0}, Lcom/oplus/camera/CameraManager;->aN()Z

    move-result p0

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v1, p0}, Lcom/oplus/camera/e;->a(Ljava/lang/String;Ljava/lang/String;)V

    return v2

    .line 5248
    :cond_8
    iget-object p3, p0, Lcom/oplus/camera/CameraManager$r;->a:Lcom/oplus/camera/CameraManager;

    invoke-static {p3}, Lcom/oplus/camera/CameraManager;->ag(Lcom/oplus/camera/CameraManager;)Lcom/oplus/camera/ag;

    move-result-object p3

    if-eqz p3, :cond_9

    iget-object p3, p0, Lcom/oplus/camera/CameraManager$r;->a:Lcom/oplus/camera/CameraManager;

    invoke-static {p3}, Lcom/oplus/camera/CameraManager;->ag(Lcom/oplus/camera/CameraManager;)Lcom/oplus/camera/ag;

    move-result-object p3

    invoke-virtual {p3}, Lcom/oplus/camera/ag;->j()Z

    move-result p3

    if-eqz p3, :cond_9

    return v2

    .line 5252
    :cond_9
    iget-object p3, p0, Lcom/oplus/camera/CameraManager$r;->a:Lcom/oplus/camera/CameraManager;

    invoke-virtual {p3}, Lcom/oplus/camera/CameraManager;->isAllowSwitchMode()Z

    move-result p3

    if-nez p3, :cond_a

    const-string p0, "onScroll, isAllowSwitchMode is false, so return."

    .line 5253
    invoke-static {v1, p0}, Lcom/oplus/camera/e;->a(Ljava/lang/String;Ljava/lang/String;)V

    return v2

    :cond_a
    if-eqz p1, :cond_f

    if-nez p2, :cond_b

    goto/16 :goto_2

    .line 5262
    :cond_b
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result p3

    .line 5263
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v0

    .line 5264
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getX()F

    move-result v3

    .line 5265
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getY()F

    move-result p2

    .line 5266
    iget-object v4, p0, Lcom/oplus/camera/CameraManager$r;->a:Lcom/oplus/camera/CameraManager;

    invoke-static {v4}, Lcom/oplus/camera/CameraManager;->au(Lcom/oplus/camera/CameraManager;)Lcom/oplus/camera/screen/g;

    move-result-object v4

    invoke-virtual {v4}, Lcom/oplus/camera/screen/g;->a()Lcom/oplus/camera/screen/b/a;

    move-result-object v4

    invoke-virtual {v4}, Lcom/oplus/camera/screen/b/a;->j()I

    move-result v4

    .line 5268
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "onScroll, eX1 - eX2: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sub-float v6, p3, v3

    invoke-static {v6}, Ljava/lang/Math;->abs(F)F

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v6, ", eY1 - eY2: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sub-float v6, v0, p2

    invoke-static {v6}, Ljava/lang/Math;->abs(F)F

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v6, ", screenMode: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v1, v5}, Lcom/oplus/camera/e;->a(Ljava/lang/String;Ljava/lang/String;)V

    if-ne p4, v4, :cond_c

    .line 5271
    iget-object v5, p0, Lcom/oplus/camera/CameraManager$r;->a:Lcom/oplus/camera/CameraManager;

    .line 5272
    invoke-static {v5}, Lcom/oplus/camera/CameraManager;->i(Lcom/oplus/camera/CameraManager;)Lcom/oplus/camera/capmode/ModeManager;

    move-result-object v5

    if-eqz v5, :cond_c

    iget-object v5, p0, Lcom/oplus/camera/CameraManager$r;->a:Lcom/oplus/camera/CameraManager;

    .line 5273
    invoke-static {v5}, Lcom/oplus/camera/CameraManager;->i(Lcom/oplus/camera/CameraManager;)Lcom/oplus/camera/capmode/ModeManager;

    move-result-object v5

    invoke-virtual {v5, p1}, Lcom/oplus/camera/capmode/ModeManager;->e(Landroid/view/MotionEvent;)Z

    move-result p1

    if-nez p1, :cond_c

    const-string p0, "onScroll, isInPreviewArea is false, so return."

    .line 5274
    invoke-static {v1, p0}, Lcom/oplus/camera/e;->a(Ljava/lang/String;Ljava/lang/String;)V

    return v2

    :cond_c
    if-eq p4, v4, :cond_e

    const/4 p1, 0x4

    if-ne p1, v4, :cond_d

    goto :goto_1

    .line 5283
    :cond_d
    invoke-direct {p0, p3, v3, v0, p2}, Lcom/oplus/camera/CameraManager$r;->a(FFFF)Z

    move-result p0

    return p0

    .line 5281
    :cond_e
    :goto_1
    invoke-direct {p0, p3, v3, v0, p2}, Lcom/oplus/camera/CameraManager$r;->b(FFFF)Z

    move-result p0

    return p0

    :cond_f
    :goto_2
    return v2

    .line 5217
    :cond_10
    :goto_3
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "onScroll, mbCanScroll: "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean p2, p0, Lcom/oplus/camera/CameraManager$r;->c:Z

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string p2, ", mbDoubleFinger: "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p2, p0, Lcom/oplus/camera/CameraManager$r;->a:Lcom/oplus/camera/CameraManager;

    invoke-static {p2}, Lcom/oplus/camera/CameraManager;->at(Lcom/oplus/camera/CameraManager;)Z

    move-result p2

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string p2, ", isSnapShotProgress: "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/oplus/camera/CameraManager$r;->a:Lcom/oplus/camera/CameraManager;

    .line 5218
    invoke-virtual {p0}, Lcom/oplus/camera/CameraManager;->V()Z

    move-result p0

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    .line 5217
    invoke-static {v1, p0}, Lcom/oplus/camera/e;->a(Ljava/lang/String;Ljava/lang/String;)V

    return v2
.end method

.method public onShowPress(Landroid/view/MotionEvent;)V
    .locals 0

    return-void
.end method

.method public onSingleTapUp(Landroid/view/MotionEvent;)Z
    .locals 14

    .line 5459
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionIndex()I

    move-result v0

    .line 5460
    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->getX(I)F

    move-result v1

    float-to-double v1, v1

    const-wide/high16 v3, 0x3fe0000000000000L    # 0.5

    add-double/2addr v1, v3

    double-to-int v6, v1

    .line 5461
    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->getY(I)F

    move-result v0

    float-to-double v0, v0

    add-double/2addr v0, v3

    double-to-int v7, v0

    .line 5463
    iget-object v0, p0, Lcom/oplus/camera/CameraManager$r;->a:Lcom/oplus/camera/CameraManager;

    invoke-static {v0}, Lcom/oplus/camera/CameraManager;->e(Lcom/oplus/camera/CameraManager;)Z

    move-result v0

    const-string v1, "CameraManager"

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-nez v0, :cond_11

    iget-object v0, p0, Lcom/oplus/camera/CameraManager$r;->a:Lcom/oplus/camera/CameraManager;

    .line 5464
    invoke-static {v0}, Lcom/oplus/camera/CameraManager;->f(Lcom/oplus/camera/CameraManager;)Lcom/oplus/camera/e/d;

    move-result-object v0

    if-eqz v0, :cond_11

    iget-object v0, p0, Lcom/oplus/camera/CameraManager$r;->a:Lcom/oplus/camera/CameraManager;

    .line 5465
    invoke-virtual {v0}, Lcom/oplus/camera/CameraManager;->e()Z

    move-result v0

    if-nez v0, :cond_11

    iget-object v0, p0, Lcom/oplus/camera/CameraManager$r;->a:Lcom/oplus/camera/CameraManager;

    .line 5466
    invoke-virtual {v0}, Lcom/oplus/camera/CameraManager;->V()Z

    move-result v0

    if-nez v0, :cond_11

    iget-object v0, p0, Lcom/oplus/camera/CameraManager$r;->a:Lcom/oplus/camera/CameraManager;

    .line 5467
    invoke-static {v0}, Lcom/oplus/camera/CameraManager;->i(Lcom/oplus/camera/CameraManager;)Lcom/oplus/camera/capmode/ModeManager;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/oplus/camera/capmode/ModeManager;->b(Landroid/view/MotionEvent;)Z

    move-result v0

    if-nez v0, :cond_11

    iget-object v0, p0, Lcom/oplus/camera/CameraManager$r;->a:Lcom/oplus/camera/CameraManager;

    .line 5468
    invoke-static {v0}, Lcom/oplus/camera/CameraManager;->E(Lcom/oplus/camera/CameraManager;)Z

    move-result v0

    if-nez v0, :cond_11

    iget-object v0, p0, Lcom/oplus/camera/CameraManager$r;->a:Lcom/oplus/camera/CameraManager;

    .line 5469
    invoke-virtual {v0}, Lcom/oplus/camera/CameraManager;->T()Z

    move-result v0

    if-eqz v0, :cond_11

    iget-boolean v0, p0, Lcom/oplus/camera/CameraManager$r;->b:Z

    if-nez v0, :cond_0

    goto/16 :goto_5

    .line 5481
    :cond_0
    iget-object v0, p0, Lcom/oplus/camera/CameraManager$r;->a:Lcom/oplus/camera/CameraManager;

    invoke-static {v0}, Lcom/oplus/camera/CameraManager;->g(Lcom/oplus/camera/CameraManager;)Lcom/oplus/camera/ui/d;

    move-result-object v0

    invoke-virtual {v0}, Lcom/oplus/camera/ui/d;->K()Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/oplus/camera/CameraManager$r;->a:Lcom/oplus/camera/CameraManager;

    invoke-static {v0}, Lcom/oplus/camera/CameraManager;->g(Lcom/oplus/camera/CameraManager;)Lcom/oplus/camera/ui/d;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/oplus/camera/ui/d;->c(Landroid/view/MotionEvent;)Z

    move-result v0

    if-eqz v0, :cond_2

    :cond_1
    iget-object v0, p0, Lcom/oplus/camera/CameraManager$r;->a:Lcom/oplus/camera/CameraManager;

    .line 5482
    invoke-static {v0}, Lcom/oplus/camera/CameraManager;->g(Lcom/oplus/camera/CameraManager;)Lcom/oplus/camera/ui/d;

    move-result-object v0

    invoke-virtual {v0}, Lcom/oplus/camera/ui/d;->bD()Lcom/oplus/camera/ui/control/ShutterButton;

    move-result-object v0

    int-to-float v4, v6

    int-to-float v5, v7

    invoke-static {v0, v4, v5}, Lcom/oplus/camera/util/Util;->a(Landroid/view/View;FF)Z

    move-result v0

    if-nez v0, :cond_2

    .line 5483
    iget-object p0, p0, Lcom/oplus/camera/CameraManager$r;->a:Lcom/oplus/camera/CameraManager;

    invoke-static {p0}, Lcom/oplus/camera/CameraManager;->g(Lcom/oplus/camera/CameraManager;)Lcom/oplus/camera/ui/d;

    move-result-object p0

    invoke-virtual {p0, v3, v3, v3, v3}, Lcom/oplus/camera/ui/d;->a(ZZZZ)V

    return v3

    .line 5488
    :cond_2
    iget-object v0, p0, Lcom/oplus/camera/CameraManager$r;->a:Lcom/oplus/camera/CameraManager;

    invoke-static {v0}, Lcom/oplus/camera/CameraManager;->g(Lcom/oplus/camera/CameraManager;)Lcom/oplus/camera/ui/d;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/oplus/camera/ui/d;->b(Landroid/view/MotionEvent;)Z

    move-result v0

    if-eqz v0, :cond_3

    const-string p0, "onSingleTapUp, consumed by submenuSetting"

    .line 5489
    invoke-static {v1, p0}, Lcom/oplus/camera/e;->b(Ljava/lang/String;Ljava/lang/String;)V

    return v3

    .line 5494
    :cond_3
    iget-object v0, p0, Lcom/oplus/camera/CameraManager$r;->a:Lcom/oplus/camera/CameraManager;

    invoke-static {v0}, Lcom/oplus/camera/CameraManager;->g(Lcom/oplus/camera/CameraManager;)Lcom/oplus/camera/ui/d;

    move-result-object v0

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/oplus/camera/CameraManager$r;->a:Lcom/oplus/camera/CameraManager;

    invoke-static {v0}, Lcom/oplus/camera/CameraManager;->g(Lcom/oplus/camera/CameraManager;)Lcom/oplus/camera/ui/d;

    move-result-object v0

    invoke-virtual {v0}, Lcom/oplus/camera/ui/d;->bK()Z

    move-result v0

    if-eqz v0, :cond_4

    move v0, v3

    goto :goto_0

    :cond_4
    move v0, v2

    .line 5495
    :goto_0
    iget-object v4, p0, Lcom/oplus/camera/CameraManager$r;->a:Lcom/oplus/camera/CameraManager;

    invoke-static {v4}, Lcom/oplus/camera/CameraManager;->ag(Lcom/oplus/camera/CameraManager;)Lcom/oplus/camera/ag;

    move-result-object v4

    if-eqz v4, :cond_5

    iget-object v4, p0, Lcom/oplus/camera/CameraManager$r;->a:Lcom/oplus/camera/CameraManager;

    invoke-static {v4}, Lcom/oplus/camera/CameraManager;->ag(Lcom/oplus/camera/CameraManager;)Lcom/oplus/camera/ag;

    move-result-object v4

    invoke-virtual {v4}, Lcom/oplus/camera/ag;->j()Z

    move-result v4

    if-eqz v4, :cond_5

    move v4, v3

    goto :goto_1

    :cond_5
    move v4, v2

    :goto_1
    if-nez v0, :cond_e

    if-eqz v4, :cond_6

    goto/16 :goto_4

    .line 5513
    :cond_6
    iget-object v0, p0, Lcom/oplus/camera/CameraManager$r;->a:Lcom/oplus/camera/CameraManager;

    invoke-static {v0}, Lcom/oplus/camera/CameraManager;->g(Lcom/oplus/camera/CameraManager;)Lcom/oplus/camera/ui/d;

    move-result-object v0

    if-eqz v0, :cond_7

    iget-object v0, p0, Lcom/oplus/camera/CameraManager$r;->a:Lcom/oplus/camera/CameraManager;

    invoke-static {v0}, Lcom/oplus/camera/CameraManager;->g(Lcom/oplus/camera/CameraManager;)Lcom/oplus/camera/ui/d;

    move-result-object v0

    invoke-virtual {v0}, Lcom/oplus/camera/ui/d;->eu()Z

    move-result v0

    if-eqz v0, :cond_7

    const-string p1, "onSingleTapUp, consumed by SlowVideoModeSeekBar"

    .line 5514
    invoke-static {v1, p1}, Lcom/oplus/camera/e;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 5516
    iget-object p0, p0, Lcom/oplus/camera/CameraManager$r;->a:Lcom/oplus/camera/CameraManager;

    invoke-static {p0}, Lcom/oplus/camera/CameraManager;->g(Lcom/oplus/camera/CameraManager;)Lcom/oplus/camera/ui/d;

    move-result-object p0

    invoke-virtual {p0}, Lcom/oplus/camera/ui/d;->et()V

    return v3

    .line 5521
    :cond_7
    iget-object v0, p0, Lcom/oplus/camera/CameraManager$r;->a:Lcom/oplus/camera/CameraManager;

    invoke-static {v0}, Lcom/oplus/camera/CameraManager;->aA(Lcom/oplus/camera/CameraManager;)Landroid/graphics/Rect;

    move-result-object v0

    iget-object v4, p0, Lcom/oplus/camera/CameraManager$r;->a:Lcom/oplus/camera/CameraManager;

    invoke-static {v4}, Lcom/oplus/camera/CameraManager;->g(Lcom/oplus/camera/CameraManager;)Lcom/oplus/camera/ui/d;

    move-result-object v4

    invoke-virtual {v4}, Lcom/oplus/camera/ui/d;->p()Landroid/widget/RelativeLayout;

    move-result-object v4

    invoke-virtual {v4}, Landroid/widget/RelativeLayout;->getLeft()I

    move-result v4

    iget-object v5, p0, Lcom/oplus/camera/CameraManager$r;->a:Lcom/oplus/camera/CameraManager;

    .line 5522
    invoke-static {v5}, Lcom/oplus/camera/CameraManager;->g(Lcom/oplus/camera/CameraManager;)Lcom/oplus/camera/ui/d;

    move-result-object v5

    invoke-virtual {v5}, Lcom/oplus/camera/ui/d;->p()Landroid/widget/RelativeLayout;

    move-result-object v5

    invoke-virtual {v5}, Landroid/widget/RelativeLayout;->getTop()I

    move-result v5

    iget-object v8, p0, Lcom/oplus/camera/CameraManager$r;->a:Lcom/oplus/camera/CameraManager;

    .line 5523
    invoke-static {v8}, Lcom/oplus/camera/CameraManager;->g(Lcom/oplus/camera/CameraManager;)Lcom/oplus/camera/ui/d;

    move-result-object v8

    invoke-virtual {v8}, Lcom/oplus/camera/ui/d;->p()Landroid/widget/RelativeLayout;

    move-result-object v8

    invoke-virtual {v8}, Landroid/widget/RelativeLayout;->getRight()I

    move-result v8

    iget-object v9, p0, Lcom/oplus/camera/CameraManager$r;->a:Lcom/oplus/camera/CameraManager;

    .line 5524
    invoke-static {v9}, Lcom/oplus/camera/CameraManager;->g(Lcom/oplus/camera/CameraManager;)Lcom/oplus/camera/ui/d;

    move-result-object v9

    invoke-virtual {v9}, Lcom/oplus/camera/ui/d;->p()Landroid/widget/RelativeLayout;

    move-result-object v9

    invoke-virtual {v9}, Landroid/widget/RelativeLayout;->getBottom()I

    move-result v9

    .line 5521
    invoke-virtual {v0, v4, v5, v8, v9}, Landroid/graphics/Rect;->set(IIII)V

    .line 5526
    iget-object v0, p0, Lcom/oplus/camera/CameraManager$r;->a:Lcom/oplus/camera/CameraManager;

    invoke-static {v0}, Lcom/oplus/camera/CameraManager;->i(Lcom/oplus/camera/CameraManager;)Lcom/oplus/camera/capmode/ModeManager;

    move-result-object v0

    iget-object v4, p0, Lcom/oplus/camera/CameraManager$r;->a:Lcom/oplus/camera/CameraManager;

    invoke-static {v4}, Lcom/oplus/camera/CameraManager;->au(Lcom/oplus/camera/CameraManager;)Lcom/oplus/camera/screen/g;

    move-result-object v4

    invoke-virtual {v4}, Lcom/oplus/camera/screen/g;->a()Lcom/oplus/camera/screen/b/a;

    move-result-object v4

    iget-object v5, p0, Lcom/oplus/camera/CameraManager$r;->a:Lcom/oplus/camera/CameraManager;

    .line 5527
    invoke-static {v5}, Lcom/oplus/camera/CameraManager;->g(Lcom/oplus/camera/CameraManager;)Lcom/oplus/camera/ui/d;

    move-result-object v5

    invoke-virtual {v4, v5, v6, v7}, Lcom/oplus/camera/screen/b/a;->a(Lcom/oplus/camera/ui/CameraUIInterface;II)Z

    move-result v4

    .line 5526
    invoke-virtual {v0, v4, v6, v7}, Lcom/oplus/camera/capmode/ModeManager;->a(ZII)Z

    move-result v0

    .line 5529
    iget-object v4, p0, Lcom/oplus/camera/CameraManager$r;->a:Lcom/oplus/camera/CameraManager;

    invoke-static {v4}, Lcom/oplus/camera/CameraManager;->aA(Lcom/oplus/camera/CameraManager;)Landroid/graphics/Rect;

    move-result-object v4

    invoke-virtual {v4, v6, v7}, Landroid/graphics/Rect;->contains(II)Z

    move-result v4

    if-eqz v4, :cond_c

    .line 5530
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    .line 5533
    invoke-static {}, Lcom/oplus/camera/CameraManager;->bc()J

    move-result-wide v8

    iget-object v10, p0, Lcom/oplus/camera/CameraManager$r;->a:Lcom/oplus/camera/CameraManager;

    invoke-static {v10}, Lcom/oplus/camera/CameraManager;->aB(Lcom/oplus/camera/CameraManager;)J

    move-result-wide v10

    sub-long v10, v4, v10

    cmp-long v8, v8, v10

    if-lez v8, :cond_9

    iget-object v8, p0, Lcom/oplus/camera/CameraManager$r;->a:Lcom/oplus/camera/CameraManager;

    .line 5534
    invoke-static {v8}, Lcom/oplus/camera/CameraManager;->aC(Lcom/oplus/camera/CameraManager;)I

    move-result v8

    sub-int/2addr v8, v6

    int-to-double v8, v8

    const-wide/high16 v10, 0x4000000000000000L    # 2.0

    invoke-static {v8, v9, v10, v11}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v8

    iget-object v12, p0, Lcom/oplus/camera/CameraManager$r;->a:Lcom/oplus/camera/CameraManager;

    .line 5535
    invoke-static {v12}, Lcom/oplus/camera/CameraManager;->aD(Lcom/oplus/camera/CameraManager;)I

    move-result v12

    sub-int/2addr v12, v7

    int-to-double v12, v12

    invoke-static {v12, v13, v10, v11}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v10

    add-double/2addr v8, v10

    .line 5534
    invoke-static {v8, v9}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v8

    double-to-int v8, v8

    iget-object v9, p0, Lcom/oplus/camera/CameraManager$r;->a:Lcom/oplus/camera/CameraManager;

    .line 5535
    invoke-static {v9}, Lcom/oplus/camera/CameraManager;->aE(Lcom/oplus/camera/CameraManager;)I

    move-result v9

    if-gt v8, v9, :cond_9

    .line 5536
    iget-object v4, p0, Lcom/oplus/camera/CameraManager$r;->a:Lcom/oplus/camera/CameraManager;

    const-wide/16 v8, 0x0

    invoke-static {v4, v8, v9}, Lcom/oplus/camera/CameraManager;->b(Lcom/oplus/camera/CameraManager;J)J

    .line 5537
    invoke-direct {p0, v6, v7}, Lcom/oplus/camera/CameraManager$r;->a(II)Z

    move-result v4

    .line 5539
    iget-object v5, p0, Lcom/oplus/camera/CameraManager$r;->a:Lcom/oplus/camera/CameraManager;

    invoke-static {v5}, Lcom/oplus/camera/CameraManager;->i(Lcom/oplus/camera/CameraManager;)Lcom/oplus/camera/capmode/ModeManager;

    move-result-object v5

    invoke-virtual {v5}, Lcom/oplus/camera/capmode/ModeManager;->cx()Z

    move-result v5

    if-eqz v5, :cond_8

    .line 5540
    iget-object v5, p0, Lcom/oplus/camera/CameraManager$r;->a:Lcom/oplus/camera/CameraManager;

    invoke-virtual {v5, v3}, Lcom/oplus/camera/CameraManager;->k(I)V

    goto :goto_2

    :cond_8
    if-nez v4, :cond_a

    .line 5542
    iget-object v5, p0, Lcom/oplus/camera/CameraManager$r;->a:Lcom/oplus/camera/CameraManager;

    invoke-virtual {v5, v2}, Lcom/oplus/camera/CameraManager;->k(I)V

    goto :goto_2

    .line 5545
    :cond_9
    iget-object v8, p0, Lcom/oplus/camera/CameraManager$r;->a:Lcom/oplus/camera/CameraManager;

    invoke-static {v8, v6}, Lcom/oplus/camera/CameraManager;->d(Lcom/oplus/camera/CameraManager;I)I

    .line 5546
    iget-object v8, p0, Lcom/oplus/camera/CameraManager$r;->a:Lcom/oplus/camera/CameraManager;

    invoke-static {v8, v7}, Lcom/oplus/camera/CameraManager;->e(Lcom/oplus/camera/CameraManager;I)I

    .line 5547
    iget-object v8, p0, Lcom/oplus/camera/CameraManager$r;->a:Lcom/oplus/camera/CameraManager;

    invoke-static {v8, v4, v5}, Lcom/oplus/camera/CameraManager;->b(Lcom/oplus/camera/CameraManager;J)J

    .line 5550
    iget-object v4, p0, Lcom/oplus/camera/CameraManager$r;->a:Lcom/oplus/camera/CameraManager;

    invoke-static {v4}, Lcom/oplus/camera/CameraManager;->i(Lcom/oplus/camera/CameraManager;)Lcom/oplus/camera/capmode/ModeManager;

    move-result-object v5

    invoke-virtual {v5}, Lcom/oplus/camera/capmode/ModeManager;->cx()Z

    move-result v5

    invoke-virtual {v4, v5}, Lcom/oplus/camera/CameraManager;->k(I)V

    move v4, v2

    :cond_a
    :goto_2
    if-nez v4, :cond_d

    if-eqz v0, :cond_b

    .line 5555
    iget-object v0, p0, Lcom/oplus/camera/CameraManager$r;->a:Lcom/oplus/camera/CameraManager;

    invoke-virtual {v0, v2, v2}, Lcom/oplus/camera/CameraManager;->c(ZZ)V

    .line 5556
    iget-object v5, p0, Lcom/oplus/camera/CameraManager$r;->a:Lcom/oplus/camera/CameraManager;

    const/4 v8, 0x0

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getEventTime()J

    move-result-wide v9

    invoke-static/range {v5 .. v10}, Lcom/oplus/camera/CameraManager;->a(Lcom/oplus/camera/CameraManager;IIZJ)V

    goto :goto_3

    :cond_b
    const-string p1, "onSingleTapUp, canTouch is false"

    .line 5558
    invoke-static {v1, p1}, Lcom/oplus/camera/e;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 5560
    iget-object p1, p0, Lcom/oplus/camera/CameraManager$r;->a:Lcom/oplus/camera/CameraManager;

    invoke-static {p1}, Lcom/oplus/camera/CameraManager;->g(Lcom/oplus/camera/CameraManager;)Lcom/oplus/camera/ui/d;

    move-result-object p1

    invoke-virtual {p1, v6, v7}, Lcom/oplus/camera/ui/d;->g(II)Z

    goto :goto_3

    :cond_c
    const-string p1, "onSingleTapUp, y is not in right area"

    .line 5564
    invoke-static {v1, p1}, Lcom/oplus/camera/e;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 5566
    iget-object p1, p0, Lcom/oplus/camera/CameraManager$r;->a:Lcom/oplus/camera/CameraManager;

    invoke-static {p1}, Lcom/oplus/camera/CameraManager;->g(Lcom/oplus/camera/CameraManager;)Lcom/oplus/camera/ui/d;

    move-result-object p1

    invoke-virtual {p1, v6, v7}, Lcom/oplus/camera/ui/d;->g(II)Z

    .line 5569
    :cond_d
    :goto_3
    iput-boolean v2, p0, Lcom/oplus/camera/CameraManager$r;->b:Z

    return v3

    :cond_e
    :goto_4
    if-eqz v0, :cond_f

    const-string p1, "onSingleTapUp, consumed by popupWindow"

    .line 5499
    invoke-static {v1, p1}, Lcom/oplus/camera/e;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 5501
    iget-object p1, p0, Lcom/oplus/camera/CameraManager$r;->a:Lcom/oplus/camera/CameraManager;

    invoke-static {p1}, Lcom/oplus/camera/CameraManager;->g(Lcom/oplus/camera/CameraManager;)Lcom/oplus/camera/ui/d;

    move-result-object p1

    invoke-virtual {p1}, Lcom/oplus/camera/ui/d;->cw()V

    :cond_f
    if-eqz v4, :cond_10

    const-string p1, "onSingleTapUp, consumed by ZoomMenu"

    .line 5505
    invoke-static {v1, p1}, Lcom/oplus/camera/e;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 5507
    iget-object p0, p0, Lcom/oplus/camera/CameraManager$r;->a:Lcom/oplus/camera/CameraManager;

    invoke-static {p0}, Lcom/oplus/camera/CameraManager;->ag(Lcom/oplus/camera/CameraManager;)Lcom/oplus/camera/ag;

    move-result-object p0

    invoke-virtual {p0, v2}, Lcom/oplus/camera/ag;->b(Z)Z

    :cond_10
    return v3

    .line 5471
    :cond_11
    :goto_5
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "onSingleTapUp, mbPaused: "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/oplus/camera/CameraManager$r;->a:Lcom/oplus/camera/CameraManager;

    invoke-static {v0}, Lcom/oplus/camera/CameraManager;->e(Lcom/oplus/camera/CameraManager;)Z

    move-result v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v0, ", mbSwitchingCamera: "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/oplus/camera/CameraManager$r;->a:Lcom/oplus/camera/CameraManager;

    .line 5472
    invoke-static {v0}, Lcom/oplus/camera/CameraManager;->E(Lcom/oplus/camera/CameraManager;)Z

    move-result v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v0, ", isSnapShotProgress: "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/oplus/camera/CameraManager$r;->a:Lcom/oplus/camera/CameraManager;

    .line 5473
    invoke-virtual {v0}, Lcom/oplus/camera/CameraManager;->V()Z

    move-result v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v0, ", !isPreviewStarted: "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/oplus/camera/CameraManager$r;->a:Lcom/oplus/camera/CameraManager;

    .line 5474
    invoke-virtual {v0}, Lcom/oplus/camera/CameraManager;->T()Z

    move-result v0

    xor-int/2addr v0, v3

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v0, ", mbHasReceiveDownEvent: "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean p0, p0, Lcom/oplus/camera/CameraManager$r;->b:Z

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    .line 5471
    invoke-static {v1, p0}, Lcom/oplus/camera/e;->a(Ljava/lang/String;Ljava/lang/String;)V

    return v2
.end method
