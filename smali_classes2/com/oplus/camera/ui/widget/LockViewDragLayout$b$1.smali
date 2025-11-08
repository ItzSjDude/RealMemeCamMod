.class Lcom/oplus/camera/ui/widget/LockViewDragLayout$b$1;
.super Ljava/lang/Object;
.source "LockViewDragLayout.java"

# interfaces
.implements Landroid/animation/ValueAnimator$AnimatorUpdateListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/oplus/camera/ui/widget/LockViewDragLayout$b;->onViewPositionChanged(Landroid/view/View;IIII)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/oplus/camera/ui/widget/LockViewDragLayout$b;


# direct methods
.method constructor <init>(Lcom/oplus/camera/ui/widget/LockViewDragLayout$b;)V
    .locals 0

    .line 488
    iput-object p1, p0, Lcom/oplus/camera/ui/widget/LockViewDragLayout$b$1;->a:Lcom/oplus/camera/ui/widget/LockViewDragLayout$b;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationUpdate(Landroid/animation/ValueAnimator;)V
    .locals 1

    .line 491
    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    .line 492
    iget-object v0, p0, Lcom/oplus/camera/ui/widget/LockViewDragLayout$b$1;->a:Lcom/oplus/camera/ui/widget/LockViewDragLayout$b;

    iget-object v0, v0, Lcom/oplus/camera/ui/widget/LockViewDragLayout$b;->a:Lcom/oplus/camera/ui/widget/LockViewDragLayout;

    invoke-static {v0}, Lcom/oplus/camera/ui/widget/LockViewDragLayout;->l(Lcom/oplus/camera/ui/widget/LockViewDragLayout;)Landroid/graphics/Paint;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setColor(I)V

    .line 493
    iget-object p0, p0, Lcom/oplus/camera/ui/widget/LockViewDragLayout$b$1;->a:Lcom/oplus/camera/ui/widget/LockViewDragLayout$b;

    iget-object p0, p0, Lcom/oplus/camera/ui/widget/LockViewDragLayout$b;->a:Lcom/oplus/camera/ui/widget/LockViewDragLayout;

    invoke-virtual {p0}, Lcom/oplus/camera/ui/widget/LockViewDragLayout;->invalidate()V

    return-void
.end method
