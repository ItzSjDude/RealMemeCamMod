.class Lcom/oplus/camera/ui/widget/LockViewDragLayout$4;
.super Ljava/lang/Object;
.source "LockViewDragLayout.java"

# interfaces
.implements Landroid/animation/ValueAnimator$AnimatorUpdateListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/oplus/camera/ui/widget/LockViewDragLayout;->h()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/oplus/camera/ui/widget/LockViewDragLayout;


# direct methods
.method constructor <init>(Lcom/oplus/camera/ui/widget/LockViewDragLayout;)V
    .locals 0

    .line 642
    iput-object p1, p0, Lcom/oplus/camera/ui/widget/LockViewDragLayout$4;->a:Lcom/oplus/camera/ui/widget/LockViewDragLayout;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationUpdate(Landroid/animation/ValueAnimator;)V
    .locals 1

    .line 645
    iget-object v0, p0, Lcom/oplus/camera/ui/widget/LockViewDragLayout$4;->a:Lcom/oplus/camera/ui/widget/LockViewDragLayout;

    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Float;

    invoke-virtual {p1}, Ljava/lang/Float;->floatValue()F

    move-result p1

    invoke-static {v0, p1}, Lcom/oplus/camera/ui/widget/LockViewDragLayout;->a(Lcom/oplus/camera/ui/widget/LockViewDragLayout;F)F

    .line 646
    iget-object p0, p0, Lcom/oplus/camera/ui/widget/LockViewDragLayout$4;->a:Lcom/oplus/camera/ui/widget/LockViewDragLayout;

    invoke-virtual {p0}, Lcom/oplus/camera/ui/widget/LockViewDragLayout;->invalidate()V

    return-void
.end method
