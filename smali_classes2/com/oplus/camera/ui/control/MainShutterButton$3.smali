.class Lcom/oplus/camera/ui/control/MainShutterButton$3;
.super Ljava/lang/Object;
.source "MainShutterButton.java"

# interfaces
.implements Landroid/animation/Animator$AnimatorListener;


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

    .line 2286
    iput-object p1, p0, Lcom/oplus/camera/ui/control/MainShutterButton$3;->a:Lcom/oplus/camera/ui/control/MainShutterButton;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationCancel(Landroid/animation/Animator;)V
    .locals 0

    return-void
.end method

.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 2

    .line 2294
    iget-object p1, p0, Lcom/oplus/camera/ui/control/MainShutterButton$3;->a:Lcom/oplus/camera/ui/control/MainShutterButton;

    const/4 v0, 0x0

    invoke-static {p1, v0}, Lcom/oplus/camera/ui/control/MainShutterButton;->b(Lcom/oplus/camera/ui/control/MainShutterButton;I)I

    .line 2296
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "onAnimationEnd, mRingDotPrepareAnimator end, mButtonType: "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/oplus/camera/ui/control/MainShutterButton$3;->a:Lcom/oplus/camera/ui/control/MainShutterButton;

    invoke-static {v0}, Lcom/oplus/camera/ui/control/MainShutterButton;->c(Lcom/oplus/camera/ui/control/MainShutterButton;)I

    move-result v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "MainShutterButton"

    invoke-static {v0, p1}, Lcom/oplus/camera/e;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 2298
    iget-object p1, p0, Lcom/oplus/camera/ui/control/MainShutterButton$3;->a:Lcom/oplus/camera/ui/control/MainShutterButton;

    invoke-static {p1}, Lcom/oplus/camera/ui/control/MainShutterButton;->d(Lcom/oplus/camera/ui/control/MainShutterButton;)Landroid/animation/ObjectAnimator;

    move-result-object p1

    if-eqz p1, :cond_1

    iget-object p1, p0, Lcom/oplus/camera/ui/control/MainShutterButton$3;->a:Lcom/oplus/camera/ui/control/MainShutterButton;

    .line 2299
    invoke-static {p1}, Lcom/oplus/camera/ui/control/MainShutterButton;->c(Lcom/oplus/camera/ui/control/MainShutterButton;)I

    move-result p1

    const/4 v0, 0x2

    if-eq v0, p1, :cond_0

    const/4 p1, 0x5

    iget-object v1, p0, Lcom/oplus/camera/ui/control/MainShutterButton$3;->a:Lcom/oplus/camera/ui/control/MainShutterButton;

    invoke-static {v1}, Lcom/oplus/camera/ui/control/MainShutterButton;->c(Lcom/oplus/camera/ui/control/MainShutterButton;)I

    move-result v1

    if-ne p1, v1, :cond_1

    :cond_0
    iget-object p1, p0, Lcom/oplus/camera/ui/control/MainShutterButton$3;->a:Lcom/oplus/camera/ui/control/MainShutterButton;

    .line 2300
    invoke-static {p1}, Lcom/oplus/camera/ui/control/MainShutterButton;->e(Lcom/oplus/camera/ui/control/MainShutterButton;)Ljava/lang/String;

    move-result-object p1

    const-string v1, "button_shape_dial_rotate"

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    .line 2301
    iget-object p1, p0, Lcom/oplus/camera/ui/control/MainShutterButton$3;->a:Lcom/oplus/camera/ui/control/MainShutterButton;

    invoke-static {p1}, Lcom/oplus/camera/ui/control/MainShutterButton;->d(Lcom/oplus/camera/ui/control/MainShutterButton;)Landroid/animation/ObjectAnimator;

    move-result-object p1

    const/high16 v1, 0x3f000000    # 0.5f

    invoke-virtual {p1, v1}, Landroid/animation/ObjectAnimator;->setCurrentFraction(F)V

    .line 2302
    iget-object p1, p0, Lcom/oplus/camera/ui/control/MainShutterButton$3;->a:Lcom/oplus/camera/ui/control/MainShutterButton;

    invoke-static {p1}, Lcom/oplus/camera/ui/control/MainShutterButton;->d(Lcom/oplus/camera/ui/control/MainShutterButton;)Landroid/animation/ObjectAnimator;

    move-result-object p1

    invoke-virtual {p1}, Landroid/animation/ObjectAnimator;->start()V

    .line 2304
    iget-object p1, p0, Lcom/oplus/camera/ui/control/MainShutterButton$3;->a:Lcom/oplus/camera/ui/control/MainShutterButton;

    invoke-static {p1}, Lcom/oplus/camera/ui/control/MainShutterButton;->c(Lcom/oplus/camera/ui/control/MainShutterButton;)I

    move-result p1

    if-eq v0, p1, :cond_1

    .line 2305
    iget-object p0, p0, Lcom/oplus/camera/ui/control/MainShutterButton$3;->a:Lcom/oplus/camera/ui/control/MainShutterButton;

    invoke-virtual {p0, v0}, Lcom/oplus/camera/ui/control/MainShutterButton;->setButtonType(I)V

    :cond_1
    return-void
.end method

.method public onAnimationRepeat(Landroid/animation/Animator;)V
    .locals 0

    return-void
.end method

.method public onAnimationStart(Landroid/animation/Animator;)V
    .locals 0

    return-void
.end method
