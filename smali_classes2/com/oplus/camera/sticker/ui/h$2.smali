.class Lcom/oplus/camera/sticker/ui/h$2;
.super Ljava/lang/Object;
.source "StickerMenu.java"

# interfaces
.implements Landroid/animation/Animator$AnimatorListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/oplus/camera/sticker/ui/h;->l()Landroid/animation/Animator;
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

    .line 699
    iput-object p1, p0, Lcom/oplus/camera/sticker/ui/h$2;->a:Lcom/oplus/camera/sticker/ui/h;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationCancel(Landroid/animation/Animator;)V
    .locals 1

    .line 713
    iget-object p1, p0, Lcom/oplus/camera/sticker/ui/h$2;->a:Lcom/oplus/camera/sticker/ui/h;

    invoke-static {p1}, Lcom/oplus/camera/sticker/ui/h;->c(Lcom/oplus/camera/sticker/ui/h;)Lcom/oplus/camera/ui/RotateImageView;

    move-result-object p1

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Lcom/oplus/camera/ui/RotateImageView;->setClickable(Z)V

    .line 714
    iget-object p1, p0, Lcom/oplus/camera/sticker/ui/h$2;->a:Lcom/oplus/camera/sticker/ui/h;

    invoke-static {p1}, Lcom/oplus/camera/sticker/ui/h;->c(Lcom/oplus/camera/sticker/ui/h;)Lcom/oplus/camera/ui/RotateImageView;

    move-result-object p1

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lcom/oplus/camera/ui/RotateImageView;->setVisibility(I)V

    .line 715
    iget-object p0, p0, Lcom/oplus/camera/sticker/ui/h$2;->a:Lcom/oplus/camera/sticker/ui/h;

    invoke-static {p0}, Lcom/oplus/camera/sticker/ui/h;->c(Lcom/oplus/camera/sticker/ui/h;)Lcom/oplus/camera/ui/RotateImageView;

    move-result-object p0

    const/high16 p1, 0x3f800000    # 1.0f

    invoke-virtual {p0, p1}, Lcom/oplus/camera/ui/RotateImageView;->setAlpha(F)V

    return-void
.end method

.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 1

    .line 707
    iget-object p1, p0, Lcom/oplus/camera/sticker/ui/h$2;->a:Lcom/oplus/camera/sticker/ui/h;

    invoke-static {p1}, Lcom/oplus/camera/sticker/ui/h;->c(Lcom/oplus/camera/sticker/ui/h;)Lcom/oplus/camera/ui/RotateImageView;

    move-result-object p1

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lcom/oplus/camera/ui/RotateImageView;->setClickable(Z)V

    .line 708
    iget-object p0, p0, Lcom/oplus/camera/sticker/ui/h$2;->a:Lcom/oplus/camera/sticker/ui/h;

    invoke-static {p0}, Lcom/oplus/camera/sticker/ui/h;->c(Lcom/oplus/camera/sticker/ui/h;)Lcom/oplus/camera/ui/RotateImageView;

    move-result-object p0

    const/4 p1, 0x4

    invoke-virtual {p0, p1}, Lcom/oplus/camera/ui/RotateImageView;->setVisibility(I)V

    return-void
.end method

.method public onAnimationRepeat(Landroid/animation/Animator;)V
    .locals 0

    return-void
.end method

.method public onAnimationStart(Landroid/animation/Animator;)V
    .locals 0

    .line 702
    iget-object p0, p0, Lcom/oplus/camera/sticker/ui/h$2;->a:Lcom/oplus/camera/sticker/ui/h;

    invoke-static {p0}, Lcom/oplus/camera/sticker/ui/h;->c(Lcom/oplus/camera/sticker/ui/h;)Lcom/oplus/camera/ui/RotateImageView;

    move-result-object p0

    const/4 p1, 0x0

    invoke-virtual {p0, p1}, Lcom/oplus/camera/ui/RotateImageView;->setClickable(Z)V

    return-void
.end method
