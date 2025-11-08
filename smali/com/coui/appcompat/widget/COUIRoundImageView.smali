.class public Lcom/coui/appcompat/widget/COUIRoundImageView;
.super Landroidx/appcompat/widget/AppCompatImageView;
.source "COUIRoundImageView.java"


# instance fields
.field private A:F

.field private B:Landroid/graphics/drawable/Drawable;

.field private C:Landroid/graphics/Bitmap;

.field private D:F

.field private E:I

.field private F:Landroid/graphics/Paint;

.field private G:I

.field private final a:Landroid/graphics/RectF;

.field private final b:Landroid/graphics/RectF;

.field private c:I

.field private d:Landroid/content/Context;

.field private e:Z

.field private f:Z

.field private g:I

.field private h:Landroid/graphics/RectF;

.field private i:Landroid/graphics/RectF;

.field private j:Landroid/graphics/drawable/Drawable;

.field private k:Landroid/graphics/drawable/Drawable;

.field private l:Landroid/graphics/Bitmap;

.field private m:I

.field private n:I

.field private o:I

.field private p:I

.field private q:Landroid/graphics/BitmapShader;

.field private r:I

.field private s:I

.field private t:I

.field private u:Landroid/graphics/Paint;

.field private v:Landroid/graphics/Paint;

.field private w:I

.field private x:Landroid/graphics/Matrix;

.field private y:Landroid/graphics/BitmapShader;

.field private z:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2

    .line 123
    invoke-direct {p0, p1}, Landroidx/appcompat/widget/AppCompatImageView;-><init>(Landroid/content/Context;)V

    .line 75
    new-instance v0, Landroid/graphics/RectF;

    invoke-direct {v0}, Landroid/graphics/RectF;-><init>()V

    iput-object v0, p0, Lcom/coui/appcompat/widget/COUIRoundImageView;->a:Landroid/graphics/RectF;

    .line 76
    new-instance v0, Landroid/graphics/RectF;

    invoke-direct {v0}, Landroid/graphics/RectF;-><init>()V

    iput-object v0, p0, Lcom/coui/appcompat/widget/COUIRoundImageView;->b:Landroid/graphics/RectF;

    .line 124
    new-instance v0, Landroid/graphics/Matrix;

    invoke-direct {v0}, Landroid/graphics/Matrix;-><init>()V

    iput-object v0, p0, Lcom/coui/appcompat/widget/COUIRoundImageView;->x:Landroid/graphics/Matrix;

    .line 125
    iput-object p1, p0, Lcom/coui/appcompat/widget/COUIRoundImageView;->d:Landroid/content/Context;

    .line 127
    new-instance p1, Landroid/graphics/Paint;

    invoke-direct {p1}, Landroid/graphics/Paint;-><init>()V

    iput-object p1, p0, Lcom/coui/appcompat/widget/COUIRoundImageView;->u:Landroid/graphics/Paint;

    .line 128
    iget-object p1, p0, Lcom/coui/appcompat/widget/COUIRoundImageView;->u:Landroid/graphics/Paint;

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 130
    invoke-direct {p0}, Lcom/coui/appcompat/widget/COUIRoundImageView;->c()V

    .line 132
    new-instance p1, Landroid/graphics/Paint;

    invoke-direct {p1}, Landroid/graphics/Paint;-><init>()V

    iput-object p1, p0, Lcom/coui/appcompat/widget/COUIRoundImageView;->v:Landroid/graphics/Paint;

    .line 133
    iget-object p1, p0, Lcom/coui/appcompat/widget/COUIRoundImageView;->v:Landroid/graphics/Paint;

    invoke-virtual {p1, v0}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 134
    iget-object p1, p0, Lcom/coui/appcompat/widget/COUIRoundImageView;->v:Landroid/graphics/Paint;

    invoke-virtual {p0}, Lcom/coui/appcompat/widget/COUIRoundImageView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcoui/support/appcompat/R$color;->coui_roundimageview_outcircle_color:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/graphics/Paint;->setColor(I)V

    .line 135
    iget-object p1, p0, Lcom/coui/appcompat/widget/COUIRoundImageView;->v:Landroid/graphics/Paint;

    const/high16 v0, 0x3f800000    # 1.0f

    invoke-virtual {p1, v0}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 136
    iget-object p1, p0, Lcom/coui/appcompat/widget/COUIRoundImageView;->v:Landroid/graphics/Paint;

    sget-object v0, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {p1, v0}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    const/4 p1, 0x0

    .line 138
    iput p1, p0, Lcom/coui/appcompat/widget/COUIRoundImageView;->c:I

    .line 139
    invoke-virtual {p0}, Lcom/coui/appcompat/widget/COUIRoundImageView;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    sget v0, Lcoui/support/appcompat/R$dimen;->coui_roundimageview_default_radius:I

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p1

    iput p1, p0, Lcom/coui/appcompat/widget/COUIRoundImageView;->z:I

    .line 140
    invoke-virtual {p0}, Lcom/coui/appcompat/widget/COUIRoundImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/coui/appcompat/widget/COUIRoundImageView;->setupShader(Landroid/graphics/drawable/Drawable;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 4

    .line 165
    invoke-direct {p0, p1, p2}, Landroidx/appcompat/widget/AppCompatImageView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 75
    new-instance v0, Landroid/graphics/RectF;

    invoke-direct {v0}, Landroid/graphics/RectF;-><init>()V

    iput-object v0, p0, Lcom/coui/appcompat/widget/COUIRoundImageView;->a:Landroid/graphics/RectF;

    .line 76
    new-instance v0, Landroid/graphics/RectF;

    invoke-direct {v0}, Landroid/graphics/RectF;-><init>()V

    iput-object v0, p0, Lcom/coui/appcompat/widget/COUIRoundImageView;->b:Landroid/graphics/RectF;

    if-eqz p2, :cond_0

    .line 167
    invoke-interface {p2}, Landroid/util/AttributeSet;->getStyleAttribute()I

    move-result v0

    iput v0, p0, Lcom/coui/appcompat/widget/COUIRoundImageView;->G:I

    .line 169
    :cond_0
    new-instance v0, Landroid/graphics/Matrix;

    invoke-direct {v0}, Landroid/graphics/Matrix;-><init>()V

    iput-object v0, p0, Lcom/coui/appcompat/widget/COUIRoundImageView;->x:Landroid/graphics/Matrix;

    .line 170
    iput-object p1, p0, Lcom/coui/appcompat/widget/COUIRoundImageView;->d:Landroid/content/Context;

    .line 172
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/coui/appcompat/widget/COUIRoundImageView;->u:Landroid/graphics/Paint;

    .line 173
    iget-object v0, p0, Lcom/coui/appcompat/widget/COUIRoundImageView;->u:Landroid/graphics/Paint;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 174
    iget-object v0, p0, Lcom/coui/appcompat/widget/COUIRoundImageView;->u:Landroid/graphics/Paint;

    new-instance v2, Landroid/graphics/PorterDuffXfermode;

    sget-object v3, Landroid/graphics/PorterDuff$Mode;->SRC_OVER:Landroid/graphics/PorterDuff$Mode;

    invoke-direct {v2, v3}, Landroid/graphics/PorterDuffXfermode;-><init>(Landroid/graphics/PorterDuff$Mode;)V

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setXfermode(Landroid/graphics/Xfermode;)Landroid/graphics/Xfermode;

    .line 176
    invoke-direct {p0}, Lcom/coui/appcompat/widget/COUIRoundImageView;->c()V

    .line 178
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/coui/appcompat/widget/COUIRoundImageView;->v:Landroid/graphics/Paint;

    .line 179
    iget-object v0, p0, Lcom/coui/appcompat/widget/COUIRoundImageView;->v:Landroid/graphics/Paint;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 180
    iget-object v0, p0, Lcom/coui/appcompat/widget/COUIRoundImageView;->v:Landroid/graphics/Paint;

    const/high16 v2, 0x40000000    # 2.0f

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 181
    iget-object v0, p0, Lcom/coui/appcompat/widget/COUIRoundImageView;->v:Landroid/graphics/Paint;

    sget-object v2, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 183
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v2, Lcoui/support/appcompat/R$drawable;->coui_round_image_view_shadow:I

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Lcom/coui/appcompat/widget/COUIRoundImageView;->k:Landroid/graphics/drawable/Drawable;

    .line 184
    iget-object v0, p0, Lcom/coui/appcompat/widget/COUIRoundImageView;->k:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v0

    iput v0, p0, Lcom/coui/appcompat/widget/COUIRoundImageView;->m:I

    .line 185
    iget-object v0, p0, Lcom/coui/appcompat/widget/COUIRoundImageView;->k:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v0

    iput v0, p0, Lcom/coui/appcompat/widget/COUIRoundImageView;->n:I

    .line 187
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v2, Lcoui/support/appcompat/R$dimen;->coui_roundimageView_src_width:I

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    iput v0, p0, Lcom/coui/appcompat/widget/COUIRoundImageView;->o:I

    .line 188
    iget v0, p0, Lcom/coui/appcompat/widget/COUIRoundImageView;->o:I

    iput v0, p0, Lcom/coui/appcompat/widget/COUIRoundImageView;->p:I

    .line 190
    sget-object v0, Lcoui/support/appcompat/R$styleable;->COUIRoundImageView:[I

    invoke-virtual {p1, p2, v0}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object p1

    .line 191
    sget p2, Lcoui/support/appcompat/R$styleable;->COUIRoundImageView_couiBorderRadius:I

    const/high16 v0, 0x3f800000    # 1.0f

    .line 192
    invoke-virtual {p0}, Lcom/coui/appcompat/widget/COUIRoundImageView;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v2

    invoke-static {v1, v0, v2}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    move-result v0

    float-to-int v0, v0

    .line 191
    invoke-virtual {p1, p2, v0}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result p2

    iput p2, p0, Lcom/coui/appcompat/widget/COUIRoundImageView;->g:I

    .line 193
    sget p2, Lcoui/support/appcompat/R$styleable;->COUIRoundImageView_couiType:I

    const/4 v0, 0x0

    invoke-virtual {p1, p2, v0}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result p2

    iput p2, p0, Lcom/coui/appcompat/widget/COUIRoundImageView;->c:I

    .line 194
    sget p2, Lcoui/support/appcompat/R$styleable;->COUIRoundImageView_couiHasBorder:I

    invoke-virtual {p1, p2, v0}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result p2

    iput-boolean p2, p0, Lcom/coui/appcompat/widget/COUIRoundImageView;->e:Z

    .line 195
    sget p2, Lcoui/support/appcompat/R$styleable;->COUIRoundImageView_couiHasDefaultPic:I

    invoke-virtual {p1, p2, v1}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result p2

    iput-boolean p2, p0, Lcom/coui/appcompat/widget/COUIRoundImageView;->f:Z

    .line 196
    sget p2, Lcoui/support/appcompat/R$styleable;->COUIRoundImageView_couiRoundImageViewOutCircleColor:I

    invoke-virtual {p1, p2, v0}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result p2

    iput p2, p0, Lcom/coui/appcompat/widget/COUIRoundImageView;->w:I

    .line 198
    iget-object p2, p0, Lcom/coui/appcompat/widget/COUIRoundImageView;->v:Landroid/graphics/Paint;

    iget v0, p0, Lcom/coui/appcompat/widget/COUIRoundImageView;->w:I

    invoke-virtual {p2, v0}, Landroid/graphics/Paint;->setColor(I)V

    .line 200
    invoke-virtual {p0}, Lcom/coui/appcompat/widget/COUIRoundImageView;->a()V

    .line 201
    invoke-virtual {p0}, Lcom/coui/appcompat/widget/COUIRoundImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object p2

    invoke-direct {p0, p2}, Lcom/coui/appcompat/widget/COUIRoundImageView;->setupShader(Landroid/graphics/drawable/Drawable;)V

    .line 202
    invoke-virtual {p1}, Landroid/content/res/TypedArray;->recycle()V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    .line 217
    invoke-direct {p0, p1, p2, p3}, Landroidx/appcompat/widget/AppCompatImageView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 75
    new-instance p1, Landroid/graphics/RectF;

    invoke-direct {p1}, Landroid/graphics/RectF;-><init>()V

    iput-object p1, p0, Lcom/coui/appcompat/widget/COUIRoundImageView;->a:Landroid/graphics/RectF;

    .line 76
    new-instance p1, Landroid/graphics/RectF;

    invoke-direct {p1}, Landroid/graphics/RectF;-><init>()V

    iput-object p1, p0, Lcom/coui/appcompat/widget/COUIRoundImageView;->b:Landroid/graphics/RectF;

    .line 218
    invoke-virtual {p0}, Lcom/coui/appcompat/widget/COUIRoundImageView;->a()V

    return-void
.end method

.method private a(Landroid/graphics/drawable/Drawable;)Landroid/graphics/Bitmap;
    .locals 4

    .line 448
    instance-of p0, p1, Landroid/graphics/drawable/BitmapDrawable;

    if-eqz p0, :cond_0

    .line 449
    check-cast p1, Landroid/graphics/drawable/BitmapDrawable;

    .line 450
    invoke-virtual {p1}, Landroid/graphics/drawable/BitmapDrawable;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object p0

    return-object p0

    .line 452
    :cond_0
    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result p0

    .line 453
    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v0

    .line 454
    sget-object v1, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v0, p0, v1}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v1

    .line 455
    new-instance v2, Landroid/graphics/Canvas;

    invoke-direct {v2, v1}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    const/4 v3, 0x0

    .line 456
    invoke-virtual {p1, v3, v3, v0, p0}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 457
    invoke-virtual {p1, v2}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    return-object v1
.end method

.method private c()V
    .locals 2

    .line 150
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/coui/appcompat/widget/COUIRoundImageView;->F:Landroid/graphics/Paint;

    .line 151
    iget-object v0, p0, Lcom/coui/appcompat/widget/COUIRoundImageView;->F:Landroid/graphics/Paint;

    const/high16 v1, 0x40000000    # 2.0f

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 152
    iget-object v0, p0, Lcom/coui/appcompat/widget/COUIRoundImageView;->F:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 153
    iget-object v0, p0, Lcom/coui/appcompat/widget/COUIRoundImageView;->F:Landroid/graphics/Paint;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 154
    iget-object v0, p0, Lcom/coui/appcompat/widget/COUIRoundImageView;->F:Landroid/graphics/Paint;

    invoke-virtual {p0}, Lcom/coui/appcompat/widget/COUIRoundImageView;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    sget v1, Lcoui/support/appcompat/R$color;->coui_border:I

    invoke-virtual {p0, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result p0

    invoke-virtual {v0, p0}, Landroid/graphics/Paint;->setColor(I)V

    return-void
.end method

.method private d()V
    .locals 6

    .line 357
    iget-object v0, p0, Lcom/coui/appcompat/widget/COUIRoundImageView;->x:Landroid/graphics/Matrix;

    invoke-virtual {v0}, Landroid/graphics/Matrix;->reset()V

    .line 358
    iget v0, p0, Lcom/coui/appcompat/widget/COUIRoundImageView;->o:I

    int-to-double v0, v0

    const-wide/high16 v2, 0x3ff0000000000000L    # 1.0

    mul-double/2addr v0, v2

    iget v4, p0, Lcom/coui/appcompat/widget/COUIRoundImageView;->r:I

    int-to-double v4, v4

    div-double/2addr v0, v4

    double-to-float v0, v0

    .line 359
    iget v1, p0, Lcom/coui/appcompat/widget/COUIRoundImageView;->p:I

    int-to-double v4, v1

    mul-double/2addr v4, v2

    iget v1, p0, Lcom/coui/appcompat/widget/COUIRoundImageView;->s:I

    int-to-double v1, v1

    div-double/2addr v4, v1

    double-to-float v1, v4

    const/high16 v2, 0x3f800000    # 1.0f

    cmpg-float v3, v0, v2

    if-gtz v3, :cond_0

    move v0, v2

    :cond_0
    cmpg-float v3, v1, v2

    if-gtz v3, :cond_1

    move v1, v2

    .line 363
    :cond_1
    invoke-static {v0, v1}, Ljava/lang/Math;->max(FF)F

    move-result v0

    .line 365
    iget v1, p0, Lcom/coui/appcompat/widget/COUIRoundImageView;->o:I

    int-to-float v1, v1

    iget v2, p0, Lcom/coui/appcompat/widget/COUIRoundImageView;->r:I

    int-to-float v2, v2

    mul-float/2addr v2, v0

    sub-float/2addr v1, v2

    const/high16 v2, 0x3f000000    # 0.5f

    mul-float/2addr v1, v2

    .line 366
    iget v3, p0, Lcom/coui/appcompat/widget/COUIRoundImageView;->p:I

    int-to-float v3, v3

    iget v4, p0, Lcom/coui/appcompat/widget/COUIRoundImageView;->s:I

    int-to-float v4, v4

    mul-float/2addr v4, v0

    sub-float/2addr v3, v4

    mul-float/2addr v3, v2

    .line 368
    iget-object v4, p0, Lcom/coui/appcompat/widget/COUIRoundImageView;->x:Landroid/graphics/Matrix;

    invoke-virtual {v4, v0, v0}, Landroid/graphics/Matrix;->setScale(FF)V

    .line 369
    iget-object v0, p0, Lcom/coui/appcompat/widget/COUIRoundImageView;->x:Landroid/graphics/Matrix;

    add-float/2addr v1, v2

    float-to-int v1, v1

    iget p0, p0, Lcom/coui/appcompat/widget/COUIRoundImageView;->t:I

    div-int/lit8 v4, p0, 0x2

    add-int/2addr v1, v4

    int-to-float v1, v1

    add-float/2addr v3, v2

    float-to-int v2, v3

    div-int/lit8 p0, p0, 0x2

    add-int/2addr v2, p0

    int-to-float p0, v2

    invoke-virtual {v0, v1, p0}, Landroid/graphics/Matrix;->postTranslate(FF)Z

    return-void
.end method

.method private setupShader(Landroid/graphics/drawable/Drawable;)V
    .locals 3

    .line 411
    invoke-virtual {p0}, Lcom/coui/appcompat/widget/COUIRoundImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Lcom/coui/appcompat/widget/COUIRoundImageView;->B:Landroid/graphics/drawable/Drawable;

    .line 413
    iget-object v0, p0, Lcom/coui/appcompat/widget/COUIRoundImageView;->B:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_1

    if-nez p1, :cond_0

    goto :goto_0

    :cond_0
    if-eq v0, p1, :cond_2

    .line 421
    iput-object p1, p0, Lcom/coui/appcompat/widget/COUIRoundImageView;->B:Landroid/graphics/drawable/Drawable;

    goto :goto_1

    .line 414
    :cond_1
    :goto_0
    iget-object p1, p0, Lcom/coui/appcompat/widget/COUIRoundImageView;->j:Landroid/graphics/drawable/Drawable;

    if-nez p1, :cond_4

    iget-boolean p1, p0, Lcom/coui/appcompat/widget/COUIRoundImageView;->f:Z

    if-eqz p1, :cond_4

    .line 415
    invoke-virtual {p0}, Lcom/coui/appcompat/widget/COUIRoundImageView;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    sget v0, Lcoui/support/appcompat/R$drawable;->coui_ic_contact_picture:I

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    iput-object p1, p0, Lcom/coui/appcompat/widget/COUIRoundImageView;->B:Landroid/graphics/drawable/Drawable;

    .line 416
    invoke-virtual {p0}, Lcom/coui/appcompat/widget/COUIRoundImageView;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    sget v0, Lcoui/support/appcompat/R$drawable;->coui_ic_contact_picture:I

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    iput-object p1, p0, Lcom/coui/appcompat/widget/COUIRoundImageView;->j:Landroid/graphics/drawable/Drawable;

    .line 424
    :cond_2
    :goto_1
    iget-object p1, p0, Lcom/coui/appcompat/widget/COUIRoundImageView;->B:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result p1

    iput p1, p0, Lcom/coui/appcompat/widget/COUIRoundImageView;->r:I

    .line 425
    iget-object p1, p0, Lcom/coui/appcompat/widget/COUIRoundImageView;->B:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result p1

    iput p1, p0, Lcom/coui/appcompat/widget/COUIRoundImageView;->s:I

    .line 426
    iget-object p1, p0, Lcom/coui/appcompat/widget/COUIRoundImageView;->B:Landroid/graphics/drawable/Drawable;

    invoke-direct {p0, p1}, Lcom/coui/appcompat/widget/COUIRoundImageView;->a(Landroid/graphics/drawable/Drawable;)Landroid/graphics/Bitmap;

    move-result-object p1

    iput-object p1, p0, Lcom/coui/appcompat/widget/COUIRoundImageView;->C:Landroid/graphics/Bitmap;

    .line 428
    iget p1, p0, Lcom/coui/appcompat/widget/COUIRoundImageView;->c:I

    const/4 v0, 0x2

    if-ne p1, v0, :cond_3

    .line 429
    invoke-virtual {p0}, Lcom/coui/appcompat/widget/COUIRoundImageView;->b()Landroid/graphics/Bitmap;

    move-result-object p1

    iput-object p1, p0, Lcom/coui/appcompat/widget/COUIRoundImageView;->l:Landroid/graphics/Bitmap;

    .line 430
    new-instance p1, Landroid/graphics/BitmapShader;

    iget-object v0, p0, Lcom/coui/appcompat/widget/COUIRoundImageView;->l:Landroid/graphics/Bitmap;

    sget-object v1, Landroid/graphics/Shader$TileMode;->CLAMP:Landroid/graphics/Shader$TileMode;

    sget-object v2, Landroid/graphics/Shader$TileMode;->CLAMP:Landroid/graphics/Shader$TileMode;

    invoke-direct {p1, v0, v1, v2}, Landroid/graphics/BitmapShader;-><init>(Landroid/graphics/Bitmap;Landroid/graphics/Shader$TileMode;Landroid/graphics/Shader$TileMode;)V

    iput-object p1, p0, Lcom/coui/appcompat/widget/COUIRoundImageView;->q:Landroid/graphics/BitmapShader;

    .line 434
    :cond_3
    iget-object p1, p0, Lcom/coui/appcompat/widget/COUIRoundImageView;->C:Landroid/graphics/Bitmap;

    if-eqz p1, :cond_4

    .line 435
    new-instance v0, Landroid/graphics/BitmapShader;

    sget-object v1, Landroid/graphics/Shader$TileMode;->CLAMP:Landroid/graphics/Shader$TileMode;

    sget-object v2, Landroid/graphics/Shader$TileMode;->CLAMP:Landroid/graphics/Shader$TileMode;

    invoke-direct {v0, p1, v1, v2}, Landroid/graphics/BitmapShader;-><init>(Landroid/graphics/Bitmap;Landroid/graphics/Shader$TileMode;Landroid/graphics/Shader$TileMode;)V

    iput-object v0, p0, Lcom/coui/appcompat/widget/COUIRoundImageView;->y:Landroid/graphics/BitmapShader;

    :cond_4
    return-void
.end method


# virtual methods
.method public a()V
    .locals 4

    .line 225
    iget-object v0, p0, Lcom/coui/appcompat/widget/COUIRoundImageView;->b:Landroid/graphics/RectF;

    iget v1, p0, Lcom/coui/appcompat/widget/COUIRoundImageView;->m:I

    int-to-float v1, v1

    iget v2, p0, Lcom/coui/appcompat/widget/COUIRoundImageView;->n:I

    int-to-float v2, v2

    const/4 v3, 0x0

    invoke-virtual {v0, v3, v3, v1, v2}, Landroid/graphics/RectF;->set(FFFF)V

    .line 226
    iget v0, p0, Lcom/coui/appcompat/widget/COUIRoundImageView;->m:I

    iget v1, p0, Lcom/coui/appcompat/widget/COUIRoundImageView;->o:I

    sub-int/2addr v0, v1

    iput v0, p0, Lcom/coui/appcompat/widget/COUIRoundImageView;->t:I

    .line 227
    iget-object v0, p0, Lcom/coui/appcompat/widget/COUIRoundImageView;->a:Landroid/graphics/RectF;

    iget-object v1, p0, Lcom/coui/appcompat/widget/COUIRoundImageView;->b:Landroid/graphics/RectF;

    invoke-virtual {v0, v1}, Landroid/graphics/RectF;->set(Landroid/graphics/RectF;)V

    .line 228
    iget-object v0, p0, Lcom/coui/appcompat/widget/COUIRoundImageView;->a:Landroid/graphics/RectF;

    iget p0, p0, Lcom/coui/appcompat/widget/COUIRoundImageView;->t:I

    div-int/lit8 v1, p0, 0x2

    int-to-float v1, v1

    div-int/lit8 p0, p0, 0x2

    int-to-float p0, p0

    invoke-virtual {v0, v1, p0}, Landroid/graphics/RectF;->inset(FF)V

    return-void
.end method

.method public b()Landroid/graphics/Bitmap;
    .locals 6

    .line 336
    invoke-direct {p0}, Lcom/coui/appcompat/widget/COUIRoundImageView;->d()V

    .line 337
    new-instance v0, Landroid/graphics/BitmapShader;

    iget-object v1, p0, Lcom/coui/appcompat/widget/COUIRoundImageView;->C:Landroid/graphics/Bitmap;

    sget-object v2, Landroid/graphics/Shader$TileMode;->CLAMP:Landroid/graphics/Shader$TileMode;

    sget-object v3, Landroid/graphics/Shader$TileMode;->CLAMP:Landroid/graphics/Shader$TileMode;

    invoke-direct {v0, v1, v2, v3}, Landroid/graphics/BitmapShader;-><init>(Landroid/graphics/Bitmap;Landroid/graphics/Shader$TileMode;Landroid/graphics/Shader$TileMode;)V

    iput-object v0, p0, Lcom/coui/appcompat/widget/COUIRoundImageView;->q:Landroid/graphics/BitmapShader;

    .line 338
    iget-object v0, p0, Lcom/coui/appcompat/widget/COUIRoundImageView;->q:Landroid/graphics/BitmapShader;

    iget-object v1, p0, Lcom/coui/appcompat/widget/COUIRoundImageView;->x:Landroid/graphics/Matrix;

    invoke-virtual {v0, v1}, Landroid/graphics/BitmapShader;->setLocalMatrix(Landroid/graphics/Matrix;)V

    .line 339
    iget-object v0, p0, Lcom/coui/appcompat/widget/COUIRoundImageView;->u:Landroid/graphics/Paint;

    iget-object v1, p0, Lcom/coui/appcompat/widget/COUIRoundImageView;->q:Landroid/graphics/BitmapShader;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setShader(Landroid/graphics/Shader;)Landroid/graphics/Shader;

    .line 341
    iget v0, p0, Lcom/coui/appcompat/widget/COUIRoundImageView;->m:I

    iget v1, p0, Lcom/coui/appcompat/widget/COUIRoundImageView;->n:I

    sget-object v2, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v0, v1, v2}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 342
    new-instance v1, Landroid/graphics/Canvas;

    invoke-direct {v1, v0}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 344
    iget v2, p0, Lcom/coui/appcompat/widget/COUIRoundImageView;->o:I

    div-int/lit8 v2, v2, 0x2

    iput v2, p0, Lcom/coui/appcompat/widget/COUIRoundImageView;->g:I

    .line 345
    invoke-static {}, Lcom/coui/appcompat/a/o;->a()Lcom/coui/appcompat/a/o;

    move-result-object v2

    iget-object v3, p0, Lcom/coui/appcompat/widget/COUIRoundImageView;->a:Landroid/graphics/RectF;

    iget v4, p0, Lcom/coui/appcompat/widget/COUIRoundImageView;->g:I

    int-to-float v4, v4

    invoke-virtual {v2, v3, v4}, Lcom/coui/appcompat/a/o;->a(Landroid/graphics/RectF;F)Landroid/graphics/Path;

    move-result-object v2

    .line 346
    iget-object v3, p0, Lcom/coui/appcompat/widget/COUIRoundImageView;->u:Landroid/graphics/Paint;

    invoke-virtual {v1, v2, v3}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    .line 348
    iget-object v2, p0, Lcom/coui/appcompat/widget/COUIRoundImageView;->k:Landroid/graphics/drawable/Drawable;

    iget v3, p0, Lcom/coui/appcompat/widget/COUIRoundImageView;->m:I

    iget v4, p0, Lcom/coui/appcompat/widget/COUIRoundImageView;->n:I

    const/4 v5, 0x0

    invoke-virtual {v2, v5, v5, v3, v4}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 349
    iget-object p0, p0, Lcom/coui/appcompat/widget/COUIRoundImageView;->k:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p0, v1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    return-object v0
.end method

.method protected drawableStateChanged()V
    .locals 2

    .line 506
    invoke-super {p0}, Landroidx/appcompat/widget/AppCompatImageView;->drawableStateChanged()V

    .line 508
    iget-object v0, p0, Lcom/coui/appcompat/widget/COUIRoundImageView;->B:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_0

    .line 509
    invoke-virtual {p0}, Lcom/coui/appcompat/widget/COUIRoundImageView;->getDrawableState()[I

    move-result-object v0

    .line 510
    iget-object v1, p0, Lcom/coui/appcompat/widget/COUIRoundImageView;->B:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v1, v0}, Landroid/graphics/drawable/Drawable;->setState([I)Z

    .line 511
    iget-object v0, p0, Lcom/coui/appcompat/widget/COUIRoundImageView;->B:Landroid/graphics/drawable/Drawable;

    invoke-direct {p0, v0}, Lcom/coui/appcompat/widget/COUIRoundImageView;->setupShader(Landroid/graphics/drawable/Drawable;)V

    .line 512
    invoke-virtual {p0}, Lcom/coui/appcompat/widget/COUIRoundImageView;->invalidate()V

    :cond_0
    return-void
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 5

    const/high16 v0, 0x3f800000    # 1.0f

    .line 272
    iput v0, p0, Lcom/coui/appcompat/widget/COUIRoundImageView;->D:F

    .line 273
    iget-object v1, p0, Lcom/coui/appcompat/widget/COUIRoundImageView;->C:Landroid/graphics/Bitmap;

    const/4 v2, 0x1

    if-eqz v1, :cond_3

    .line 274
    iget v3, p0, Lcom/coui/appcompat/widget/COUIRoundImageView;->c:I

    if-eqz v3, :cond_2

    if-eq v3, v2, :cond_1

    const/4 v1, 0x2

    if-eq v3, v1, :cond_0

    goto :goto_0

    .line 283
    :cond_0
    invoke-virtual {p0}, Lcom/coui/appcompat/widget/COUIRoundImageView;->getWidth()I

    move-result v1

    int-to-float v1, v1

    mul-float/2addr v1, v0

    iget v2, p0, Lcom/coui/appcompat/widget/COUIRoundImageView;->m:I

    int-to-float v2, v2

    div-float/2addr v1, v2

    invoke-virtual {p0}, Lcom/coui/appcompat/widget/COUIRoundImageView;->getHeight()I

    move-result v2

    int-to-float v2, v2

    mul-float/2addr v2, v0

    iget v0, p0, Lcom/coui/appcompat/widget/COUIRoundImageView;->n:I

    int-to-float v0, v0

    div-float/2addr v2, v0

    invoke-static {v1, v2}, Ljava/lang/Math;->max(FF)F

    move-result v0

    iput v0, p0, Lcom/coui/appcompat/widget/COUIRoundImageView;->D:F

    .line 284
    iget-object v0, p0, Lcom/coui/appcompat/widget/COUIRoundImageView;->x:Landroid/graphics/Matrix;

    invoke-virtual {v0}, Landroid/graphics/Matrix;->reset()V

    .line 285
    iget-object v0, p0, Lcom/coui/appcompat/widget/COUIRoundImageView;->x:Landroid/graphics/Matrix;

    iget v1, p0, Lcom/coui/appcompat/widget/COUIRoundImageView;->D:F

    invoke-virtual {v0, v1, v1}, Landroid/graphics/Matrix;->setScale(FF)V

    .line 286
    iget-object v0, p0, Lcom/coui/appcompat/widget/COUIRoundImageView;->q:Landroid/graphics/BitmapShader;

    iget-object v1, p0, Lcom/coui/appcompat/widget/COUIRoundImageView;->x:Landroid/graphics/Matrix;

    invoke-virtual {v0, v1}, Landroid/graphics/BitmapShader;->setLocalMatrix(Landroid/graphics/Matrix;)V

    .line 287
    iget-object v0, p0, Lcom/coui/appcompat/widget/COUIRoundImageView;->u:Landroid/graphics/Paint;

    iget-object v1, p0, Lcom/coui/appcompat/widget/COUIRoundImageView;->q:Landroid/graphics/BitmapShader;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setShader(Landroid/graphics/Shader;)Landroid/graphics/Shader;

    .line 288
    iget-object v0, p0, Lcom/coui/appcompat/widget/COUIRoundImageView;->h:Landroid/graphics/RectF;

    iget-object p0, p0, Lcom/coui/appcompat/widget/COUIRoundImageView;->u:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, p0}, Landroid/graphics/Canvas;->drawRect(Landroid/graphics/RectF;Landroid/graphics/Paint;)V

    return-void

    .line 280
    :cond_1
    invoke-virtual {p0}, Lcom/coui/appcompat/widget/COUIRoundImageView;->getWidth()I

    move-result v1

    int-to-float v1, v1

    mul-float/2addr v1, v0

    iget-object v3, p0, Lcom/coui/appcompat/widget/COUIRoundImageView;->C:Landroid/graphics/Bitmap;

    invoke-virtual {v3}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v3

    int-to-float v3, v3

    div-float/2addr v1, v3

    invoke-virtual {p0}, Lcom/coui/appcompat/widget/COUIRoundImageView;->getHeight()I

    move-result v3

    int-to-float v3, v3

    mul-float/2addr v3, v0

    iget-object v4, p0, Lcom/coui/appcompat/widget/COUIRoundImageView;->C:Landroid/graphics/Bitmap;

    invoke-virtual {v4}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v4

    int-to-float v4, v4

    div-float/2addr v3, v4

    invoke-static {v1, v3}, Ljava/lang/Math;->max(FF)F

    move-result v1

    iput v1, p0, Lcom/coui/appcompat/widget/COUIRoundImageView;->D:F

    goto :goto_0

    .line 276
    :cond_2
    invoke-virtual {v1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v1

    iget-object v3, p0, Lcom/coui/appcompat/widget/COUIRoundImageView;->C:Landroid/graphics/Bitmap;

    invoke-virtual {v3}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v3

    invoke-static {v1, v3}, Ljava/lang/Math;->min(II)I

    move-result v1

    iput v1, p0, Lcom/coui/appcompat/widget/COUIRoundImageView;->E:I

    .line 277
    iget v1, p0, Lcom/coui/appcompat/widget/COUIRoundImageView;->z:I

    int-to-float v1, v1

    mul-float/2addr v1, v0

    iget v3, p0, Lcom/coui/appcompat/widget/COUIRoundImageView;->E:I

    int-to-float v3, v3

    div-float/2addr v1, v3

    iput v1, p0, Lcom/coui/appcompat/widget/COUIRoundImageView;->D:F

    .line 293
    :goto_0
    iget-object v1, p0, Lcom/coui/appcompat/widget/COUIRoundImageView;->x:Landroid/graphics/Matrix;

    iget v3, p0, Lcom/coui/appcompat/widget/COUIRoundImageView;->D:F

    invoke-virtual {v1, v3, v3}, Landroid/graphics/Matrix;->setScale(FF)V

    .line 296
    iget-object v1, p0, Lcom/coui/appcompat/widget/COUIRoundImageView;->y:Landroid/graphics/BitmapShader;

    if-eqz v1, :cond_3

    .line 297
    iget-object v3, p0, Lcom/coui/appcompat/widget/COUIRoundImageView;->x:Landroid/graphics/Matrix;

    invoke-virtual {v1, v3}, Landroid/graphics/BitmapShader;->setLocalMatrix(Landroid/graphics/Matrix;)V

    .line 298
    iget-object v1, p0, Lcom/coui/appcompat/widget/COUIRoundImageView;->u:Landroid/graphics/Paint;

    iget-object v3, p0, Lcom/coui/appcompat/widget/COUIRoundImageView;->y:Landroid/graphics/BitmapShader;

    invoke-virtual {v1, v3}, Landroid/graphics/Paint;->setShader(Landroid/graphics/Shader;)Landroid/graphics/Shader;

    .line 302
    :cond_3
    iget v1, p0, Lcom/coui/appcompat/widget/COUIRoundImageView;->c:I

    if-nez v1, :cond_5

    .line 303
    iget-boolean v0, p0, Lcom/coui/appcompat/widget/COUIRoundImageView;->e:Z

    if-eqz v0, :cond_4

    .line 304
    iget v0, p0, Lcom/coui/appcompat/widget/COUIRoundImageView;->A:F

    iget-object v1, p0, Lcom/coui/appcompat/widget/COUIRoundImageView;->u:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v0, v0, v1}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    .line 305
    iget v0, p0, Lcom/coui/appcompat/widget/COUIRoundImageView;->A:F

    const/high16 v1, 0x3f000000    # 0.5f

    sub-float v1, v0, v1

    iget-object p0, p0, Lcom/coui/appcompat/widget/COUIRoundImageView;->v:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v0, v1, p0}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    goto :goto_1

    .line 307
    :cond_4
    iget v0, p0, Lcom/coui/appcompat/widget/COUIRoundImageView;->A:F

    iget-object p0, p0, Lcom/coui/appcompat/widget/COUIRoundImageView;->u:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v0, v0, p0}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    goto :goto_1

    :cond_5
    if-ne v1, v2, :cond_9

    .line 311
    iget-object v1, p0, Lcom/coui/appcompat/widget/COUIRoundImageView;->h:Landroid/graphics/RectF;

    if-nez v1, :cond_6

    .line 312
    new-instance v1, Landroid/graphics/RectF;

    invoke-virtual {p0}, Lcom/coui/appcompat/widget/COUIRoundImageView;->getWidth()I

    move-result v2

    int-to-float v2, v2

    invoke-virtual {p0}, Lcom/coui/appcompat/widget/COUIRoundImageView;->getHeight()I

    move-result v3

    int-to-float v3, v3

    const/4 v4, 0x0

    invoke-direct {v1, v4, v4, v2, v3}, Landroid/graphics/RectF;-><init>(FFFF)V

    iput-object v1, p0, Lcom/coui/appcompat/widget/COUIRoundImageView;->h:Landroid/graphics/RectF;

    .line 314
    :cond_6
    iget-object v1, p0, Lcom/coui/appcompat/widget/COUIRoundImageView;->i:Landroid/graphics/RectF;

    if-nez v1, :cond_7

    .line 315
    new-instance v1, Landroid/graphics/RectF;

    invoke-virtual {p0}, Lcom/coui/appcompat/widget/COUIRoundImageView;->getWidth()I

    move-result v2

    int-to-float v2, v2

    sub-float/2addr v2, v0

    invoke-virtual {p0}, Lcom/coui/appcompat/widget/COUIRoundImageView;->getHeight()I

    move-result v3

    int-to-float v3, v3

    sub-float/2addr v3, v0

    invoke-direct {v1, v0, v0, v2, v3}, Landroid/graphics/RectF;-><init>(FFFF)V

    iput-object v1, p0, Lcom/coui/appcompat/widget/COUIRoundImageView;->i:Landroid/graphics/RectF;

    .line 317
    :cond_7
    iget-boolean v1, p0, Lcom/coui/appcompat/widget/COUIRoundImageView;->e:Z

    if-eqz v1, :cond_8

    .line 318
    invoke-static {}, Lcom/coui/appcompat/a/o;->a()Lcom/coui/appcompat/a/o;

    move-result-object v1

    iget-object v2, p0, Lcom/coui/appcompat/widget/COUIRoundImageView;->h:Landroid/graphics/RectF;

    iget v3, p0, Lcom/coui/appcompat/widget/COUIRoundImageView;->g:I

    int-to-float v3, v3

    invoke-virtual {v1, v2, v3}, Lcom/coui/appcompat/a/o;->a(Landroid/graphics/RectF;F)Landroid/graphics/Path;

    move-result-object v1

    .line 319
    iget-object v2, p0, Lcom/coui/appcompat/widget/COUIRoundImageView;->u:Landroid/graphics/Paint;

    invoke-virtual {p1, v1, v2}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    .line 320
    invoke-static {}, Lcom/coui/appcompat/a/o;->a()Lcom/coui/appcompat/a/o;

    move-result-object v1

    iget-object v2, p0, Lcom/coui/appcompat/widget/COUIRoundImageView;->i:Landroid/graphics/RectF;

    iget v3, p0, Lcom/coui/appcompat/widget/COUIRoundImageView;->g:I

    int-to-float v3, v3

    sub-float/2addr v3, v0

    invoke-virtual {v1, v2, v3}, Lcom/coui/appcompat/a/o;->a(Landroid/graphics/RectF;F)Landroid/graphics/Path;

    move-result-object v0

    .line 321
    iget-object p0, p0, Lcom/coui/appcompat/widget/COUIRoundImageView;->v:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, p0}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    goto :goto_1

    .line 323
    :cond_8
    invoke-static {}, Lcom/coui/appcompat/a/o;->a()Lcom/coui/appcompat/a/o;

    move-result-object v0

    iget-object v1, p0, Lcom/coui/appcompat/widget/COUIRoundImageView;->h:Landroid/graphics/RectF;

    iget v2, p0, Lcom/coui/appcompat/widget/COUIRoundImageView;->g:I

    int-to-float v2, v2

    invoke-virtual {v0, v1, v2}, Lcom/coui/appcompat/a/o;->a(Landroid/graphics/RectF;F)Landroid/graphics/Path;

    move-result-object v0

    .line 324
    iget-object p0, p0, Lcom/coui/appcompat/widget/COUIRoundImageView;->u:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, p0}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    :cond_9
    :goto_1
    return-void
.end method

.method protected onMeasure(II)V
    .locals 1

    .line 383
    invoke-super {p0, p1, p2}, Landroidx/appcompat/widget/AppCompatImageView;->onMeasure(II)V

    .line 384
    iget p1, p0, Lcom/coui/appcompat/widget/COUIRoundImageView;->c:I

    if-nez p1, :cond_1

    .line 385
    invoke-virtual {p0}, Lcom/coui/appcompat/widget/COUIRoundImageView;->getMeasuredHeight()I

    move-result p1

    invoke-virtual {p0}, Lcom/coui/appcompat/widget/COUIRoundImageView;->getMeasuredWidth()I

    move-result p2

    invoke-static {p1, p2}, Ljava/lang/Math;->min(II)I

    move-result p1

    if-nez p1, :cond_0

    .line 386
    iget p1, p0, Lcom/coui/appcompat/widget/COUIRoundImageView;->z:I

    :cond_0
    iput p1, p0, Lcom/coui/appcompat/widget/COUIRoundImageView;->z:I

    .line 387
    iget p1, p0, Lcom/coui/appcompat/widget/COUIRoundImageView;->z:I

    int-to-float p2, p1

    const/high16 v0, 0x40000000    # 2.0f

    div-float/2addr p2, v0

    iput p2, p0, Lcom/coui/appcompat/widget/COUIRoundImageView;->A:F

    .line 388
    invoke-virtual {p0, p1, p1}, Lcom/coui/appcompat/widget/COUIRoundImageView;->setMeasuredDimension(II)V

    :cond_1
    return-void
.end method

.method protected onSizeChanged(IIII)V
    .locals 0

    .line 374
    invoke-super {p0, p1, p2, p3, p4}, Landroidx/appcompat/widget/AppCompatImageView;->onSizeChanged(IIII)V

    .line 375
    iget p1, p0, Lcom/coui/appcompat/widget/COUIRoundImageView;->c:I

    const/4 p2, 0x1

    if-eq p1, p2, :cond_0

    const/4 p2, 0x2

    if-ne p1, p2, :cond_1

    .line 376
    :cond_0
    new-instance p1, Landroid/graphics/RectF;

    invoke-virtual {p0}, Lcom/coui/appcompat/widget/COUIRoundImageView;->getWidth()I

    move-result p2

    int-to-float p2, p2

    invoke-virtual {p0}, Lcom/coui/appcompat/widget/COUIRoundImageView;->getHeight()I

    move-result p3

    int-to-float p3, p3

    const/4 p4, 0x0

    invoke-direct {p1, p4, p4, p2, p3}, Landroid/graphics/RectF;-><init>(FFFF)V

    iput-object p1, p0, Lcom/coui/appcompat/widget/COUIRoundImageView;->h:Landroid/graphics/RectF;

    .line 377
    new-instance p1, Landroid/graphics/RectF;

    invoke-virtual {p0}, Lcom/coui/appcompat/widget/COUIRoundImageView;->getWidth()I

    move-result p2

    int-to-float p2, p2

    const/high16 p3, 0x3f800000    # 1.0f

    sub-float/2addr p2, p3

    invoke-virtual {p0}, Lcom/coui/appcompat/widget/COUIRoundImageView;->getHeight()I

    move-result p4

    int-to-float p4, p4

    sub-float/2addr p4, p3

    invoke-direct {p1, p3, p3, p2, p4}, Landroid/graphics/RectF;-><init>(FFFF)V

    iput-object p1, p0, Lcom/coui/appcompat/widget/COUIRoundImageView;->i:Landroid/graphics/RectF;

    :cond_1
    return-void
.end method

.method public setBorderRectRadius(I)V
    .locals 0

    .line 266
    iput p1, p0, Lcom/coui/appcompat/widget/COUIRoundImageView;->g:I

    .line 267
    invoke-virtual {p0}, Lcom/coui/appcompat/widget/COUIRoundImageView;->invalidate()V

    return-void
.end method

.method public setHasBorder(Z)V
    .locals 0

    .line 237
    iput-boolean p1, p0, Lcom/coui/appcompat/widget/COUIRoundImageView;->e:Z

    return-void
.end method

.method public setHasDefaultPic(Z)V
    .locals 0

    .line 257
    iput-boolean p1, p0, Lcom/coui/appcompat/widget/COUIRoundImageView;->f:Z

    return-void
.end method

.method public setImageDrawable(Landroid/graphics/drawable/Drawable;)V
    .locals 0

    .line 394
    invoke-super {p0, p1}, Landroidx/appcompat/widget/AppCompatImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 395
    invoke-direct {p0, p1}, Lcom/coui/appcompat/widget/COUIRoundImageView;->setupShader(Landroid/graphics/drawable/Drawable;)V

    return-void
.end method

.method public setImageResource(I)V
    .locals 1

    .line 400
    invoke-super {p0, p1}, Landroidx/appcompat/widget/AppCompatImageView;->setImageResource(I)V

    .line 401
    iget-object v0, p0, Lcom/coui/appcompat/widget/COUIRoundImageView;->d:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    .line 402
    invoke-direct {p0, p1}, Lcom/coui/appcompat/widget/COUIRoundImageView;->setupShader(Landroid/graphics/drawable/Drawable;)V

    return-void
.end method

.method public setOutCircleColor(I)V
    .locals 1

    .line 246
    iput p1, p0, Lcom/coui/appcompat/widget/COUIRoundImageView;->w:I

    .line 247
    iget-object v0, p0, Lcom/coui/appcompat/widget/COUIRoundImageView;->v:Landroid/graphics/Paint;

    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setColor(I)V

    .line 248
    invoke-virtual {p0}, Lcom/coui/appcompat/widget/COUIRoundImageView;->invalidate()V

    return-void
.end method

.method public setType(I)V
    .locals 1

    .line 467
    iget v0, p0, Lcom/coui/appcompat/widget/COUIRoundImageView;->c:I

    if-eq v0, p1, :cond_2

    .line 468
    iput p1, p0, Lcom/coui/appcompat/widget/COUIRoundImageView;->c:I

    .line 469
    iget p1, p0, Lcom/coui/appcompat/widget/COUIRoundImageView;->c:I

    if-nez p1, :cond_1

    .line 470
    invoke-virtual {p0}, Lcom/coui/appcompat/widget/COUIRoundImageView;->getMeasuredHeight()I

    move-result p1

    invoke-virtual {p0}, Lcom/coui/appcompat/widget/COUIRoundImageView;->getMeasuredWidth()I

    move-result v0

    invoke-static {p1, v0}, Ljava/lang/Math;->min(II)I

    move-result p1

    if-nez p1, :cond_0

    .line 471
    iget p1, p0, Lcom/coui/appcompat/widget/COUIRoundImageView;->z:I

    :cond_0
    iput p1, p0, Lcom/coui/appcompat/widget/COUIRoundImageView;->z:I

    .line 472
    iget p1, p0, Lcom/coui/appcompat/widget/COUIRoundImageView;->z:I

    int-to-float p1, p1

    const/high16 v0, 0x40000000    # 2.0f

    div-float/2addr p1, v0

    iput p1, p0, Lcom/coui/appcompat/widget/COUIRoundImageView;->A:F

    .line 474
    :cond_1
    invoke-virtual {p0}, Lcom/coui/appcompat/widget/COUIRoundImageView;->invalidate()V

    :cond_2
    return-void
.end method
