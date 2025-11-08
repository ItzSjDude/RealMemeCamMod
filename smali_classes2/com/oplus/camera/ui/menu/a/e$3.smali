.class Lcom/oplus/camera/ui/menu/a/e$3;
.super Ljava/lang/Object;
.source "ModePickerView.java"

# interfaces
.implements Landroid/animation/Animator$AnimatorListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/oplus/camera/ui/menu/a/e;->p()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/oplus/camera/ui/menu/a/e;


# direct methods
.method constructor <init>(Lcom/oplus/camera/ui/menu/a/e;)V
    .locals 0

    .line 323
    iput-object p1, p0, Lcom/oplus/camera/ui/menu/a/e$3;->a:Lcom/oplus/camera/ui/menu/a/e;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationCancel(Landroid/animation/Animator;)V
    .locals 0

    return-void
.end method

.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 1

    .line 337
    iget-object p1, p0, Lcom/oplus/camera/ui/menu/a/e$3;->a:Lcom/oplus/camera/ui/menu/a/e;

    invoke-static {p1}, Lcom/oplus/camera/ui/menu/a/e;->d(Lcom/oplus/camera/ui/menu/a/e;)Lcom/oplus/camera/ui/CameraUIListener;

    move-result-object p1

    if-eqz p1, :cond_1

    iget-object p1, p0, Lcom/oplus/camera/ui/menu/a/e$3;->a:Lcom/oplus/camera/ui/menu/a/e;

    .line 338
    invoke-static {p1}, Lcom/oplus/camera/ui/menu/a/e;->d(Lcom/oplus/camera/ui/menu/a/e;)Lcom/oplus/camera/ui/CameraUIListener;

    move-result-object p1

    invoke-interface {p1}, Lcom/oplus/camera/ui/CameraUIListener;->bh()Z

    move-result p1

    if-nez p1, :cond_0

    iget-object p1, p0, Lcom/oplus/camera/ui/menu/a/e$3;->a:Lcom/oplus/camera/ui/menu/a/e;

    invoke-static {p1}, Lcom/oplus/camera/ui/menu/a/e;->d(Lcom/oplus/camera/ui/menu/a/e;)Lcom/oplus/camera/ui/CameraUIListener;

    move-result-object p1

    invoke-interface {p1}, Lcom/oplus/camera/ui/CameraUIListener;->be()Z

    move-result p1

    if-eqz p1, :cond_1

    :cond_0
    return-void

    .line 342
    :cond_1
    iget-object p1, p0, Lcom/oplus/camera/ui/menu/a/e$3;->a:Lcom/oplus/camera/ui/menu/a/e;

    const/4 v0, 0x2

    invoke-virtual {p1, v0}, Lcom/oplus/camera/ui/menu/a/e;->setRotateMode(I)V

    .line 343
    iget-object p1, p0, Lcom/oplus/camera/ui/menu/a/e$3;->a:Lcom/oplus/camera/ui/menu/a/e;

    invoke-static {p1}, Lcom/oplus/camera/ui/menu/a/e;->b(Lcom/oplus/camera/ui/menu/a/e;)Landroid/text/TextPaint;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/oplus/camera/ui/menu/a/e;->a(Lcom/oplus/camera/ui/menu/a/e;Landroid/text/TextPaint;)V

    .line 344
    iget-object p1, p0, Lcom/oplus/camera/ui/menu/a/e$3;->a:Lcom/oplus/camera/ui/menu/a/e;

    invoke-virtual {p1}, Lcom/oplus/camera/ui/menu/a/e;->invalidate()V

    .line 345
    iget-object p1, p0, Lcom/oplus/camera/ui/menu/a/e$3;->a:Lcom/oplus/camera/ui/menu/a/e;

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Lcom/oplus/camera/ui/menu/a/e;->setClipToOutline(Z)V

    .line 346
    iget-object p0, p0, Lcom/oplus/camera/ui/menu/a/e$3;->a:Lcom/oplus/camera/ui/menu/a/e;

    invoke-static {p0}, Lcom/oplus/camera/ui/menu/a/e;->a(Lcom/oplus/camera/ui/menu/a/e;)Lcom/oplus/camera/ui/menu/a/b;

    move-result-object p0

    const/4 p1, 0x0

    invoke-virtual {p0, p1}, Lcom/oplus/camera/ui/menu/a/b;->setVisibility(I)V

    return-void
.end method

.method public onAnimationRepeat(Landroid/animation/Animator;)V
    .locals 0

    return-void
.end method

.method public onAnimationStart(Landroid/animation/Animator;)V
    .locals 1

    .line 326
    iget-object p1, p0, Lcom/oplus/camera/ui/menu/a/e$3;->a:Lcom/oplus/camera/ui/menu/a/e;

    const/4 v0, 0x1

    invoke-static {p1, v0}, Lcom/oplus/camera/ui/menu/a/e;->a(Lcom/oplus/camera/ui/menu/a/e;Z)Z

    .line 328
    invoke-static {}, Lcom/oplus/camera/util/Util;->t()Z

    move-result p1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/oplus/camera/ui/menu/a/e$3;->a:Lcom/oplus/camera/ui/menu/a/e;

    invoke-static {p1}, Lcom/oplus/camera/ui/menu/a/e;->d(Lcom/oplus/camera/ui/menu/a/e;)Lcom/oplus/camera/ui/CameraUIListener;

    move-result-object p1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/oplus/camera/ui/menu/a/e$3;->a:Lcom/oplus/camera/ui/menu/a/e;

    invoke-static {p1}, Lcom/oplus/camera/ui/menu/a/e;->d(Lcom/oplus/camera/ui/menu/a/e;)Lcom/oplus/camera/ui/CameraUIListener;

    move-result-object p1

    invoke-interface {p1}, Lcom/oplus/camera/ui/CameraUIListener;->bW()Z

    move-result p1

    if-eqz p1, :cond_0

    return-void

    .line 332
    :cond_0
    iget-object p0, p0, Lcom/oplus/camera/ui/menu/a/e$3;->a:Lcom/oplus/camera/ui/menu/a/e;

    invoke-static {p0}, Lcom/oplus/camera/ui/menu/a/e;->a(Lcom/oplus/camera/ui/menu/a/e;)Lcom/oplus/camera/ui/menu/a/b;

    move-result-object p0

    const/16 p1, 0x8

    invoke-virtual {p0, p1}, Lcom/oplus/camera/ui/menu/a/b;->setVisibility(I)V

    return-void
.end method
