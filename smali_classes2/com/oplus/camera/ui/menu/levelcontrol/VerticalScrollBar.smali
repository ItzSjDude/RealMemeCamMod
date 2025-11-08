.class public Lcom/oplus/camera/ui/menu/levelcontrol/VerticalScrollBar;
.super Lcom/oplus/camera/ui/menu/levelcontrol/b;
.source "VerticalScrollBar.java"


# instance fields
.field private A:Landroid/view/animation/Interpolator;

.field private w:Landroid/view/VelocityTracker;

.field private x:F

.field private y:F

.field private z:F


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2

    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 36
    invoke-direct {p0, p1, v0, v1}, Lcom/oplus/camera/ui/menu/levelcontrol/VerticalScrollBar;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    const/4 v0, 0x0

    .line 40
    invoke-direct {p0, p1, p2, v0}, Lcom/oplus/camera/ui/menu/levelcontrol/VerticalScrollBar;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 3

    .line 44
    invoke-direct {p0, p1, p2, p3}, Lcom/oplus/camera/ui/menu/levelcontrol/b;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    const/4 p2, 0x0

    .line 30
    iput p2, p0, Lcom/oplus/camera/ui/menu/levelcontrol/VerticalScrollBar;->x:F

    .line 31
    iput p2, p0, Lcom/oplus/camera/ui/menu/levelcontrol/VerticalScrollBar;->y:F

    .line 32
    iput p2, p0, Lcom/oplus/camera/ui/menu/levelcontrol/VerticalScrollBar;->z:F

    .line 33
    new-instance p3, Landroid/view/animation/PathInterpolator;

    const v0, 0x3dcccccd    # 0.1f

    const v1, 0x3ecccccd    # 0.4f

    const v2, 0x3f333333    # 0.7f

    invoke-direct {p3, p2, v0, v1, v2}, Landroid/view/animation/PathInterpolator;-><init>(FFFF)V

    iput-object p3, p0, Lcom/oplus/camera/ui/menu/levelcontrol/VerticalScrollBar;->A:Landroid/view/animation/Interpolator;

    .line 46
    new-instance p2, Lcom/oplus/camera/ui/menu/levelcontrol/m;

    iget p3, p0, Lcom/oplus/camera/ui/menu/levelcontrol/VerticalScrollBar;->h:I

    iget v0, p0, Lcom/oplus/camera/ui/menu/levelcontrol/VerticalScrollBar;->i:I

    invoke-direct {p2, p1, p3, v0}, Lcom/oplus/camera/ui/menu/levelcontrol/m;-><init>(Landroid/content/Context;II)V

    iput-object p2, p0, Lcom/oplus/camera/ui/menu/levelcontrol/VerticalScrollBar;->c:Lcom/oplus/camera/ui/menu/levelcontrol/j;

    .line 47
    sget-object p2, Lcom/oplus/camera/ui/inverse/e;->INS:Lcom/oplus/camera/ui/inverse/e;

    iget-object p3, p0, Lcom/oplus/camera/ui/menu/levelcontrol/VerticalScrollBar;->c:Lcom/oplus/camera/ui/menu/levelcontrol/j;

    invoke-virtual {p2, p1, p3}, Lcom/oplus/camera/ui/inverse/e;->registerInverse(Landroid/content/Context;Lcom/oplus/camera/ui/inverse/a;)V

    .line 48
    iget-object p1, p0, Lcom/oplus/camera/ui/menu/levelcontrol/VerticalScrollBar;->c:Lcom/oplus/camera/ui/menu/levelcontrol/j;

    iget-object p0, p0, Lcom/oplus/camera/ui/menu/levelcontrol/VerticalScrollBar;->v:Lcom/oplus/camera/ui/menu/levelcontrol/j$a;

    invoke-virtual {p1, p0}, Lcom/oplus/camera/ui/menu/levelcontrol/j;->a(Lcom/oplus/camera/ui/menu/levelcontrol/j$a;)V

    return-void
.end method

.method private getNegativeLimit()F
    .locals 1

    .line 351
    invoke-virtual {p0}, Lcom/oplus/camera/ui/menu/levelcontrol/VerticalScrollBar;->getModelNum()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    invoke-virtual {p0, v0}, Lcom/oplus/camera/ui/menu/levelcontrol/VerticalScrollBar;->d(I)F

    move-result v0

    iget p0, p0, Lcom/oplus/camera/ui/menu/levelcontrol/VerticalScrollBar;->o:F

    sub-float/2addr v0, p0

    return v0
.end method

.method private getPositiveLimit()F
    .locals 1

    const/4 v0, 0x0

    .line 343
    invoke-virtual {p0, v0}, Lcom/oplus/camera/ui/menu/levelcontrol/VerticalScrollBar;->d(I)F

    move-result v0

    iget p0, p0, Lcom/oplus/camera/ui/menu/levelcontrol/VerticalScrollBar;->n:F

    add-float/2addr v0, p0

    return v0
.end method

.method private m()Z
    .locals 0

    .line 194
    iget p0, p0, Lcom/oplus/camera/ui/menu/levelcontrol/VerticalScrollBar;->i:I

    if-nez p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method


# virtual methods
.method protected a(F)V
    .locals 4

    .line 68
    invoke-direct {p0}, Lcom/oplus/camera/ui/menu/levelcontrol/VerticalScrollBar;->getPositiveLimit()F

    move-result v0

    .line 69
    invoke-direct {p0}, Lcom/oplus/camera/ui/menu/levelcontrol/VerticalScrollBar;->getNegativeLimit()F

    move-result v1

    .line 70
    invoke-virtual {p0}, Lcom/oplus/camera/ui/menu/levelcontrol/VerticalScrollBar;->getCurrPosition()F

    move-result v2

    add-float/2addr v2, p1

    cmpl-float v0, v2, v0

    const v3, 0x3ecccccd    # 0.4f

    if-lez v0, :cond_0

    .line 73
    invoke-virtual {p0}, Lcom/oplus/camera/ui/menu/levelcontrol/VerticalScrollBar;->getCurrPosition()F

    move-result v0

    :goto_0
    mul-float/2addr p1, v3

    add-float v2, v0, p1

    goto :goto_1

    :cond_0
    cmpg-float v0, v2, v1

    if-gtz v0, :cond_1

    .line 75
    invoke-virtual {p0}, Lcom/oplus/camera/ui/menu/levelcontrol/VerticalScrollBar;->getCurrPosition()F

    move-result v0

    goto :goto_0

    :cond_1
    :goto_1
    const/4 p1, 0x1

    .line 83
    invoke-virtual {p0, v2, p1}, Lcom/oplus/camera/ui/menu/levelcontrol/VerticalScrollBar;->a(FZ)V

    return-void
.end method

.method protected a(Landroid/view/MotionEvent;)V
    .locals 2

    .line 53
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getPointerCount()I

    move-result v0

    if-lez v0, :cond_0

    const/4 v0, 0x0

    .line 54
    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v0

    .line 55
    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->findPointerIndex(I)I

    move-result v0

    .line 56
    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->getY(I)F

    move-result v0

    iput v0, p0, Lcom/oplus/camera/ui/menu/levelcontrol/VerticalScrollBar;->z:F

    .line 59
    :cond_0
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getPointerCount()I

    move-result v0

    const/4 v1, 0x1

    if-ge v1, v0, :cond_1

    .line 60
    invoke-virtual {p1, v1}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v0

    .line 61
    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->findPointerIndex(I)I

    move-result v0

    .line 62
    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->getY(I)F

    move-result p1

    iput p1, p0, Lcom/oplus/camera/ui/menu/levelcontrol/VerticalScrollBar;->x:F

    :cond_1
    return-void
.end method

.method protected b(F)V
    .locals 9

    .line 139
    invoke-virtual {p0}, Lcom/oplus/camera/ui/menu/levelcontrol/VerticalScrollBar;->k()Z

    move-result v0

    const-string v1, "VerticalScrollBar"

    if-nez v0, :cond_0

    const-string p1, "scrollToByFling, texture not init, so return"

    .line 140
    invoke-static {v1, p1}, Lcom/oplus/camera/e;->f(Ljava/lang/String;Ljava/lang/String;)V

    .line 142
    invoke-virtual {p0}, Lcom/oplus/camera/ui/menu/levelcontrol/VerticalScrollBar;->l()V

    return-void

    :cond_0
    const v0, 0x3da3d70a    # 0.08f

    mul-float/2addr v0, p1

    .line 147
    invoke-virtual {p0}, Lcom/oplus/camera/ui/menu/levelcontrol/VerticalScrollBar;->getElementHeight()F

    move-result v2

    const v3, 0x46ea6000    # 30000.0f

    div-float v3, p1, v3

    invoke-static {v3}, Ljava/lang/Math;->abs(F)F

    move-result v3

    mul-float/2addr v2, v3

    .line 148
    invoke-direct {p0}, Lcom/oplus/camera/ui/menu/levelcontrol/VerticalScrollBar;->getPositiveLimit()F

    move-result v3

    .line 149
    invoke-direct {p0}, Lcom/oplus/camera/ui/menu/levelcontrol/VerticalScrollBar;->getNegativeLimit()F

    move-result v4

    .line 150
    invoke-virtual {p0}, Lcom/oplus/camera/ui/menu/levelcontrol/VerticalScrollBar;->getCurrPosition()F

    move-result v5

    add-float/2addr v5, v0

    const/16 v0, 0x1a

    .line 153
    invoke-virtual {p0}, Lcom/oplus/camera/ui/menu/levelcontrol/VerticalScrollBar;->getCurrPosition()F

    move-result v6

    cmpl-float v6, v6, v3

    if-gtz v6, :cond_6

    invoke-virtual {p0}, Lcom/oplus/camera/ui/menu/levelcontrol/VerticalScrollBar;->getCurrPosition()F

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

    .line 160
    :cond_2
    invoke-virtual {p0}, Lcom/oplus/camera/ui/menu/levelcontrol/VerticalScrollBar;->getCurrPosition()F

    move-result v0

    invoke-virtual {p0, v0}, Lcom/oplus/camera/ui/menu/levelcontrol/VerticalScrollBar;->c(F)I

    move-result v0

    invoke-virtual {p0, v5}, Lcom/oplus/camera/ui/menu/levelcontrol/VerticalScrollBar;->c(F)I

    move-result v6

    sub-int/2addr v0, v6

    invoke-static {v0}, Ljava/lang/Math;->abs(I)I

    move-result v0

    mul-int/lit8 v0, v0, 0x2

    .line 162
    iget-object v6, p0, Lcom/oplus/camera/ui/menu/levelcontrol/VerticalScrollBar;->A:Landroid/view/animation/Interpolator;

    iget-object v7, p0, Lcom/oplus/camera/ui/menu/levelcontrol/VerticalScrollBar;->u:Lcom/oplus/camera/ui/menu/levelcontrol/j$b;

    invoke-virtual {p0, v5, v0, v6, v7}, Lcom/oplus/camera/ui/menu/levelcontrol/VerticalScrollBar;->a(FILandroid/view/animation/Interpolator;Lcom/oplus/camera/ui/menu/levelcontrol/j$b;)Z

    goto :goto_1

    :cond_3
    cmpg-float v6, v5, v4

    if-gtz v6, :cond_5

    sub-float v0, v4, v2

    cmpg-float v6, v5, v0

    if-gez v6, :cond_4

    move v5, v0

    .line 168
    :cond_4
    invoke-virtual {p0}, Lcom/oplus/camera/ui/menu/levelcontrol/VerticalScrollBar;->getCurrPosition()F

    move-result v0

    invoke-virtual {p0, v0}, Lcom/oplus/camera/ui/menu/levelcontrol/VerticalScrollBar;->c(F)I

    move-result v0

    invoke-virtual {p0, v5}, Lcom/oplus/camera/ui/menu/levelcontrol/VerticalScrollBar;->c(F)I

    move-result v6

    sub-int/2addr v0, v6

    invoke-static {v0}, Ljava/lang/Math;->abs(I)I

    move-result v0

    mul-int/lit8 v0, v0, 0x2

    .line 170
    iget-object v6, p0, Lcom/oplus/camera/ui/menu/levelcontrol/VerticalScrollBar;->A:Landroid/view/animation/Interpolator;

    iget-object v7, p0, Lcom/oplus/camera/ui/menu/levelcontrol/VerticalScrollBar;->u:Lcom/oplus/camera/ui/menu/levelcontrol/j$b;

    invoke-virtual {p0, v5, v0, v6, v7}, Lcom/oplus/camera/ui/menu/levelcontrol/VerticalScrollBar;->a(FILandroid/view/animation/Interpolator;Lcom/oplus/camera/ui/menu/levelcontrol/j$b;)Z

    goto :goto_1

    .line 172
    :cond_5
    invoke-virtual {p0}, Lcom/oplus/camera/ui/menu/levelcontrol/VerticalScrollBar;->getCurrPosition()F

    move-result v6

    invoke-virtual {p0, v6}, Lcom/oplus/camera/ui/menu/levelcontrol/VerticalScrollBar;->c(F)I

    move-result v6

    invoke-virtual {p0, v5}, Lcom/oplus/camera/ui/menu/levelcontrol/VerticalScrollBar;->c(F)I

    move-result v7

    sub-int/2addr v6, v7

    invoke-static {v6}, Ljava/lang/Math;->abs(I)I

    move-result v6

    mul-int/lit8 v6, v6, 0x2

    add-int/2addr v0, v6

    .line 173
    invoke-virtual {p0, v5}, Lcom/oplus/camera/ui/menu/levelcontrol/VerticalScrollBar;->c(F)I

    move-result v6

    invoke-virtual {p0, v6}, Lcom/oplus/camera/ui/menu/levelcontrol/VerticalScrollBar;->d(I)F

    move-result v6

    iget-object v7, p0, Lcom/oplus/camera/ui/menu/levelcontrol/VerticalScrollBar;->g:Landroid/view/animation/Interpolator;

    iget-object v8, p0, Lcom/oplus/camera/ui/menu/levelcontrol/VerticalScrollBar;->s:Lcom/oplus/camera/ui/menu/levelcontrol/j$b;

    invoke-virtual {p0, v6, v0, v7, v8}, Lcom/oplus/camera/ui/menu/levelcontrol/VerticalScrollBar;->a(FILandroid/view/animation/Interpolator;Lcom/oplus/camera/ui/menu/levelcontrol/j$b;)Z

    goto :goto_1

    .line 154
    :cond_6
    :goto_0
    invoke-virtual {p0}, Lcom/oplus/camera/ui/menu/levelcontrol/VerticalScrollBar;->l()V

    .line 176
    :goto_1
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "scrollToByFling, toPos: "

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

    const-string v0, ", velocityY: "

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
    .locals 4

    .line 106
    invoke-virtual {p0}, Lcom/oplus/camera/ui/menu/levelcontrol/VerticalScrollBar;->k()Z

    move-result v0

    const-string v1, "VerticalScrollBar"

    if-nez v0, :cond_0

    const-string p1, "scrollToByClick, texture not init, so return"

    .line 107
    invoke-static {v1, p1}, Lcom/oplus/camera/e;->f(Ljava/lang/String;Ljava/lang/String;)V

    .line 109
    invoke-virtual {p0}, Lcom/oplus/camera/ui/menu/levelcontrol/VerticalScrollBar;->l()V

    return-void

    .line 113
    :cond_0
    iget v0, p0, Lcom/oplus/camera/ui/menu/levelcontrol/VerticalScrollBar;->k:F

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result p1

    sub-float/2addr v0, p1

    .line 114
    invoke-direct {p0}, Lcom/oplus/camera/ui/menu/levelcontrol/VerticalScrollBar;->getPositiveLimit()F

    move-result p1

    .line 115
    invoke-direct {p0}, Lcom/oplus/camera/ui/menu/levelcontrol/VerticalScrollBar;->getNegativeLimit()F

    move-result v2

    .line 116
    invoke-virtual {p0}, Lcom/oplus/camera/ui/menu/levelcontrol/VerticalScrollBar;->getCurrPosition()F

    move-result v3

    add-float/2addr v3, v0

    cmpl-float p1, v3, p1

    if-gtz p1, :cond_4

    cmpg-float p1, v3, v2

    if-gtz p1, :cond_1

    goto :goto_0

    .line 123
    :cond_1
    invoke-virtual {p0, v3}, Lcom/oplus/camera/ui/menu/levelcontrol/VerticalScrollBar;->c(F)I

    move-result p1

    .line 125
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "scrollToByClick, toPos: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v2, ", index: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/oplus/camera/ui/menu/levelcontrol/VerticalScrollBar;->f:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " -> "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/oplus/camera/e;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 127
    iget-object v0, p0, Lcom/oplus/camera/ui/menu/levelcontrol/VerticalScrollBar;->d:Lcom/oplus/camera/ui/menu/levelcontrol/b$a;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/oplus/camera/ui/menu/levelcontrol/VerticalScrollBar;->d:Lcom/oplus/camera/ui/menu/levelcontrol/b$a;

    invoke-interface {v0, p1}, Lcom/oplus/camera/ui/menu/levelcontrol/b$a;->a(I)Z

    move-result v0

    if-nez v0, :cond_3

    .line 128
    iget-object v0, p0, Lcom/oplus/camera/ui/menu/levelcontrol/VerticalScrollBar;->c:Lcom/oplus/camera/ui/menu/levelcontrol/j;

    if-eqz v0, :cond_2

    invoke-virtual {p0}, Lcom/oplus/camera/ui/menu/levelcontrol/VerticalScrollBar;->getCurrPosition()F

    move-result v0

    sub-float/2addr v3, v0

    const/4 v0, 0x0

    invoke-static {v3, v0}, Ljava/lang/Float;->compare(FF)I

    move-result v0

    if-eqz v0, :cond_2

    const/4 v0, 0x1

    .line 129
    iput-boolean v0, p0, Lcom/oplus/camera/ui/menu/levelcontrol/VerticalScrollBar;->e:Z

    const/4 v0, 0x0

    .line 130
    invoke-virtual {p0, p1, v0}, Lcom/oplus/camera/ui/menu/levelcontrol/VerticalScrollBar;->a(IZ)V

    .line 133
    :cond_2
    invoke-virtual {p0, p1}, Lcom/oplus/camera/ui/menu/levelcontrol/VerticalScrollBar;->d(I)F

    move-result p1

    const/16 v0, 0x1a

    iget-object v1, p0, Lcom/oplus/camera/ui/menu/levelcontrol/VerticalScrollBar;->g:Landroid/view/animation/Interpolator;

    iget-object v2, p0, Lcom/oplus/camera/ui/menu/levelcontrol/VerticalScrollBar;->t:Lcom/oplus/camera/ui/menu/levelcontrol/j$b;

    invoke-virtual {p0, p1, v0, v1, v2}, Lcom/oplus/camera/ui/menu/levelcontrol/VerticalScrollBar;->a(FILandroid/view/animation/Interpolator;Lcom/oplus/camera/ui/menu/levelcontrol/j$b;)Z

    :cond_3
    return-void

    .line 119
    :cond_4
    :goto_0
    invoke-virtual {p0}, Lcom/oplus/camera/ui/menu/levelcontrol/VerticalScrollBar;->l()V

    return-void
.end method

.method protected c(F)I
    .locals 7

    .line 199
    invoke-virtual {p0}, Lcom/oplus/camera/ui/menu/levelcontrol/VerticalScrollBar;->k()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    const-string p0, "VerticalScrollBar"

    const-string p1, "convertPositionToIndex, texture not init, so return"

    .line 200
    invoke-static {p0, p1}, Lcom/oplus/camera/e;->f(Ljava/lang/String;Ljava/lang/String;)V

    return v1

    .line 205
    :cond_0
    invoke-direct {p0}, Lcom/oplus/camera/ui/menu/levelcontrol/VerticalScrollBar;->getPositiveLimit()F

    move-result v0

    .line 206
    invoke-direct {p0}, Lcom/oplus/camera/ui/menu/levelcontrol/VerticalScrollBar;->getNegativeLimit()F

    move-result v2

    .line 207
    invoke-virtual {p0}, Lcom/oplus/camera/ui/menu/levelcontrol/VerticalScrollBar;->getModelNum()I

    move-result v3

    int-to-float v3, v3

    const/high16 v4, 0x40000000    # 2.0f

    div-float/2addr v3, v4

    iget v4, p0, Lcom/oplus/camera/ui/menu/levelcontrol/VerticalScrollBar;->q:F

    add-float/2addr v4, p1

    .line 208
    invoke-direct {p0}, Lcom/oplus/camera/ui/menu/levelcontrol/VerticalScrollBar;->m()Z

    move-result v5

    if-eqz v5, :cond_1

    invoke-virtual {p0}, Lcom/oplus/camera/ui/menu/levelcontrol/VerticalScrollBar;->getElementHeight()F

    move-result v5

    goto :goto_0

    :cond_1
    invoke-virtual {p0}, Lcom/oplus/camera/ui/menu/levelcontrol/VerticalScrollBar;->getElementWidth()F

    move-result v5

    :goto_0
    invoke-virtual {p0}, Lcom/oplus/camera/ui/menu/levelcontrol/VerticalScrollBar;->getElementGap()F

    move-result v6

    add-float/2addr v5, v6

    div-float/2addr v4, v5

    sub-float/2addr v3, v4

    .line 207
    invoke-static {v3}, Ljava/lang/Math;->round(F)I

    move-result v3

    if-ltz v3, :cond_5

    cmpl-float v0, p1, v0

    if-lez v0, :cond_2

    goto :goto_2

    .line 216
    :cond_2
    invoke-virtual {p0}, Lcom/oplus/camera/ui/menu/levelcontrol/VerticalScrollBar;->getModelNum()I

    move-result v0

    if-ge v3, v0, :cond_4

    cmpg-float p1, p1, v2

    if-gtz p1, :cond_3

    goto :goto_1

    :cond_3
    move v1, v3

    goto :goto_2

    .line 217
    :cond_4
    :goto_1
    invoke-virtual {p0}, Lcom/oplus/camera/ui/menu/levelcontrol/VerticalScrollBar;->getModelNum()I

    move-result p0

    add-int/lit8 v1, p0, -0x1

    :cond_5
    :goto_2
    return v1
.end method

.method protected d(I)F
    .locals 3

    .line 183
    invoke-direct {p0}, Lcom/oplus/camera/ui/menu/levelcontrol/VerticalScrollBar;->m()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/oplus/camera/ui/menu/levelcontrol/VerticalScrollBar;->getElementHeight()F

    move-result v0

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Lcom/oplus/camera/ui/menu/levelcontrol/VerticalScrollBar;->getElementWidth()F

    move-result v0

    :goto_0
    invoke-virtual {p0}, Lcom/oplus/camera/ui/menu/levelcontrol/VerticalScrollBar;->getElementGap()F

    move-result v1

    add-float/2addr v0, v1

    invoke-virtual {p0}, Lcom/oplus/camera/ui/menu/levelcontrol/VerticalScrollBar;->getModelNum()I

    move-result v1

    int-to-float v1, v1

    const/high16 v2, 0x40000000    # 2.0f

    div-float/2addr v1, v2

    int-to-float p1, p1

    sub-float/2addr v1, p1

    mul-float/2addr v0, v1

    invoke-virtual {p0}, Lcom/oplus/camera/ui/menu/levelcontrol/VerticalScrollBar;->getElementImageSize()F

    move-result p1

    div-float/2addr p1, v2

    sub-float/2addr v0, p1

    .line 184
    invoke-virtual {p0}, Lcom/oplus/camera/ui/menu/levelcontrol/VerticalScrollBar;->getElementGap()F

    move-result p1

    sub-float/2addr v0, p1

    iget p0, p0, Lcom/oplus/camera/ui/menu/levelcontrol/VerticalScrollBar;->q:F

    sub-float/2addr v0, p0

    return v0
.end method

.method protected l()V
    .locals 4

    .line 90
    iget-object v0, p0, Lcom/oplus/camera/ui/menu/levelcontrol/VerticalScrollBar;->d:Lcom/oplus/camera/ui/menu/levelcontrol/b$a;

    if-eqz v0, :cond_0

    .line 91
    iget-object v0, p0, Lcom/oplus/camera/ui/menu/levelcontrol/VerticalScrollBar;->d:Lcom/oplus/camera/ui/menu/levelcontrol/b$a;

    invoke-interface {v0}, Lcom/oplus/camera/ui/menu/levelcontrol/b$a;->d()I

    move-result v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 94
    :goto_0
    invoke-virtual {p0}, Lcom/oplus/camera/ui/menu/levelcontrol/VerticalScrollBar;->getCurrPosition()F

    move-result v1

    .line 95
    invoke-virtual {p0, v0}, Lcom/oplus/camera/ui/menu/levelcontrol/VerticalScrollBar;->d(I)F

    move-result v0

    .line 96
    invoke-static {v1, v0}, Ljava/lang/Math;->min(FF)F

    move-result v1

    .line 97
    invoke-virtual {p0, v1}, Lcom/oplus/camera/ui/menu/levelcontrol/VerticalScrollBar;->c(F)I

    move-result v1

    invoke-virtual {p0, v1}, Lcom/oplus/camera/ui/menu/levelcontrol/VerticalScrollBar;->d(I)F

    move-result v1

    .line 99
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "scrollNear, limitPos: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v0, ", currPos: "

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/oplus/camera/ui/menu/levelcontrol/VerticalScrollBar;->getCurrPosition()F

    move-result v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v0, " -> "

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v2, "VerticalScrollBar"

    invoke-static {v2, v0}, Lcom/oplus/camera/e;->a(Ljava/lang/String;Ljava/lang/String;)V

    const/16 v0, 0x1a

    .line 101
    iget-object v2, p0, Lcom/oplus/camera/ui/menu/levelcontrol/VerticalScrollBar;->g:Landroid/view/animation/Interpolator;

    iget-object v3, p0, Lcom/oplus/camera/ui/menu/levelcontrol/VerticalScrollBar;->s:Lcom/oplus/camera/ui/menu/levelcontrol/j$b;

    invoke-virtual {p0, v1, v0, v2, v3}, Lcom/oplus/camera/ui/menu/levelcontrol/VerticalScrollBar;->a(FILandroid/view/animation/Interpolator;Lcom/oplus/camera/ui/menu/levelcontrol/j$b;)Z

    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 6

    .line 225
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v0

    .line 227
    iget-boolean v1, p0, Lcom/oplus/camera/ui/menu/levelcontrol/VerticalScrollBar;->e:Z

    const/4 v2, 0x1

    if-eqz v1, :cond_1

    .line 228
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result p1

    if-nez p1, :cond_0

    const-string p1, "VerticalScrollBar"

    const-string v1, "onTouchEvent, click scrolling, reset touch y"

    .line 229
    invoke-static {p1, v1}, Lcom/oplus/camera/e;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 231
    iput v0, p0, Lcom/oplus/camera/ui/menu/levelcontrol/VerticalScrollBar;->y:F

    .line 232
    iput v0, p0, Lcom/oplus/camera/ui/menu/levelcontrol/VerticalScrollBar;->z:F

    .line 233
    invoke-static {}, Landroid/view/VelocityTracker;->obtain()Landroid/view/VelocityTracker;

    move-result-object p1

    iput-object p1, p0, Lcom/oplus/camera/ui/menu/levelcontrol/VerticalScrollBar;->w:Landroid/view/VelocityTracker;

    :cond_0
    return v2

    .line 239
    :cond_1
    iget-object v1, p0, Lcom/oplus/camera/ui/menu/levelcontrol/VerticalScrollBar;->d:Lcom/oplus/camera/ui/menu/levelcontrol/b$a;

    invoke-interface {v1}, Lcom/oplus/camera/ui/menu/levelcontrol/b$a;->b()Z

    move-result v1

    if-nez v1, :cond_3

    .line 240
    invoke-virtual {p0}, Lcom/oplus/camera/ui/menu/levelcontrol/VerticalScrollBar;->l()V

    .line 242
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v0

    if-nez v0, :cond_2

    .line 243
    invoke-virtual {p0, p1}, Lcom/oplus/camera/ui/menu/levelcontrol/VerticalScrollBar;->a(Landroid/view/MotionEvent;)V

    :cond_2
    return v2

    .line 253
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

    .line 292
    :cond_4
    invoke-virtual {p0, p1}, Lcom/oplus/camera/ui/menu/levelcontrol/VerticalScrollBar;->a(Landroid/view/MotionEvent;)V

    goto/16 :goto_1

    .line 262
    :cond_5
    invoke-virtual {p0}, Lcom/oplus/camera/ui/menu/levelcontrol/VerticalScrollBar;->j()V

    .line 263
    invoke-virtual {p0, p1}, Lcom/oplus/camera/ui/menu/levelcontrol/VerticalScrollBar;->a(Landroid/view/MotionEvent;)V

    .line 264
    invoke-static {}, Landroid/view/VelocityTracker;->obtain()Landroid/view/VelocityTracker;

    move-result-object p1

    iput-object p1, p0, Lcom/oplus/camera/ui/menu/levelcontrol/VerticalScrollBar;->w:Landroid/view/VelocityTracker;

    goto/16 :goto_1

    .line 318
    :cond_6
    iget-object v1, p0, Lcom/oplus/camera/ui/menu/levelcontrol/VerticalScrollBar;->w:Landroid/view/VelocityTracker;

    if-eqz v1, :cond_7

    .line 319
    invoke-virtual {v1}, Landroid/view/VelocityTracker;->recycle()V

    const/4 v1, 0x0

    .line 320
    iput-object v1, p0, Lcom/oplus/camera/ui/menu/levelcontrol/VerticalScrollBar;->w:Landroid/view/VelocityTracker;

    .line 323
    :cond_7
    iget v1, p0, Lcom/oplus/camera/ui/menu/levelcontrol/VerticalScrollBar;->y:F

    sub-float/2addr v0, v1

    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v0

    cmpl-float v0, v0, v3

    if-lez v0, :cond_8

    .line 324
    invoke-virtual {p0}, Lcom/oplus/camera/ui/menu/levelcontrol/VerticalScrollBar;->l()V

    goto/16 :goto_1

    .line 326
    :cond_8
    invoke-virtual {p0, p1}, Lcom/oplus/camera/ui/menu/levelcontrol/VerticalScrollBar;->b(Landroid/view/MotionEvent;)V

    goto :goto_1

    .line 268
    :cond_9
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionIndex()I

    move-result v1

    .line 269
    invoke-virtual {p1, v1}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v1

    if-ne v1, v2, :cond_a

    .line 277
    iget v1, p0, Lcom/oplus/camera/ui/menu/levelcontrol/VerticalScrollBar;->x:F

    sub-float v1, v0, v1

    .line 278
    iput v0, p0, Lcom/oplus/camera/ui/menu/levelcontrol/VerticalScrollBar;->x:F

    goto :goto_0

    .line 280
    :cond_a
    iget v1, p0, Lcom/oplus/camera/ui/menu/levelcontrol/VerticalScrollBar;->z:F

    sub-float v1, v0, v1

    .line 281
    iput v0, p0, Lcom/oplus/camera/ui/menu/levelcontrol/VerticalScrollBar;->z:F

    .line 284
    :goto_0
    iget-object v0, p0, Lcom/oplus/camera/ui/menu/levelcontrol/VerticalScrollBar;->w:Landroid/view/VelocityTracker;

    if-eqz v0, :cond_b

    .line 285
    invoke-virtual {v0, p1}, Landroid/view/VelocityTracker;->addMovement(Landroid/view/MotionEvent;)V

    .line 288
    :cond_b
    invoke-virtual {p0, v1}, Lcom/oplus/camera/ui/menu/levelcontrol/VerticalScrollBar;->a(F)V

    goto :goto_1

    :cond_c
    const/4 v1, 0x0

    .line 298
    iget-object v4, p0, Lcom/oplus/camera/ui/menu/levelcontrol/VerticalScrollBar;->w:Landroid/view/VelocityTracker;

    if-eqz v4, :cond_d

    .line 299
    invoke-virtual {v4, p1}, Landroid/view/VelocityTracker;->addMovement(Landroid/view/MotionEvent;)V

    .line 300
    iget-object v1, p0, Lcom/oplus/camera/ui/menu/levelcontrol/VerticalScrollBar;->w:Landroid/view/VelocityTracker;

    const/16 v4, 0x3e8

    invoke-virtual {v1, v4}, Landroid/view/VelocityTracker;->computeCurrentVelocity(I)V

    .line 301
    iget-object v1, p0, Lcom/oplus/camera/ui/menu/levelcontrol/VerticalScrollBar;->w:Landroid/view/VelocityTracker;

    invoke-virtual {v1}, Landroid/view/VelocityTracker;->getYVelocity()F

    move-result v1

    .line 302
    iget-object v4, p0, Lcom/oplus/camera/ui/menu/levelcontrol/VerticalScrollBar;->w:Landroid/view/VelocityTracker;

    invoke-virtual {v4}, Landroid/view/VelocityTracker;->clear()V

    .line 305
    :cond_d
    invoke-static {v1}, Ljava/lang/Math;->abs(F)F

    move-result v4

    const/high16 v5, 0x447a0000    # 1000.0f

    cmpl-float v4, v4, v5

    if-ltz v4, :cond_e

    .line 306
    invoke-virtual {p0, v1}, Lcom/oplus/camera/ui/menu/levelcontrol/VerticalScrollBar;->b(F)V

    goto :goto_1

    .line 308
    :cond_e
    iget v1, p0, Lcom/oplus/camera/ui/menu/levelcontrol/VerticalScrollBar;->y:F

    sub-float/2addr v0, v1

    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v0

    cmpl-float v0, v0, v3

    if-lez v0, :cond_f

    .line 309
    invoke-virtual {p0}, Lcom/oplus/camera/ui/menu/levelcontrol/VerticalScrollBar;->l()V

    goto :goto_1

    .line 311
    :cond_f
    invoke-virtual {p0, p1}, Lcom/oplus/camera/ui/menu/levelcontrol/VerticalScrollBar;->b(Landroid/view/MotionEvent;)V

    goto :goto_1

    .line 255
    :cond_10
    invoke-virtual {p0}, Lcom/oplus/camera/ui/menu/levelcontrol/VerticalScrollBar;->j()V

    .line 256
    iput v0, p0, Lcom/oplus/camera/ui/menu/levelcontrol/VerticalScrollBar;->y:F

    .line 257
    iput v0, p0, Lcom/oplus/camera/ui/menu/levelcontrol/VerticalScrollBar;->z:F

    .line 258
    invoke-static {}, Landroid/view/VelocityTracker;->obtain()Landroid/view/VelocityTracker;

    move-result-object p1

    iput-object p1, p0, Lcom/oplus/camera/ui/menu/levelcontrol/VerticalScrollBar;->w:Landroid/view/VelocityTracker;

    :goto_1
    return v2
.end method
