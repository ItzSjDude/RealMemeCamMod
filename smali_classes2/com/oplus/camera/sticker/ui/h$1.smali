.class Lcom/oplus/camera/sticker/ui/h$1;
.super Ljava/lang/Object;
.source "StickerMenu.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/oplus/camera/sticker/ui/h;
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

    .line 105
    iput-object p1, p0, Lcom/oplus/camera/sticker/ui/h$1;->a:Lcom/oplus/camera/sticker/ui/h;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 0

    .line 108
    iget-object p1, p0, Lcom/oplus/camera/sticker/ui/h$1;->a:Lcom/oplus/camera/sticker/ui/h;

    invoke-static {p1}, Lcom/oplus/camera/sticker/ui/h;->a(Lcom/oplus/camera/sticker/ui/h;)Landroid/animation/AnimatorSet;

    move-result-object p1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/oplus/camera/sticker/ui/h$1;->a:Lcom/oplus/camera/sticker/ui/h;

    invoke-static {p1}, Lcom/oplus/camera/sticker/ui/h;->a(Lcom/oplus/camera/sticker/ui/h;)Landroid/animation/AnimatorSet;

    move-result-object p1

    invoke-virtual {p1}, Landroid/animation/AnimatorSet;->isRunning()Z

    move-result p1

    if-nez p1, :cond_2

    :cond_0
    iget-object p1, p0, Lcom/oplus/camera/sticker/ui/h$1;->a:Lcom/oplus/camera/sticker/ui/h;

    .line 109
    invoke-static {p1}, Lcom/oplus/camera/sticker/ui/h;->b(Lcom/oplus/camera/sticker/ui/h;)Lcom/oplus/camera/sticker/ui/i;

    move-result-object p1

    invoke-interface {p1}, Lcom/oplus/camera/sticker/ui/i;->i()Z

    move-result p1

    if-eqz p1, :cond_2

    iget-object p1, p0, Lcom/oplus/camera/sticker/ui/h$1;->a:Lcom/oplus/camera/sticker/ui/h;

    .line 110
    invoke-static {p1}, Lcom/oplus/camera/sticker/ui/h;->c(Lcom/oplus/camera/sticker/ui/h;)Lcom/oplus/camera/ui/RotateImageView;

    move-result-object p1

    invoke-virtual {p1}, Lcom/oplus/camera/ui/RotateImageView;->isEnabled()Z

    move-result p1

    if-eqz p1, :cond_2

    iget-object p1, p0, Lcom/oplus/camera/sticker/ui/h$1;->a:Lcom/oplus/camera/sticker/ui/h;

    .line 111
    invoke-static {p1}, Lcom/oplus/camera/sticker/ui/h;->c(Lcom/oplus/camera/sticker/ui/h;)Lcom/oplus/camera/ui/RotateImageView;

    move-result-object p1

    invoke-virtual {p1}, Lcom/oplus/camera/ui/RotateImageView;->isClickable()Z

    move-result p1

    if-nez p1, :cond_1

    goto :goto_0

    .line 117
    :cond_1
    iget-object p0, p0, Lcom/oplus/camera/sticker/ui/h$1;->a:Lcom/oplus/camera/sticker/ui/h;

    const/4 p1, 0x1

    invoke-virtual {p0, p1}, Lcom/oplus/camera/sticker/ui/h;->d(Z)V

    return-void

    :cond_2
    :goto_0
    const-string p0, "StickerMenu"

    const-string p1, "mEnterMenuButtonOnClickListener, onClick, return"

    .line 112
    invoke-static {p0, p1}, Lcom/oplus/camera/e;->a(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method
