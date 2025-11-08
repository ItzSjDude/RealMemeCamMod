.class public Lcom/oplus/camera/ui/widget/SplitBackgroundView;
.super Lcom/oplus/camera/ui/menu/facebeauty/RotateAnimationView;
.source "SplitBackgroundView.java"


# instance fields
.field private k:Landroid/graphics/Paint;

.field private l:Landroid/graphics/Paint;

.field private m:Landroid/graphics/Paint;

.field private n:Landroid/graphics/Paint;

.field private o:Landroid/graphics/RectF;

.field private p:Landroid/graphics/Rect;

.field private q:Z

.field private r:[I

.field private s:I

.field private t:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    .line 36
    invoke-direct {p0, p1, v0}, Lcom/oplus/camera/ui/widget/SplitBackgroundView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    const/4 v0, 0x0

    .line 40
    invoke-direct {p0, p1, p2, v0}, Lcom/oplus/camera/ui/widget/SplitBackgroundView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    .line 44
    invoke-direct {p0, p1, p2, p3}, Lcom/oplus/camera/ui/menu/facebeauty/RotateAnimationView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    const/4 p1, 0x0

    .line 24
    iput-object p1, p0, Lcom/oplus/camera/ui/widget/SplitBackgroundView;->k:Landroid/graphics/Paint;

    .line 25
    iput-object p1, p0, Lcom/oplus/camera/ui/widget/SplitBackgroundView;->l:Landroid/graphics/Paint;

    .line 26
    iput-object p1, p0, Lcom/oplus/camera/ui/widget/SplitBackgroundView;->m:Landroid/graphics/Paint;

    .line 27
    iput-object p1, p0, Lcom/oplus/camera/ui/widget/SplitBackgroundView;->n:Landroid/graphics/Paint;

    .line 28
    iput-object p1, p0, Lcom/oplus/camera/ui/widget/SplitBackgroundView;->o:Landroid/graphics/RectF;

    .line 29
    new-instance p1, Landroid/graphics/Rect;

    invoke-direct {p1}, Landroid/graphics/Rect;-><init>()V

    iput-object p1, p0, Lcom/oplus/camera/ui/widget/SplitBackgroundView;->p:Landroid/graphics/Rect;

    const/4 p1, 0x0

    .line 30
    iput-boolean p1, p0, Lcom/oplus/camera/ui/widget/SplitBackgroundView;->q:Z

    const/4 p2, 0x2

    .line 31
    new-array p2, p2, [I

    iput-object p2, p0, Lcom/oplus/camera/ui/widget/SplitBackgroundView;->r:[I

    .line 32
    iput p1, p0, Lcom/oplus/camera/ui/widget/SplitBackgroundView;->s:I

    .line 33
    iput-boolean p1, p0, Lcom/oplus/camera/ui/widget/SplitBackgroundView;->t:Z

    .line 46
    invoke-virtual {p0}, Lcom/oplus/camera/ui/widget/SplitBackgroundView;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object p1

    new-instance p2, Lcom/oplus/camera/ui/widget/SplitBackgroundView$1;

    invoke-direct {p2, p0}, Lcom/oplus/camera/ui/widget/SplitBackgroundView$1;-><init>(Lcom/oplus/camera/ui/widget/SplitBackgroundView;)V

    invoke-virtual {p1, p2}, Landroid/view/ViewTreeObserver;->addOnGlobalLayoutListener(Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    .line 56
    invoke-direct {p0}, Lcom/oplus/camera/ui/widget/SplitBackgroundView;->b()V

    return-void
.end method

.method static synthetic a(Lcom/oplus/camera/ui/widget/SplitBackgroundView;Landroid/graphics/RectF;)Landroid/graphics/RectF;
    .locals 0

    .line 18
    iput-object p1, p0, Lcom/oplus/camera/ui/widget/SplitBackgroundView;->o:Landroid/graphics/RectF;

    return-object p1
.end method

.method private b()V
    .locals 5

    .line 60
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/oplus/camera/ui/widget/SplitBackgroundView;->k:Landroid/graphics/Paint;

    .line 61
    iget-object v0, p0, Lcom/oplus/camera/ui/widget/SplitBackgroundView;->k:Landroid/graphics/Paint;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 62
    iget-object v0, p0, Lcom/oplus/camera/ui/widget/SplitBackgroundView;->k:Landroid/graphics/Paint;

    sget-object v2, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 63
    iget-object v0, p0, Lcom/oplus/camera/ui/widget/SplitBackgroundView;->k:Landroid/graphics/Paint;

    const/high16 v2, 0x40a00000    # 5.0f

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 64
    iget-object v0, p0, Lcom/oplus/camera/ui/widget/SplitBackgroundView;->k:Landroid/graphics/Paint;

    invoke-virtual {p0}, Lcom/oplus/camera/ui/widget/SplitBackgroundView;->getContext()Landroid/content/Context;

    move-result-object v3

    const v4, 0x7f060098

    invoke-static {v3, v4}, Landroidx/core/a/a;->c(Landroid/content/Context;I)I

    move-result v3

    invoke-virtual {v0, v3}, Landroid/graphics/Paint;->setColor(I)V

    .line 65
    iget-object v0, p0, Lcom/oplus/camera/ui/widget/SplitBackgroundView;->k:Landroid/graphics/Paint;

    new-instance v3, Landroid/graphics/PorterDuffXfermode;

    sget-object v4, Landroid/graphics/PorterDuff$Mode;->SRC:Landroid/graphics/PorterDuff$Mode;

    invoke-direct {v3, v4}, Landroid/graphics/PorterDuffXfermode;-><init>(Landroid/graphics/PorterDuff$Mode;)V

    invoke-virtual {v0, v3}, Landroid/graphics/Paint;->setXfermode(Landroid/graphics/Xfermode;)Landroid/graphics/Xfermode;

    .line 67
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/oplus/camera/ui/widget/SplitBackgroundView;->l:Landroid/graphics/Paint;

    .line 68
    iget-object v0, p0, Lcom/oplus/camera/ui/widget/SplitBackgroundView;->l:Landroid/graphics/Paint;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 69
    iget-object v0, p0, Lcom/oplus/camera/ui/widget/SplitBackgroundView;->l:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 70
    iget-object v0, p0, Lcom/oplus/camera/ui/widget/SplitBackgroundView;->l:Landroid/graphics/Paint;

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 71
    iget-object v0, p0, Lcom/oplus/camera/ui/widget/SplitBackgroundView;->l:Landroid/graphics/Paint;

    invoke-virtual {p0}, Lcom/oplus/camera/ui/widget/SplitBackgroundView;->getContext()Landroid/content/Context;

    move-result-object v1

    const v2, 0x7f06006a

    invoke-static {v1, v2}, Landroidx/core/a/a;->c(Landroid/content/Context;I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 72
    iget-object p0, p0, Lcom/oplus/camera/ui/widget/SplitBackgroundView;->l:Landroid/graphics/Paint;

    new-instance v0, Landroid/graphics/PorterDuffXfermode;

    sget-object v1, Landroid/graphics/PorterDuff$Mode;->SRC:Landroid/graphics/PorterDuff$Mode;

    invoke-direct {v0, v1}, Landroid/graphics/PorterDuffXfermode;-><init>(Landroid/graphics/PorterDuff$Mode;)V

    invoke-virtual {p0, v0}, Landroid/graphics/Paint;->setXfermode(Landroid/graphics/Xfermode;)Landroid/graphics/Xfermode;

    return-void
.end method


# virtual methods
.method public a(IIII)V
    .locals 1

    .line 135
    iget-object v0, p0, Lcom/oplus/camera/ui/widget/SplitBackgroundView;->p:Landroid/graphics/Rect;

    iput p1, v0, Landroid/graphics/Rect;->left:I

    .line 136
    iput p2, v0, Landroid/graphics/Rect;->top:I

    add-int/2addr p1, p3

    .line 137
    iput p1, v0, Landroid/graphics/Rect;->right:I

    add-int/2addr p2, p4

    .line 138
    iput p2, v0, Landroid/graphics/Rect;->bottom:I

    .line 140
    invoke-virtual {p0}, Lcom/oplus/camera/ui/widget/SplitBackgroundView;->postInvalidate()V

    return-void
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 18

    move-object/from16 v0, p0

    .line 77
    iget-boolean v1, v0, Lcom/oplus/camera/ui/widget/SplitBackgroundView;->h:Z

    if-nez v1, :cond_9

    iget-boolean v1, v0, Lcom/oplus/camera/ui/widget/SplitBackgroundView;->q:Z

    if-eqz v1, :cond_9

    .line 78
    iget-object v1, v0, Lcom/oplus/camera/ui/widget/SplitBackgroundView;->o:Landroid/graphics/RectF;

    invoke-virtual {v1}, Landroid/graphics/RectF;->width()F

    move-result v1

    const/high16 v2, 0x40000000    # 2.0f

    div-float/2addr v1, v2

    .line 79
    invoke-virtual/range {p0 .. p0}, Lcom/oplus/camera/ui/widget/SplitBackgroundView;->getWidth()I

    move-result v3

    int-to-float v3, v3

    div-float/2addr v3, v2

    .line 80
    invoke-virtual/range {p0 .. p0}, Lcom/oplus/camera/ui/widget/SplitBackgroundView;->getHeight()I

    move-result v4

    int-to-float v4, v4

    div-float/2addr v4, v2

    .line 81
    iget-object v5, v0, Lcom/oplus/camera/ui/widget/SplitBackgroundView;->r:[I

    invoke-virtual {v0, v5}, Lcom/oplus/camera/ui/widget/SplitBackgroundView;->getLocationOnScreen([I)V

    .line 82
    iget v5, v0, Lcom/oplus/camera/ui/widget/SplitBackgroundView;->s:I

    const/4 v6, 0x0

    const/16 v7, 0x10e

    if-ne v7, v5, :cond_0

    .line 83
    iget-object v5, v0, Lcom/oplus/camera/ui/widget/SplitBackgroundView;->r:[I

    aget v5, v5, v6

    int-to-float v5, v5

    sub-float/2addr v5, v3

    goto :goto_0

    .line 84
    :cond_0
    iget-object v5, v0, Lcom/oplus/camera/ui/widget/SplitBackgroundView;->r:[I

    aget v5, v5, v6

    int-to-float v5, v5

    add-float/2addr v5, v3

    .line 90
    :goto_0
    iget-object v8, v0, Lcom/oplus/camera/ui/widget/SplitBackgroundView;->p:Landroid/graphics/Rect;

    iget v8, v8, Landroid/graphics/Rect;->right:I

    int-to-float v8, v8

    sub-float v8, v5, v8

    invoke-static {v8}, Ljava/lang/Math;->abs(F)F

    move-result v8

    cmpg-float v8, v8, v1

    const/4 v9, 0x1

    const/4 v10, 0x0

    const/high16 v11, 0x43340000    # 180.0f

    if-gez v8, :cond_4

    .line 92
    iget-object v6, v0, Lcom/oplus/camera/ui/widget/SplitBackgroundView;->p:Landroid/graphics/Rect;

    iget v6, v6, Landroid/graphics/Rect;->right:I

    int-to-float v6, v6

    sub-float/2addr v6, v5

    invoke-static {v6}, Ljava/lang/Math;->abs(F)F

    move-result v6

    div-float/2addr v6, v1

    float-to-double v12, v6

    invoke-static {v12, v13}, Ljava/lang/Math;->asin(D)D

    move-result-wide v12

    .line 93
    invoke-static {v12, v13}, Ljava/lang/Math;->toDegrees(D)D

    move-result-wide v12

    double-to-float v10, v12

    .line 95
    iget-object v6, v0, Lcom/oplus/camera/ui/widget/SplitBackgroundView;->p:Landroid/graphics/Rect;

    iget v6, v6, Landroid/graphics/Rect;->right:I

    int-to-float v6, v6

    cmpl-float v5, v5, v6

    if-lez v5, :cond_2

    .line 96
    iget v5, v0, Lcom/oplus/camera/ui/widget/SplitBackgroundView;->s:I

    if-ne v7, v5, :cond_1

    move v5, v10

    goto :goto_1

    :cond_1
    add-float v5, v10, v11

    .line 97
    :goto_1
    iget-object v6, v0, Lcom/oplus/camera/ui/widget/SplitBackgroundView;->k:Landroid/graphics/Paint;

    iput-object v6, v0, Lcom/oplus/camera/ui/widget/SplitBackgroundView;->m:Landroid/graphics/Paint;

    .line 98
    iget-object v6, v0, Lcom/oplus/camera/ui/widget/SplitBackgroundView;->l:Landroid/graphics/Paint;

    iput-object v6, v0, Lcom/oplus/camera/ui/widget/SplitBackgroundView;->n:Landroid/graphics/Paint;

    goto :goto_5

    .line 100
    :cond_2
    iget v5, v0, Lcom/oplus/camera/ui/widget/SplitBackgroundView;->s:I

    if-ne v7, v5, :cond_3

    add-float v5, v10, v11

    goto :goto_2

    :cond_3
    move v5, v10

    .line 101
    :goto_2
    iget-object v6, v0, Lcom/oplus/camera/ui/widget/SplitBackgroundView;->l:Landroid/graphics/Paint;

    iput-object v6, v0, Lcom/oplus/camera/ui/widget/SplitBackgroundView;->m:Landroid/graphics/Paint;

    .line 102
    iget-object v6, v0, Lcom/oplus/camera/ui/widget/SplitBackgroundView;->k:Landroid/graphics/Paint;

    iput-object v6, v0, Lcom/oplus/camera/ui/widget/SplitBackgroundView;->n:Landroid/graphics/Paint;

    goto :goto_5

    .line 104
    :cond_4
    iget-object v8, v0, Lcom/oplus/camera/ui/widget/SplitBackgroundView;->p:Landroid/graphics/Rect;

    iget v8, v8, Landroid/graphics/Rect;->left:I

    int-to-float v8, v8

    sub-float v8, v5, v8

    invoke-static {v8}, Ljava/lang/Math;->abs(F)F

    move-result v8

    cmpg-float v8, v8, v1

    if-gez v8, :cond_8

    .line 106
    iget-object v6, v0, Lcom/oplus/camera/ui/widget/SplitBackgroundView;->p:Landroid/graphics/Rect;

    iget v6, v6, Landroid/graphics/Rect;->left:I

    int-to-float v6, v6

    sub-float/2addr v6, v5

    invoke-static {v6}, Ljava/lang/Math;->abs(F)F

    move-result v6

    div-float/2addr v6, v1

    float-to-double v12, v6

    invoke-static {v12, v13}, Ljava/lang/Math;->asin(D)D

    move-result-wide v12

    .line 107
    invoke-static {v12, v13}, Ljava/lang/Math;->toDegrees(D)D

    move-result-wide v12

    double-to-float v10, v12

    .line 109
    iget-object v6, v0, Lcom/oplus/camera/ui/widget/SplitBackgroundView;->p:Landroid/graphics/Rect;

    iget v6, v6, Landroid/graphics/Rect;->left:I

    int-to-float v6, v6

    cmpl-float v5, v5, v6

    if-lez v5, :cond_6

    .line 110
    iget v5, v0, Lcom/oplus/camera/ui/widget/SplitBackgroundView;->s:I

    if-ne v7, v5, :cond_5

    move v5, v10

    goto :goto_3

    :cond_5
    add-float v5, v10, v11

    .line 111
    :goto_3
    iget-object v6, v0, Lcom/oplus/camera/ui/widget/SplitBackgroundView;->l:Landroid/graphics/Paint;

    iput-object v6, v0, Lcom/oplus/camera/ui/widget/SplitBackgroundView;->m:Landroid/graphics/Paint;

    .line 112
    iget-object v6, v0, Lcom/oplus/camera/ui/widget/SplitBackgroundView;->k:Landroid/graphics/Paint;

    iput-object v6, v0, Lcom/oplus/camera/ui/widget/SplitBackgroundView;->n:Landroid/graphics/Paint;

    goto :goto_5

    .line 114
    :cond_6
    iget v5, v0, Lcom/oplus/camera/ui/widget/SplitBackgroundView;->s:I

    if-ne v7, v5, :cond_7

    add-float v5, v10, v11

    goto :goto_4

    :cond_7
    move v5, v10

    .line 115
    :goto_4
    iget-object v6, v0, Lcom/oplus/camera/ui/widget/SplitBackgroundView;->k:Landroid/graphics/Paint;

    iput-object v6, v0, Lcom/oplus/camera/ui/widget/SplitBackgroundView;->m:Landroid/graphics/Paint;

    .line 116
    iget-object v6, v0, Lcom/oplus/camera/ui/widget/SplitBackgroundView;->l:Landroid/graphics/Paint;

    iput-object v6, v0, Lcom/oplus/camera/ui/widget/SplitBackgroundView;->n:Landroid/graphics/Paint;

    :goto_5
    move v14, v5

    goto :goto_6

    :cond_8
    move v9, v6

    move v14, v10

    :goto_6
    if-eqz v9, :cond_9

    mul-float/2addr v10, v2

    sub-float v15, v11, v10

    .line 122
    iget-object v2, v0, Lcom/oplus/camera/ui/widget/SplitBackgroundView;->m:Landroid/graphics/Paint;

    move-object/from16 v5, p1

    invoke-virtual {v5, v3, v4, v1, v2}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    .line 123
    iget-object v13, v0, Lcom/oplus/camera/ui/widget/SplitBackgroundView;->o:Landroid/graphics/RectF;

    const/16 v16, 0x0

    iget-object v1, v0, Lcom/oplus/camera/ui/widget/SplitBackgroundView;->n:Landroid/graphics/Paint;

    move-object/from16 v12, p1

    move-object/from16 v17, v1

    invoke-virtual/range {v12 .. v17}, Landroid/graphics/Canvas;->drawArc(Landroid/graphics/RectF;FFZLandroid/graphics/Paint;)V

    goto :goto_7

    :cond_9
    move-object/from16 v5, p1

    .line 127
    :goto_7
    invoke-super/range {p0 .. p1}, Lcom/oplus/camera/ui/menu/facebeauty/RotateAnimationView;->onDraw(Landroid/graphics/Canvas;)V

    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 1

    .line 145
    invoke-virtual {p0}, Lcom/oplus/camera/ui/widget/SplitBackgroundView;->isEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-super {p0, p1}, Lcom/oplus/camera/ui/menu/facebeauty/RotateAnimationView;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result p0

    goto :goto_0

    :cond_0
    iget-boolean p0, p0, Lcom/oplus/camera/ui/widget/SplitBackgroundView;->t:Z

    :goto_0
    return p0
.end method

.method public setInterceptTouchEvent(Z)V
    .locals 0

    .line 131
    iput-boolean p1, p0, Lcom/oplus/camera/ui/widget/SplitBackgroundView;->t:Z

    return-void
.end method

.method public setOrientation(I)V
    .locals 0

    .line 153
    iput p1, p0, Lcom/oplus/camera/ui/widget/SplitBackgroundView;->s:I

    return-void
.end method

.method public setSplitBackground(Z)V
    .locals 0

    .line 149
    iput-boolean p1, p0, Lcom/oplus/camera/ui/widget/SplitBackgroundView;->q:Z

    return-void
.end method
