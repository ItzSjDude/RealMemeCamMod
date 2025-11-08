.class public Lcom/oplus/camera/ui/menu/levelcontrol/ThreeDScrollBar;
.super Lcom/oplus/camera/ui/menu/levelcontrol/b;
.source "ThreeDScrollBar.java"


# instance fields
.field private A:F

.field private w:Landroid/view/animation/Interpolator;

.field private x:Landroid/view/VelocityTracker;

.field private y:F

.field private z:F


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    .line 34
    invoke-direct {p0, p1, v0}, Lcom/oplus/camera/ui/menu/levelcontrol/ThreeDScrollBar;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 4

    .line 38
    invoke-direct {p0, p1, p2}, Lcom/oplus/camera/ui/menu/levelcontrol/b;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 27
    new-instance p2, Landroid/view/animation/PathInterpolator;

    const/4 v0, 0x0

    const v1, 0x3dcccccd    # 0.1f

    const v2, 0x3ecccccd    # 0.4f

    const v3, 0x3f333333    # 0.7f

    invoke-direct {p2, v0, v1, v2, v3}, Landroid/view/animation/PathInterpolator;-><init>(FFFF)V

    iput-object p2, p0, Lcom/oplus/camera/ui/menu/levelcontrol/ThreeDScrollBar;->w:Landroid/view/animation/Interpolator;

    .line 29
    iput v0, p0, Lcom/oplus/camera/ui/menu/levelcontrol/ThreeDScrollBar;->y:F

    .line 30
    iput v0, p0, Lcom/oplus/camera/ui/menu/levelcontrol/ThreeDScrollBar;->z:F

    .line 31
    iput v0, p0, Lcom/oplus/camera/ui/menu/levelcontrol/ThreeDScrollBar;->A:F

    .line 40
    new-instance p2, Lcom/oplus/camera/ui/menu/levelcontrol/n;

    invoke-direct {p2, p1}, Lcom/oplus/camera/ui/menu/levelcontrol/n;-><init>(Landroid/content/Context;)V

    iput-object p2, p0, Lcom/oplus/camera/ui/menu/levelcontrol/ThreeDScrollBar;->c:Lcom/oplus/camera/ui/menu/levelcontrol/j;

    .line 41
    sget-object p2, Lcom/oplus/camera/ui/inverse/e;->INS:Lcom/oplus/camera/ui/inverse/e;

    iget-object v0, p0, Lcom/oplus/camera/ui/menu/levelcontrol/ThreeDScrollBar;->c:Lcom/oplus/camera/ui/menu/levelcontrol/j;

    invoke-virtual {p2, p1, v0}, Lcom/oplus/camera/ui/inverse/e;->registerInverse(Landroid/content/Context;Lcom/oplus/camera/ui/inverse/a;)V

    .line 42
    iget-object p1, p0, Lcom/oplus/camera/ui/menu/levelcontrol/ThreeDScrollBar;->c:Lcom/oplus/camera/ui/menu/levelcontrol/j;

    iget-object p0, p0, Lcom/oplus/camera/ui/menu/levelcontrol/ThreeDScrollBar;->v:Lcom/oplus/camera/ui/menu/levelcontrol/j$a;

    invoke-virtual {p1, p0}, Lcom/oplus/camera/ui/menu/levelcontrol/j;->a(Lcom/oplus/camera/ui/menu/levelcontrol/j$a;)V

    return-void
.end method


# virtual methods
.method protected a(F)V
    .locals 7

    .line 177
    invoke-static {}, Lcom/oplus/camera/ui/menu/levelcontrol/o;->a()D

    move-result-wide v0

    double-to-float v0, v0

    const/high16 v1, 0x40000000    # 2.0f

    div-float/2addr v0, v1

    .line 178
    iget-object v1, p0, Lcom/oplus/camera/ui/menu/levelcontrol/ThreeDScrollBar;->d:Lcom/oplus/camera/ui/menu/levelcontrol/b$a;

    invoke-interface {v1}, Lcom/oplus/camera/ui/menu/levelcontrol/b$a;->d()I

    move-result v1

    invoke-virtual {p0, v1}, Lcom/oplus/camera/ui/menu/levelcontrol/ThreeDScrollBar;->d(I)F

    move-result v1

    .line 179
    invoke-virtual {p0}, Lcom/oplus/camera/ui/menu/levelcontrol/ThreeDScrollBar;->getModelNum()I

    move-result v2

    const/4 v3, 0x1

    sub-int/2addr v2, v3

    invoke-virtual {p0, v2}, Lcom/oplus/camera/ui/menu/levelcontrol/ThreeDScrollBar;->d(I)F

    move-result v2

    .line 180
    invoke-virtual {p0}, Lcom/oplus/camera/ui/menu/levelcontrol/ThreeDScrollBar;->getCurrPosition()F

    move-result v4

    invoke-static {p1}, Lcom/oplus/camera/ui/menu/levelcontrol/o;->f(F)F

    move-result v5

    add-float/2addr v4, v5

    cmpl-float v5, v4, v1

    const v6, 0x3ecccccd    # 0.4f

    if-lez v5, :cond_0

    .line 183
    invoke-virtual {p0}, Lcom/oplus/camera/ui/menu/levelcontrol/ThreeDScrollBar;->getCurrPosition()F

    move-result v2

    invoke-static {p1}, Lcom/oplus/camera/ui/menu/levelcontrol/o;->f(F)F

    move-result p1

    mul-float/2addr p1, v6

    add-float v4, v2, p1

    add-float p1, v1, v0

    cmpl-float v0, v4, p1

    if-lez v0, :cond_1

    :goto_0
    move v4, p1

    goto :goto_1

    :cond_0
    cmpg-float v1, v4, v2

    if-gtz v1, :cond_1

    .line 189
    invoke-virtual {p0}, Lcom/oplus/camera/ui/menu/levelcontrol/ThreeDScrollBar;->getCurrPosition()F

    move-result v1

    invoke-static {p1}, Lcom/oplus/camera/ui/menu/levelcontrol/o;->f(F)F

    move-result p1

    mul-float/2addr p1, v6

    add-float v4, v1, p1

    sub-float p1, v2, v0

    cmpg-float v0, v4, p1

    if-gez v0, :cond_1

    goto :goto_0

    .line 201
    :cond_1
    :goto_1
    invoke-virtual {p0, v4, v3}, Lcom/oplus/camera/ui/menu/levelcontrol/ThreeDScrollBar;->a(FZ)V

    return-void
.end method

.method protected a(Landroid/view/MotionEvent;)V
    .locals 2

    .line 162
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getPointerCount()I

    move-result v0

    if-lez v0, :cond_0

    const/4 v0, 0x0

    .line 163
    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v0

    .line 164
    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->findPointerIndex(I)I

    move-result v0

    .line 165
    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->getX(I)F

    move-result v0

    iput v0, p0, Lcom/oplus/camera/ui/menu/levelcontrol/ThreeDScrollBar;->y:F

    .line 168
    :cond_0
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getPointerCount()I

    move-result v0

    const/4 v1, 0x1

    if-ge v1, v0, :cond_1

    .line 169
    invoke-virtual {p1, v1}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v0

    .line 170
    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->findPointerIndex(I)I

    move-result v0

    .line 171
    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->getX(I)F

    move-result p1

    iput p1, p0, Lcom/oplus/camera/ui/menu/levelcontrol/ThreeDScrollBar;->A:F

    :cond_1
    return-void
.end method

.method protected b(F)V
    .locals 9

    .line 258
    invoke-virtual {p0}, Lcom/oplus/camera/ui/menu/levelcontrol/ThreeDScrollBar;->k()Z

    move-result v0

    const-string v1, "ThreeDScrollBar"

    if-nez v0, :cond_0

    const-string p1, "scrollToByFling, texture not init, so return"

    .line 259
    invoke-static {v1, p1}, Lcom/oplus/camera/e;->f(Ljava/lang/String;Ljava/lang/String;)V

    .line 261
    invoke-virtual {p0}, Lcom/oplus/camera/ui/menu/levelcontrol/ThreeDScrollBar;->l()V

    return-void

    :cond_0
    const v0, 0x3da3d70a    # 0.08f

    mul-float/2addr v0, p1

    .line 266
    invoke-static {v0}, Lcom/oplus/camera/ui/menu/levelcontrol/o;->f(F)F

    move-result v0

    .line 268
    invoke-static {}, Lcom/oplus/camera/ui/menu/levelcontrol/o;->e()F

    move-result v2

    const v3, 0x46ea6000    # 30000.0f

    div-float v3, p1, v3

    invoke-static {v3}, Ljava/lang/Math;->abs(F)F

    move-result v3

    mul-float/2addr v2, v3

    .line 269
    iget-object v3, p0, Lcom/oplus/camera/ui/menu/levelcontrol/ThreeDScrollBar;->d:Lcom/oplus/camera/ui/menu/levelcontrol/b$a;

    invoke-interface {v3}, Lcom/oplus/camera/ui/menu/levelcontrol/b$a;->d()I

    move-result v3

    invoke-virtual {p0, v3}, Lcom/oplus/camera/ui/menu/levelcontrol/ThreeDScrollBar;->d(I)F

    move-result v3

    .line 270
    invoke-virtual {p0}, Lcom/oplus/camera/ui/menu/levelcontrol/ThreeDScrollBar;->getModelNum()I

    move-result v4

    add-int/lit8 v4, v4, -0x1

    invoke-virtual {p0, v4}, Lcom/oplus/camera/ui/menu/levelcontrol/ThreeDScrollBar;->d(I)F

    move-result v4

    .line 271
    invoke-virtual {p0}, Lcom/oplus/camera/ui/menu/levelcontrol/ThreeDScrollBar;->getCurrPosition()F

    move-result v5

    add-float/2addr v5, v0

    const/16 v0, 0x1a

    .line 274
    invoke-virtual {p0}, Lcom/oplus/camera/ui/menu/levelcontrol/ThreeDScrollBar;->getCurrPosition()F

    move-result v6

    cmpl-float v6, v6, v3

    if-gtz v6, :cond_6

    invoke-virtual {p0}, Lcom/oplus/camera/ui/menu/levelcontrol/ThreeDScrollBar;->getCurrPosition()F

    move-result v6

    cmpg-float v6, v6, v4

    if-gtz v6, :cond_1

    goto/16 :goto_0

    :cond_1
    cmpl-float v6, v5, v3

    if-lez v6, :cond_3

    add-float v0, v3, v2

    cmpl-float v6, v5, v0

    if-lez v6, :cond_2

    move v5, v0

    .line 281
    :cond_2
    invoke-virtual {p0}, Lcom/oplus/camera/ui/menu/levelcontrol/ThreeDScrollBar;->getCurrPosition()F

    move-result v0

    invoke-virtual {p0, v0}, Lcom/oplus/camera/ui/menu/levelcontrol/ThreeDScrollBar;->c(F)I

    move-result v0

    invoke-virtual {p0, v5}, Lcom/oplus/camera/ui/menu/levelcontrol/ThreeDScrollBar;->c(F)I

    move-result v6

    sub-int/2addr v0, v6

    invoke-static {v0}, Ljava/lang/Math;->abs(I)I

    move-result v0

    mul-int/lit8 v0, v0, 0x2

    .line 283
    iget-object v6, p0, Lcom/oplus/camera/ui/menu/levelcontrol/ThreeDScrollBar;->w:Landroid/view/animation/Interpolator;

    iget-object v7, p0, Lcom/oplus/camera/ui/menu/levelcontrol/ThreeDScrollBar;->u:Lcom/oplus/camera/ui/menu/levelcontrol/j$b;

    invoke-virtual {p0, v5, v0, v6, v7}, Lcom/oplus/camera/ui/menu/levelcontrol/ThreeDScrollBar;->a(FILandroid/view/animation/Interpolator;Lcom/oplus/camera/ui/menu/levelcontrol/j$b;)Z

    goto :goto_1

    :cond_3
    cmpg-float v6, v5, v4

    if-gtz v6, :cond_5

    sub-float v0, v4, v2

    cmpg-float v6, v5, v0

    if-gez v6, :cond_4

    move v5, v0

    .line 289
    :cond_4
    invoke-virtual {p0}, Lcom/oplus/camera/ui/menu/levelcontrol/ThreeDScrollBar;->getCurrPosition()F

    move-result v0

    invoke-virtual {p0, v0}, Lcom/oplus/camera/ui/menu/levelcontrol/ThreeDScrollBar;->c(F)I

    move-result v0

    invoke-virtual {p0, v5}, Lcom/oplus/camera/ui/menu/levelcontrol/ThreeDScrollBar;->c(F)I

    move-result v6

    sub-int/2addr v0, v6

    invoke-static {v0}, Ljava/lang/Math;->abs(I)I

    move-result v0

    mul-int/lit8 v0, v0, 0x2

    .line 291
    iget-object v6, p0, Lcom/oplus/camera/ui/menu/levelcontrol/ThreeDScrollBar;->w:Landroid/view/animation/Interpolator;

    iget-object v7, p0, Lcom/oplus/camera/ui/menu/levelcontrol/ThreeDScrollBar;->u:Lcom/oplus/camera/ui/menu/levelcontrol/j$b;

    invoke-virtual {p0, v5, v0, v6, v7}, Lcom/oplus/camera/ui/menu/levelcontrol/ThreeDScrollBar;->a(FILandroid/view/animation/Interpolator;Lcom/oplus/camera/ui/menu/levelcontrol/j$b;)Z

    goto :goto_1

    .line 293
    :cond_5
    invoke-virtual {p0}, Lcom/oplus/camera/ui/menu/levelcontrol/ThreeDScrollBar;->getCurrPosition()F

    move-result v6

    invoke-virtual {p0, v6}, Lcom/oplus/camera/ui/menu/levelcontrol/ThreeDScrollBar;->c(F)I

    move-result v6

    invoke-virtual {p0, v5}, Lcom/oplus/camera/ui/menu/levelcontrol/ThreeDScrollBar;->c(F)I

    move-result v7

    sub-int/2addr v6, v7

    invoke-static {v6}, Ljava/lang/Math;->abs(I)I

    move-result v6

    mul-int/lit8 v6, v6, 0x2

    add-int/2addr v0, v6

    .line 294
    invoke-virtual {p0, v5}, Lcom/oplus/camera/ui/menu/levelcontrol/ThreeDScrollBar;->c(F)I

    move-result v6

    invoke-virtual {p0, v6}, Lcom/oplus/camera/ui/menu/levelcontrol/ThreeDScrollBar;->d(I)F

    move-result v6

    iget-object v7, p0, Lcom/oplus/camera/ui/menu/levelcontrol/ThreeDScrollBar;->g:Landroid/view/animation/Interpolator;

    iget-object v8, p0, Lcom/oplus/camera/ui/menu/levelcontrol/ThreeDScrollBar;->s:Lcom/oplus/camera/ui/menu/levelcontrol/j$b;

    invoke-virtual {p0, v6, v0, v7, v8}, Lcom/oplus/camera/ui/menu/levelcontrol/ThreeDScrollBar;->a(FILandroid/view/animation/Interpolator;Lcom/oplus/camera/ui/menu/levelcontrol/j$b;)Z

    goto :goto_1

    .line 275
    :cond_6
    :goto_0
    invoke-virtual {p0}, Lcom/oplus/camera/ui/menu/levelcontrol/ThreeDScrollBar;->l()V

    .line 297
    :goto_1
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "scrollToByFling, toYAngle: "

    invoke-virtual {p0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v5}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v5, ", positiveLimit: "

    invoke-virtual {p0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v3}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v3, ", negativeLimit: "

    invoke-virtual {p0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v4}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v3, ", animFrame: "

    invoke-virtual {p0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, ", velocityX: "

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string p1, ", outLimitDiff: "

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v1, p0}, Lcom/oplus/camera/e;->a(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method protected b(Landroid/view/MotionEvent;)V
    .locals 7

    .line 224
    invoke-virtual {p0}, Lcom/oplus/camera/ui/menu/levelcontrol/ThreeDScrollBar;->k()Z

    move-result v0

    const-string v1, "ThreeDScrollBar"

    if-nez v0, :cond_0

    const-string p1, "scrollToByClick, texture not init, so return"

    .line 225
    invoke-static {v1, p1}, Lcom/oplus/camera/e;->f(Ljava/lang/String;Ljava/lang/String;)V

    .line 227
    invoke-virtual {p0}, Lcom/oplus/camera/ui/menu/levelcontrol/ThreeDScrollBar;->l()V

    return-void

    .line 231
    :cond_0
    invoke-static {}, Lcom/oplus/camera/util/Util;->getScreenWidth()I

    move-result v0

    div-int/lit8 v0, v0, 0x2

    int-to-float v0, v0

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result p1

    sub-float/2addr v0, p1

    .line 232
    invoke-static {v0}, Lcom/oplus/camera/ui/menu/levelcontrol/o;->f(F)F

    move-result p1

    const/4 v0, 0x0

    .line 233
    invoke-virtual {p0, v0}, Lcom/oplus/camera/ui/menu/levelcontrol/ThreeDScrollBar;->d(I)F

    move-result v2

    invoke-static {}, Lcom/oplus/camera/ui/menu/levelcontrol/o;->e()F

    move-result v3

    const/high16 v4, 0x40000000    # 2.0f

    div-float/2addr v3, v4

    add-float/2addr v2, v3

    .line 234
    invoke-virtual {p0}, Lcom/oplus/camera/ui/menu/levelcontrol/ThreeDScrollBar;->getModelNum()I

    move-result v3

    const/4 v5, 0x1

    sub-int/2addr v3, v5

    invoke-virtual {p0, v3}, Lcom/oplus/camera/ui/menu/levelcontrol/ThreeDScrollBar;->d(I)F

    move-result v3

    invoke-static {}, Lcom/oplus/camera/ui/menu/levelcontrol/o;->e()F

    move-result v6

    div-float/2addr v6, v4

    sub-float/2addr v3, v6

    .line 235
    invoke-virtual {p0}, Lcom/oplus/camera/ui/menu/levelcontrol/ThreeDScrollBar;->getCurrPosition()F

    move-result v4

    add-float/2addr v4, p1

    cmpl-float p1, v4, v2

    if-gtz p1, :cond_4

    cmpg-float p1, v4, v3

    if-gtz p1, :cond_1

    goto :goto_0

    .line 242
    :cond_1
    invoke-virtual {p0, v4}, Lcom/oplus/camera/ui/menu/levelcontrol/ThreeDScrollBar;->c(F)I

    move-result p1

    .line 244
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "scrollToByClick, toYAngle: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v3, ", index: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, p0, Lcom/oplus/camera/ui/menu/levelcontrol/ThreeDScrollBar;->f:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, " -> "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/oplus/camera/e;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 246
    iget-object v1, p0, Lcom/oplus/camera/ui/menu/levelcontrol/ThreeDScrollBar;->d:Lcom/oplus/camera/ui/menu/levelcontrol/b$a;

    if-eqz v1, :cond_3

    iget-object v1, p0, Lcom/oplus/camera/ui/menu/levelcontrol/ThreeDScrollBar;->d:Lcom/oplus/camera/ui/menu/levelcontrol/b$a;

    invoke-interface {v1, p1}, Lcom/oplus/camera/ui/menu/levelcontrol/b$a;->a(I)Z

    move-result v1

    if-nez v1, :cond_3

    .line 247
    iget-object v1, p0, Lcom/oplus/camera/ui/menu/levelcontrol/ThreeDScrollBar;->c:Lcom/oplus/camera/ui/menu/levelcontrol/j;

    if-eqz v1, :cond_2

    invoke-virtual {p0}, Lcom/oplus/camera/ui/menu/levelcontrol/ThreeDScrollBar;->getCurrPosition()F

    move-result v1

    sub-float/2addr v4, v1

    const/4 v1, 0x0

    invoke-static {v4, v1}, Ljava/lang/Float;->compare(FF)I

    move-result v1

    if-eqz v1, :cond_2

    .line 248
    iput-boolean v5, p0, Lcom/oplus/camera/ui/menu/levelcontrol/ThreeDScrollBar;->e:Z

    .line 249
    invoke-virtual {p0, p1, v0}, Lcom/oplus/camera/ui/menu/levelcontrol/ThreeDScrollBar;->a(IZ)V

    .line 252
    :cond_2
    invoke-virtual {p0, p1}, Lcom/oplus/camera/ui/menu/levelcontrol/ThreeDScrollBar;->d(I)F

    move-result p1

    const/16 v0, 0x1a

    iget-object v1, p0, Lcom/oplus/camera/ui/menu/levelcontrol/ThreeDScrollBar;->g:Landroid/view/animation/Interpolator;

    iget-object v2, p0, Lcom/oplus/camera/ui/menu/levelcontrol/ThreeDScrollBar;->t:Lcom/oplus/camera/ui/menu/levelcontrol/j$b;

    invoke-virtual {p0, p1, v0, v1, v2}, Lcom/oplus/camera/ui/menu/levelcontrol/ThreeDScrollBar;->a(FILandroid/view/animation/Interpolator;Lcom/oplus/camera/ui/menu/levelcontrol/j$b;)Z

    :cond_3
    return-void

    .line 238
    :cond_4
    :goto_0
    invoke-virtual {p0}, Lcom/oplus/camera/ui/menu/levelcontrol/ThreeDScrollBar;->l()V

    return-void
.end method

.method protected c(F)I
    .locals 4

    .line 312
    invoke-virtual {p0}, Lcom/oplus/camera/ui/menu/levelcontrol/ThreeDScrollBar;->k()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    const-string p0, "ThreeDScrollBar"

    const-string p1, "convertPositionToIndex, texture not init, so return"

    .line 313
    invoke-static {p0, p1}, Lcom/oplus/camera/e;->f(Ljava/lang/String;Ljava/lang/String;)V

    return v1

    .line 318
    :cond_0
    invoke-virtual {p0, v1}, Lcom/oplus/camera/ui/menu/levelcontrol/ThreeDScrollBar;->d(I)F

    move-result v0

    .line 319
    invoke-virtual {p0}, Lcom/oplus/camera/ui/menu/levelcontrol/ThreeDScrollBar;->getModelNum()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    invoke-virtual {p0, v2}, Lcom/oplus/camera/ui/menu/levelcontrol/ThreeDScrollBar;->d(I)F

    move-result v2

    .line 320
    invoke-static {}, Lcom/oplus/camera/ui/menu/levelcontrol/o;->g()F

    move-result v3

    div-float v3, p1, v3

    invoke-static {v3}, Ljava/lang/Math;->abs(F)F

    move-result v3

    invoke-static {v3}, Ljava/lang/Math;->round(F)I

    move-result v3

    if-ltz v3, :cond_4

    cmpl-float v0, p1, v0

    if-lez v0, :cond_1

    goto :goto_1

    .line 324
    :cond_1
    invoke-virtual {p0}, Lcom/oplus/camera/ui/menu/levelcontrol/ThreeDScrollBar;->getModelNum()I

    move-result v0

    if-ge v3, v0, :cond_3

    cmpg-float p1, p1, v2

    if-gtz p1, :cond_2

    goto :goto_0

    :cond_2
    move v1, v3

    goto :goto_1

    .line 325
    :cond_3
    :goto_0
    invoke-virtual {p0}, Lcom/oplus/camera/ui/menu/levelcontrol/ThreeDScrollBar;->getModelNum()I

    move-result p0

    add-int/lit8 v1, p0, -0x1

    :cond_4
    :goto_1
    return v1
.end method

.method protected d(I)F
    .locals 0

    neg-int p0, p1

    int-to-float p0, p0

    .line 306
    invoke-static {}, Lcom/oplus/camera/ui/menu/levelcontrol/o;->g()F

    move-result p1

    mul-float/2addr p0, p1

    return p0
.end method

.method protected l()V
    .locals 4

    .line 208
    iget-object v0, p0, Lcom/oplus/camera/ui/menu/levelcontrol/ThreeDScrollBar;->d:Lcom/oplus/camera/ui/menu/levelcontrol/b$a;

    if-eqz v0, :cond_0

    .line 209
    iget-object v0, p0, Lcom/oplus/camera/ui/menu/levelcontrol/ThreeDScrollBar;->d:Lcom/oplus/camera/ui/menu/levelcontrol/b$a;

    invoke-interface {v0}, Lcom/oplus/camera/ui/menu/levelcontrol/b$a;->d()I

    move-result v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 212
    :goto_0
    invoke-virtual {p0}, Lcom/oplus/camera/ui/menu/levelcontrol/ThreeDScrollBar;->getCurrPosition()F

    move-result v1

    .line 213
    invoke-virtual {p0, v0}, Lcom/oplus/camera/ui/menu/levelcontrol/ThreeDScrollBar;->d(I)F

    move-result v0

    cmpl-float v2, v1, v0

    if-lez v2, :cond_1

    goto :goto_1

    :cond_1
    move v0, v1

    .line 215
    :goto_1
    invoke-virtual {p0, v0}, Lcom/oplus/camera/ui/menu/levelcontrol/ThreeDScrollBar;->c(F)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/oplus/camera/ui/menu/levelcontrol/ThreeDScrollBar;->d(I)F

    move-result v0

    .line 217
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "scrollNear, angle: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/oplus/camera/ui/menu/levelcontrol/ThreeDScrollBar;->getCurrPosition()F

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v2, " -> "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "ThreeDScrollBar"

    invoke-static {v2, v1}, Lcom/oplus/camera/e;->a(Ljava/lang/String;Ljava/lang/String;)V

    const/16 v1, 0x1a

    .line 219
    iget-object v2, p0, Lcom/oplus/camera/ui/menu/levelcontrol/ThreeDScrollBar;->g:Landroid/view/animation/Interpolator;

    iget-object v3, p0, Lcom/oplus/camera/ui/menu/levelcontrol/ThreeDScrollBar;->s:Lcom/oplus/camera/ui/menu/levelcontrol/j$b;

    invoke-virtual {p0, v0, v1, v2, v3}, Lcom/oplus/camera/ui/menu/levelcontrol/ThreeDScrollBar;->a(FILandroid/view/animation/Interpolator;Lcom/oplus/camera/ui/menu/levelcontrol/j$b;)Z

    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 6

    .line 47
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    .line 49
    iget-boolean v1, p0, Lcom/oplus/camera/ui/menu/levelcontrol/ThreeDScrollBar;->e:Z

    const/4 v2, 0x1

    if-eqz v1, :cond_1

    .line 50
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result p1

    if-nez p1, :cond_0

    const-string p1, "ThreeDScrollBar"

    const-string v1, "onTouchEvent, click scrolling, reset touch x"

    .line 51
    invoke-static {p1, v1}, Lcom/oplus/camera/e;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 53
    iput v0, p0, Lcom/oplus/camera/ui/menu/levelcontrol/ThreeDScrollBar;->z:F

    .line 54
    iput v0, p0, Lcom/oplus/camera/ui/menu/levelcontrol/ThreeDScrollBar;->y:F

    .line 55
    invoke-static {}, Landroid/view/VelocityTracker;->obtain()Landroid/view/VelocityTracker;

    move-result-object p1

    iput-object p1, p0, Lcom/oplus/camera/ui/menu/levelcontrol/ThreeDScrollBar;->x:Landroid/view/VelocityTracker;

    :cond_0
    return v2

    .line 61
    :cond_1
    iget-object v1, p0, Lcom/oplus/camera/ui/menu/levelcontrol/ThreeDScrollBar;->d:Lcom/oplus/camera/ui/menu/levelcontrol/b$a;

    invoke-interface {v1}, Lcom/oplus/camera/ui/menu/levelcontrol/b$a;->b()Z

    move-result v1

    if-nez v1, :cond_3

    .line 62
    invoke-virtual {p0}, Lcom/oplus/camera/ui/menu/levelcontrol/ThreeDScrollBar;->l()V

    .line 64
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v0

    if-nez v0, :cond_2

    .line 65
    invoke-virtual {p0, p1}, Lcom/oplus/camera/ui/menu/levelcontrol/ThreeDScrollBar;->a(Landroid/view/MotionEvent;)V

    :cond_2
    return v2

    .line 75
    :cond_3
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v1

    if-eqz v1, :cond_10

    const/high16 v3, 0x40000000    # 2.0f

    if-eq v1, v2, :cond_c

    const/4 v4, 0x2

    if-eq v1, v4, :cond_9

    const/4 v4, 0x3

    if-eq v1, v4, :cond_6

    const/4 v0, 0x5

    if-eq v1, v0, :cond_5

    const/4 v0, 0x6

    if-eq v1, v0, :cond_4

    goto/16 :goto_1

    .line 114
    :cond_4
    invoke-virtual {p0, p1}, Lcom/oplus/camera/ui/menu/levelcontrol/ThreeDScrollBar;->a(Landroid/view/MotionEvent;)V

    goto/16 :goto_1

    .line 84
    :cond_5
    invoke-virtual {p0}, Lcom/oplus/camera/ui/menu/levelcontrol/ThreeDScrollBar;->j()V

    .line 85
    invoke-virtual {p0, p1}, Lcom/oplus/camera/ui/menu/levelcontrol/ThreeDScrollBar;->a(Landroid/view/MotionEvent;)V

    .line 86
    invoke-static {}, Landroid/view/VelocityTracker;->obtain()Landroid/view/VelocityTracker;

    move-result-object p1

    iput-object p1, p0, Lcom/oplus/camera/ui/menu/levelcontrol/ThreeDScrollBar;->x:Landroid/view/VelocityTracker;

    goto/16 :goto_1

    .line 140
    :cond_6
    iget-object v1, p0, Lcom/oplus/camera/ui/menu/levelcontrol/ThreeDScrollBar;->x:Landroid/view/VelocityTracker;

    if-eqz v1, :cond_7

    .line 141
    invoke-virtual {v1}, Landroid/view/VelocityTracker;->recycle()V

    const/4 v1, 0x0

    .line 142
    iput-object v1, p0, Lcom/oplus/camera/ui/menu/levelcontrol/ThreeDScrollBar;->x:Landroid/view/VelocityTracker;

    .line 145
    :cond_7
    iget v1, p0, Lcom/oplus/camera/ui/menu/levelcontrol/ThreeDScrollBar;->z:F

    sub-float/2addr v0, v1

    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v0

    cmpl-float v0, v0, v3

    if-lez v0, :cond_8

    .line 146
    invoke-virtual {p0}, Lcom/oplus/camera/ui/menu/levelcontrol/ThreeDScrollBar;->l()V

    goto/16 :goto_1

    .line 148
    :cond_8
    invoke-virtual {p0, p1}, Lcom/oplus/camera/ui/menu/levelcontrol/ThreeDScrollBar;->b(Landroid/view/MotionEvent;)V

    goto :goto_1

    .line 90
    :cond_9
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionIndex()I

    move-result v1

    .line 91
    invoke-virtual {p1, v1}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v1

    if-ne v1, v2, :cond_a

    .line 99
    iget v1, p0, Lcom/oplus/camera/ui/menu/levelcontrol/ThreeDScrollBar;->A:F

    sub-float v1, v0, v1

    .line 100
    iput v0, p0, Lcom/oplus/camera/ui/menu/levelcontrol/ThreeDScrollBar;->A:F

    goto :goto_0

    .line 102
    :cond_a
    iget v1, p0, Lcom/oplus/camera/ui/menu/levelcontrol/ThreeDScrollBar;->y:F

    sub-float v1, v0, v1

    .line 103
    iput v0, p0, Lcom/oplus/camera/ui/menu/levelcontrol/ThreeDScrollBar;->y:F

    .line 106
    :goto_0
    iget-object v0, p0, Lcom/oplus/camera/ui/menu/levelcontrol/ThreeDScrollBar;->x:Landroid/view/VelocityTracker;

    if-eqz v0, :cond_b

    .line 107
    invoke-virtual {v0, p1}, Landroid/view/VelocityTracker;->addMovement(Landroid/view/MotionEvent;)V

    .line 110
    :cond_b
    invoke-virtual {p0, v1}, Lcom/oplus/camera/ui/menu/levelcontrol/ThreeDScrollBar;->a(F)V

    goto :goto_1

    :cond_c
    const/4 v1, 0x0

    .line 120
    iget-object v4, p0, Lcom/oplus/camera/ui/menu/levelcontrol/ThreeDScrollBar;->x:Landroid/view/VelocityTracker;

    if-eqz v4, :cond_d

    .line 121
    invoke-virtual {v4, p1}, Landroid/view/VelocityTracker;->addMovement(Landroid/view/MotionEvent;)V

    .line 122
    iget-object v1, p0, Lcom/oplus/camera/ui/menu/levelcontrol/ThreeDScrollBar;->x:Landroid/view/VelocityTracker;

    const/16 v4, 0x3e8

    invoke-virtual {v1, v4}, Landroid/view/VelocityTracker;->computeCurrentVelocity(I)V

    .line 123
    iget-object v1, p0, Lcom/oplus/camera/ui/menu/levelcontrol/ThreeDScrollBar;->x:Landroid/view/VelocityTracker;

    invoke-virtual {v1}, Landroid/view/VelocityTracker;->getXVelocity()F

    move-result v1

    .line 124
    iget-object v4, p0, Lcom/oplus/camera/ui/menu/levelcontrol/ThreeDScrollBar;->x:Landroid/view/VelocityTracker;

    invoke-virtual {v4}, Landroid/view/VelocityTracker;->clear()V

    .line 127
    :cond_d
    invoke-static {v1}, Ljava/lang/Math;->abs(F)F

    move-result v4

    const/high16 v5, 0x447a0000    # 1000.0f

    cmpl-float v4, v4, v5

    if-ltz v4, :cond_e

    .line 128
    invoke-virtual {p0, v1}, Lcom/oplus/camera/ui/menu/levelcontrol/ThreeDScrollBar;->b(F)V

    goto :goto_1

    .line 130
    :cond_e
    iget v1, p0, Lcom/oplus/camera/ui/menu/levelcontrol/ThreeDScrollBar;->z:F

    sub-float/2addr v0, v1

    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v0

    cmpl-float v0, v0, v3

    if-lez v0, :cond_f

    .line 131
    invoke-virtual {p0}, Lcom/oplus/camera/ui/menu/levelcontrol/ThreeDScrollBar;->l()V

    goto :goto_1

    .line 133
    :cond_f
    invoke-virtual {p0, p1}, Lcom/oplus/camera/ui/menu/levelcontrol/ThreeDScrollBar;->b(Landroid/view/MotionEvent;)V

    goto :goto_1

    .line 77
    :cond_10
    invoke-virtual {p0}, Lcom/oplus/camera/ui/menu/levelcontrol/ThreeDScrollBar;->j()V

    .line 78
    iput v0, p0, Lcom/oplus/camera/ui/menu/levelcontrol/ThreeDScrollBar;->z:F

    .line 79
    iput v0, p0, Lcom/oplus/camera/ui/menu/levelcontrol/ThreeDScrollBar;->y:F

    .line 80
    invoke-static {}, Landroid/view/VelocityTracker;->obtain()Landroid/view/VelocityTracker;

    move-result-object p1

    iput-object p1, p0, Lcom/oplus/camera/ui/menu/levelcontrol/ThreeDScrollBar;->x:Landroid/view/VelocityTracker;

    :goto_1
    return v2
.end method
