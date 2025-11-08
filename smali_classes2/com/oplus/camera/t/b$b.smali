.class Lcom/oplus/camera/t/b$b;
.super Ljava/lang/Object;
.source "ScaleBar.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/oplus/camera/t/b;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "b"
.end annotation


# instance fields
.field final synthetic a:Lcom/oplus/camera/t/b;

.field private b:I

.field private c:I

.field private d:F

.field private e:F

.field private f:F

.field private g:F

.field private h:F

.field private i:Z

.field private j:J

.field private k:Landroid/view/animation/Interpolator;


# direct methods
.method public constructor <init>(Lcom/oplus/camera/t/b;F)V
    .locals 2

    .line 458
    iput-object p1, p0, Lcom/oplus/camera/t/b$b;->a:Lcom/oplus/camera/t/b;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/16 v0, 0x190

    .line 444
    iput v0, p0, Lcom/oplus/camera/t/b$b;->b:I

    const/16 v0, 0x10

    .line 445
    iput v0, p0, Lcom/oplus/camera/t/b$b;->c:I

    const v0, 0x3e19999a    # 0.15f

    .line 451
    iput v0, p0, Lcom/oplus/camera/t/b$b;->h:F

    .line 456
    new-instance v0, Lcom/oplus/camera/t/b$a;

    iget-object v1, p0, Lcom/oplus/camera/t/b$b;->a:Lcom/oplus/camera/t/b;

    invoke-direct {v0, v1}, Lcom/oplus/camera/t/b$a;-><init>(Lcom/oplus/camera/t/b;)V

    iput-object v0, p0, Lcom/oplus/camera/t/b$b;->k:Landroid/view/animation/Interpolator;

    const/4 v0, 0x0

    .line 459
    iput-boolean v0, p0, Lcom/oplus/camera/t/b$b;->i:Z

    .line 461
    invoke-static {p1}, Lcom/oplus/camera/t/b;->a(Lcom/oplus/camera/t/b;)Lcom/oplus/camera/t/b$c;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 462
    invoke-static {p1}, Lcom/oplus/camera/t/b;->a(Lcom/oplus/camera/t/b;)Lcom/oplus/camera/t/b$c;

    move-result-object p1

    iget-boolean v0, p0, Lcom/oplus/camera/t/b$b;->i:Z

    xor-int/lit8 v0, v0, 0x1

    invoke-interface {p1, v0}, Lcom/oplus/camera/t/b$c;->a(Z)V

    :cond_0
    const/4 p1, 0x0

    .line 465
    iput p1, p0, Lcom/oplus/camera/t/b$b;->g:F

    const/high16 p1, 0x3f800000    # 1.0f

    .line 466
    iget v0, p0, Lcom/oplus/camera/t/b$b;->b:I

    int-to-float v1, v0

    div-float/2addr p1, v1

    iput p1, p0, Lcom/oplus/camera/t/b$b;->d:F

    .line 467
    iput p2, p0, Lcom/oplus/camera/t/b$b;->e:F

    int-to-float p1, v0

    .line 468
    iget p2, p0, Lcom/oplus/camera/t/b$b;->e:F

    mul-float/2addr p1, p2

    const/high16 p2, 0x447a0000    # 1000.0f

    div-float/2addr p1, p2

    iget p2, p0, Lcom/oplus/camera/t/b$b;->h:F

    mul-float/2addr p1, p2

    iput p1, p0, Lcom/oplus/camera/t/b$b;->f:F

    .line 469
    invoke-static {}, Landroid/view/animation/AnimationUtils;->currentAnimationTimeMillis()J

    move-result-wide p1

    iput-wide p1, p0, Lcom/oplus/camera/t/b$b;->j:J

    return-void
.end method


# virtual methods
.method public a()V
    .locals 2

    const/4 v0, 0x1

    .line 473
    iput-boolean v0, p0, Lcom/oplus/camera/t/b$b;->i:Z

    .line 475
    iget-object v1, p0, Lcom/oplus/camera/t/b$b;->a:Lcom/oplus/camera/t/b;

    invoke-static {v1}, Lcom/oplus/camera/t/b;->a(Lcom/oplus/camera/t/b;)Lcom/oplus/camera/t/b$c;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 476
    iget-object v1, p0, Lcom/oplus/camera/t/b$b;->a:Lcom/oplus/camera/t/b;

    invoke-static {v1}, Lcom/oplus/camera/t/b;->a(Lcom/oplus/camera/t/b;)Lcom/oplus/camera/t/b$c;

    move-result-object v1

    iget-boolean p0, p0, Lcom/oplus/camera/t/b$b;->i:Z

    xor-int/2addr p0, v0

    invoke-interface {v1, p0}, Lcom/oplus/camera/t/b$c;->a(Z)V

    :cond_0
    return-void
.end method

.method public run()V
    .locals 4

    .line 482
    iget-boolean v0, p0, Lcom/oplus/camera/t/b$b;->i:Z

    if-eqz v0, :cond_0

    return-void

    .line 486
    :cond_0
    invoke-static {}, Landroid/view/animation/AnimationUtils;->currentAnimationTimeMillis()J

    move-result-wide v0

    iget-wide v2, p0, Lcom/oplus/camera/t/b$b;->j:J

    sub-long/2addr v0, v2

    long-to-int v0, v0

    .line 487
    iget-object v1, p0, Lcom/oplus/camera/t/b$b;->k:Landroid/view/animation/Interpolator;

    int-to-float v2, v0

    iget v3, p0, Lcom/oplus/camera/t/b$b;->d:F

    mul-float/2addr v2, v3

    invoke-interface {v1, v2}, Landroid/view/animation/Interpolator;->getInterpolation(F)F

    move-result v1

    .line 488
    iget v2, p0, Lcom/oplus/camera/t/b$b;->g:F

    sub-float v2, v1, v2

    iget v3, p0, Lcom/oplus/camera/t/b$b;->f:F

    mul-float/2addr v2, v3

    .line 489
    iput v1, p0, Lcom/oplus/camera/t/b$b;->g:F

    .line 491
    iget v1, p0, Lcom/oplus/camera/t/b$b;->b:I

    if-ge v0, v1, :cond_1

    .line 492
    iget-object v0, p0, Lcom/oplus/camera/t/b$b;->a:Lcom/oplus/camera/t/b;

    invoke-static {v0, v2}, Lcom/oplus/camera/t/b;->a(Lcom/oplus/camera/t/b;F)V

    .line 493
    iget-object v0, p0, Lcom/oplus/camera/t/b$b;->a:Lcom/oplus/camera/t/b;

    invoke-static {v0}, Lcom/oplus/camera/t/b;->b(Lcom/oplus/camera/t/b;)Landroid/os/Handler;

    move-result-object v0

    iget v1, p0, Lcom/oplus/camera/t/b$b;->c:I

    int-to-long v1, v1

    invoke-virtual {v0, p0, v1, v2}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_0

    :cond_1
    if-lt v0, v1, :cond_2

    const/4 v0, 0x0

    .line 495
    iput v0, p0, Lcom/oplus/camera/t/b$b;->g:F

    .line 496
    iget-object v0, p0, Lcom/oplus/camera/t/b$b;->a:Lcom/oplus/camera/t/b;

    invoke-static {v0}, Lcom/oplus/camera/t/b;->c(Lcom/oplus/camera/t/b;)V

    const/4 v0, 0x1

    .line 497
    iput-boolean v0, p0, Lcom/oplus/camera/t/b$b;->i:Z

    .line 499
    iget-object v1, p0, Lcom/oplus/camera/t/b$b;->a:Lcom/oplus/camera/t/b;

    invoke-static {v1}, Lcom/oplus/camera/t/b;->a(Lcom/oplus/camera/t/b;)Lcom/oplus/camera/t/b$c;

    move-result-object v1

    if-eqz v1, :cond_2

    .line 500
    iget-object v1, p0, Lcom/oplus/camera/t/b$b;->a:Lcom/oplus/camera/t/b;

    invoke-static {v1}, Lcom/oplus/camera/t/b;->a(Lcom/oplus/camera/t/b;)Lcom/oplus/camera/t/b$c;

    move-result-object v1

    iget-boolean p0, p0, Lcom/oplus/camera/t/b$b;->i:Z

    xor-int/2addr p0, v0

    invoke-interface {v1, p0}, Lcom/oplus/camera/t/b$c;->a(Z)V

    :cond_2
    :goto_0
    return-void
.end method
