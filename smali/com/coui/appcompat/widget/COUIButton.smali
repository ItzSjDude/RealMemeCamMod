.class public Lcom/coui/appcompat/widget/COUIButton;
.super Landroidx/appcompat/widget/f;
.source "COUIButton.java"


# static fields
.field private static a:Ljava/lang/String; = "COUIButton"


# instance fields
.field private b:Landroid/view/animation/Interpolator;

.field private c:Landroid/animation/ValueAnimator;

.field private e:Z

.field private f:Z

.field private g:I

.field private final h:Landroid/graphics/Paint;

.field private i:I

.field private j:I

.field private k:F

.field private l:F

.field private m:F

.field private n:F

.field private o:F

.field private p:F

.field private q:I

.field private r:Landroid/graphics/Rect;

.field private s:Landroid/graphics/Rect;

.field private t:[F

.field private u:I


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    .line 100
    invoke-direct {p0, p1, v0}, Lcom/coui/appcompat/widget/COUIButton;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    .line 107
    sget v0, Lcoui/support/appcompat/R$attr;->buttonStyle:I

    invoke-direct {p0, p1, p2, v0}, Lcom/coui/appcompat/widget/COUIButton;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 3

    .line 124
    invoke-direct {p0, p1, p2, p3}, Landroidx/appcompat/widget/f;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 79
    new-instance v0, Landroid/graphics/Paint;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Landroid/graphics/Paint;-><init>(I)V

    iput-object v0, p0, Lcom/coui/appcompat/widget/COUIButton;->h:Landroid/graphics/Paint;

    const/high16 v0, 0x41a80000    # 21.0f

    .line 82
    iput v0, p0, Lcom/coui/appcompat/widget/COUIButton;->k:F

    const/high16 v0, 0x3f800000    # 1.0f

    .line 85
    iput v0, p0, Lcom/coui/appcompat/widget/COUIButton;->m:F

    .line 86
    iput v0, p0, Lcom/coui/appcompat/widget/COUIButton;->n:F

    .line 90
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/coui/appcompat/widget/COUIButton;->r:Landroid/graphics/Rect;

    .line 91
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/coui/appcompat/widget/COUIButton;->s:Landroid/graphics/Rect;

    const/4 v0, 0x3

    .line 92
    new-array v0, v0, [F

    iput-object v0, p0, Lcom/coui/appcompat/widget/COUIButton;->t:[F

    if-eqz p2, :cond_0

    .line 125
    invoke-interface {p2}, Landroid/util/AttributeSet;->getStyleAttribute()I

    move-result v0

    if-eqz v0, :cond_0

    .line 126
    invoke-interface {p2}, Landroid/util/AttributeSet;->getStyleAttribute()I

    move-result v0

    iput v0, p0, Lcom/coui/appcompat/widget/COUIButton;->u:I

    goto :goto_0

    .line 128
    :cond_0
    iput p3, p0, Lcom/coui/appcompat/widget/COUIButton;->u:I

    :goto_0
    const/4 v0, 0x0

    .line 131
    invoke-static {p0, v0}, Lcom/coui/appcompat/a/e;->a(Landroid/view/View;Z)V

    .line 132
    sget-object v2, Lcoui/support/appcompat/R$styleable;->COUIButton:[I

    .line 133
    invoke-virtual {p1, p2, v2, p3, v0}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object p2

    .line 138
    sget p3, Lcoui/support/appcompat/R$styleable;->COUIButton_animEnable:I

    invoke-virtual {p2, p3, v0}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result p3

    iput-boolean p3, p0, Lcom/coui/appcompat/widget/COUIButton;->f:Z

    .line 139
    sget p3, Lcoui/support/appcompat/R$styleable;->COUIButton_animType:I

    invoke-virtual {p2, p3, v1}, Landroid/content/res/TypedArray;->getInteger(II)I

    move-result p3

    iput p3, p0, Lcom/coui/appcompat/widget/COUIButton;->g:I

    .line 140
    iget-boolean p3, p0, Lcom/coui/appcompat/widget/COUIButton;->f:Z

    if-eqz p3, :cond_1

    .line 141
    sget p3, Lcoui/support/appcompat/R$styleable;->COUIButton_brightness:I

    const v1, 0x3f4ccccd    # 0.8f

    invoke-virtual {p2, p3, v1}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result p3

    iput p3, p0, Lcom/coui/appcompat/widget/COUIButton;->l:F

    .line 142
    sget p3, Lcoui/support/appcompat/R$styleable;->COUIButton_drawableRadius:I

    const/high16 v1, 0x40e00000    # 7.0f

    invoke-virtual {p2, p3, v1}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result p3

    iput p3, p0, Lcom/coui/appcompat/widget/COUIButton;->k:F

    .line 143
    sget p3, Lcoui/support/appcompat/R$styleable;->COUIButton_disabledColor:I

    invoke-virtual {p2, p3, v0}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result p3

    iput p3, p0, Lcom/coui/appcompat/widget/COUIButton;->j:I

    .line 144
    sget p3, Lcoui/support/appcompat/R$styleable;->COUIButton_drawableColor:I

    invoke-virtual {p2, p3, v0}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result p3

    iput p3, p0, Lcom/coui/appcompat/widget/COUIButton;->i:I

    .line 145
    sget p3, Lcoui/support/appcompat/R$styleable;->COUIButton_strokeColor:I

    invoke-virtual {p2, p3, v0}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result p3

    iput p3, p0, Lcom/coui/appcompat/widget/COUIButton;->q:I

    .line 146
    invoke-direct {p0}, Lcom/coui/appcompat/widget/COUIButton;->a()V

    .line 148
    :cond_1
    invoke-virtual {p2}, Landroid/content/res/TypedArray;->recycle()V

    .line 149
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    sget p2, Lcoui/support/appcompat/R$dimen;->coui_bordless_btn_stroke_width:I

    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->getDimension(I)F

    move-result p1

    iput p1, p0, Lcom/coui/appcompat/widget/COUIButton;->o:F

    .line 150
    invoke-virtual {p0}, Lcom/coui/appcompat/widget/COUIButton;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    sget p2, Lcoui/support/appcompat/R$dimen;->coui_button_radius_offset:I

    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->getDimension(I)F

    move-result p1

    iput p1, p0, Lcom/coui/appcompat/widget/COUIButton;->p:F

    const/4 p1, 0x4

    .line 151
    invoke-static {p0, p1}, Lcom/coui/appcompat/a/a;->a(Landroid/widget/TextView;I)V

    return-void
.end method

.method static synthetic a(Lcom/coui/appcompat/widget/COUIButton;F)F
    .locals 0

    .line 51
    iput p1, p0, Lcom/coui/appcompat/widget/COUIButton;->n:F

    return p1
.end method

.method private a(I)I
    .locals 3

    .line 290
    invoke-virtual {p0}, Lcom/coui/appcompat/widget/COUIButton;->isEnabled()Z

    move-result v0

    if-nez v0, :cond_0

    .line 291
    iget p0, p0, Lcom/coui/appcompat/widget/COUIButton;->j:I

    return p0

    .line 293
    :cond_0
    iget-object v0, p0, Lcom/coui/appcompat/widget/COUIButton;->t:[F

    invoke-static {p1, v0}, Landroidx/core/graphics/d;->a(I[F)V

    .line 294
    iget-object v0, p0, Lcom/coui/appcompat/widget/COUIButton;->t:[F

    const/4 v1, 0x2

    aget v2, v0, v1

    iget p0, p0, Lcom/coui/appcompat/widget/COUIButton;->m:F

    mul-float/2addr v2, p0

    aput v2, v0, v1

    .line 295
    invoke-static {v0}, Landroidx/core/graphics/d;->a([F)I

    move-result p0

    .line 296
    invoke-static {p0}, Landroid/graphics/Color;->red(I)I

    move-result v0

    const/16 v1, 0xff

    invoke-static {v1, v0}, Ljava/lang/Math;->min(II)I

    move-result v0

    .line 297
    invoke-static {p0}, Landroid/graphics/Color;->green(I)I

    move-result v2

    invoke-static {v1, v2}, Ljava/lang/Math;->min(II)I

    move-result v2

    .line 298
    invoke-static {p0}, Landroid/graphics/Color;->blue(I)I

    move-result p0

    invoke-static {v1, p0}, Ljava/lang/Math;->min(II)I

    move-result p0

    .line 299
    invoke-static {p1}, Landroid/graphics/Color;->alpha(I)I

    move-result p1

    .line 300
    invoke-static {p1, v0, v2, p0}, Landroid/graphics/Color;->argb(IIII)I

    move-result p0

    return p0
.end method

.method private a()V
    .locals 5

    .line 158
    iget v0, p0, Lcom/coui/appcompat/widget/COUIButton;->g:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    const/4 v0, 0x0

    .line 159
    invoke-virtual {p0, v0}, Lcom/coui/appcompat/widget/COUIButton;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 161
    :cond_0
    new-instance v0, Landroid/view/animation/PathInterpolator;

    const v1, 0x3ecccccd    # 0.4f

    const/4 v2, 0x0

    const v3, 0x3e4ccccd    # 0.2f

    const/high16 v4, 0x3f800000    # 1.0f

    invoke-direct {v0, v1, v2, v3, v4}, Landroid/view/animation/PathInterpolator;-><init>(FFFF)V

    iput-object v0, p0, Lcom/coui/appcompat/widget/COUIButton;->b:Landroid/view/animation/Interpolator;

    return-void
.end method

.method static synthetic a(Lcom/coui/appcompat/widget/COUIButton;Z)V
    .locals 0

    .line 51
    invoke-direct {p0, p1}, Lcom/coui/appcompat/widget/COUIButton;->a(Z)V

    return-void
.end method

.method private a(Z)V
    .locals 7

    const/4 v0, 0x0

    .line 224
    iput-boolean v0, p0, Lcom/coui/appcompat/widget/COUIButton;->e:Z

    .line 225
    invoke-direct {p0, p1}, Lcom/coui/appcompat/widget/COUIButton;->b(Z)V

    .line 226
    iget-boolean v1, p0, Lcom/coui/appcompat/widget/COUIButton;->e:Z

    if-eqz v1, :cond_0

    return-void

    :cond_0
    const/4 v1, 0x2

    .line 230
    new-array v2, v1, [F

    const/high16 v3, 0x3f800000    # 1.0f

    if-eqz p1, :cond_1

    move v4, v3

    goto :goto_0

    :cond_1
    iget v4, p0, Lcom/coui/appcompat/widget/COUIButton;->m:F

    :goto_0
    aput v4, v2, v0

    if-eqz p1, :cond_2

    iget v4, p0, Lcom/coui/appcompat/widget/COUIButton;->l:F

    goto :goto_1

    :cond_2
    move v4, v3

    :goto_1
    const/4 v5, 0x1

    aput v4, v2, v5

    const-string v4, "brightnessHolder"

    invoke-static {v4, v2}, Landroid/animation/PropertyValuesHolder;->ofFloat(Ljava/lang/String;[F)Landroid/animation/PropertyValuesHolder;

    move-result-object v2

    .line 234
    new-array v4, v1, [F

    if-eqz p1, :cond_3

    move v6, v3

    goto :goto_2

    :cond_3
    iget v6, p0, Lcom/coui/appcompat/widget/COUIButton;->n:F

    :goto_2
    aput v6, v4, v0

    if-eqz p1, :cond_4

    const v3, 0x3f6b851f    # 0.92f

    :cond_4
    aput v3, v4, v5

    const-string v3, "scaleHolder"

    invoke-static {v3, v4}, Landroid/animation/PropertyValuesHolder;->ofFloat(Ljava/lang/String;[F)Landroid/animation/PropertyValuesHolder;

    move-result-object v3

    .line 239
    new-array v1, v1, [Landroid/animation/PropertyValuesHolder;

    aput-object v2, v1, v0

    aput-object v3, v1, v5

    invoke-static {v1}, Landroid/animation/ValueAnimator;->ofPropertyValuesHolder([Landroid/animation/PropertyValuesHolder;)Landroid/animation/ValueAnimator;

    move-result-object v0

    iput-object v0, p0, Lcom/coui/appcompat/widget/COUIButton;->c:Landroid/animation/ValueAnimator;

    .line 240
    iget-object v0, p0, Lcom/coui/appcompat/widget/COUIButton;->c:Landroid/animation/ValueAnimator;

    iget-object v1, p0, Lcom/coui/appcompat/widget/COUIButton;->b:Landroid/view/animation/Interpolator;

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 241
    iget-object v0, p0, Lcom/coui/appcompat/widget/COUIButton;->c:Landroid/animation/ValueAnimator;

    if-eqz p1, :cond_5

    const-wide/16 v1, 0xc8

    goto :goto_3

    :cond_5
    const-wide/16 v1, 0x154

    :goto_3
    invoke-virtual {v0, v1, v2}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 242
    iget-object v0, p0, Lcom/coui/appcompat/widget/COUIButton;->c:Landroid/animation/ValueAnimator;

    new-instance v1, Lcom/coui/appcompat/widget/COUIButton$1;

    invoke-direct {v1, p0, p1}, Lcom/coui/appcompat/widget/COUIButton$1;-><init>(Lcom/coui/appcompat/widget/COUIButton;Z)V

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 256
    iget-object p0, p0, Lcom/coui/appcompat/widget/COUIButton;->c:Landroid/animation/ValueAnimator;

    invoke-virtual {p0}, Landroid/animation/ValueAnimator;->start()V

    return-void
.end method

.method static synthetic a(Lcom/coui/appcompat/widget/COUIButton;)Z
    .locals 0

    .line 51
    iget-boolean p0, p0, Lcom/coui/appcompat/widget/COUIButton;->e:Z

    return p0
.end method

.method static synthetic b(Lcom/coui/appcompat/widget/COUIButton;)F
    .locals 0

    .line 51
    iget p0, p0, Lcom/coui/appcompat/widget/COUIButton;->n:F

    return p0
.end method

.method static synthetic b(Lcom/coui/appcompat/widget/COUIButton;F)F
    .locals 0

    .line 51
    iput p1, p0, Lcom/coui/appcompat/widget/COUIButton;->m:F

    return p1
.end method

.method private b(Z)V
    .locals 2

    .line 275
    iget-object v0, p0, Lcom/coui/appcompat/widget/COUIButton;->c:Landroid/animation/ValueAnimator;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->isRunning()Z

    move-result v0

    if-eqz v0, :cond_1

    if-nez p1, :cond_0

    .line 276
    iget-object p1, p0, Lcom/coui/appcompat/widget/COUIButton;->c:Landroid/animation/ValueAnimator;

    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getCurrentPlayTime()J

    move-result-wide v0

    long-to-float p1, v0

    iget-object v0, p0, Lcom/coui/appcompat/widget/COUIButton;->c:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->getDuration()J

    move-result-wide v0

    long-to-float v0, v0

    const v1, 0x3ecccccd    # 0.4f

    mul-float/2addr v0, v1

    cmpg-float p1, p1, v0

    if-gez p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    iput-boolean p1, p0, Lcom/coui/appcompat/widget/COUIButton;->e:Z

    .line 277
    iget-boolean p1, p0, Lcom/coui/appcompat/widget/COUIButton;->e:Z

    if-nez p1, :cond_1

    .line 278
    iget-object p0, p0, Lcom/coui/appcompat/widget/COUIButton;->c:Landroid/animation/ValueAnimator;

    invoke-virtual {p0}, Landroid/animation/ValueAnimator;->cancel()V

    :cond_1
    return-void
.end method

.method static synthetic c(Lcom/coui/appcompat/widget/COUIButton;F)V
    .locals 0

    .line 51
    invoke-direct {p0, p1}, Lcom/coui/appcompat/widget/COUIButton;->setScale(F)V

    return-void
.end method

.method private setScale(F)V
    .locals 1

    const/high16 v0, 0x3f800000    # 1.0f

    .line 260
    invoke-static {v0, p1}, Ljava/lang/Math;->min(FF)F

    move-result p1

    const v0, 0x3f6b851f    # 0.92f

    invoke-static {v0, p1}, Ljava/lang/Math;->max(FF)F

    move-result p1

    .line 261
    invoke-virtual {p0, p1}, Lcom/coui/appcompat/widget/COUIButton;->setScaleX(F)V

    .line 262
    invoke-virtual {p0, p1}, Lcom/coui/appcompat/widget/COUIButton;->setScaleY(F)V

    .line 263
    invoke-virtual {p0}, Lcom/coui/appcompat/widget/COUIButton;->invalidate()V

    return-void
.end method


# virtual methods
.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 6

    .line 177
    iget-boolean v0, p0, Lcom/coui/appcompat/widget/COUIButton;->f:Z

    if-eqz v0, :cond_2

    .line 178
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    move-result v0

    .line 179
    invoke-virtual {p0}, Lcom/coui/appcompat/widget/COUIButton;->getScrollX()I

    move-result v1

    int-to-float v1, v1

    invoke-virtual {p0}, Lcom/coui/appcompat/widget/COUIButton;->getScrollY()I

    move-result v2

    int-to-float v2, v2

    invoke-virtual {p1, v1, v2}, Landroid/graphics/Canvas;->translate(FF)V

    .line 181
    iget v1, p0, Lcom/coui/appcompat/widget/COUIButton;->g:I

    const/4 v2, 0x1

    const/high16 v3, 0x40000000    # 2.0f

    if-ne v1, v2, :cond_0

    .line 182
    iget-object v1, p0, Lcom/coui/appcompat/widget/COUIButton;->h:Landroid/graphics/Paint;

    sget-object v2, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 183
    iget-object v1, p0, Lcom/coui/appcompat/widget/COUIButton;->h:Landroid/graphics/Paint;

    iget v2, p0, Lcom/coui/appcompat/widget/COUIButton;->i:I

    invoke-direct {p0, v2}, Lcom/coui/appcompat/widget/COUIButton;->a(I)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setColor(I)V

    .line 184
    iget-object v1, p0, Lcom/coui/appcompat/widget/COUIButton;->r:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->bottom:I

    iget-object v2, p0, Lcom/coui/appcompat/widget/COUIButton;->r:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->top:I

    sub-int/2addr v1, v2

    int-to-float v1, v1

    div-float/2addr v1, v3

    iget v2, p0, Lcom/coui/appcompat/widget/COUIButton;->p:F

    sub-float/2addr v1, v2

    .line 185
    invoke-static {}, Lcom/coui/appcompat/a/o;->a()Lcom/coui/appcompat/a/o;

    move-result-object v2

    iget-object v3, p0, Lcom/coui/appcompat/widget/COUIButton;->r:Landroid/graphics/Rect;

    invoke-virtual {v2, v3, v1}, Lcom/coui/appcompat/a/o;->a(Landroid/graphics/Rect;F)Landroid/graphics/Path;

    move-result-object v1

    .line 186
    iget-object v2, p0, Lcom/coui/appcompat/widget/COUIButton;->h:Landroid/graphics/Paint;

    invoke-virtual {p1, v1, v2}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    goto :goto_1

    .line 188
    :cond_0
    iget-object v1, p0, Lcom/coui/appcompat/widget/COUIButton;->h:Landroid/graphics/Paint;

    invoke-virtual {p0}, Lcom/coui/appcompat/widget/COUIButton;->isEnabled()Z

    move-result v2

    if-eqz v2, :cond_1

    iget v2, p0, Lcom/coui/appcompat/widget/COUIButton;->q:I

    goto :goto_0

    :cond_1
    iget v2, p0, Lcom/coui/appcompat/widget/COUIButton;->j:I

    :goto_0
    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setColor(I)V

    .line 189
    iget-object v1, p0, Lcom/coui/appcompat/widget/COUIButton;->h:Landroid/graphics/Paint;

    iget v2, p0, Lcom/coui/appcompat/widget/COUIButton;->o:F

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 190
    iget-object v1, p0, Lcom/coui/appcompat/widget/COUIButton;->h:Landroid/graphics/Paint;

    sget-object v2, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 191
    invoke-static {}, Lcom/coui/appcompat/a/o;->a()Lcom/coui/appcompat/a/o;

    move-result-object v1

    iget-object v2, p0, Lcom/coui/appcompat/widget/COUIButton;->s:Landroid/graphics/Rect;

    iget v4, v2, Landroid/graphics/Rect;->bottom:I

    iget-object v5, p0, Lcom/coui/appcompat/widget/COUIButton;->s:Landroid/graphics/Rect;

    iget v5, v5, Landroid/graphics/Rect;->top:I

    sub-int/2addr v4, v5

    int-to-float v4, v4

    div-float/2addr v4, v3

    iget v3, p0, Lcom/coui/appcompat/widget/COUIButton;->o:F

    sub-float/2addr v4, v3

    invoke-virtual {v1, v2, v4}, Lcom/coui/appcompat/a/o;->a(Landroid/graphics/Rect;F)Landroid/graphics/Path;

    move-result-object v1

    .line 192
    iget-object v2, p0, Lcom/coui/appcompat/widget/COUIButton;->h:Landroid/graphics/Paint;

    invoke-virtual {p1, v1, v2}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    .line 195
    :goto_1
    invoke-virtual {p1, v0}, Landroid/graphics/Canvas;->restoreToCount(I)V

    .line 197
    :cond_2
    invoke-super {p0, p1}, Landroidx/appcompat/widget/f;->onDraw(Landroid/graphics/Canvas;)V

    return-void
.end method

.method protected onLayout(ZIIII)V
    .locals 0

    .line 166
    invoke-super/range {p0 .. p5}, Landroidx/appcompat/widget/f;->onLayout(ZIIII)V

    .line 167
    iget-object p1, p0, Lcom/coui/appcompat/widget/COUIButton;->r:Landroid/graphics/Rect;

    invoke-virtual {p0}, Lcom/coui/appcompat/widget/COUIButton;->getWidth()I

    move-result p2

    iput p2, p1, Landroid/graphics/Rect;->right:I

    .line 168
    iget-object p1, p0, Lcom/coui/appcompat/widget/COUIButton;->r:Landroid/graphics/Rect;

    invoke-virtual {p0}, Lcom/coui/appcompat/widget/COUIButton;->getHeight()I

    move-result p2

    iput p2, p1, Landroid/graphics/Rect;->bottom:I

    .line 169
    iget-object p1, p0, Lcom/coui/appcompat/widget/COUIButton;->s:Landroid/graphics/Rect;

    iget-object p2, p0, Lcom/coui/appcompat/widget/COUIButton;->r:Landroid/graphics/Rect;

    iget p2, p2, Landroid/graphics/Rect;->top:I

    int-to-float p2, p2

    iget p3, p0, Lcom/coui/appcompat/widget/COUIButton;->o:F

    const/high16 p4, 0x40000000    # 2.0f

    div-float/2addr p3, p4

    add-float/2addr p2, p3

    float-to-int p2, p2

    iput p2, p1, Landroid/graphics/Rect;->top:I

    .line 170
    iget-object p1, p0, Lcom/coui/appcompat/widget/COUIButton;->s:Landroid/graphics/Rect;

    iget-object p2, p0, Lcom/coui/appcompat/widget/COUIButton;->r:Landroid/graphics/Rect;

    iget p2, p2, Landroid/graphics/Rect;->left:I

    int-to-float p2, p2

    iget p3, p0, Lcom/coui/appcompat/widget/COUIButton;->o:F

    div-float/2addr p3, p4

    add-float/2addr p2, p3

    float-to-int p2, p2

    iput p2, p1, Landroid/graphics/Rect;->left:I

    .line 171
    iget-object p1, p0, Lcom/coui/appcompat/widget/COUIButton;->s:Landroid/graphics/Rect;

    iget-object p2, p0, Lcom/coui/appcompat/widget/COUIButton;->r:Landroid/graphics/Rect;

    iget p2, p2, Landroid/graphics/Rect;->right:I

    int-to-float p2, p2

    iget p3, p0, Lcom/coui/appcompat/widget/COUIButton;->o:F

    div-float/2addr p3, p4

    sub-float/2addr p2, p3

    float-to-int p2, p2

    iput p2, p1, Landroid/graphics/Rect;->right:I

    .line 172
    iget-object p1, p0, Lcom/coui/appcompat/widget/COUIButton;->s:Landroid/graphics/Rect;

    iget-object p2, p0, Lcom/coui/appcompat/widget/COUIButton;->r:Landroid/graphics/Rect;

    iget p2, p2, Landroid/graphics/Rect;->bottom:I

    int-to-float p2, p2

    iget p0, p0, Lcom/coui/appcompat/widget/COUIButton;->o:F

    div-float/2addr p0, p4

    sub-float/2addr p2, p0

    float-to-int p0, p2

    iput p0, p1, Landroid/graphics/Rect;->bottom:I

    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 2

    .line 202
    invoke-virtual {p0}, Lcom/coui/appcompat/widget/COUIButton;->isEnabled()Z

    move-result v0

    if-eqz v0, :cond_2

    iget-boolean v0, p0, Lcom/coui/appcompat/widget/COUIButton;->f:Z

    if-eqz v0, :cond_2

    .line 203
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_1

    if-eq v0, v1, :cond_0

    const/4 v1, 0x3

    if-eq v0, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 209
    invoke-direct {p0, v0}, Lcom/coui/appcompat/widget/COUIButton;->a(Z)V

    goto :goto_0

    .line 205
    :cond_1
    invoke-direct {p0, v1}, Lcom/coui/appcompat/widget/COUIButton;->a(Z)V

    .line 215
    :cond_2
    :goto_0
    invoke-super {p0, p1}, Landroidx/appcompat/widget/f;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result p0

    return p0
.end method

.method public setAnimEnable(Z)V
    .locals 0

    .line 309
    iput-boolean p1, p0, Lcom/coui/appcompat/widget/COUIButton;->f:Z

    return-void
.end method

.method public setAnimType(I)V
    .locals 0

    .line 319
    iput p1, p0, Lcom/coui/appcompat/widget/COUIButton;->g:I

    return-void
.end method

.method public setDisabledColor(I)V
    .locals 0

    .line 328
    iput p1, p0, Lcom/coui/appcompat/widget/COUIButton;->j:I

    return-void
.end method

.method public setDrawableColor(I)V
    .locals 0

    .line 337
    iput p1, p0, Lcom/coui/appcompat/widget/COUIButton;->i:I

    return-void
.end method

.method public setDrawableRadius(I)V
    .locals 0

    int-to-float p1, p1

    .line 346
    iput p1, p0, Lcom/coui/appcompat/widget/COUIButton;->k:F

    return-void
.end method

.method public setMaxBrightness(I)V
    .locals 0

    int-to-float p1, p1

    .line 355
    iput p1, p0, Lcom/coui/appcompat/widget/COUIButton;->l:F

    return-void
.end method
