.class Lcom/oplus/camera/ui/menu/a/e$b;
.super Ljava/lang/Object;
.source "ModePickerView.java"

# interfaces
.implements Landroid/animation/Animator$AnimatorListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/oplus/camera/ui/menu/a/e;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "b"
.end annotation


# instance fields
.field final synthetic a:Lcom/oplus/camera/ui/menu/a/e;

.field private b:Landroid/animation/Animator$AnimatorListener;


# direct methods
.method public constructor <init>(Lcom/oplus/camera/ui/menu/a/e;Landroid/animation/Animator$AnimatorListener;)V
    .locals 0

    .line 2653
    iput-object p1, p0, Lcom/oplus/camera/ui/menu/a/e$b;->a:Lcom/oplus/camera/ui/menu/a/e;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 p1, 0x0

    .line 2651
    iput-object p1, p0, Lcom/oplus/camera/ui/menu/a/e$b;->b:Landroid/animation/Animator$AnimatorListener;

    .line 2654
    iput-object p2, p0, Lcom/oplus/camera/ui/menu/a/e$b;->b:Landroid/animation/Animator$AnimatorListener;

    return-void
.end method


# virtual methods
.method public onAnimationCancel(Landroid/animation/Animator;)V
    .locals 2

    const-string v0, "ModePickerView"

    const-string v1, "DefaultHideAnimatorListener, onAnimationCancel"

    .line 2683
    invoke-static {v0, v1}, Lcom/oplus/camera/e;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 2685
    iget-object v0, p0, Lcom/oplus/camera/ui/menu/a/e$b;->a:Lcom/oplus/camera/ui/menu/a/e;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Lcom/oplus/camera/ui/menu/a/e;->setVisibility(I)V

    .line 2686
    iget-object v0, p0, Lcom/oplus/camera/ui/menu/a/e$b;->a:Lcom/oplus/camera/ui/menu/a/e;

    const/high16 v1, 0x3f800000    # 1.0f

    invoke-static {v0, v1}, Lcom/oplus/camera/ui/menu/a/e;->b(Lcom/oplus/camera/ui/menu/a/e;F)V

    .line 2687
    iget-object v0, p0, Lcom/oplus/camera/ui/menu/a/e$b;->a:Lcom/oplus/camera/ui/menu/a/e;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/oplus/camera/ui/menu/a/e;->setEnabled(Z)V

    .line 2689
    iget-object p0, p0, Lcom/oplus/camera/ui/menu/a/e$b;->b:Landroid/animation/Animator$AnimatorListener;

    if-eqz p0, :cond_0

    .line 2690
    invoke-interface {p0, p1}, Landroid/animation/Animator$AnimatorListener;->onAnimationCancel(Landroid/animation/Animator;)V

    :cond_0
    return-void
.end method

.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 2

    const-string v0, "ModePickerView"

    const-string v1, "DefaultHideAnimatorListener, onAnimationEnd"

    .line 2670
    invoke-static {v0, v1}, Lcom/oplus/camera/e;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 2672
    iget-object v0, p0, Lcom/oplus/camera/ui/menu/a/e$b;->a:Lcom/oplus/camera/ui/menu/a/e;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Lcom/oplus/camera/ui/menu/a/e;->setVisibility(I)V

    .line 2673
    iget-object v0, p0, Lcom/oplus/camera/ui/menu/a/e$b;->a:Lcom/oplus/camera/ui/menu/a/e;

    const/high16 v1, 0x3f800000    # 1.0f

    invoke-static {v0, v1}, Lcom/oplus/camera/ui/menu/a/e;->b(Lcom/oplus/camera/ui/menu/a/e;F)V

    .line 2674
    iget-object v0, p0, Lcom/oplus/camera/ui/menu/a/e$b;->a:Lcom/oplus/camera/ui/menu/a/e;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/oplus/camera/ui/menu/a/e;->setEnabled(Z)V

    .line 2676
    iget-object p0, p0, Lcom/oplus/camera/ui/menu/a/e$b;->b:Landroid/animation/Animator$AnimatorListener;

    if-eqz p0, :cond_0

    .line 2677
    invoke-interface {p0, p1}, Landroid/animation/Animator$AnimatorListener;->onAnimationEnd(Landroid/animation/Animator;)V

    :cond_0
    return-void
.end method

.method public onAnimationRepeat(Landroid/animation/Animator;)V
    .locals 0

    .line 2696
    iget-object p0, p0, Lcom/oplus/camera/ui/menu/a/e$b;->b:Landroid/animation/Animator$AnimatorListener;

    if-eqz p0, :cond_0

    .line 2697
    invoke-interface {p0, p1}, Landroid/animation/Animator$AnimatorListener;->onAnimationRepeat(Landroid/animation/Animator;)V

    :cond_0
    return-void
.end method

.method public onAnimationStart(Landroid/animation/Animator;)V
    .locals 2

    const-string v0, "ModePickerView"

    const-string v1, "DefaultHideAnimatorListener, onAnimationStart"

    .line 2659
    invoke-static {v0, v1}, Lcom/oplus/camera/e;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 2661
    iget-object v0, p0, Lcom/oplus/camera/ui/menu/a/e$b;->a:Lcom/oplus/camera/ui/menu/a/e;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/oplus/camera/ui/menu/a/e;->setVisibility(I)V

    .line 2663
    iget-object p0, p0, Lcom/oplus/camera/ui/menu/a/e$b;->b:Landroid/animation/Animator$AnimatorListener;

    if-eqz p0, :cond_0

    .line 2664
    invoke-interface {p0, p1}, Landroid/animation/Animator$AnimatorListener;->onAnimationStart(Landroid/animation/Animator;)V

    :cond_0
    return-void
.end method
