.class public Lcom/oplus/camera/ui/preview/ai$c;
.super Ljava/lang/Object;
.source "ZoomSeekBar.java"

# interfaces
.implements Landroid/view/GestureDetector$OnGestureListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/oplus/camera/ui/preview/ai;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4
    name = "c"
.end annotation


# instance fields
.field final synthetic a:Lcom/oplus/camera/ui/preview/ai;


# direct methods
.method protected constructor <init>(Lcom/oplus/camera/ui/preview/ai;)V
    .locals 0

    .line 3293
    iput-object p1, p0, Lcom/oplus/camera/ui/preview/ai$c;->a:Lcom/oplus/camera/ui/preview/ai;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onDown(Landroid/view/MotionEvent;)Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public onFling(Landroid/view/MotionEvent;Landroid/view/MotionEvent;FF)Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public onLongPress(Landroid/view/MotionEvent;)V
    .locals 1

    .line 3424
    iget-object p1, p0, Lcom/oplus/camera/ui/preview/ai$c;->a:Lcom/oplus/camera/ui/preview/ai;

    invoke-static {p1}, Lcom/oplus/camera/ui/preview/ai;->q(Lcom/oplus/camera/ui/preview/ai;)I

    move-result p1

    if-nez p1, :cond_0

    iget-object p1, p0, Lcom/oplus/camera/ui/preview/ai$c;->a:Lcom/oplus/camera/ui/preview/ai;

    iget-boolean p1, p1, Lcom/oplus/camera/ui/preview/ai;->bg:Z

    if-eqz p1, :cond_0

    const-string p1, "ZoomSeekBar"

    const-string v0, "MyGestureListener, onLongPress to performExpand"

    .line 3425
    invoke-static {p1, v0}, Lcom/oplus/camera/e;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 3427
    iget-object p1, p0, Lcom/oplus/camera/ui/preview/ai$c;->a:Lcom/oplus/camera/ui/preview/ai;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lcom/oplus/camera/ui/preview/ai;->c(Z)V

    .line 3428
    iget-object p0, p0, Lcom/oplus/camera/ui/preview/ai$c;->a:Lcom/oplus/camera/ui/preview/ai;

    const/4 p1, 0x1

    iput-boolean p1, p0, Lcom/oplus/camera/ui/preview/ai;->cT:Z

    :cond_0
    return-void
.end method

.method public onScroll(Landroid/view/MotionEvent;Landroid/view/MotionEvent;FF)Z
    .locals 5

    .line 3392
    iget-object p2, p0, Lcom/oplus/camera/ui/preview/ai$c;->a:Lcom/oplus/camera/ui/preview/ai;

    iget-object p2, p2, Lcom/oplus/camera/ui/preview/ai;->bO:Lcom/oplus/camera/ui/preview/ag;

    invoke-interface {p2}, Lcom/oplus/camera/ui/preview/ag;->b()Z

    move-result p2

    const/4 v0, 0x0

    if-eqz p2, :cond_4

    if-nez p1, :cond_0

    goto/16 :goto_0

    .line 3396
    :cond_0
    iget-object p2, p0, Lcom/oplus/camera/ui/preview/ai$c;->a:Lcom/oplus/camera/ui/preview/ai;

    invoke-static {p2}, Lcom/oplus/camera/ui/preview/ai;->o(Lcom/oplus/camera/ui/preview/ai;)I

    move-result p2

    const/4 v1, 0x0

    const/high16 v2, 0x41200000    # 10.0f

    const/4 v3, 0x1

    if-nez p2, :cond_3

    cmpl-float p1, p4, v2

    if-ltz p1, :cond_1

    .line 3398
    iget-object p1, p0, Lcom/oplus/camera/ui/preview/ai$c;->a:Lcom/oplus/camera/ui/preview/ai;

    invoke-virtual {p1, v0}, Lcom/oplus/camera/ui/preview/ai;->c(Z)V

    .line 3399
    iget-object p0, p0, Lcom/oplus/camera/ui/preview/ai$c;->a:Lcom/oplus/camera/ui/preview/ai;

    iput-boolean v3, p0, Lcom/oplus/camera/ui/preview/ai;->cT:Z

    goto/16 :goto_0

    :cond_1
    cmpg-float p1, p4, v2

    if-gez p1, :cond_2

    cmpl-float p1, p4, v1

    if-ltz p1, :cond_2

    .line 3401
    iget-object p1, p0, Lcom/oplus/camera/ui/preview/ai$c;->a:Lcom/oplus/camera/ui/preview/ai;

    invoke-virtual {p1, v3}, Lcom/oplus/camera/ui/preview/ai;->c(Z)V

    .line 3402
    iget-object p0, p0, Lcom/oplus/camera/ui/preview/ai$c;->a:Lcom/oplus/camera/ui/preview/ai;

    iput-boolean v3, p0, Lcom/oplus/camera/ui/preview/ai;->cT:Z

    goto :goto_0

    .line 3404
    :cond_2
    invoke-static {p4}, Ljava/lang/Math;->abs(F)F

    move-result p1

    invoke-static {p3}, Ljava/lang/Math;->abs(F)F

    move-result p2

    div-float/2addr p1, p2

    float-to-double p1, p1

    iget-object p3, p0, Lcom/oplus/camera/ui/preview/ai$c;->a:Lcom/oplus/camera/ui/preview/ai;

    const/high16 p4, 0x41f00000    # 30.0f

    invoke-static {p3, p4}, Lcom/oplus/camera/ui/preview/ai;->c(Lcom/oplus/camera/ui/preview/ai;F)D

    move-result-wide p3

    cmpg-double p1, p1, p3

    if-gez p1, :cond_4

    .line 3405
    iget-object p1, p0, Lcom/oplus/camera/ui/preview/ai$c;->a:Lcom/oplus/camera/ui/preview/ai;

    invoke-virtual {p1, v3}, Lcom/oplus/camera/ui/preview/ai;->c(Z)V

    .line 3406
    iget-object p0, p0, Lcom/oplus/camera/ui/preview/ai$c;->a:Lcom/oplus/camera/ui/preview/ai;

    iput-boolean v3, p0, Lcom/oplus/camera/ui/preview/ai;->cT:Z

    goto :goto_0

    :cond_3
    const/4 p2, 0x2

    .line 3409
    iget-object v4, p0, Lcom/oplus/camera/ui/preview/ai$c;->a:Lcom/oplus/camera/ui/preview/ai;

    invoke-static {v4}, Lcom/oplus/camera/ui/preview/ai;->p(Lcom/oplus/camera/ui/preview/ai;)I

    move-result v4

    if-ne p2, v4, :cond_4

    cmpg-float p2, p4, v1

    if-gez p2, :cond_4

    .line 3411
    invoke-static {p4}, Ljava/lang/Math;->abs(F)F

    move-result p2

    cmpl-float p2, p2, v2

    if-lez p2, :cond_4

    .line 3412
    invoke-static {p3}, Ljava/lang/Math;->abs(F)F

    move-result p2

    invoke-static {p4}, Ljava/lang/Math;->abs(F)F

    move-result p3

    div-float/2addr p2, p3

    float-to-double p2, p2

    iget-object p4, p0, Lcom/oplus/camera/ui/preview/ai$c;->a:Lcom/oplus/camera/ui/preview/ai;

    const/high16 v1, 0x41700000    # 15.0f

    invoke-static {p4, v1}, Lcom/oplus/camera/ui/preview/ai;->c(Lcom/oplus/camera/ui/preview/ai;F)D

    move-result-wide v1

    cmpg-double p2, p2, v1

    if-gez p2, :cond_4

    .line 3413
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result p1

    iget-object p2, p0, Lcom/oplus/camera/ui/preview/ai$c;->a:Lcom/oplus/camera/ui/preview/ai;

    invoke-virtual {p2}, Lcom/oplus/camera/ui/preview/ai;->getHeight()I

    move-result p2

    int-to-float p2, p2

    const/high16 p3, 0x3f800000    # 1.0f

    mul-float/2addr p2, p3

    cmpg-float p1, p1, p2

    if-gez p1, :cond_4

    .line 3414
    iget-object p1, p0, Lcom/oplus/camera/ui/preview/ai$c;->a:Lcom/oplus/camera/ui/preview/ai;

    invoke-virtual {p1, v0}, Lcom/oplus/camera/ui/preview/ai;->b(Z)Z

    .line 3415
    iget-object p0, p0, Lcom/oplus/camera/ui/preview/ai$c;->a:Lcom/oplus/camera/ui/preview/ai;

    iput-boolean v3, p0, Lcom/oplus/camera/ui/preview/ai;->cT:Z

    :cond_4
    :goto_0
    return v0
.end method

.method public onShowPress(Landroid/view/MotionEvent;)V
    .locals 0

    return-void
.end method

.method public onSingleTapUp(Landroid/view/MotionEvent;)Z
    .locals 12

    const-string v0, "ZoomSeekBar"

    const-string v1, "MyGestureListener, onSingleTapUp"

    .line 3306
    invoke-static {v0, v1}, Lcom/oplus/camera/e;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 3308
    iget-object v1, p0, Lcom/oplus/camera/ui/preview/ai$c;->a:Lcom/oplus/camera/ui/preview/ai;

    iget-object v1, v1, Lcom/oplus/camera/ui/preview/ai;->bO:Lcom/oplus/camera/ui/preview/ag;

    invoke-interface {v1}, Lcom/oplus/camera/ui/preview/ag;->d()Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    const-string p0, "MyGestureListener, onSingleTapUp return, spring is running"

    .line 3309
    invoke-static {v0, p0}, Lcom/oplus/camera/e;->a(Ljava/lang/String;Ljava/lang/String;)V

    return v2

    .line 3314
    :cond_0
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v1

    .line 3315
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result p1

    .line 3317
    iget-object v3, p0, Lcom/oplus/camera/ui/preview/ai$c;->a:Lcom/oplus/camera/ui/preview/ai;

    invoke-static {v3}, Lcom/oplus/camera/ui/preview/ai;->c(Lcom/oplus/camera/ui/preview/ai;)I

    move-result v3

    const/4 v9, 0x2

    const/4 v10, 0x1

    if-ne v9, v3, :cond_1

    iget-object v3, p0, Lcom/oplus/camera/ui/preview/ai$c;->a:Lcom/oplus/camera/ui/preview/ai;

    iget-boolean v3, v3, Lcom/oplus/camera/ui/preview/ai;->bg:Z

    if-eqz v3, :cond_1

    .line 3318
    iget-object v3, p0, Lcom/oplus/camera/ui/preview/ai$c;->a:Lcom/oplus/camera/ui/preview/ai;

    iget v6, v3, Lcom/oplus/camera/ui/preview/ai;->be:F

    iget-object v0, p0, Lcom/oplus/camera/ui/preview/ai$c;->a:Lcom/oplus/camera/ui/preview/ai;

    iget v7, v0, Lcom/oplus/camera/ui/preview/ai;->bf:F

    iget-object v0, p0, Lcom/oplus/camera/ui/preview/ai$c;->a:Lcom/oplus/camera/ui/preview/ai;

    iget v0, v0, Lcom/oplus/camera/ui/preview/ai;->aC:I

    int-to-float v8, v0

    move v4, v1

    move v5, p1

    invoke-virtual/range {v3 .. v8}, Lcom/oplus/camera/ui/preview/ai;->a(FFFFF)Z

    move-result v0

    if-eqz v0, :cond_d

    .line 3319
    iget-object v0, p0, Lcom/oplus/camera/ui/preview/ai$c;->a:Lcom/oplus/camera/ui/preview/ai;

    invoke-virtual {v0, v2}, Lcom/oplus/camera/ui/preview/ai;->b(Z)Z

    .line 3320
    iget-object v0, p0, Lcom/oplus/camera/ui/preview/ai$c;->a:Lcom/oplus/camera/ui/preview/ai;

    iput-boolean v10, v0, Lcom/oplus/camera/ui/preview/ai;->cT:Z

    goto/16 :goto_4

    .line 3322
    :cond_1
    iget-object v3, p0, Lcom/oplus/camera/ui/preview/ai$c;->a:Lcom/oplus/camera/ui/preview/ai;

    invoke-static {v3}, Lcom/oplus/camera/ui/preview/ai;->d(Lcom/oplus/camera/ui/preview/ai;)I

    move-result v3

    if-nez v3, :cond_d

    .line 3327
    iget-object v3, p0, Lcom/oplus/camera/ui/preview/ai$c;->a:Lcom/oplus/camera/ui/preview/ai;

    iget-boolean v3, v3, Lcom/oplus/camera/ui/preview/ai;->bk:Z

    const/4 v11, -0x1

    if-eqz v3, :cond_3

    .line 3328
    iget-object v3, p0, Lcom/oplus/camera/ui/preview/ai$c;->a:Lcom/oplus/camera/ui/preview/ai;

    iget v6, v3, Lcom/oplus/camera/ui/preview/ai;->ci:F

    iget-object v4, p0, Lcom/oplus/camera/ui/preview/ai$c;->a:Lcom/oplus/camera/ui/preview/ai;

    invoke-static {v4}, Lcom/oplus/camera/ui/preview/ai;->e(Lcom/oplus/camera/ui/preview/ai;)F

    move-result v7

    iget-object v4, p0, Lcom/oplus/camera/ui/preview/ai$c;->a:Lcom/oplus/camera/ui/preview/ai;

    iget v8, v4, Lcom/oplus/camera/ui/preview/ai;->cf:F

    move v4, v1

    move v5, p1

    invoke-virtual/range {v3 .. v8}, Lcom/oplus/camera/ui/preview/ai;->a(FFFFF)Z

    move-result v3

    if-eqz v3, :cond_2

    move v3, v2

    move v4, v3

    goto/16 :goto_1

    .line 3330
    :cond_2
    iget-object v3, p0, Lcom/oplus/camera/ui/preview/ai$c;->a:Lcom/oplus/camera/ui/preview/ai;

    iget v6, v3, Lcom/oplus/camera/ui/preview/ai;->cn:F

    iget-object v4, p0, Lcom/oplus/camera/ui/preview/ai$c;->a:Lcom/oplus/camera/ui/preview/ai;

    invoke-static {v4}, Lcom/oplus/camera/ui/preview/ai;->f(Lcom/oplus/camera/ui/preview/ai;)F

    move-result v7

    iget-object v4, p0, Lcom/oplus/camera/ui/preview/ai$c;->a:Lcom/oplus/camera/ui/preview/ai;

    iget v8, v4, Lcom/oplus/camera/ui/preview/ai;->cf:F

    move v4, v1

    move v5, p1

    invoke-virtual/range {v3 .. v8}, Lcom/oplus/camera/ui/preview/ai;->a(FFFFF)Z

    move-result v3

    if-eqz v3, :cond_7

    move v4, v2

    move v3, v10

    goto/16 :goto_1

    .line 3333
    :cond_3
    iget-object v3, p0, Lcom/oplus/camera/ui/preview/ai$c;->a:Lcom/oplus/camera/ui/preview/ai;

    iget v6, v3, Lcom/oplus/camera/ui/preview/ai;->ci:F

    iget-object v4, p0, Lcom/oplus/camera/ui/preview/ai$c;->a:Lcom/oplus/camera/ui/preview/ai;

    invoke-static {v4}, Lcom/oplus/camera/ui/preview/ai;->g(Lcom/oplus/camera/ui/preview/ai;)F

    move-result v7

    iget-object v4, p0, Lcom/oplus/camera/ui/preview/ai$c;->a:Lcom/oplus/camera/ui/preview/ai;

    iget v8, v4, Lcom/oplus/camera/ui/preview/ai;->cf:F

    move v4, v1

    move v5, p1

    invoke-virtual/range {v3 .. v8}, Lcom/oplus/camera/ui/preview/ai;->a(FFFFF)Z

    move-result v3

    if-eqz v3, :cond_4

    .line 3334
    iget-object v3, p0, Lcom/oplus/camera/ui/preview/ai$c;->a:Lcom/oplus/camera/ui/preview/ai;

    iget-object v3, v3, Lcom/oplus/camera/ui/preview/ai;->bK:Ljava/util/ArrayList;

    const/high16 v4, 0x3f800000    # 1.0f

    invoke-static {v4}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result v3

    :goto_0
    move v4, v10

    goto/16 :goto_1

    .line 3336
    :cond_4
    iget-object v3, p0, Lcom/oplus/camera/ui/preview/ai$c;->a:Lcom/oplus/camera/ui/preview/ai;

    iget v6, v3, Lcom/oplus/camera/ui/preview/ai;->cj:F

    iget-object v4, p0, Lcom/oplus/camera/ui/preview/ai$c;->a:Lcom/oplus/camera/ui/preview/ai;

    invoke-static {v4}, Lcom/oplus/camera/ui/preview/ai;->h(Lcom/oplus/camera/ui/preview/ai;)F

    move-result v7

    iget-object v4, p0, Lcom/oplus/camera/ui/preview/ai$c;->a:Lcom/oplus/camera/ui/preview/ai;

    iget v8, v4, Lcom/oplus/camera/ui/preview/ai;->cf:F

    move v4, v1

    move v5, p1

    invoke-virtual/range {v3 .. v8}, Lcom/oplus/camera/ui/preview/ai;->a(FFFFF)Z

    move-result v3

    if-eqz v3, :cond_5

    .line 3337
    iget-object v3, p0, Lcom/oplus/camera/ui/preview/ai$c;->a:Lcom/oplus/camera/ui/preview/ai;

    iget-object v3, v3, Lcom/oplus/camera/ui/preview/ai;->bK:Ljava/util/ArrayList;

    sget v4, Lcom/oplus/camera/ag;->a:F

    invoke-static {v4}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result v3

    goto :goto_0

    .line 3339
    :cond_5
    iget-object v3, p0, Lcom/oplus/camera/ui/preview/ai$c;->a:Lcom/oplus/camera/ui/preview/ai;

    iget v6, v3, Lcom/oplus/camera/ui/preview/ai;->cn:F

    iget-object v4, p0, Lcom/oplus/camera/ui/preview/ai$c;->a:Lcom/oplus/camera/ui/preview/ai;

    invoke-static {v4}, Lcom/oplus/camera/ui/preview/ai;->i(Lcom/oplus/camera/ui/preview/ai;)F

    move-result v7

    iget-object v4, p0, Lcom/oplus/camera/ui/preview/ai$c;->a:Lcom/oplus/camera/ui/preview/ai;

    iget v8, v4, Lcom/oplus/camera/ui/preview/ai;->cf:F

    move v4, v1

    move v5, p1

    invoke-virtual/range {v3 .. v8}, Lcom/oplus/camera/ui/preview/ai;->a(FFFFF)Z

    move-result v3

    if-eqz v3, :cond_7

    .line 3340
    iget-object v3, p0, Lcom/oplus/camera/ui/preview/ai$c;->a:Lcom/oplus/camera/ui/preview/ai;

    iget-object v3, v3, Lcom/oplus/camera/ui/preview/ai;->bO:Lcom/oplus/camera/ui/preview/ag;

    if-eqz v3, :cond_6

    iget-object v3, p0, Lcom/oplus/camera/ui/preview/ai$c;->a:Lcom/oplus/camera/ui/preview/ai;

    iget-object v3, v3, Lcom/oplus/camera/ui/preview/ai;->bO:Lcom/oplus/camera/ui/preview/ag;

    invoke-interface {v3}, Lcom/oplus/camera/ui/preview/ag;->i()F

    move-result v3

    const/4 v4, 0x0

    invoke-static {v3, v4}, Ljava/lang/Float;->compare(FF)I

    move-result v3

    if-eqz v3, :cond_6

    .line 3341
    iget-object v3, p0, Lcom/oplus/camera/ui/preview/ai$c;->a:Lcom/oplus/camera/ui/preview/ai;

    iget-object v3, v3, Lcom/oplus/camera/ui/preview/ai;->bK:Ljava/util/ArrayList;

    iget-object v4, p0, Lcom/oplus/camera/ui/preview/ai$c;->a:Lcom/oplus/camera/ui/preview/ai;

    iget-object v4, v4, Lcom/oplus/camera/ui/preview/ai;->bO:Lcom/oplus/camera/ui/preview/ag;

    invoke-interface {v4}, Lcom/oplus/camera/ui/preview/ag;->i()F

    move-result v4

    invoke-static {v4}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result v3

    goto :goto_0

    .line 3343
    :cond_6
    iget-object v3, p0, Lcom/oplus/camera/ui/preview/ai$c;->a:Lcom/oplus/camera/ui/preview/ai;

    iget-object v3, v3, Lcom/oplus/camera/ui/preview/ai;->bK:Ljava/util/ArrayList;

    const/high16 v4, 0x40000000    # 2.0f

    invoke-static {v4}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result v3

    goto :goto_0

    :cond_7
    move v4, v2

    move v3, v11

    .line 3351
    :goto_1
    iget-object v5, p0, Lcom/oplus/camera/ui/preview/ai$c;->a:Lcom/oplus/camera/ui/preview/ai;

    iget v5, v5, Lcom/oplus/camera/ui/preview/ai;->aN:I

    if-ne v5, v3, :cond_8

    iget-object v5, p0, Lcom/oplus/camera/ui/preview/ai$c;->a:Lcom/oplus/camera/ui/preview/ai;

    iget-object v5, v5, Lcom/oplus/camera/ui/preview/ai;->df:Landroid/animation/AnimatorSet;

    invoke-virtual {v5}, Landroid/animation/AnimatorSet;->isRunning()Z

    move-result v5

    if-nez v5, :cond_8

    if-eqz v4, :cond_8

    .line 3352
    iget-object v4, p0, Lcom/oplus/camera/ui/preview/ai$c;->a:Lcom/oplus/camera/ui/preview/ai;

    invoke-virtual {v4, v2}, Lcom/oplus/camera/ui/preview/ai;->c(Z)V

    .line 3355
    :cond_8
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "onSingleTapUp, targetIndex: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v0, v4}, Lcom/oplus/camera/e;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 3357
    iget-object v0, p0, Lcom/oplus/camera/ui/preview/ai$c;->a:Lcom/oplus/camera/ui/preview/ai;

    iget-boolean v0, v0, Lcom/oplus/camera/ui/preview/ai;->bk:Z

    if-eqz v0, :cond_9

    iget-object v0, p0, Lcom/oplus/camera/ui/preview/ai$c;->a:Lcom/oplus/camera/ui/preview/ai;

    iget-boolean v0, v0, Lcom/oplus/camera/ui/preview/ai;->bo:Z

    if-nez v0, :cond_9

    .line 3358
    iget-object v0, p0, Lcom/oplus/camera/ui/preview/ai$c;->a:Lcom/oplus/camera/ui/preview/ai;

    invoke-virtual {v0, v3, v10}, Lcom/oplus/camera/ui/preview/ai;->d(IZ)V

    goto :goto_4

    .line 3360
    :cond_9
    iget-object v0, p0, Lcom/oplus/camera/ui/preview/ai$c;->a:Lcom/oplus/camera/ui/preview/ai;

    iget v0, v0, Lcom/oplus/camera/ui/preview/ai;->aN:I

    if-eq v0, v3, :cond_a

    move v0, v10

    goto :goto_2

    :cond_a
    move v0, v2

    .line 3362
    :goto_2
    iget-object v4, p0, Lcom/oplus/camera/ui/preview/ai$c;->a:Lcom/oplus/camera/ui/preview/ai;

    iget-object v4, v4, Lcom/oplus/camera/ui/preview/ai;->df:Landroid/animation/AnimatorSet;

    invoke-virtual {v4}, Landroid/animation/AnimatorSet;->isRunning()Z

    move-result v4

    if-eqz v4, :cond_c

    .line 3363
    iget-object v0, p0, Lcom/oplus/camera/ui/preview/ai$c;->a:Lcom/oplus/camera/ui/preview/ai;

    iget v0, v0, Lcom/oplus/camera/ui/preview/ai;->aQ:I

    if-eq v0, v3, :cond_b

    move v0, v10

    goto :goto_3

    :cond_b
    move v0, v2

    .line 3366
    :cond_c
    :goto_3
    iget-object v4, p0, Lcom/oplus/camera/ui/preview/ai$c;->a:Lcom/oplus/camera/ui/preview/ai;

    invoke-static {v4}, Lcom/oplus/camera/ui/preview/ai;->j(Lcom/oplus/camera/ui/preview/ai;)Lcom/oplus/camera/ui/b$a;

    move-result-object v4

    if-eqz v4, :cond_d

    if-eq v11, v3, :cond_d

    if-eqz v0, :cond_d

    .line 3367
    iget-object v0, p0, Lcom/oplus/camera/ui/preview/ai$c;->a:Lcom/oplus/camera/ui/preview/ai;

    invoke-virtual {v0, v3}, Lcom/oplus/camera/ui/preview/ai;->b(I)F

    move-result v0

    .line 3369
    iget-object v4, p0, Lcom/oplus/camera/ui/preview/ai$c;->a:Lcom/oplus/camera/ui/preview/ai;

    invoke-virtual {v4, v3, v0}, Lcom/oplus/camera/ui/preview/ai;->a(IF)V

    .line 3370
    iget-object v3, p0, Lcom/oplus/camera/ui/preview/ai$c;->a:Lcom/oplus/camera/ui/preview/ai;

    invoke-static {v3}, Lcom/oplus/camera/ui/preview/ai;->k(Lcom/oplus/camera/ui/preview/ai;)Lcom/oplus/camera/ui/b$a;

    move-result-object v3

    invoke-interface {v3, v0}, Lcom/oplus/camera/ui/b$a;->a(F)V

    .line 3371
    iget-object v0, p0, Lcom/oplus/camera/ui/preview/ai$c;->a:Lcom/oplus/camera/ui/preview/ai;

    iput-boolean v10, v0, Lcom/oplus/camera/ui/preview/ai;->cT:Z

    .line 3373
    invoke-virtual {v0}, Lcom/oplus/camera/ui/preview/ai;->invalidate()V

    .line 3378
    :cond_d
    :goto_4
    iget-object v0, p0, Lcom/oplus/camera/ui/preview/ai$c;->a:Lcom/oplus/camera/ui/preview/ai;

    invoke-static {v0}, Lcom/oplus/camera/ui/preview/ai;->l(Lcom/oplus/camera/ui/preview/ai;)I

    move-result v0

    if-ne v9, v0, :cond_e

    .line 3379
    iget-object v0, p0, Lcom/oplus/camera/ui/preview/ai$c;->a:Lcom/oplus/camera/ui/preview/ai;

    invoke-virtual {v0, v1, p1}, Lcom/oplus/camera/ui/preview/ai;->a(FF)Ljava/lang/String;

    move-result-object p1

    .line 3381
    iget-object v0, p0, Lcom/oplus/camera/ui/preview/ai$c;->a:Lcom/oplus/camera/ui/preview/ai;

    invoke-static {v0}, Lcom/oplus/camera/ui/preview/ai;->m(Lcom/oplus/camera/ui/preview/ai;)Lcom/oplus/camera/ui/b$a;

    move-result-object v0

    if-eqz v0, :cond_e

    if-eqz p1, :cond_e

    const-string v0, ""

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_e

    .line 3382
    iget-object v0, p0, Lcom/oplus/camera/ui/preview/ai$c;->a:Lcom/oplus/camera/ui/preview/ai;

    invoke-static {v0}, Lcom/oplus/camera/ui/preview/ai;->n(Lcom/oplus/camera/ui/preview/ai;)Lcom/oplus/camera/ui/b$a;

    move-result-object v0

    invoke-static {p1}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result p1

    invoke-interface {v0, p1}, Lcom/oplus/camera/ui/b$a;->d(F)V

    .line 3383
    iget-object p0, p0, Lcom/oplus/camera/ui/preview/ai$c;->a:Lcom/oplus/camera/ui/preview/ai;

    iput-boolean v10, p0, Lcom/oplus/camera/ui/preview/ai;->bj:Z

    :cond_e
    return v2
.end method
