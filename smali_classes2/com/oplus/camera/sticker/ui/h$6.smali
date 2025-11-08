.class Lcom/oplus/camera/sticker/ui/h$6;
.super Ljava/lang/Object;
.source "StickerMenu.java"

# interfaces
.implements Landroid/animation/Animator$AnimatorListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/oplus/camera/sticker/ui/h;->d(Z)V
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

    .line 1045
    iput-object p1, p0, Lcom/oplus/camera/sticker/ui/h$6;->a:Lcom/oplus/camera/sticker/ui/h;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationCancel(Landroid/animation/Animator;)V
    .locals 1

    .line 1064
    iget-object p1, p0, Lcom/oplus/camera/sticker/ui/h$6;->a:Lcom/oplus/camera/sticker/ui/h;

    invoke-static {p1}, Lcom/oplus/camera/sticker/ui/h;->t(Lcom/oplus/camera/sticker/ui/h;)Landroid/widget/RelativeLayout;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 1065
    iget-object p1, p0, Lcom/oplus/camera/sticker/ui/h$6;->a:Lcom/oplus/camera/sticker/ui/h;

    invoke-static {p1}, Lcom/oplus/camera/sticker/ui/h;->t(Lcom/oplus/camera/sticker/ui/h;)Landroid/widget/RelativeLayout;

    move-result-object p1

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Landroid/widget/RelativeLayout;->setEnabled(Z)V

    .line 1068
    :cond_0
    iget-object p1, p0, Lcom/oplus/camera/sticker/ui/h$6;->a:Lcom/oplus/camera/sticker/ui/h;

    invoke-static {p1}, Lcom/oplus/camera/sticker/ui/h;->b(Lcom/oplus/camera/sticker/ui/h;)Lcom/oplus/camera/sticker/ui/i;

    move-result-object p1

    if-eqz p1, :cond_1

    .line 1069
    iget-object p0, p0, Lcom/oplus/camera/sticker/ui/h$6;->a:Lcom/oplus/camera/sticker/ui/h;

    invoke-static {p0}, Lcom/oplus/camera/sticker/ui/h;->b(Lcom/oplus/camera/sticker/ui/h;)Lcom/oplus/camera/sticker/ui/i;

    move-result-object p0

    invoke-interface {p0}, Lcom/oplus/camera/sticker/ui/i;->a()V

    :cond_1
    return-void
.end method

.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 1

    .line 1053
    iget-object p1, p0, Lcom/oplus/camera/sticker/ui/h$6;->a:Lcom/oplus/camera/sticker/ui/h;

    invoke-static {p1}, Lcom/oplus/camera/sticker/ui/h;->t(Lcom/oplus/camera/sticker/ui/h;)Landroid/widget/RelativeLayout;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 1054
    iget-object p1, p0, Lcom/oplus/camera/sticker/ui/h$6;->a:Lcom/oplus/camera/sticker/ui/h;

    invoke-static {p1}, Lcom/oplus/camera/sticker/ui/h;->t(Lcom/oplus/camera/sticker/ui/h;)Landroid/widget/RelativeLayout;

    move-result-object p1

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Landroid/widget/RelativeLayout;->setEnabled(Z)V

    .line 1057
    :cond_0
    iget-object p1, p0, Lcom/oplus/camera/sticker/ui/h$6;->a:Lcom/oplus/camera/sticker/ui/h;

    invoke-static {p1}, Lcom/oplus/camera/sticker/ui/h;->b(Lcom/oplus/camera/sticker/ui/h;)Lcom/oplus/camera/sticker/ui/i;

    move-result-object p1

    if-eqz p1, :cond_1

    .line 1058
    iget-object p0, p0, Lcom/oplus/camera/sticker/ui/h$6;->a:Lcom/oplus/camera/sticker/ui/h;

    invoke-static {p0}, Lcom/oplus/camera/sticker/ui/h;->b(Lcom/oplus/camera/sticker/ui/h;)Lcom/oplus/camera/sticker/ui/i;

    move-result-object p0

    invoke-interface {p0}, Lcom/oplus/camera/sticker/ui/i;->a()V

    :cond_1
    return-void
.end method

.method public onAnimationRepeat(Landroid/animation/Animator;)V
    .locals 0

    return-void
.end method

.method public onAnimationStart(Landroid/animation/Animator;)V
    .locals 0

    return-void
.end method
