.class Lcom/oplus/camera/ui/control/MainShutterButton$36;
.super Landroid/animation/AnimatorListenerAdapter;
.source "MainShutterButton.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/oplus/camera/ui/control/MainShutterButton;->q()V
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

    .line 1840
    iput-object p1, p0, Lcom/oplus/camera/ui/control/MainShutterButton$36;->a:Lcom/oplus/camera/ui/control/MainShutterButton;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationCancel(Landroid/animation/Animator;)V
    .locals 1

    .line 1860
    iget-object p1, p0, Lcom/oplus/camera/ui/control/MainShutterButton$36;->a:Lcom/oplus/camera/ui/control/MainShutterButton;

    const/4 v0, 0x1

    invoke-static {p1, v0}, Lcom/oplus/camera/ui/control/MainShutterButton;->a(Lcom/oplus/camera/ui/control/MainShutterButton;I)V

    .line 1861
    iget-object p1, p0, Lcom/oplus/camera/ui/control/MainShutterButton$36;->a:Lcom/oplus/camera/ui/control/MainShutterButton;

    invoke-virtual {p1, v0}, Lcom/oplus/camera/ui/control/MainShutterButton;->setEnabled(Z)V

    .line 1862
    iget-object p1, p0, Lcom/oplus/camera/ui/control/MainShutterButton$36;->a:Lcom/oplus/camera/ui/control/MainShutterButton;

    invoke-virtual {p1, v0}, Lcom/oplus/camera/ui/control/MainShutterButton;->setClickable(Z)V

    .line 1864
    iget-object p1, p0, Lcom/oplus/camera/ui/control/MainShutterButton$36;->a:Lcom/oplus/camera/ui/control/MainShutterButton;

    invoke-static {p1}, Lcom/oplus/camera/ui/control/MainShutterButton;->b(Lcom/oplus/camera/ui/control/MainShutterButton;)Landroid/animation/ValueAnimator;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 1865
    iget-object p0, p0, Lcom/oplus/camera/ui/control/MainShutterButton$36;->a:Lcom/oplus/camera/ui/control/MainShutterButton;

    invoke-static {p0}, Lcom/oplus/camera/ui/control/MainShutterButton;->b(Lcom/oplus/camera/ui/control/MainShutterButton;)Landroid/animation/ValueAnimator;

    move-result-object p0

    invoke-virtual {p0}, Landroid/animation/ValueAnimator;->cancel()V

    :cond_0
    return-void
.end method

.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 1

    .line 1849
    iget-object p1, p0, Lcom/oplus/camera/ui/control/MainShutterButton$36;->a:Lcom/oplus/camera/ui/control/MainShutterButton;

    const/4 v0, 0x1

    invoke-static {p1, v0}, Lcom/oplus/camera/ui/control/MainShutterButton;->a(Lcom/oplus/camera/ui/control/MainShutterButton;I)V

    .line 1850
    iget-object p1, p0, Lcom/oplus/camera/ui/control/MainShutterButton$36;->a:Lcom/oplus/camera/ui/control/MainShutterButton;

    invoke-virtual {p1, v0}, Lcom/oplus/camera/ui/control/MainShutterButton;->setEnabled(Z)V

    .line 1851
    iget-object p1, p0, Lcom/oplus/camera/ui/control/MainShutterButton$36;->a:Lcom/oplus/camera/ui/control/MainShutterButton;

    invoke-virtual {p1, v0}, Lcom/oplus/camera/ui/control/MainShutterButton;->setClickable(Z)V

    .line 1853
    iget-object p1, p0, Lcom/oplus/camera/ui/control/MainShutterButton$36;->a:Lcom/oplus/camera/ui/control/MainShutterButton;

    invoke-static {p1}, Lcom/oplus/camera/ui/control/MainShutterButton;->b(Lcom/oplus/camera/ui/control/MainShutterButton;)Landroid/animation/ValueAnimator;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 1854
    iget-object p0, p0, Lcom/oplus/camera/ui/control/MainShutterButton$36;->a:Lcom/oplus/camera/ui/control/MainShutterButton;

    invoke-static {p0}, Lcom/oplus/camera/ui/control/MainShutterButton;->b(Lcom/oplus/camera/ui/control/MainShutterButton;)Landroid/animation/ValueAnimator;

    move-result-object p0

    invoke-virtual {p0}, Landroid/animation/ValueAnimator;->cancel()V

    :cond_0
    return-void
.end method

.method public onAnimationRepeat(Landroid/animation/Animator;)V
    .locals 0

    .line 1871
    iget-object p0, p0, Lcom/oplus/camera/ui/control/MainShutterButton$36;->a:Lcom/oplus/camera/ui/control/MainShutterButton;

    invoke-static {p0}, Lcom/oplus/camera/ui/control/MainShutterButton;->a(Lcom/oplus/camera/ui/control/MainShutterButton;)V

    return-void
.end method

.method public onAnimationStart(Landroid/animation/Animator;)V
    .locals 1

    .line 1843
    iget-object p1, p0, Lcom/oplus/camera/ui/control/MainShutterButton$36;->a:Lcom/oplus/camera/ui/control/MainShutterButton;

    const/4 v0, 0x0

    invoke-virtual {p1, v0, v0}, Lcom/oplus/camera/ui/control/MainShutterButton;->a(ZZ)V

    .line 1844
    iget-object p0, p0, Lcom/oplus/camera/ui/control/MainShutterButton$36;->a:Lcom/oplus/camera/ui/control/MainShutterButton;

    invoke-virtual {p0, v0}, Lcom/oplus/camera/ui/control/MainShutterButton;->setClickable(Z)V

    return-void
.end method
