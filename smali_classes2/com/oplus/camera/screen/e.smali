.class public Lcom/oplus/camera/screen/e;
.super Ljava/lang/Object;
.source "ScreenModeChangeAnimation.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/oplus/camera/screen/e$b;,
        Lcom/oplus/camera/screen/e$a;
    }
.end annotation


# instance fields
.field private a:Lcom/oplus/camera/screen/e$b;

.field private b:Landroid/animation/ValueAnimator;

.field private c:Lcom/oplus/camera/screen/e$a;

.field private d:Landroid/animation/ValueAnimator;

.field private e:F

.field private f:Landroid/view/animation/PathInterpolator;

.field private g:Landroid/view/animation/PathInterpolator;


# direct methods
.method public constructor <init>(Lcom/oplus/camera/screen/e$b;)V
    .locals 5

    .line 21
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 13
    iput-object v0, p0, Lcom/oplus/camera/screen/e;->a:Lcom/oplus/camera/screen/e$b;

    .line 14
    iput-object v0, p0, Lcom/oplus/camera/screen/e;->b:Landroid/animation/ValueAnimator;

    .line 15
    iput-object v0, p0, Lcom/oplus/camera/screen/e;->c:Lcom/oplus/camera/screen/e$a;

    .line 16
    iput-object v0, p0, Lcom/oplus/camera/screen/e;->d:Landroid/animation/ValueAnimator;

    const/high16 v0, 0x3f800000    # 1.0f

    .line 17
    iput v0, p0, Lcom/oplus/camera/screen/e;->e:F

    .line 18
    new-instance v1, Landroid/view/animation/PathInterpolator;

    const v2, 0x3f2b851f    # 0.67f

    const/4 v3, 0x0

    const v4, 0x3ea8f5c3    # 0.33f

    invoke-direct {v1, v4, v3, v2, v0}, Landroid/view/animation/PathInterpolator;-><init>(FFFF)V

    iput-object v1, p0, Lcom/oplus/camera/screen/e;->f:Landroid/view/animation/PathInterpolator;

    .line 19
    new-instance v1, Landroid/view/animation/PathInterpolator;

    invoke-direct {v1, v4, v3, v2, v0}, Landroid/view/animation/PathInterpolator;-><init>(FFFF)V

    iput-object v1, p0, Lcom/oplus/camera/screen/e;->g:Landroid/view/animation/PathInterpolator;

    .line 22
    iput-object p1, p0, Lcom/oplus/camera/screen/e;->a:Lcom/oplus/camera/screen/e$b;

    const/4 p1, 0x2

    .line 23
    new-array v0, p1, [F

    fill-array-data v0, :array_0

    invoke-static {v0}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object v0

    const-wide/16 v1, 0xb4

    invoke-virtual {v0, v1, v2}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    move-result-object v0

    iput-object v0, p0, Lcom/oplus/camera/screen/e;->b:Landroid/animation/ValueAnimator;

    .line 24
    new-array p1, p1, [F

    fill-array-data p1, :array_1

    invoke-static {p1}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object p1

    const-wide/16 v0, 0xfa

    invoke-virtual {p1, v0, v1}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    move-result-object p1

    iput-object p1, p0, Lcom/oplus/camera/screen/e;->d:Landroid/animation/ValueAnimator;

    .line 25
    iget-object p1, p0, Lcom/oplus/camera/screen/e;->b:Landroid/animation/ValueAnimator;

    iget-object v0, p0, Lcom/oplus/camera/screen/e;->g:Landroid/view/animation/PathInterpolator;

    invoke-virtual {p1, v0}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 26
    iget-object p1, p0, Lcom/oplus/camera/screen/e;->d:Landroid/animation/ValueAnimator;

    iget-object v0, p0, Lcom/oplus/camera/screen/e;->f:Landroid/view/animation/PathInterpolator;

    invoke-virtual {p1, v0}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 28
    iget-object p1, p0, Lcom/oplus/camera/screen/e;->b:Landroid/animation/ValueAnimator;

    new-instance v0, Lcom/oplus/camera/screen/-$$Lambda$e$dJ6gzVC91PAKobEjcz70VTFKreU;

    invoke-direct {v0, p0}, Lcom/oplus/camera/screen/-$$Lambda$e$dJ6gzVC91PAKobEjcz70VTFKreU;-><init>(Lcom/oplus/camera/screen/e;)V

    invoke-virtual {p1, v0}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 38
    iget-object p1, p0, Lcom/oplus/camera/screen/e;->d:Landroid/animation/ValueAnimator;

    new-instance v0, Lcom/oplus/camera/screen/-$$Lambda$e$DX1nI9lnYfgtzG1ahA4nSH9nYPo;

    invoke-direct {v0, p0}, Lcom/oplus/camera/screen/-$$Lambda$e$DX1nI9lnYfgtzG1ahA4nSH9nYPo;-><init>(Lcom/oplus/camera/screen/e;)V

    invoke-virtual {p1, v0}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 49
    new-instance p1, Lcom/oplus/camera/screen/e$a;

    invoke-direct {p1, p0}, Lcom/oplus/camera/screen/e$a;-><init>(Lcom/oplus/camera/screen/e;)V

    iput-object p1, p0, Lcom/oplus/camera/screen/e;->c:Lcom/oplus/camera/screen/e$a;

    .line 50
    iget-object p1, p0, Lcom/oplus/camera/screen/e;->b:Landroid/animation/ValueAnimator;

    iget-object p0, p0, Lcom/oplus/camera/screen/e;->c:Lcom/oplus/camera/screen/e$a;

    invoke-virtual {p1, p0}, Landroid/animation/ValueAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    return-void

    nop

    :array_0
    .array-data 4
        0x3f800000    # 1.0f
        0x0
    .end array-data

    :array_1
    .array-data 4
        0x0
        0x3f800000    # 1.0f
    .end array-data
.end method

.method static synthetic a(Lcom/oplus/camera/screen/e;)Lcom/oplus/camera/screen/e$b;
    .locals 0

    .line 9
    iget-object p0, p0, Lcom/oplus/camera/screen/e;->a:Lcom/oplus/camera/screen/e$b;

    return-object p0
.end method

.method private synthetic a(Landroid/animation/ValueAnimator;)V
    .locals 1

    .line 39
    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Float;

    invoke-virtual {p1}, Ljava/lang/Float;->floatValue()F

    move-result p1

    iput p1, p0, Lcom/oplus/camera/screen/e;->e:F

    .line 40
    iget-object p1, p0, Lcom/oplus/camera/screen/e;->a:Lcom/oplus/camera/screen/e$b;

    invoke-interface {p1}, Lcom/oplus/camera/screen/e$b;->a()Landroid/view/View;

    move-result-object p1

    iget v0, p0, Lcom/oplus/camera/screen/e;->e:F

    invoke-virtual {p1, v0}, Landroid/view/View;->setAlpha(F)V

    .line 42
    iget-object p1, p0, Lcom/oplus/camera/screen/e;->a:Lcom/oplus/camera/screen/e$b;

    invoke-interface {p1}, Lcom/oplus/camera/screen/e$b;->b()Landroid/view/View;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 45
    iget p0, p0, Lcom/oplus/camera/screen/e;->e:F

    invoke-virtual {p1, p0}, Landroid/view/View;->setAlpha(F)V

    :cond_0
    return-void
.end method

.method static synthetic b(Lcom/oplus/camera/screen/e;)Landroid/animation/ValueAnimator;
    .locals 0

    .line 9
    iget-object p0, p0, Lcom/oplus/camera/screen/e;->d:Landroid/animation/ValueAnimator;

    return-object p0
.end method

.method private synthetic b(Landroid/animation/ValueAnimator;)V
    .locals 1

    .line 29
    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Float;

    invoke-virtual {p1}, Ljava/lang/Float;->floatValue()F

    move-result p1

    iput p1, p0, Lcom/oplus/camera/screen/e;->e:F

    .line 30
    iget-object p1, p0, Lcom/oplus/camera/screen/e;->a:Lcom/oplus/camera/screen/e$b;

    invoke-interface {p1}, Lcom/oplus/camera/screen/e$b;->a()Landroid/view/View;

    move-result-object p1

    iget v0, p0, Lcom/oplus/camera/screen/e;->e:F

    invoke-virtual {p1, v0}, Landroid/view/View;->setAlpha(F)V

    .line 31
    iget-object p1, p0, Lcom/oplus/camera/screen/e;->a:Lcom/oplus/camera/screen/e$b;

    invoke-interface {p1}, Lcom/oplus/camera/screen/e$b;->b()Landroid/view/View;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 34
    iget p0, p0, Lcom/oplus/camera/screen/e;->e:F

    invoke-virtual {p1, p0}, Landroid/view/View;->setAlpha(F)V

    :cond_0
    return-void
.end method

.method public static synthetic lambda$DX1nI9lnYfgtzG1ahA4nSH9nYPo(Lcom/oplus/camera/screen/e;Landroid/animation/ValueAnimator;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/oplus/camera/screen/e;->a(Landroid/animation/ValueAnimator;)V

    return-void
.end method

.method public static synthetic lambda$dJ6gzVC91PAKobEjcz70VTFKreU(Lcom/oplus/camera/screen/e;Landroid/animation/ValueAnimator;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/oplus/camera/screen/e;->b(Landroid/animation/ValueAnimator;)V

    return-void
.end method


# virtual methods
.method public a()V
    .locals 5

    const/4 v0, 0x1

    .line 54
    invoke-virtual {p0, v0}, Lcom/oplus/camera/screen/e;->a(Z)V

    .line 55
    iget-object v1, p0, Lcom/oplus/camera/screen/e;->b:Landroid/animation/ValueAnimator;

    const/4 v2, 0x2

    new-array v2, v2, [F

    iget v3, p0, Lcom/oplus/camera/screen/e;->e:F

    const/4 v4, 0x0

    aput v3, v2, v4

    const/4 v3, 0x0

    aput v3, v2, v0

    invoke-virtual {v1, v2}, Landroid/animation/ValueAnimator;->setFloatValues([F)V

    .line 56
    iget-object p0, p0, Lcom/oplus/camera/screen/e;->b:Landroid/animation/ValueAnimator;

    invoke-virtual {p0}, Landroid/animation/ValueAnimator;->start()V

    return-void
.end method

.method public a(Z)V
    .locals 1

    .line 64
    iget-object v0, p0, Lcom/oplus/camera/screen/e;->b:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->isRunning()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 65
    iget-object v0, p0, Lcom/oplus/camera/screen/e;->c:Lcom/oplus/camera/screen/e$a;

    xor-int/lit8 p1, p1, 0x1

    invoke-static {v0, p1}, Lcom/oplus/camera/screen/e$a;->a(Lcom/oplus/camera/screen/e$a;Z)Z

    .line 66
    iget-object p1, p0, Lcom/oplus/camera/screen/e;->b:Landroid/animation/ValueAnimator;

    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->cancel()V

    .line 69
    :cond_0
    iget-object p1, p0, Lcom/oplus/camera/screen/e;->d:Landroid/animation/ValueAnimator;

    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->isRunning()Z

    move-result p1

    if-eqz p1, :cond_1

    .line 70
    iget-object p0, p0, Lcom/oplus/camera/screen/e;->d:Landroid/animation/ValueAnimator;

    invoke-virtual {p0}, Landroid/animation/ValueAnimator;->cancel()V

    :cond_1
    return-void
.end method

.method public b()V
    .locals 1

    const/4 v0, 0x0

    .line 60
    invoke-virtual {p0, v0}, Lcom/oplus/camera/screen/e;->a(Z)V

    return-void
.end method
