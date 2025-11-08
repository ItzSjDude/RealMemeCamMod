.class public Lcom/oplus/camera/timelapsepro/d;
.super Ljava/lang/Object;
.source "TimeLapseAnimUtil.java"


# direct methods
.method private static synthetic a(Lcom/oplus/camera/ui/inverse/InverseTextView;Landroid/animation/ValueAnimator;)V
    .locals 0

    .line 29
    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    invoke-virtual {p0, p1}, Lcom/oplus/camera/ui/inverse/InverseTextView;->setTextColor(I)V

    return-void
.end method

.method public static a(Lcom/oplus/camera/ui/inverse/InverseTextView;Z)V
    .locals 1

    const/4 v0, 0x1

    .line 18
    invoke-static {p0, p1, v0}, Lcom/oplus/camera/timelapsepro/d;->a(Lcom/oplus/camera/ui/inverse/InverseTextView;ZZ)V

    return-void
.end method

.method public static a(Lcom/oplus/camera/ui/inverse/InverseTextView;ZZ)V
    .locals 4

    const v0, 0x7f06056b

    const v1, 0x7f06004d

    if-eqz p2, :cond_2

    .line 23
    invoke-static {}, Lcom/oplus/camera/MyApplication;->d()Landroid/content/Context;

    move-result-object p2

    invoke-virtual {p2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    invoke-virtual {p2, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result p2

    .line 24
    invoke-static {}, Lcom/oplus/camera/MyApplication;->d()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    const/4 v1, 0x2

    .line 25
    new-array v1, v1, [I

    const/4 v2, 0x0

    if-eqz p1, :cond_0

    move v3, p2

    goto :goto_0

    :cond_0
    move v3, v0

    :goto_0
    aput v3, v1, v2

    const/4 v2, 0x1

    if-eqz p1, :cond_1

    move p2, v0

    :cond_1
    aput p2, v1, v2

    invoke-static {v1}, Landroid/animation/ValueAnimator;->ofArgb([I)Landroid/animation/ValueAnimator;

    move-result-object p1

    .line 26
    sget-object p2, Lcom/oplus/camera/professional/t;->a:Landroid/view/animation/PathInterpolator;

    invoke-virtual {p1, p2}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    const-wide/16 v0, 0x1f4

    .line 27
    invoke-virtual {p1, v0, v1}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 28
    new-instance p2, Lcom/oplus/camera/timelapsepro/-$$Lambda$d$CGamwhk-iQYaN1FDl3uc6-HRu7g;

    invoke-direct {p2, p0}, Lcom/oplus/camera/timelapsepro/-$$Lambda$d$CGamwhk-iQYaN1FDl3uc6-HRu7g;-><init>(Lcom/oplus/camera/ui/inverse/InverseTextView;)V

    invoke-virtual {p1, p2}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 31
    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->start()V

    goto :goto_2

    .line 33
    :cond_2
    invoke-static {}, Lcom/oplus/camera/MyApplication;->d()Landroid/content/Context;

    move-result-object p2

    invoke-virtual {p2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    if-eqz p1, :cond_3

    goto :goto_1

    :cond_3
    move v0, v1

    :goto_1
    invoke-virtual {p2, v0}, Landroid/content/res/Resources;->getColor(I)I

    move-result p1

    invoke-virtual {p0, p1}, Lcom/oplus/camera/ui/inverse/InverseTextView;->setTextColor(I)V

    :goto_2
    return-void
.end method

.method public static synthetic lambda$CGamwhk-iQYaN1FDl3uc6-HRu7g(Lcom/oplus/camera/ui/inverse/InverseTextView;Landroid/animation/ValueAnimator;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/oplus/camera/timelapsepro/d;->a(Lcom/oplus/camera/ui/inverse/InverseTextView;Landroid/animation/ValueAnimator;)V

    return-void
.end method
