.class Lcom/oplus/camera/longexposure/i$b;
.super Ljava/lang/Object;
.source "LongExposureScaleBar.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/oplus/camera/longexposure/i;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "b"
.end annotation


# instance fields
.field final synthetic a:Lcom/oplus/camera/longexposure/i;

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
.method public constructor <init>(Lcom/oplus/camera/longexposure/i;F)V
    .locals 2

    .line 683
    iput-object p1, p0, Lcom/oplus/camera/longexposure/i$b;->a:Lcom/oplus/camera/longexposure/i;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/16 v0, 0x190

    .line 669
    iput v0, p0, Lcom/oplus/camera/longexposure/i$b;->b:I

    const/16 v0, 0x10

    .line 670
    iput v0, p0, Lcom/oplus/camera/longexposure/i$b;->c:I

    const v0, 0x3e19999a    # 0.15f

    .line 676
    iput v0, p0, Lcom/oplus/camera/longexposure/i$b;->h:F

    .line 681
    new-instance v0, Lcom/oplus/camera/longexposure/i$a;

    iget-object v1, p0, Lcom/oplus/camera/longexposure/i$b;->a:Lcom/oplus/camera/longexposure/i;

    invoke-direct {v0, v1}, Lcom/oplus/camera/longexposure/i$a;-><init>(Lcom/oplus/camera/longexposure/i;)V

    iput-object v0, p0, Lcom/oplus/camera/longexposure/i$b;->k:Landroid/view/animation/Interpolator;

    const/4 v0, 0x0

    .line 684
    iput-boolean v0, p0, Lcom/oplus/camera/longexposure/i$b;->i:Z

    .line 686
    invoke-static {p1}, Lcom/oplus/camera/longexposure/i;->e(Lcom/oplus/camera/longexposure/i;)Lcom/oplus/camera/longexposure/i$c;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 687
    invoke-static {p1}, Lcom/oplus/camera/longexposure/i;->e(Lcom/oplus/camera/longexposure/i;)Lcom/oplus/camera/longexposure/i$c;

    move-result-object p1

    iget-boolean v0, p0, Lcom/oplus/camera/longexposure/i$b;->i:Z

    xor-int/lit8 v0, v0, 0x1

    invoke-interface {p1, v0}, Lcom/oplus/camera/longexposure/i$c;->c(Z)V

    :cond_0
    const/4 p1, 0x0

    .line 690
    iput p1, p0, Lcom/oplus/camera/longexposure/i$b;->g:F

    const/high16 p1, 0x3f800000    # 1.0f

    .line 691
    iget v0, p0, Lcom/oplus/camera/longexposure/i$b;->b:I

    int-to-float v1, v0

    div-float/2addr p1, v1

    iput p1, p0, Lcom/oplus/camera/longexposure/i$b;->d:F

    .line 692
    iput p2, p0, Lcom/oplus/camera/longexposure/i$b;->e:F

    int-to-float p1, v0

    .line 693
    iget p2, p0, Lcom/oplus/camera/longexposure/i$b;->e:F

    mul-float/2addr p1, p2

    const/high16 p2, 0x447a0000    # 1000.0f

    div-float/2addr p1, p2

    iget p2, p0, Lcom/oplus/camera/longexposure/i$b;->h:F

    mul-float/2addr p1, p2

    iput p1, p0, Lcom/oplus/camera/longexposure/i$b;->f:F

    .line 694
    invoke-static {}, Landroid/view/animation/AnimationUtils;->currentAnimationTimeMillis()J

    move-result-wide p1

    iput-wide p1, p0, Lcom/oplus/camera/longexposure/i$b;->j:J

    return-void
.end method


# virtual methods
.method public a()V
    .locals 2

    const/4 v0, 0x1

    .line 698
    iput-boolean v0, p0, Lcom/oplus/camera/longexposure/i$b;->i:Z

    .line 700
    iget-object v1, p0, Lcom/oplus/camera/longexposure/i$b;->a:Lcom/oplus/camera/longexposure/i;

    invoke-static {v1}, Lcom/oplus/camera/longexposure/i;->e(Lcom/oplus/camera/longexposure/i;)Lcom/oplus/camera/longexposure/i$c;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 701
    iget-object v1, p0, Lcom/oplus/camera/longexposure/i$b;->a:Lcom/oplus/camera/longexposure/i;

    invoke-static {v1}, Lcom/oplus/camera/longexposure/i;->e(Lcom/oplus/camera/longexposure/i;)Lcom/oplus/camera/longexposure/i$c;

    move-result-object v1

    iget-boolean p0, p0, Lcom/oplus/camera/longexposure/i$b;->i:Z

    xor-int/2addr p0, v0

    invoke-interface {v1, p0}, Lcom/oplus/camera/longexposure/i$c;->c(Z)V

    :cond_0
    return-void
.end method

.method public run()V
    .locals 4

    .line 707
    iget-boolean v0, p0, Lcom/oplus/camera/longexposure/i$b;->i:Z

    if-eqz v0, :cond_0

    return-void

    .line 711
    :cond_0
    invoke-static {}, Landroid/view/animation/AnimationUtils;->currentAnimationTimeMillis()J

    move-result-wide v0

    iget-wide v2, p0, Lcom/oplus/camera/longexposure/i$b;->j:J

    sub-long/2addr v0, v2

    long-to-int v0, v0

    .line 712
    iget-object v1, p0, Lcom/oplus/camera/longexposure/i$b;->k:Landroid/view/animation/Interpolator;

    int-to-float v2, v0

    iget v3, p0, Lcom/oplus/camera/longexposure/i$b;->d:F

    mul-float/2addr v2, v3

    invoke-interface {v1, v2}, Landroid/view/animation/Interpolator;->getInterpolation(F)F

    move-result v1

    .line 713
    iget v2, p0, Lcom/oplus/camera/longexposure/i$b;->g:F

    sub-float v2, v1, v2

    iget v3, p0, Lcom/oplus/camera/longexposure/i$b;->f:F

    mul-float/2addr v2, v3

    .line 714
    iput v1, p0, Lcom/oplus/camera/longexposure/i$b;->g:F

    .line 716
    iget v1, p0, Lcom/oplus/camera/longexposure/i$b;->b:I

    const/4 v3, 0x0

    if-ge v0, v1, :cond_1

    .line 717
    iget-object v0, p0, Lcom/oplus/camera/longexposure/i$b;->a:Lcom/oplus/camera/longexposure/i;

    invoke-static {v0, v2}, Lcom/oplus/camera/longexposure/i;->d(Lcom/oplus/camera/longexposure/i;F)V

    .line 718
    iget-object v0, p0, Lcom/oplus/camera/longexposure/i$b;->a:Lcom/oplus/camera/longexposure/i;

    invoke-static {v0}, Lcom/oplus/camera/longexposure/i;->f(Lcom/oplus/camera/longexposure/i;)Landroid/os/Handler;

    move-result-object v0

    iget v1, p0, Lcom/oplus/camera/longexposure/i$b;->c:I

    int-to-long v1, v1

    invoke-virtual {v0, p0, v1, v2}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_0

    :cond_1
    if-lt v0, v1, :cond_3

    .line 720
    iput v3, p0, Lcom/oplus/camera/longexposure/i$b;->g:F

    .line 722
    iget-object v0, p0, Lcom/oplus/camera/longexposure/i$b;->a:Lcom/oplus/camera/longexposure/i;

    invoke-static {v0}, Lcom/oplus/camera/longexposure/i;->a(Lcom/oplus/camera/longexposure/i;)F

    move-result v0

    cmpl-float v0, v0, v3

    if-nez v0, :cond_2

    .line 723
    iget-object v0, p0, Lcom/oplus/camera/longexposure/i$b;->a:Lcom/oplus/camera/longexposure/i;

    invoke-static {v0}, Lcom/oplus/camera/longexposure/i;->g(Lcom/oplus/camera/longexposure/i;)V

    .line 726
    :cond_2
    iget-object v0, p0, Lcom/oplus/camera/longexposure/i$b;->a:Lcom/oplus/camera/longexposure/i;

    invoke-static {v0}, Lcom/oplus/camera/longexposure/i;->g(Lcom/oplus/camera/longexposure/i;)V

    const/4 v0, 0x1

    .line 727
    iput-boolean v0, p0, Lcom/oplus/camera/longexposure/i$b;->i:Z

    .line 729
    iget-object v1, p0, Lcom/oplus/camera/longexposure/i$b;->a:Lcom/oplus/camera/longexposure/i;

    invoke-static {v1}, Lcom/oplus/camera/longexposure/i;->e(Lcom/oplus/camera/longexposure/i;)Lcom/oplus/camera/longexposure/i$c;

    move-result-object v1

    if-eqz v1, :cond_3

    .line 730
    iget-object v1, p0, Lcom/oplus/camera/longexposure/i$b;->a:Lcom/oplus/camera/longexposure/i;

    invoke-static {v1}, Lcom/oplus/camera/longexposure/i;->e(Lcom/oplus/camera/longexposure/i;)Lcom/oplus/camera/longexposure/i$c;

    move-result-object v1

    iget-boolean v2, p0, Lcom/oplus/camera/longexposure/i$b;->i:Z

    xor-int/2addr v0, v2

    invoke-interface {v1, v0}, Lcom/oplus/camera/longexposure/i$c;->c(Z)V

    .line 734
    :cond_3
    :goto_0
    iget-object v0, p0, Lcom/oplus/camera/longexposure/i$b;->a:Lcom/oplus/camera/longexposure/i;

    invoke-static {v0}, Lcom/oplus/camera/longexposure/i;->a(Lcom/oplus/camera/longexposure/i;)F

    move-result v0

    cmpl-float v0, v3, v0

    if-eqz v0, :cond_4

    .line 735
    iget-object p0, p0, Lcom/oplus/camera/longexposure/i$b;->a:Lcom/oplus/camera/longexposure/i;

    invoke-static {p0}, Lcom/oplus/camera/longexposure/i;->h(Lcom/oplus/camera/longexposure/i;)V

    :cond_4
    return-void
.end method
