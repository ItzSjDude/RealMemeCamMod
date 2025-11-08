.class Lcom/oplus/camera/sticker/ui/h$7;
.super Ljava/lang/Object;
.source "StickerMenu.java"

# interfaces
.implements Landroid/animation/Animator$AnimatorListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/oplus/camera/sticker/ui/h;->a(ZZZ)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Z

.field final synthetic b:Lcom/oplus/camera/sticker/ui/h;


# direct methods
.method constructor <init>(Lcom/oplus/camera/sticker/ui/h;Z)V
    .locals 0

    .line 1154
    iput-object p1, p0, Lcom/oplus/camera/sticker/ui/h$7;->b:Lcom/oplus/camera/sticker/ui/h;

    iput-boolean p2, p0, Lcom/oplus/camera/sticker/ui/h$7;->a:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationCancel(Landroid/animation/Animator;)V
    .locals 1

    .line 1177
    iget-object p1, p0, Lcom/oplus/camera/sticker/ui/h$7;->b:Lcom/oplus/camera/sticker/ui/h;

    invoke-static {p1}, Lcom/oplus/camera/sticker/ui/h;->t(Lcom/oplus/camera/sticker/ui/h;)Landroid/widget/RelativeLayout;

    move-result-object p1

    const/4 v0, 0x1

    if-eqz p1, :cond_0

    .line 1178
    iget-object p1, p0, Lcom/oplus/camera/sticker/ui/h$7;->b:Lcom/oplus/camera/sticker/ui/h;

    invoke-static {p1}, Lcom/oplus/camera/sticker/ui/h;->t(Lcom/oplus/camera/sticker/ui/h;)Landroid/widget/RelativeLayout;

    move-result-object p1

    invoke-virtual {p1, v0}, Landroid/widget/RelativeLayout;->setEnabled(Z)V

    .line 1181
    :cond_0
    iget-object p1, p0, Lcom/oplus/camera/sticker/ui/h$7;->b:Lcom/oplus/camera/sticker/ui/h;

    invoke-static {p1}, Lcom/oplus/camera/sticker/ui/h;->b(Lcom/oplus/camera/sticker/ui/h;)Lcom/oplus/camera/sticker/ui/i;

    move-result-object p1

    if-eqz p1, :cond_1

    iget-boolean p1, p0, Lcom/oplus/camera/sticker/ui/h$7;->a:Z

    if-eqz p1, :cond_1

    .line 1182
    iget-object p1, p0, Lcom/oplus/camera/sticker/ui/h$7;->b:Lcom/oplus/camera/sticker/ui/h;

    invoke-static {p1}, Lcom/oplus/camera/sticker/ui/h;->b(Lcom/oplus/camera/sticker/ui/h;)Lcom/oplus/camera/sticker/ui/i;

    move-result-object p1

    invoke-interface {p1}, Lcom/oplus/camera/sticker/ui/i;->c()V

    .line 1185
    :cond_1
    iget-object p1, p0, Lcom/oplus/camera/sticker/ui/h$7;->b:Lcom/oplus/camera/sticker/ui/h;

    invoke-static {p1}, Lcom/oplus/camera/sticker/ui/h;->u(Lcom/oplus/camera/sticker/ui/h;)Landroid/widget/RelativeLayout;

    move-result-object p1

    if-eqz p1, :cond_2

    .line 1186
    iget-object p0, p0, Lcom/oplus/camera/sticker/ui/h$7;->b:Lcom/oplus/camera/sticker/ui/h;

    invoke-static {p0}, Lcom/oplus/camera/sticker/ui/h;->u(Lcom/oplus/camera/sticker/ui/h;)Landroid/widget/RelativeLayout;

    move-result-object p0

    invoke-virtual {p0, v0}, Landroid/widget/RelativeLayout;->setEnabled(Z)V

    :cond_2
    return-void
.end method

.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 1

    .line 1162
    iget-object p1, p0, Lcom/oplus/camera/sticker/ui/h$7;->b:Lcom/oplus/camera/sticker/ui/h;

    invoke-static {p1}, Lcom/oplus/camera/sticker/ui/h;->t(Lcom/oplus/camera/sticker/ui/h;)Landroid/widget/RelativeLayout;

    move-result-object p1

    const/4 v0, 0x1

    if-eqz p1, :cond_0

    .line 1163
    iget-object p1, p0, Lcom/oplus/camera/sticker/ui/h$7;->b:Lcom/oplus/camera/sticker/ui/h;

    invoke-static {p1}, Lcom/oplus/camera/sticker/ui/h;->t(Lcom/oplus/camera/sticker/ui/h;)Landroid/widget/RelativeLayout;

    move-result-object p1

    invoke-virtual {p1, v0}, Landroid/widget/RelativeLayout;->setEnabled(Z)V

    .line 1166
    :cond_0
    iget-object p1, p0, Lcom/oplus/camera/sticker/ui/h$7;->b:Lcom/oplus/camera/sticker/ui/h;

    invoke-static {p1}, Lcom/oplus/camera/sticker/ui/h;->u(Lcom/oplus/camera/sticker/ui/h;)Landroid/widget/RelativeLayout;

    move-result-object p1

    if-eqz p1, :cond_1

    .line 1167
    iget-object p1, p0, Lcom/oplus/camera/sticker/ui/h$7;->b:Lcom/oplus/camera/sticker/ui/h;

    invoke-static {p1}, Lcom/oplus/camera/sticker/ui/h;->u(Lcom/oplus/camera/sticker/ui/h;)Landroid/widget/RelativeLayout;

    move-result-object p1

    invoke-virtual {p1, v0}, Landroid/widget/RelativeLayout;->setEnabled(Z)V

    .line 1170
    :cond_1
    iget-object p1, p0, Lcom/oplus/camera/sticker/ui/h$7;->b:Lcom/oplus/camera/sticker/ui/h;

    invoke-static {p1}, Lcom/oplus/camera/sticker/ui/h;->b(Lcom/oplus/camera/sticker/ui/h;)Lcom/oplus/camera/sticker/ui/i;

    move-result-object p1

    if-eqz p1, :cond_2

    iget-boolean p1, p0, Lcom/oplus/camera/sticker/ui/h$7;->a:Z

    if-eqz p1, :cond_2

    .line 1171
    iget-object p0, p0, Lcom/oplus/camera/sticker/ui/h$7;->b:Lcom/oplus/camera/sticker/ui/h;

    invoke-static {p0}, Lcom/oplus/camera/sticker/ui/h;->b(Lcom/oplus/camera/sticker/ui/h;)Lcom/oplus/camera/sticker/ui/i;

    move-result-object p0

    invoke-interface {p0}, Lcom/oplus/camera/sticker/ui/i;->c()V

    :cond_2
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
