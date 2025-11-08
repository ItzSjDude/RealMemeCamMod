.class public Lcom/coui/appcompat/dialog/panel/f;
.super Ljava/lang/Object;
.source "COUIPanelImeAnimController.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/coui/appcompat/dialog/panel/f$a;
    }
.end annotation


# static fields
.field private static final a:Landroid/view/animation/Interpolator;


# instance fields
.field private b:Landroid/view/WindowInsetsAnimationController;

.field private c:Landroid/os/CancellationSignal;

.field private d:Lcom/coui/appcompat/dialog/panel/f$a;

.field private e:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation
.end field

.field private f:Z

.field private g:Z

.field private h:Z

.field private i:Landroid/view/WindowInsetsController$OnControllableInsetsChangedListener;

.field private j:Landroid/view/WindowInsetsAnimationControlListener;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .line 47
    new-instance v0, Landroid/view/animation/PathInterpolator;

    const/4 v1, 0x0

    const v2, 0x3e19999a    # 0.15f

    const/high16 v3, 0x3f800000    # 1.0f

    invoke-direct {v0, v1, v1, v2, v3}, Landroid/view/animation/PathInterpolator;-><init>(FFFF)V

    sput-object v0, Lcom/coui/appcompat/dialog/panel/f;->a:Landroid/view/animation/Interpolator;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 43
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 78
    new-instance v0, Lcom/coui/appcompat/dialog/panel/f$1;

    invoke-direct {v0, p0}, Lcom/coui/appcompat/dialog/panel/f$1;-><init>(Lcom/coui/appcompat/dialog/panel/f;)V

    iput-object v0, p0, Lcom/coui/appcompat/dialog/panel/f;->i:Landroid/view/WindowInsetsController$OnControllableInsetsChangedListener;

    .line 109
    new-instance v0, Lcom/coui/appcompat/dialog/panel/f$2;

    invoke-direct {v0, p0}, Lcom/coui/appcompat/dialog/panel/f$2;-><init>(Lcom/coui/appcompat/dialog/panel/f;)V

    iput-object v0, p0, Lcom/coui/appcompat/dialog/panel/f;->j:Landroid/view/WindowInsetsAnimationControlListener;

    return-void
.end method

.method static synthetic a(Lcom/coui/appcompat/dialog/panel/f;)Lcom/coui/appcompat/dialog/panel/f$a;
    .locals 0

    .line 43
    iget-object p0, p0, Lcom/coui/appcompat/dialog/panel/f;->d:Lcom/coui/appcompat/dialog/panel/f$a;

    return-object p0
.end method

.method private a(Landroid/view/WindowInsetsAnimationController;)V
    .locals 4

    const/4 v0, 0x1

    .line 130
    iput-boolean v0, p0, Lcom/coui/appcompat/dialog/panel/f;->g:Z

    const/4 v1, 0x0

    .line 131
    iput-object v1, p0, Lcom/coui/appcompat/dialog/panel/f;->c:Landroid/os/CancellationSignal;

    .line 132
    iput-object p1, p0, Lcom/coui/appcompat/dialog/panel/f;->b:Landroid/view/WindowInsetsAnimationController;

    .line 133
    iget-object v2, p0, Lcom/coui/appcompat/dialog/panel/f;->e:Ljava/lang/ref/WeakReference;

    if-eqz v2, :cond_0

    .line 134
    invoke-virtual {v2}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getRootWindowInsets()Landroid/view/WindowInsets;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 136
    invoke-static {}, Landroid/view/WindowInsets$Type;->ime()I

    move-result v3

    invoke-virtual {v2, v3}, Landroid/view/WindowInsets;->isVisible(I)Z

    move-result v2

    iput-boolean v2, p0, Lcom/coui/appcompat/dialog/panel/f;->f:Z

    .line 139
    :cond_0
    iget-object v2, p0, Lcom/coui/appcompat/dialog/panel/f;->d:Lcom/coui/appcompat/dialog/panel/f$a;

    if-eqz v2, :cond_1

    .line 140
    invoke-interface {v2, p1, v0}, Lcom/coui/appcompat/dialog/panel/f$a;->a(Landroid/view/WindowInsetsAnimationController;Z)V

    .line 141
    iput-object v1, p0, Lcom/coui/appcompat/dialog/panel/f;->d:Lcom/coui/appcompat/dialog/panel/f$a;

    .line 143
    :cond_1
    iput-object v1, p0, Lcom/coui/appcompat/dialog/panel/f;->e:Ljava/lang/ref/WeakReference;

    const/4 p1, 0x0

    .line 144
    invoke-virtual {p0, p1}, Lcom/coui/appcompat/dialog/panel/f;->a(I)I

    return-void
.end method

.method static synthetic a(Lcom/coui/appcompat/dialog/panel/f;Landroid/view/WindowInsetsAnimationController;)V
    .locals 0

    .line 43
    invoke-direct {p0, p1}, Lcom/coui/appcompat/dialog/panel/f;->a(Landroid/view/WindowInsetsAnimationController;)V

    return-void
.end method

.method static synthetic a(Lcom/coui/appcompat/dialog/panel/f;Z)Z
    .locals 0

    .line 43
    iput-boolean p1, p0, Lcom/coui/appcompat/dialog/panel/f;->h:Z

    return p1
.end method

.method static synthetic b(Lcom/coui/appcompat/dialog/panel/f;)Landroid/os/CancellationSignal;
    .locals 0

    .line 43
    iget-object p0, p0, Lcom/coui/appcompat/dialog/panel/f;->c:Landroid/os/CancellationSignal;

    return-object p0
.end method

.method static synthetic c(Lcom/coui/appcompat/dialog/panel/f;)Landroid/view/WindowInsetsAnimationControlListener;
    .locals 0

    .line 43
    iget-object p0, p0, Lcom/coui/appcompat/dialog/panel/f;->j:Landroid/view/WindowInsetsAnimationControlListener;

    return-object p0
.end method

.method static synthetic d(Lcom/coui/appcompat/dialog/panel/f;)V
    .locals 0

    .line 43
    invoke-direct {p0}, Lcom/coui/appcompat/dialog/panel/f;->i()V

    return-void
.end method

.method private i()V
    .locals 2

    const/4 v0, 0x0

    .line 148
    iput-boolean v0, p0, Lcom/coui/appcompat/dialog/panel/f;->g:Z

    const/4 v1, 0x0

    .line 150
    iput-object v1, p0, Lcom/coui/appcompat/dialog/panel/f;->b:Landroid/view/WindowInsetsAnimationController;

    .line 151
    iput-object v1, p0, Lcom/coui/appcompat/dialog/panel/f;->c:Landroid/os/CancellationSignal;

    .line 153
    iput-boolean v0, p0, Lcom/coui/appcompat/dialog/panel/f;->f:Z

    .line 154
    iput-object v1, p0, Lcom/coui/appcompat/dialog/panel/f;->d:Lcom/coui/appcompat/dialog/panel/f$a;

    return-void
.end method


# virtual methods
.method public a(I)I
    .locals 1

    const/4 v0, 0x0

    .line 192
    invoke-virtual {p0, v0, p1}, Lcom/coui/appcompat/dialog/panel/f;->a(II)I

    move-result p0

    return p0
.end method

.method public a(II)I
    .locals 1

    .line 196
    iget-object v0, p0, Lcom/coui/appcompat/dialog/panel/f;->b:Landroid/view/WindowInsetsAnimationController;

    if-eqz v0, :cond_1

    if-nez p1, :cond_0

    .line 198
    invoke-virtual {p0}, Lcom/coui/appcompat/dialog/panel/f;->f()I

    move-result p1

    sub-int/2addr p1, p2

    invoke-virtual {p0, p1}, Lcom/coui/appcompat/dialog/panel/f;->b(I)I

    move-result p0

    return p0

    .line 200
    :cond_0
    invoke-virtual {p0}, Lcom/coui/appcompat/dialog/panel/f;->g()I

    move-result p1

    sub-int/2addr p1, p2

    invoke-virtual {p0, p1}, Lcom/coui/appcompat/dialog/panel/f;->b(I)I

    move-result p0

    return p0

    :cond_1
    const/4 p0, 0x0

    return p0
.end method

.method public a(Landroid/view/View;Lcom/coui/appcompat/dialog/panel/f$a;)V
    .locals 1

    if-eqz p1, :cond_0

    .line 68
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/coui/appcompat/dialog/panel/f;->e:Ljava/lang/ref/WeakReference;

    .line 69
    invoke-virtual {p1}, Landroid/view/View;->getWindowInsetsController()Landroid/view/WindowInsetsController;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 71
    new-instance v0, Landroid/os/CancellationSignal;

    invoke-direct {v0}, Landroid/os/CancellationSignal;-><init>()V

    iput-object v0, p0, Lcom/coui/appcompat/dialog/panel/f;->c:Landroid/os/CancellationSignal;

    .line 72
    iput-object p2, p0, Lcom/coui/appcompat/dialog/panel/f;->d:Lcom/coui/appcompat/dialog/panel/f$a;

    .line 73
    iget-object p0, p0, Lcom/coui/appcompat/dialog/panel/f;->i:Landroid/view/WindowInsetsController$OnControllableInsetsChangedListener;

    invoke-interface {p1, p0}, Landroid/view/WindowInsetsController;->addOnControllableInsetsChangedListener(Landroid/view/WindowInsetsController$OnControllableInsetsChangedListener;)V

    :cond_0
    return-void
.end method

.method public a(Z)V
    .locals 3

    .line 263
    iget-object v0, p0, Lcom/coui/appcompat/dialog/panel/f;->b:Landroid/view/WindowInsetsAnimationController;

    if-eqz v0, :cond_1

    .line 264
    invoke-virtual {p0}, Lcom/coui/appcompat/dialog/panel/f;->f()I

    move-result v0

    if-eqz p1, :cond_0

    .line 266
    invoke-virtual {p0}, Lcom/coui/appcompat/dialog/panel/f;->g()I

    move-result p1

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Lcom/coui/appcompat/dialog/panel/f;->h()I

    move-result p1

    :goto_0
    const/4 v1, 0x2

    .line 267
    new-array v1, v1, [I

    const/4 v2, 0x0

    aput v0, v1, v2

    const/4 v0, 0x1

    aput p1, v1, v0

    invoke-static {v1}, Landroid/animation/ValueAnimator;->ofInt([I)Landroid/animation/ValueAnimator;

    move-result-object p1

    .line 268
    sget-object v0, Lcom/coui/appcompat/dialog/panel/f;->a:Landroid/view/animation/Interpolator;

    invoke-virtual {p1, v0}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    const-wide/16 v0, 0x12c

    .line 269
    invoke-virtual {p1, v0, v1}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 270
    new-instance v0, Lcom/coui/appcompat/dialog/panel/f$3;

    invoke-direct {v0, p0}, Lcom/coui/appcompat/dialog/panel/f$3;-><init>(Lcom/coui/appcompat/dialog/panel/f;)V

    invoke-virtual {p1, v0}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 277
    new-instance v0, Lcom/coui/appcompat/dialog/panel/f$4;

    invoke-direct {v0, p0}, Lcom/coui/appcompat/dialog/panel/f$4;-><init>(Lcom/coui/appcompat/dialog/panel/f;)V

    invoke-virtual {p1, v0}, Landroid/animation/ValueAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 296
    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->start()V

    :cond_1
    return-void
.end method

.method public a()Z
    .locals 0

    .line 161
    iget-object p0, p0, Lcom/coui/appcompat/dialog/panel/f;->b:Landroid/view/WindowInsetsAnimationController;

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public b(I)I
    .locals 5

    .line 214
    iget-object v0, p0, Lcom/coui/appcompat/dialog/panel/f;->b:Landroid/view/WindowInsetsAnimationController;

    const/4 v1, 0x0

    if-eqz v0, :cond_2

    .line 215
    invoke-virtual {p0}, Lcom/coui/appcompat/dialog/panel/f;->h()I

    move-result v0

    .line 216
    invoke-virtual {p0}, Lcom/coui/appcompat/dialog/panel/f;->g()I

    move-result v2

    .line 218
    iget-boolean v3, p0, Lcom/coui/appcompat/dialog/panel/f;->f:Z

    if-eqz v3, :cond_0

    move v3, v2

    goto :goto_0

    :cond_0
    move v3, v0

    .line 219
    :goto_0
    iget-boolean v4, p0, Lcom/coui/appcompat/dialog/panel/f;->f:Z

    if-eqz v4, :cond_1

    move v4, v0

    goto :goto_1

    :cond_1
    move v4, v2

    :goto_1
    if-eq v4, v3, :cond_2

    .line 222
    invoke-static {p1, v2}, Ljava/lang/Math;->min(II)I

    move-result p1

    invoke-static {v0, p1}, Ljava/lang/Math;->max(II)I

    move-result p1

    .line 223
    invoke-virtual {p0}, Lcom/coui/appcompat/dialog/panel/f;->f()I

    move-result v0

    sub-int/2addr v0, p1

    sub-int v2, p1, v3

    int-to-float v2, v2

    sub-int/2addr v4, v3

    int-to-float v3, v4

    div-float/2addr v2, v3

    .line 225
    iget-object p0, p0, Lcom/coui/appcompat/dialog/panel/f;->b:Landroid/view/WindowInsetsAnimationController;

    .line 226
    invoke-static {v1, v1, v1, p1}, Landroid/graphics/Insets;->of(IIII)Landroid/graphics/Insets;

    move-result-object p1

    const/high16 v1, 0x3f800000    # 1.0f

    .line 225
    invoke-interface {p0, p1, v1, v2}, Landroid/view/WindowInsetsAnimationController;->setInsetsAndAlpha(Landroid/graphics/Insets;FF)V

    goto :goto_2

    :cond_2
    move v0, v1

    :goto_2
    return v0
.end method

.method public b()Z
    .locals 0

    .line 168
    iget-object p0, p0, Lcom/coui/appcompat/dialog/panel/f;->c:Landroid/os/CancellationSignal;

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public c()Z
    .locals 0

    .line 175
    iget-boolean p0, p0, Lcom/coui/appcompat/dialog/panel/f;->h:Z

    return p0
.end method

.method public d()Z
    .locals 0

    .line 182
    iget-boolean p0, p0, Lcom/coui/appcompat/dialog/panel/f;->g:Z

    return p0
.end method

.method public e()V
    .locals 4

    .line 239
    iget-object v0, p0, Lcom/coui/appcompat/dialog/panel/f;->b:Landroid/view/WindowInsetsAnimationController;

    if-eqz v0, :cond_3

    .line 240
    invoke-virtual {p0}, Lcom/coui/appcompat/dialog/panel/f;->f()I

    move-result v0

    .line 241
    invoke-virtual {p0}, Lcom/coui/appcompat/dialog/panel/f;->g()I

    move-result v1

    .line 242
    invoke-virtual {p0}, Lcom/coui/appcompat/dialog/panel/f;->h()I

    move-result v2

    const/4 v3, 0x1

    if-ne v0, v1, :cond_0

    .line 244
    iget-object p0, p0, Lcom/coui/appcompat/dialog/panel/f;->b:Landroid/view/WindowInsetsAnimationController;

    invoke-interface {p0, v3}, Landroid/view/WindowInsetsAnimationController;->finish(Z)V

    goto :goto_0

    :cond_0
    if-ne v0, v2, :cond_1

    .line 246
    iget-object p0, p0, Lcom/coui/appcompat/dialog/panel/f;->b:Landroid/view/WindowInsetsAnimationController;

    const/4 v0, 0x0

    invoke-interface {p0, v0}, Landroid/view/WindowInsetsAnimationController;->finish(Z)V

    goto :goto_0

    .line 247
    :cond_1
    iget-object v0, p0, Lcom/coui/appcompat/dialog/panel/f;->b:Landroid/view/WindowInsetsAnimationController;

    invoke-interface {v0}, Landroid/view/WindowInsetsAnimationController;->getCurrentFraction()F

    move-result v0

    const v1, 0x3e19999a    # 0.15f

    cmpl-float v0, v0, v1

    if-ltz v0, :cond_2

    .line 248
    iget-object v0, p0, Lcom/coui/appcompat/dialog/panel/f;->b:Landroid/view/WindowInsetsAnimationController;

    iget-boolean p0, p0, Lcom/coui/appcompat/dialog/panel/f;->f:Z

    xor-int/2addr p0, v3

    invoke-interface {v0, p0}, Landroid/view/WindowInsetsAnimationController;->finish(Z)V

    goto :goto_0

    .line 250
    :cond_2
    iget-object v0, p0, Lcom/coui/appcompat/dialog/panel/f;->b:Landroid/view/WindowInsetsAnimationController;

    iget-boolean p0, p0, Lcom/coui/appcompat/dialog/panel/f;->f:Z

    invoke-interface {v0, p0}, Landroid/view/WindowInsetsAnimationController;->finish(Z)V

    goto :goto_0

    .line 252
    :cond_3
    iget-object p0, p0, Lcom/coui/appcompat/dialog/panel/f;->c:Landroid/os/CancellationSignal;

    if-eqz p0, :cond_4

    .line 253
    invoke-virtual {p0}, Landroid/os/CancellationSignal;->cancel()V

    :cond_4
    :goto_0
    return-void
.end method

.method public f()I
    .locals 0

    .line 301
    iget-object p0, p0, Lcom/coui/appcompat/dialog/panel/f;->b:Landroid/view/WindowInsetsAnimationController;

    if-eqz p0, :cond_0

    .line 302
    invoke-interface {p0}, Landroid/view/WindowInsetsAnimationController;->getCurrentInsets()Landroid/graphics/Insets;

    move-result-object p0

    iget p0, p0, Landroid/graphics/Insets;->bottom:I

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public g()I
    .locals 0

    .line 308
    iget-object p0, p0, Lcom/coui/appcompat/dialog/panel/f;->b:Landroid/view/WindowInsetsAnimationController;

    if-eqz p0, :cond_0

    .line 309
    invoke-interface {p0}, Landroid/view/WindowInsetsAnimationController;->getShownStateInsets()Landroid/graphics/Insets;

    move-result-object p0

    iget p0, p0, Landroid/graphics/Insets;->bottom:I

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public h()I
    .locals 0

    .line 315
    iget-object p0, p0, Lcom/coui/appcompat/dialog/panel/f;->b:Landroid/view/WindowInsetsAnimationController;

    if-eqz p0, :cond_0

    .line 316
    invoke-interface {p0}, Landroid/view/WindowInsetsAnimationController;->getHiddenStateInsets()Landroid/graphics/Insets;

    move-result-object p0

    iget p0, p0, Landroid/graphics/Insets;->bottom:I

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method
