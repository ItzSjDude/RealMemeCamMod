.class Lcom/coui/appcompat/widget/floatingbutton/COUIFloatingButton$1;
.super Ljava/lang/Object;
.source "COUIFloatingButton.java"

# interfaces
.implements Landroid/animation/Animator$AnimatorListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/coui/appcompat/widget/floatingbutton/COUIFloatingButton;->f()Landroid/animation/ValueAnimator;
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

    .line 1094
    iput-object p1, p0, Lcom/coui/appcompat/widget/floatingbutton/COUIFloatingButton$1;->a:Lcom/coui/appcompat/widget/floatingbutton/COUIFloatingButton;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationCancel(Landroid/animation/Animator;)V
    .locals 1

    .line 1109
    iget-object p1, p0, Lcom/coui/appcompat/widget/floatingbutton/COUIFloatingButton$1;->a:Lcom/coui/appcompat/widget/floatingbutton/COUIFloatingButton;

    invoke-static {p1}, Lcom/coui/appcompat/widget/floatingbutton/COUIFloatingButton;->i(Lcom/coui/appcompat/widget/floatingbutton/COUIFloatingButton;)Ljava/lang/Runnable;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/coui/appcompat/widget/floatingbutton/COUIFloatingButton;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 1110
    iget-object p0, p0, Lcom/coui/appcompat/widget/floatingbutton/COUIFloatingButton$1;->a:Lcom/coui/appcompat/widget/floatingbutton/COUIFloatingButton;

    invoke-static {p0}, Lcom/coui/appcompat/widget/floatingbutton/COUIFloatingButton;->h(Lcom/coui/appcompat/widget/floatingbutton/COUIFloatingButton;)Lcom/google/android/material/imageview/ShapeableImageView;

    move-result-object p0

    const/16 p1, 0x8

    invoke-virtual {p0, p1}, Lcom/google/android/material/imageview/ShapeableImageView;->setVisibility(I)V

    return-void
.end method

.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 1

    .line 1103
    iget-object p1, p0, Lcom/coui/appcompat/widget/floatingbutton/COUIFloatingButton$1;->a:Lcom/coui/appcompat/widget/floatingbutton/COUIFloatingButton;

    invoke-static {p1}, Lcom/coui/appcompat/widget/floatingbutton/COUIFloatingButton;->h(Lcom/coui/appcompat/widget/floatingbutton/COUIFloatingButton;)Lcom/google/android/material/imageview/ShapeableImageView;

    move-result-object p1

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lcom/google/android/material/imageview/ShapeableImageView;->setVisibility(I)V

    .line 1104
    iget-object p0, p0, Lcom/coui/appcompat/widget/floatingbutton/COUIFloatingButton$1;->a:Lcom/coui/appcompat/widget/floatingbutton/COUIFloatingButton;

    invoke-static {p0}, Lcom/coui/appcompat/widget/floatingbutton/COUIFloatingButton;->g(Lcom/coui/appcompat/widget/floatingbutton/COUIFloatingButton;)Lcom/coui/appcompat/widget/floatingbutton/COUIFloatingButton$InstanceState;

    move-result-object p0

    invoke-static {p0, v0}, Lcom/coui/appcompat/widget/floatingbutton/COUIFloatingButton$InstanceState;->access$202(Lcom/coui/appcompat/widget/floatingbutton/COUIFloatingButton$InstanceState;Z)Z

    return-void
.end method

.method public onAnimationRepeat(Landroid/animation/Animator;)V
    .locals 0

    return-void
.end method

.method public onAnimationStart(Landroid/animation/Animator;)V
    .locals 2

    .line 1097
    iget-object p1, p0, Lcom/coui/appcompat/widget/floatingbutton/COUIFloatingButton$1;->a:Lcom/coui/appcompat/widget/floatingbutton/COUIFloatingButton;

    invoke-static {p1}, Lcom/coui/appcompat/widget/floatingbutton/COUIFloatingButton;->g(Lcom/coui/appcompat/widget/floatingbutton/COUIFloatingButton;)Lcom/coui/appcompat/widget/floatingbutton/COUIFloatingButton$InstanceState;

    move-result-object p1

    const/4 v0, 0x1

    invoke-static {p1, v0}, Lcom/coui/appcompat/widget/floatingbutton/COUIFloatingButton$InstanceState;->access$202(Lcom/coui/appcompat/widget/floatingbutton/COUIFloatingButton$InstanceState;Z)Z

    .line 1098
    iget-object p0, p0, Lcom/coui/appcompat/widget/floatingbutton/COUIFloatingButton$1;->a:Lcom/coui/appcompat/widget/floatingbutton/COUIFloatingButton;

    invoke-static {p0}, Lcom/coui/appcompat/widget/floatingbutton/COUIFloatingButton;->i(Lcom/coui/appcompat/widget/floatingbutton/COUIFloatingButton;)Ljava/lang/Runnable;

    move-result-object p1

    const-wide/16 v0, 0x1388

    invoke-virtual {p0, p1, v0, v1}, Lcom/coui/appcompat/widget/floatingbutton/COUIFloatingButton;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method
