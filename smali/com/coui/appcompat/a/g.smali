.class public Lcom/coui/appcompat/a/g;
.super Ljava/lang/Object;
.source "COUIHintRedDotHelper.java"


# instance fields
.field private a:I

.field private b:I

.field private c:I

.field private d:I

.field private e:I

.field private f:I

.field private g:I

.field private h:I

.field private i:I

.field private j:I

.field private k:I

.field private l:I

.field private m:I

.field private n:I

.field private o:Landroid/text/TextPaint;

.field private p:Landroid/graphics/Paint;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;[III)V
    .locals 0

    .line 86
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 87
    invoke-virtual {p1, p2, p3, p4, p5}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object p2

    .line 88
    sget p3, Lcoui/support/appcompat/R$styleable;->COUIHintRedDot_couiHintRedDotColor:I

    const/4 p4, 0x0

    invoke-virtual {p2, p3, p4}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result p3

    iput p3, p0, Lcom/coui/appcompat/a/g;->a:I

    .line 89
    sget p3, Lcoui/support/appcompat/R$styleable;->COUIHintRedDot_couiHintRedDotTextColor:I

    invoke-virtual {p2, p3, p4}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result p3

    iput p3, p0, Lcom/coui/appcompat/a/g;->b:I

    .line 90
    sget p3, Lcoui/support/appcompat/R$styleable;->COUIHintRedDot_couiHintTextSize:I

    invoke-virtual {p2, p3, p4}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result p3

    iput p3, p0, Lcom/coui/appcompat/a/g;->c:I

    .line 91
    sget p3, Lcoui/support/appcompat/R$styleable;->COUIHintRedDot_couiSmallWidth:I

    invoke-virtual {p2, p3, p4}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result p3

    iput p3, p0, Lcom/coui/appcompat/a/g;->d:I

    .line 92
    sget p3, Lcoui/support/appcompat/R$styleable;->COUIHintRedDot_couiMediumWidth:I

    invoke-virtual {p2, p3, p4}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result p3

    iput p3, p0, Lcom/coui/appcompat/a/g;->e:I

    .line 93
    sget p3, Lcoui/support/appcompat/R$styleable;->COUIHintRedDot_couiLargeWidth:I

    invoke-virtual {p2, p3, p4}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result p3

    iput p3, p0, Lcom/coui/appcompat/a/g;->f:I

    .line 94
    sget p3, Lcoui/support/appcompat/R$styleable;->COUIHintRedDot_couiHeight:I

    invoke-virtual {p2, p3, p4}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result p3

    iput p3, p0, Lcom/coui/appcompat/a/g;->h:I

    .line 95
    sget p3, Lcoui/support/appcompat/R$styleable;->COUIHintRedDot_couiCornerRadius:I

    invoke-virtual {p2, p3, p4}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result p3

    iput p3, p0, Lcom/coui/appcompat/a/g;->i:I

    .line 96
    sget p3, Lcoui/support/appcompat/R$styleable;->COUIHintRedDot_couiDotDiameter:I

    invoke-virtual {p2, p3, p4}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result p3

    iput p3, p0, Lcom/coui/appcompat/a/g;->j:I

    .line 97
    sget p3, Lcoui/support/appcompat/R$styleable;->COUIHintRedDot_couiEllipsisDiameter:I

    invoke-virtual {p2, p3, p4}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result p3

    iput p3, p0, Lcom/coui/appcompat/a/g;->l:I

    .line 98
    invoke-virtual {p2}, Landroid/content/res/TypedArray;->recycle()V

    .line 99
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    sget p3, Lcoui/support/appcompat/R$dimen;->coui_hint_red_dot_rect_radius:I

    invoke-virtual {p2, p3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p2

    iput p2, p0, Lcom/coui/appcompat/a/g;->k:I

    .line 100
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    sget p3, Lcoui/support/appcompat/R$dimen;->coui_hint_red_dot_navi_small_width:I

    invoke-virtual {p2, p3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p2

    iput p2, p0, Lcom/coui/appcompat/a/g;->g:I

    .line 101
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    sget p3, Lcoui/support/appcompat/R$dimen;->coui_hint_red_dot_ellipsis_spacing:I

    invoke-virtual {p2, p3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p2

    iput p2, p0, Lcom/coui/appcompat/a/g;->m:I

    .line 102
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    sget p2, Lcoui/support/appcompat/R$dimen;->coui_dot_stroke_width:I

    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p1

    iput p1, p0, Lcom/coui/appcompat/a/g;->n:I

    .line 104
    new-instance p1, Landroid/text/TextPaint;

    invoke-direct {p1}, Landroid/text/TextPaint;-><init>()V

    iput-object p1, p0, Lcom/coui/appcompat/a/g;->o:Landroid/text/TextPaint;

    .line 105
    iget-object p1, p0, Lcom/coui/appcompat/a/g;->o:Landroid/text/TextPaint;

    const/4 p2, 0x1

    invoke-virtual {p1, p2}, Landroid/text/TextPaint;->setAntiAlias(Z)V

    .line 106
    iget-object p1, p0, Lcom/coui/appcompat/a/g;->o:Landroid/text/TextPaint;

    iget p3, p0, Lcom/coui/appcompat/a/g;->b:I

    invoke-virtual {p1, p3}, Landroid/text/TextPaint;->setColor(I)V

    .line 107
    iget-object p1, p0, Lcom/coui/appcompat/a/g;->o:Landroid/text/TextPaint;

    iget p3, p0, Lcom/coui/appcompat/a/g;->c:I

    int-to-float p3, p3

    invoke-virtual {p1, p3}, Landroid/text/TextPaint;->setTextSize(F)V

    const-string p1, "sans-serif-medium"

    .line 108
    invoke-static {p1, p4}, Landroid/graphics/Typeface;->create(Ljava/lang/String;I)Landroid/graphics/Typeface;

    move-result-object p1

    .line 109
    iget-object p3, p0, Lcom/coui/appcompat/a/g;->o:Landroid/text/TextPaint;

    invoke-virtual {p3, p1}, Landroid/text/TextPaint;->setTypeface(Landroid/graphics/Typeface;)Landroid/graphics/Typeface;

    .line 110
    new-instance p1, Landroid/graphics/Paint;

    invoke-direct {p1}, Landroid/graphics/Paint;-><init>()V

    iput-object p1, p0, Lcom/coui/appcompat/a/g;->p:Landroid/graphics/Paint;

    .line 111
    iget-object p1, p0, Lcom/coui/appcompat/a/g;->p:Landroid/graphics/Paint;

    invoke-virtual {p1, p2}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 112
    iget-object p1, p0, Lcom/coui/appcompat/a/g;->p:Landroid/graphics/Paint;

    iget p2, p0, Lcom/coui/appcompat/a/g;->a:I

    invoke-virtual {p1, p2}, Landroid/graphics/Paint;->setColor(I)V

    .line 113
    iget-object p0, p0, Lcom/coui/appcompat/a/g;->p:Landroid/graphics/Paint;

    sget-object p1, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {p0, p1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    return-void
.end method

.method private a()I
    .locals 0

    .line 280
    iget p0, p0, Lcom/coui/appcompat/a/g;->h:I

    return p0
.end method

.method private a(Landroid/graphics/Canvas;ILandroid/graphics/RectF;)V
    .locals 3

    if-gtz p2, :cond_0

    return-void

    .line 158
    :cond_0
    iget v0, p3, Landroid/graphics/RectF;->right:F

    iget v1, p3, Landroid/graphics/RectF;->left:F

    sub-float/2addr v0, v1

    iget v1, p3, Landroid/graphics/RectF;->bottom:F

    iget v2, p3, Landroid/graphics/RectF;->top:F

    sub-float/2addr v1, v2

    invoke-static {v0, v1}, Ljava/lang/Math;->min(FF)F

    move-result v0

    iget v1, p0, Lcom/coui/appcompat/a/g;->i:I

    mul-int/lit8 v1, v1, 0x2

    int-to-float v1, v1

    cmpg-float v0, v0, v1

    if-gez v0, :cond_1

    .line 159
    iget v0, p3, Landroid/graphics/RectF;->right:F

    iget v1, p3, Landroid/graphics/RectF;->left:F

    sub-float/2addr v0, v1

    iget v1, p3, Landroid/graphics/RectF;->bottom:F

    iget v2, p3, Landroid/graphics/RectF;->top:F

    sub-float/2addr v1, v2

    invoke-static {v0, v1}, Ljava/lang/Math;->min(FF)F

    move-result v0

    float-to-int v0, v0

    div-int/lit8 v0, v0, 0x2

    .line 160
    invoke-static {}, Lcom/coui/appcompat/a/o;->a()Lcom/coui/appcompat/a/o;

    move-result-object v1

    int-to-float v0, v0

    invoke-virtual {v1, p3, v0}, Lcom/coui/appcompat/a/o;->a(Landroid/graphics/RectF;F)Landroid/graphics/Path;

    move-result-object v0

    goto :goto_0

    .line 162
    :cond_1
    invoke-static {}, Lcom/coui/appcompat/a/o;->a()Lcom/coui/appcompat/a/o;

    move-result-object v0

    iget v1, p0, Lcom/coui/appcompat/a/g;->i:I

    int-to-float v1, v1

    invoke-virtual {v0, p3, v1}, Lcom/coui/appcompat/a/o;->a(Landroid/graphics/RectF;F)Landroid/graphics/Path;

    move-result-object v0

    .line 164
    :goto_0
    iget-object v1, p0, Lcom/coui/appcompat/a/g;->p:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v1}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    const/16 v0, 0xff

    .line 166
    invoke-direct {p0, p1, p2, v0, p3}, Lcom/coui/appcompat/a/g;->b(Landroid/graphics/Canvas;IILandroid/graphics/RectF;)V

    return-void
.end method

.method private a(Landroid/graphics/Canvas;Landroid/graphics/RectF;)V
    .locals 2

    .line 144
    iget v0, p2, Landroid/graphics/RectF;->bottom:F

    iget v1, p2, Landroid/graphics/RectF;->top:F

    sub-float/2addr v0, v1

    const/high16 v1, 0x40000000    # 2.0f

    div-float/2addr v0, v1

    .line 145
    iget v1, p2, Landroid/graphics/RectF;->left:F

    add-float/2addr v1, v0

    iget p2, p2, Landroid/graphics/RectF;->top:F

    add-float/2addr p2, v0

    iget-object p0, p0, Lcom/coui/appcompat/a/g;->p:Landroid/graphics/Paint;

    invoke-virtual {p1, v1, p2, v0, p0}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    return-void
.end method

.method private b(Landroid/graphics/Canvas;IILandroid/graphics/RectF;)V
    .locals 5

    if-gtz p2, :cond_0

    return-void

    .line 195
    :cond_0
    iget-object v0, p0, Lcom/coui/appcompat/a/g;->o:Landroid/text/TextPaint;

    const/4 v1, 0x0

    const/16 v2, 0xff

    invoke-static {v2, p3}, Ljava/lang/Math;->min(II)I

    move-result p3

    invoke-static {v1, p3}, Ljava/lang/Math;->max(II)I

    move-result p3

    invoke-virtual {v0, p3}, Landroid/text/TextPaint;->setAlpha(I)V

    const/16 p3, 0x3e8

    const/high16 v0, 0x40000000    # 2.0f

    if-ge p2, p3, :cond_1

    .line 197
    invoke-static {p2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p2

    .line 198
    iget-object p3, p0, Lcom/coui/appcompat/a/g;->o:Landroid/text/TextPaint;

    invoke-virtual {p3}, Landroid/text/TextPaint;->getFontMetricsInt()Landroid/graphics/Paint$FontMetricsInt;

    move-result-object p3

    .line 199
    iget-object v1, p0, Lcom/coui/appcompat/a/g;->o:Landroid/text/TextPaint;

    invoke-virtual {v1, p2}, Landroid/text/TextPaint;->measureText(Ljava/lang/String;)F

    move-result v1

    float-to-int v1, v1

    .line 200
    iget v2, p4, Landroid/graphics/RectF;->left:F

    iget v3, p4, Landroid/graphics/RectF;->right:F

    iget v4, p4, Landroid/graphics/RectF;->left:F

    sub-float/2addr v3, v4

    int-to-float v1, v1

    sub-float/2addr v3, v1

    div-float/2addr v3, v0

    add-float/2addr v2, v3

    .line 201
    iget v1, p4, Landroid/graphics/RectF;->top:F

    iget p4, p4, Landroid/graphics/RectF;->bottom:F

    add-float/2addr v1, p4

    iget p4, p3, Landroid/graphics/Paint$FontMetricsInt;->ascent:I

    int-to-float p4, p4

    sub-float/2addr v1, p4

    iget p3, p3, Landroid/graphics/Paint$FontMetricsInt;->descent:I

    int-to-float p3, p3

    sub-float/2addr v1, p3

    div-float/2addr v1, v0

    .line 202
    iget-object p0, p0, Lcom/coui/appcompat/a/g;->o:Landroid/text/TextPaint;

    invoke-virtual {p1, p2, v2, v1, p0}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    goto :goto_1

    .line 204
    :cond_1
    iget p2, p4, Landroid/graphics/RectF;->left:F

    iget p3, p4, Landroid/graphics/RectF;->right:F

    add-float/2addr p2, p3

    div-float/2addr p2, v0

    .line 205
    iget p3, p4, Landroid/graphics/RectF;->top:F

    iget p4, p4, Landroid/graphics/RectF;->bottom:F

    add-float/2addr p3, p4

    div-float/2addr p3, v0

    const/4 p4, -0x1

    :goto_0
    const/4 v1, 0x1

    if-gt p4, v1, :cond_2

    .line 207
    iget v1, p0, Lcom/coui/appcompat/a/g;->m:I

    iget v2, p0, Lcom/coui/appcompat/a/g;->l:I

    add-int/2addr v1, v2

    mul-int/2addr v1, p4

    int-to-float v1, v1

    add-float/2addr v1, p2

    int-to-float v2, v2

    div-float/2addr v2, v0

    iget-object v3, p0, Lcom/coui/appcompat/a/g;->o:Landroid/text/TextPaint;

    invoke-virtual {p1, v1, p3, v2, v3}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    add-int/lit8 p4, p4, 0x1

    goto :goto_0

    :cond_2
    :goto_1
    return-void
.end method

.method private b(Landroid/graphics/Canvas;Landroid/graphics/RectF;)V
    .locals 3

    .line 149
    iget v0, p2, Landroid/graphics/RectF;->bottom:F

    iget v1, p2, Landroid/graphics/RectF;->top:F

    sub-float/2addr v0, v1

    const/high16 v1, 0x40000000    # 2.0f

    div-float/2addr v0, v1

    .line 150
    iget v1, p2, Landroid/graphics/RectF;->left:F

    add-float/2addr v1, v0

    iget p2, p2, Landroid/graphics/RectF;->top:F

    add-float/2addr p2, v0

    iget v2, p0, Lcom/coui/appcompat/a/g;->n:I

    int-to-float v2, v2

    sub-float/2addr v0, v2

    iget-object p0, p0, Lcom/coui/appcompat/a/g;->p:Landroid/graphics/Paint;

    invoke-virtual {p1, v1, p2, v0, p0}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    return-void
.end method

.method private l(I)I
    .locals 1

    const/16 v0, 0xa

    if-ge p1, v0, :cond_0

    .line 259
    iget p0, p0, Lcom/coui/appcompat/a/g;->d:I

    return p0

    :cond_0
    const/16 v0, 0x64

    if-ge p1, v0, :cond_1

    .line 261
    iget p0, p0, Lcom/coui/appcompat/a/g;->e:I

    return p0

    :cond_1
    const/16 v0, 0x3e8

    if-ge p1, v0, :cond_2

    .line 263
    iget p0, p0, Lcom/coui/appcompat/a/g;->f:I

    return p0

    .line 265
    :cond_2
    iget p0, p0, Lcom/coui/appcompat/a/g;->e:I

    return p0
.end method

.method private m(I)I
    .locals 1

    const/16 v0, 0xa

    if-ge p1, v0, :cond_0

    .line 271
    iget p0, p0, Lcom/coui/appcompat/a/g;->g:I

    return p0

    :cond_0
    const/16 v0, 0x64

    if-ge p1, v0, :cond_1

    .line 273
    iget p0, p0, Lcom/coui/appcompat/a/g;->d:I

    return p0

    .line 275
    :cond_1
    iget p0, p0, Lcom/coui/appcompat/a/g;->e:I

    return p0
.end method


# virtual methods
.method public a(I)I
    .locals 3

    const/4 v0, 0x0

    if-eqz p1, :cond_3

    const/4 v1, 0x1

    if-eq p1, v1, :cond_2

    const/4 v1, 0x2

    if-eq p1, v1, :cond_1

    const/4 v2, 0x3

    if-eq p1, v2, :cond_0

    const/4 v1, 0x4

    if-eq p1, v1, :cond_2

    return v0

    .line 250
    :cond_0
    iget p0, p0, Lcom/coui/appcompat/a/g;->e:I

    div-int/2addr p0, v1

    return p0

    .line 248
    :cond_1
    invoke-direct {p0}, Lcom/coui/appcompat/a/g;->a()I

    move-result p0

    return p0

    .line 246
    :cond_2
    iget p0, p0, Lcom/coui/appcompat/a/g;->j:I

    return p0

    :cond_3
    return v0
.end method

.method public a(II)I
    .locals 2

    const/4 v0, 0x0

    if-eqz p1, :cond_3

    const/4 v1, 0x1

    if-eq p1, v1, :cond_2

    const/4 v1, 0x2

    if-eq p1, v1, :cond_1

    const/4 v1, 0x3

    if-eq p1, v1, :cond_0

    const/4 p2, 0x4

    if-eq p1, p2, :cond_2

    return v0

    .line 229
    :cond_0
    invoke-direct {p0, p2}, Lcom/coui/appcompat/a/g;->m(I)I

    move-result p0

    return p0

    .line 227
    :cond_1
    invoke-direct {p0, p2}, Lcom/coui/appcompat/a/g;->l(I)I

    move-result p0

    return p0

    .line 225
    :cond_2
    iget p0, p0, Lcom/coui/appcompat/a/g;->j:I

    return p0

    :cond_3
    return v0
.end method

.method public a(Landroid/graphics/Canvas;IIIILandroid/graphics/RectF;)V
    .locals 2

    .line 179
    invoke-static {}, Lcom/coui/appcompat/a/o;->a()Lcom/coui/appcompat/a/o;

    move-result-object v0

    iget v1, p0, Lcom/coui/appcompat/a/g;->i:I

    int-to-float v1, v1

    invoke-virtual {v0, p6, v1}, Lcom/coui/appcompat/a/o;->a(Landroid/graphics/RectF;F)Landroid/graphics/Path;

    move-result-object v0

    .line 180
    iget-object v1, p0, Lcom/coui/appcompat/a/g;->p:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v1}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    if-le p3, p5, :cond_0

    .line 183
    invoke-direct {p0, p1, p2, p3, p6}, Lcom/coui/appcompat/a/g;->b(Landroid/graphics/Canvas;IILandroid/graphics/RectF;)V

    .line 184
    invoke-direct {p0, p1, p4, p5, p6}, Lcom/coui/appcompat/a/g;->b(Landroid/graphics/Canvas;IILandroid/graphics/RectF;)V

    goto :goto_0

    .line 186
    :cond_0
    invoke-direct {p0, p1, p4, p5, p6}, Lcom/coui/appcompat/a/g;->b(Landroid/graphics/Canvas;IILandroid/graphics/RectF;)V

    .line 187
    invoke-direct {p0, p1, p2, p3, p6}, Lcom/coui/appcompat/a/g;->b(Landroid/graphics/Canvas;IILandroid/graphics/RectF;)V

    :goto_0
    return-void
.end method

.method public a(Landroid/graphics/Canvas;IILandroid/graphics/RectF;)V
    .locals 1

    if-eqz p2, :cond_3

    const/4 v0, 0x1

    if-eq p2, v0, :cond_2

    const/4 v0, 0x2

    if-eq p2, v0, :cond_1

    const/4 v0, 0x3

    if-eq p2, v0, :cond_1

    const/4 p3, 0x4

    if-eq p2, p3, :cond_0

    goto :goto_0

    .line 129
    :cond_0
    invoke-direct {p0, p1, p4}, Lcom/coui/appcompat/a/g;->b(Landroid/graphics/Canvas;Landroid/graphics/RectF;)V

    goto :goto_0

    .line 136
    :cond_1
    invoke-direct {p0, p1, p3, p4}, Lcom/coui/appcompat/a/g;->a(Landroid/graphics/Canvas;ILandroid/graphics/RectF;)V

    goto :goto_0

    .line 132
    :cond_2
    invoke-direct {p0, p1, p4}, Lcom/coui/appcompat/a/g;->a(Landroid/graphics/Canvas;Landroid/graphics/RectF;)V

    :cond_3
    :goto_0
    return-void
.end method

.method public b(I)V
    .locals 0

    .line 289
    iput p1, p0, Lcom/coui/appcompat/a/g;->a:I

    .line 290
    iget-object p1, p0, Lcom/coui/appcompat/a/g;->p:Landroid/graphics/Paint;

    iget p0, p0, Lcom/coui/appcompat/a/g;->a:I

    invoke-virtual {p1, p0}, Landroid/graphics/Paint;->setColor(I)V

    return-void
.end method

.method public c(I)V
    .locals 0

    .line 299
    iput p1, p0, Lcom/coui/appcompat/a/g;->b:I

    .line 300
    iget-object p1, p0, Lcom/coui/appcompat/a/g;->o:Landroid/text/TextPaint;

    iget p0, p0, Lcom/coui/appcompat/a/g;->b:I

    invoke-virtual {p1, p0}, Landroid/text/TextPaint;->setColor(I)V

    return-void
.end method

.method public d(I)V
    .locals 0

    .line 309
    iput p1, p0, Lcom/coui/appcompat/a/g;->c:I

    return-void
.end method

.method public e(I)V
    .locals 0

    .line 318
    iput p1, p0, Lcom/coui/appcompat/a/g;->d:I

    return-void
.end method

.method public f(I)V
    .locals 0

    .line 327
    iput p1, p0, Lcom/coui/appcompat/a/g;->e:I

    return-void
.end method

.method public g(I)V
    .locals 0

    .line 336
    iput p1, p0, Lcom/coui/appcompat/a/g;->f:I

    return-void
.end method

.method public h(I)V
    .locals 0

    .line 345
    iput p1, p0, Lcom/coui/appcompat/a/g;->h:I

    return-void
.end method

.method public i(I)V
    .locals 0

    .line 354
    iput p1, p0, Lcom/coui/appcompat/a/g;->i:I

    return-void
.end method

.method public j(I)V
    .locals 0

    .line 363
    iput p1, p0, Lcom/coui/appcompat/a/g;->j:I

    return-void
.end method

.method public k(I)V
    .locals 0

    .line 372
    iput p1, p0, Lcom/coui/appcompat/a/g;->l:I

    return-void
.end method
