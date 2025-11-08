.class Lcom/coui/appcompat/widget/floatingbutton/COUIFloatingButton$9;
.super Ljava/lang/Object;
.source "COUIFloatingButton.java"

# interfaces
.implements Landroid/animation/Animator$AnimatorListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/coui/appcompat/widget/floatingbutton/COUIFloatingButton;->e()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/coui/appcompat/widget/floatingbutton/COUIFloatingButton;


# direct methods
.method constructor <init>(Lcom/coui/appcompat/widget/floatingbutton/COUIFloatingButton;)V
    .locals 0

    .line 1021
    iput-object p1, p0, Lcom/coui/appcompat/widget/floatingbutton/COUIFloatingButton$9;->a:Lcom/coui/appcompat/widget/floatingbutton/COUIFloatingButton;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationCancel(Landroid/animation/Animator;)V
    .locals 0

    .line 1035
    iget-object p0, p0, Lcom/coui/appcompat/widget/floatingbutton/COUIFloatingButton$9;->a:Lcom/coui/appcompat/widget/floatingbutton/COUIFloatingButton;

    invoke-static {p0}, Lcom/coui/appcompat/widget/floatingbutton/COUIFloatingButton;->i(Lcom/coui/appcompat/widget/floatingbutton/COUIFloatingButton;)Ljava/lang/Runnable;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/coui/appcompat/widget/floatingbutton/COUIFloatingButton;->removeCallbacks(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 0

    .line 1030
    iget-object p0, p0, Lcom/coui/appcompat/widget/floatingbutton/COUIFloatingButton$9;->a:Lcom/coui/appcompat/widget/floatingbutton/COUIFloatingButton;

    invoke-static {p0}, Lcom/coui/appcompat/widget/floatingbutton/COUIFloatingButton;->g(Lcom/coui/appcompat/widget/floatingbutton/COUIFloatingButton;)Lcom/coui/appcompat/widget/floatingbutton/COUIFloatingButton$InstanceState;

    move-result-object p0

    const/4 p1, 0x0

    invoke-static {p0, p1}, Lcom/coui/appcompat/widget/floatingbutton/COUIFloatingButton$InstanceState;->access$202(Lcom/coui/appcompat/widget/floatingbutton/COUIFloatingButton$InstanceState;Z)Z

    return-void
.end method

.method public onAnimationRepeat(Landroid/animation/Animator;)V
    .locals 0

    return-void
.end method

.method public onAnimationStart(Landroid/animation/Animator;)V
    .locals 1

    .line 1024
    iget-object p1, p0, Lcom/coui/appcompat/widget/floatingbutton/COUIFloatingButton$9;->a:Lcom/coui/appcompat/widget/floatingbutton/COUIFloatingButton;

    invoke-static {p1}, Lcom/coui/appcompat/widget/floatingbutton/COUIFloatingButton;->g(Lcom/coui/appcompat/widget/floatingbutton/COUIFloatingButton;)Lcom/coui/appcompat/widget/floatingbutton/COUIFloatingButton$InstanceState;

    move-result-object p1

    const/4 v0, 0x1

    invoke-static {p1, v0}, Lcom/coui/appcompat/widget/floatingbutton/COUIFloatingButton$InstanceState;->access$202(Lcom/coui/appcompat/widget/floatingbutton/COUIFloatingButton$InstanceState;Z)Z

    .line 1025
    iget-object p0, p0, Lcom/coui/appcompat/widget/floatingbutton/COUIFloatingButton$9;->a:Lcom/coui/appcompat/widget/floatingbutton/COUIFloatingButton;

    invoke-static {p0}, Lcom/coui/appcompat/widget/floatingbutton/COUIFloatingButton;->i(Lcom/coui/appcompat/widget/floatingbutton/COUIFloatingButton;)Ljava/lang/Runnable;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/coui/appcompat/widget/floatingbutton/COUIFloatingButton;->removeCallbacks(Ljava/lang/Runnable;)Z

    return-void
.end method
