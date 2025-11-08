.class Lcom/oplus/camera/ui/control/ThumbImageView$1;
.super Ljava/lang/Object;
.source "ThumbImageView.java"

# interfaces
.implements Landroid/animation/ValueAnimator$AnimatorUpdateListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/oplus/camera/ui/control/ThumbImageView;->c()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/oplus/camera/ui/control/ThumbImageView;


# direct methods
.method constructor <init>(Lcom/oplus/camera/ui/control/ThumbImageView;)V
    .locals 0

    .line 407
    iput-object p1, p0, Lcom/oplus/camera/ui/control/ThumbImageView$1;->a:Lcom/oplus/camera/ui/control/ThumbImageView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationUpdate(Landroid/animation/ValueAnimator;)V
    .locals 2

    .line 410
    iget-object v0, p0, Lcom/oplus/camera/ui/control/ThumbImageView$1;->a:Lcom/oplus/camera/ui/control/ThumbImageView;

    const/4 v1, 0x2

    invoke-static {v0, v1}, Lcom/oplus/camera/ui/control/ThumbImageView;->a(Lcom/oplus/camera/ui/control/ThumbImageView;I)I

    .line 411
    iget-object v0, p0, Lcom/oplus/camera/ui/control/ThumbImageView$1;->a:Lcom/oplus/camera/ui/control/ThumbImageView;

    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Float;

    invoke-virtual {p1}, Ljava/lang/Float;->floatValue()F

    move-result p1

    invoke-static {v0, p1}, Lcom/oplus/camera/ui/control/ThumbImageView;->a(Lcom/oplus/camera/ui/control/ThumbImageView;F)F

    .line 413
    iget-object p1, p0, Lcom/oplus/camera/ui/control/ThumbImageView$1;->a:Lcom/oplus/camera/ui/control/ThumbImageView;

    invoke-static {p1}, Lcom/oplus/camera/ui/control/ThumbImageView;->a(Lcom/oplus/camera/ui/control/ThumbImageView;)F

    move-result p1

    const/high16 v0, 0x3f000000    # 0.5f

    invoke-static {p1, v0}, Ljava/lang/Float;->compare(FF)I

    move-result p1

    if-lez p1, :cond_0

    .line 414
    iget-object p1, p0, Lcom/oplus/camera/ui/control/ThumbImageView$1;->a:Lcom/oplus/camera/ui/control/ThumbImageView;

    invoke-static {p1, v0}, Lcom/oplus/camera/ui/control/ThumbImageView;->a(Lcom/oplus/camera/ui/control/ThumbImageView;F)F

    .line 415
    iget-object p1, p0, Lcom/oplus/camera/ui/control/ThumbImageView$1;->a:Lcom/oplus/camera/ui/control/ThumbImageView;

    invoke-static {p1}, Lcom/oplus/camera/ui/control/ThumbImageView;->b(Lcom/oplus/camera/ui/control/ThumbImageView;)Landroid/animation/ValueAnimator;

    move-result-object p1

    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->cancel()V

    .line 418
    :cond_0
    iget-object p0, p0, Lcom/oplus/camera/ui/control/ThumbImageView$1;->a:Lcom/oplus/camera/ui/control/ThumbImageView;

    invoke-virtual {p0}, Lcom/oplus/camera/ui/control/ThumbImageView;->invalidate()V

    return-void
.end method
