.class Lcom/oplus/camera/ui/modepanel/p$4;
.super Ljava/lang/Object;
.source "MoreUIControl.java"

# interfaces
.implements Landroid/animation/Animator$AnimatorListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/oplus/camera/ui/modepanel/p;->g()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/oplus/camera/ui/modepanel/p;


# direct methods
.method constructor <init>(Lcom/oplus/camera/ui/modepanel/p;)V
    .locals 0

    .line 825
    iput-object p1, p0, Lcom/oplus/camera/ui/modepanel/p$4;->a:Lcom/oplus/camera/ui/modepanel/p;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationCancel(Landroid/animation/Animator;)V
    .locals 0

    return-void
.end method

.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 0

    return-void
.end method

.method public onAnimationRepeat(Landroid/animation/Animator;)V
    .locals 0

    return-void
.end method

.method public onAnimationStart(Landroid/animation/Animator;)V
    .locals 1

    .line 828
    invoke-virtual {p1}, Landroid/animation/Animator;->getListeners()Ljava/util/ArrayList;

    move-result-object p1

    invoke-virtual {p1}, Ljava/util/ArrayList;->clear()V

    .line 830
    iget-object p1, p0, Lcom/oplus/camera/ui/modepanel/p$4;->a:Lcom/oplus/camera/ui/modepanel/p;

    invoke-static {p1}, Lcom/oplus/camera/ui/modepanel/p;->l(Lcom/oplus/camera/ui/modepanel/p;)I

    move-result p1

    const/4 v0, 0x4

    if-ne v0, p1, :cond_0

    .line 831
    iget-object p1, p0, Lcom/oplus/camera/ui/modepanel/p$4;->a:Lcom/oplus/camera/ui/modepanel/p;

    invoke-static {p1}, Lcom/oplus/camera/ui/modepanel/p;->n(Lcom/oplus/camera/ui/modepanel/p;)Landroid/widget/TextView;

    move-result-object p1

    const/16 v0, 0x8

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setVisibility(I)V

    .line 832
    iget-object p0, p0, Lcom/oplus/camera/ui/modepanel/p$4;->a:Lcom/oplus/camera/ui/modepanel/p;

    invoke-static {p0}, Lcom/oplus/camera/ui/modepanel/p;->o(Lcom/oplus/camera/ui/modepanel/p;)Landroid/widget/ImageView;

    move-result-object p0

    invoke-virtual {p0, v0}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_0

    .line 834
    :cond_0
    iget-object p1, p0, Lcom/oplus/camera/ui/modepanel/p$4;->a:Lcom/oplus/camera/ui/modepanel/p;

    invoke-static {p1}, Lcom/oplus/camera/ui/modepanel/p;->n(Lcom/oplus/camera/ui/modepanel/p;)Landroid/widget/TextView;

    move-result-object p1

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setVisibility(I)V

    .line 835
    iget-object p0, p0, Lcom/oplus/camera/ui/modepanel/p$4;->a:Lcom/oplus/camera/ui/modepanel/p;

    invoke-static {p0}, Lcom/oplus/camera/ui/modepanel/p;->o(Lcom/oplus/camera/ui/modepanel/p;)Landroid/widget/ImageView;

    move-result-object p0

    invoke-virtual {p0, v0}, Landroid/widget/ImageView;->setVisibility(I)V

    :goto_0
    return-void
.end method
