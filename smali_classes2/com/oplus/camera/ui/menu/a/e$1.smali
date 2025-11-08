.class Lcom/oplus/camera/ui/menu/a/e$1;
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

    .line 295
    iput-object p1, p0, Lcom/oplus/camera/ui/menu/a/e$1;->a:Lcom/oplus/camera/ui/menu/a/e;

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

    .line 303
    iget-object p1, p0, Lcom/oplus/camera/ui/menu/a/e$1;->a:Lcom/oplus/camera/ui/menu/a/e;

    const/4 v0, 0x0

    invoke-static {p1, v0}, Lcom/oplus/camera/ui/menu/a/e;->a(Lcom/oplus/camera/ui/menu/a/e;Z)Z

    .line 304
    iget-object p1, p0, Lcom/oplus/camera/ui/menu/a/e$1;->a:Lcom/oplus/camera/ui/menu/a/e;

    invoke-virtual {p1, v0}, Lcom/oplus/camera/ui/menu/a/e;->setArrangeAlpha(I)V

    .line 305
    iget-object p1, p0, Lcom/oplus/camera/ui/menu/a/e$1;->a:Lcom/oplus/camera/ui/menu/a/e;

    const/4 v0, 0x2

    invoke-virtual {p1, v0}, Lcom/oplus/camera/ui/menu/a/e;->setRotateMode(I)V

    .line 306
    iget-object p1, p0, Lcom/oplus/camera/ui/menu/a/e$1;->a:Lcom/oplus/camera/ui/menu/a/e;

    invoke-static {p1}, Lcom/oplus/camera/ui/menu/a/e;->b(Lcom/oplus/camera/ui/menu/a/e;)Landroid/text/TextPaint;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/oplus/camera/ui/menu/a/e;->a(Lcom/oplus/camera/ui/menu/a/e;Landroid/text/TextPaint;)V

    .line 307
    iget-object p1, p0, Lcom/oplus/camera/ui/menu/a/e$1;->a:Lcom/oplus/camera/ui/menu/a/e;

    invoke-virtual {p1}, Lcom/oplus/camera/ui/menu/a/e;->invalidate()V

    .line 308
    iget-object p0, p0, Lcom/oplus/camera/ui/menu/a/e$1;->a:Lcom/oplus/camera/ui/menu/a/e;

    invoke-static {p0}, Lcom/oplus/camera/ui/menu/a/e;->c(Lcom/oplus/camera/ui/menu/a/e;)Lcom/oplus/camera/ui/menu/a/a;

    move-result-object p0

    invoke-virtual {p0}, Lcom/oplus/camera/ui/menu/a/a;->a()Ljava/lang/Runnable;

    move-result-object p0

    if-eqz p0, :cond_0

    .line 311
    invoke-interface {p0}, Ljava/lang/Runnable;->run()V

    :cond_0
    return-void
.end method

.method public onAnimationRepeat(Landroid/animation/Animator;)V
    .locals 0

    return-void
.end method

.method public onAnimationStart(Landroid/animation/Animator;)V
    .locals 0

    .line 298
    iget-object p0, p0, Lcom/oplus/camera/ui/menu/a/e$1;->a:Lcom/oplus/camera/ui/menu/a/e;

    invoke-static {p0}, Lcom/oplus/camera/ui/menu/a/e;->a(Lcom/oplus/camera/ui/menu/a/e;)Lcom/oplus/camera/ui/menu/a/b;

    move-result-object p0

    const/16 p1, 0x8

    invoke-virtual {p0, p1}, Lcom/oplus/camera/ui/menu/a/b;->setVisibility(I)V

    return-void
.end method
