.class Lcom/oplus/camera/sticker/ui/h$3;
.super Ljava/lang/Object;
.source "StickerMenu.java"

# interfaces
.implements Landroid/animation/Animator$AnimatorListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/oplus/camera/sticker/ui/h;->m()Landroid/animation/Animator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/oplus/camera/sticker/ui/h;


# direct methods
.method constructor <init>(Lcom/oplus/camera/sticker/ui/h;)V
    .locals 0

    .line 737
    iput-object p1, p0, Lcom/oplus/camera/sticker/ui/h$3;->a:Lcom/oplus/camera/sticker/ui/h;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationCancel(Landroid/animation/Animator;)V
    .locals 1

    .line 755
    iget-object p1, p0, Lcom/oplus/camera/sticker/ui/h$3;->a:Lcom/oplus/camera/sticker/ui/h;

    invoke-static {p1}, Lcom/oplus/camera/sticker/ui/h;->c(Lcom/oplus/camera/sticker/ui/h;)Lcom/oplus/camera/ui/RotateImageView;

    move-result-object p1

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lcom/oplus/camera/ui/RotateImageView;->setClickable(Z)V

    .line 756
    iget-object p1, p0, Lcom/oplus/camera/sticker/ui/h$3;->a:Lcom/oplus/camera/sticker/ui/h;

    invoke-static {p1}, Lcom/oplus/camera/sticker/ui/h;->c(Lcom/oplus/camera/sticker/ui/h;)Lcom/oplus/camera/ui/RotateImageView;

    move-result-object p1

    const/4 v0, 0x4

    invoke-virtual {p1, v0}, Lcom/oplus/camera/ui/RotateImageView;->setVisibility(I)V

    .line 757
    iget-object p0, p0, Lcom/oplus/camera/sticker/ui/h$3;->a:Lcom/oplus/camera/sticker/ui/h;

    invoke-static {p0}, Lcom/oplus/camera/sticker/ui/h;->c(Lcom/oplus/camera/sticker/ui/h;)Lcom/oplus/camera/ui/RotateImageView;

    move-result-object p0

    const/4 p1, 0x0

    invoke-virtual {p0, p1}, Lcom/oplus/camera/ui/RotateImageView;->setAlpha(F)V

    return-void
.end method

.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 1

    .line 746
    iget-object p1, p0, Lcom/oplus/camera/sticker/ui/h$3;->a:Lcom/oplus/camera/sticker/ui/h;

    invoke-static {p1}, Lcom/oplus/camera/sticker/ui/h;->c(Lcom/oplus/camera/sticker/ui/h;)Lcom/oplus/camera/ui/RotateImageView;

    move-result-object p1

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Lcom/oplus/camera/ui/RotateImageView;->setClickable(Z)V

    .line 748
    iget-object p1, p0, Lcom/oplus/camera/sticker/ui/h$3;->a:Lcom/oplus/camera/sticker/ui/h;

    invoke-static {p1}, Lcom/oplus/camera/sticker/ui/h;->p(Lcom/oplus/camera/sticker/ui/h;)Lcom/oplus/camera/sticker/ui/h$a;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 749
    iget-object p0, p0, Lcom/oplus/camera/sticker/ui/h$3;->a:Lcom/oplus/camera/sticker/ui/h;

    invoke-static {p0}, Lcom/oplus/camera/sticker/ui/h;->p(Lcom/oplus/camera/sticker/ui/h;)Lcom/oplus/camera/sticker/ui/h$a;

    move-result-object p0

    invoke-interface {p0}, Lcom/oplus/camera/sticker/ui/h$a;->a()V

    :cond_0
    return-void
.end method

.method public onAnimationRepeat(Landroid/animation/Animator;)V
    .locals 0

    return-void
.end method

.method public onAnimationStart(Landroid/animation/Animator;)V
    .locals 1

    .line 740
    iget-object p1, p0, Lcom/oplus/camera/sticker/ui/h$3;->a:Lcom/oplus/camera/sticker/ui/h;

    invoke-static {p1}, Lcom/oplus/camera/sticker/ui/h;->c(Lcom/oplus/camera/sticker/ui/h;)Lcom/oplus/camera/ui/RotateImageView;

    move-result-object p1

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lcom/oplus/camera/ui/RotateImageView;->setVisibility(I)V

    .line 741
    iget-object p0, p0, Lcom/oplus/camera/sticker/ui/h$3;->a:Lcom/oplus/camera/sticker/ui/h;

    invoke-static {p0}, Lcom/oplus/camera/sticker/ui/h;->c(Lcom/oplus/camera/sticker/ui/h;)Lcom/oplus/camera/ui/RotateImageView;

    move-result-object p0

    invoke-virtual {p0, v0}, Lcom/oplus/camera/ui/RotateImageView;->setClickable(Z)V

    return-void
.end method
