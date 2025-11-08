.class public Lcom/oplus/camera/professional/u;
.super Ljava/lang/Object;
.source "ProfessionalAnimUtil.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/oplus/camera/professional/u$a;
    }
.end annotation


# direct methods
.method public static a(Landroid/view/View;Lcom/oplus/camera/professional/u$a;)Landroid/animation/Animator;
    .locals 9

    const/4 v0, 0x0

    if-eqz p0, :cond_9

    if-nez p1, :cond_0

    goto/16 :goto_4

    .line 223
    :cond_0
    iget-boolean v1, p1, Lcom/oplus/camera/professional/u$a;->a:Z

    const/4 v2, 0x0

    const/high16 v3, 0x3f800000    # 1.0f

    if-eqz v1, :cond_1

    move v1, v2

    goto :goto_0

    :cond_1
    move v1, v3

    .line 224
    :goto_0
    iget-boolean v4, p1, Lcom/oplus/camera/professional/u$a;->a:Z

    if-eqz v4, :cond_2

    move v2, v3

    .line 226
    :cond_2
    iget v3, p1, Lcom/oplus/camera/professional/u$a;->c:I

    const/4 v4, 0x1

    const/4 v5, 0x0

    const/4 v6, 0x2

    if-lez v3, :cond_3

    .line 227
    new-instance v3, Landroid/animation/FloatEvaluator;

    invoke-direct {v3}, Landroid/animation/FloatEvaluator;-><init>()V

    new-array v7, v6, [Ljava/lang/Object;

    .line 228
    invoke-static {v1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v1

    aput-object v1, v7, v5

    invoke-static {v2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v1

    aput-object v1, v7, v4

    const-string v1, "alpha"

    .line 227
    invoke-static {p0, v1, v3, v7}, Landroid/animation/ObjectAnimator;->ofObject(Ljava/lang/Object;Ljava/lang/String;Landroid/animation/TypeEvaluator;[Ljava/lang/Object;)Landroid/animation/ObjectAnimator;

    move-result-object v1

    .line 229
    iget v3, p1, Lcom/oplus/camera/professional/u$a;->b:I

    int-to-long v7, v3

    invoke-virtual {v1, v7, v8}, Landroid/animation/ObjectAnimator;->setStartDelay(J)V

    .line 230
    iget v3, p1, Lcom/oplus/camera/professional/u$a;->c:I

    int-to-long v7, v3

    invoke-virtual {v1, v7, v8}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    .line 231
    sget-object v3, Lcom/oplus/camera/professional/t;->a:Landroid/view/animation/PathInterpolator;

    invoke-virtual {v1, v3}, Landroid/animation/ObjectAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 232
    new-instance v3, Lcom/oplus/camera/professional/u$3;

    invoke-direct {v3, p0, v2, p1}, Lcom/oplus/camera/professional/u$3;-><init>(Landroid/view/View;FLcom/oplus/camera/professional/u$a;)V

    invoke-virtual {v1, v3}, Landroid/animation/ObjectAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    goto :goto_1

    .line 256
    :cond_3
    invoke-virtual {p0, v2}, Landroid/view/View;->setAlpha(F)V

    move-object v1, v0

    .line 259
    :goto_1
    iget v2, p1, Lcom/oplus/camera/professional/u$a;->g:I

    if-lez v2, :cond_4

    .line 260
    iget-object v2, p1, Lcom/oplus/camera/professional/u$a;->h:Ljava/lang/String;

    new-instance v3, Landroid/animation/FloatEvaluator;

    invoke-direct {v3}, Landroid/animation/FloatEvaluator;-><init>()V

    new-array v7, v6, [Ljava/lang/Object;

    iget v8, p1, Lcom/oplus/camera/professional/u$a;->d:F

    .line 261
    invoke-static {v8}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v8

    aput-object v8, v7, v5

    iget v8, p1, Lcom/oplus/camera/professional/u$a;->e:F

    invoke-static {v8}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v8

    aput-object v8, v7, v4

    .line 260
    invoke-static {p0, v2, v3, v7}, Landroid/animation/ObjectAnimator;->ofObject(Ljava/lang/Object;Ljava/lang/String;Landroid/animation/TypeEvaluator;[Ljava/lang/Object;)Landroid/animation/ObjectAnimator;

    move-result-object v2

    .line 262
    iget v3, p1, Lcom/oplus/camera/professional/u$a;->f:I

    int-to-long v7, v3

    invoke-virtual {v2, v7, v8}, Landroid/animation/ObjectAnimator;->setStartDelay(J)V

    .line 263
    iget v3, p1, Lcom/oplus/camera/professional/u$a;->g:I

    int-to-long v7, v3

    invoke-virtual {v2, v7, v8}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    .line 264
    sget-object v3, Lcom/oplus/camera/professional/t;->b:Landroid/view/animation/PathInterpolator;

    invoke-virtual {v2, v3}, Landroid/animation/ObjectAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 265
    new-instance v3, Lcom/oplus/camera/professional/u$4;

    invoke-direct {v3, p1, p0}, Lcom/oplus/camera/professional/u$4;-><init>(Lcom/oplus/camera/professional/u$a;Landroid/view/View;)V

    invoke-virtual {v2, v3}, Landroid/animation/ObjectAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    goto :goto_3

    .line 300
    :cond_4
    iget-object v2, p1, Lcom/oplus/camera/professional/u$a;->h:Ljava/lang/String;

    const-string v3, "translationY"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_5

    .line 301
    iget p1, p1, Lcom/oplus/camera/professional/u$a;->e:F

    invoke-virtual {p0, p1}, Landroid/view/View;->setTranslationY(F)V

    goto :goto_2

    .line 303
    :cond_5
    iget p1, p1, Lcom/oplus/camera/professional/u$a;->e:F

    invoke-virtual {p0, p1}, Landroid/view/View;->setTranslationX(F)V

    :goto_2
    move-object v2, v0

    :goto_3
    if-eqz v1, :cond_6

    if-nez v2, :cond_6

    .line 308
    invoke-virtual {v1}, Landroid/animation/ObjectAnimator;->start()V

    return-object v1

    :cond_6
    if-nez v1, :cond_7

    if-eqz v2, :cond_7

    .line 311
    invoke-virtual {v2}, Landroid/animation/ObjectAnimator;->start()V

    return-object v2

    :cond_7
    if-nez v1, :cond_8

    if-nez v2, :cond_8

    return-object v0

    .line 317
    :cond_8
    new-instance p0, Landroid/animation/AnimatorSet;

    invoke-direct {p0}, Landroid/animation/AnimatorSet;-><init>()V

    .line 318
    new-array p1, v6, [Landroid/animation/Animator;

    aput-object v1, p1, v5

    aput-object v2, p1, v4

    invoke-virtual {p0, p1}, Landroid/animation/AnimatorSet;->playTogether([Landroid/animation/Animator;)V

    .line 319
    invoke-virtual {p0}, Landroid/animation/AnimatorSet;->start()V

    return-object p0

    :cond_9
    :goto_4
    return-object v0
.end method

.method public static a()Lcom/a/a/f;
    .locals 4

    const-wide/high16 v0, 0x4014000000000000L    # 5.0

    const-wide/high16 v2, 0x4024000000000000L    # 10.0

    .line 182
    invoke-static {v0, v1, v2, v3}, Lcom/a/a/g;->b(DD)Lcom/a/a/g;

    move-result-object v0

    .line 183
    invoke-static {}, Lcom/a/a/j;->c()Lcom/a/a/j;

    move-result-object v1

    invoke-virtual {v1}, Lcom/a/a/j;->b()Lcom/a/a/f;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/a/a/f;->a(Lcom/a/a/g;)Lcom/a/a/f;

    move-result-object v0

    return-object v0
.end method

.method public static a(Landroid/view/View;Lcom/a/a/f;Z)V
    .locals 1

    if-eqz p0, :cond_1

    if-nez p1, :cond_0

    goto :goto_0

    .line 191
    :cond_0
    new-instance v0, Lcom/oplus/camera/professional/u$2;

    invoke-direct {v0, p2, p0}, Lcom/oplus/camera/professional/u$2;-><init>(ZLandroid/view/View;)V

    invoke-virtual {p1, v0}, Lcom/a/a/f;->a(Lcom/a/a/h;)Lcom/a/a/f;

    move-result-object p0

    const-wide/16 p1, 0x0

    .line 203
    invoke-virtual {p0, p1, p2}, Lcom/a/a/f;->a(D)Lcom/a/a/f;

    move-result-object p0

    const-wide/high16 p1, 0x3ff0000000000000L    # 1.0

    invoke-virtual {p0, p1, p2}, Lcom/a/a/f;->b(D)Lcom/a/a/f;

    :cond_1
    :goto_0
    return-void
.end method

.method public static a(Landroid/view/View;ZI)V
    .locals 3

    if-eqz p0, :cond_3

    .line 136
    invoke-virtual {p0}, Landroid/view/View;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    if-nez v0, :cond_0

    goto :goto_1

    :cond_0
    const/4 v0, 0x0

    const/high16 v1, 0x3f800000    # 1.0f

    if-eqz p1, :cond_1

    move v2, v0

    goto :goto_0

    :cond_1
    move v2, v1

    :goto_0
    if-eqz p1, :cond_2

    move v0, v1

    .line 142
    :cond_2
    invoke-virtual {p0}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object p1

    invoke-virtual {p1}, Landroid/view/ViewPropertyAnimator;->cancel()V

    .line 143
    invoke-virtual {p0}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object p1

    sget-object v1, Lcom/oplus/camera/professional/t;->a:Landroid/view/animation/PathInterpolator;

    invoke-virtual {p1, v1}, Landroid/view/ViewPropertyAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)Landroid/view/ViewPropertyAnimator;

    move-result-object p1

    new-instance v1, Lcom/oplus/camera/professional/u$1;

    invoke-direct {v1, v2, v0, p0}, Lcom/oplus/camera/professional/u$1;-><init>(FFLandroid/view/View;)V

    .line 144
    invoke-virtual {p1, v1}, Landroid/view/ViewPropertyAnimator;->setUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)Landroid/view/ViewPropertyAnimator;

    move-result-object p0

    int-to-long p1, p2

    .line 154
    invoke-virtual {p0, p1, p2}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object p0

    invoke-virtual {p0}, Landroid/view/ViewPropertyAnimator;->start()V

    :cond_3
    :goto_1
    return-void
.end method

.method public static a(Landroid/widget/ImageView;FFILandroid/animation/Animator$AnimatorListener;)V
    .locals 4

    if-eqz p0, :cond_3

    if-gez p3, :cond_0

    goto :goto_0

    :cond_0
    const/high16 v0, 0x437f0000    # 255.0f

    if-nez p3, :cond_1

    mul-float/2addr p2, v0

    float-to-int p1, p2

    .line 117
    invoke-virtual {p0, p1}, Landroid/widget/ImageView;->setImageAlpha(I)V

    return-void

    .line 121
    :cond_1
    new-instance v1, Landroid/animation/IntEvaluator;

    invoke-direct {v1}, Landroid/animation/IntEvaluator;-><init>()V

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    mul-float/2addr p1, v0

    float-to-int p1, p1

    .line 123
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    aput-object p1, v2, v3

    const/4 p1, 0x1

    mul-float/2addr p2, v0

    float-to-int p2, p2

    .line 124
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    aput-object p2, v2, p1

    const-string p1, "imageAlpha"

    .line 121
    invoke-static {p0, p1, v1, v2}, Landroid/animation/ObjectAnimator;->ofObject(Ljava/lang/Object;Ljava/lang/String;Landroid/animation/TypeEvaluator;[Ljava/lang/Object;)Landroid/animation/ObjectAnimator;

    move-result-object p0

    int-to-long p1, p3

    .line 125
    invoke-virtual {p0, p1, p2}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    .line 126
    sget-object p1, Lcom/oplus/camera/professional/t;->a:Landroid/view/animation/PathInterpolator;

    invoke-virtual {p0, p1}, Landroid/animation/ObjectAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    if-eqz p4, :cond_2

    .line 129
    invoke-virtual {p0, p4}, Landroid/animation/ObjectAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 132
    :cond_2
    invoke-virtual {p0}, Landroid/animation/ObjectAnimator;->start()V

    :cond_3
    :goto_0
    return-void
.end method

.method public static a(Landroid/widget/ImageView;IIILandroid/view/animation/Interpolator;Landroid/animation/Animator$AnimatorListener;)V
    .locals 3

    if-eqz p0, :cond_3

    if-gez p3, :cond_0

    goto :goto_0

    :cond_0
    if-nez p3, :cond_1

    .line 47
    invoke-virtual {p0, p2}, Landroid/widget/ImageView;->setColorFilter(I)V

    return-void

    .line 51
    :cond_1
    new-instance v0, Landroid/animation/ArgbEvaluator;

    invoke-direct {v0}, Landroid/animation/ArgbEvaluator;-><init>()V

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    .line 52
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    aput-object p1, v1, v2

    const/4 p1, 0x1

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    aput-object p2, v1, p1

    const-string p1, "colorFilter"

    .line 51
    invoke-static {p0, p1, v0, v1}, Landroid/animation/ObjectAnimator;->ofObject(Ljava/lang/Object;Ljava/lang/String;Landroid/animation/TypeEvaluator;[Ljava/lang/Object;)Landroid/animation/ObjectAnimator;

    move-result-object p0

    int-to-long p1, p3

    .line 53
    invoke-virtual {p0, p1, p2}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    .line 54
    invoke-virtual {p0, p4}, Landroid/animation/ObjectAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    if-eqz p5, :cond_2

    .line 57
    invoke-virtual {p0, p5}, Landroid/animation/ObjectAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 60
    :cond_2
    invoke-virtual {p0}, Landroid/animation/ObjectAnimator;->start()V

    :cond_3
    :goto_0
    return-void
.end method

.method public static a(Landroid/widget/TextView;IIILandroid/view/animation/Interpolator;Landroid/animation/Animator$AnimatorListener;)V
    .locals 3

    if-eqz p0, :cond_3

    if-gez p3, :cond_0

    goto :goto_0

    :cond_0
    if-nez p3, :cond_1

    .line 70
    invoke-virtual {p0, p2}, Landroid/widget/TextView;->setTextColor(I)V

    return-void

    .line 74
    :cond_1
    new-instance v0, Landroid/animation/ArgbEvaluator;

    invoke-direct {v0}, Landroid/animation/ArgbEvaluator;-><init>()V

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    .line 75
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    aput-object p1, v1, v2

    const/4 p1, 0x1

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    aput-object p2, v1, p1

    const-string p1, "textColor"

    .line 74
    invoke-static {p0, p1, v0, v1}, Landroid/animation/ObjectAnimator;->ofObject(Ljava/lang/Object;Ljava/lang/String;Landroid/animation/TypeEvaluator;[Ljava/lang/Object;)Landroid/animation/ObjectAnimator;

    move-result-object p0

    int-to-long p1, p3

    .line 76
    invoke-virtual {p0, p1, p2}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    .line 77
    invoke-virtual {p0, p4}, Landroid/animation/ObjectAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    if-eqz p5, :cond_2

    .line 80
    invoke-virtual {p0, p5}, Landroid/animation/ObjectAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 83
    :cond_2
    invoke-virtual {p0}, Landroid/animation/ObjectAnimator;->start()V

    :cond_3
    :goto_0
    return-void
.end method
