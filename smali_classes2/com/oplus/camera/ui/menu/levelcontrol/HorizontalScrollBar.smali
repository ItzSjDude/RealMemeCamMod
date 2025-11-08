.class public Lcom/oplus/camera/ui/menu/levelcontrol/HorizontalScrollBar;
.super Lcom/oplus/camera/ui/menu/levelcontrol/b;
.source "HorizontalScrollBar.java"


# instance fields
.field private A:I

.field private final B:Landroid/view/animation/Interpolator;

.field private w:F

.field private x:F

.field private y:F

.field private z:Landroid/view/VelocityTracker;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2

    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 44
    invoke-direct {p0, p1, v0, v1}, Lcom/oplus/camera/ui/menu/levelcontrol/HorizontalScrollBar;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    const/4 v0, 0x0

    .line 48
    invoke-direct {p0, p1, p2, v0}, Lcom/oplus/camera/ui/menu/levelcontrol/HorizontalScrollBar;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1

    .line 52
    invoke-direct {p0, p1, p2, p3}, Lcom/oplus/camera/ui/menu/levelcontrol/b;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    const/4 p2, 0x0

    .line 31
    iput p2, p0, Lcom/oplus/camera/ui/menu/levelcontrol/HorizontalScrollBar;->w:F

    .line 32
    iput p2, p0, Lcom/oplus/camera/ui/menu/levelcontrol/HorizontalScrollBar;->x:F

    .line 33
    iput p2, p0, Lcom/oplus/camera/ui/menu/levelcontrol/HorizontalScrollBar;->y:F

    const/4 p2, 0x0

    .line 35
    iput p2, p0, Lcom/oplus/camera/ui/menu/levelcontrol/HorizontalScrollBar;->A:I

    .line 36
    new-instance p2, Lcom/oplus/camera/ui/menu/levelcontrol/HorizontalScrollBar$1;

    invoke-direct {p2, p0}, Lcom/oplus/camera/ui/menu/levelcontrol/HorizontalScrollBar$1;-><init>(Lcom/oplus/camera/ui/menu/levelcontrol/HorizontalScrollBar;)V

    iput-object p2, p0, Lcom/oplus/camera/ui/menu/levelcontrol/HorizontalScrollBar;->B:Landroid/view/animation/Interpolator;

    .line 54
    new-instance p2, Lcom/oplus/camera/ui/menu/levelcontrol/l;

    iget p3, p0, Lcom/oplus/camera/ui/menu/levelcontrol/HorizontalScrollBar;->h:I

    iget v0, p0, Lcom/oplus/camera/ui/menu/levelcontrol/HorizontalScrollBar;->i:I

    invoke-direct {p2, p1, p3, v0}, Lcom/oplus/camera/ui/menu/levelcontrol/l;-><init>(Landroid/content/Context;II)V

    iput-object p2, p0, Lcom/oplus/camera/ui/menu/levelcontrol/HorizontalScrollBar;->c:Lcom/oplus/camera/ui/menu/levelcontrol/j;

    .line 55
    sget-object p2, Lcom/oplus/camera/ui/inverse/e;->INS:Lcom/oplus/camera/ui/inverse/e;

    iget-object p3, p0, Lcom/oplus/camera/ui/menu/levelcontrol/HorizontalScrollBar;->c:Lcom/oplus/camera/ui/menu/levelcontrol/j;

    invoke-virtual {p2, p1, p3}, Lcom/oplus/camera/ui/inverse/e;->registerInverse(Landroid/content/Context;Lcom/oplus/camera/ui/inverse/a;)V

    .line 56
    iget-object p2, p0, Lcom/oplus/camera/ui/menu/levelcontrol/HorizontalScrollBar;->c:Lcom/oplus/camera/ui/menu/levelcontrol/j;

    iget-object p3, p0, Lcom/oplus/camera/ui/menu/levelcontrol/HorizontalScrollBar;->v:Lcom/oplus/camera/ui/menu/levelcontrol/j$a;

    invoke-virtual {p2, p3}, Lcom/oplus/camera/ui/menu/levelcontrol/j;->a(Lcom/oplus/camera/ui/menu/levelcontrol/j$a;)V

    .line 58
    invoke-direct {p0, p1}, Lcom/oplus/camera/ui/menu/levelcontrol/HorizontalScrollBar;->a(Landroid/content/Context;)V

    return-void
.end method

.method private a(Landroid/content/Context;)V
    .locals 0

    .line 66
    invoke-static {p1}, Landroid/view/ViewConfiguration;->get(Landroid/content/Context;)Landroid/view/ViewConfiguration;

    move-result-object p1

    .line 67
    invoke-virtual {p1}, Landroid/view/ViewConfiguration;->getScaledMaximumFlingVelocity()I

    move-result p1

    iput p1, p0, Lcom/oplus/camera/ui/menu/levelcontrol/HorizontalScrollBar;->A:I

    return-void
.end method

.method private getNegativeLimit()F
    .locals 1

    const/4 v0, 0x0

    .line 385
    invoke-virtual {p0, v0}, Lcom/oplus/camera/ui/menu/levelcontrol/HorizontalScrollBar;->d(I)F

    move-result v0

    iget p0, p0, Lcom/oplus/camera/ui/menu/levelcontrol/HorizontalScrollBar;->l:F

    sub-float/2addr v0, p0

    return v0
.end method

.method private getPositiveLimit()F
    .locals 1

    .line 377
    invoke-virtual {p0}, Lcom/oplus/camera/ui/menu/levelcontrol/HorizontalScrollBar;->getModelNum()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    invoke-virtual {p0, v0}, Lcom/oplus/camera/ui/menu/levelcontrol/HorizontalScrollBar;->d(I)F

    move-result v0

    iget p0, p0, Lcom/oplus/camera/ui/menu/levelcontrol/HorizontalScrollBar;->m:F

    add-float/2addr v0, p0

    return v0
.end method


# virtual methods
.method protected a(F)V
    .locals 4

    .line 87
    invoke-direct {p0}, Lcom/oplus/camera/ui/menu/levelcontrol/HorizontalScrollBar;->getPositiveLimit()F

    move-result v0

    .line 88
    invoke-direct {p0}, Lcom/oplus/camera/ui/menu/levelcontrol/HorizontalScrollBar;->getNegativeLimit()F

    move-result v1

    .line 89
    invoke-virtual {p0}, Lcom/oplus/camera/ui/menu/levelcontrol/HorizontalScrollBar;->getCurrPosition()F

    move-result v2

    sub-float/2addr v2, p1

    cmpl-float v0, v2, v0

    const v3, 0x3ecccccd    # 0.4f

    if-lez v0, :cond_0

    .line 92
    invoke-virtual {p0}, Lcom/oplus/camera/ui/menu/levelcontrol/HorizontalScrollBar;->getCurrPosition()F

    move-result v0

    :goto_0
    mul-float/2addr p1, v3

    sub-float v2, v0, p1

    goto :goto_1

    :cond_0
    cmpg-float v0, v2, v1

    if-gtz v0, :cond_1

    .line 94
    invoke-virtual {p0}, Lcom/oplus/camera/ui/menu/levelcontrol/HorizontalScrollBar;->getCurrPosition()F

    move-result v0

    goto :goto_0

    :cond_1
    :goto_1
    const/4 p1, 0x1

    .line 102
    invoke-virtual {p0, v2, p1}, Lcom/oplus/camera/ui/menu/levelcontrol/HorizontalScrollBar;->a(FZ)V

    return-void
.end method

.method protected a(Landroid/view/MotionEvent;)V
    .locals 2

    .line 72
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getPointerCount()I

    move-result v0

    if-lez v0, :cond_0

    const/4 v0, 0x0

    .line 73
    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v0

    .line 74
    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->findPointerIndex(I)I

    move-result v0

    .line 75
    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->getX(I)F

    move-result v0

    iput v0, p0, Lcom/oplus/camera/ui/menu/levelcontrol/HorizontalScrollBar;->w:F

    .line 78
    :cond_0
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getPointerCount()I

    move-result v0

    const/4 v1, 0x1

    if-ge v1, v0, :cond_1

    .line 79
    invoke-virtual {p1, v1}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v0

    .line 80
    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->findPointerIndex(I)I

    move-result v0

    .line 81
    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->getX(I)F

    move-result p1

    iput p1, p0, Lcom/oplus/camera/ui/menu/levelcontrol/HorizontalScrollBar;->y:F

    :cond_1
    return-void
.end method

.method protected b(F)V
    .locals 9

    .line 178
    invoke-virtual {p0}, Lcom/oplus/camera/ui/menu/levelcontrol/HorizontalScrollBar;->k()Z

    move-result v0

    const-string v1, "HorizontalScrollBar"

    if-nez v0, :cond_0

    const-string p1, "scrollToByFling, texture not init, so return"

    .line 179
    invoke-static {v1, p1}, Lcom/oplus/camera/e;->f(Ljava/lang/String;Ljava/lang/String;)V

    .line 181
    invoke-virtual {p0}, Lcom/oplus/camera/ui/menu/levelcontrol/HorizontalScrollBar;->l()V

    return-void

    :cond_0
    const/high16 v0, 0x3e800000    # 0.25f

    mul-float/2addr v0, p1

    .line 186
    invoke-virtual {p0}, Lcom/oplus/camera/ui/menu/levelcontrol/HorizontalScrollBar;->getElementWidth()F

    move-result v2

    const/high16 v3, 0x40000000    # 2.0f

    div-float/2addr v2, v3

    .line 187
    invoke-direct {p0}, Lcom/oplus/camera/ui/menu/levelcontrol/HorizontalScrollBar;->getPositiveLimit()F

    move-result v3

    add-float/2addr v3, v2

    iget v4, p0, Lcom/oplus/camera/ui/menu/levelcontrol/HorizontalScrollBar;->m:F

    sub-float/2addr v3, v4

    .line 188
    invoke-direct {p0}, Lcom/oplus/camera/ui/menu/levelcontrol/HorizontalScrollBar;->getNegativeLimit()F

    move-result v4

    sub-float/2addr v4, v2

    iget v5, p0, Lcom/oplus/camera/ui/menu/levelcontrol/HorizontalScrollBar;->l:F

    add-float/2addr v4, v5

    .line 189
    invoke-virtual {p0}, Lcom/oplus/camera/ui/menu/levelcontrol/HorizontalScrollBar;->getCurrPosition()F

    move-result v5

    sub-float/2addr v5, v0

    const/16 v0, 0x1a

    .line 192
    invoke-virtual {p0}, Lcom/oplus/camera/ui/menu/levelcontrol/HorizontalScrollBar;->getCurrPosition()F

    move-result v6

    cmpl-float v6, v6, v3

    if-gtz v6, :cond_6

    invoke-virtual {p0}, Lcom/oplus/camera/ui/menu/levelcontrol/HorizontalScrollBar;->getCurrPosition()F

    move-result v6

    cmpg-float v6, v6, v4

    if-gtz v6, :cond_1

    goto/16 :goto_0

    :cond_1
    cmpl-float v6, v5, v3

    const/16 v7, 0xe

    if-lez v6, :cond_3

    add-float v0, v3, v2

    cmpl-float v6, v5, v0

    if-lez v6, :cond_2

    move v5, v0

    .line 199
    :cond_2
    invoke-virtual {p0}, Lcom/oplus/camera/ui/menu/levelcontrol/HorizontalScrollBar;->getCurrPosition()F

    move-result v0

    invoke-virtual {p0, v0}, Lcom/oplus/camera/ui/menu/levelcontrol/HorizontalScrollBar;->c(F)I

    move-result v0

    invoke-virtual {p0, v5}, Lcom/oplus/camera/ui/menu/levelcontrol/HorizontalScrollBar;->c(F)I

    move-result v6

    sub-int/2addr v0, v6

    invoke-static {v0}, Ljava/lang/Math;->abs(I)I

    move-result v0

    mul-int/lit8 v0, v0, 0x2

    .line 200
    invoke-virtual {p0, v7}, Lcom/oplus/camera/ui/menu/levelcontrol/HorizontalScrollBar;->performHapticFeedback(I)Z

    .line 201
    iget-object v6, p0, Lcom/oplus/camera/ui/menu/levelcontrol/HorizontalScrollBar;->B:Landroid/view/animation/Interpolator;

    iget-object v7, p0, Lcom/oplus/camera/ui/menu/levelcontrol/HorizontalScrollBar;->u:Lcom/oplus/camera/ui/menu/levelcontrol/j$b;

    invoke-virtual {p0, v5, v0, v6, v7}, Lcom/oplus/camera/ui/menu/levelcontrol/HorizontalScrollBar;->a(FILandroid/view/animation/Interpolator;Lcom/oplus/camera/ui/menu/levelcontrol/j$b;)Z

    goto :goto_1

    :cond_3
    cmpg-float v6, v5, v4

    if-gtz v6, :cond_5

    sub-float v0, v4, v2

    cmpg-float v6, v5, v0

    if-gez v6, :cond_4

    move v5, v0

    .line 207
    :cond_4
    invoke-virtual {p0}, Lcom/oplus/camera/ui/menu/levelcontrol/HorizontalScrollBar;->getCurrPosition()F

    move-result v0

    invoke-virtual {p0, v0}, Lcom/oplus/camera/ui/menu/levelcontrol/HorizontalScrollBar;->c(F)I

    move-result v0

    invoke-virtual {p0, v5}, Lcom/oplus/camera/ui/menu/levelcontrol/HorizontalScrollBar;->c(F)I

    move-result v6

    sub-int/2addr v0, v6

    invoke-static {v0}, Ljava/lang/Math;->abs(I)I

    move-result v0

    mul-int/lit8 v0, v0, 0x2

    .line 208
    invoke-virtual {p0, v7}, Lcom/oplus/camera/ui/menu/levelcontrol/HorizontalScrollBar;->performHapticFeedback(I)Z

    .line 209
    iget-object v6, p0, Lcom/oplus/camera/ui/menu/levelcontrol/HorizontalScrollBar;->B:Landroid/view/animation/Interpolator;

    iget-object v7, p0, Lcom/oplus/camera/ui/menu/levelcontrol/HorizontalScrollBar;->u:Lcom/oplus/camera/ui/menu/levelcontrol/j$b;

    invoke-virtual {p0, v5, v0, v6, v7}, Lcom/oplus/camera/ui/menu/levelcontrol/HorizontalScrollBar;->a(FILandroid/view/animation/Interpolator;Lcom/oplus/camera/ui/menu/levelcontrol/j$b;)Z

    goto :goto_1

    .line 211
    :cond_5
    invoke-virtual {p0}, Lcom/oplus/camera/ui/menu/levelcontrol/HorizontalScrollBar;->getCurrPosition()F

    move-result v6

    invoke-virtual {p0, v6}, Lcom/oplus/camera/ui/menu/levelcontrol/HorizontalScrollBar;->c(F)I

    move-result v6

    invoke-virtual {p0, v5}, Lcom/oplus/camera/ui/menu/levelcontrol/HorizontalScrollBar;->c(F)I

    move-result v7

    sub-int/2addr v6, v7

    invoke-static {v6}, Ljava/lang/Math;->abs(I)I

    move-result v6

    mul-int/lit8 v6, v6, 0x2

    add-int/2addr v0, v6

    .line 212
    invoke-virtual {p0, v5}, Lcom/oplus/camera/ui/menu/levelcontrol/HorizontalScrollBar;->c(F)I

    move-result v6

    invoke-virtual {p0, v6}, Lcom/oplus/camera/ui/menu/levelcontrol/HorizontalScrollBar;->d(I)F

    move-result v6

    iget-object v7, p0, Lcom/oplus/camera/ui/menu/levelcontrol/HorizontalScrollBar;->B:Landroid/view/animation/Interpolator;

    iget-object v8, p0, Lcom/oplus/camera/ui/menu/levelcontrol/HorizontalScrollBar;->s:Lcom/oplus/camera/ui/menu/levelcontrol/j$b;

    invoke-virtual {p0, v6, v0, v7, v8}, Lcom/oplus/camera/ui/menu/levelcontrol/HorizontalScrollBar;->a(FILandroid/view/animation/Interpolator;Lcom/oplus/camera/ui/menu/levelcontrol/j$b;)Z

    goto :goto_1

    .line 193
    :cond_6
    :goto_0
    invoke-virtual {p0}, Lcom/oplus/camera/ui/menu/levelcontrol/HorizontalScrollBar;->l()V

    .line 215
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

    .line 132
    invoke-virtual {p0}, Lcom/oplus/camera/ui/menu/levelcontrol/HorizontalScrollBar;->k()Z

    move-result v0

    const-string v1, "HorizontalScrollBar"

    if-nez v0, :cond_0

    const-string p1, "scrollToByClick, texture not init, so return"

    .line 133
    invoke-static {v1, p1}, Lcom/oplus/camera/e;->f(Ljava/lang/String;Ljava/lang/String;)V

    .line 135
    invoke-virtual {p0}, Lcom/oplus/camera/ui/menu/levelcontrol/HorizontalScrollBar;->l()V

    return-void

    .line 139
    :cond_0
    iget v0, p0, Lcom/oplus/camera/ui/menu/levelcontrol/HorizontalScrollBar;->j:F

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v2

    sub-float/2addr v0, v2

    .line 140
    invoke-virtual {p0}, Lcom/oplus/camera/ui/menu/levelcontrol/HorizontalScrollBar;->getElementWidth()F

    move-result v2

    const/high16 v3, 0x40000000    # 2.0f

    div-float/2addr v2, v3

    .line 141
    invoke-direct {p0}, Lcom/oplus/camera/ui/menu/levelcontrol/HorizontalScrollBar;->getPositiveLimit()F

    move-result v4

    iget v5, p0, Lcom/oplus/camera/ui/menu/levelcontrol/HorizontalScrollBar;->m:F

    sub-float/2addr v4, v5

    add-float/2addr v4, v2

    .line 142
    invoke-direct {p0}, Lcom/oplus/camera/ui/menu/levelcontrol/HorizontalScrollBar;->getNegativeLimit()F

    move-result v5

    iget v6, p0, Lcom/oplus/camera/ui/menu/levelcontrol/HorizontalScrollBar;->l:F

    add-float/2addr v5, v6

    sub-float/2addr v5, v2

    .line 143
    invoke-virtual {p0}, Lcom/oplus/camera/ui/menu/levelcontrol/HorizontalScrollBar;->getCurrPosition()F

    move-result v2

    sub-float/2addr v2, v0

    cmpl-float v0, v2, v4

    if-gtz v0, :cond_6

    cmpg-float v0, v2, v5

    if-gtz v0, :cond_1

    goto/16 :goto_1

    .line 153
    :cond_1
    invoke-virtual {p0, v2}, Lcom/oplus/camera/ui/menu/levelcontrol/HorizontalScrollBar;->c(F)I

    move-result v0

    .line 155
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "scrollToByClick, toPos: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v5, ", index: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v5, p0, Lcom/oplus/camera/ui/menu/levelcontrol/HorizontalScrollBar;->f:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, " -> "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v1, v4}, Lcom/oplus/camera/e;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 157
    invoke-virtual {p0, v0}, Lcom/oplus/camera/ui/menu/levelcontrol/HorizontalScrollBar;->d(I)F

    move-result v1

    .line 158
    invoke-virtual {p0}, Lcom/oplus/camera/ui/menu/levelcontrol/HorizontalScrollBar;->getElementWidth()F

    move-result v4

    div-float/2addr v4, v3

    sub-float v4, v1, v4

    .line 159
    invoke-virtual {p0}, Lcom/oplus/camera/ui/menu/levelcontrol/HorizontalScrollBar;->getElementWidth()F

    move-result v5

    div-float/2addr v5, v3

    add-float/2addr v1, v5

    cmpl-float v3, v2, v4

    if-lez v3, :cond_5

    cmpg-float v1, v2, v1

    if-gez v1, :cond_5

    .line 161
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result p1

    invoke-virtual {p0}, Lcom/oplus/camera/ui/menu/levelcontrol/HorizontalScrollBar;->getElementWidth()F

    move-result v1

    cmpl-float p1, p1, v1

    if-lez p1, :cond_2

    goto :goto_0

    .line 166
    :cond_2
    iget-object p1, p0, Lcom/oplus/camera/ui/menu/levelcontrol/HorizontalScrollBar;->d:Lcom/oplus/camera/ui/menu/levelcontrol/b$a;

    if-eqz p1, :cond_4

    iget-object p1, p0, Lcom/oplus/camera/ui/menu/levelcontrol/HorizontalScrollBar;->d:Lcom/oplus/camera/ui/menu/levelcontrol/b$a;

    invoke-interface {p1, v0}, Lcom/oplus/camera/ui/menu/levelcontrol/b$a;->a(I)Z

    move-result p1

    if-nez p1, :cond_4

    .line 167
    iget-object p1, p0, Lcom/oplus/camera/ui/menu/levelcontrol/HorizontalScrollBar;->c:Lcom/oplus/camera/ui/menu/levelcontrol/j;

    if-eqz p1, :cond_3

    invoke-virtual {p0}, Lcom/oplus/camera/ui/menu/levelcontrol/HorizontalScrollBar;->getCurrPosition()F

    move-result p1

    sub-float/2addr v2, p1

    const/4 p1, 0x0

    invoke-static {v2, p1}, Ljava/lang/Float;->compare(FF)I

    move-result p1

    if-eqz p1, :cond_3

    const/4 p1, 0x1

    .line 168
    iput-boolean p1, p0, Lcom/oplus/camera/ui/menu/levelcontrol/HorizontalScrollBar;->e:Z

    const/4 p1, 0x0

    .line 169
    invoke-virtual {p0, v0, p1}, Lcom/oplus/camera/ui/menu/levelcontrol/HorizontalScrollBar;->a(IZ)V

    .line 172
    :cond_3
    invoke-virtual {p0, v0}, Lcom/oplus/camera/ui/menu/levelcontrol/HorizontalScrollBar;->d(I)F

    move-result p1

    const/16 v0, 0x1a

    iget-object v1, p0, Lcom/oplus/camera/ui/menu/levelcontrol/HorizontalScrollBar;->B:Landroid/view/animation/Interpolator;

    iget-object v2, p0, Lcom/oplus/camera/ui/menu/levelcontrol/HorizontalScrollBar;->t:Lcom/oplus/camera/ui/menu/levelcontrol/j$b;

    invoke-virtual {p0, p1, v0, v1, v2}, Lcom/oplus/camera/ui/menu/levelcontrol/HorizontalScrollBar;->a(FILandroid/view/animation/Interpolator;Lcom/oplus/camera/ui/menu/levelcontrol/j$b;)Z

    :cond_4
    return-void

    .line 162
    :cond_5
    :goto_0
    invoke-virtual {p0}, Lcom/oplus/camera/ui/menu/levelcontrol/HorizontalScrollBar;->l()V

    return-void

    .line 146
    :cond_6
    :goto_1
    invoke-virtual {p0}, Lcom/oplus/camera/ui/menu/levelcontrol/HorizontalScrollBar;->l()V

    .line 147
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string p1, "scrollToByClick, toPos:"

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string p1, " greater than positiveLimit:"

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v4}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string p1, " or less than negativeLimit:"

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v5}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string p1, ", so return"

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v1, p0}, Lcom/oplus/camera/e;->b(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method protected c(F)I
    .locals 7

    .line 233
    invoke-virtual {p0}, Lcom/oplus/camera/ui/menu/levelcontrol/HorizontalScrollBar;->k()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    const-string p0, "HorizontalScrollBar"

    const-string p1, "convertPositionToIndex, texture not init, so return"

    .line 234
    invoke-static {p0, p1}, Lcom/oplus/camera/e;->f(Ljava/lang/String;Ljava/lang/String;)V

    return v1

    .line 239
    :cond_0
    invoke-direct {p0}, Lcom/oplus/camera/ui/menu/levelcontrol/HorizontalScrollBar;->getPositiveLimit()F

    move-result v0

    .line 240
    invoke-direct {p0}, Lcom/oplus/camera/ui/menu/levelcontrol/HorizontalScrollBar;->getNegativeLimit()F

    move-result v2

    .line 241
    invoke-virtual {p0}, Lcom/oplus/camera/ui/menu/levelcontrol/HorizontalScrollBar;->getElementWidth()F

    move-result v3

    const/high16 v4, 0x40000000    # 2.0f

    div-float/2addr v3, v4

    sub-float v3, p1, v3

    invoke-virtual {p0}, Lcom/oplus/camera/ui/menu/levelcontrol/HorizontalScrollBar;->getElementGap()F

    move-result v5

    sub-float/2addr v3, v5

    iget v5, p0, Lcom/oplus/camera/ui/menu/levelcontrol/HorizontalScrollBar;->p:F

    sub-float/2addr v3, v5

    .line 242
    invoke-virtual {p0}, Lcom/oplus/camera/ui/menu/levelcontrol/HorizontalScrollBar;->getElementWidth()F

    move-result v5

    invoke-virtual {p0}, Lcom/oplus/camera/ui/menu/levelcontrol/HorizontalScrollBar;->getElementGap()F

    move-result v6

    add-float/2addr v5, v6

    div-float/2addr v3, v5

    invoke-virtual {p0}, Lcom/oplus/camera/ui/menu/levelcontrol/HorizontalScrollBar;->getModelNum()I

    move-result v5

    int-to-float v5, v5

    div-float/2addr v5, v4

    add-float/2addr v3, v5

    .line 241
    invoke-static {v3}, Ljava/lang/Math;->round(F)I

    move-result v3

    if-ltz v3, :cond_4

    cmpg-float v2, p1, v2

    if-gtz v2, :cond_1

    goto :goto_1

    .line 250
    :cond_1
    invoke-virtual {p0}, Lcom/oplus/camera/ui/menu/levelcontrol/HorizontalScrollBar;->getModelNum()I

    move-result v1

    if-ge v3, v1, :cond_3

    cmpl-float p1, p1, v0

    if-lez p1, :cond_2

    goto :goto_0

    :cond_2
    move v1, v3

    goto :goto_1

    .line 251
    :cond_3
    :goto_0
    invoke-virtual {p0}, Lcom/oplus/camera/ui/menu/levelcontrol/HorizontalScrollBar;->getModelNum()I

    move-result p0

    add-int/lit8 v1, p0, -0x1

    :cond_4
    :goto_1
    return v1
.end method

.method protected d(I)F
    .locals 3

    .line 222
    invoke-virtual {p0}, Lcom/oplus/camera/ui/menu/levelcontrol/HorizontalScrollBar;->getElementWidth()F

    move-result v0

    invoke-virtual {p0}, Lcom/oplus/camera/ui/menu/levelcontrol/HorizontalScrollBar;->getElementGap()F

    move-result v1

    add-float/2addr v0, v1

    int-to-float p1, p1

    invoke-virtual {p0}, Lcom/oplus/camera/ui/menu/levelcontrol/HorizontalScrollBar;->getModelNum()I

    move-result v1

    int-to-float v1, v1

    const/high16 v2, 0x40000000    # 2.0f

    div-float/2addr v1, v2

    sub-float/2addr p1, v1

    mul-float/2addr v0, p1

    .line 223
    invoke-virtual {p0}, Lcom/oplus/camera/ui/menu/levelcontrol/HorizontalScrollBar;->getElementWidth()F

    move-result p1

    div-float/2addr p1, v2

    add-float/2addr v0, p1

    invoke-virtual {p0}, Lcom/oplus/camera/ui/menu/levelcontrol/HorizontalScrollBar;->getElementGap()F

    move-result p1

    add-float/2addr v0, p1

    iget p0, p0, Lcom/oplus/camera/ui/menu/levelcontrol/HorizontalScrollBar;->p:F

    add-float/2addr v0, p0

    return v0
.end method

.method protected getElementHeight()F
    .locals 0

    .line 390
    iget p0, p0, Lcom/oplus/camera/ui/menu/levelcontrol/HorizontalScrollBar;->i:I

    if-nez p0, :cond_0

    .line 391
    invoke-static {}, Lcom/oplus/camera/ui/preview/a/j;->B()F

    move-result p0

    return p0

    .line 393
    :cond_0
    invoke-static {}, Lcom/oplus/camera/ui/preview/a/j;->A()F

    move-result p0

    return p0
.end method

.method protected getElementWidth()F
    .locals 0

    .line 399
    iget p0, p0, Lcom/oplus/camera/ui/menu/levelcontrol/HorizontalScrollBar;->i:I

    if-nez p0, :cond_0

    .line 400
    invoke-static {}, Lcom/oplus/camera/ui/preview/a/j;->A()F

    move-result p0

    return p0

    .line 402
    :cond_0
    invoke-static {}, Lcom/oplus/camera/ui/preview/a/j;->B()F

    move-result p0

    return p0
.end method

.method protected l()V
    .locals 4

    .line 109
    iget-object v0, p0, Lcom/oplus/camera/ui/menu/levelcontrol/HorizontalScrollBar;->d:Lcom/oplus/camera/ui/menu/levelcontrol/b$a;

    if-eqz v0, :cond_0

    .line 110
    iget-object v0, p0, Lcom/oplus/camera/ui/menu/levelcontrol/HorizontalScrollBar;->d:Lcom/oplus/camera/ui/menu/levelcontrol/b$a;

    invoke-interface {v0}, Lcom/oplus/camera/ui/menu/levelcontrol/b$a;->d()I

    move-result v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 113
    :goto_0
    invoke-virtual {p0}, Lcom/oplus/camera/ui/menu/levelcontrol/HorizontalScrollBar;->getCurrPosition()F

    move-result v1

    .line 114
    invoke-direct {p0}, Lcom/oplus/camera/ui/menu/levelcontrol/HorizontalScrollBar;->getPositiveLimit()F

    move-result v2

    .line 115
    invoke-direct {p0}, Lcom/oplus/camera/ui/menu/levelcontrol/HorizontalScrollBar;->getNegativeLimit()F

    move-result v3

    cmpl-float v2, v1, v2

    if-gtz v2, :cond_1

    cmpg-float v2, v1, v3

    if-gez v2, :cond_2

    :cond_1
    const/16 v2, 0xe

    .line 118
    invoke-virtual {p0, v2}, Lcom/oplus/camera/ui/menu/levelcontrol/HorizontalScrollBar;->performHapticFeedback(I)Z

    .line 121
    :cond_2
    invoke-virtual {p0, v0}, Lcom/oplus/camera/ui/menu/levelcontrol/HorizontalScrollBar;->d(I)F

    move-result v0

    .line 122
    invoke-static {v1, v0}, Ljava/lang/Math;->max(FF)F

    move-result v1

    .line 123
    invoke-virtual {p0, v1}, Lcom/oplus/camera/ui/menu/levelcontrol/HorizontalScrollBar;->c(F)I

    move-result v1

    invoke-virtual {p0, v1}, Lcom/oplus/camera/ui/menu/levelcontrol/HorizontalScrollBar;->d(I)F

    move-result v1

    .line 125
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "scrollNear, limitPos: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v0, ", currPos: "

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/oplus/camera/ui/menu/levelcontrol/HorizontalScrollBar;->getCurrPosition()F

    move-result v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v0, " -> "

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v2, "HorizontalScrollBar"

    invoke-static {v2, v0}, Lcom/oplus/camera/e;->a(Ljava/lang/String;Ljava/lang/String;)V

    const/16 v0, 0x1a

    .line 127
    iget-object v2, p0, Lcom/oplus/camera/ui/menu/levelcontrol/HorizontalScrollBar;->g:Landroid/view/animation/Interpolator;

    iget-object v3, p0, Lcom/oplus/camera/ui/menu/levelcontrol/HorizontalScrollBar;->s:Lcom/oplus/camera/ui/menu/levelcontrol/j$b;

    invoke-virtual {p0, v1, v0, v2, v3}, Lcom/oplus/camera/ui/menu/levelcontrol/HorizontalScrollBar;->a(FILandroid/view/animation/Interpolator;Lcom/oplus/camera/ui/menu/levelcontrol/j$b;)Z

    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 6

    .line 259
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    .line 261
    iget-boolean v1, p0, Lcom/oplus/camera/ui/menu/levelcontrol/HorizontalScrollBar;->e:Z

    const/4 v2, 0x1

    if-eqz v1, :cond_1

    .line 262
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result p1

    if-nez p1, :cond_0

    const-string p1, "HorizontalScrollBar"

    const-string v1, "onTouchEvent, click scrolling, reset touch x"

    .line 263
    invoke-static {p1, v1}, Lcom/oplus/camera/e;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 265
    iput v0, p0, Lcom/oplus/camera/ui/menu/levelcontrol/HorizontalScrollBar;->x:F

    .line 266
    iput v0, p0, Lcom/oplus/camera/ui/menu/levelcontrol/HorizontalScrollBar;->w:F

    .line 267
    invoke-static {}, Landroid/view/VelocityTracker;->obtain()Landroid/view/VelocityTracker;

    move-result-object p1

    iput-object p1, p0, Lcom/oplus/camera/ui/menu/levelcontrol/HorizontalScrollBar;->z:Landroid/view/VelocityTracker;

    :cond_0
    return v2

    .line 273
    :cond_1
    iget-object v1, p0, Lcom/oplus/camera/ui/menu/levelcontrol/HorizontalScrollBar;->d:Lcom/oplus/camera/ui/menu/levelcontrol/b$a;

    invoke-interface {v1}, Lcom/oplus/camera/ui/menu/levelcontrol/b$a;->b()Z

    move-result v1

    if-nez v1, :cond_3

    .line 274
    invoke-virtual {p0}, Lcom/oplus/camera/ui/menu/levelcontrol/HorizontalScrollBar;->l()V

    .line 276
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v0

    if-nez v0, :cond_2

    .line 277
    invoke-virtual {p0, p1}, Lcom/oplus/camera/ui/menu/levelcontrol/HorizontalScrollBar;->a(Landroid/view/MotionEvent;)V

    :cond_2
    return v2

    .line 287
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

    .line 326
    :cond_4
    invoke-virtual {p0, p1}, Lcom/oplus/camera/ui/menu/levelcontrol/HorizontalScrollBar;->a(Landroid/view/MotionEvent;)V

    goto/16 :goto_1

    .line 296
    :cond_5
    invoke-virtual {p0}, Lcom/oplus/camera/ui/menu/levelcontrol/HorizontalScrollBar;->j()V

    .line 297
    invoke-virtual {p0, p1}, Lcom/oplus/camera/ui/menu/levelcontrol/HorizontalScrollBar;->a(Landroid/view/MotionEvent;)V

    .line 298
    invoke-static {}, Landroid/view/VelocityTracker;->obtain()Landroid/view/VelocityTracker;

    move-result-object p1

    iput-object p1, p0, Lcom/oplus/camera/ui/menu/levelcontrol/HorizontalScrollBar;->z:Landroid/view/VelocityTracker;

    goto/16 :goto_1

    .line 352
    :cond_6
    iget-object v1, p0, Lcom/oplus/camera/ui/menu/levelcontrol/HorizontalScrollBar;->z:Landroid/view/VelocityTracker;

    if-eqz v1, :cond_7

    .line 353
    invoke-virtual {v1}, Landroid/view/VelocityTracker;->recycle()V

    const/4 v1, 0x0

    .line 354
    iput-object v1, p0, Lcom/oplus/camera/ui/menu/levelcontrol/HorizontalScrollBar;->z:Landroid/view/VelocityTracker;

    .line 357
    :cond_7
    iget v1, p0, Lcom/oplus/camera/ui/menu/levelcontrol/HorizontalScrollBar;->x:F

    sub-float/2addr v0, v1

    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v0

    cmpl-float v0, v0, v3

    if-lez v0, :cond_8

    .line 358
    invoke-virtual {p0}, Lcom/oplus/camera/ui/menu/levelcontrol/HorizontalScrollBar;->l()V

    goto/16 :goto_1

    .line 360
    :cond_8
    invoke-virtual {p0, p1}, Lcom/oplus/camera/ui/menu/levelcontrol/HorizontalScrollBar;->b(Landroid/view/MotionEvent;)V

    goto :goto_1

    .line 302
    :cond_9
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionIndex()I

    move-result v1

    .line 303
    invoke-virtual {p1, v1}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v1

    if-ne v1, v2, :cond_a

    .line 311
    iget v1, p0, Lcom/oplus/camera/ui/menu/levelcontrol/HorizontalScrollBar;->y:F

    sub-float v1, v0, v1

    .line 312
    iput v0, p0, Lcom/oplus/camera/ui/menu/levelcontrol/HorizontalScrollBar;->y:F

    goto :goto_0

    .line 314
    :cond_a
    iget v1, p0, Lcom/oplus/camera/ui/menu/levelcontrol/HorizontalScrollBar;->w:F

    sub-float v1, v0, v1

    .line 315
    iput v0, p0, Lcom/oplus/camera/ui/menu/levelcontrol/HorizontalScrollBar;->w:F

    .line 318
    :goto_0
    iget-object v0, p0, Lcom/oplus/camera/ui/menu/levelcontrol/HorizontalScrollBar;->z:Landroid/view/VelocityTracker;

    if-eqz v0, :cond_b

    .line 319
    invoke-virtual {v0, p1}, Landroid/view/VelocityTracker;->addMovement(Landroid/view/MotionEvent;)V

    .line 322
    :cond_b
    invoke-virtual {p0, v1}, Lcom/oplus/camera/ui/menu/levelcontrol/HorizontalScrollBar;->a(F)V

    goto :goto_1

    :cond_c
    const/4 v1, 0x0

    .line 332
    iget-object v4, p0, Lcom/oplus/camera/ui/menu/levelcontrol/HorizontalScrollBar;->z:Landroid/view/VelocityTracker;

    if-eqz v4, :cond_d

    .line 333
    invoke-virtual {v4, p1}, Landroid/view/VelocityTracker;->addMovement(Landroid/view/MotionEvent;)V

    .line 334
    iget-object v1, p0, Lcom/oplus/camera/ui/menu/levelcontrol/HorizontalScrollBar;->z:Landroid/view/VelocityTracker;

    const/16 v4, 0x3e8

    iget v5, p0, Lcom/oplus/camera/ui/menu/levelcontrol/HorizontalScrollBar;->A:I

    int-to-float v5, v5

    invoke-virtual {v1, v4, v5}, Landroid/view/VelocityTracker;->computeCurrentVelocity(IF)V

    .line 335
    iget-object v1, p0, Lcom/oplus/camera/ui/menu/levelcontrol/HorizontalScrollBar;->z:Landroid/view/VelocityTracker;

    invoke-virtual {v1}, Landroid/view/VelocityTracker;->getXVelocity()F

    move-result v1

    .line 336
    iget-object v4, p0, Lcom/oplus/camera/ui/menu/levelcontrol/HorizontalScrollBar;->z:Landroid/view/VelocityTracker;

    invoke-virtual {v4}, Landroid/view/VelocityTracker;->clear()V

    .line 339
    :cond_d
    invoke-static {v1}, Ljava/lang/Math;->abs(F)F

    move-result v4

    const/high16 v5, 0x447a0000    # 1000.0f

    cmpl-float v4, v4, v5

    if-ltz v4, :cond_e

    .line 340
    invoke-virtual {p0, v1}, Lcom/oplus/camera/ui/menu/levelcontrol/HorizontalScrollBar;->b(F)V

    goto :goto_1

    .line 342
    :cond_e
    iget v1, p0, Lcom/oplus/camera/ui/menu/levelcontrol/HorizontalScrollBar;->x:F

    sub-float/2addr v0, v1

    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v0

    cmpl-float v0, v0, v3

    if-lez v0, :cond_f

    .line 343
    invoke-virtual {p0}, Lcom/oplus/camera/ui/menu/levelcontrol/HorizontalScrollBar;->l()V

    goto :goto_1

    .line 345
    :cond_f
    invoke-virtual {p0, p1}, Lcom/oplus/camera/ui/menu/levelcontrol/HorizontalScrollBar;->b(Landroid/view/MotionEvent;)V

    goto :goto_1

    .line 289
    :cond_10
    invoke-virtual {p0}, Lcom/oplus/camera/ui/menu/levelcontrol/HorizontalScrollBar;->j()V

    .line 290
    iput v0, p0, Lcom/oplus/camera/ui/menu/levelcontrol/HorizontalScrollBar;->x:F

    .line 291
    iput v0, p0, Lcom/oplus/camera/ui/menu/levelcontrol/HorizontalScrollBar;->w:F

    .line 292
    invoke-static {}, Landroid/view/VelocityTracker;->obtain()Landroid/view/VelocityTracker;

    move-result-object p1

    iput-object p1, p0, Lcom/oplus/camera/ui/menu/levelcontrol/HorizontalScrollBar;->z:Landroid/view/VelocityTracker;

    :goto_1
    return v2
.end method

.method public setRearMirrorEnable(Z)V
    .locals 0

    .line 62
    iget-object p0, p0, Lcom/oplus/camera/ui/menu/levelcontrol/HorizontalScrollBar;->c:Lcom/oplus/camera/ui/menu/levelcontrol/j;

    invoke-virtual {p0, p1}, Lcom/oplus/camera/ui/menu/levelcontrol/j;->a(Z)V

    return-void
.end method
