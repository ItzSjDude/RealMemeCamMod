.class Lcom/oplus/camera/ui/b/a$4;
.super Ljava/lang/Object;
.source "CameraSuperTextUI.java"

# interfaces
.implements Landroid/animation/Animator$AnimatorListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/oplus/camera/ui/b/a;->d()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/oplus/camera/ui/b/a;


# direct methods
.method constructor <init>(Lcom/oplus/camera/ui/b/a;)V
    .locals 0

    .line 407
    iput-object p1, p0, Lcom/oplus/camera/ui/b/a$4;->a:Lcom/oplus/camera/ui/b/a;

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

    .line 415
    iget-object p1, p0, Lcom/oplus/camera/ui/b/a$4;->a:Lcom/oplus/camera/ui/b/a;

    invoke-static {p1}, Lcom/oplus/camera/ui/b/a;->b(Lcom/oplus/camera/ui/b/a;)Lcom/oplus/camera/ui/widget/RoundImageView;

    move-result-object p1

    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Lcom/oplus/camera/ui/widget/RoundImageView;->setLayerType(ILandroid/graphics/Paint;)V

    .line 416
    iget-object p1, p0, Lcom/oplus/camera/ui/b/a$4;->a:Lcom/oplus/camera/ui/b/a;

    invoke-static {p1}, Lcom/oplus/camera/ui/b/a;->g(Lcom/oplus/camera/ui/b/a;)Landroid/view/ViewGroup;

    move-result-object p1

    iget-object v1, p0, Lcom/oplus/camera/ui/b/a$4;->a:Lcom/oplus/camera/ui/b/a;

    invoke-static {v1}, Lcom/oplus/camera/ui/b/a;->b(Lcom/oplus/camera/ui/b/a;)Lcom/oplus/camera/ui/widget/RoundImageView;

    move-result-object v1

    invoke-virtual {p1, v1}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 417
    iget-object p1, p0, Lcom/oplus/camera/ui/b/a$4;->a:Lcom/oplus/camera/ui/b/a;

    invoke-static {p1}, Lcom/oplus/camera/ui/b/a;->b(Lcom/oplus/camera/ui/b/a;)Lcom/oplus/camera/ui/widget/RoundImageView;

    move-result-object p1

    invoke-virtual {p1}, Lcom/oplus/camera/ui/widget/RoundImageView;->a()V

    .line 418
    iget-object p1, p0, Lcom/oplus/camera/ui/b/a$4;->a:Lcom/oplus/camera/ui/b/a;

    invoke-static {p1}, Lcom/oplus/camera/ui/b/a;->h(Lcom/oplus/camera/ui/b/a;)Lcom/oplus/camera/ui/CameraUIListener;

    move-result-object p1

    invoke-interface {p1, v0}, Lcom/oplus/camera/ui/CameraUIListener;->c(Z)V

    .line 419
    iget-object p1, p0, Lcom/oplus/camera/ui/b/a$4;->a:Lcom/oplus/camera/ui/b/a;

    invoke-static {p1}, Lcom/oplus/camera/ui/b/a;->h(Lcom/oplus/camera/ui/b/a;)Lcom/oplus/camera/ui/CameraUIListener;

    move-result-object p1

    invoke-interface {p1}, Lcom/oplus/camera/ui/CameraUIListener;->au()V

    .line 420
    iget-object p0, p0, Lcom/oplus/camera/ui/b/a$4;->a:Lcom/oplus/camera/ui/b/a;

    invoke-static {p0, v0}, Lcom/oplus/camera/ui/b/a;->b(Lcom/oplus/camera/ui/b/a;Z)Z

    return-void
.end method

.method public onAnimationRepeat(Landroid/animation/Animator;)V
    .locals 0

    return-void
.end method

.method public onAnimationStart(Landroid/animation/Animator;)V
    .locals 0

    .line 410
    iget-object p0, p0, Lcom/oplus/camera/ui/b/a$4;->a:Lcom/oplus/camera/ui/b/a;

    const/4 p1, 0x1

    invoke-static {p0, p1}, Lcom/oplus/camera/ui/b/a;->b(Lcom/oplus/camera/ui/b/a;Z)Z

    return-void
.end method
