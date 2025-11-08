.class Lcom/oplus/camera/ui/preview/k$c;
.super Landroid/animation/ValueAnimator;
.source "FacePointAnimationManager.java"

# interfaces
.implements Landroid/animation/Animator$AnimatorListener;
.implements Landroid/animation/ValueAnimator$AnimatorUpdateListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/oplus/camera/ui/preview/k;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "c"
.end annotation


# instance fields
.field final synthetic a:Lcom/oplus/camera/ui/preview/k;

.field private b:Lcom/oplus/camera/ui/preview/l;

.field private c:Lcom/oplus/camera/ui/preview/k$a;

.field private d:I


# direct methods
.method public varargs constructor <init>(Lcom/oplus/camera/ui/preview/k;Lcom/oplus/camera/ui/preview/l;Lcom/oplus/camera/ui/preview/k$a;IIILandroid/view/animation/Interpolator;[F)V
    .locals 0

    .line 617
    iput-object p1, p0, Lcom/oplus/camera/ui/preview/k$c;->a:Lcom/oplus/camera/ui/preview/k;

    invoke-direct {p0}, Landroid/animation/ValueAnimator;-><init>()V

    const/4 p1, 0x0

    .line 612
    iput-object p1, p0, Lcom/oplus/camera/ui/preview/k$c;->b:Lcom/oplus/camera/ui/preview/l;

    .line 613
    sget-object p1, Lcom/oplus/camera/ui/preview/k$a;->SCALE:Lcom/oplus/camera/ui/preview/k$a;

    iput-object p1, p0, Lcom/oplus/camera/ui/preview/k$c;->c:Lcom/oplus/camera/ui/preview/k$a;

    const/4 p1, 0x0

    .line 614
    iput p1, p0, Lcom/oplus/camera/ui/preview/k$c;->d:I

    .line 618
    iput-object p2, p0, Lcom/oplus/camera/ui/preview/k$c;->b:Lcom/oplus/camera/ui/preview/l;

    .line 619
    iput p4, p0, Lcom/oplus/camera/ui/preview/k$c;->d:I

    .line 620
    invoke-virtual {p0, p8}, Lcom/oplus/camera/ui/preview/k$c;->setFloatValues([F)V

    int-to-long p1, p6

    .line 621
    invoke-virtual {p0, p1, p2}, Lcom/oplus/camera/ui/preview/k$c;->setDuration(J)Landroid/animation/ValueAnimator;

    int-to-long p1, p5

    .line 622
    invoke-virtual {p0, p1, p2}, Lcom/oplus/camera/ui/preview/k$c;->setStartDelay(J)V

    .line 623
    invoke-virtual {p0, p7}, Lcom/oplus/camera/ui/preview/k$c;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 624
    invoke-virtual {p0, p0}, Lcom/oplus/camera/ui/preview/k$c;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 625
    invoke-virtual {p0, p0}, Lcom/oplus/camera/ui/preview/k$c;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 626
    iput-object p3, p0, Lcom/oplus/camera/ui/preview/k$c;->c:Lcom/oplus/camera/ui/preview/k$a;

    return-void
.end method


# virtual methods
.method public onAnimationCancel(Landroid/animation/Animator;)V
    .locals 0

    .line 688
    iget p1, p0, Lcom/oplus/camera/ui/preview/k$c;->d:I

    if-nez p1, :cond_0

    .line 689
    iget-object p0, p0, Lcom/oplus/camera/ui/preview/k$c;->b:Lcom/oplus/camera/ui/preview/l;

    const/4 p1, 0x0

    invoke-virtual {p0, p1}, Lcom/oplus/camera/ui/preview/l;->b(Z)V

    :cond_0
    return-void
.end method

.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 0

    .line 681
    iget p1, p0, Lcom/oplus/camera/ui/preview/k$c;->d:I

    if-nez p1, :cond_0

    .line 682
    iget-object p0, p0, Lcom/oplus/camera/ui/preview/k$c;->b:Lcom/oplus/camera/ui/preview/l;

    const/4 p1, 0x0

    invoke-virtual {p0, p1}, Lcom/oplus/camera/ui/preview/l;->b(Z)V

    :cond_0
    return-void
.end method

.method public onAnimationRepeat(Landroid/animation/Animator;)V
    .locals 0

    return-void
.end method

.method public onAnimationStart(Landroid/animation/Animator;)V
    .locals 0

    .line 674
    iget p1, p0, Lcom/oplus/camera/ui/preview/k$c;->d:I

    if-nez p1, :cond_0

    .line 675
    iget-object p0, p0, Lcom/oplus/camera/ui/preview/k$c;->b:Lcom/oplus/camera/ui/preview/l;

    const/4 p1, 0x1

    invoke-virtual {p0, p1}, Lcom/oplus/camera/ui/preview/l;->b(Z)V

    :cond_0
    return-void
.end method

.method public onAnimationUpdate(Landroid/animation/ValueAnimator;)V
    .locals 5

    .line 631
    iget-object v0, p0, Lcom/oplus/camera/ui/preview/k$c;->a:Lcom/oplus/camera/ui/preview/k;

    invoke-static {v0}, Lcom/oplus/camera/ui/preview/k;->a(Lcom/oplus/camera/ui/preview/k;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 632
    invoke-virtual {p0}, Lcom/oplus/camera/ui/preview/k$c;->cancel()V

    return-void

    .line 637
    :cond_0
    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Float;

    invoke-virtual {p1}, Ljava/lang/Float;->floatValue()F

    move-result p1

    .line 639
    sget-object v0, Lcom/oplus/camera/ui/preview/k$a;->ALPHA:Lcom/oplus/camera/ui/preview/k$a;

    iget-object v1, p0, Lcom/oplus/camera/ui/preview/k$c;->c:Lcom/oplus/camera/ui/preview/k$a;

    const/4 v2, 0x3

    const/4 v3, 0x2

    const/4 v4, 0x1

    if-ne v0, v1, :cond_3

    const/high16 v0, 0x437f0000    # 255.0f

    mul-float/2addr p1, v0

    float-to-int p1, p1

    .line 642
    iget v0, p0, Lcom/oplus/camera/ui/preview/k$c;->d:I

    if-ne v4, v0, :cond_1

    .line 643
    iget-object p0, p0, Lcom/oplus/camera/ui/preview/k$c;->b:Lcom/oplus/camera/ui/preview/l;

    invoke-virtual {p0}, Lcom/oplus/camera/ui/preview/l;->s()Landroid/graphics/Paint;

    move-result-object p0

    invoke-virtual {p0, p1}, Landroid/graphics/Paint;->setAlpha(I)V

    goto/16 :goto_0

    :cond_1
    if-ne v3, v0, :cond_2

    .line 645
    iget-object p0, p0, Lcom/oplus/camera/ui/preview/k$c;->b:Lcom/oplus/camera/ui/preview/l;

    invoke-virtual {p0}, Lcom/oplus/camera/ui/preview/l;->t()Landroid/graphics/Paint;

    move-result-object p0

    invoke-virtual {p0, p1}, Landroid/graphics/Paint;->setAlpha(I)V

    goto/16 :goto_0

    :cond_2
    if-ne v2, v0, :cond_9

    .line 647
    iget-object p0, p0, Lcom/oplus/camera/ui/preview/k$c;->b:Lcom/oplus/camera/ui/preview/l;

    invoke-virtual {p0}, Lcom/oplus/camera/ui/preview/l;->u()Landroid/graphics/Paint;

    move-result-object p0

    invoke-virtual {p0, p1}, Landroid/graphics/Paint;->setAlpha(I)V

    goto/16 :goto_0

    .line 649
    :cond_3
    sget-object v0, Lcom/oplus/camera/ui/preview/k$a;->TRANSLATION_X:Lcom/oplus/camera/ui/preview/k$a;

    iget-object v1, p0, Lcom/oplus/camera/ui/preview/k$c;->c:Lcom/oplus/camera/ui/preview/k$a;

    if-ne v0, v1, :cond_4

    .line 650
    iget-object p0, p0, Lcom/oplus/camera/ui/preview/k$c;->b:Lcom/oplus/camera/ui/preview/l;

    invoke-virtual {p0, p1}, Lcom/oplus/camera/ui/preview/l;->l(F)V

    goto/16 :goto_0

    .line 651
    :cond_4
    sget-object v0, Lcom/oplus/camera/ui/preview/k$a;->TRANSLATION_Y:Lcom/oplus/camera/ui/preview/k$a;

    iget-object v1, p0, Lcom/oplus/camera/ui/preview/k$c;->c:Lcom/oplus/camera/ui/preview/k$a;

    if-ne v0, v1, :cond_5

    .line 652
    iget-object p0, p0, Lcom/oplus/camera/ui/preview/k$c;->b:Lcom/oplus/camera/ui/preview/l;

    invoke-virtual {p0, p1}, Lcom/oplus/camera/ui/preview/l;->m(F)V

    goto :goto_0

    .line 654
    :cond_5
    iget v0, p0, Lcom/oplus/camera/ui/preview/k$c;->d:I

    if-nez v0, :cond_6

    .line 655
    iget-object v0, p0, Lcom/oplus/camera/ui/preview/k$c;->b:Lcom/oplus/camera/ui/preview/l;

    invoke-virtual {v0, p1}, Lcom/oplus/camera/ui/preview/l;->n(F)V

    .line 656
    iget-object v0, p0, Lcom/oplus/camera/ui/preview/k$c;->b:Lcom/oplus/camera/ui/preview/l;

    invoke-virtual {v0}, Lcom/oplus/camera/ui/preview/l;->i()F

    move-result v1

    iget-object v2, p0, Lcom/oplus/camera/ui/preview/k$c;->b:Lcom/oplus/camera/ui/preview/l;

    invoke-virtual {v2}, Lcom/oplus/camera/ui/preview/l;->c()F

    move-result v2

    mul-float/2addr v1, v2

    mul-float/2addr v1, p1

    invoke-virtual {v0, v1}, Lcom/oplus/camera/ui/preview/l;->g(F)V

    .line 657
    iget-object v0, p0, Lcom/oplus/camera/ui/preview/k$c;->b:Lcom/oplus/camera/ui/preview/l;

    invoke-virtual {v0}, Lcom/oplus/camera/ui/preview/l;->j()F

    move-result v1

    iget-object v2, p0, Lcom/oplus/camera/ui/preview/k$c;->b:Lcom/oplus/camera/ui/preview/l;

    invoke-virtual {v2}, Lcom/oplus/camera/ui/preview/l;->c()F

    move-result v2

    mul-float/2addr v1, v2

    mul-float/2addr v1, p1

    invoke-virtual {v0, v1}, Lcom/oplus/camera/ui/preview/l;->h(F)V

    .line 658
    iget-object v0, p0, Lcom/oplus/camera/ui/preview/k$c;->b:Lcom/oplus/camera/ui/preview/l;

    invoke-virtual {v0}, Lcom/oplus/camera/ui/preview/l;->k()F

    move-result v1

    iget-object v2, p0, Lcom/oplus/camera/ui/preview/k$c;->b:Lcom/oplus/camera/ui/preview/l;

    invoke-virtual {v2}, Lcom/oplus/camera/ui/preview/l;->c()F

    move-result v2

    mul-float/2addr v1, v2

    mul-float/2addr v1, p1

    invoke-virtual {v0, v1}, Lcom/oplus/camera/ui/preview/l;->i(F)V

    .line 659
    iget-object p1, p0, Lcom/oplus/camera/ui/preview/k$c;->a:Lcom/oplus/camera/ui/preview/k;

    invoke-static {p1}, Lcom/oplus/camera/ui/preview/k;->e(Lcom/oplus/camera/ui/preview/k;)Lcom/oplus/camera/ui/preview/FaceView;

    move-result-object p1

    invoke-virtual {p1}, Lcom/oplus/camera/ui/preview/FaceView;->invalidate()V

    .line 660
    iget-object p1, p0, Lcom/oplus/camera/ui/preview/k$c;->a:Lcom/oplus/camera/ui/preview/k;

    invoke-static {p1}, Lcom/oplus/camera/ui/preview/k;->d(Lcom/oplus/camera/ui/preview/k;)Landroid/os/Handler;

    move-result-object p1

    invoke-virtual {p1, v4}, Landroid/os/Handler;->removeMessages(I)V

    .line 661
    iget-object p0, p0, Lcom/oplus/camera/ui/preview/k$c;->a:Lcom/oplus/camera/ui/preview/k;

    invoke-static {p0}, Lcom/oplus/camera/ui/preview/k;->d(Lcom/oplus/camera/ui/preview/k;)Landroid/os/Handler;

    move-result-object p0

    const-wide/16 v0, 0x32

    invoke-virtual {p0, v4, v0, v1}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    goto :goto_0

    :cond_6
    if-ne v4, v0, :cond_7

    .line 663
    iget-object p0, p0, Lcom/oplus/camera/ui/preview/k$c;->b:Lcom/oplus/camera/ui/preview/l;

    invoke-virtual {p0, p1}, Lcom/oplus/camera/ui/preview/l;->d(F)V

    goto :goto_0

    :cond_7
    if-ne v3, v0, :cond_8

    .line 665
    iget-object p0, p0, Lcom/oplus/camera/ui/preview/k$c;->b:Lcom/oplus/camera/ui/preview/l;

    invoke-virtual {p0, p1}, Lcom/oplus/camera/ui/preview/l;->e(F)V

    goto :goto_0

    :cond_8
    if-ne v2, v0, :cond_9

    .line 667
    iget-object p0, p0, Lcom/oplus/camera/ui/preview/k$c;->b:Lcom/oplus/camera/ui/preview/l;

    invoke-virtual {p0, p1}, Lcom/oplus/camera/ui/preview/l;->f(F)V

    :cond_9
    :goto_0
    return-void
.end method
