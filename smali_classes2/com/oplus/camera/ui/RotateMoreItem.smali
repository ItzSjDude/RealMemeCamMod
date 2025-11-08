.class public Lcom/oplus/camera/ui/RotateMoreItem;
.super Landroid/view/View;
.source "RotateMoreItem.java"


# instance fields
.field private A:I

.field private B:I

.field private C:Z

.field private D:Z

.field private final a:Landroid/view/animation/PathInterpolator;

.field private b:I

.field private c:I

.field private d:I

.field private e:Z

.field private f:J

.field private g:J

.field private h:Landroid/graphics/Bitmap;

.field private i:Landroid/graphics/Bitmap;

.field private j:Ljava/lang/String;

.field private k:Landroid/text/TextPaint;

.field private l:Landroid/graphics/Paint;

.field private m:Landroid/graphics/Paint;

.field private n:Landroid/graphics/Paint;

.field private o:Landroid/animation/ValueAnimator;

.field private p:Landroid/animation/ValueAnimator;

.field private q:I

.field private r:I

.field private s:I

.field private t:I

.field private u:I

.field private v:I

.field private w:I

.field private x:I

.field private y:F

.field private z:F


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    .line 83
    invoke-direct {p0, p1, v0}, Lcom/oplus/camera/ui/RotateMoreItem;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    const/4 v0, 0x0

    .line 87
    invoke-direct {p0, p1, p2, v0}, Lcom/oplus/camera/ui/RotateMoreItem;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 5

    .line 91
    invoke-direct {p0, p1, p2, p3}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 43
    new-instance v0, Landroid/view/animation/PathInterpolator;

    const/4 v1, 0x0

    const v2, 0x3ea8f5c3    # 0.33f

    const v3, 0x3f2b851f    # 0.67f

    const/high16 v4, 0x3f800000    # 1.0f

    invoke-direct {v0, v2, v1, v3, v4}, Landroid/view/animation/PathInterpolator;-><init>(FFFF)V

    iput-object v0, p0, Lcom/oplus/camera/ui/RotateMoreItem;->a:Landroid/view/animation/PathInterpolator;

    const/4 v0, 0x0

    .line 45
    iput v0, p0, Lcom/oplus/camera/ui/RotateMoreItem;->b:I

    .line 46
    iput v0, p0, Lcom/oplus/camera/ui/RotateMoreItem;->c:I

    .line 47
    iput v0, p0, Lcom/oplus/camera/ui/RotateMoreItem;->d:I

    .line 49
    iput-boolean v0, p0, Lcom/oplus/camera/ui/RotateMoreItem;->e:Z

    const-wide/16 v2, 0x0

    .line 50
    iput-wide v2, p0, Lcom/oplus/camera/ui/RotateMoreItem;->f:J

    .line 51
    iput-wide v2, p0, Lcom/oplus/camera/ui/RotateMoreItem;->g:J

    const/4 v2, 0x0

    .line 52
    iput-object v2, p0, Lcom/oplus/camera/ui/RotateMoreItem;->h:Landroid/graphics/Bitmap;

    .line 53
    iput-object v2, p0, Lcom/oplus/camera/ui/RotateMoreItem;->i:Landroid/graphics/Bitmap;

    .line 54
    iput-object v2, p0, Lcom/oplus/camera/ui/RotateMoreItem;->j:Ljava/lang/String;

    .line 55
    iput-object v2, p0, Lcom/oplus/camera/ui/RotateMoreItem;->k:Landroid/text/TextPaint;

    .line 56
    iput-object v2, p0, Lcom/oplus/camera/ui/RotateMoreItem;->l:Landroid/graphics/Paint;

    .line 57
    iput-object v2, p0, Lcom/oplus/camera/ui/RotateMoreItem;->m:Landroid/graphics/Paint;

    .line 58
    iput-object v2, p0, Lcom/oplus/camera/ui/RotateMoreItem;->n:Landroid/graphics/Paint;

    .line 60
    iput-object v2, p0, Lcom/oplus/camera/ui/RotateMoreItem;->o:Landroid/animation/ValueAnimator;

    .line 61
    iput-object v2, p0, Lcom/oplus/camera/ui/RotateMoreItem;->p:Landroid/animation/ValueAnimator;

    .line 63
    iput v0, p0, Lcom/oplus/camera/ui/RotateMoreItem;->q:I

    .line 64
    iput v0, p0, Lcom/oplus/camera/ui/RotateMoreItem;->r:I

    .line 65
    iput v0, p0, Lcom/oplus/camera/ui/RotateMoreItem;->s:I

    .line 67
    iput v0, p0, Lcom/oplus/camera/ui/RotateMoreItem;->t:I

    .line 68
    iput v0, p0, Lcom/oplus/camera/ui/RotateMoreItem;->u:I

    .line 70
    iput v0, p0, Lcom/oplus/camera/ui/RotateMoreItem;->v:I

    .line 71
    iput v0, p0, Lcom/oplus/camera/ui/RotateMoreItem;->w:I

    .line 72
    iput v0, p0, Lcom/oplus/camera/ui/RotateMoreItem;->x:I

    .line 74
    iput v1, p0, Lcom/oplus/camera/ui/RotateMoreItem;->y:F

    .line 75
    iput v1, p0, Lcom/oplus/camera/ui/RotateMoreItem;->z:F

    .line 77
    iput v0, p0, Lcom/oplus/camera/ui/RotateMoreItem;->A:I

    .line 78
    iput v0, p0, Lcom/oplus/camera/ui/RotateMoreItem;->B:I

    .line 79
    iput-boolean v0, p0, Lcom/oplus/camera/ui/RotateMoreItem;->C:Z

    .line 80
    iput-boolean v0, p0, Lcom/oplus/camera/ui/RotateMoreItem;->D:Z

    .line 93
    sget-object v1, Lcom/oplus/camera/R$styleable;->RotateMoreItem:[I

    invoke-virtual {p1, p2, v1, p3, v0}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object p1

    const/16 p2, 0x20

    const/4 p3, 0x4

    .line 94
    invoke-virtual {p1, p3, p2}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result p3

    iput p3, p0, Lcom/oplus/camera/ui/RotateMoreItem;->q:I

    const/4 p3, 0x2

    .line 95
    invoke-virtual {p1, p3, p2}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result p3

    iput p3, p0, Lcom/oplus/camera/ui/RotateMoreItem;->r:I

    const/16 p3, 0x8

    const/4 v1, 0x3

    .line 96
    invoke-virtual {p1, v1, p3}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v1

    iput v1, p0, Lcom/oplus/camera/ui/RotateMoreItem;->B:I

    const/4 v1, 0x1

    .line 99
    invoke-virtual {p1, v1, p2}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result p2

    iput p2, p0, Lcom/oplus/camera/ui/RotateMoreItem;->t:I

    const/4 p2, -0x1

    .line 100
    invoke-virtual {p1, v0, p2}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v0

    iput v0, p0, Lcom/oplus/camera/ui/RotateMoreItem;->u:I

    const/4 v0, 0x6

    .line 102
    invoke-virtual {p1, v0, v1}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v0

    iput v0, p0, Lcom/oplus/camera/ui/RotateMoreItem;->v:I

    const/high16 v0, 0x41400000    # 12.0f

    .line 103
    invoke-virtual {p1, p3, v0}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result p3

    iput p3, p0, Lcom/oplus/camera/ui/RotateMoreItem;->z:F

    const/4 p3, 0x5

    .line 104
    invoke-virtual {p1, p3, p2}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result p2

    iput p2, p0, Lcom/oplus/camera/ui/RotateMoreItem;->w:I

    const/4 p2, 0x7

    const/16 p3, 0x46

    .line 105
    invoke-virtual {p1, p2, p3}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result p2

    iput p2, p0, Lcom/oplus/camera/ui/RotateMoreItem;->x:I

    const/16 p2, 0x9

    const/16 p3, 0xa

    .line 107
    invoke-virtual {p1, p2, p3}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result p2

    iput p2, p0, Lcom/oplus/camera/ui/RotateMoreItem;->A:I

    .line 109
    invoke-virtual {p1}, Landroid/content/res/TypedArray;->recycle()V

    .line 111
    invoke-direct {p0}, Lcom/oplus/camera/ui/RotateMoreItem;->b()V

    return-void
.end method

.method private a(Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;
    .locals 8

    const/4 v0, 0x0

    if-nez p1, :cond_0

    return-object v0

    .line 298
    :cond_0
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v4

    .line 299
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v5

    if-lez v4, :cond_5

    if-gtz v5, :cond_1

    goto :goto_1

    :cond_1
    const/high16 v0, 0x3f800000    # 1.0f

    .line 307
    iget v1, p0, Lcom/oplus/camera/ui/RotateMoreItem;->q:I

    if-gt v4, v1, :cond_2

    iget v1, p0, Lcom/oplus/camera/ui/RotateMoreItem;->r:I

    if-le v5, v1, :cond_4

    .line 308
    :cond_2
    iget v0, p0, Lcom/oplus/camera/ui/RotateMoreItem;->q:I

    int-to-float v0, v0

    int-to-float v1, v4

    div-float/2addr v0, v1

    .line 309
    iget p0, p0, Lcom/oplus/camera/ui/RotateMoreItem;->r:I

    int-to-float p0, p0

    int-to-float v1, v5

    div-float/2addr p0, v1

    cmpg-float v1, v0, p0

    if-gez v1, :cond_3

    goto :goto_0

    :cond_3
    move v0, p0

    .line 313
    :cond_4
    :goto_0
    new-instance v6, Landroid/graphics/Matrix;

    invoke-direct {v6}, Landroid/graphics/Matrix;-><init>()V

    .line 314
    invoke-virtual {v6, v0, v0}, Landroid/graphics/Matrix;->postScale(FF)Z

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v7, 0x1

    move-object v1, p1

    .line 315
    invoke-static/range {v1 .. v7}, Landroid/graphics/Bitmap;->createBitmap(Landroid/graphics/Bitmap;IIIILandroid/graphics/Matrix;Z)Landroid/graphics/Bitmap;

    move-result-object p0

    return-object p0

    :cond_5
    :goto_1
    return-object v0
.end method

.method static synthetic a(Lcom/oplus/camera/ui/RotateMoreItem;)Landroid/graphics/Paint;
    .locals 0

    .line 27
    iget-object p0, p0, Lcom/oplus/camera/ui/RotateMoreItem;->n:Landroid/graphics/Paint;

    return-object p0
.end method

.method static synthetic a(Lcom/oplus/camera/ui/RotateMoreItem;Z)Z
    .locals 0

    .line 27
    iput-boolean p1, p0, Lcom/oplus/camera/ui/RotateMoreItem;->D:Z

    return p1
.end method

.method private b()V
    .locals 8

    .line 115
    iget-object v0, p0, Lcom/oplus/camera/ui/RotateMoreItem;->k:Landroid/text/TextPaint;

    if-eqz v0, :cond_0

    return-void

    .line 119
    :cond_0
    new-instance v0, Landroid/text/TextPaint;

    invoke-direct {v0}, Landroid/text/TextPaint;-><init>()V

    iput-object v0, p0, Lcom/oplus/camera/ui/RotateMoreItem;->k:Landroid/text/TextPaint;

    .line 120
    iget-object v0, p0, Lcom/oplus/camera/ui/RotateMoreItem;->k:Landroid/text/TextPaint;

    iget v1, p0, Lcom/oplus/camera/ui/RotateMoreItem;->z:F

    invoke-virtual {v0, v1}, Landroid/text/TextPaint;->setTextSize(F)V

    .line 121
    iget-object v0, p0, Lcom/oplus/camera/ui/RotateMoreItem;->k:Landroid/text/TextPaint;

    iget v1, p0, Lcom/oplus/camera/ui/RotateMoreItem;->w:I

    invoke-virtual {v0, v1}, Landroid/text/TextPaint;->setColor(I)V

    .line 122
    iget-object v0, p0, Lcom/oplus/camera/ui/RotateMoreItem;->k:Landroid/text/TextPaint;

    sget-object v1, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v1}, Landroid/text/TextPaint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 123
    iget-object v0, p0, Lcom/oplus/camera/ui/RotateMoreItem;->k:Landroid/text/TextPaint;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/text/TextPaint;->setFlags(I)V

    .line 124
    iget-object v0, p0, Lcom/oplus/camera/ui/RotateMoreItem;->k:Landroid/text/TextPaint;

    invoke-static {v1}, Lcom/oplus/camera/util/Util;->c(Z)Landroid/graphics/Typeface;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/text/TextPaint;->setTypeface(Landroid/graphics/Typeface;)Landroid/graphics/Typeface;

    .line 125
    iget-object v0, p0, Lcom/oplus/camera/ui/RotateMoreItem;->k:Landroid/text/TextPaint;

    invoke-virtual {p0}, Lcom/oplus/camera/ui/RotateMoreItem;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f070ce0

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    int-to-float v2, v2

    const/4 v3, 0x0

    .line 126
    invoke-virtual {p0}, Lcom/oplus/camera/ui/RotateMoreItem;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f070ce1

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v4

    int-to-float v4, v4

    .line 127
    invoke-virtual {p0}, Lcom/oplus/camera/ui/RotateMoreItem;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x7f0604d4

    const/4 v7, 0x0

    invoke-virtual {v5, v6, v7}, Landroid/content/res/Resources;->getColor(ILandroid/content/res/Resources$Theme;)I

    move-result v5

    .line 125
    invoke-virtual {v0, v2, v3, v4, v5}, Landroid/text/TextPaint;->setShadowLayer(FFFI)V

    .line 129
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/oplus/camera/ui/RotateMoreItem;->l:Landroid/graphics/Paint;

    .line 130
    iget-object v0, p0, Lcom/oplus/camera/ui/RotateMoreItem;->l:Landroid/graphics/Paint;

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 131
    iget-object v0, p0, Lcom/oplus/camera/ui/RotateMoreItem;->l:Landroid/graphics/Paint;

    const/high16 v2, -0x10000

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setColor(I)V

    .line 133
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/oplus/camera/ui/RotateMoreItem;->m:Landroid/graphics/Paint;

    .line 134
    iget-object v0, p0, Lcom/oplus/camera/ui/RotateMoreItem;->m:Landroid/graphics/Paint;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 135
    iget-object v0, p0, Lcom/oplus/camera/ui/RotateMoreItem;->m:Landroid/graphics/Paint;

    iget v1, p0, Lcom/oplus/camera/ui/RotateMoreItem;->u:I

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 137
    invoke-direct {p0}, Lcom/oplus/camera/ui/RotateMoreItem;->c()V

    return-void
.end method

.method private c()V
    .locals 5

    .line 141
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/oplus/camera/ui/RotateMoreItem;->n:Landroid/graphics/Paint;

    .line 142
    iget-object v0, p0, Lcom/oplus/camera/ui/RotateMoreItem;->n:Landroid/graphics/Paint;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 143
    iget-object v0, p0, Lcom/oplus/camera/ui/RotateMoreItem;->n:Landroid/graphics/Paint;

    const/4 v1, -0x1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 144
    iget-object v0, p0, Lcom/oplus/camera/ui/RotateMoreItem;->n:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 145
    invoke-virtual {p0}, Lcom/oplus/camera/ui/RotateMoreItem;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f070728

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v0

    .line 146
    iget-object v1, p0, Lcom/oplus/camera/ui/RotateMoreItem;->n:Landroid/graphics/Paint;

    invoke-virtual {v1, v0}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 147
    invoke-virtual {p0}, Lcom/oplus/camera/ui/RotateMoreItem;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0708bd

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v1

    const/high16 v2, 0x40000000    # 2.0f

    div-float/2addr v0, v2

    sub-float/2addr v1, v0

    iput v1, p0, Lcom/oplus/camera/ui/RotateMoreItem;->y:F

    const/4 v0, 0x2

    .line 149
    new-array v1, v0, [I

    fill-array-data v1, :array_0

    invoke-static {v1}, Landroid/animation/ValueAnimator;->ofInt([I)Landroid/animation/ValueAnimator;

    move-result-object v1

    iput-object v1, p0, Lcom/oplus/camera/ui/RotateMoreItem;->o:Landroid/animation/ValueAnimator;

    .line 150
    iget-object v1, p0, Lcom/oplus/camera/ui/RotateMoreItem;->o:Landroid/animation/ValueAnimator;

    const-wide/16 v2, 0xfa

    invoke-virtual {v1, v2, v3}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 151
    iget-object v1, p0, Lcom/oplus/camera/ui/RotateMoreItem;->o:Landroid/animation/ValueAnimator;

    iget-object v4, p0, Lcom/oplus/camera/ui/RotateMoreItem;->a:Landroid/view/animation/PathInterpolator;

    invoke-virtual {v1, v4}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 152
    iget-object v1, p0, Lcom/oplus/camera/ui/RotateMoreItem;->o:Landroid/animation/ValueAnimator;

    new-instance v4, Lcom/oplus/camera/ui/RotateMoreItem$1;

    invoke-direct {v4, p0}, Lcom/oplus/camera/ui/RotateMoreItem$1;-><init>(Lcom/oplus/camera/ui/RotateMoreItem;)V

    invoke-virtual {v1, v4}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 161
    iget-object v1, p0, Lcom/oplus/camera/ui/RotateMoreItem;->o:Landroid/animation/ValueAnimator;

    new-instance v4, Lcom/oplus/camera/ui/RotateMoreItem$2;

    invoke-direct {v4, p0}, Lcom/oplus/camera/ui/RotateMoreItem$2;-><init>(Lcom/oplus/camera/ui/RotateMoreItem;)V

    invoke-virtual {v1, v4}, Landroid/animation/ValueAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 174
    new-array v0, v0, [I

    fill-array-data v0, :array_1

    invoke-static {v0}, Landroid/animation/ValueAnimator;->ofInt([I)Landroid/animation/ValueAnimator;

    move-result-object v0

    iput-object v0, p0, Lcom/oplus/camera/ui/RotateMoreItem;->p:Landroid/animation/ValueAnimator;

    .line 175
    iget-object v0, p0, Lcom/oplus/camera/ui/RotateMoreItem;->p:Landroid/animation/ValueAnimator;

    invoke-virtual {v0, v2, v3}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 176
    iget-object v0, p0, Lcom/oplus/camera/ui/RotateMoreItem;->p:Landroid/animation/ValueAnimator;

    iget-object v1, p0, Lcom/oplus/camera/ui/RotateMoreItem;->a:Landroid/view/animation/PathInterpolator;

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 177
    iget-object v0, p0, Lcom/oplus/camera/ui/RotateMoreItem;->p:Landroid/animation/ValueAnimator;

    new-instance v1, Lcom/oplus/camera/ui/RotateMoreItem$3;

    invoke-direct {v1, p0}, Lcom/oplus/camera/ui/RotateMoreItem$3;-><init>(Lcom/oplus/camera/ui/RotateMoreItem;)V

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 186
    iget-object v0, p0, Lcom/oplus/camera/ui/RotateMoreItem;->p:Landroid/animation/ValueAnimator;

    new-instance v1, Lcom/oplus/camera/ui/RotateMoreItem$4;

    invoke-direct {v1, p0}, Lcom/oplus/camera/ui/RotateMoreItem$4;-><init>(Lcom/oplus/camera/ui/RotateMoreItem;)V

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    return-void

    nop

    :array_0
    .array-data 4
        0x0
        0xff
    .end array-data

    :array_1
    .array-data 4
        0xff
        0x0
    .end array-data
.end method


# virtual methods
.method public a(II)V
    .locals 2

    .line 276
    iput p1, p0, Lcom/oplus/camera/ui/RotateMoreItem;->b:I

    if-ltz p2, :cond_0

    .line 277
    rem-int/lit16 p2, p2, 0x168

    goto :goto_0

    .line 278
    :cond_0
    rem-int/lit16 p2, p2, 0x168

    add-int/lit16 p2, p2, 0x168

    :goto_0
    iput p2, p0, Lcom/oplus/camera/ui/RotateMoreItem;->d:I

    .line 280
    iget p1, p0, Lcom/oplus/camera/ui/RotateMoreItem;->b:I

    iput p1, p0, Lcom/oplus/camera/ui/RotateMoreItem;->c:I

    .line 281
    invoke-static {}, Landroid/view/animation/AnimationUtils;->currentAnimationTimeMillis()J

    move-result-wide p1

    iput-wide p1, p0, Lcom/oplus/camera/ui/RotateMoreItem;->f:J

    .line 282
    iget p1, p0, Lcom/oplus/camera/ui/RotateMoreItem;->d:I

    iget p2, p0, Lcom/oplus/camera/ui/RotateMoreItem;->b:I

    sub-int/2addr p1, p2

    if-ltz p1, :cond_1

    goto :goto_1

    :cond_1
    add-int/lit16 p1, p1, 0x168

    :goto_1
    const/16 p2, 0xb4

    if-le p1, p2, :cond_2

    add-int/lit16 p1, p1, -0x168

    :cond_2
    if-ltz p1, :cond_3

    const/4 p2, 0x1

    goto :goto_2

    :cond_3
    const/4 p2, 0x0

    .line 287
    :goto_2
    iput-boolean p2, p0, Lcom/oplus/camera/ui/RotateMoreItem;->e:Z

    .line 288
    iget-wide v0, p0, Lcom/oplus/camera/ui/RotateMoreItem;->f:J

    invoke-static {p1}, Ljava/lang/Math;->abs(I)I

    move-result p1

    mul-int/lit16 p1, p1, 0x3e8

    div-int/lit16 p1, p1, 0x10e

    int-to-long p1, p1

    add-long/2addr v0, p1

    iput-wide v0, p0, Lcom/oplus/camera/ui/RotateMoreItem;->g:J

    .line 290
    invoke-virtual {p0}, Lcom/oplus/camera/ui/RotateMoreItem;->invalidate()V

    return-void
.end method

.method public a()Z
    .locals 0

    .line 268
    iget-object p0, p0, Lcom/oplus/camera/ui/RotateMoreItem;->i:Landroid/graphics/Bitmap;

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method protected finalize()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .line 227
    invoke-super {p0}, Ljava/lang/Object;->finalize()V

    .line 229
    iget-object v0, p0, Lcom/oplus/camera/ui/RotateMoreItem;->h:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v0

    if-nez v0, :cond_0

    .line 230
    iget-object p0, p0, Lcom/oplus/camera/ui/RotateMoreItem;->h:Landroid/graphics/Bitmap;

    invoke-virtual {p0}, Landroid/graphics/Bitmap;->recycle()V

    :cond_0
    return-void
.end method

.method public getName()Ljava/lang/String;
    .locals 0

    .line 386
    iget-object p0, p0, Lcom/oplus/camera/ui/RotateMoreItem;->j:Ljava/lang/String;

    return-object p0
.end method

.method public getTargetDegree()I
    .locals 0

    .line 395
    iget p0, p0, Lcom/oplus/camera/ui/RotateMoreItem;->d:I

    return p0
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 6

    .line 320
    iget v0, p0, Lcom/oplus/camera/ui/RotateMoreItem;->b:I

    iget v1, p0, Lcom/oplus/camera/ui/RotateMoreItem;->d:I

    if-eq v0, v1, :cond_3

    .line 321
    invoke-static {}, Landroid/view/animation/AnimationUtils;->currentAnimationTimeMillis()J

    move-result-wide v0

    .line 323
    iget-wide v2, p0, Lcom/oplus/camera/ui/RotateMoreItem;->g:J

    cmp-long v2, v0, v2

    if-gez v2, :cond_2

    .line 324
    iget-wide v2, p0, Lcom/oplus/camera/ui/RotateMoreItem;->f:J

    sub-long/2addr v0, v2

    long-to-int v0, v0

    .line 325
    iget v1, p0, Lcom/oplus/camera/ui/RotateMoreItem;->c:I

    iget-boolean v2, p0, Lcom/oplus/camera/ui/RotateMoreItem;->e:Z

    if-eqz v2, :cond_0

    goto :goto_0

    :cond_0
    neg-int v0, v0

    :goto_0
    mul-int/lit16 v0, v0, 0x10e

    div-int/lit16 v0, v0, 0x3e8

    add-int/2addr v1, v0

    if-ltz v1, :cond_1

    .line 327
    rem-int/lit16 v1, v1, 0x168

    goto :goto_1

    .line 328
    :cond_1
    rem-int/lit16 v1, v1, 0x168

    add-int/lit16 v1, v1, 0x168

    .line 329
    :goto_1
    iput v1, p0, Lcom/oplus/camera/ui/RotateMoreItem;->b:I

    .line 330
    invoke-virtual {p0}, Lcom/oplus/camera/ui/RotateMoreItem;->invalidate()V

    goto :goto_2

    .line 332
    :cond_2
    iget v0, p0, Lcom/oplus/camera/ui/RotateMoreItem;->d:I

    iput v0, p0, Lcom/oplus/camera/ui/RotateMoreItem;->b:I

    .line 336
    :cond_3
    :goto_2
    iget v0, p0, Lcom/oplus/camera/ui/RotateMoreItem;->b:I

    neg-int v0, v0

    int-to-float v0, v0

    invoke-virtual {p0}, Lcom/oplus/camera/ui/RotateMoreItem;->getWidth()I

    move-result v1

    int-to-float v1, v1

    const/high16 v2, 0x3f000000    # 0.5f

    mul-float/2addr v1, v2

    invoke-virtual {p0}, Lcom/oplus/camera/ui/RotateMoreItem;->getHeight()I

    move-result v3

    int-to-float v3, v3

    mul-float/2addr v3, v2

    invoke-virtual {p1, v0, v1, v3}, Landroid/graphics/Canvas;->rotate(FFF)V

    .line 337
    iget-object v0, p0, Lcom/oplus/camera/ui/RotateMoreItem;->h:Landroid/graphics/Bitmap;

    invoke-direct {p0, v0}, Lcom/oplus/camera/ui/RotateMoreItem;->a(Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 339
    invoke-virtual {p0}, Lcom/oplus/camera/ui/RotateMoreItem;->getWidth()I

    move-result v1

    int-to-float v1, v1

    mul-float/2addr v1, v2

    .line 340
    iget v3, p0, Lcom/oplus/camera/ui/RotateMoreItem;->t:I

    iget v4, p0, Lcom/oplus/camera/ui/RotateMoreItem;->A:I

    add-int/2addr v4, v3

    int-to-float v4, v4

    .line 342
    iget-object v5, p0, Lcom/oplus/camera/ui/RotateMoreItem;->m:Landroid/graphics/Paint;

    if-eqz v5, :cond_4

    int-to-float v3, v3

    .line 343
    invoke-virtual {p1, v1, v4, v3, v5}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    .line 346
    :cond_4
    iget-boolean v3, p0, Lcom/oplus/camera/ui/RotateMoreItem;->D:Z

    if-eqz v3, :cond_5

    .line 347
    iget v3, p0, Lcom/oplus/camera/ui/RotateMoreItem;->y:F

    iget-object v5, p0, Lcom/oplus/camera/ui/RotateMoreItem;->n:Landroid/graphics/Paint;

    invoke-virtual {p1, v1, v4, v3, v5}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    :cond_5
    if-eqz v0, :cond_6

    .line 351
    invoke-virtual {p0}, Lcom/oplus/camera/ui/RotateMoreItem;->getWidth()I

    move-result v1

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v3

    sub-int/2addr v1, v3

    int-to-float v1, v1

    mul-float/2addr v1, v2

    iget v3, p0, Lcom/oplus/camera/ui/RotateMoreItem;->t:I

    mul-int/lit8 v3, v3, 0x2

    .line 352
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v4

    sub-int/2addr v3, v4

    int-to-float v3, v3

    mul-float/2addr v3, v2

    iget v4, p0, Lcom/oplus/camera/ui/RotateMoreItem;->A:I

    int-to-float v4, v4

    add-float/2addr v3, v4

    const/4 v4, 0x0

    .line 351
    invoke-virtual {p1, v0, v1, v3, v4}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    .line 355
    :cond_6
    iget-object v1, p0, Lcom/oplus/camera/ui/RotateMoreItem;->i:Landroid/graphics/Bitmap;

    invoke-direct {p0, v1}, Lcom/oplus/camera/ui/RotateMoreItem;->a(Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;

    move-result-object v1

    if-eqz v1, :cond_7

    if-eqz v0, :cond_7

    .line 358
    invoke-virtual {p0}, Lcom/oplus/camera/ui/RotateMoreItem;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f070a39

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    .line 359
    invoke-virtual {p0}, Lcom/oplus/camera/ui/RotateMoreItem;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v3, 0x7f070a3a

    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    .line 360
    invoke-virtual {p0}, Lcom/oplus/camera/ui/RotateMoreItem;->getWidth()I

    move-result v3

    int-to-float v3, v3

    mul-float/2addr v3, v2

    iget v4, p0, Lcom/oplus/camera/ui/RotateMoreItem;->t:I

    int-to-float v4, v4

    add-float/2addr v3, v4

    int-to-float v4, v1

    sub-float/2addr v3, v4

    .line 361
    iget v4, p0, Lcom/oplus/camera/ui/RotateMoreItem;->A:I

    add-int/2addr v4, v1

    int-to-float v1, v4

    .line 363
    iget-object v4, p0, Lcom/oplus/camera/ui/RotateMoreItem;->l:Landroid/graphics/Paint;

    if-eqz v4, :cond_7

    int-to-float v0, v0

    .line 364
    invoke-virtual {p1, v3, v1, v0, v4}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    .line 368
    :cond_7
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    .line 370
    iget-object v0, p0, Lcom/oplus/camera/ui/RotateMoreItem;->j:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_8

    .line 371
    iget-object v0, p0, Lcom/oplus/camera/ui/RotateMoreItem;->j:Ljava/lang/String;

    const/4 v1, 0x0

    .line 372
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v3

    iget-object v4, p0, Lcom/oplus/camera/ui/RotateMoreItem;->k:Landroid/text/TextPaint;

    iget v5, p0, Lcom/oplus/camera/ui/RotateMoreItem;->x:I

    invoke-static {v0, v1, v3, v4, v5}, Landroid/text/StaticLayout$Builder;->obtain(Ljava/lang/CharSequence;IILandroid/text/TextPaint;I)Landroid/text/StaticLayout$Builder;

    move-result-object v0

    iget v1, p0, Lcom/oplus/camera/ui/RotateMoreItem;->v:I

    .line 373
    invoke-virtual {v0, v1}, Landroid/text/StaticLayout$Builder;->setMaxLines(I)Landroid/text/StaticLayout$Builder;

    move-result-object v0

    sget-object v1, Landroid/text/Layout$Alignment;->ALIGN_CENTER:Landroid/text/Layout$Alignment;

    .line 374
    invoke-virtual {v0, v1}, Landroid/text/StaticLayout$Builder;->setAlignment(Landroid/text/Layout$Alignment;)Landroid/text/StaticLayout$Builder;

    move-result-object v0

    sget-object v1, Landroid/text/TextUtils$TruncateAt;->END:Landroid/text/TextUtils$TruncateAt;

    .line 375
    invoke-virtual {v0, v1}, Landroid/text/StaticLayout$Builder;->setEllipsize(Landroid/text/TextUtils$TruncateAt;)Landroid/text/StaticLayout$Builder;

    move-result-object v0

    sget-object v1, Landroid/text/TextDirectionHeuristics;->LOCALE:Landroid/text/TextDirectionHeuristic;

    .line 376
    invoke-virtual {v0, v1}, Landroid/text/StaticLayout$Builder;->setTextDirection(Landroid/text/TextDirectionHeuristic;)Landroid/text/StaticLayout$Builder;

    move-result-object v0

    .line 377
    invoke-virtual {v0}, Landroid/text/StaticLayout$Builder;->build()Landroid/text/StaticLayout;

    move-result-object v0

    .line 378
    invoke-virtual {p0}, Lcom/oplus/camera/ui/RotateMoreItem;->getWidth()I

    move-result v1

    iget v3, p0, Lcom/oplus/camera/ui/RotateMoreItem;->x:I

    sub-int/2addr v1, v3

    int-to-float v1, v1

    mul-float/2addr v1, v2

    iget v2, p0, Lcom/oplus/camera/ui/RotateMoreItem;->t:I

    mul-int/lit8 v2, v2, 0x2

    iget v3, p0, Lcom/oplus/camera/ui/RotateMoreItem;->B:I

    add-int/2addr v2, v3

    iget p0, p0, Lcom/oplus/camera/ui/RotateMoreItem;->A:I

    add-int/2addr v2, p0

    int-to-float p0, v2

    invoke-virtual {p1, v1, p0}, Landroid/graphics/Canvas;->translate(FF)V

    .line 380
    invoke-virtual {v0, p1}, Landroid/text/StaticLayout;->draw(Landroid/graphics/Canvas;)V

    .line 381
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    :cond_8
    return-void
.end method

.method public setFrameShow(Z)V
    .locals 1

    .line 206
    iget-boolean v0, p0, Lcom/oplus/camera/ui/RotateMoreItem;->D:Z

    if-ne v0, p1, :cond_0

    return-void

    :cond_0
    if-eqz p1, :cond_2

    .line 211
    iget-object p1, p0, Lcom/oplus/camera/ui/RotateMoreItem;->p:Landroid/animation/ValueAnimator;

    if-eqz p1, :cond_1

    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->isStarted()Z

    move-result p1

    if-eqz p1, :cond_1

    .line 212
    iget-object p1, p0, Lcom/oplus/camera/ui/RotateMoreItem;->p:Landroid/animation/ValueAnimator;

    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->cancel()V

    .line 215
    :cond_1
    iget-object p0, p0, Lcom/oplus/camera/ui/RotateMoreItem;->o:Landroid/animation/ValueAnimator;

    invoke-virtual {p0}, Landroid/animation/ValueAnimator;->start()V

    goto :goto_0

    .line 217
    :cond_2
    iget-object p1, p0, Lcom/oplus/camera/ui/RotateMoreItem;->o:Landroid/animation/ValueAnimator;

    if-eqz p1, :cond_3

    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->isStarted()Z

    move-result p1

    if-eqz p1, :cond_3

    .line 218
    iget-object p1, p0, Lcom/oplus/camera/ui/RotateMoreItem;->o:Landroid/animation/ValueAnimator;

    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->cancel()V

    .line 221
    :cond_3
    iget-object p0, p0, Lcom/oplus/camera/ui/RotateMoreItem;->p:Landroid/animation/ValueAnimator;

    invoke-virtual {p0}, Landroid/animation/ValueAnimator;->start()V

    :goto_0
    return-void
.end method

.method public setImage(Landroid/graphics/Bitmap;)V
    .locals 1

    .line 235
    iget-object v0, p0, Lcom/oplus/camera/ui/RotateMoreItem;->h:Landroid/graphics/Bitmap;

    if-ne p1, v0, :cond_0

    return-void

    :cond_0
    if-eqz v0, :cond_2

    .line 240
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v0

    if-nez v0, :cond_1

    .line 241
    iget-object v0, p0, Lcom/oplus/camera/ui/RotateMoreItem;->h:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    :cond_1
    const/4 v0, 0x0

    .line 244
    iput-object v0, p0, Lcom/oplus/camera/ui/RotateMoreItem;->h:Landroid/graphics/Bitmap;

    .line 247
    :cond_2
    iput-object p1, p0, Lcom/oplus/camera/ui/RotateMoreItem;->h:Landroid/graphics/Bitmap;

    return-void
.end method

.method public setSubscriptHint(Landroid/graphics/Bitmap;)V
    .locals 1

    if-nez p1, :cond_0

    .line 251
    iget-object v0, p0, Lcom/oplus/camera/ui/RotateMoreItem;->i:Landroid/graphics/Bitmap;

    if-nez v0, :cond_0

    return-void

    .line 255
    :cond_0
    iget-object v0, p0, Lcom/oplus/camera/ui/RotateMoreItem;->i:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_2

    .line 256
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v0

    if-nez v0, :cond_1

    .line 257
    iget-object v0, p0, Lcom/oplus/camera/ui/RotateMoreItem;->i:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    :cond_1
    const/4 v0, 0x0

    .line 260
    iput-object v0, p0, Lcom/oplus/camera/ui/RotateMoreItem;->i:Landroid/graphics/Bitmap;

    .line 263
    :cond_2
    iput-object p1, p0, Lcom/oplus/camera/ui/RotateMoreItem;->i:Landroid/graphics/Bitmap;

    .line 264
    invoke-virtual {p0}, Lcom/oplus/camera/ui/RotateMoreItem;->invalidate()V

    return-void
.end method

.method public setSubscriptHintRTL(Z)V
    .locals 0

    .line 272
    iput-boolean p1, p0, Lcom/oplus/camera/ui/RotateMoreItem;->C:Z

    return-void
.end method

.method public setText(Ljava/lang/String;)V
    .locals 0

    .line 201
    iput-object p1, p0, Lcom/oplus/camera/ui/RotateMoreItem;->j:Ljava/lang/String;

    .line 202
    invoke-virtual {p0, p1}, Lcom/oplus/camera/ui/RotateMoreItem;->setContentDescription(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public setTextColor(I)V
    .locals 0

    .line 390
    iput p1, p0, Lcom/oplus/camera/ui/RotateMoreItem;->w:I

    .line 391
    iget-object p0, p0, Lcom/oplus/camera/ui/RotateMoreItem;->k:Landroid/text/TextPaint;

    invoke-virtual {p0, p1}, Landroid/text/TextPaint;->setColor(I)V

    return-void
.end method
