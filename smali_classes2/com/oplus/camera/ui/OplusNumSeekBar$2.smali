.class Lcom/oplus/camera/ui/OplusNumSeekBar$2;
.super Landroid/animation/AnimatorListenerAdapter;
.source "OplusNumSeekBar.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/oplus/camera/ui/OplusNumSeekBar;->b()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/oplus/camera/ui/OplusNumSeekBar;


# direct methods
.method constructor <init>(Lcom/oplus/camera/ui/OplusNumSeekBar;)V
    .locals 0

    .line 481
    iput-object p1, p0, Lcom/oplus/camera/ui/OplusNumSeekBar$2;->a:Lcom/oplus/camera/ui/OplusNumSeekBar;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationCancel(Landroid/animation/Animator;)V
    .locals 1

    .line 501
    iget-object p1, p0, Lcom/oplus/camera/ui/OplusNumSeekBar$2;->a:Lcom/oplus/camera/ui/OplusNumSeekBar;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lcom/oplus/camera/ui/OplusNumSeekBar;->setThumbOnDragging(Z)V

    .line 502
    iget-object p0, p0, Lcom/oplus/camera/ui/OplusNumSeekBar$2;->a:Lcom/oplus/camera/ui/OplusNumSeekBar;

    iput-boolean v0, p0, Lcom/oplus/camera/ui/OplusNumSeekBar;->B:Z

    .line 503
    invoke-virtual {p0}, Lcom/oplus/camera/ui/OplusNumSeekBar;->invalidate()V

    return-void
.end method

.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 2

    .line 484
    iget-object p1, p0, Lcom/oplus/camera/ui/OplusNumSeekBar$2;->a:Lcom/oplus/camera/ui/OplusNumSeekBar;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lcom/oplus/camera/ui/OplusNumSeekBar;->setThumbOnDragging(Z)V

    .line 485
    iget-object p1, p0, Lcom/oplus/camera/ui/OplusNumSeekBar$2;->a:Lcom/oplus/camera/ui/OplusNumSeekBar;

    iput-boolean v0, p1, Lcom/oplus/camera/ui/OplusNumSeekBar;->B:Z

    .line 486
    invoke-virtual {p1}, Lcom/oplus/camera/ui/OplusNumSeekBar;->invalidate()V

    .line 488
    iget-object p1, p0, Lcom/oplus/camera/ui/OplusNumSeekBar$2;->a:Lcom/oplus/camera/ui/OplusNumSeekBar;

    invoke-static {p1}, Lcom/oplus/camera/ui/OplusNumSeekBar;->a(Lcom/oplus/camera/ui/OplusNumSeekBar;)Lcom/oplus/camera/ui/OplusNumSeekBar$a;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 489
    iget-object p1, p0, Lcom/oplus/camera/ui/OplusNumSeekBar$2;->a:Lcom/oplus/camera/ui/OplusNumSeekBar;

    invoke-static {p1}, Lcom/oplus/camera/ui/OplusNumSeekBar;->a(Lcom/oplus/camera/ui/OplusNumSeekBar;)Lcom/oplus/camera/ui/OplusNumSeekBar$a;

    move-result-object p1

    iget-object p0, p0, Lcom/oplus/camera/ui/OplusNumSeekBar$2;->a:Lcom/oplus/camera/ui/OplusNumSeekBar;

    invoke-virtual {p0}, Lcom/oplus/camera/ui/OplusNumSeekBar;->getProgress()I

    move-result v0

    const/4 v1, 0x1

    invoke-interface {p1, p0, v0, v1}, Lcom/oplus/camera/ui/OplusNumSeekBar$a;->a(Lcom/oplus/camera/ui/OplusNumSeekBar;IZ)V

    :cond_0
    return-void
.end method

.method public onAnimationStart(Landroid/animation/Animator;)V
    .locals 0

    .line 495
    invoke-super {p0, p1}, Landroid/animation/AnimatorListenerAdapter;->onAnimationStart(Landroid/animation/Animator;)V

    .line 496
    iget-object p0, p0, Lcom/oplus/camera/ui/OplusNumSeekBar$2;->a:Lcom/oplus/camera/ui/OplusNumSeekBar;

    const/4 p1, 0x1

    invoke-virtual {p0, p1}, Lcom/oplus/camera/ui/OplusNumSeekBar;->setThumbOnDragging(Z)V

    return-void
.end method
