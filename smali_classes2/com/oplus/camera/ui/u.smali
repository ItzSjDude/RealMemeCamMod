.class public Lcom/oplus/camera/ui/u;
.super Landroid/widget/ImageView;
.source "ShadowImageView.java"


# instance fields
.field a:I

.field b:I

.field private c:Landroid/graphics/Paint;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .line 19
    invoke-direct {p0, p1}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    .line 20
    invoke-direct {p0}, Lcom/oplus/camera/ui/u;->a()V

    return-void
.end method

.method private a()V
    .locals 5

    .line 39
    invoke-virtual {p0}, Lcom/oplus/camera/ui/u;->getContext()Landroid/content/Context;

    move-result-object v0

    sget v1, Lcom/oplus/camera/util/Util;->a:I

    const v2, 0x7f0706a5

    invoke-static {v0, v2, v1}, Lcom/oplus/camera/util/Util;->a(Landroid/content/Context;II)F

    move-result v0

    .line 40
    invoke-virtual {p0}, Lcom/oplus/camera/ui/u;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f060069

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 41
    invoke-virtual {p0, v2, v3}, Lcom/oplus/camera/ui/u;->setLayerType(ILandroid/graphics/Paint;)V

    .line 42
    new-instance v2, Landroid/graphics/Paint;

    invoke-direct {v2}, Landroid/graphics/Paint;-><init>()V

    iput-object v2, p0, Lcom/oplus/camera/ui/u;->c:Landroid/graphics/Paint;

    .line 43
    iget-object v2, p0, Lcom/oplus/camera/ui/u;->c:Landroid/graphics/Paint;

    new-instance v3, Landroid/graphics/BlurMaskFilter;

    sget-object v4, Landroid/graphics/BlurMaskFilter$Blur;->OUTER:Landroid/graphics/BlurMaskFilter$Blur;

    invoke-direct {v3, v0, v4}, Landroid/graphics/BlurMaskFilter;-><init>(FLandroid/graphics/BlurMaskFilter$Blur;)V

    invoke-virtual {v2, v3}, Landroid/graphics/Paint;->setMaskFilter(Landroid/graphics/MaskFilter;)Landroid/graphics/MaskFilter;

    .line 44
    iget-object v0, p0, Lcom/oplus/camera/ui/u;->c:Landroid/graphics/Paint;

    sget-object v2, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 45
    iget-object p0, p0, Lcom/oplus/camera/ui/u;->c:Landroid/graphics/Paint;

    invoke-virtual {p0, v1}, Landroid/graphics/Paint;->setColor(I)V

    return-void
.end method


# virtual methods
.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 4

    .line 57
    invoke-virtual {p0}, Lcom/oplus/camera/ui/u;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-static {v0}, Lcom/oplus/camera/util/Util;->b(Landroid/graphics/drawable/Drawable;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 58
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->extractAlpha()Landroid/graphics/Bitmap;

    move-result-object v1

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v2

    .line 59
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v0

    const/4 v3, 0x1

    .line 58
    invoke-static {v1, v2, v0, v3}, Landroid/graphics/Bitmap;->createScaledBitmap(Landroid/graphics/Bitmap;IIZ)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 60
    iget v1, p0, Lcom/oplus/camera/ui/u;->a:I

    int-to-float v1, v1

    iget v2, p0, Lcom/oplus/camera/ui/u;->b:I

    int-to-float v2, v2

    iget-object v3, p0, Lcom/oplus/camera/ui/u;->c:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v1, v2, v3}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    .line 61
    invoke-super {p0, p1}, Landroid/widget/ImageView;->onDraw(Landroid/graphics/Canvas;)V

    return-void
.end method

.method protected onLayout(ZIIII)V
    .locals 0

    .line 50
    invoke-super/range {p0 .. p5}, Landroid/widget/ImageView;->onLayout(ZIIII)V

    .line 51
    iput p2, p0, Lcom/oplus/camera/ui/u;->a:I

    .line 52
    iput p3, p0, Lcom/oplus/camera/ui/u;->b:I

    return-void
.end method
