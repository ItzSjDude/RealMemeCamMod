.class Lcom/oplus/camera/ui/b$34;
.super Ljava/lang/Object;
.source "CameraSeekBar.java"

# interfaces
.implements Landroid/animation/Animator$AnimatorListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/oplus/camera/ui/b;->i()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/oplus/camera/ui/b;


# direct methods
.method constructor <init>(Lcom/oplus/camera/ui/b;)V
    .locals 0

    .line 408
    iput-object p1, p0, Lcom/oplus/camera/ui/b$34;->a:Lcom/oplus/camera/ui/b;

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

    .line 416
    iget-object p1, p0, Lcom/oplus/camera/ui/b$34;->a:Lcom/oplus/camera/ui/b;

    invoke-virtual {p1}, Lcom/oplus/camera/ui/b;->invalidate()V

    .line 417
    iget-object p1, p0, Lcom/oplus/camera/ui/b$34;->a:Lcom/oplus/camera/ui/b;

    invoke-virtual {p1}, Lcom/oplus/camera/ui/b;->g()V

    .line 418
    iget-object p1, p0, Lcom/oplus/camera/ui/b$34;->a:Lcom/oplus/camera/ui/b;

    const/high16 v0, 0x3f800000    # 1.0f

    invoke-virtual {p1, v0}, Lcom/oplus/camera/ui/b;->setAlpha(F)V

    .line 419
    iget-object p1, p0, Lcom/oplus/camera/ui/b$34;->a:Lcom/oplus/camera/ui/b;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lcom/oplus/camera/ui/b;->setStatus(I)V

    .line 421
    iget-object p1, p0, Lcom/oplus/camera/ui/b$34;->a:Lcom/oplus/camera/ui/b;

    iget-boolean p1, p1, Lcom/oplus/camera/ui/b;->T:Z

    if-eqz p1, :cond_0

    .line 422
    iget-object p1, p0, Lcom/oplus/camera/ui/b$34;->a:Lcom/oplus/camera/ui/b;

    const/16 v1, 0x8

    invoke-virtual {p1, v1}, Lcom/oplus/camera/ui/b;->setVisibility(I)V

    .line 425
    :cond_0
    iget-object p1, p0, Lcom/oplus/camera/ui/b$34;->a:Lcom/oplus/camera/ui/b;

    invoke-virtual {p1}, Lcom/oplus/camera/ui/b;->o()V

    .line 426
    iget-object p1, p0, Lcom/oplus/camera/ui/b$34;->a:Lcom/oplus/camera/ui/b;

    iput-boolean v0, p1, Lcom/oplus/camera/ui/b;->T:Z

    .line 427
    iput-boolean v0, p1, Lcom/oplus/camera/ui/b;->U:Z

    .line 429
    iget-object p1, p1, Lcom/oplus/camera/ui/b;->al:Lcom/oplus/camera/ui/b$a;

    if-eqz p1, :cond_1

    .line 430
    iget-object p0, p0, Lcom/oplus/camera/ui/b$34;->a:Lcom/oplus/camera/ui/b;

    iget-object p0, p0, Lcom/oplus/camera/ui/b;->al:Lcom/oplus/camera/ui/b$a;

    invoke-interface {p0}, Lcom/oplus/camera/ui/b$a;->d()V

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
