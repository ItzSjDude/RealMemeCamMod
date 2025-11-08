.class public Lcom/oplus/camera/longexposure/d;
.super Ljava/lang/Object;
.source "LongExposureIcon.java"


# instance fields
.field private a:Lcom/oplus/camera/ui/RotateImageView;

.field private b:Landroid/app/Activity;

.field private c:Landroid/widget/RelativeLayout;

.field private d:Lcom/oplus/camera/longexposure/f;

.field private e:Landroid/view/animation/PathInterpolator;

.field private f:Landroid/view/animation/PathInterpolator;

.field private g:Landroid/animation/AnimatorSet;

.field private h:Landroid/animation/AnimatorSet;

.field private i:I


# direct methods
.method public constructor <init>(Landroid/app/Activity;)V
    .locals 6

    .line 36
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 26
    iput-object v0, p0, Lcom/oplus/camera/longexposure/d;->a:Lcom/oplus/camera/ui/RotateImageView;

    .line 27
    iput-object v0, p0, Lcom/oplus/camera/longexposure/d;->b:Landroid/app/Activity;

    .line 28
    iput-object v0, p0, Lcom/oplus/camera/longexposure/d;->c:Landroid/widget/RelativeLayout;

    .line 29
    iput-object v0, p0, Lcom/oplus/camera/longexposure/d;->d:Lcom/oplus/camera/longexposure/f;

    .line 30
    new-instance v1, Landroid/view/animation/PathInterpolator;

    const/high16 v2, 0x3f800000    # 1.0f

    const/4 v3, 0x0

    const v4, 0x3ea8f5c3    # 0.33f

    const v5, 0x3f2b851f    # 0.67f

    invoke-direct {v1, v4, v3, v5, v2}, Landroid/view/animation/PathInterpolator;-><init>(FFFF)V

    iput-object v1, p0, Lcom/oplus/camera/longexposure/d;->e:Landroid/view/animation/PathInterpolator;

    .line 31
    new-instance v1, Landroid/view/animation/PathInterpolator;

    const v4, 0x3e99999a    # 0.3f

    const v5, 0x3dcccccd    # 0.1f

    invoke-direct {v1, v4, v3, v5, v2}, Landroid/view/animation/PathInterpolator;-><init>(FFFF)V

    iput-object v1, p0, Lcom/oplus/camera/longexposure/d;->f:Landroid/view/animation/PathInterpolator;

    .line 32
    iput-object v0, p0, Lcom/oplus/camera/longexposure/d;->g:Landroid/animation/AnimatorSet;

    .line 33
    iput-object v0, p0, Lcom/oplus/camera/longexposure/d;->h:Landroid/animation/AnimatorSet;

    const/4 v0, 0x0

    .line 34
    iput v0, p0, Lcom/oplus/camera/longexposure/d;->i:I

    .line 37
    iput-object p1, p0, Lcom/oplus/camera/longexposure/d;->b:Landroid/app/Activity;

    .line 38
    invoke-direct {p0}, Lcom/oplus/camera/longexposure/d;->a()V

    return-void
.end method

.method static synthetic a(Lcom/oplus/camera/longexposure/d;)Lcom/oplus/camera/longexposure/f;
    .locals 0

    .line 24
    iget-object p0, p0, Lcom/oplus/camera/longexposure/d;->d:Lcom/oplus/camera/longexposure/f;

    return-object p0
.end method

.method private a()V
    .locals 4

    .line 46
    iget-object v0, p0, Lcom/oplus/camera/longexposure/d;->b:Landroid/app/Activity;

    const v1, 0x7f090096

    invoke-virtual {v0, v1}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    iput-object v0, p0, Lcom/oplus/camera/longexposure/d;->c:Landroid/widget/RelativeLayout;

    .line 47
    iget-object v0, p0, Lcom/oplus/camera/longexposure/d;->b:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0706f3

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lcom/oplus/camera/longexposure/d;->i:I

    .line 49
    iget-object v0, p0, Lcom/oplus/camera/longexposure/d;->a:Lcom/oplus/camera/ui/RotateImageView;

    if-nez v0, :cond_0

    .line 50
    new-instance v0, Lcom/oplus/camera/ui/RotateImageView;

    iget-object v1, p0, Lcom/oplus/camera/longexposure/d;->b:Landroid/app/Activity;

    invoke-direct {v0, v1}, Lcom/oplus/camera/ui/RotateImageView;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/oplus/camera/longexposure/d;->a:Lcom/oplus/camera/ui/RotateImageView;

    .line 51
    iget-object v0, p0, Lcom/oplus/camera/longexposure/d;->a:Lcom/oplus/camera/ui/RotateImageView;

    iget-object v1, p0, Lcom/oplus/camera/longexposure/d;->b:Landroid/app/Activity;

    const v2, 0x7f08046c

    invoke-virtual {v1, v2}, Landroid/app/Activity;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/oplus/camera/ui/RotateImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 52
    iget-object v0, p0, Lcom/oplus/camera/longexposure/d;->a:Lcom/oplus/camera/ui/RotateImageView;

    iget-object v1, p0, Lcom/oplus/camera/longexposure/d;->b:Landroid/app/Activity;

    const v2, 0x7f0803f2

    invoke-virtual {v1, v2}, Landroid/app/Activity;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/oplus/camera/ui/RotateImageView;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 53
    iget-object v0, p0, Lcom/oplus/camera/longexposure/d;->a:Lcom/oplus/camera/ui/RotateImageView;

    iget-object v1, p0, Lcom/oplus/camera/longexposure/d;->b:Landroid/app/Activity;

    invoke-static {v1}, Lcom/oplus/camera/util/Util;->A(Landroid/content/Context;)I

    move-result v1

    sget-object v2, Landroid/graphics/PorterDuff$Mode;->SRC_ATOP:Landroid/graphics/PorterDuff$Mode;

    invoke-virtual {v0, v1, v2}, Lcom/oplus/camera/ui/RotateImageView;->setColorFilter(ILandroid/graphics/PorterDuff$Mode;)V

    .line 54
    new-instance v0, Landroid/widget/FrameLayout$LayoutParams;

    iget-object v1, p0, Lcom/oplus/camera/longexposure/d;->b:Landroid/app/Activity;

    .line 55
    invoke-virtual {v1}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0706c2

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    iget-object v3, p0, Lcom/oplus/camera/longexposure/d;->b:Landroid/app/Activity;

    .line 56
    invoke-virtual {v3}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {v3, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    invoke-direct {v0, v1, v2}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    const v1, 0x800053

    .line 57
    iput v1, v0, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    .line 58
    iget-object v1, p0, Lcom/oplus/camera/longexposure/d;->b:Landroid/app/Activity;

    invoke-virtual {v1}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0706c0

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v1

    float-to-int v1, v1

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout$LayoutParams;->setMarginStart(I)V

    .line 59
    iget-object v1, p0, Lcom/oplus/camera/longexposure/d;->b:Landroid/app/Activity;

    invoke-virtual {v1}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0706c1

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v1

    float-to-int v1, v1

    const/4 v2, 0x0

    invoke-virtual {v0, v2, v1, v2, v2}, Landroid/widget/FrameLayout$LayoutParams;->setMargins(IIII)V

    .line 62
    iget-object v1, p0, Lcom/oplus/camera/longexposure/d;->a:Lcom/oplus/camera/ui/RotateImageView;

    const/4 v2, 0x4

    invoke-virtual {v1, v2}, Lcom/oplus/camera/ui/RotateImageView;->setVisibility(I)V

    .line 63
    iget-object v1, p0, Lcom/oplus/camera/longexposure/d;->c:Landroid/widget/RelativeLayout;

    iget-object v2, p0, Lcom/oplus/camera/longexposure/d;->a:Lcom/oplus/camera/ui/RotateImageView;

    invoke-virtual {v1, v2, v0}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 65
    iget-object v0, p0, Lcom/oplus/camera/longexposure/d;->a:Lcom/oplus/camera/ui/RotateImageView;

    new-instance v1, Lcom/oplus/camera/longexposure/d$1;

    invoke-direct {v1, p0}, Lcom/oplus/camera/longexposure/d$1;-><init>(Lcom/oplus/camera/longexposure/d;)V

    invoke-virtual {v0, v1}, Lcom/oplus/camera/ui/RotateImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :cond_0
    return-void
.end method

.method static synthetic b(Lcom/oplus/camera/longexposure/d;)Lcom/oplus/camera/ui/RotateImageView;
    .locals 0

    .line 24
    iget-object p0, p0, Lcom/oplus/camera/longexposure/d;->a:Lcom/oplus/camera/ui/RotateImageView;

    return-object p0
.end method


# virtual methods
.method public a(I)V
    .locals 1

    .line 75
    iget-object p0, p0, Lcom/oplus/camera/longexposure/d;->a:Lcom/oplus/camera/ui/RotateImageView;

    if-eqz p0, :cond_0

    const/4 v0, 0x1

    .line 76
    invoke-virtual {p0, p1, v0}, Lcom/oplus/camera/ui/RotateImageView;->a(IZ)V

    :cond_0
    return-void
.end method

.method public a(Lcom/oplus/camera/longexposure/f;)V
    .locals 0

    .line 42
    iput-object p1, p0, Lcom/oplus/camera/longexposure/d;->d:Lcom/oplus/camera/longexposure/f;

    return-void
.end method

.method public a(Z)V
    .locals 0

    .line 137
    iget-object p0, p0, Lcom/oplus/camera/longexposure/d;->a:Lcom/oplus/camera/ui/RotateImageView;

    if-eqz p0, :cond_0

    .line 138
    invoke-virtual {p0, p1}, Lcom/oplus/camera/ui/RotateImageView;->setEnabled(Z)V

    :cond_0
    return-void
.end method

.method public a(ZZ)V
    .locals 4

    .line 81
    iget-object v0, p0, Lcom/oplus/camera/longexposure/d;->a:Lcom/oplus/camera/ui/RotateImageView;

    if-eqz v0, :cond_4

    .line 83
    iget-object v0, p0, Lcom/oplus/camera/longexposure/d;->g:Landroid/animation/AnimatorSet;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->isStarted()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 84
    iget-object v0, p0, Lcom/oplus/camera/longexposure/d;->g:Landroid/animation/AnimatorSet;

    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->cancel()V

    goto :goto_0

    .line 85
    :cond_0
    iget-object v0, p0, Lcom/oplus/camera/longexposure/d;->a:Lcom/oplus/camera/ui/RotateImageView;

    if-eqz v0, :cond_4

    invoke-virtual {v0}, Lcom/oplus/camera/ui/RotateImageView;->isShown()Z

    move-result v0

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/oplus/camera/longexposure/d;->h:Landroid/animation/AnimatorSet;

    if-eqz v0, :cond_1

    .line 86
    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->isStarted()Z

    move-result v0

    if-eqz v0, :cond_1

    goto :goto_1

    .line 90
    :cond_1
    :goto_0
    iget-object v0, p0, Lcom/oplus/camera/longexposure/d;->a:Lcom/oplus/camera/ui/RotateImageView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/oplus/camera/ui/RotateImageView;->setEnabled(Z)V

    if-eqz p1, :cond_3

    .line 93
    iget-object p1, p0, Lcom/oplus/camera/longexposure/d;->a:Lcom/oplus/camera/ui/RotateImageView;

    const/4 v0, 0x2

    new-array v2, v0, [F

    fill-array-data v2, :array_0

    const-string v3, "alpha"

    invoke-static {p1, v3, v2}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object p1

    .line 95
    iget-object v2, p0, Lcom/oplus/camera/longexposure/d;->e:Landroid/view/animation/PathInterpolator;

    invoke-virtual {p1, v2}, Landroid/animation/ObjectAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    const-wide/16 v2, 0xfa

    .line 96
    invoke-virtual {p1, v2, v3}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    .line 98
    new-instance v2, Landroid/animation/AnimatorSet;

    invoke-direct {v2}, Landroid/animation/AnimatorSet;-><init>()V

    iput-object v2, p0, Lcom/oplus/camera/longexposure/d;->h:Landroid/animation/AnimatorSet;

    .line 99
    iget-object v2, p0, Lcom/oplus/camera/longexposure/d;->h:Landroid/animation/AnimatorSet;

    invoke-virtual {v2, p1}, Landroid/animation/AnimatorSet;->play(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    move-result-object p1

    if-eqz p2, :cond_2

    .line 102
    iget-object p2, p0, Lcom/oplus/camera/longexposure/d;->a:Lcom/oplus/camera/ui/RotateImageView;

    new-array v0, v0, [F

    const/4 v2, 0x0

    aput v2, v0, v1

    const/4 v1, 0x1

    iget v2, p0, Lcom/oplus/camera/longexposure/d;->i:I

    neg-int v2, v2

    int-to-float v2, v2

    aput v2, v0, v1

    const-string v1, "translationY"

    invoke-static {p2, v1, v0}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object p2

    .line 104
    iget-object v0, p0, Lcom/oplus/camera/longexposure/d;->f:Landroid/view/animation/PathInterpolator;

    invoke-virtual {p2, v0}, Landroid/animation/ObjectAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    const-wide/16 v0, 0x190

    .line 105
    invoke-virtual {p2, v0, v1}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    .line 106
    invoke-virtual {p1, p2}, Landroid/animation/AnimatorSet$Builder;->with(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    .line 109
    :cond_2
    iget-object p1, p0, Lcom/oplus/camera/longexposure/d;->h:Landroid/animation/AnimatorSet;

    new-instance p2, Lcom/oplus/camera/longexposure/d$2;

    invoke-direct {p2, p0}, Lcom/oplus/camera/longexposure/d$2;-><init>(Lcom/oplus/camera/longexposure/d;)V

    invoke-virtual {p1, p2}, Landroid/animation/AnimatorSet;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 129
    iget-object p0, p0, Lcom/oplus/camera/longexposure/d;->h:Landroid/animation/AnimatorSet;

    invoke-virtual {p0}, Landroid/animation/AnimatorSet;->start()V

    goto :goto_1

    .line 131
    :cond_3
    iget-object p0, p0, Lcom/oplus/camera/longexposure/d;->a:Lcom/oplus/camera/ui/RotateImageView;

    const/4 p1, 0x4

    invoke-virtual {p0, p1}, Lcom/oplus/camera/ui/RotateImageView;->setVisibility(I)V

    nop

    :cond_4
    :goto_1
    return-void

    nop

    :array_0
    .array-data 4
        0x3f800000    # 1.0f
        0x0
    .end array-data
.end method

.method public a(ZZZ)V
    .locals 4

    .line 143
    iget-object v0, p0, Lcom/oplus/camera/longexposure/d;->a:Lcom/oplus/camera/ui/RotateImageView;

    if-nez v0, :cond_0

    .line 144
    invoke-direct {p0}, Lcom/oplus/camera/longexposure/d;->a()V

    goto/16 :goto_2

    :cond_0
    if-nez p3, :cond_1

    .line 147
    invoke-virtual {p0, p3}, Lcom/oplus/camera/longexposure/d;->a(Z)V

    .line 150
    :cond_1
    iget-object v0, p0, Lcom/oplus/camera/longexposure/d;->h:Landroid/animation/AnimatorSet;

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->isStarted()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 151
    iget-object v0, p0, Lcom/oplus/camera/longexposure/d;->h:Landroid/animation/AnimatorSet;

    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->end()V

    goto :goto_0

    .line 152
    :cond_2
    iget-object v0, p0, Lcom/oplus/camera/longexposure/d;->a:Lcom/oplus/camera/ui/RotateImageView;

    invoke-virtual {v0}, Lcom/oplus/camera/ui/RotateImageView;->isShown()Z

    move-result v0

    if-nez v0, :cond_6

    iget-object v0, p0, Lcom/oplus/camera/longexposure/d;->g:Landroid/animation/AnimatorSet;

    if-eqz v0, :cond_3

    .line 153
    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->isStarted()Z

    move-result v0

    if-eqz v0, :cond_3

    goto/16 :goto_2

    :cond_3
    :goto_0
    const/4 v0, 0x0

    if-eqz p1, :cond_5

    .line 158
    invoke-virtual {p0, p3}, Lcom/oplus/camera/longexposure/d;->a(Z)V

    .line 159
    iget-object p1, p0, Lcom/oplus/camera/longexposure/d;->a:Lcom/oplus/camera/ui/RotateImageView;

    const/4 p3, 0x0

    invoke-virtual {p1, p3}, Lcom/oplus/camera/ui/RotateImageView;->setAlpha(F)V

    .line 160
    iget-object p1, p0, Lcom/oplus/camera/longexposure/d;->a:Lcom/oplus/camera/ui/RotateImageView;

    invoke-virtual {p1, v0}, Lcom/oplus/camera/ui/RotateImageView;->setVisibility(I)V

    .line 162
    iget-object p1, p0, Lcom/oplus/camera/longexposure/d;->a:Lcom/oplus/camera/ui/RotateImageView;

    const/4 v1, 0x2

    new-array v2, v1, [F

    fill-array-data v2, :array_0

    const-string v3, "alpha"

    invoke-static {p1, v3, v2}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object p1

    .line 164
    iget-object v2, p0, Lcom/oplus/camera/longexposure/d;->e:Landroid/view/animation/PathInterpolator;

    invoke-virtual {p1, v2}, Landroid/animation/ObjectAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    const-wide/16 v2, 0xfa

    .line 165
    invoke-virtual {p1, v2, v3}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    .line 167
    new-instance v2, Landroid/animation/AnimatorSet;

    invoke-direct {v2}, Landroid/animation/AnimatorSet;-><init>()V

    iput-object v2, p0, Lcom/oplus/camera/longexposure/d;->g:Landroid/animation/AnimatorSet;

    .line 168
    iget-object v2, p0, Lcom/oplus/camera/longexposure/d;->g:Landroid/animation/AnimatorSet;

    invoke-virtual {v2, p1}, Landroid/animation/AnimatorSet;->play(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    move-result-object p1

    if-eqz p2, :cond_4

    .line 171
    iget-object p2, p0, Lcom/oplus/camera/longexposure/d;->a:Lcom/oplus/camera/ui/RotateImageView;

    new-array v1, v1, [F

    iget v2, p0, Lcom/oplus/camera/longexposure/d;->i:I

    neg-int v2, v2

    int-to-float v2, v2

    aput v2, v1, v0

    const/4 v0, 0x1

    aput p3, v1, v0

    const-string p3, "translationY"

    invoke-static {p2, p3, v1}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object p2

    .line 173
    iget-object p3, p0, Lcom/oplus/camera/longexposure/d;->f:Landroid/view/animation/PathInterpolator;

    invoke-virtual {p2, p3}, Landroid/animation/ObjectAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    const-wide/16 v0, 0x190

    .line 174
    invoke-virtual {p2, v0, v1}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    .line 175
    invoke-virtual {p1, p2}, Landroid/animation/AnimatorSet$Builder;->with(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    .line 176
    iget-object p1, p0, Lcom/oplus/camera/longexposure/d;->g:Landroid/animation/AnimatorSet;

    const-wide/16 p2, 0x96

    invoke-virtual {p1, p2, p3}, Landroid/animation/AnimatorSet;->setStartDelay(J)V

    goto :goto_1

    .line 178
    :cond_4
    iget-object p1, p0, Lcom/oplus/camera/longexposure/d;->a:Lcom/oplus/camera/ui/RotateImageView;

    invoke-virtual {p1, p3}, Lcom/oplus/camera/ui/RotateImageView;->setTranslationY(F)V

    .line 181
    :goto_1
    iget-object p1, p0, Lcom/oplus/camera/longexposure/d;->g:Landroid/animation/AnimatorSet;

    new-instance p2, Lcom/oplus/camera/longexposure/d$3;

    invoke-direct {p2, p0}, Lcom/oplus/camera/longexposure/d$3;-><init>(Lcom/oplus/camera/longexposure/d;)V

    invoke-virtual {p1, p2}, Landroid/animation/AnimatorSet;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 192
    iget-object p0, p0, Lcom/oplus/camera/longexposure/d;->g:Landroid/animation/AnimatorSet;

    invoke-virtual {p0}, Landroid/animation/AnimatorSet;->start()V

    goto :goto_2

    .line 194
    :cond_5
    iget-object p1, p0, Lcom/oplus/camera/longexposure/d;->a:Lcom/oplus/camera/ui/RotateImageView;

    const/high16 p2, 0x3f800000    # 1.0f

    invoke-virtual {p1, p2}, Lcom/oplus/camera/ui/RotateImageView;->setAlpha(F)V

    .line 195
    iget-object p1, p0, Lcom/oplus/camera/longexposure/d;->a:Lcom/oplus/camera/ui/RotateImageView;

    invoke-virtual {p1, v0}, Lcom/oplus/camera/ui/RotateImageView;->setVisibility(I)V

    if-eqz p3, :cond_6

    .line 198
    invoke-virtual {p0, p3}, Lcom/oplus/camera/longexposure/d;->a(Z)V

    :cond_6
    :goto_2
    return-void

    nop

    :array_0
    .array-data 4
        0x0
        0x3f800000    # 1.0f
    .end array-data
.end method
