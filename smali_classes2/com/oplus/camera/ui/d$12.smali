.class Lcom/oplus/camera/ui/d$12;
.super Ljava/lang/Object;
.source "CameraUIManager.java"

# interfaces
.implements Lcom/oplus/camera/timelapsepro/g$e;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/oplus/camera/ui/d;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/oplus/camera/ui/d;


# direct methods
.method constructor <init>(Lcom/oplus/camera/ui/d;)V
    .locals 0

    .line 473
    iput-object p1, p0, Lcom/oplus/camera/ui/d$12;->a:Lcom/oplus/camera/ui/d;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private synthetic a(Landroid/animation/ValueAnimator;)V
    .locals 0

    .line 490
    iget-object p0, p0, Lcom/oplus/camera/ui/d$12;->a:Lcom/oplus/camera/ui/d;

    invoke-static {p0}, Lcom/oplus/camera/ui/d;->h(Lcom/oplus/camera/ui/d;)Lcom/oplus/camera/ui/menu/facebeauty/RotateAnimationView;

    move-result-object p0

    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    invoke-virtual {p0, p1}, Lcom/oplus/camera/ui/menu/facebeauty/RotateAnimationView;->setColorFilter(I)V

    return-void
.end method

.method public static synthetic lambda$wj8VuU-w4seV6e0pqKe7KMis6wA(Lcom/oplus/camera/ui/d$12;Landroid/animation/ValueAnimator;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/oplus/camera/ui/d$12;->a(Landroid/animation/ValueAnimator;)V

    return-void
.end method


# virtual methods
.method public a(I)V
    .locals 7

    const/4 v0, 0x1

    const/4 v1, 0x0

    if-eqz p1, :cond_0

    move v2, v0

    goto :goto_0

    :cond_0
    move v2, v1

    .line 478
    :goto_0
    iget-object v3, p0, Lcom/oplus/camera/ui/d$12;->a:Lcom/oplus/camera/ui/d;

    invoke-static {v3}, Lcom/oplus/camera/ui/d;->d(Lcom/oplus/camera/ui/d;)I

    move-result v3

    if-lez v3, :cond_1

    if-gtz p1, :cond_2

    :cond_1
    iget-object v3, p0, Lcom/oplus/camera/ui/d$12;->a:Lcom/oplus/camera/ui/d;

    .line 479
    invoke-static {v3}, Lcom/oplus/camera/ui/d;->d(Lcom/oplus/camera/ui/d;)I

    move-result v3

    if-nez v3, :cond_3

    if-nez p1, :cond_3

    :cond_2
    return-void

    :cond_3
    const/4 v3, 0x4

    .line 483
    iget-object v4, p0, Lcom/oplus/camera/ui/d$12;->a:Lcom/oplus/camera/ui/d;

    invoke-static {v4}, Lcom/oplus/camera/ui/d;->e(Lcom/oplus/camera/ui/d;)Lcom/oplus/camera/screen/b/a;

    move-result-object v4

    invoke-virtual {v4}, Lcom/oplus/camera/screen/b/a;->j()I

    move-result v4

    const v5, 0x7f06056b

    const v6, 0x7f06004d

    if-ne v3, v4, :cond_6

    .line 484
    iget-object v3, p0, Lcom/oplus/camera/ui/d$12;->a:Lcom/oplus/camera/ui/d;

    invoke-static {v3}, Lcom/oplus/camera/ui/d;->f(Lcom/oplus/camera/ui/d;)Landroid/app/Activity;

    move-result-object v3

    invoke-virtual {v3, v6}, Landroid/app/Activity;->getColor(I)I

    move-result v3

    .line 485
    iget-object v4, p0, Lcom/oplus/camera/ui/d$12;->a:Lcom/oplus/camera/ui/d;

    invoke-static {v4}, Lcom/oplus/camera/ui/d;->f(Lcom/oplus/camera/ui/d;)Landroid/app/Activity;

    move-result-object v4

    invoke-virtual {v4, v5}, Landroid/app/Activity;->getColor(I)I

    move-result v4

    const/4 v5, 0x2

    .line 486
    new-array v5, v5, [I

    if-eqz v2, :cond_4

    move v6, v3

    goto :goto_1

    :cond_4
    move v6, v4

    :goto_1
    aput v6, v5, v1

    if-eqz v2, :cond_5

    move v3, v4

    :cond_5
    aput v3, v5, v0

    invoke-static {v5}, Landroid/animation/ValueAnimator;->ofArgb([I)Landroid/animation/ValueAnimator;

    move-result-object v0

    .line 487
    iget-object v1, p0, Lcom/oplus/camera/ui/d$12;->a:Lcom/oplus/camera/ui/d;

    invoke-static {v1}, Lcom/oplus/camera/ui/d;->g(Lcom/oplus/camera/ui/d;)Landroid/view/animation/PathInterpolator;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    const-wide/16 v1, 0x1f4

    .line 488
    invoke-virtual {v0, v1, v2}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 489
    new-instance v1, Lcom/oplus/camera/ui/-$$Lambda$d$12$wj8VuU-w4seV6e0pqKe7KMis6wA;

    invoke-direct {v1, p0}, Lcom/oplus/camera/ui/-$$Lambda$d$12$wj8VuU-w4seV6e0pqKe7KMis6wA;-><init>(Lcom/oplus/camera/ui/d$12;)V

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 492
    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->start()V

    goto :goto_3

    .line 494
    :cond_6
    iget-object v0, p0, Lcom/oplus/camera/ui/d$12;->a:Lcom/oplus/camera/ui/d;

    invoke-static {v0}, Lcom/oplus/camera/ui/d;->h(Lcom/oplus/camera/ui/d;)Lcom/oplus/camera/ui/menu/facebeauty/RotateAnimationView;

    move-result-object v0

    iget-object v1, p0, Lcom/oplus/camera/ui/d$12;->a:Lcom/oplus/camera/ui/d;

    .line 495
    invoke-static {v1}, Lcom/oplus/camera/ui/d;->f(Lcom/oplus/camera/ui/d;)Landroid/app/Activity;

    move-result-object v1

    if-eqz v2, :cond_7

    goto :goto_2

    :cond_7
    move v5, v6

    :goto_2
    invoke-static {v1, v5}, Landroidx/core/a/a;->c(Landroid/content/Context;I)I

    move-result v1

    invoke-static {v1}, Landroid/content/res/ColorStateList;->valueOf(I)Landroid/content/res/ColorStateList;

    move-result-object v1

    .line 494
    invoke-virtual {v0, v1}, Lcom/oplus/camera/ui/menu/facebeauty/RotateAnimationView;->setImageTintList(Landroid/content/res/ColorStateList;)V

    .line 499
    :goto_3
    iget-object p0, p0, Lcom/oplus/camera/ui/d$12;->a:Lcom/oplus/camera/ui/d;

    invoke-static {p0, p1}, Lcom/oplus/camera/ui/d;->a(Lcom/oplus/camera/ui/d;I)I

    return-void
.end method

.method public a(J)V
    .locals 0

    .line 509
    iget-object p0, p0, Lcom/oplus/camera/ui/d$12;->a:Lcom/oplus/camera/ui/d;

    invoke-static {p0}, Lcom/oplus/camera/ui/d;->i(Lcom/oplus/camera/ui/d;)Lcom/oplus/camera/ui/CameraUIListener;

    move-result-object p0

    const/4 p1, 0x0

    invoke-interface {p0, p1}, Lcom/oplus/camera/ui/CameraUIListener;->g(I)V

    return-void
.end method

.method public a(Ljava/lang/String;)V
    .locals 0

    .line 504
    iget-object p0, p0, Lcom/oplus/camera/ui/d$12;->a:Lcom/oplus/camera/ui/d;

    invoke-static {p0}, Lcom/oplus/camera/ui/d;->i(Lcom/oplus/camera/ui/d;)Lcom/oplus/camera/ui/CameraUIListener;

    move-result-object p0

    const/4 p1, 0x0

    invoke-interface {p0, p1}, Lcom/oplus/camera/ui/CameraUIListener;->g(I)V

    return-void
.end method

.method public a(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    .line 514
    iget-object v0, p0, Lcom/oplus/camera/ui/d$12;->a:Lcom/oplus/camera/ui/d;

    invoke-static {v0}, Lcom/oplus/camera/ui/d;->i(Lcom/oplus/camera/ui/d;)Lcom/oplus/camera/ui/CameraUIListener;

    move-result-object v0

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Lcom/oplus/camera/ui/CameraUIListener;->g(I)V

    .line 515
    iget-object p0, p0, Lcom/oplus/camera/ui/d$12;->a:Lcom/oplus/camera/ui/d;

    invoke-static {p0}, Lcom/oplus/camera/ui/d;->j(Lcom/oplus/camera/ui/d;)Lcom/oplus/camera/ComboPreferences;

    move-result-object p0

    invoke-virtual {p0}, Lcom/oplus/camera/ComboPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object p0

    invoke-interface {p0, p1, p2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object p0

    invoke-interface {p0}, Landroid/content/SharedPreferences$Editor;->apply()V

    return-void
.end method
