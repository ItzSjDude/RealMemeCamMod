.class Lcom/oplus/camera/ui/d$42;
.super Landroid/animation/AnimatorListenerAdapter;
.source "CameraUIManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/oplus/camera/ui/d;->k(ZZ)V
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

    .line 8260
    iput-object p1, p0, Lcom/oplus/camera/ui/d$42;->a:Lcom/oplus/camera/ui/d;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationCancel(Landroid/animation/Animator;)V
    .locals 0

    return-void
.end method

.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 1

    .line 8279
    iget-object p1, p0, Lcom/oplus/camera/ui/d$42;->a:Lcom/oplus/camera/ui/d;

    invoke-static {p1}, Lcom/oplus/camera/ui/d;->ae(Lcom/oplus/camera/ui/d;)Lcom/oplus/camera/ui/widget/SplitBackgroundView;

    move-result-object p1

    if-eqz p1, :cond_2

    .line 8280
    iget-object p1, p0, Lcom/oplus/camera/ui/d$42;->a:Lcom/oplus/camera/ui/d;

    invoke-static {p1}, Lcom/oplus/camera/ui/d;->ag(Lcom/oplus/camera/ui/d;)Z

    move-result p1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/oplus/camera/ui/d$42;->a:Lcom/oplus/camera/ui/d;

    invoke-virtual {p1}, Lcom/oplus/camera/ui/d;->aU()Z

    move-result p1

    if-nez p1, :cond_1

    .line 8281
    :cond_0
    iget-object p1, p0, Lcom/oplus/camera/ui/d$42;->a:Lcom/oplus/camera/ui/d;

    invoke-static {p1}, Lcom/oplus/camera/ui/d;->ae(Lcom/oplus/camera/ui/d;)Lcom/oplus/camera/ui/widget/SplitBackgroundView;

    move-result-object p1

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Lcom/oplus/camera/ui/widget/SplitBackgroundView;->setEnabled(Z)V

    .line 8284
    :cond_1
    iget-object p1, p0, Lcom/oplus/camera/ui/d$42;->a:Lcom/oplus/camera/ui/d;

    invoke-static {p1}, Lcom/oplus/camera/ui/d;->ae(Lcom/oplus/camera/ui/d;)Lcom/oplus/camera/ui/widget/SplitBackgroundView;

    move-result-object p1

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lcom/oplus/camera/ui/widget/SplitBackgroundView;->setTranslationY(F)V

    .line 8285
    iget-object p1, p0, Lcom/oplus/camera/ui/d$42;->a:Lcom/oplus/camera/ui/d;

    invoke-static {p1}, Lcom/oplus/camera/ui/d;->ae(Lcom/oplus/camera/ui/d;)Lcom/oplus/camera/ui/widget/SplitBackgroundView;

    move-result-object p1

    invoke-virtual {p1, v0}, Lcom/oplus/camera/ui/widget/SplitBackgroundView;->setTranslationX(F)V

    .line 8286
    iget-object p1, p0, Lcom/oplus/camera/ui/d$42;->a:Lcom/oplus/camera/ui/d;

    invoke-static {p1}, Lcom/oplus/camera/ui/d;->ae(Lcom/oplus/camera/ui/d;)Lcom/oplus/camera/ui/widget/SplitBackgroundView;

    move-result-object p1

    invoke-virtual {p1, v0}, Lcom/oplus/camera/ui/widget/SplitBackgroundView;->setAlpha(F)V

    .line 8287
    iget-object p1, p0, Lcom/oplus/camera/ui/d$42;->a:Lcom/oplus/camera/ui/d;

    invoke-static {p1}, Lcom/oplus/camera/ui/d;->ah(Lcom/oplus/camera/ui/d;)V

    .line 8288
    iget-object p0, p0, Lcom/oplus/camera/ui/d$42;->a:Lcom/oplus/camera/ui/d;

    invoke-static {p0}, Lcom/oplus/camera/ui/d;->ae(Lcom/oplus/camera/ui/d;)Lcom/oplus/camera/ui/widget/SplitBackgroundView;

    move-result-object p0

    const/16 p1, 0x8

    invoke-virtual {p0, p1}, Lcom/oplus/camera/ui/widget/SplitBackgroundView;->setVisibility(I)V

    :cond_2
    return-void
.end method

.method public onAnimationStart(Landroid/animation/Animator;)V
    .locals 2

    .line 8263
    iget-object p1, p0, Lcom/oplus/camera/ui/d$42;->a:Lcom/oplus/camera/ui/d;

    invoke-static {p1}, Lcom/oplus/camera/ui/d;->ae(Lcom/oplus/camera/ui/d;)Lcom/oplus/camera/ui/widget/SplitBackgroundView;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 8264
    iget-object p1, p0, Lcom/oplus/camera/ui/d$42;->a:Lcom/oplus/camera/ui/d;

    invoke-static {p1}, Lcom/oplus/camera/ui/d;->ae(Lcom/oplus/camera/ui/d;)Lcom/oplus/camera/ui/widget/SplitBackgroundView;

    move-result-object p1

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lcom/oplus/camera/ui/widget/SplitBackgroundView;->setEnabled(Z)V

    .line 8265
    iget-object p1, p0, Lcom/oplus/camera/ui/d$42;->a:Lcom/oplus/camera/ui/d;

    invoke-static {p1}, Lcom/oplus/camera/ui/d;->ae(Lcom/oplus/camera/ui/d;)Lcom/oplus/camera/ui/widget/SplitBackgroundView;

    move-result-object p1

    const/4 v1, 0x0

    invoke-virtual {p1, v1}, Lcom/oplus/camera/ui/widget/SplitBackgroundView;->setTranslationY(F)V

    .line 8266
    iget-object p1, p0, Lcom/oplus/camera/ui/d$42;->a:Lcom/oplus/camera/ui/d;

    invoke-static {p1}, Lcom/oplus/camera/ui/d;->ae(Lcom/oplus/camera/ui/d;)Lcom/oplus/camera/ui/widget/SplitBackgroundView;

    move-result-object p1

    invoke-virtual {p1, v1}, Lcom/oplus/camera/ui/widget/SplitBackgroundView;->setTranslationX(F)V

    .line 8267
    iget-object p1, p0, Lcom/oplus/camera/ui/d$42;->a:Lcom/oplus/camera/ui/d;

    invoke-static {p1}, Lcom/oplus/camera/ui/d;->ae(Lcom/oplus/camera/ui/d;)Lcom/oplus/camera/ui/widget/SplitBackgroundView;

    move-result-object p1

    const/high16 v1, 0x3f800000    # 1.0f

    invoke-virtual {p1, v1}, Lcom/oplus/camera/ui/widget/SplitBackgroundView;->setAlpha(F)V

    .line 8268
    iget-object p0, p0, Lcom/oplus/camera/ui/d$42;->a:Lcom/oplus/camera/ui/d;

    invoke-static {p0}, Lcom/oplus/camera/ui/d;->ae(Lcom/oplus/camera/ui/d;)Lcom/oplus/camera/ui/widget/SplitBackgroundView;

    move-result-object p0

    invoke-virtual {p0, v0}, Lcom/oplus/camera/ui/widget/SplitBackgroundView;->setVisibility(I)V

    :cond_0
    return-void
.end method
