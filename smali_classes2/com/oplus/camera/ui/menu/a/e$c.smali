.class Lcom/oplus/camera/ui/menu/a/e$c;
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
    name = "c"
.end annotation


# instance fields
.field final synthetic a:Lcom/oplus/camera/ui/menu/a/e;

.field private b:Landroid/animation/Animator$AnimatorListener;


# direct methods
.method public constructor <init>(Lcom/oplus/camera/ui/menu/a/e;Landroid/animation/Animator$AnimatorListener;)V
    .locals 0

    .line 2605
    iput-object p1, p0, Lcom/oplus/camera/ui/menu/a/e$c;->a:Lcom/oplus/camera/ui/menu/a/e;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 p1, 0x0

    .line 2603
    iput-object p1, p0, Lcom/oplus/camera/ui/menu/a/e$c;->b:Landroid/animation/Animator$AnimatorListener;

    .line 2606
    iput-object p2, p0, Lcom/oplus/camera/ui/menu/a/e$c;->b:Landroid/animation/Animator$AnimatorListener;

    return-void
.end method


# virtual methods
.method public onAnimationCancel(Landroid/animation/Animator;)V
    .locals 2

    const-string v0, "ModePickerView"

    const-string v1, "DefaultShowAnimatorListener, onAnimationCancel"

    .line 2632
    invoke-static {v0, v1}, Lcom/oplus/camera/e;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 2634
    iget-object v0, p0, Lcom/oplus/camera/ui/menu/a/e$c;->a:Lcom/oplus/camera/ui/menu/a/e;

    const/high16 v1, 0x3f800000    # 1.0f

    invoke-static {v0, v1}, Lcom/oplus/camera/ui/menu/a/e;->b(Lcom/oplus/camera/ui/menu/a/e;F)V

    .line 2635
    iget-object v0, p0, Lcom/oplus/camera/ui/menu/a/e$c;->a:Lcom/oplus/camera/ui/menu/a/e;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/oplus/camera/ui/menu/a/e;->setEnabled(Z)V

    .line 2637
    iget-object p0, p0, Lcom/oplus/camera/ui/menu/a/e$c;->b:Landroid/animation/Animator$AnimatorListener;

    if-eqz p0, :cond_0

    .line 2638
    invoke-interface {p0, p1}, Landroid/animation/Animator$AnimatorListener;->onAnimationCancel(Landroid/animation/Animator;)V

    :cond_0
    return-void
.end method

.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 2

    const-string v0, "ModePickerView"

    const-string v1, "DefaultShowAnimatorListener, onAnimationEnd"

    .line 2620
    invoke-static {v0, v1}, Lcom/oplus/camera/e;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 2622
    iget-object v0, p0, Lcom/oplus/camera/ui/menu/a/e$c;->a:Lcom/oplus/camera/ui/menu/a/e;

    const/high16 v1, 0x3f800000    # 1.0f

    invoke-static {v0, v1}, Lcom/oplus/camera/ui/menu/a/e;->b(Lcom/oplus/camera/ui/menu/a/e;F)V

    .line 2623
    iget-object v0, p0, Lcom/oplus/camera/ui/menu/a/e$c;->a:Lcom/oplus/camera/ui/menu/a/e;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/oplus/camera/ui/menu/a/e;->setEnabled(Z)V

    .line 2625
    iget-object p0, p0, Lcom/oplus/camera/ui/menu/a/e$c;->b:Landroid/animation/Animator$AnimatorListener;

    if-eqz p0, :cond_0

    .line 2626
    invoke-interface {p0, p1}, Landroid/animation/Animator$AnimatorListener;->onAnimationEnd(Landroid/animation/Animator;)V

    :cond_0
    return-void
.end method

.method public onAnimationRepeat(Landroid/animation/Animator;)V
    .locals 0

    .line 2644
    iget-object p0, p0, Lcom/oplus/camera/ui/menu/a/e$c;->b:Landroid/animation/Animator$AnimatorListener;

    if-eqz p0, :cond_0

    .line 2645
    invoke-interface {p0, p1}, Landroid/animation/Animator$AnimatorListener;->onAnimationRepeat(Landroid/animation/Animator;)V

    :cond_0
    return-void
.end method

.method public onAnimationStart(Landroid/animation/Animator;)V
    .locals 2

    const-string v0, "ModePickerView"

    const-string v1, "DefaultShowAnimatorListener, onAnimationStart"

    .line 2611
    invoke-static {v0, v1}, Lcom/oplus/camera/e;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 2613
    iget-object p0, p0, Lcom/oplus/camera/ui/menu/a/e$c;->b:Landroid/animation/Animator$AnimatorListener;

    if-eqz p0, :cond_0

    .line 2614
    invoke-interface {p0, p1}, Landroid/animation/Animator$AnimatorListener;->onAnimationStart(Landroid/animation/Animator;)V

    :cond_0
    return-void
.end method
