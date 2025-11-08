.class Lcom/oplus/camera/ag$13;
.super Lcom/oplus/camera/b/a;
.source "ZoomManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/oplus/camera/ag;->T()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/oplus/camera/ag;


# direct methods
.method constructor <init>(Lcom/oplus/camera/ag;)V
    .locals 0

    .line 1872
    iput-object p1, p0, Lcom/oplus/camera/ag$13;->a:Lcom/oplus/camera/ag;

    invoke-direct {p0}, Lcom/oplus/camera/b/a;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationCancel(Landroid/animation/Animator;)V
    .locals 1

    .line 1883
    iget-object p1, p0, Lcom/oplus/camera/ag$13;->a:Lcom/oplus/camera/ag;

    invoke-static {p1}, Lcom/oplus/camera/ag;->D(Lcom/oplus/camera/ag;)Landroid/widget/LinearLayout;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 1884
    iget-object p1, p0, Lcom/oplus/camera/ag$13;->a:Lcom/oplus/camera/ag;

    invoke-static {p1}, Lcom/oplus/camera/ag;->D(Lcom/oplus/camera/ag;)Landroid/widget/LinearLayout;

    move-result-object p1

    const/4 v0, 0x4

    invoke-virtual {p1, v0}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 1885
    iget-object p1, p0, Lcom/oplus/camera/ag$13;->a:Lcom/oplus/camera/ag;

    invoke-static {p1}, Lcom/oplus/camera/ag;->E(Lcom/oplus/camera/ag;)Landroid/view/ViewGroup;

    move-result-object p1

    iget-object p0, p0, Lcom/oplus/camera/ag$13;->a:Lcom/oplus/camera/ag;

    invoke-static {p0}, Lcom/oplus/camera/ag;->D(Lcom/oplus/camera/ag;)Landroid/widget/LinearLayout;

    move-result-object p0

    invoke-virtual {p1, p0}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    :cond_0
    return-void
.end method

.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 1

    .line 1875
    iget-object p1, p0, Lcom/oplus/camera/ag$13;->a:Lcom/oplus/camera/ag;

    invoke-static {p1}, Lcom/oplus/camera/ag;->D(Lcom/oplus/camera/ag;)Landroid/widget/LinearLayout;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 1876
    iget-object p1, p0, Lcom/oplus/camera/ag$13;->a:Lcom/oplus/camera/ag;

    invoke-static {p1}, Lcom/oplus/camera/ag;->D(Lcom/oplus/camera/ag;)Landroid/widget/LinearLayout;

    move-result-object p1

    const/4 v0, 0x4

    invoke-virtual {p1, v0}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 1877
    iget-object p1, p0, Lcom/oplus/camera/ag$13;->a:Lcom/oplus/camera/ag;

    invoke-static {p1}, Lcom/oplus/camera/ag;->E(Lcom/oplus/camera/ag;)Landroid/view/ViewGroup;

    move-result-object p1

    iget-object p0, p0, Lcom/oplus/camera/ag$13;->a:Lcom/oplus/camera/ag;

    invoke-static {p0}, Lcom/oplus/camera/ag;->D(Lcom/oplus/camera/ag;)Landroid/widget/LinearLayout;

    move-result-object p0

    invoke-virtual {p1, p0}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    :cond_0
    return-void
.end method
