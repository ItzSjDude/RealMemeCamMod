.class Lcom/oplus/camera/ui/menu/setting/down/ArrowView$1;
.super Ljava/lang/Object;
.source "ArrowView.java"

# interfaces
.implements Landroid/animation/ValueAnimator$AnimatorUpdateListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/oplus/camera/ui/menu/setting/down/ArrowView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/oplus/camera/ui/menu/setting/down/ArrowView;


# virtual methods
.method public onAnimationUpdate(Landroid/animation/ValueAnimator;)V
    .locals 0

    .line 220
    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Float;

    invoke-virtual {p1}, Ljava/lang/Float;->floatValue()F

    move-result p1

    .line 221
    iget-object p0, p0, Lcom/oplus/camera/ui/menu/setting/down/ArrowView$1;->a:Lcom/oplus/camera/ui/menu/setting/down/ArrowView;

    invoke-static {p0, p1}, Lcom/oplus/camera/ui/menu/setting/down/ArrowView;->a(Lcom/oplus/camera/ui/menu/setting/down/ArrowView;F)V

    return-void
.end method
