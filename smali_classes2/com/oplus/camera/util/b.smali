.class public Lcom/oplus/camera/util/b;
.super Ljava/lang/Object;
.source "AnimUtil.java"


# static fields
.field public static final a:Landroid/view/animation/PathInterpolator;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .line 26
    new-instance v0, Landroid/view/animation/PathInterpolator;

    const v1, 0x3ea8f5c3    # 0.33f

    const/4 v2, 0x0

    const v3, 0x3f2b851f    # 0.67f

    const/high16 v4, 0x3f800000    # 1.0f

    invoke-direct {v0, v1, v2, v3, v4}, Landroid/view/animation/PathInterpolator;-><init>(FFFF)V

    sput-object v0, Lcom/oplus/camera/util/b;->a:Landroid/view/animation/PathInterpolator;

    return-void
.end method

.method public static a(Landroid/graphics/drawable/Drawable;IIJLandroid/view/animation/Interpolator;)Landroid/animation/Animator;
    .locals 3

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return-object p0

    .line 160
    :cond_0
    new-instance v0, Landroid/animation/ArgbEvaluator;

    invoke-direct {v0}, Landroid/animation/ArgbEvaluator;-><init>()V

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    .line 161
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    aput-object p1, v1, v2

    const/4 p1, 0x1

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v1, p1

    const-string p1, "tint"

    .line 160
    invoke-static {p0, p1, v0, v1}, Landroid/animation/ObjectAnimator;->ofObject(Ljava/lang/Object;Ljava/lang/String;Landroid/animation/TypeEvaluator;[Ljava/lang/Object;)Landroid/animation/ObjectAnimator;

    move-result-object p1

    .line 162
    invoke-virtual {p1, p3, p4}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    .line 163
    invoke-virtual {p1, p5}, Landroid/animation/ObjectAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 164
    new-instance p3, Lcom/oplus/camera/util/b$1;

    invoke-direct {p3, p0, p2}, Lcom/oplus/camera/util/b$1;-><init>(Landroid/graphics/drawable/Drawable;I)V

    invoke-virtual {p1, p3}, Landroid/animation/ObjectAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    return-object p1
.end method

.method public static a(Landroid/widget/ImageView;II)Landroid/animation/Animator;
    .locals 10

    const/4 v0, 0x0

    if-nez p0, :cond_0

    return-object v0

    :cond_0
    const v1, 0x7f09018f

    .line 41
    invoke-virtual {p0, v1}, Landroid/widget/ImageView;->getTag(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    if-nez v2, :cond_1

    .line 45
    invoke-virtual {p0}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v2

    if-eqz v2, :cond_2

    .line 46
    invoke-virtual {p0}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v2

    invoke-virtual {v2, p1}, Landroid/graphics/drawable/Drawable;->setTint(I)V

    .line 47
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {p0, v1, p1}, Landroid/widget/ImageView;->setTag(ILjava/lang/Object;)V

    goto :goto_0

    .line 49
    :cond_1
    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v3

    if-eq v3, p1, :cond_2

    .line 50
    invoke-virtual {p0}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v4

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v5

    const-wide/16 v7, 0xfa

    sget-object v9, Lcom/oplus/camera/util/b;->a:Landroid/view/animation/PathInterpolator;

    move v6, p1

    invoke-static/range {v4 .. v9}, Lcom/oplus/camera/util/b;->a(Landroid/graphics/drawable/Drawable;IIJLandroid/view/animation/Interpolator;)Landroid/animation/Animator;

    move-result-object v2

    if-eqz v2, :cond_3

    .line 54
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {p0, v1, p1}, Landroid/widget/ImageView;->setTag(ILjava/lang/Object;)V

    goto :goto_1

    :cond_2
    :goto_0
    move-object v2, v0

    :cond_3
    :goto_1
    const p1, 0x7f090065

    .line 58
    invoke-virtual {p0, p1}, Landroid/widget/ImageView;->getTag(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    if-nez v1, :cond_4

    .line 62
    invoke-virtual {p0}, Landroid/widget/ImageView;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    if-eqz v1, :cond_5

    .line 63
    invoke-virtual {p0}, Landroid/widget/ImageView;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v1, p2}, Landroid/graphics/drawable/Drawable;->setTint(I)V

    .line 64
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    invoke-virtual {p0, p1, p2}, Landroid/widget/ImageView;->setTag(ILjava/lang/Object;)V

    goto :goto_2

    .line 66
    :cond_4
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v3

    if-eq v3, p2, :cond_5

    .line 67
    invoke-virtual {p0}, Landroid/widget/ImageView;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v4

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v5

    const-wide/16 v7, 0xfa

    sget-object v9, Lcom/oplus/camera/util/b;->a:Landroid/view/animation/PathInterpolator;

    move v6, p2

    invoke-static/range {v4 .. v9}, Lcom/oplus/camera/util/b;->a(Landroid/graphics/drawable/Drawable;IIJLandroid/view/animation/Interpolator;)Landroid/animation/Animator;

    move-result-object v0

    if-eqz v0, :cond_5

    .line 71
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    invoke-virtual {p0, p1, p2}, Landroid/widget/ImageView;->setTag(ILjava/lang/Object;)V

    :cond_5
    :goto_2
    if-nez v2, :cond_6

    return-object v0

    :cond_6
    if-nez v0, :cond_7

    return-object v2

    .line 81
    :cond_7
    new-instance p0, Landroid/animation/AnimatorSet;

    invoke-direct {p0}, Landroid/animation/AnimatorSet;-><init>()V

    const/4 p1, 0x2

    .line 82
    new-array p1, p1, [Landroid/animation/Animator;

    const/4 p2, 0x0

    aput-object v2, p1, p2

    const/4 p2, 0x1

    aput-object v0, p1, p2

    invoke-virtual {p0, p1}, Landroid/animation/AnimatorSet;->playTogether([Landroid/animation/Animator;)V

    return-object p0
.end method

.method public static a(Landroid/widget/TextView;II)Landroid/animation/Animator;
    .locals 10

    const/4 v0, 0x0

    if-nez p0, :cond_0

    return-object v0

    :cond_0
    const v1, 0x7f09018f

    .line 91
    invoke-virtual {p0, v1}, Landroid/widget/TextView;->getTag(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    if-nez v2, :cond_1

    .line 95
    invoke-virtual {p0, p1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 96
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {p0, v1, p1}, Landroid/widget/TextView;->setTag(ILjava/lang/Object;)V

    goto :goto_0

    .line 97
    :cond_1
    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v3

    if-eq v3, p1, :cond_2

    .line 98
    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v5

    const-wide/16 v7, 0xfa

    sget-object v9, Lcom/oplus/camera/util/b;->a:Landroid/view/animation/PathInterpolator;

    move-object v4, p0

    move v6, p1

    invoke-static/range {v4 .. v9}, Lcom/oplus/camera/util/b;->a(Landroid/widget/TextView;IIJLandroid/view/animation/Interpolator;)Landroid/animation/Animator;

    move-result-object v2

    if-eqz v2, :cond_3

    .line 102
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {p0, v1, p1}, Landroid/widget/TextView;->setTag(ILjava/lang/Object;)V

    goto :goto_1

    :cond_2
    :goto_0
    move-object v2, v0

    :cond_3
    :goto_1
    const p1, 0x7f090065

    .line 106
    invoke-virtual {p0, p1}, Landroid/widget/TextView;->getTag(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    if-nez v1, :cond_4

    .line 110
    invoke-virtual {p0}, Landroid/widget/TextView;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    if-eqz v1, :cond_5

    .line 111
    invoke-virtual {p0}, Landroid/widget/TextView;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v1, p2}, Landroid/graphics/drawable/Drawable;->setTint(I)V

    .line 112
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    invoke-virtual {p0, p1, p2}, Landroid/widget/TextView;->setTag(ILjava/lang/Object;)V

    goto :goto_2

    .line 114
    :cond_4
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v3

    if-eq v3, p2, :cond_5

    .line 115
    invoke-virtual {p0}, Landroid/widget/TextView;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v4

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v5

    const-wide/16 v7, 0xfa

    sget-object v9, Lcom/oplus/camera/util/b;->a:Landroid/view/animation/PathInterpolator;

    move v6, p2

    invoke-static/range {v4 .. v9}, Lcom/oplus/camera/util/b;->a(Landroid/graphics/drawable/Drawable;IIJLandroid/view/animation/Interpolator;)Landroid/animation/Animator;

    move-result-object v0

    if-eqz v0, :cond_5

    .line 119
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    invoke-virtual {p0, p1, p2}, Landroid/widget/TextView;->setTag(ILjava/lang/Object;)V

    :cond_5
    :goto_2
    if-nez v2, :cond_6

    return-object v0

    :cond_6
    if-nez v0, :cond_7

    return-object v2

    .line 129
    :cond_7
    new-instance p0, Landroid/animation/AnimatorSet;

    invoke-direct {p0}, Landroid/animation/AnimatorSet;-><init>()V

    const/4 p1, 0x2

    .line 130
    new-array p1, p1, [Landroid/animation/Animator;

    const/4 p2, 0x0

    aput-object v2, p1, p2

    const/4 p2, 0x1

    aput-object v0, p1, p2

    invoke-virtual {p0, p1}, Landroid/animation/AnimatorSet;->playTogether([Landroid/animation/Animator;)V

    return-object p0
.end method

.method public static a(Landroid/widget/TextView;IIJLandroid/view/animation/Interpolator;)Landroid/animation/Animator;
    .locals 3

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return-object p0

    .line 180
    :cond_0
    new-instance v0, Landroid/animation/ArgbEvaluator;

    invoke-direct {v0}, Landroid/animation/ArgbEvaluator;-><init>()V

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    .line 181
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    aput-object p1, v1, v2

    const/4 p1, 0x1

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v1, p1

    const-string p1, "textColor"

    .line 180
    invoke-static {p0, p1, v0, v1}, Landroid/animation/ObjectAnimator;->ofObject(Ljava/lang/Object;Ljava/lang/String;Landroid/animation/TypeEvaluator;[Ljava/lang/Object;)Landroid/animation/ObjectAnimator;

    move-result-object p1

    .line 182
    invoke-virtual {p1, p3, p4}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    .line 183
    invoke-virtual {p1, p5}, Landroid/animation/ObjectAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 184
    new-instance p3, Lcom/oplus/camera/util/b$2;

    invoke-direct {p3, p0, p2}, Lcom/oplus/camera/util/b$2;-><init>(Landroid/widget/TextView;I)V

    invoke-virtual {p1, p3}, Landroid/animation/ObjectAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    return-object p1
.end method

.method public static a(Landroid/content/Context;Lcom/airbnb/lottie/LottieAnimationView;ILandroid/animation/Animator$AnimatorListener;)V
    .locals 3

    if-nez p1, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x0

    if-gtz p2, :cond_2

    if-eqz p3, :cond_1

    .line 202
    invoke-interface {p3, v0}, Landroid/animation/Animator$AnimatorListener;->onAnimationCancel(Landroid/animation/Animator;)V

    :cond_1
    return-void

    :cond_2
    const v1, 0x7f090232

    .line 208
    invoke-virtual {p1, v1}, Lcom/airbnb/lottie/LottieAnimationView;->getTag(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    if-eqz v2, :cond_4

    .line 210
    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    if-ne v2, p2, :cond_4

    if-eqz p3, :cond_3

    .line 212
    invoke-interface {p3, v0}, Landroid/animation/Animator$AnimatorListener;->onAnimationCancel(Landroid/animation/Animator;)V

    :cond_3
    return-void

    .line 218
    :cond_4
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {p1, v1, v0}, Lcom/airbnb/lottie/LottieAnimationView;->setTag(ILjava/lang/Object;)V

    const/4 v0, 0x1

    .line 219
    invoke-virtual {p1, v0}, Lcom/airbnb/lottie/LottieAnimationView;->setCacheComposition(Z)V

    .line 220
    invoke-virtual {p1, p2}, Lcom/airbnb/lottie/LottieAnimationView;->setAnimation(I)V

    .line 221
    new-instance p2, Lcom/airbnb/lottie/c/e;

    const-string v0, "OIS yellow"

    const-string v1, "**"

    filled-new-array {v0, v1}, [Ljava/lang/String;

    move-result-object v0

    invoke-direct {p2, v0}, Lcom/airbnb/lottie/c/e;-><init>([Ljava/lang/String;)V

    sget-object v0, Lcom/airbnb/lottie/k;->E:Landroid/graphics/ColorFilter;

    new-instance v1, Lcom/oplus/camera/util/b$3;

    invoke-direct {v1, p0}, Lcom/oplus/camera/util/b$3;-><init>(Landroid/content/Context;)V

    invoke-virtual {p1, p2, v0, v1}, Lcom/airbnb/lottie/LottieAnimationView;->a(Lcom/airbnb/lottie/c/e;Ljava/lang/Object;Lcom/airbnb/lottie/g/e;)V

    .line 230
    invoke-virtual {p1}, Lcom/airbnb/lottie/LottieAnimationView;->c()V

    .line 231
    new-instance p0, Lcom/oplus/camera/util/b$4;

    invoke-direct {p0, p3}, Lcom/oplus/camera/util/b$4;-><init>(Landroid/animation/Animator$AnimatorListener;)V

    invoke-virtual {p1, p0}, Lcom/airbnb/lottie/LottieAnimationView;->a(Landroid/animation/Animator$AnimatorListener;)V

    .line 262
    invoke-virtual {p1}, Lcom/airbnb/lottie/LottieAnimationView;->a()V

    return-void
.end method
