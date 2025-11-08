.class public Lcom/oplus/camera/ui/menu/setting/down/ArrowView;
.super Landroid/view/View;
.source "ArrowView.java"

# interfaces
.implements Lcom/oplus/camera/ui/inverse/a;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/oplus/camera/ui/menu/setting/down/ArrowView$a;
    }
.end annotation


# instance fields
.field private a:Landroid/content/Context;

.field private b:F

.field private c:Landroid/graphics/Paint;

.field private d:F

.field private e:Landroid/graphics/Path;

.field private f:I

.field private g:Landroid/graphics/BlurMaskFilter;

.field private h:Landroid/graphics/PorterDuffXfermode;

.field private i:Landroid/animation/ValueAnimator;

.field private j:Landroid/animation/ValueAnimator;

.field private k:Landroid/animation/ValueAnimator;

.field private l:Landroid/animation/AnimatorSet;

.field private m:Z

.field private n:Z

.field private o:Z

.field private p:Z

.field private q:F

.field private r:F

.field private s:Lcom/oplus/camera/ui/menu/setting/down/ArrowView$a;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    .line 86
    invoke-direct {p0, p1, v0}, Lcom/oplus/camera/ui/menu/setting/down/ArrowView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    const/4 v0, 0x0

    .line 90
    invoke-direct {p0, p1, p2, v0}, Lcom/oplus/camera/ui/menu/setting/down/ArrowView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 2

    .line 94
    invoke-direct {p0, p1, p2, p3}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    const/4 p1, 0x0

    .line 65
    iput-object p1, p0, Lcom/oplus/camera/ui/menu/setting/down/ArrowView;->a:Landroid/content/Context;

    const/4 p3, 0x0

    .line 66
    iput p3, p0, Lcom/oplus/camera/ui/menu/setting/down/ArrowView;->b:F

    .line 67
    iput-object p1, p0, Lcom/oplus/camera/ui/menu/setting/down/ArrowView;->c:Landroid/graphics/Paint;

    .line 68
    iput p3, p0, Lcom/oplus/camera/ui/menu/setting/down/ArrowView;->d:F

    .line 69
    iput-object p1, p0, Lcom/oplus/camera/ui/menu/setting/down/ArrowView;->e:Landroid/graphics/Path;

    const/4 v0, 0x0

    .line 70
    iput v0, p0, Lcom/oplus/camera/ui/menu/setting/down/ArrowView;->f:I

    .line 71
    iput-object p1, p0, Lcom/oplus/camera/ui/menu/setting/down/ArrowView;->g:Landroid/graphics/BlurMaskFilter;

    .line 72
    iput-object p1, p0, Lcom/oplus/camera/ui/menu/setting/down/ArrowView;->h:Landroid/graphics/PorterDuffXfermode;

    .line 73
    iput-object p1, p0, Lcom/oplus/camera/ui/menu/setting/down/ArrowView;->i:Landroid/animation/ValueAnimator;

    .line 74
    iput-object p1, p0, Lcom/oplus/camera/ui/menu/setting/down/ArrowView;->j:Landroid/animation/ValueAnimator;

    .line 75
    iput-object p1, p0, Lcom/oplus/camera/ui/menu/setting/down/ArrowView;->k:Landroid/animation/ValueAnimator;

    .line 76
    iput-object p1, p0, Lcom/oplus/camera/ui/menu/setting/down/ArrowView;->l:Landroid/animation/AnimatorSet;

    const/4 v1, 0x1

    .line 77
    iput-boolean v1, p0, Lcom/oplus/camera/ui/menu/setting/down/ArrowView;->m:Z

    .line 78
    iput-boolean v0, p0, Lcom/oplus/camera/ui/menu/setting/down/ArrowView;->n:Z

    .line 79
    iput-boolean v0, p0, Lcom/oplus/camera/ui/menu/setting/down/ArrowView;->o:Z

    .line 80
    iput-boolean v0, p0, Lcom/oplus/camera/ui/menu/setting/down/ArrowView;->p:Z

    .line 81
    iput p3, p0, Lcom/oplus/camera/ui/menu/setting/down/ArrowView;->q:F

    .line 82
    iput p3, p0, Lcom/oplus/camera/ui/menu/setting/down/ArrowView;->r:F

    .line 83
    iput-object p1, p0, Lcom/oplus/camera/ui/menu/setting/down/ArrowView;->s:Lcom/oplus/camera/ui/menu/setting/down/ArrowView$a;

    .line 95
    invoke-direct {p0, p2}, Lcom/oplus/camera/ui/menu/setting/down/ArrowView;->a(Landroid/util/AttributeSet;)V

    return-void
.end method

.method static synthetic a(Lcom/oplus/camera/ui/menu/setting/down/ArrowView;)F
    .locals 0

    .line 40
    iget p0, p0, Lcom/oplus/camera/ui/menu/setting/down/ArrowView;->q:F

    return p0
.end method

.method private a(F)V
    .locals 4

    .line 170
    invoke-virtual {p0}, Lcom/oplus/camera/ui/menu/setting/down/ArrowView;->getMeasuredWidth()I

    move-result v0

    .line 171
    invoke-virtual {p0}, Lcom/oplus/camera/ui/menu/setting/down/ArrowView;->getMeasuredHeight()I

    move-result v1

    .line 172
    iget-object v2, p0, Lcom/oplus/camera/ui/menu/setting/down/ArrowView;->e:Landroid/graphics/Path;

    invoke-virtual {v2}, Landroid/graphics/Path;->reset()V

    const/4 v2, 0x0

    cmpl-float p1, v2, p1

    const/4 v2, 0x1

    if-nez p1, :cond_0

    move p1, v2

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    .line 174
    :goto_0
    iput-boolean p1, p0, Lcom/oplus/camera/ui/menu/setting/down/ArrowView;->m:Z

    shr-int/lit8 p1, v0, 0x1

    int-to-float p1, p1

    shr-int/lit8 v0, v1, 0x1

    int-to-float v0, v0

    .line 179
    iget-object v1, p0, Lcom/oplus/camera/ui/menu/setting/down/ArrowView;->e:Landroid/graphics/Path;

    const/high16 v2, 0x41e00000    # 28.0f

    sub-float v3, p1, v2

    invoke-virtual {v1, v3, v0}, Landroid/graphics/Path;->moveTo(FF)V

    .line 180
    iget-object v1, p0, Lcom/oplus/camera/ui/menu/setting/down/ArrowView;->e:Landroid/graphics/Path;

    add-float/2addr p1, v2

    invoke-virtual {v1, p1, v0}, Landroid/graphics/Path;->lineTo(FF)V

    .line 182
    invoke-virtual {p0}, Lcom/oplus/camera/ui/menu/setting/down/ArrowView;->invalidate()V

    return-void
.end method

.method private a(Landroid/util/AttributeSet;)V
    .locals 3

    if-eqz p1, :cond_0

    .line 100
    invoke-virtual {p0}, Lcom/oplus/camera/ui/menu/setting/down/ArrowView;->getContext()Landroid/content/Context;

    move-result-object v0

    sget-object v1, Lcom/oplus/camera/R$styleable;->DrawerLayout:[I

    const/4 v2, 0x0

    invoke-virtual {v0, p1, v1, v2, v2}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object p1

    const v0, -0x777778

    .line 101
    invoke-virtual {p1, v2, v0}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v0

    iput v0, p0, Lcom/oplus/camera/ui/menu/setting/down/ArrowView;->f:I

    const/4 v0, 0x3

    const/4 v1, 0x0

    .line 102
    invoke-virtual {p1, v0, v1}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result v0

    iput v0, p0, Lcom/oplus/camera/ui/menu/setting/down/ArrowView;->b:F

    const/4 v0, 0x2

    .line 103
    invoke-virtual {p1, v0, v1}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result v0

    iput v0, p0, Lcom/oplus/camera/ui/menu/setting/down/ArrowView;->d:F

    .line 104
    invoke-virtual {p1}, Landroid/content/res/TypedArray;->recycle()V

    .line 107
    :cond_0
    new-instance p1, Landroid/graphics/Path;

    invoke-direct {p1}, Landroid/graphics/Path;-><init>()V

    iput-object p1, p0, Lcom/oplus/camera/ui/menu/setting/down/ArrowView;->e:Landroid/graphics/Path;

    .line 108
    new-instance p1, Landroid/graphics/Paint;

    invoke-direct {p1}, Landroid/graphics/Paint;-><init>()V

    iput-object p1, p0, Lcom/oplus/camera/ui/menu/setting/down/ArrowView;->c:Landroid/graphics/Paint;

    .line 109
    iget-object p1, p0, Lcom/oplus/camera/ui/menu/setting/down/ArrowView;->c:Landroid/graphics/Paint;

    sget-object v0, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {p1, v0}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 110
    iget-object p1, p0, Lcom/oplus/camera/ui/menu/setting/down/ArrowView;->c:Landroid/graphics/Paint;

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 111
    iget-object p1, p0, Lcom/oplus/camera/ui/menu/setting/down/ArrowView;->c:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Cap;->ROUND:Landroid/graphics/Paint$Cap;

    invoke-virtual {p1, v1}, Landroid/graphics/Paint;->setStrokeCap(Landroid/graphics/Paint$Cap;)V

    .line 112
    iget-object p1, p0, Lcom/oplus/camera/ui/menu/setting/down/ArrowView;->c:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Join;->ROUND:Landroid/graphics/Paint$Join;

    invoke-virtual {p1, v1}, Landroid/graphics/Paint;->setStrokeJoin(Landroid/graphics/Paint$Join;)V

    .line 114
    new-instance p1, Landroid/graphics/BlurMaskFilter;

    const/high16 v1, 0x40800000    # 4.0f

    sget-object v2, Landroid/graphics/BlurMaskFilter$Blur;->SOLID:Landroid/graphics/BlurMaskFilter$Blur;

    invoke-direct {p1, v1, v2}, Landroid/graphics/BlurMaskFilter;-><init>(FLandroid/graphics/BlurMaskFilter$Blur;)V

    iput-object p1, p0, Lcom/oplus/camera/ui/menu/setting/down/ArrowView;->g:Landroid/graphics/BlurMaskFilter;

    .line 115
    new-instance p1, Landroid/graphics/PorterDuffXfermode;

    sget-object v1, Landroid/graphics/PorterDuff$Mode;->XOR:Landroid/graphics/PorterDuff$Mode;

    invoke-direct {p1, v1}, Landroid/graphics/PorterDuffXfermode;-><init>(Landroid/graphics/PorterDuff$Mode;)V

    iput-object p1, p0, Lcom/oplus/camera/ui/menu/setting/down/ArrowView;->h:Landroid/graphics/PorterDuffXfermode;

    .line 116
    new-instance p1, Lcom/oplus/camera/ui/menu/setting/down/ArrowView$a;

    const/4 v1, 0x0

    invoke-direct {p1, p0, v1}, Lcom/oplus/camera/ui/menu/setting/down/ArrowView$a;-><init>(Lcom/oplus/camera/ui/menu/setting/down/ArrowView;Lcom/oplus/camera/ui/menu/setting/down/ArrowView$1;)V

    iput-object p1, p0, Lcom/oplus/camera/ui/menu/setting/down/ArrowView;->s:Lcom/oplus/camera/ui/menu/setting/down/ArrowView$a;

    .line 117
    invoke-virtual {p0, v0, v1}, Lcom/oplus/camera/ui/menu/setting/down/ArrowView;->setLayerType(ILandroid/graphics/Paint;)V

    .line 119
    iget-object p1, p0, Lcom/oplus/camera/ui/menu/setting/down/ArrowView;->c:Landroid/graphics/Paint;

    iget v0, p0, Lcom/oplus/camera/ui/menu/setting/down/ArrowView;->f:I

    invoke-virtual {p1, v0}, Landroid/graphics/Paint;->setColor(I)V

    .line 120
    iget-object p1, p0, Lcom/oplus/camera/ui/menu/setting/down/ArrowView;->c:Landroid/graphics/Paint;

    iget p0, p0, Lcom/oplus/camera/ui/menu/setting/down/ArrowView;->b:F

    invoke-virtual {p1, p0}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    return-void
.end method

.method static synthetic a(Lcom/oplus/camera/ui/menu/setting/down/ArrowView;F)V
    .locals 0

    .line 40
    invoke-direct {p0, p1}, Lcom/oplus/camera/ui/menu/setting/down/ArrowView;->b(F)V

    return-void
.end method

.method static synthetic b(Lcom/oplus/camera/ui/menu/setting/down/ArrowView;F)F
    .locals 0

    .line 40
    iput p1, p0, Lcom/oplus/camera/ui/menu/setting/down/ArrowView;->q:F

    return p1
.end method

.method private b(F)V
    .locals 10

    .line 284
    invoke-virtual {p0}, Lcom/oplus/camera/ui/menu/setting/down/ArrowView;->getMeasuredWidth()I

    move-result v0

    .line 285
    invoke-virtual {p0}, Lcom/oplus/camera/ui/menu/setting/down/ArrowView;->getMeasuredHeight()I

    move-result v1

    int-to-float v2, v0

    .line 286
    iget v3, p0, Lcom/oplus/camera/ui/menu/setting/down/ArrowView;->d:F

    const/high16 v4, 0x40000000    # 2.0f

    mul-float/2addr v3, v4

    sub-float/2addr v2, v3

    const/high16 v3, 0x41000000    # 8.0f

    div-float v3, v2, v3

    div-float/2addr v3, v4

    mul-float/2addr v3, p1

    const/high16 v4, 0x40800000    # 4.0f

    div-float/2addr v2, v4

    float-to-double v4, v2

    const-wide/high16 v6, 0x4000000000000000L    # 2.0

    .line 291
    invoke-static {v4, v5, v6, v7}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v4

    float-to-double v8, v3

    invoke-static {v8, v9, v6, v7}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v6

    sub-double/2addr v4, v6

    invoke-static {v4, v5}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v4

    double-to-int v2, v4

    .line 292
    iget-object v4, p0, Lcom/oplus/camera/ui/menu/setting/down/ArrowView;->e:Landroid/graphics/Path;

    invoke-virtual {v4}, Landroid/graphics/Path;->reset()V

    .line 294
    div-int/lit8 v4, v1, 0x2

    int-to-float v4, v4

    div-int/lit8 v1, v1, 0x3

    int-to-float v1, v1

    mul-float/2addr v1, p1

    add-float/2addr v4, v1

    .line 295
    div-int/lit8 v0, v0, 0x2

    .line 297
    iget-object p1, p0, Lcom/oplus/camera/ui/menu/setting/down/ArrowView;->e:Landroid/graphics/Path;

    mul-int/lit8 v2, v2, 0x2

    sub-int v1, v0, v2

    int-to-float v1, v1

    sub-float v5, v4, v3

    invoke-virtual {p1, v1, v5}, Landroid/graphics/Path;->moveTo(FF)V

    .line 298
    iget-object p1, p0, Lcom/oplus/camera/ui/menu/setting/down/ArrowView;->e:Landroid/graphics/Path;

    invoke-virtual {p1, v1, v5}, Landroid/graphics/Path;->lineTo(FF)V

    .line 299
    iget-object p1, p0, Lcom/oplus/camera/ui/menu/setting/down/ArrowView;->e:Landroid/graphics/Path;

    int-to-float v1, v0

    add-float/2addr v4, v3

    invoke-virtual {p1, v1, v4}, Landroid/graphics/Path;->lineTo(FF)V

    .line 300
    iget-object p1, p0, Lcom/oplus/camera/ui/menu/setting/down/ArrowView;->e:Landroid/graphics/Path;

    add-int/2addr v0, v2

    int-to-float v0, v0

    invoke-virtual {p1, v0, v5}, Landroid/graphics/Path;->lineTo(FF)V

    .line 302
    invoke-virtual {p0}, Lcom/oplus/camera/ui/menu/setting/down/ArrowView;->invalidate()V

    return-void
.end method

.method static synthetic c(Lcom/oplus/camera/ui/menu/setting/down/ArrowView;F)V
    .locals 0

    .line 40
    invoke-direct {p0, p1}, Lcom/oplus/camera/ui/menu/setting/down/ArrowView;->a(F)V

    return-void
.end method


# virtual methods
.method protected onDetachedFromWindow()V
    .locals 1

    .line 342
    invoke-super {p0}, Landroid/view/View;->onDetachedFromWindow()V

    .line 344
    iget-object v0, p0, Lcom/oplus/camera/ui/menu/setting/down/ArrowView;->l:Landroid/animation/AnimatorSet;

    if-eqz v0, :cond_0

    .line 345
    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->removeAllListeners()V

    .line 346
    iget-object v0, p0, Lcom/oplus/camera/ui/menu/setting/down/ArrowView;->l:Landroid/animation/AnimatorSet;

    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->cancel()V

    const/4 v0, 0x0

    .line 347
    iput-object v0, p0, Lcom/oplus/camera/ui/menu/setting/down/ArrowView;->l:Landroid/animation/AnimatorSet;

    :cond_0
    return-void
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 3

    .line 142
    iget-boolean v0, p0, Lcom/oplus/camera/ui/menu/setting/down/ArrowView;->n:Z

    if-eqz v0, :cond_0

    .line 143
    iget-object v0, p0, Lcom/oplus/camera/ui/menu/setting/down/ArrowView;->c:Landroid/graphics/Paint;

    const v1, -0xbbbbbc

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 144
    iget-object v0, p0, Lcom/oplus/camera/ui/menu/setting/down/ArrowView;->c:Landroid/graphics/Paint;

    iget-object v1, p0, Lcom/oplus/camera/ui/menu/setting/down/ArrowView;->g:Landroid/graphics/BlurMaskFilter;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setMaskFilter(Landroid/graphics/MaskFilter;)Landroid/graphics/MaskFilter;

    .line 145
    iget-object v0, p0, Lcom/oplus/camera/ui/menu/setting/down/ArrowView;->e:Landroid/graphics/Path;

    iget-object v1, p0, Lcom/oplus/camera/ui/menu/setting/down/ArrowView;->c:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v1}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    .line 146
    iget-object v0, p0, Lcom/oplus/camera/ui/menu/setting/down/ArrowView;->c:Landroid/graphics/Paint;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setMaskFilter(Landroid/graphics/MaskFilter;)Landroid/graphics/MaskFilter;

    .line 147
    iget-object v0, p0, Lcom/oplus/camera/ui/menu/setting/down/ArrowView;->c:Landroid/graphics/Paint;

    iget-object v2, p0, Lcom/oplus/camera/ui/menu/setting/down/ArrowView;->h:Landroid/graphics/PorterDuffXfermode;

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setXfermode(Landroid/graphics/Xfermode;)Landroid/graphics/Xfermode;

    .line 148
    iget-object v0, p0, Lcom/oplus/camera/ui/menu/setting/down/ArrowView;->e:Landroid/graphics/Path;

    iget-object v2, p0, Lcom/oplus/camera/ui/menu/setting/down/ArrowView;->c:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v2}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    .line 149
    iget-object v0, p0, Lcom/oplus/camera/ui/menu/setting/down/ArrowView;->c:Landroid/graphics/Paint;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setXfermode(Landroid/graphics/Xfermode;)Landroid/graphics/Xfermode;

    .line 152
    :cond_0
    iget-object v0, p0, Lcom/oplus/camera/ui/menu/setting/down/ArrowView;->c:Landroid/graphics/Paint;

    iget v1, p0, Lcom/oplus/camera/ui/menu/setting/down/ArrowView;->f:I

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 153
    iget-object v0, p0, Lcom/oplus/camera/ui/menu/setting/down/ArrowView;->e:Landroid/graphics/Path;

    iget-object p0, p0, Lcom/oplus/camera/ui/menu/setting/down/ArrowView;->c:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, p0}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    return-void
.end method

.method protected onMeasure(II)V
    .locals 4

    .line 134
    invoke-super {p0, p1, p2}, Landroid/view/View;->onMeasure(II)V

    .line 135
    invoke-virtual {p0}, Lcom/oplus/camera/ui/menu/setting/down/ArrowView;->getMeasuredWidth()I

    move-result p1

    shr-int/lit8 p1, p1, 0x1

    int-to-float p1, p1

    .line 136
    iget-object p2, p0, Lcom/oplus/camera/ui/menu/setting/down/ArrowView;->e:Landroid/graphics/Path;

    const/high16 v0, 0x41e00000    # 28.0f

    sub-float v1, p1, v0

    iget v2, p0, Lcom/oplus/camera/ui/menu/setting/down/ArrowView;->b:F

    const/high16 v3, 0x40000000    # 2.0f

    div-float/2addr v2, v3

    invoke-virtual {p2, v1, v2}, Landroid/graphics/Path;->moveTo(FF)V

    .line 137
    iget-object p2, p0, Lcom/oplus/camera/ui/menu/setting/down/ArrowView;->e:Landroid/graphics/Path;

    add-float/2addr p1, v0

    iget p0, p0, Lcom/oplus/camera/ui/menu/setting/down/ArrowView;->b:F

    div-float/2addr p0, v3

    invoke-virtual {p2, p1, p0}, Landroid/graphics/Path;->lineTo(FF)V

    return-void
.end method

.method protected onSizeChanged(IIII)V
    .locals 0

    .line 125
    invoke-super {p0, p1, p2, p3, p4}, Landroid/view/View;->onSizeChanged(IIII)V

    if-lez p1, :cond_0

    if-lez p2, :cond_0

    int-to-float p1, p1

    const/high16 p2, 0x40000000    # 2.0f

    .line 128
    iget p3, p0, Lcom/oplus/camera/ui/menu/setting/down/ArrowView;->d:F

    mul-float/2addr p3, p2

    sub-float/2addr p1, p3

    const/high16 p2, 0x41000000    # 8.0f

    div-float/2addr p1, p2

    iput p1, p0, Lcom/oplus/camera/ui/menu/setting/down/ArrowView;->r:F

    :cond_0
    return-void
.end method

.method public setInverseColor(Z)V
    .locals 0

    .line 307
    iput-boolean p1, p0, Lcom/oplus/camera/ui/menu/setting/down/ArrowView;->n:Z

    .line 308
    invoke-virtual {p0}, Lcom/oplus/camera/ui/menu/setting/down/ArrowView;->invalidate()V

    return-void
.end method
