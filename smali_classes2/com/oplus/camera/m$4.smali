.class Lcom/oplus/camera/m$4;
.super Landroid/animation/AnimatorListenerAdapter;
.source "FrontCameraZoomManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/oplus/camera/m;->b(F)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/oplus/camera/m;


# direct methods
.method constructor <init>(Lcom/oplus/camera/m;)V
    .locals 0

    .line 373
    iput-object p1, p0, Lcom/oplus/camera/m$4;->a:Lcom/oplus/camera/m;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationCancel(Landroid/animation/Animator;)V
    .locals 0

    .line 383
    invoke-super {p0, p1}, Landroid/animation/AnimatorListenerAdapter;->onAnimationCancel(Landroid/animation/Animator;)V

    .line 384
    iget-object p0, p0, Lcom/oplus/camera/m$4;->a:Lcom/oplus/camera/m;

    invoke-static {p0}, Lcom/oplus/camera/m;->f(Lcom/oplus/camera/m;)Landroid/os/ConditionVariable;

    move-result-object p0

    invoke-virtual {p0}, Landroid/os/ConditionVariable;->open()V

    return-void
.end method

.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 2

    .line 376
    invoke-super {p0, p1}, Landroid/animation/AnimatorListenerAdapter;->onAnimationEnd(Landroid/animation/Animator;)V

    .line 377
    iget-object p1, p0, Lcom/oplus/camera/m$4;->a:Lcom/oplus/camera/m;

    invoke-static {p1}, Lcom/oplus/camera/m;->a(Lcom/oplus/camera/m;)Lcom/oplus/camera/ag$a;

    move-result-object p1

    iget-object v0, p0, Lcom/oplus/camera/m$4;->a:Lcom/oplus/camera/m;

    invoke-static {v0}, Lcom/oplus/camera/m;->e(Lcom/oplus/camera/m;)F

    move-result v0

    const/4 v1, 0x1

    invoke-interface {p1, v0, v1}, Lcom/oplus/camera/ag$a;->a(FZ)V

    .line 378
    iget-object p0, p0, Lcom/oplus/camera/m$4;->a:Lcom/oplus/camera/m;

    invoke-static {p0}, Lcom/oplus/camera/m;->f(Lcom/oplus/camera/m;)Landroid/os/ConditionVariable;

    move-result-object p0

    invoke-virtual {p0}, Landroid/os/ConditionVariable;->open()V

    return-void
.end method
