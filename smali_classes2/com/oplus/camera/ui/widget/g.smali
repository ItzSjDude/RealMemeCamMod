.class public Lcom/oplus/camera/ui/widget/g;
.super Landroid/graphics/drawable/Drawable;
.source "XPanExposureTickDrawable.java"


# instance fields
.field private final a:F

.field private final b:I

.field private final c:I

.field private final d:I

.field private final e:I

.field private final f:I

.field private g:I

.field private h:Landroid/graphics/Paint;

.field private i:Landroid/graphics/Paint;


# direct methods
.method public constructor <init>()V
    .locals 3

    .line 19
    invoke-direct {p0}, Landroid/graphics/drawable/Drawable;-><init>()V

    .line 22
    invoke-static {}, Lcom/oplus/camera/util/Util;->l()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f070d6b

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    int-to-float v0, v0

    iput v0, p0, Lcom/oplus/camera/ui/widget/g;->a:F

    .line 24
    invoke-static {}, Lcom/oplus/camera/util/Util;->l()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f070d6a

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lcom/oplus/camera/ui/widget/g;->b:I

    .line 26
    invoke-static {}, Lcom/oplus/camera/util/Util;->l()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f070d69

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lcom/oplus/camera/ui/widget/g;->c:I

    .line 28
    invoke-static {}, Lcom/oplus/camera/util/Util;->l()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f070d68

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lcom/oplus/camera/ui/widget/g;->d:I

    .line 30
    invoke-static {}, Lcom/oplus/camera/util/Util;->l()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f070d67

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lcom/oplus/camera/ui/widget/g;->e:I

    const/16 v0, 0x13

    .line 31
    iput v0, p0, Lcom/oplus/camera/ui/widget/g;->f:I

    const/16 v0, 0x9

    .line 32
    iput v0, p0, Lcom/oplus/camera/ui/widget/g;->g:I

    .line 36
    new-instance v0, Landroid/graphics/Paint;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Landroid/graphics/Paint;-><init>(I)V

    iput-object v0, p0, Lcom/oplus/camera/ui/widget/g;->h:Landroid/graphics/Paint;

    .line 37
    new-instance v0, Landroid/graphics/Paint;

    iget-object v1, p0, Lcom/oplus/camera/ui/widget/g;->h:Landroid/graphics/Paint;

    invoke-direct {v0, v1}, Landroid/graphics/Paint;-><init>(Landroid/graphics/Paint;)V

    iput-object v0, p0, Lcom/oplus/camera/ui/widget/g;->i:Landroid/graphics/Paint;

    .line 40
    iget-object v0, p0, Lcom/oplus/camera/ui/widget/g;->h:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 41
    iget-object v0, p0, Lcom/oplus/camera/ui/widget/g;->h:Landroid/graphics/Paint;

    iget v1, p0, Lcom/oplus/camera/ui/widget/g;->a:F

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 42
    iget-object v0, p0, Lcom/oplus/camera/ui/widget/g;->h:Landroid/graphics/Paint;

    const/4 v1, -0x1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 43
    iget-object v0, p0, Lcom/oplus/camera/ui/widget/g;->h:Landroid/graphics/Paint;

    const/16 v2, 0x66

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 45
    iget-object v0, p0, Lcom/oplus/camera/ui/widget/g;->i:Landroid/graphics/Paint;

    sget-object v2, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 46
    iget-object v0, p0, Lcom/oplus/camera/ui/widget/g;->i:Landroid/graphics/Paint;

    iget v2, p0, Lcom/oplus/camera/ui/widget/g;->a:F

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 47
    iget-object v0, p0, Lcom/oplus/camera/ui/widget/g;->i:Landroid/graphics/Paint;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 48
    iget-object p0, p0, Lcom/oplus/camera/ui/widget/g;->i:Landroid/graphics/Paint;

    const/16 v0, 0xff

    invoke-virtual {p0, v0}, Landroid/graphics/Paint;->setAlpha(I)V

    return-void
.end method

.method private b(I)Landroid/graphics/Paint;
    .locals 2

    .line 79
    iget v0, p0, Lcom/oplus/camera/ui/widget/g;->g:I

    const/16 v1, 0x9

    if-ne v0, v1, :cond_1

    if-ne p1, v1, :cond_0

    .line 81
    iget-object p0, p0, Lcom/oplus/camera/ui/widget/g;->i:Landroid/graphics/Paint;

    return-object p0

    .line 83
    :cond_0
    iget-object p0, p0, Lcom/oplus/camera/ui/widget/g;->h:Landroid/graphics/Paint;

    return-object p0

    :cond_1
    if-le v0, v1, :cond_3

    if-lt p1, v1, :cond_2

    if-gt p1, v0, :cond_2

    .line 88
    iget-object p0, p0, Lcom/oplus/camera/ui/widget/g;->i:Landroid/graphics/Paint;

    return-object p0

    .line 90
    :cond_2
    iget-object p0, p0, Lcom/oplus/camera/ui/widget/g;->h:Landroid/graphics/Paint;

    return-object p0

    :cond_3
    if-lt p1, v0, :cond_4

    if-gt p1, v1, :cond_4

    .line 95
    iget-object p0, p0, Lcom/oplus/camera/ui/widget/g;->i:Landroid/graphics/Paint;

    return-object p0

    .line 97
    :cond_4
    iget-object p0, p0, Lcom/oplus/camera/ui/widget/g;->h:Landroid/graphics/Paint;

    return-object p0
.end method


# virtual methods
.method public a(I)V
    .locals 0

    .line 122
    iput p1, p0, Lcom/oplus/camera/ui/widget/g;->g:I

    return-void
.end method

.method public draw(Landroid/graphics/Canvas;)V
    .locals 11

    .line 55
    invoke-virtual {p0}, Lcom/oplus/camera/ui/widget/g;->getBounds()Landroid/graphics/Rect;

    move-result-object v0

    const/4 v1, 0x0

    :goto_0
    const/16 v2, 0x13

    if-ge v1, v2, :cond_2

    .line 60
    iget v2, p0, Lcom/oplus/camera/ui/widget/g;->c:I

    const/16 v3, 0x9

    if-ne v1, v3, :cond_0

    .line 62
    iget v2, p0, Lcom/oplus/camera/ui/widget/g;->e:I

    goto :goto_1

    .line 63
    :cond_0
    rem-int/lit8 v3, v1, 0x3

    if-nez v3, :cond_1

    .line 64
    iget v2, p0, Lcom/oplus/camera/ui/widget/g;->d:I

    .line 67
    :cond_1
    :goto_1
    iget v3, v0, Landroid/graphics/Rect;->left:I

    int-to-float v3, v3

    iget v4, p0, Lcom/oplus/camera/ui/widget/g;->a:F

    const/high16 v5, 0x40000000    # 2.0f

    div-float/2addr v4, v5

    add-float/2addr v3, v4

    iget v4, p0, Lcom/oplus/camera/ui/widget/g;->b:I

    mul-int/2addr v4, v1

    int-to-float v4, v4

    add-float v8, v3, v4

    .line 68
    iget v3, v0, Landroid/graphics/Rect;->top:I

    iget v4, p0, Lcom/oplus/camera/ui/widget/g;->e:I

    add-int/2addr v3, v4

    int-to-float v7, v3

    int-to-float v2, v2

    sub-float v9, v7, v2

    .line 70
    invoke-direct {p0, v1}, Lcom/oplus/camera/ui/widget/g;->b(I)Landroid/graphics/Paint;

    move-result-object v10

    move-object v5, p1

    move v6, v8

    .line 69
    invoke-virtual/range {v5 .. v10}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_2
    return-void
.end method

.method public getOpacity()I
    .locals 0

    const/4 p0, -0x3

    return p0
.end method

.method public setAlpha(I)V
    .locals 0

    return-void
.end method

.method public setColorFilter(Landroid/graphics/ColorFilter;)V
    .locals 0

    return-void
.end method
