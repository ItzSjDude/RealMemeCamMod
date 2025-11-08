.class public Lcom/oplus/camera/photo3d/ui/c;
.super Ljava/lang/Object;
.source "MenuSwitcher.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/oplus/camera/photo3d/ui/c$a;
    }
.end annotation


# instance fields
.field private a:I

.field private b:Landroid/app/Activity;

.field private c:Lcom/oplus/camera/ui/RotateImageView;

.field private d:Landroid/widget/RelativeLayout;

.field private e:Landroid/view/animation/PathInterpolator;

.field private f:Landroid/view/animation/PathInterpolator;

.field private g:Landroid/animation/AnimatorSet;

.field private h:Landroid/animation/AnimatorSet;

.field private i:Lcom/oplus/camera/photo3d/ui/c$a;

.field private j:I


# direct methods
.method public constructor <init>(Landroid/app/Activity;Landroid/widget/RelativeLayout;)V
    .locals 5

    .line 36
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 28
    new-instance v0, Landroid/view/animation/PathInterpolator;

    const/high16 v1, 0x3f800000    # 1.0f

    const/4 v2, 0x0

    const v3, 0x3ea8f5c3    # 0.33f

    const v4, 0x3f2b851f    # 0.67f

    invoke-direct {v0, v3, v2, v4, v1}, Landroid/view/animation/PathInterpolator;-><init>(FFFF)V

    iput-object v0, p0, Lcom/oplus/camera/photo3d/ui/c;->e:Landroid/view/animation/PathInterpolator;

    .line 29
    new-instance v0, Landroid/view/animation/PathInterpolator;

    const v3, 0x3e99999a    # 0.3f

    const v4, 0x3dcccccd    # 0.1f

    invoke-direct {v0, v3, v2, v4, v1}, Landroid/view/animation/PathInterpolator;-><init>(FFFF)V

    iput-object v0, p0, Lcom/oplus/camera/photo3d/ui/c;->f:Landroid/view/animation/PathInterpolator;

    .line 37
    iput-object p1, p0, Lcom/oplus/camera/photo3d/ui/c;->b:Landroid/app/Activity;

    .line 38
    iput-object p2, p0, Lcom/oplus/camera/photo3d/ui/c;->d:Landroid/widget/RelativeLayout;

    return-void
.end method

.method static synthetic a(Lcom/oplus/camera/photo3d/ui/c;)Lcom/oplus/camera/photo3d/ui/c$a;
    .locals 0

    .line 21
    iget-object p0, p0, Lcom/oplus/camera/photo3d/ui/c;->i:Lcom/oplus/camera/photo3d/ui/c$a;

    return-object p0
.end method

.method static synthetic b(Lcom/oplus/camera/photo3d/ui/c;)Lcom/oplus/camera/ui/RotateImageView;
    .locals 0

    .line 21
    iget-object p0, p0, Lcom/oplus/camera/photo3d/ui/c;->c:Lcom/oplus/camera/ui/RotateImageView;

    return-object p0
.end method

.method private b()V
    .locals 4

    .line 42
    iget-object v0, p0, Lcom/oplus/camera/photo3d/ui/c;->c:Lcom/oplus/camera/ui/RotateImageView;

    if-eqz v0, :cond_0

    return-void

    .line 46
    :cond_0
    iget-object v0, p0, Lcom/oplus/camera/photo3d/ui/c;->b:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0706f3

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lcom/oplus/camera/photo3d/ui/c;->a:I

    .line 48
    new-instance v0, Lcom/oplus/camera/ui/RotateImageView;

    iget-object v1, p0, Lcom/oplus/camera/photo3d/ui/c;->b:Landroid/app/Activity;

    invoke-direct {v0, v1}, Lcom/oplus/camera/ui/RotateImageView;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/oplus/camera/photo3d/ui/c;->c:Lcom/oplus/camera/ui/RotateImageView;

    .line 49
    iget-object v0, p0, Lcom/oplus/camera/photo3d/ui/c;->c:Lcom/oplus/camera/ui/RotateImageView;

    iget-object v1, p0, Lcom/oplus/camera/photo3d/ui/c;->b:Landroid/app/Activity;

    const v2, 0x7f08046c

    invoke-virtual {v1, v2}, Landroid/app/Activity;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/oplus/camera/ui/RotateImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 50
    iget-object v0, p0, Lcom/oplus/camera/photo3d/ui/c;->c:Lcom/oplus/camera/ui/RotateImageView;

    iget-object v1, p0, Lcom/oplus/camera/photo3d/ui/c;->b:Landroid/app/Activity;

    const v2, 0x7f0803f2

    invoke-virtual {v1, v2}, Landroid/app/Activity;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/oplus/camera/ui/RotateImageView;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 51
    iget-object v0, p0, Lcom/oplus/camera/photo3d/ui/c;->c:Lcom/oplus/camera/ui/RotateImageView;

    iget-object v1, p0, Lcom/oplus/camera/photo3d/ui/c;->b:Landroid/app/Activity;

    invoke-static {v1}, Lcom/oplus/camera/util/Util;->A(Landroid/content/Context;)I

    move-result v1

    sget-object v2, Landroid/graphics/PorterDuff$Mode;->SRC_ATOP:Landroid/graphics/PorterDuff$Mode;

    invoke-virtual {v0, v1, v2}, Lcom/oplus/camera/ui/RotateImageView;->setColorFilter(ILandroid/graphics/PorterDuff$Mode;)V

    .line 52
    new-instance v0, Landroid/widget/FrameLayout$LayoutParams;

    iget-object v1, p0, Lcom/oplus/camera/photo3d/ui/c;->b:Landroid/app/Activity;

    .line 53
    invoke-virtual {v1}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0706c2

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    iget-object v3, p0, Lcom/oplus/camera/photo3d/ui/c;->b:Landroid/app/Activity;

    .line 54
    invoke-virtual {v3}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {v3, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    invoke-direct {v0, v1, v2}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    const v1, 0x800053

    .line 55
    iput v1, v0, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    .line 56
    iget-object v1, p0, Lcom/oplus/camera/photo3d/ui/c;->b:Landroid/app/Activity;

    invoke-virtual {v1}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0706c0

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v1

    float-to-int v1, v1

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout$LayoutParams;->setMarginStart(I)V

    .line 57
    iget-object v1, p0, Lcom/oplus/camera/photo3d/ui/c;->b:Landroid/app/Activity;

    invoke-virtual {v1}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0706c1

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v1

    float-to-int v1, v1

    const/4 v2, 0x0

    invoke-virtual {v0, v2, v1, v2, v2}, Landroid/widget/FrameLayout$LayoutParams;->setMargins(IIII)V

    .line 59
    iget-object v1, p0, Lcom/oplus/camera/photo3d/ui/c;->c:Lcom/oplus/camera/ui/RotateImageView;

    const/4 v3, 0x4

    invoke-virtual {v1, v3}, Lcom/oplus/camera/ui/RotateImageView;->setVisibility(I)V

    .line 60
    iget-object v1, p0, Lcom/oplus/camera/photo3d/ui/c;->c:Lcom/oplus/camera/ui/RotateImageView;

    iget v3, p0, Lcom/oplus/camera/photo3d/ui/c;->j:I

    invoke-virtual {v1, v3, v2}, Lcom/oplus/camera/ui/RotateImageView;->a(IZ)V

    .line 61
    iget-object v1, p0, Lcom/oplus/camera/photo3d/ui/c;->d:Landroid/widget/RelativeLayout;

    iget-object v2, p0, Lcom/oplus/camera/photo3d/ui/c;->c:Lcom/oplus/camera/ui/RotateImageView;

    invoke-virtual {v1, v2, v0}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 63
    iget-object v0, p0, Lcom/oplus/camera/photo3d/ui/c;->c:Lcom/oplus/camera/ui/RotateImageView;

    new-instance v1, Lcom/oplus/camera/photo3d/ui/c$1;

    invoke-direct {v1, p0}, Lcom/oplus/camera/photo3d/ui/c$1;-><init>(Lcom/oplus/camera/photo3d/ui/c;)V

    invoke-virtual {v0, v1}, Lcom/oplus/camera/ui/RotateImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method


# virtual methods
.method public a()V
    .locals 2

    .line 205
    iget-object v0, p0, Lcom/oplus/camera/photo3d/ui/c;->c:Lcom/oplus/camera/ui/RotateImageView;

    if-eqz v0, :cond_0

    .line 206
    iget-object v1, p0, Lcom/oplus/camera/photo3d/ui/c;->d:Landroid/widget/RelativeLayout;

    invoke-virtual {v1, v0}, Landroid/widget/RelativeLayout;->removeView(Landroid/view/View;)V

    :cond_0
    const/4 v0, 0x0

    .line 209
    iput-object v0, p0, Lcom/oplus/camera/photo3d/ui/c;->i:Lcom/oplus/camera/photo3d/ui/c$a;

    return-void
.end method

.method public a(I)V
    .locals 1

    .line 193
    iput p1, p0, Lcom/oplus/camera/photo3d/ui/c;->j:I

    .line 195
    iget-object p1, p0, Lcom/oplus/camera/photo3d/ui/c;->c:Lcom/oplus/camera/ui/RotateImageView;

    if-eqz p1, :cond_0

    .line 196
    iget p0, p0, Lcom/oplus/camera/photo3d/ui/c;->j:I

    const/4 v0, 0x1

    invoke-virtual {p1, p0, v0}, Lcom/oplus/camera/ui/RotateImageView;->a(IZ)V

    :cond_0
    return-void
.end method

.method public a(Lcom/oplus/camera/photo3d/ui/c$a;)V
    .locals 0

    .line 201
    iput-object p1, p0, Lcom/oplus/camera/photo3d/ui/c;->i:Lcom/oplus/camera/photo3d/ui/c$a;

    return-void
.end method

.method public a(ZZ)V
    .locals 5

    .line 76
    invoke-direct {p0}, Lcom/oplus/camera/photo3d/ui/c;->b()V

    const/4 v0, 0x0

    if-nez p1, :cond_0

    .line 79
    iget-object p1, p0, Lcom/oplus/camera/photo3d/ui/c;->c:Lcom/oplus/camera/ui/RotateImageView;

    const/high16 p2, 0x3f800000    # 1.0f

    invoke-virtual {p1, p2}, Lcom/oplus/camera/ui/RotateImageView;->setAlpha(F)V

    .line 80
    iget-object p0, p0, Lcom/oplus/camera/photo3d/ui/c;->c:Lcom/oplus/camera/ui/RotateImageView;

    invoke-virtual {p0, v0}, Lcom/oplus/camera/ui/RotateImageView;->setVisibility(I)V

    return-void

    .line 84
    :cond_0
    iget-object p1, p0, Lcom/oplus/camera/photo3d/ui/c;->c:Lcom/oplus/camera/ui/RotateImageView;

    const/4 v1, 0x0

    invoke-virtual {p1, v1}, Lcom/oplus/camera/ui/RotateImageView;->setAlpha(F)V

    .line 85
    iget-object p1, p0, Lcom/oplus/camera/photo3d/ui/c;->c:Lcom/oplus/camera/ui/RotateImageView;

    invoke-virtual {p1, v0}, Lcom/oplus/camera/ui/RotateImageView;->setVisibility(I)V

    .line 86
    iget-object p1, p0, Lcom/oplus/camera/photo3d/ui/c;->c:Lcom/oplus/camera/ui/RotateImageView;

    const/4 v2, 0x2

    new-array v3, v2, [F

    fill-array-data v3, :array_0

    const-string v4, "alpha"

    invoke-static {p1, v4, v3}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object p1

    .line 88
    iget-object v3, p0, Lcom/oplus/camera/photo3d/ui/c;->e:Landroid/view/animation/PathInterpolator;

    invoke-virtual {p1, v3}, Landroid/animation/ObjectAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    const-wide/16 v3, 0xfa

    .line 89
    invoke-virtual {p1, v3, v4}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    .line 91
    new-instance v3, Landroid/animation/AnimatorSet;

    invoke-direct {v3}, Landroid/animation/AnimatorSet;-><init>()V

    iput-object v3, p0, Lcom/oplus/camera/photo3d/ui/c;->g:Landroid/animation/AnimatorSet;

    .line 92
    iget-object v3, p0, Lcom/oplus/camera/photo3d/ui/c;->g:Landroid/animation/AnimatorSet;

    invoke-virtual {v3, p1}, Landroid/animation/AnimatorSet;->play(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    move-result-object p1

    if-eqz p2, :cond_1

    .line 95
    iget-object p2, p0, Lcom/oplus/camera/photo3d/ui/c;->c:Lcom/oplus/camera/ui/RotateImageView;

    new-array v2, v2, [F

    iget v3, p0, Lcom/oplus/camera/photo3d/ui/c;->a:I

    neg-int v3, v3

    int-to-float v3, v3

    aput v3, v2, v0

    const/4 v0, 0x1

    aput v1, v2, v0

    const-string v0, "translationY"

    invoke-static {p2, v0, v2}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object p2

    .line 97
    iget-object v0, p0, Lcom/oplus/camera/photo3d/ui/c;->f:Landroid/view/animation/PathInterpolator;

    invoke-virtual {p2, v0}, Landroid/animation/ObjectAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    const-wide/16 v0, 0x190

    .line 98
    invoke-virtual {p2, v0, v1}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    .line 99
    invoke-virtual {p1, p2}, Landroid/animation/AnimatorSet$Builder;->with(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    .line 100
    iget-object p1, p0, Lcom/oplus/camera/photo3d/ui/c;->g:Landroid/animation/AnimatorSet;

    const-wide/16 v0, 0x96

    invoke-virtual {p1, v0, v1}, Landroid/animation/AnimatorSet;->setStartDelay(J)V

    goto :goto_0

    .line 102
    :cond_1
    iget-object p1, p0, Lcom/oplus/camera/photo3d/ui/c;->c:Lcom/oplus/camera/ui/RotateImageView;

    invoke-virtual {p1, v1}, Lcom/oplus/camera/ui/RotateImageView;->setTranslationY(F)V

    .line 105
    :goto_0
    iget-object p1, p0, Lcom/oplus/camera/photo3d/ui/c;->g:Landroid/animation/AnimatorSet;

    new-instance p2, Lcom/oplus/camera/photo3d/ui/c$2;

    invoke-direct {p2, p0}, Lcom/oplus/camera/photo3d/ui/c$2;-><init>(Lcom/oplus/camera/photo3d/ui/c;)V

    invoke-virtual {p1, p2}, Landroid/animation/AnimatorSet;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 116
    iget-object p0, p0, Lcom/oplus/camera/photo3d/ui/c;->g:Landroid/animation/AnimatorSet;

    invoke-virtual {p0}, Landroid/animation/AnimatorSet;->start()V

    return-void

    :array_0
    .array-data 4
        0x0
        0x3f800000    # 1.0f
    .end array-data
.end method

.method public b(ZZ)V
    .locals 3

    .line 120
    iget-object v0, p0, Lcom/oplus/camera/photo3d/ui/c;->c:Lcom/oplus/camera/ui/RotateImageView;

    if-nez v0, :cond_0

    const-string p0, "MenuSwitcher"

    const-string p1, "hideEffectIcon, return for mMenuIcon not init"

    .line 121
    invoke-static {p0, p1}, Lcom/oplus/camera/e;->b(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_0
    if-nez p1, :cond_1

    const/4 p0, 0x4

    .line 127
    invoke-virtual {v0, p0}, Lcom/oplus/camera/ui/RotateImageView;->setVisibility(I)V

    return-void

    .line 131
    :cond_1
    iget-object p1, p0, Lcom/oplus/camera/photo3d/ui/c;->g:Landroid/animation/AnimatorSet;

    if-eqz p1, :cond_2

    invoke-virtual {p1}, Landroid/animation/AnimatorSet;->isStarted()Z

    move-result p1

    if-eqz p1, :cond_2

    .line 132
    iget-object p1, p0, Lcom/oplus/camera/photo3d/ui/c;->g:Landroid/animation/AnimatorSet;

    invoke-virtual {p1}, Landroid/animation/AnimatorSet;->cancel()V

    goto :goto_0

    .line 133
    :cond_2
    iget-object p1, p0, Lcom/oplus/camera/photo3d/ui/c;->c:Lcom/oplus/camera/ui/RotateImageView;

    if-eqz p1, :cond_5

    invoke-virtual {p1}, Lcom/oplus/camera/ui/RotateImageView;->isShown()Z

    move-result p1

    if-eqz p1, :cond_5

    iget-object p1, p0, Lcom/oplus/camera/photo3d/ui/c;->h:Landroid/animation/AnimatorSet;

    if-eqz p1, :cond_3

    .line 134
    invoke-virtual {p1}, Landroid/animation/AnimatorSet;->isStarted()Z

    move-result p1

    if-eqz p1, :cond_3

    goto :goto_1

    .line 138
    :cond_3
    :goto_0
    iget-object p1, p0, Lcom/oplus/camera/photo3d/ui/c;->c:Lcom/oplus/camera/ui/RotateImageView;

    const/4 v0, 0x2

    new-array v1, v0, [F

    fill-array-data v1, :array_0

    const-string v2, "alpha"

    invoke-static {p1, v2, v1}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object p1

    .line 140
    iget-object v1, p0, Lcom/oplus/camera/photo3d/ui/c;->e:Landroid/view/animation/PathInterpolator;

    invoke-virtual {p1, v1}, Landroid/animation/ObjectAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    const-wide/16 v1, 0x12c

    .line 141
    invoke-virtual {p1, v1, v2}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    .line 143
    new-instance v1, Landroid/animation/AnimatorSet;

    invoke-direct {v1}, Landroid/animation/AnimatorSet;-><init>()V

    iput-object v1, p0, Lcom/oplus/camera/photo3d/ui/c;->h:Landroid/animation/AnimatorSet;

    .line 144
    iget-object v1, p0, Lcom/oplus/camera/photo3d/ui/c;->h:Landroid/animation/AnimatorSet;

    invoke-virtual {v1, p1}, Landroid/animation/AnimatorSet;->play(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    move-result-object p1

    if-eqz p2, :cond_4

    .line 147
    iget-object p2, p0, Lcom/oplus/camera/photo3d/ui/c;->c:Lcom/oplus/camera/ui/RotateImageView;

    new-array v0, v0, [F

    const/4 v1, 0x0

    const/4 v2, 0x0

    aput v2, v0, v1

    const/4 v1, 0x1

    iget v2, p0, Lcom/oplus/camera/photo3d/ui/c;->a:I

    neg-int v2, v2

    int-to-float v2, v2

    aput v2, v0, v1

    const-string v1, "translationY"

    invoke-static {p2, v1, v0}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object p2

    .line 149
    iget-object v0, p0, Lcom/oplus/camera/photo3d/ui/c;->f:Landroid/view/animation/PathInterpolator;

    invoke-virtual {p2, v0}, Landroid/animation/ObjectAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    const-wide/16 v0, 0x190

    .line 150
    invoke-virtual {p2, v0, v1}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    .line 151
    invoke-virtual {p1, p2}, Landroid/animation/AnimatorSet$Builder;->with(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    .line 154
    :cond_4
    iget-object p1, p0, Lcom/oplus/camera/photo3d/ui/c;->h:Landroid/animation/AnimatorSet;

    new-instance p2, Lcom/oplus/camera/photo3d/ui/c$3;

    invoke-direct {p2, p0}, Lcom/oplus/camera/photo3d/ui/c$3;-><init>(Lcom/oplus/camera/photo3d/ui/c;)V

    invoke-virtual {p1, p2}, Landroid/animation/AnimatorSet;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 183
    iget-object p0, p0, Lcom/oplus/camera/photo3d/ui/c;->h:Landroid/animation/AnimatorSet;

    invoke-virtual {p0}, Landroid/animation/AnimatorSet;->start()V

    :cond_5
    :goto_1
    return-void

    nop

    :array_0
    .array-data 4
        0x3f800000    # 1.0f
        0x0
    .end array-data
.end method
