.class Lcom/oplus/camera/ui/widget/LockViewDragLayout$b;
.super Landroidx/customview/a/c$a;
.source "LockViewDragLayout.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/oplus/camera/ui/widget/LockViewDragLayout;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "b"
.end annotation


# instance fields
.field final synthetic a:Lcom/oplus/camera/ui/widget/LockViewDragLayout;


# direct methods
.method constructor <init>(Lcom/oplus/camera/ui/widget/LockViewDragLayout;)V
    .locals 0

    .line 409
    iput-object p1, p0, Lcom/oplus/camera/ui/widget/LockViewDragLayout$b;->a:Lcom/oplus/camera/ui/widget/LockViewDragLayout;

    invoke-direct {p0}, Landroidx/customview/a/c$a;-><init>()V

    return-void
.end method


# virtual methods
.method public clampViewPositionHorizontal(Landroid/view/View;II)I
    .locals 0

    .line 417
    iget-object p0, p0, Lcom/oplus/camera/ui/widget/LockViewDragLayout$b;->a:Lcom/oplus/camera/ui/widget/LockViewDragLayout;

    invoke-static {p0}, Lcom/oplus/camera/ui/widget/LockViewDragLayout;->a(Lcom/oplus/camera/ui/widget/LockViewDragLayout;)Landroid/widget/ImageView;

    move-result-object p0

    invoke-virtual {p0}, Landroid/widget/ImageView;->getLeft()I

    move-result p0

    return p0
.end method

.method public clampViewPositionVertical(Landroid/view/View;II)I
    .locals 0

    return p2
.end method

.method public getViewHorizontalDragRange(Landroid/view/View;)I
    .locals 0

    .line 450
    iget-object p0, p0, Lcom/oplus/camera/ui/widget/LockViewDragLayout$b;->a:Lcom/oplus/camera/ui/widget/LockViewDragLayout;

    invoke-virtual {p0}, Lcom/oplus/camera/ui/widget/LockViewDragLayout;->getMeasuredWidth()I

    move-result p0

    invoke-virtual {p1}, Landroid/view/View;->getMeasuredWidth()I

    move-result p1

    sub-int/2addr p0, p1

    return p0
.end method

.method public getViewVerticalDragRange(Landroid/view/View;)I
    .locals 0

    .line 455
    iget-object p0, p0, Lcom/oplus/camera/ui/widget/LockViewDragLayout$b;->a:Lcom/oplus/camera/ui/widget/LockViewDragLayout;

    invoke-virtual {p0}, Lcom/oplus/camera/ui/widget/LockViewDragLayout;->getMeasuredHeight()I

    move-result p0

    invoke-virtual {p1}, Landroid/view/View;->getMeasuredHeight()I

    move-result p1

    sub-int/2addr p0, p1

    return p0
.end method

.method public onViewPositionChanged(Landroid/view/View;IIII)V
    .locals 7

    .line 460
    invoke-super/range {p0 .. p5}, Landroidx/customview/a/c$a;->onViewPositionChanged(Landroid/view/View;IIII)V

    const/16 p2, -0x38

    if-le p2, p3, :cond_0

    .line 462
    iget-object p2, p0, Lcom/oplus/camera/ui/widget/LockViewDragLayout$b;->a:Lcom/oplus/camera/ui/widget/LockViewDragLayout;

    invoke-static {p2}, Lcom/oplus/camera/ui/widget/LockViewDragLayout;->e(Lcom/oplus/camera/ui/widget/LockViewDragLayout;)Landroid/graphics/Point;

    move-result-object p2

    iget p2, p2, Landroid/graphics/Point;->y:I

    iget-object p4, p0, Lcom/oplus/camera/ui/widget/LockViewDragLayout$b;->a:Lcom/oplus/camera/ui/widget/LockViewDragLayout;

    invoke-static {p4}, Lcom/oplus/camera/ui/widget/LockViewDragLayout;->f(Lcom/oplus/camera/ui/widget/LockViewDragLayout;)Landroid/graphics/Point;

    move-result-object p4

    iget p4, p4, Landroid/graphics/Point;->y:I

    if-eq p2, p4, :cond_1

    :cond_0
    const/16 p2, 0x122

    if-ge p2, p3, :cond_2

    iget-object p2, p0, Lcom/oplus/camera/ui/widget/LockViewDragLayout$b;->a:Lcom/oplus/camera/ui/widget/LockViewDragLayout;

    .line 463
    invoke-static {p2}, Lcom/oplus/camera/ui/widget/LockViewDragLayout;->f(Lcom/oplus/camera/ui/widget/LockViewDragLayout;)Landroid/graphics/Point;

    move-result-object p2

    iget p2, p2, Landroid/graphics/Point;->y:I

    iget-object p3, p0, Lcom/oplus/camera/ui/widget/LockViewDragLayout$b;->a:Lcom/oplus/camera/ui/widget/LockViewDragLayout;

    invoke-static {p3}, Lcom/oplus/camera/ui/widget/LockViewDragLayout;->d(Lcom/oplus/camera/ui/widget/LockViewDragLayout;)Landroid/graphics/Point;

    move-result-object p3

    iget p3, p3, Landroid/graphics/Point;->y:I

    if-lt p2, p3, :cond_2

    :cond_1
    return-void

    .line 467
    :cond_2
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result p1

    const p2, 0x7f09033a

    if-ne p1, p2, :cond_12

    .line 468
    iget-object p1, p0, Lcom/oplus/camera/ui/widget/LockViewDragLayout$b;->a:Lcom/oplus/camera/ui/widget/LockViewDragLayout;

    invoke-static {p1}, Lcom/oplus/camera/ui/widget/LockViewDragLayout;->e(Lcom/oplus/camera/ui/widget/LockViewDragLayout;)Landroid/graphics/Point;

    move-result-object p1

    iget p1, p1, Landroid/graphics/Point;->y:I

    int-to-float p1, p1

    .line 469
    iget-object p2, p0, Lcom/oplus/camera/ui/widget/LockViewDragLayout$b;->a:Lcom/oplus/camera/ui/widget/LockViewDragLayout;

    invoke-static {p2}, Lcom/oplus/camera/ui/widget/LockViewDragLayout;->g(Lcom/oplus/camera/ui/widget/LockViewDragLayout;)I

    move-result p2

    int-to-float p2, p2

    .line 470
    iget-object p3, p0, Lcom/oplus/camera/ui/widget/LockViewDragLayout$b;->a:Lcom/oplus/camera/ui/widget/LockViewDragLayout;

    invoke-static {p3}, Lcom/oplus/camera/ui/widget/LockViewDragLayout;->h(Lcom/oplus/camera/ui/widget/LockViewDragLayout;)Lcom/oplus/camera/ui/control/MainShutterButton;

    move-result-object p3

    const/4 p4, 0x0

    invoke-virtual {p3, p4}, Lcom/oplus/camera/ui/control/MainShutterButton;->setPressed(Z)V

    .line 472
    iget-object p3, p0, Lcom/oplus/camera/ui/widget/LockViewDragLayout$b;->a:Lcom/oplus/camera/ui/widget/LockViewDragLayout;

    invoke-static {p3}, Lcom/oplus/camera/ui/widget/LockViewDragLayout;->i(Lcom/oplus/camera/ui/widget/LockViewDragLayout;)Landroid/animation/ValueAnimator;

    move-result-object p3

    invoke-virtual {p3}, Landroid/animation/ValueAnimator;->isRunning()Z

    move-result p3

    const/high16 v0, 0x3f800000    # 1.0f

    if-eqz p3, :cond_3

    .line 473
    iget-object p3, p0, Lcom/oplus/camera/ui/widget/LockViewDragLayout$b;->a:Lcom/oplus/camera/ui/widget/LockViewDragLayout;

    invoke-static {p3}, Lcom/oplus/camera/ui/widget/LockViewDragLayout;->i(Lcom/oplus/camera/ui/widget/LockViewDragLayout;)Landroid/animation/ValueAnimator;

    move-result-object p3

    invoke-virtual {p3}, Landroid/animation/ValueAnimator;->cancel()V

    .line 474
    iget-object p3, p0, Lcom/oplus/camera/ui/widget/LockViewDragLayout$b;->a:Lcom/oplus/camera/ui/widget/LockViewDragLayout;

    invoke-static {p3, v0}, Lcom/oplus/camera/ui/widget/LockViewDragLayout;->a(Lcom/oplus/camera/ui/widget/LockViewDragLayout;F)F

    .line 477
    :cond_3
    iget-object p3, p0, Lcom/oplus/camera/ui/widget/LockViewDragLayout$b;->a:Lcom/oplus/camera/ui/widget/LockViewDragLayout;

    invoke-static {p3}, Lcom/oplus/camera/ui/widget/LockViewDragLayout;->d(Lcom/oplus/camera/ui/widget/LockViewDragLayout;)Landroid/graphics/Point;

    move-result-object p3

    iget p3, p3, Landroid/graphics/Point;->y:I

    iget-object v1, p0, Lcom/oplus/camera/ui/widget/LockViewDragLayout$b;->a:Lcom/oplus/camera/ui/widget/LockViewDragLayout;

    invoke-static {v1}, Lcom/oplus/camera/ui/widget/LockViewDragLayout;->j(Lcom/oplus/camera/ui/widget/LockViewDragLayout;)I

    move-result v1

    const/4 v2, 0x1

    shr-int/2addr v1, v2

    sub-int/2addr p3, v1

    iget-object v1, p0, Lcom/oplus/camera/ui/widget/LockViewDragLayout$b;->a:Lcom/oplus/camera/ui/widget/LockViewDragLayout;

    invoke-static {v1}, Lcom/oplus/camera/ui/widget/LockViewDragLayout;->f(Lcom/oplus/camera/ui/widget/LockViewDragLayout;)Landroid/graphics/Point;

    move-result-object v1

    iget v1, v1, Landroid/graphics/Point;->y:I

    const/4 v3, 0x0

    const/4 v4, 0x2

    if-ge p3, v1, :cond_4

    .line 478
    iget-object p3, p0, Lcom/oplus/camera/ui/widget/LockViewDragLayout$b;->a:Lcom/oplus/camera/ui/widget/LockViewDragLayout;

    invoke-static {p3}, Lcom/oplus/camera/ui/widget/LockViewDragLayout;->l(Lcom/oplus/camera/ui/widget/LockViewDragLayout;)Landroid/graphics/Paint;

    move-result-object p3

    iget-object v1, p0, Lcom/oplus/camera/ui/widget/LockViewDragLayout$b;->a:Lcom/oplus/camera/ui/widget/LockViewDragLayout;

    invoke-static {v1}, Lcom/oplus/camera/ui/widget/LockViewDragLayout;->k(Lcom/oplus/camera/ui/widget/LockViewDragLayout;)I

    move-result v1

    invoke-virtual {p3, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 480
    iget-object p3, p0, Lcom/oplus/camera/ui/widget/LockViewDragLayout$b;->a:Lcom/oplus/camera/ui/widget/LockViewDragLayout;

    invoke-static {p3}, Lcom/oplus/camera/ui/widget/LockViewDragLayout;->m(Lcom/oplus/camera/ui/widget/LockViewDragLayout;)Z

    move-result p3

    if-eqz p3, :cond_6

    .line 481
    iget-object p3, p0, Lcom/oplus/camera/ui/widget/LockViewDragLayout$b;->a:Lcom/oplus/camera/ui/widget/LockViewDragLayout;

    invoke-static {p3, p4}, Lcom/oplus/camera/ui/widget/LockViewDragLayout;->c(Lcom/oplus/camera/ui/widget/LockViewDragLayout;Z)Z

    goto/16 :goto_0

    .line 484
    :cond_4
    iget-object p3, p0, Lcom/oplus/camera/ui/widget/LockViewDragLayout$b;->a:Lcom/oplus/camera/ui/widget/LockViewDragLayout;

    invoke-static {p3}, Lcom/oplus/camera/ui/widget/LockViewDragLayout;->n(Lcom/oplus/camera/ui/widget/LockViewDragLayout;)Landroid/animation/ValueAnimator;

    move-result-object p3

    invoke-virtual {p3}, Landroid/animation/ValueAnimator;->isRunning()Z

    move-result p3

    if-nez p3, :cond_5

    iget-object p3, p0, Lcom/oplus/camera/ui/widget/LockViewDragLayout$b;->a:Lcom/oplus/camera/ui/widget/LockViewDragLayout;

    invoke-static {p3}, Lcom/oplus/camera/ui/widget/LockViewDragLayout;->f(Lcom/oplus/camera/ui/widget/LockViewDragLayout;)Landroid/graphics/Point;

    move-result-object p3

    iget p3, p3, Landroid/graphics/Point;->y:I

    int-to-float p3, p3

    sub-float/2addr p3, p1

    invoke-static {p3}, Ljava/lang/Math;->abs(F)F

    move-result p3

    cmpl-float p3, p3, v3

    if-lez p3, :cond_5

    iget-object p3, p0, Lcom/oplus/camera/ui/widget/LockViewDragLayout$b;->a:Lcom/oplus/camera/ui/widget/LockViewDragLayout;

    invoke-static {p3}, Lcom/oplus/camera/ui/widget/LockViewDragLayout;->m(Lcom/oplus/camera/ui/widget/LockViewDragLayout;)Z

    move-result p3

    if-nez p3, :cond_5

    .line 485
    iget-object p3, p0, Lcom/oplus/camera/ui/widget/LockViewDragLayout$b;->a:Lcom/oplus/camera/ui/widget/LockViewDragLayout;

    new-array v1, v4, [I

    invoke-static {p3}, Lcom/oplus/camera/ui/widget/LockViewDragLayout;->k(Lcom/oplus/camera/ui/widget/LockViewDragLayout;)I

    move-result v5

    aput v5, v1, p4

    iget-object v5, p0, Lcom/oplus/camera/ui/widget/LockViewDragLayout$b;->a:Lcom/oplus/camera/ui/widget/LockViewDragLayout;

    invoke-static {v5}, Lcom/oplus/camera/ui/widget/LockViewDragLayout;->o(Lcom/oplus/camera/ui/widget/LockViewDragLayout;)I

    move-result v5

    aput v5, v1, v2

    invoke-static {v1}, Landroid/animation/ValueAnimator;->ofArgb([I)Landroid/animation/ValueAnimator;

    move-result-object v1

    invoke-static {p3, v1}, Lcom/oplus/camera/ui/widget/LockViewDragLayout;->a(Lcom/oplus/camera/ui/widget/LockViewDragLayout;Landroid/animation/ValueAnimator;)Landroid/animation/ValueAnimator;

    .line 486
    iget-object p3, p0, Lcom/oplus/camera/ui/widget/LockViewDragLayout$b;->a:Lcom/oplus/camera/ui/widget/LockViewDragLayout;

    invoke-static {p3}, Lcom/oplus/camera/ui/widget/LockViewDragLayout;->q(Lcom/oplus/camera/ui/widget/LockViewDragLayout;)Landroid/animation/ValueAnimator;

    move-result-object p3

    iget-object v1, p0, Lcom/oplus/camera/ui/widget/LockViewDragLayout$b;->a:Lcom/oplus/camera/ui/widget/LockViewDragLayout;

    invoke-static {v1}, Lcom/oplus/camera/ui/widget/LockViewDragLayout;->p(Lcom/oplus/camera/ui/widget/LockViewDragLayout;)Landroid/view/animation/Interpolator;

    move-result-object v1

    invoke-virtual {p3, v1}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 487
    iget-object p3, p0, Lcom/oplus/camera/ui/widget/LockViewDragLayout$b;->a:Lcom/oplus/camera/ui/widget/LockViewDragLayout;

    invoke-static {p3}, Lcom/oplus/camera/ui/widget/LockViewDragLayout;->q(Lcom/oplus/camera/ui/widget/LockViewDragLayout;)Landroid/animation/ValueAnimator;

    move-result-object p3

    const-wide/16 v5, 0x96

    invoke-virtual {p3, v5, v6}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 488
    iget-object p3, p0, Lcom/oplus/camera/ui/widget/LockViewDragLayout$b;->a:Lcom/oplus/camera/ui/widget/LockViewDragLayout;

    invoke-static {p3}, Lcom/oplus/camera/ui/widget/LockViewDragLayout;->q(Lcom/oplus/camera/ui/widget/LockViewDragLayout;)Landroid/animation/ValueAnimator;

    move-result-object p3

    new-instance v1, Lcom/oplus/camera/ui/widget/LockViewDragLayout$b$1;

    invoke-direct {v1, p0}, Lcom/oplus/camera/ui/widget/LockViewDragLayout$b$1;-><init>(Lcom/oplus/camera/ui/widget/LockViewDragLayout$b;)V

    invoke-virtual {p3, v1}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 497
    iget-object p3, p0, Lcom/oplus/camera/ui/widget/LockViewDragLayout$b;->a:Lcom/oplus/camera/ui/widget/LockViewDragLayout;

    invoke-static {p3}, Lcom/oplus/camera/ui/widget/LockViewDragLayout;->q(Lcom/oplus/camera/ui/widget/LockViewDragLayout;)Landroid/animation/ValueAnimator;

    move-result-object p3

    invoke-virtual {p3}, Landroid/animation/ValueAnimator;->isRunning()Z

    move-result p3

    if-nez p3, :cond_5

    .line 498
    iget-object p3, p0, Lcom/oplus/camera/ui/widget/LockViewDragLayout$b;->a:Lcom/oplus/camera/ui/widget/LockViewDragLayout;

    invoke-static {p3}, Lcom/oplus/camera/ui/widget/LockViewDragLayout;->q(Lcom/oplus/camera/ui/widget/LockViewDragLayout;)Landroid/animation/ValueAnimator;

    move-result-object p3

    invoke-virtual {p3}, Landroid/animation/ValueAnimator;->start()V

    .line 502
    :cond_5
    iget-object p3, p0, Lcom/oplus/camera/ui/widget/LockViewDragLayout$b;->a:Lcom/oplus/camera/ui/widget/LockViewDragLayout;

    invoke-static {p3, v2}, Lcom/oplus/camera/ui/widget/LockViewDragLayout;->c(Lcom/oplus/camera/ui/widget/LockViewDragLayout;Z)Z

    .line 505
    :cond_6
    :goto_0
    iget-object p3, p0, Lcom/oplus/camera/ui/widget/LockViewDragLayout$b;->a:Lcom/oplus/camera/ui/widget/LockViewDragLayout;

    invoke-static {p3}, Lcom/oplus/camera/ui/widget/LockViewDragLayout;->f(Lcom/oplus/camera/ui/widget/LockViewDragLayout;)Landroid/graphics/Point;

    move-result-object p3

    iget p3, p3, Landroid/graphics/Point;->y:I

    int-to-float p3, p3

    cmpg-float p2, p2, p3

    if-gez p2, :cond_8

    .line 506
    iget-object p2, p0, Lcom/oplus/camera/ui/widget/LockViewDragLayout$b;->a:Lcom/oplus/camera/ui/widget/LockViewDragLayout;

    invoke-static {p2}, Lcom/oplus/camera/ui/widget/LockViewDragLayout;->f(Lcom/oplus/camera/ui/widget/LockViewDragLayout;)Landroid/graphics/Point;

    move-result-object p2

    iget-object p3, p0, Lcom/oplus/camera/ui/widget/LockViewDragLayout$b;->a:Lcom/oplus/camera/ui/widget/LockViewDragLayout;

    invoke-static {p3}, Lcom/oplus/camera/ui/widget/LockViewDragLayout;->f(Lcom/oplus/camera/ui/widget/LockViewDragLayout;)Landroid/graphics/Point;

    move-result-object p3

    iget p3, p3, Landroid/graphics/Point;->y:I

    add-int/2addr p3, p5

    iput p3, p2, Landroid/graphics/Point;->y:I

    .line 508
    iget-object p2, p0, Lcom/oplus/camera/ui/widget/LockViewDragLayout$b;->a:Lcom/oplus/camera/ui/widget/LockViewDragLayout;

    invoke-static {p2}, Lcom/oplus/camera/ui/widget/LockViewDragLayout;->f(Lcom/oplus/camera/ui/widget/LockViewDragLayout;)Landroid/graphics/Point;

    move-result-object p2

    iget p2, p2, Landroid/graphics/Point;->y:I

    int-to-float p2, p2

    cmpg-float p2, p2, p1

    if-gtz p2, :cond_7

    .line 509
    iget-object p2, p0, Lcom/oplus/camera/ui/widget/LockViewDragLayout$b;->a:Lcom/oplus/camera/ui/widget/LockViewDragLayout;

    invoke-static {p2}, Lcom/oplus/camera/ui/widget/LockViewDragLayout;->f(Lcom/oplus/camera/ui/widget/LockViewDragLayout;)Landroid/graphics/Point;

    move-result-object p2

    float-to-int p1, p1

    iput p1, p2, Landroid/graphics/Point;->y:I

    .line 512
    :cond_7
    iget-object p1, p0, Lcom/oplus/camera/ui/widget/LockViewDragLayout$b;->a:Lcom/oplus/camera/ui/widget/LockViewDragLayout;

    invoke-static {p1}, Lcom/oplus/camera/ui/widget/LockViewDragLayout;->r(Lcom/oplus/camera/ui/widget/LockViewDragLayout;)Z

    move-result p1

    if-eqz p1, :cond_b

    .line 513
    iget-object p1, p0, Lcom/oplus/camera/ui/widget/LockViewDragLayout$b;->a:Lcom/oplus/camera/ui/widget/LockViewDragLayout;

    invoke-static {p1, p4}, Lcom/oplus/camera/ui/widget/LockViewDragLayout;->d(Lcom/oplus/camera/ui/widget/LockViewDragLayout;Z)Z

    goto/16 :goto_2

    .line 516
    :cond_8
    iget-object p2, p0, Lcom/oplus/camera/ui/widget/LockViewDragLayout$b;->a:Lcom/oplus/camera/ui/widget/LockViewDragLayout;

    invoke-static {p2}, Lcom/oplus/camera/ui/widget/LockViewDragLayout;->n(Lcom/oplus/camera/ui/widget/LockViewDragLayout;)Landroid/animation/ValueAnimator;

    move-result-object p2

    invoke-virtual {p2}, Landroid/animation/ValueAnimator;->isRunning()Z

    move-result p2

    if-nez p2, :cond_9

    iget-object p2, p0, Lcom/oplus/camera/ui/widget/LockViewDragLayout$b;->a:Lcom/oplus/camera/ui/widget/LockViewDragLayout;

    invoke-static {p2}, Lcom/oplus/camera/ui/widget/LockViewDragLayout;->f(Lcom/oplus/camera/ui/widget/LockViewDragLayout;)Landroid/graphics/Point;

    move-result-object p2

    iget p2, p2, Landroid/graphics/Point;->y:I

    int-to-float p2, p2

    sub-float/2addr p2, p1

    invoke-static {p2}, Ljava/lang/Math;->abs(F)F

    move-result p2

    cmpl-float p2, p2, v3

    if-lez p2, :cond_9

    iget-object p2, p0, Lcom/oplus/camera/ui/widget/LockViewDragLayout$b;->a:Lcom/oplus/camera/ui/widget/LockViewDragLayout;

    invoke-static {p2}, Lcom/oplus/camera/ui/widget/LockViewDragLayout;->r(Lcom/oplus/camera/ui/widget/LockViewDragLayout;)Z

    move-result p2

    if-nez p2, :cond_9

    .line 517
    iget-object p2, p0, Lcom/oplus/camera/ui/widget/LockViewDragLayout$b;->a:Lcom/oplus/camera/ui/widget/LockViewDragLayout;

    invoke-static {p2}, Lcom/oplus/camera/ui/widget/LockViewDragLayout;->n(Lcom/oplus/camera/ui/widget/LockViewDragLayout;)Landroid/animation/ValueAnimator;

    move-result-object p2

    new-array p3, v4, [F

    iget-object v1, p0, Lcom/oplus/camera/ui/widget/LockViewDragLayout$b;->a:Lcom/oplus/camera/ui/widget/LockViewDragLayout;

    invoke-static {v1}, Lcom/oplus/camera/ui/widget/LockViewDragLayout;->f(Lcom/oplus/camera/ui/widget/LockViewDragLayout;)Landroid/graphics/Point;

    move-result-object v1

    iget v1, v1, Landroid/graphics/Point;->y:I

    int-to-float v1, v1

    aput v1, p3, p4

    aput p1, p3, v2

    invoke-virtual {p2, p3}, Landroid/animation/ValueAnimator;->setFloatValues([F)V

    .line 518
    iget-object p1, p0, Lcom/oplus/camera/ui/widget/LockViewDragLayout$b;->a:Lcom/oplus/camera/ui/widget/LockViewDragLayout;

    invoke-static {p1}, Lcom/oplus/camera/ui/widget/LockViewDragLayout;->n(Lcom/oplus/camera/ui/widget/LockViewDragLayout;)Landroid/animation/ValueAnimator;

    move-result-object p1

    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->start()V

    goto :goto_1

    .line 520
    :cond_9
    iget-object p2, p0, Lcom/oplus/camera/ui/widget/LockViewDragLayout$b;->a:Lcom/oplus/camera/ui/widget/LockViewDragLayout;

    invoke-static {p2}, Lcom/oplus/camera/ui/widget/LockViewDragLayout;->n(Lcom/oplus/camera/ui/widget/LockViewDragLayout;)Landroid/animation/ValueAnimator;

    move-result-object p2

    invoke-virtual {p2}, Landroid/animation/ValueAnimator;->isRunning()Z

    move-result p2

    if-nez p2, :cond_a

    .line 521
    iget-object p2, p0, Lcom/oplus/camera/ui/widget/LockViewDragLayout$b;->a:Lcom/oplus/camera/ui/widget/LockViewDragLayout;

    invoke-static {p2}, Lcom/oplus/camera/ui/widget/LockViewDragLayout;->f(Lcom/oplus/camera/ui/widget/LockViewDragLayout;)Landroid/graphics/Point;

    move-result-object p2

    iget-object p3, p0, Lcom/oplus/camera/ui/widget/LockViewDragLayout$b;->a:Lcom/oplus/camera/ui/widget/LockViewDragLayout;

    invoke-static {p3}, Lcom/oplus/camera/ui/widget/LockViewDragLayout;->f(Lcom/oplus/camera/ui/widget/LockViewDragLayout;)Landroid/graphics/Point;

    move-result-object p3

    iget p3, p3, Landroid/graphics/Point;->y:I

    add-int/2addr p3, p5

    iput p3, p2, Landroid/graphics/Point;->y:I

    .line 523
    iget-object p2, p0, Lcom/oplus/camera/ui/widget/LockViewDragLayout$b;->a:Lcom/oplus/camera/ui/widget/LockViewDragLayout;

    invoke-static {p2}, Lcom/oplus/camera/ui/widget/LockViewDragLayout;->f(Lcom/oplus/camera/ui/widget/LockViewDragLayout;)Landroid/graphics/Point;

    move-result-object p2

    iget p2, p2, Landroid/graphics/Point;->y:I

    int-to-float p2, p2

    cmpg-float p2, p2, p1

    if-gtz p2, :cond_a

    .line 524
    iget-object p2, p0, Lcom/oplus/camera/ui/widget/LockViewDragLayout$b;->a:Lcom/oplus/camera/ui/widget/LockViewDragLayout;

    invoke-static {p2}, Lcom/oplus/camera/ui/widget/LockViewDragLayout;->f(Lcom/oplus/camera/ui/widget/LockViewDragLayout;)Landroid/graphics/Point;

    move-result-object p2

    float-to-int p1, p1

    iput p1, p2, Landroid/graphics/Point;->y:I

    .line 528
    :cond_a
    :goto_1
    iget-object p1, p0, Lcom/oplus/camera/ui/widget/LockViewDragLayout$b;->a:Lcom/oplus/camera/ui/widget/LockViewDragLayout;

    invoke-static {p1, v2}, Lcom/oplus/camera/ui/widget/LockViewDragLayout;->d(Lcom/oplus/camera/ui/widget/LockViewDragLayout;Z)Z

    .line 531
    :cond_b
    :goto_2
    iget-object p1, p0, Lcom/oplus/camera/ui/widget/LockViewDragLayout$b;->a:Lcom/oplus/camera/ui/widget/LockViewDragLayout;

    invoke-static {p1}, Lcom/oplus/camera/ui/widget/LockViewDragLayout;->f(Lcom/oplus/camera/ui/widget/LockViewDragLayout;)Landroid/graphics/Point;

    move-result-object p1

    iget p1, p1, Landroid/graphics/Point;->y:I

    iget-object p2, p0, Lcom/oplus/camera/ui/widget/LockViewDragLayout$b;->a:Lcom/oplus/camera/ui/widget/LockViewDragLayout;

    invoke-static {p2}, Lcom/oplus/camera/ui/widget/LockViewDragLayout;->g(Lcom/oplus/camera/ui/widget/LockViewDragLayout;)I

    move-result p2

    if-gt p1, p2, :cond_c

    invoke-static {}, Lcom/oplus/camera/ui/widget/LockViewDragLayout;->f()Z

    move-result p1

    if-nez p1, :cond_c

    .line 532
    invoke-static {v2}, Lcom/oplus/camera/ui/widget/LockViewDragLayout;->a(Z)Z

    .line 535
    :cond_c
    iget-object p1, p0, Lcom/oplus/camera/ui/widget/LockViewDragLayout$b;->a:Lcom/oplus/camera/ui/widget/LockViewDragLayout;

    invoke-static {p1}, Lcom/oplus/camera/ui/widget/LockViewDragLayout;->f(Lcom/oplus/camera/ui/widget/LockViewDragLayout;)Landroid/graphics/Point;

    move-result-object p1

    iget p1, p1, Landroid/graphics/Point;->y:I

    iget-object p2, p0, Lcom/oplus/camera/ui/widget/LockViewDragLayout$b;->a:Lcom/oplus/camera/ui/widget/LockViewDragLayout;

    invoke-static {p2}, Lcom/oplus/camera/ui/widget/LockViewDragLayout;->g(Lcom/oplus/camera/ui/widget/LockViewDragLayout;)I

    move-result p2

    if-le p1, p2, :cond_d

    invoke-static {}, Lcom/oplus/camera/ui/widget/LockViewDragLayout;->f()Z

    move-result p1

    if-eqz p1, :cond_d

    .line 536
    invoke-static {p4}, Lcom/oplus/camera/ui/widget/LockViewDragLayout;->a(Z)Z

    .line 539
    :cond_d
    iget-object p1, p0, Lcom/oplus/camera/ui/widget/LockViewDragLayout$b;->a:Lcom/oplus/camera/ui/widget/LockViewDragLayout;

    invoke-static {p1}, Lcom/oplus/camera/ui/widget/LockViewDragLayout;->s(Lcom/oplus/camera/ui/widget/LockViewDragLayout;)F

    move-result p1

    iget-object p2, p0, Lcom/oplus/camera/ui/widget/LockViewDragLayout$b;->a:Lcom/oplus/camera/ui/widget/LockViewDragLayout;

    invoke-static {p2}, Lcom/oplus/camera/ui/widget/LockViewDragLayout;->j(Lcom/oplus/camera/ui/widget/LockViewDragLayout;)I

    move-result p2

    shr-int/2addr p2, v2

    int-to-float p2, p2

    div-float/2addr p1, p2

    const p2, 0x3dcccccd    # 0.1f

    mul-float/2addr p1, p2

    add-float/2addr p1, v0

    .line 541
    iget-object p2, p0, Lcom/oplus/camera/ui/widget/LockViewDragLayout$b;->a:Lcom/oplus/camera/ui/widget/LockViewDragLayout;

    invoke-static {p2}, Lcom/oplus/camera/ui/widget/LockViewDragLayout;->s(Lcom/oplus/camera/ui/widget/LockViewDragLayout;)F

    move-result p2

    iget-object p3, p0, Lcom/oplus/camera/ui/widget/LockViewDragLayout$b;->a:Lcom/oplus/camera/ui/widget/LockViewDragLayout;

    invoke-static {p3}, Lcom/oplus/camera/ui/widget/LockViewDragLayout;->j(Lcom/oplus/camera/ui/widget/LockViewDragLayout;)I

    move-result p3

    shr-int/2addr p3, v2

    int-to-float p3, p3

    cmpg-float p2, p2, p3

    if-gez p2, :cond_e

    if-gez p5, :cond_e

    .line 542
    iget-object p2, p0, Lcom/oplus/camera/ui/widget/LockViewDragLayout$b;->a:Lcom/oplus/camera/ui/widget/LockViewDragLayout;

    invoke-static {p2}, Lcom/oplus/camera/ui/widget/LockViewDragLayout;->h(Lcom/oplus/camera/ui/widget/LockViewDragLayout;)Lcom/oplus/camera/ui/control/MainShutterButton;

    move-result-object p2

    invoke-virtual {p2, p1}, Lcom/oplus/camera/ui/control/MainShutterButton;->setScaleX(F)V

    .line 543
    iget-object p2, p0, Lcom/oplus/camera/ui/widget/LockViewDragLayout$b;->a:Lcom/oplus/camera/ui/widget/LockViewDragLayout;

    invoke-static {p2}, Lcom/oplus/camera/ui/widget/LockViewDragLayout;->h(Lcom/oplus/camera/ui/widget/LockViewDragLayout;)Lcom/oplus/camera/ui/control/MainShutterButton;

    move-result-object p2

    invoke-virtual {p2, p1}, Lcom/oplus/camera/ui/control/MainShutterButton;->setScaleY(F)V

    .line 544
    iget-object p1, p0, Lcom/oplus/camera/ui/widget/LockViewDragLayout$b;->a:Lcom/oplus/camera/ui/widget/LockViewDragLayout;

    invoke-static {p1, v2}, Lcom/oplus/camera/ui/widget/LockViewDragLayout;->e(Lcom/oplus/camera/ui/widget/LockViewDragLayout;Z)Z

    goto :goto_3

    :cond_e
    if-eqz p5, :cond_f

    .line 545
    iget-object p2, p0, Lcom/oplus/camera/ui/widget/LockViewDragLayout$b;->a:Lcom/oplus/camera/ui/widget/LockViewDragLayout;

    invoke-static {p2}, Lcom/oplus/camera/ui/widget/LockViewDragLayout;->t(Lcom/oplus/camera/ui/widget/LockViewDragLayout;)Z

    move-result p2

    if-eqz p2, :cond_f

    .line 546
    iget-object p2, p0, Lcom/oplus/camera/ui/widget/LockViewDragLayout$b;->a:Lcom/oplus/camera/ui/widget/LockViewDragLayout;

    new-array p3, v4, [F

    aput p1, p3, p4

    aput v0, p3, v2

    invoke-static {p3}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object p1

    invoke-static {p2, p1}, Lcom/oplus/camera/ui/widget/LockViewDragLayout;->b(Lcom/oplus/camera/ui/widget/LockViewDragLayout;Landroid/animation/ValueAnimator;)Landroid/animation/ValueAnimator;

    .line 547
    iget-object p1, p0, Lcom/oplus/camera/ui/widget/LockViewDragLayout$b;->a:Lcom/oplus/camera/ui/widget/LockViewDragLayout;

    invoke-static {p1}, Lcom/oplus/camera/ui/widget/LockViewDragLayout;->v(Lcom/oplus/camera/ui/widget/LockViewDragLayout;)Landroid/animation/ValueAnimator;

    move-result-object p1

    iget-object p2, p0, Lcom/oplus/camera/ui/widget/LockViewDragLayout$b;->a:Lcom/oplus/camera/ui/widget/LockViewDragLayout;

    invoke-static {p2}, Lcom/oplus/camera/ui/widget/LockViewDragLayout;->u(Lcom/oplus/camera/ui/widget/LockViewDragLayout;)Landroid/view/animation/Interpolator;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 548
    iget-object p1, p0, Lcom/oplus/camera/ui/widget/LockViewDragLayout$b;->a:Lcom/oplus/camera/ui/widget/LockViewDragLayout;

    invoke-static {p1}, Lcom/oplus/camera/ui/widget/LockViewDragLayout;->v(Lcom/oplus/camera/ui/widget/LockViewDragLayout;)Landroid/animation/ValueAnimator;

    move-result-object p1

    const-wide/16 p2, 0x10b

    invoke-virtual {p1, p2, p3}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 549
    iget-object p1, p0, Lcom/oplus/camera/ui/widget/LockViewDragLayout$b;->a:Lcom/oplus/camera/ui/widget/LockViewDragLayout;

    invoke-static {p1}, Lcom/oplus/camera/ui/widget/LockViewDragLayout;->v(Lcom/oplus/camera/ui/widget/LockViewDragLayout;)Landroid/animation/ValueAnimator;

    move-result-object p1

    new-instance p2, Lcom/oplus/camera/ui/widget/LockViewDragLayout$b$2;

    invoke-direct {p2, p0}, Lcom/oplus/camera/ui/widget/LockViewDragLayout$b$2;-><init>(Lcom/oplus/camera/ui/widget/LockViewDragLayout$b;)V

    invoke-virtual {p1, p2}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 558
    iget-object p1, p0, Lcom/oplus/camera/ui/widget/LockViewDragLayout$b;->a:Lcom/oplus/camera/ui/widget/LockViewDragLayout;

    invoke-static {p1}, Lcom/oplus/camera/ui/widget/LockViewDragLayout;->v(Lcom/oplus/camera/ui/widget/LockViewDragLayout;)Landroid/animation/ValueAnimator;

    move-result-object p1

    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->isRunning()Z

    move-result p1

    if-nez p1, :cond_f

    iget-object p1, p0, Lcom/oplus/camera/ui/widget/LockViewDragLayout$b;->a:Lcom/oplus/camera/ui/widget/LockViewDragLayout;

    invoke-static {p1}, Lcom/oplus/camera/ui/widget/LockViewDragLayout;->w(Lcom/oplus/camera/ui/widget/LockViewDragLayout;)Z

    move-result p1

    if-eqz p1, :cond_f

    .line 559
    iget-object p1, p0, Lcom/oplus/camera/ui/widget/LockViewDragLayout$b;->a:Lcom/oplus/camera/ui/widget/LockViewDragLayout;

    invoke-static {p1, p4}, Lcom/oplus/camera/ui/widget/LockViewDragLayout;->e(Lcom/oplus/camera/ui/widget/LockViewDragLayout;Z)Z

    .line 560
    iget-object p1, p0, Lcom/oplus/camera/ui/widget/LockViewDragLayout$b;->a:Lcom/oplus/camera/ui/widget/LockViewDragLayout;

    invoke-static {p1}, Lcom/oplus/camera/ui/widget/LockViewDragLayout;->v(Lcom/oplus/camera/ui/widget/LockViewDragLayout;)Landroid/animation/ValueAnimator;

    move-result-object p1

    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->start()V

    .line 564
    :cond_f
    :goto_3
    iget-object p1, p0, Lcom/oplus/camera/ui/widget/LockViewDragLayout$b;->a:Lcom/oplus/camera/ui/widget/LockViewDragLayout;

    invoke-static {p1}, Lcom/oplus/camera/ui/widget/LockViewDragLayout;->s(Lcom/oplus/camera/ui/widget/LockViewDragLayout;)F

    move-result p1

    mul-float/2addr p1, v0

    iget-object p2, p0, Lcom/oplus/camera/ui/widget/LockViewDragLayout$b;->a:Lcom/oplus/camera/ui/widget/LockViewDragLayout;

    invoke-static {p2}, Lcom/oplus/camera/ui/widget/LockViewDragLayout;->j(Lcom/oplus/camera/ui/widget/LockViewDragLayout;)I

    move-result p2

    int-to-float p2, p2

    div-float/2addr p1, p2

    .line 565
    iget-object p2, p0, Lcom/oplus/camera/ui/widget/LockViewDragLayout$b;->a:Lcom/oplus/camera/ui/widget/LockViewDragLayout;

    invoke-static {p2}, Lcom/oplus/camera/ui/widget/LockViewDragLayout;->x(Lcom/oplus/camera/ui/widget/LockViewDragLayout;)Lcom/oplus/camera/ui/widget/LockImageView;

    move-result-object p2

    invoke-virtual {p2, p1}, Lcom/oplus/camera/ui/widget/LockImageView;->setChangIcon(F)V

    .line 567
    iget-object p1, p0, Lcom/oplus/camera/ui/widget/LockViewDragLayout$b;->a:Lcom/oplus/camera/ui/widget/LockViewDragLayout;

    invoke-static {p1}, Lcom/oplus/camera/ui/widget/LockViewDragLayout;->f(Lcom/oplus/camera/ui/widget/LockViewDragLayout;)Landroid/graphics/Point;

    move-result-object p1

    iget p1, p1, Landroid/graphics/Point;->y:I

    iget-object p2, p0, Lcom/oplus/camera/ui/widget/LockViewDragLayout$b;->a:Lcom/oplus/camera/ui/widget/LockViewDragLayout;

    invoke-static {p2}, Lcom/oplus/camera/ui/widget/LockViewDragLayout;->d(Lcom/oplus/camera/ui/widget/LockViewDragLayout;)Landroid/graphics/Point;

    move-result-object p2

    iget p2, p2, Landroid/graphics/Point;->y:I

    if-le p1, p2, :cond_10

    .line 568
    iget-object p1, p0, Lcom/oplus/camera/ui/widget/LockViewDragLayout$b;->a:Lcom/oplus/camera/ui/widget/LockViewDragLayout;

    invoke-static {p1}, Lcom/oplus/camera/ui/widget/LockViewDragLayout;->f(Lcom/oplus/camera/ui/widget/LockViewDragLayout;)Landroid/graphics/Point;

    move-result-object p1

    iget-object p2, p0, Lcom/oplus/camera/ui/widget/LockViewDragLayout$b;->a:Lcom/oplus/camera/ui/widget/LockViewDragLayout;

    invoke-static {p2}, Lcom/oplus/camera/ui/widget/LockViewDragLayout;->d(Lcom/oplus/camera/ui/widget/LockViewDragLayout;)Landroid/graphics/Point;

    move-result-object p2

    iget p2, p2, Landroid/graphics/Point;->y:I

    iput p2, p1, Landroid/graphics/Point;->y:I

    .line 571
    :cond_10
    iget-object p1, p0, Lcom/oplus/camera/ui/widget/LockViewDragLayout$b;->a:Lcom/oplus/camera/ui/widget/LockViewDragLayout;

    invoke-static {p1}, Lcom/oplus/camera/ui/widget/LockViewDragLayout;->f(Lcom/oplus/camera/ui/widget/LockViewDragLayout;)Landroid/graphics/Point;

    move-result-object p1

    iget p1, p1, Landroid/graphics/Point;->y:I

    iget-object p2, p0, Lcom/oplus/camera/ui/widget/LockViewDragLayout$b;->a:Lcom/oplus/camera/ui/widget/LockViewDragLayout;

    invoke-static {p2}, Lcom/oplus/camera/ui/widget/LockViewDragLayout;->x(Lcom/oplus/camera/ui/widget/LockViewDragLayout;)Lcom/oplus/camera/ui/widget/LockImageView;

    move-result-object p2

    invoke-virtual {p2}, Lcom/oplus/camera/ui/widget/LockImageView;->getTop()I

    move-result p2

    iget-object p3, p0, Lcom/oplus/camera/ui/widget/LockViewDragLayout$b;->a:Lcom/oplus/camera/ui/widget/LockViewDragLayout;

    invoke-static {p3}, Lcom/oplus/camera/ui/widget/LockViewDragLayout;->x(Lcom/oplus/camera/ui/widget/LockViewDragLayout;)Lcom/oplus/camera/ui/widget/LockImageView;

    move-result-object p3

    invoke-virtual {p3}, Lcom/oplus/camera/ui/widget/LockImageView;->getHeight()I

    move-result p3

    div-int/2addr p3, v4

    sub-int/2addr p2, p3

    if-ge p1, p2, :cond_11

    .line 572
    iget-object p1, p0, Lcom/oplus/camera/ui/widget/LockViewDragLayout$b;->a:Lcom/oplus/camera/ui/widget/LockViewDragLayout;

    invoke-static {p1}, Lcom/oplus/camera/ui/widget/LockViewDragLayout;->f(Lcom/oplus/camera/ui/widget/LockViewDragLayout;)Landroid/graphics/Point;

    move-result-object p1

    iget-object p2, p0, Lcom/oplus/camera/ui/widget/LockViewDragLayout$b;->a:Lcom/oplus/camera/ui/widget/LockViewDragLayout;

    invoke-static {p2}, Lcom/oplus/camera/ui/widget/LockViewDragLayout;->x(Lcom/oplus/camera/ui/widget/LockViewDragLayout;)Lcom/oplus/camera/ui/widget/LockImageView;

    move-result-object p2

    invoke-virtual {p2}, Lcom/oplus/camera/ui/widget/LockImageView;->getTop()I

    move-result p2

    iget-object p3, p0, Lcom/oplus/camera/ui/widget/LockViewDragLayout$b;->a:Lcom/oplus/camera/ui/widget/LockViewDragLayout;

    invoke-static {p3}, Lcom/oplus/camera/ui/widget/LockViewDragLayout;->x(Lcom/oplus/camera/ui/widget/LockViewDragLayout;)Lcom/oplus/camera/ui/widget/LockImageView;

    move-result-object p3

    invoke-virtual {p3}, Lcom/oplus/camera/ui/widget/LockImageView;->getHeight()I

    move-result p3

    div-int/2addr p3, v4

    sub-int/2addr p2, p3

    iput p2, p1, Landroid/graphics/Point;->y:I

    .line 575
    :cond_11
    iget-object p0, p0, Lcom/oplus/camera/ui/widget/LockViewDragLayout$b;->a:Lcom/oplus/camera/ui/widget/LockViewDragLayout;

    invoke-virtual {p0}, Lcom/oplus/camera/ui/widget/LockViewDragLayout;->invalidate()V

    :cond_12
    return-void
.end method

.method public onViewReleased(Landroid/view/View;FF)V
    .locals 0

    .line 427
    invoke-super {p0, p1, p2, p3}, Landroidx/customview/a/c$a;->onViewReleased(Landroid/view/View;FF)V

    .line 428
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "onViewReleased, mbReachBorder"

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Lcom/oplus/camera/ui/widget/LockViewDragLayout;->f()Z

    move-result p3

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    const-string p3, "LockViewDragLayout"

    invoke-static {p3, p2}, Lcom/oplus/camera/e;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 430
    iget-object p2, p0, Lcom/oplus/camera/ui/widget/LockViewDragLayout$b;->a:Lcom/oplus/camera/ui/widget/LockViewDragLayout;

    const/4 p3, 0x0

    invoke-static {p2, p3}, Lcom/oplus/camera/ui/widget/LockViewDragLayout;->a(Lcom/oplus/camera/ui/widget/LockViewDragLayout;Z)Z

    .line 431
    iget-object p2, p0, Lcom/oplus/camera/ui/widget/LockViewDragLayout$b;->a:Lcom/oplus/camera/ui/widget/LockViewDragLayout;

    invoke-static {p2, p3}, Lcom/oplus/camera/ui/widget/LockViewDragLayout;->b(Lcom/oplus/camera/ui/widget/LockViewDragLayout;Z)Z

    .line 433
    iget-object p2, p0, Lcom/oplus/camera/ui/widget/LockViewDragLayout$b;->a:Lcom/oplus/camera/ui/widget/LockViewDragLayout;

    invoke-static {p2}, Lcom/oplus/camera/ui/widget/LockViewDragLayout;->b(Lcom/oplus/camera/ui/widget/LockViewDragLayout;)Lcom/oplus/camera/ui/widget/LockViewDragLayout$a;

    move-result-object p2

    if-eqz p2, :cond_0

    .line 434
    iget-object p2, p0, Lcom/oplus/camera/ui/widget/LockViewDragLayout$b;->a:Lcom/oplus/camera/ui/widget/LockViewDragLayout;

    invoke-static {p2}, Lcom/oplus/camera/ui/widget/LockViewDragLayout;->b(Lcom/oplus/camera/ui/widget/LockViewDragLayout;)Lcom/oplus/camera/ui/widget/LockViewDragLayout$a;

    move-result-object p2

    invoke-static {}, Lcom/oplus/camera/ui/widget/LockViewDragLayout;->f()Z

    move-result p3

    invoke-interface {p2, p3}, Lcom/oplus/camera/ui/widget/LockViewDragLayout$a;->a(Z)V

    .line 437
    :cond_0
    iget-object p2, p0, Lcom/oplus/camera/ui/widget/LockViewDragLayout$b;->a:Lcom/oplus/camera/ui/widget/LockViewDragLayout;

    invoke-static {p2}, Lcom/oplus/camera/ui/widget/LockViewDragLayout;->a(Lcom/oplus/camera/ui/widget/LockViewDragLayout;)Landroid/widget/ImageView;

    move-result-object p2

    if-ne p1, p2, :cond_1

    .line 438
    invoke-static {}, Lcom/oplus/camera/ui/widget/LockViewDragLayout;->f()Z

    move-result p1

    if-nez p1, :cond_1

    iget-object p1, p0, Lcom/oplus/camera/ui/widget/LockViewDragLayout$b;->a:Lcom/oplus/camera/ui/widget/LockViewDragLayout;

    .line 439
    invoke-static {p1}, Lcom/oplus/camera/ui/widget/LockViewDragLayout;->c(Lcom/oplus/camera/ui/widget/LockViewDragLayout;)Landroidx/customview/a/c;

    move-result-object p1

    if-eqz p1, :cond_1

    iget-object p1, p0, Lcom/oplus/camera/ui/widget/LockViewDragLayout$b;->a:Lcom/oplus/camera/ui/widget/LockViewDragLayout;

    .line 440
    invoke-static {p1}, Lcom/oplus/camera/ui/widget/LockViewDragLayout;->c(Lcom/oplus/camera/ui/widget/LockViewDragLayout;)Landroidx/customview/a/c;

    move-result-object p1

    invoke-virtual {p1}, Landroidx/customview/a/c;->a()I

    move-result p1

    if-eqz p1, :cond_1

    .line 441
    iget-object p1, p0, Lcom/oplus/camera/ui/widget/LockViewDragLayout$b;->a:Lcom/oplus/camera/ui/widget/LockViewDragLayout;

    invoke-static {p1}, Lcom/oplus/camera/ui/widget/LockViewDragLayout;->c(Lcom/oplus/camera/ui/widget/LockViewDragLayout;)Landroidx/customview/a/c;

    move-result-object p1

    iget-object p2, p0, Lcom/oplus/camera/ui/widget/LockViewDragLayout$b;->a:Lcom/oplus/camera/ui/widget/LockViewDragLayout;

    invoke-static {p2}, Lcom/oplus/camera/ui/widget/LockViewDragLayout;->d(Lcom/oplus/camera/ui/widget/LockViewDragLayout;)Landroid/graphics/Point;

    move-result-object p2

    iget p2, p2, Landroid/graphics/Point;->x:I

    iget-object p3, p0, Lcom/oplus/camera/ui/widget/LockViewDragLayout$b;->a:Lcom/oplus/camera/ui/widget/LockViewDragLayout;

    invoke-static {p3}, Lcom/oplus/camera/ui/widget/LockViewDragLayout;->d(Lcom/oplus/camera/ui/widget/LockViewDragLayout;)Landroid/graphics/Point;

    move-result-object p3

    iget p3, p3, Landroid/graphics/Point;->y:I

    invoke-virtual {p1, p2, p3}, Landroidx/customview/a/c;->a(II)Z

    .line 442
    iget-object p1, p0, Lcom/oplus/camera/ui/widget/LockViewDragLayout$b;->a:Lcom/oplus/camera/ui/widget/LockViewDragLayout;

    invoke-virtual {p1}, Lcom/oplus/camera/ui/widget/LockViewDragLayout;->invalidate()V

    .line 445
    :cond_1
    iget-object p0, p0, Lcom/oplus/camera/ui/widget/LockViewDragLayout$b;->a:Lcom/oplus/camera/ui/widget/LockViewDragLayout;

    invoke-virtual {p0}, Lcom/oplus/camera/ui/widget/LockViewDragLayout;->d()V

    return-void
.end method

.method public tryCaptureView(Landroid/view/View;I)Z
    .locals 0

    .line 412
    iget-object p0, p0, Lcom/oplus/camera/ui/widget/LockViewDragLayout$b;->a:Lcom/oplus/camera/ui/widget/LockViewDragLayout;

    invoke-static {p0}, Lcom/oplus/camera/ui/widget/LockViewDragLayout;->a(Lcom/oplus/camera/ui/widget/LockViewDragLayout;)Landroid/widget/ImageView;

    move-result-object p0

    if-ne p1, p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method
