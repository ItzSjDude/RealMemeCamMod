.class Lcom/oplus/camera/ui/preview/k$3;
.super Ljava/lang/Object;
.source "FacePointAnimationManager.java"

# interfaces
.implements Landroid/animation/ValueAnimator$AnimatorUpdateListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/oplus/camera/ui/preview/k;->a(Lcom/oplus/camera/ui/preview/l;ILandroid/view/animation/Interpolator;I)Landroid/animation/ValueAnimator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/oplus/camera/ui/preview/l;

.field final synthetic b:Lcom/oplus/camera/ui/preview/k;


# direct methods
.method constructor <init>(Lcom/oplus/camera/ui/preview/k;Lcom/oplus/camera/ui/preview/l;)V
    .locals 0

    .line 536
    iput-object p1, p0, Lcom/oplus/camera/ui/preview/k$3;->b:Lcom/oplus/camera/ui/preview/k;

    iput-object p2, p0, Lcom/oplus/camera/ui/preview/k$3;->a:Lcom/oplus/camera/ui/preview/l;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationUpdate(Landroid/animation/ValueAnimator;)V
    .locals 3

    .line 539
    iget-object v0, p0, Lcom/oplus/camera/ui/preview/k$3;->b:Lcom/oplus/camera/ui/preview/k;

    invoke-static {v0}, Lcom/oplus/camera/ui/preview/k;->a(Lcom/oplus/camera/ui/preview/k;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 540
    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->cancel()V

    return-void

    .line 545
    :cond_0
    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/graphics/PointF;

    .line 546
    iget-object v1, p0, Lcom/oplus/camera/ui/preview/k$3;->a:Lcom/oplus/camera/ui/preview/l;

    iget v2, v0, Landroid/graphics/PointF;->x:F

    invoke-virtual {v1, v2}, Lcom/oplus/camera/ui/preview/l;->l(F)V

    .line 547
    iget-object v1, p0, Lcom/oplus/camera/ui/preview/k$3;->a:Lcom/oplus/camera/ui/preview/l;

    iget v0, v0, Landroid/graphics/PointF;->y:F

    invoke-virtual {v1, v0}, Lcom/oplus/camera/ui/preview/l;->m(F)V

    const/high16 v0, 0x3f800000    # 1.0f

    .line 549
    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedFraction()F

    move-result p1

    cmpg-float p1, v0, p1

    if-gtz p1, :cond_1

    .line 550
    iget-object p1, p0, Lcom/oplus/camera/ui/preview/k$3;->a:Lcom/oplus/camera/ui/preview/l;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lcom/oplus/camera/ui/preview/l;->a(Z)V

    goto :goto_0

    .line 552
    :cond_1
    iget-object p1, p0, Lcom/oplus/camera/ui/preview/k$3;->a:Lcom/oplus/camera/ui/preview/l;

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Lcom/oplus/camera/ui/preview/l;->a(Z)V

    .line 555
    :goto_0
    iget-object p0, p0, Lcom/oplus/camera/ui/preview/k$3;->b:Lcom/oplus/camera/ui/preview/k;

    invoke-static {p0}, Lcom/oplus/camera/ui/preview/k;->e(Lcom/oplus/camera/ui/preview/k;)Lcom/oplus/camera/ui/preview/FaceView;

    move-result-object p0

    invoke-virtual {p0}, Lcom/oplus/camera/ui/preview/FaceView;->invalidate()V

    return-void
.end method
