.class Lcom/oplus/camera/ui/control/MainShutterButton$9;
.super Landroid/animation/AnimatorListenerAdapter;
.source "MainShutterButton.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/oplus/camera/ui/control/MainShutterButton;->y()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/oplus/camera/ui/control/MainShutterButton;


# direct methods
.method constructor <init>(Lcom/oplus/camera/ui/control/MainShutterButton;)V
    .locals 0

    .line 2385
    iput-object p1, p0, Lcom/oplus/camera/ui/control/MainShutterButton$9;->a:Lcom/oplus/camera/ui/control/MainShutterButton;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 1

    .line 2416
    invoke-super {p0, p1}, Landroid/animation/AnimatorListenerAdapter;->onAnimationEnd(Landroid/animation/Animator;)V

    .line 2418
    invoke-static {}, Lcom/oplus/camera/util/Util;->ao()Z

    move-result p1

    if-eqz p1, :cond_0

    .line 2419
    iget-object p1, p0, Lcom/oplus/camera/ui/control/MainShutterButton$9;->a:Lcom/oplus/camera/ui/control/MainShutterButton;

    const/4 v0, 0x0

    invoke-static {p1, v0}, Lcom/oplus/camera/ui/control/MainShutterButton;->b(Lcom/oplus/camera/ui/control/MainShutterButton;Z)Z

    .line 2422
    :cond_0
    iget-object p0, p0, Lcom/oplus/camera/ui/control/MainShutterButton$9;->a:Lcom/oplus/camera/ui/control/MainShutterButton;

    invoke-static {p0}, Lcom/oplus/camera/ui/control/MainShutterButton;->f(Lcom/oplus/camera/ui/control/MainShutterButton;)V

    return-void
.end method

.method public onAnimationRepeat(Landroid/animation/Animator;)V
    .locals 1

    .line 2399
    invoke-super {p0, p1}, Landroid/animation/AnimatorListenerAdapter;->onAnimationRepeat(Landroid/animation/Animator;)V

    .line 2401
    invoke-static {}, Lcom/oplus/camera/util/Util;->ao()Z

    move-result p1

    if-eqz p1, :cond_0

    .line 2402
    iget-object p0, p0, Lcom/oplus/camera/ui/control/MainShutterButton$9;->a:Lcom/oplus/camera/ui/control/MainShutterButton;

    invoke-static {p0}, Lcom/oplus/camera/ui/control/MainShutterButton;->l(Lcom/oplus/camera/ui/control/MainShutterButton;)Z

    move-result p1

    xor-int/lit8 p1, p1, 0x1

    invoke-static {p0, p1}, Lcom/oplus/camera/ui/control/MainShutterButton;->b(Lcom/oplus/camera/ui/control/MainShutterButton;Z)Z

    goto :goto_0

    .line 2404
    :cond_0
    iget-object p1, p0, Lcom/oplus/camera/ui/control/MainShutterButton$9;->a:Lcom/oplus/camera/ui/control/MainShutterButton;

    invoke-static {p1}, Lcom/oplus/camera/ui/control/MainShutterButton;->k(Lcom/oplus/camera/ui/control/MainShutterButton;)Landroid/graphics/Paint;

    move-result-object p1

    invoke-virtual {p1}, Landroid/graphics/Paint;->getAlpha()I

    move-result p1

    const/16 v0, 0x80

    if-ne v0, p1, :cond_1

    .line 2405
    iget-object p1, p0, Lcom/oplus/camera/ui/control/MainShutterButton$9;->a:Lcom/oplus/camera/ui/control/MainShutterButton;

    invoke-static {p1}, Lcom/oplus/camera/ui/control/MainShutterButton;->k(Lcom/oplus/camera/ui/control/MainShutterButton;)Landroid/graphics/Paint;

    move-result-object p1

    const/16 v0, 0xff

    invoke-virtual {p1, v0}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 2406
    iget-object p0, p0, Lcom/oplus/camera/ui/control/MainShutterButton$9;->a:Lcom/oplus/camera/ui/control/MainShutterButton;

    invoke-static {p0}, Lcom/oplus/camera/ui/control/MainShutterButton;->m(Lcom/oplus/camera/ui/control/MainShutterButton;)Landroid/graphics/Paint;

    move-result-object p0

    const p1, -0x777778

    invoke-virtual {p0, p1}, Landroid/graphics/Paint;->setColor(I)V

    goto :goto_0

    .line 2408
    :cond_1
    iget-object p1, p0, Lcom/oplus/camera/ui/control/MainShutterButton$9;->a:Lcom/oplus/camera/ui/control/MainShutterButton;

    invoke-static {p1}, Lcom/oplus/camera/ui/control/MainShutterButton;->k(Lcom/oplus/camera/ui/control/MainShutterButton;)Landroid/graphics/Paint;

    move-result-object p1

    invoke-virtual {p1, v0}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 2409
    iget-object p0, p0, Lcom/oplus/camera/ui/control/MainShutterButton$9;->a:Lcom/oplus/camera/ui/control/MainShutterButton;

    invoke-static {p0}, Lcom/oplus/camera/ui/control/MainShutterButton;->m(Lcom/oplus/camera/ui/control/MainShutterButton;)Landroid/graphics/Paint;

    move-result-object p0

    const/4 p1, -0x1

    invoke-virtual {p0, p1}, Landroid/graphics/Paint;->setColor(I)V

    :goto_0
    return-void
.end method

.method public onAnimationStart(Landroid/animation/Animator;)V
    .locals 0

    .line 2388
    invoke-super {p0, p1}, Landroid/animation/AnimatorListenerAdapter;->onAnimationStart(Landroid/animation/Animator;)V

    .line 2390
    invoke-static {}, Lcom/oplus/camera/util/Util;->ao()Z

    move-result p1

    if-eqz p1, :cond_0

    .line 2391
    iget-object p0, p0, Lcom/oplus/camera/ui/control/MainShutterButton$9;->a:Lcom/oplus/camera/ui/control/MainShutterButton;

    const/4 p1, 0x0

    invoke-static {p0, p1}, Lcom/oplus/camera/ui/control/MainShutterButton;->b(Lcom/oplus/camera/ui/control/MainShutterButton;Z)Z

    goto :goto_0

    .line 2393
    :cond_0
    iget-object p0, p0, Lcom/oplus/camera/ui/control/MainShutterButton$9;->a:Lcom/oplus/camera/ui/control/MainShutterButton;

    invoke-static {p0}, Lcom/oplus/camera/ui/control/MainShutterButton;->k(Lcom/oplus/camera/ui/control/MainShutterButton;)Landroid/graphics/Paint;

    move-result-object p0

    const/16 p1, 0x80

    invoke-virtual {p0, p1}, Landroid/graphics/Paint;->setAlpha(I)V

    :goto_0
    return-void
.end method
