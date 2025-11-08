.class Lcom/oplus/camera/ag$3;
.super Ljava/lang/Object;
.source "ZoomManager.java"

# interfaces
.implements Landroid/view/animation/Animation$AnimationListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/oplus/camera/ag;->M()V
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

    .line 1346
    iput-object p1, p0, Lcom/oplus/camera/ag$3;->a:Lcom/oplus/camera/ag;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/view/animation/Animation;)V
    .locals 0

    .line 1357
    iget-object p1, p0, Lcom/oplus/camera/ag$3;->a:Lcom/oplus/camera/ag;

    invoke-static {p1}, Lcom/oplus/camera/ag;->l(Lcom/oplus/camera/ag;)Lcom/oplus/camera/ui/RotableTextView;

    move-result-object p1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/oplus/camera/ag$3;->a:Lcom/oplus/camera/ag;

    invoke-static {p1}, Lcom/oplus/camera/ag;->k(Lcom/oplus/camera/ag;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 1358
    iget-object p0, p0, Lcom/oplus/camera/ag$3;->a:Lcom/oplus/camera/ag;

    invoke-static {p0}, Lcom/oplus/camera/ag;->l(Lcom/oplus/camera/ag;)Lcom/oplus/camera/ui/RotableTextView;

    move-result-object p0

    invoke-virtual {p0}, Lcom/oplus/camera/ui/RotableTextView;->clearAnimation()V

    :cond_0
    return-void
.end method

.method public onAnimationRepeat(Landroid/view/animation/Animation;)V
    .locals 0

    return-void
.end method

.method public onAnimationStart(Landroid/view/animation/Animation;)V
    .locals 2

    .line 1349
    iget-object p1, p0, Lcom/oplus/camera/ag$3;->a:Lcom/oplus/camera/ag;

    invoke-static {p1}, Lcom/oplus/camera/ag;->l(Lcom/oplus/camera/ag;)Lcom/oplus/camera/ui/RotableTextView;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 1350
    iget-object p1, p0, Lcom/oplus/camera/ag$3;->a:Lcom/oplus/camera/ag;

    invoke-static {p1}, Lcom/oplus/camera/ag;->l(Lcom/oplus/camera/ag;)Lcom/oplus/camera/ui/RotableTextView;

    move-result-object p1

    iget-object v0, p0, Lcom/oplus/camera/ag$3;->a:Lcom/oplus/camera/ag;

    invoke-static {v0}, Lcom/oplus/camera/ag;->C(Lcom/oplus/camera/ag;)I

    move-result v0

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Lcom/oplus/camera/ui/RotableTextView;->a(IZ)V

    .line 1351
    iget-object p0, p0, Lcom/oplus/camera/ag$3;->a:Lcom/oplus/camera/ag;

    invoke-static {p0}, Lcom/oplus/camera/ag;->l(Lcom/oplus/camera/ag;)Lcom/oplus/camera/ui/RotableTextView;

    move-result-object p0

    invoke-virtual {p0, v1}, Lcom/oplus/camera/ui/RotableTextView;->setVisibility(I)V

    :cond_0
    return-void
.end method
