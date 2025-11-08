.class public Lcom/oplus/camera/ui/preview/r;
.super Landroid/view/View;
.source "GuideLineView.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/oplus/camera/ui/preview/r$b;,
        Lcom/oplus/camera/ui/preview/r$c;,
        Lcom/oplus/camera/ui/preview/r$a;
    }
.end annotation


# instance fields
.field private a:Landroid/graphics/Paint;

.field private b:Landroid/graphics/Paint;

.field private c:Z

.field private d:Ljava/lang/String;

.field private e:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/oplus/camera/ui/preview/r$b;",
            ">;"
        }
    .end annotation
.end field

.field private f:Landroid/graphics/PointF;

.field private g:Lcom/oplus/camera/ui/preview/r$c;

.field private h:Lcom/oplus/camera/ui/preview/r$a;

.field private i:Lcom/oplus/camera/ui/preview/r$a;

.field private j:I

.field private k:Landroid/graphics/Canvas;

.field private l:Landroid/graphics/Bitmap;

.field private m:F


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 3

    .line 67
    invoke-direct {p0, p1}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    const/4 v0, 0x0

    .line 52
    iput-object v0, p0, Lcom/oplus/camera/ui/preview/r;->a:Landroid/graphics/Paint;

    .line 53
    iput-object v0, p0, Lcom/oplus/camera/ui/preview/r;->b:Landroid/graphics/Paint;

    const/4 v1, 0x0

    .line 54
    iput-boolean v1, p0, Lcom/oplus/camera/ui/preview/r;->c:Z

    const-string v2, "grid"

    .line 55
    iput-object v2, p0, Lcom/oplus/camera/ui/preview/r;->d:Ljava/lang/String;

    .line 56
    iput-object v0, p0, Lcom/oplus/camera/ui/preview/r;->e:Ljava/util/List;

    .line 57
    new-instance v2, Landroid/graphics/PointF;

    invoke-direct {v2}, Landroid/graphics/PointF;-><init>()V

    iput-object v2, p0, Lcom/oplus/camera/ui/preview/r;->f:Landroid/graphics/PointF;

    .line 58
    new-instance v2, Lcom/oplus/camera/ui/preview/r$c;

    invoke-direct {v2}, Lcom/oplus/camera/ui/preview/r$c;-><init>()V

    iput-object v2, p0, Lcom/oplus/camera/ui/preview/r;->g:Lcom/oplus/camera/ui/preview/r$c;

    .line 59
    iput-object v0, p0, Lcom/oplus/camera/ui/preview/r;->h:Lcom/oplus/camera/ui/preview/r$a;

    .line 60
    iput-object v0, p0, Lcom/oplus/camera/ui/preview/r;->i:Lcom/oplus/camera/ui/preview/r$a;

    .line 61
    iput v1, p0, Lcom/oplus/camera/ui/preview/r;->j:I

    .line 62
    iput-object v0, p0, Lcom/oplus/camera/ui/preview/r;->k:Landroid/graphics/Canvas;

    .line 63
    iput-object v0, p0, Lcom/oplus/camera/ui/preview/r;->l:Landroid/graphics/Bitmap;

    const/4 v0, 0x0

    .line 64
    iput v0, p0, Lcom/oplus/camera/ui/preview/r;->m:F

    .line 68
    invoke-direct {p0, p1}, Lcom/oplus/camera/ui/preview/r;->a(Landroid/content/Context;)V

    return-void
.end method

.method private a()I
    .locals 7

    .line 294
    iget-object v0, p0, Lcom/oplus/camera/ui/preview/r;->e:Ljava/util/List;

    if-nez v0, :cond_0

    .line 295
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/oplus/camera/ui/preview/r;->e:Ljava/util/List;

    .line 300
    :cond_0
    iget-object v0, p0, Lcom/oplus/camera/ui/preview/r;->d:Ljava/lang/String;

    const/4 v1, -0x1

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v2

    const v3, -0x3566f50f    # -5014904.5f

    const/4 v4, 0x2

    const/4 v5, 0x1

    const/4 v6, 0x0

    if-eq v2, v3, :cond_3

    const v3, 0x308b46

    if-eq v2, v3, :cond_2

    const v3, 0x59460a08

    if-eq v2, v3, :cond_1

    goto :goto_0

    :cond_1
    const-string v2, "triangle"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    move v1, v5

    goto :goto_0

    :cond_2
    const-string v2, "grid"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    move v1, v6

    goto :goto_0

    :cond_3
    const-string v2, "spiral"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    move v1, v4

    :cond_4
    :goto_0
    if-eqz v1, :cond_7

    if-eq v1, v5, :cond_6

    if-eq v1, v4, :cond_5

    goto :goto_1

    :cond_5
    const/16 v6, 0xa

    goto :goto_1

    :cond_6
    const/4 v6, 0x3

    goto :goto_1

    :cond_7
    const/4 v6, 0x4

    .line 317
    :goto_1
    iget-object v0, p0, Lcom/oplus/camera/ui/preview/r;->e:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-ge v0, v6, :cond_8

    .line 318
    iget-object v0, p0, Lcom/oplus/camera/ui/preview/r;->e:Ljava/util/List;

    new-instance v1, Lcom/oplus/camera/ui/preview/r$b;

    new-instance v2, Landroid/graphics/PointF;

    const/4 v3, 0x0

    invoke-direct {v2, v3, v3}, Landroid/graphics/PointF;-><init>(FF)V

    new-instance v4, Landroid/graphics/PointF;

    invoke-direct {v4, v3, v3}, Landroid/graphics/PointF;-><init>(FF)V

    invoke-direct {v1, p0, v2, v4}, Lcom/oplus/camera/ui/preview/r$b;-><init>(Lcom/oplus/camera/ui/preview/r;Landroid/graphics/PointF;Landroid/graphics/PointF;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_8
    return v6
.end method

.method static synthetic a(Lcom/oplus/camera/ui/preview/r;I)I
    .locals 0

    .line 36
    iput p1, p0, Lcom/oplus/camera/ui/preview/r;->j:I

    return p1
.end method

.method private a(II)V
    .locals 1

    .line 181
    iget-object v0, p0, Lcom/oplus/camera/ui/preview/r;->k:Landroid/graphics/Canvas;

    if-eqz v0, :cond_1

    .line 182
    invoke-virtual {v0}, Landroid/graphics/Canvas;->getWidth()I

    move-result v0

    if-ne p1, v0, :cond_0

    iget-object v0, p0, Lcom/oplus/camera/ui/preview/r;->k:Landroid/graphics/Canvas;

    invoke-virtual {v0}, Landroid/graphics/Canvas;->getHeight()I

    move-result v0

    if-eq p2, v0, :cond_2

    .line 183
    :cond_0
    new-instance v0, Landroid/graphics/Canvas;

    invoke-direct {v0}, Landroid/graphics/Canvas;-><init>()V

    iput-object v0, p0, Lcom/oplus/camera/ui/preview/r;->k:Landroid/graphics/Canvas;

    goto :goto_0

    .line 186
    :cond_1
    new-instance v0, Landroid/graphics/Canvas;

    invoke-direct {v0}, Landroid/graphics/Canvas;-><init>()V

    iput-object v0, p0, Lcom/oplus/camera/ui/preview/r;->k:Landroid/graphics/Canvas;

    .line 189
    :cond_2
    :goto_0
    iget-object v0, p0, Lcom/oplus/camera/ui/preview/r;->l:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_4

    .line 190
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v0

    if-ne p1, v0, :cond_3

    iget-object v0, p0, Lcom/oplus/camera/ui/preview/r;->l:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v0

    if-eq p2, v0, :cond_5

    .line 191
    :cond_3
    iget-object v0, p0, Lcom/oplus/camera/ui/preview/r;->l:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    .line 192
    sget-object v0, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {p1, p2, v0}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object p1

    iput-object p1, p0, Lcom/oplus/camera/ui/preview/r;->l:Landroid/graphics/Bitmap;

    goto :goto_1

    .line 195
    :cond_4
    sget-object v0, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {p1, p2, v0}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object p1

    iput-object p1, p0, Lcom/oplus/camera/ui/preview/r;->l:Landroid/graphics/Bitmap;

    .line 198
    :cond_5
    :goto_1
    iget-object p1, p0, Lcom/oplus/camera/ui/preview/r;->k:Landroid/graphics/Canvas;

    iget-object p2, p0, Lcom/oplus/camera/ui/preview/r;->l:Landroid/graphics/Bitmap;

    invoke-virtual {p1, p2}, Landroid/graphics/Canvas;->setBitmap(Landroid/graphics/Bitmap;)V

    .line 199
    iget-object p0, p0, Lcom/oplus/camera/ui/preview/r;->k:Landroid/graphics/Canvas;

    const/4 p1, 0x0

    sget-object p2, Landroid/graphics/PorterDuff$Mode;->CLEAR:Landroid/graphics/PorterDuff$Mode;

    invoke-virtual {p0, p1, p2}, Landroid/graphics/Canvas;->drawColor(ILandroid/graphics/PorterDuff$Mode;)V

    return-void
.end method

.method private a(IIII)V
    .locals 8

    int-to-float p3, p3

    const/high16 v0, 0x3f800000    # 1.0f

    mul-float/2addr v0, p3

    int-to-float v1, p4

    div-float/2addr v0, v1

    .line 215
    iget-object v2, p0, Lcom/oplus/camera/ui/preview/r;->g:Lcom/oplus/camera/ui/preview/r$c;

    invoke-static {v2}, Lcom/oplus/camera/ui/preview/r$c;->a(Lcom/oplus/camera/ui/preview/r$c;)F

    move-result v2

    cmpl-float v0, v0, v2

    const/high16 v2, 0x3f000000    # 0.5f

    const/4 v3, 0x0

    if-ltz v0, :cond_0

    .line 216
    iget-object v0, p0, Lcom/oplus/camera/ui/preview/r;->g:Lcom/oplus/camera/ui/preview/r$c;

    invoke-static {v0, v1}, Lcom/oplus/camera/ui/preview/r$c;->a(Lcom/oplus/camera/ui/preview/r$c;F)F

    .line 217
    iget-object v0, p0, Lcom/oplus/camera/ui/preview/r;->g:Lcom/oplus/camera/ui/preview/r$c;

    invoke-static {v0}, Lcom/oplus/camera/ui/preview/r$c;->b(Lcom/oplus/camera/ui/preview/r$c;)F

    move-result v1

    iget-object v4, p0, Lcom/oplus/camera/ui/preview/r;->g:Lcom/oplus/camera/ui/preview/r$c;

    invoke-static {v4}, Lcom/oplus/camera/ui/preview/r$c;->a(Lcom/oplus/camera/ui/preview/r$c;)F

    move-result v4

    mul-float/2addr v1, v4

    invoke-static {v0, v1}, Lcom/oplus/camera/ui/preview/r$c;->b(Lcom/oplus/camera/ui/preview/r$c;F)F

    .line 218
    iget-object v0, p0, Lcom/oplus/camera/ui/preview/r;->g:Lcom/oplus/camera/ui/preview/r$c;

    invoke-static {v0}, Lcom/oplus/camera/ui/preview/r$c;->c(Lcom/oplus/camera/ui/preview/r$c;)F

    move-result v1

    sub-float/2addr p3, v1

    mul-float/2addr p3, v2

    invoke-static {v0, p3}, Lcom/oplus/camera/ui/preview/r$c;->c(Lcom/oplus/camera/ui/preview/r$c;F)F

    .line 219
    iget-object p3, p0, Lcom/oplus/camera/ui/preview/r;->g:Lcom/oplus/camera/ui/preview/r$c;

    invoke-static {p3, v3}, Lcom/oplus/camera/ui/preview/r$c;->d(Lcom/oplus/camera/ui/preview/r$c;F)F

    goto :goto_0

    .line 221
    :cond_0
    iget-object v0, p0, Lcom/oplus/camera/ui/preview/r;->g:Lcom/oplus/camera/ui/preview/r$c;

    invoke-static {v0, p3}, Lcom/oplus/camera/ui/preview/r$c;->b(Lcom/oplus/camera/ui/preview/r$c;F)F

    .line 222
    iget-object p3, p0, Lcom/oplus/camera/ui/preview/r;->g:Lcom/oplus/camera/ui/preview/r$c;

    invoke-static {p3}, Lcom/oplus/camera/ui/preview/r$c;->c(Lcom/oplus/camera/ui/preview/r$c;)F

    move-result v0

    iget-object v4, p0, Lcom/oplus/camera/ui/preview/r;->g:Lcom/oplus/camera/ui/preview/r$c;

    invoke-static {v4}, Lcom/oplus/camera/ui/preview/r$c;->a(Lcom/oplus/camera/ui/preview/r$c;)F

    move-result v4

    div-float/2addr v0, v4

    invoke-static {p3, v0}, Lcom/oplus/camera/ui/preview/r$c;->a(Lcom/oplus/camera/ui/preview/r$c;F)F

    .line 223
    iget-object p3, p0, Lcom/oplus/camera/ui/preview/r;->g:Lcom/oplus/camera/ui/preview/r$c;

    invoke-static {p3, v3}, Lcom/oplus/camera/ui/preview/r$c;->c(Lcom/oplus/camera/ui/preview/r$c;F)F

    .line 224
    iget-object p3, p0, Lcom/oplus/camera/ui/preview/r;->g:Lcom/oplus/camera/ui/preview/r$c;

    invoke-static {p3}, Lcom/oplus/camera/ui/preview/r$c;->b(Lcom/oplus/camera/ui/preview/r$c;)F

    move-result v0

    sub-float/2addr v1, v0

    mul-float/2addr v1, v2

    invoke-static {p3, v1}, Lcom/oplus/camera/ui/preview/r$c;->d(Lcom/oplus/camera/ui/preview/r$c;F)F

    :goto_0
    const/4 p3, 0x0

    .line 228
    iget-object v0, p0, Lcom/oplus/camera/ui/preview/r;->e:Ljava/util/List;

    invoke-interface {v0, p3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    move-object v1, v0

    check-cast v1, Lcom/oplus/camera/ui/preview/r$b;

    int-to-float p1, p1

    iget-object v0, p0, Lcom/oplus/camera/ui/preview/r;->g:Lcom/oplus/camera/ui/preview/r$c;

    invoke-static {v0}, Lcom/oplus/camera/ui/preview/r$c;->d(Lcom/oplus/camera/ui/preview/r$c;)F

    move-result v0

    add-float v2, p1, v0

    add-int/2addr p2, p4

    int-to-float p1, p2

    iget-object p2, p0, Lcom/oplus/camera/ui/preview/r;->g:Lcom/oplus/camera/ui/preview/r$c;

    .line 229
    invoke-static {p2}, Lcom/oplus/camera/ui/preview/r$c;->e(Lcom/oplus/camera/ui/preview/r$c;)F

    move-result p2

    sub-float v3, p1, p2

    iget-object p1, p0, Lcom/oplus/camera/ui/preview/r;->g:Lcom/oplus/camera/ui/preview/r$c;

    .line 230
    invoke-virtual {p1, p3}, Lcom/oplus/camera/ui/preview/r$c;->a(I)F

    move-result v4

    iget-object p1, p0, Lcom/oplus/camera/ui/preview/r;->g:Lcom/oplus/camera/ui/preview/r$c;

    .line 231
    invoke-virtual {p1, p3}, Lcom/oplus/camera/ui/preview/r$c;->b(I)Z

    move-result v5

    const/4 v6, 0x0

    const/16 v7, 0x5a

    .line 228
    invoke-virtual/range {v1 .. v7}, Lcom/oplus/camera/ui/preview/r$b;->a(FFFZII)V

    const/4 p1, 0x1

    move p2, p1

    :goto_1
    const/16 p4, 0x9

    if-ge p2, p4, :cond_1

    .line 236
    iget-object p4, p0, Lcom/oplus/camera/ui/preview/r;->e:Ljava/util/List;

    add-int/lit8 v0, p3, 0x1

    invoke-interface {p4, p3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Lcom/oplus/camera/ui/preview/r$b;

    .line 237
    iget-object p4, p0, Lcom/oplus/camera/ui/preview/r;->e:Ljava/util/List;

    invoke-interface {p4, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p4

    move-object v1, p4

    check-cast v1, Lcom/oplus/camera/ui/preview/r$b;

    invoke-static {p3}, Lcom/oplus/camera/ui/preview/r$b;->b(Lcom/oplus/camera/ui/preview/r$b;)Landroid/graphics/PointF;

    move-result-object p4

    iget v2, p4, Landroid/graphics/PointF;->x:F

    .line 238
    invoke-static {p3}, Lcom/oplus/camera/ui/preview/r$b;->b(Lcom/oplus/camera/ui/preview/r$b;)Landroid/graphics/PointF;

    move-result-object p4

    iget v3, p4, Landroid/graphics/PointF;->y:F

    iget-object p4, p0, Lcom/oplus/camera/ui/preview/r;->g:Lcom/oplus/camera/ui/preview/r$c;

    .line 239
    invoke-virtual {p4, v0}, Lcom/oplus/camera/ui/preview/r$c;->a(I)F

    move-result v4

    iget-object p4, p0, Lcom/oplus/camera/ui/preview/r;->g:Lcom/oplus/camera/ui/preview/r$c;

    .line 240
    invoke-virtual {p4, v0}, Lcom/oplus/camera/ui/preview/r$c;->b(I)Z

    move-result v5

    .line 241
    invoke-static {p3}, Lcom/oplus/camera/ui/preview/r$b;->e(Lcom/oplus/camera/ui/preview/r$b;)I

    move-result p3

    add-int/lit8 v6, p3, -0x5a

    const/16 v7, 0x5a

    .line 237
    invoke-virtual/range {v1 .. v7}, Lcom/oplus/camera/ui/preview/r$b;->a(FFFZII)V

    add-int/lit8 p2, p2, 0x1

    move p3, v0

    goto :goto_1

    :cond_1
    add-int/2addr p3, p1

    .line 246
    iget-object p1, p0, Lcom/oplus/camera/ui/preview/r;->e:Ljava/util/List;

    const/4 p2, 0x4

    invoke-interface {p1, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/oplus/camera/ui/preview/r$b;

    .line 247
    iget-object p0, p0, Lcom/oplus/camera/ui/preview/r;->e:Ljava/util/List;

    invoke-interface {p0, p3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/oplus/camera/ui/preview/r$b;

    invoke-static {p1}, Lcom/oplus/camera/ui/preview/r$b;->c(Lcom/oplus/camera/ui/preview/r$b;)Landroid/graphics/PointF;

    move-result-object p2

    iget p2, p2, Landroid/graphics/PointF;->x:F

    invoke-static {p1}, Lcom/oplus/camera/ui/preview/r$b;->c(Lcom/oplus/camera/ui/preview/r$b;)Landroid/graphics/PointF;

    move-result-object p3

    iget p3, p3, Landroid/graphics/PointF;->y:F

    invoke-static {p1}, Lcom/oplus/camera/ui/preview/r$b;->b(Lcom/oplus/camera/ui/preview/r$b;)Landroid/graphics/PointF;

    move-result-object p4

    iget p4, p4, Landroid/graphics/PointF;->x:F

    invoke-static {p1}, Lcom/oplus/camera/ui/preview/r$b;->c(Lcom/oplus/camera/ui/preview/r$b;)Landroid/graphics/PointF;

    move-result-object p1

    iget p1, p1, Landroid/graphics/PointF;->y:F

    invoke-virtual {p0, p2, p3, p4, p1}, Lcom/oplus/camera/ui/preview/r$b;->a(FFFF)V

    return-void
.end method

.method private a(Landroid/content/Context;)V
    .locals 1

    .line 77
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const v0, 0x7f0705e0

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getDimension(I)F

    move-result p1

    iput p1, p0, Lcom/oplus/camera/ui/preview/r;->m:F

    .line 78
    new-instance p1, Landroid/graphics/Paint;

    invoke-direct {p1}, Landroid/graphics/Paint;-><init>()V

    iput-object p1, p0, Lcom/oplus/camera/ui/preview/r;->a:Landroid/graphics/Paint;

    .line 79
    iget-object p1, p0, Lcom/oplus/camera/ui/preview/r;->a:Landroid/graphics/Paint;

    sget-object v0, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {p1, v0}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 80
    iget-object p1, p0, Lcom/oplus/camera/ui/preview/r;->a:Landroid/graphics/Paint;

    const-string v0, "#A6ffffff"

    invoke-static {v0}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/graphics/Paint;->setColor(I)V

    .line 81
    iget-object p1, p0, Lcom/oplus/camera/ui/preview/r;->a:Landroid/graphics/Paint;

    iget v0, p0, Lcom/oplus/camera/ui/preview/r;->m:F

    invoke-virtual {p1, v0}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 82
    iget-object p1, p0, Lcom/oplus/camera/ui/preview/r;->a:Landroid/graphics/Paint;

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 83
    new-instance p1, Landroid/graphics/Paint;

    invoke-direct {p1}, Landroid/graphics/Paint;-><init>()V

    iput-object p1, p0, Lcom/oplus/camera/ui/preview/r;->b:Landroid/graphics/Paint;

    .line 84
    new-instance p1, Lcom/oplus/camera/ui/preview/r$a;

    invoke-direct {p1, p0}, Lcom/oplus/camera/ui/preview/r$a;-><init>(Lcom/oplus/camera/ui/preview/r;)V

    iput-object p1, p0, Lcom/oplus/camera/ui/preview/r;->h:Lcom/oplus/camera/ui/preview/r$a;

    .line 85
    iget-object p1, p0, Lcom/oplus/camera/ui/preview/r;->h:Lcom/oplus/camera/ui/preview/r$a;

    new-instance v0, Lcom/oplus/camera/ui/preview/r$1;

    invoke-direct {v0, p0}, Lcom/oplus/camera/ui/preview/r$1;-><init>(Lcom/oplus/camera/ui/preview/r;)V

    invoke-virtual {p1, v0}, Lcom/oplus/camera/ui/preview/r$a;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    .line 102
    new-instance p1, Lcom/oplus/camera/ui/preview/r$a;

    invoke-direct {p1, p0}, Lcom/oplus/camera/ui/preview/r$a;-><init>(Lcom/oplus/camera/ui/preview/r;)V

    iput-object p1, p0, Lcom/oplus/camera/ui/preview/r;->i:Lcom/oplus/camera/ui/preview/r$a;

    .line 103
    iget-object p1, p0, Lcom/oplus/camera/ui/preview/r;->i:Lcom/oplus/camera/ui/preview/r$a;

    new-instance v0, Lcom/oplus/camera/ui/preview/r$2;

    invoke-direct {v0, p0}, Lcom/oplus/camera/ui/preview/r$2;-><init>(Lcom/oplus/camera/ui/preview/r;)V

    invoke-virtual {p1, v0}, Lcom/oplus/camera/ui/preview/r$a;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    return-void
.end method

.method private b(IIII)V
    .locals 15

    move-object v0, p0

    move/from16 v1, p1

    move/from16 v2, p2

    move/from16 v3, p3

    move/from16 v4, p4

    .line 253
    iget-object v5, v0, Lcom/oplus/camera/ui/preview/r;->e:Ljava/util/List;

    const/4 v6, 0x0

    invoke-interface {v5, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/oplus/camera/ui/preview/r$b;

    add-int v6, v1, v3

    int-to-float v6, v6

    int-to-float v7, v2

    int-to-float v1, v1

    add-int/2addr v2, v4

    int-to-float v2, v2

    invoke-virtual {v5, v6, v7, v1, v2}, Lcom/oplus/camera/ui/preview/r$b;->a(FFFF)V

    .line 254
    iget-object v5, v0, Lcom/oplus/camera/ui/preview/r;->f:Landroid/graphics/PointF;

    int-to-float v3, v3

    const v8, 0x3eaaaaab

    mul-float v9, v3, v8

    add-float/2addr v9, v1

    int-to-float v4, v4

    const v10, 0x3f2aaaab

    mul-float v11, v4, v10

    add-float/2addr v11, v7

    invoke-virtual {v5, v9, v11}, Landroid/graphics/PointF;->set(FF)V

    .line 255
    iget-object v5, v0, Lcom/oplus/camera/ui/preview/r;->f:Landroid/graphics/PointF;

    iget v5, v5, Landroid/graphics/PointF;->x:F

    sub-float v5, v1, v5

    float-to-double v11, v5

    const-wide/high16 v13, 0x4000000000000000L    # 2.0

    invoke-static {v11, v12, v13, v14}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v11

    iget-object v5, v0, Lcom/oplus/camera/ui/preview/r;->f:Landroid/graphics/PointF;

    iget v5, v5, Landroid/graphics/PointF;->y:F

    sub-float/2addr v5, v2

    float-to-double v13, v5

    div-double/2addr v11, v13

    iget-object v2, v0, Lcom/oplus/camera/ui/preview/r;->f:Landroid/graphics/PointF;

    iget v2, v2, Landroid/graphics/PointF;->y:F

    float-to-double v13, v2

    add-double/2addr v11, v13

    .line 256
    iget-object v2, v0, Lcom/oplus/camera/ui/preview/r;->e:Ljava/util/List;

    const/4 v5, 0x1

    invoke-interface {v2, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/oplus/camera/ui/preview/r$b;

    double-to-float v5, v11

    iget-object v9, v0, Lcom/oplus/camera/ui/preview/r;->f:Landroid/graphics/PointF;

    iget v9, v9, Landroid/graphics/PointF;->x:F

    iget-object v11, v0, Lcom/oplus/camera/ui/preview/r;->f:Landroid/graphics/PointF;

    iget v11, v11, Landroid/graphics/PointF;->y:F

    invoke-virtual {v2, v1, v5, v9, v11}, Lcom/oplus/camera/ui/preview/r$b;->a(FFFF)V

    .line 257
    iget-object v2, v0, Lcom/oplus/camera/ui/preview/r;->f:Landroid/graphics/PointF;

    mul-float/2addr v3, v10

    add-float/2addr v1, v3

    mul-float/2addr v4, v8

    add-float/2addr v4, v7

    invoke-virtual {v2, v1, v4}, Landroid/graphics/PointF;->set(FF)V

    .line 258
    iget-object v1, v0, Lcom/oplus/camera/ui/preview/r;->f:Landroid/graphics/PointF;

    iget v1, v1, Landroid/graphics/PointF;->x:F

    sub-float v1, v6, v1

    float-to-double v1, v1

    const-wide/high16 v3, 0x4000000000000000L    # 2.0

    invoke-static {v1, v2, v3, v4}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v1

    iget-object v3, v0, Lcom/oplus/camera/ui/preview/r;->f:Landroid/graphics/PointF;

    iget v3, v3, Landroid/graphics/PointF;->y:F

    sub-float/2addr v3, v7

    float-to-double v3, v3

    div-double/2addr v1, v3

    iget-object v3, v0, Lcom/oplus/camera/ui/preview/r;->f:Landroid/graphics/PointF;

    iget v3, v3, Landroid/graphics/PointF;->y:F

    float-to-double v3, v3

    add-double/2addr v1, v3

    .line 259
    iget-object v3, v0, Lcom/oplus/camera/ui/preview/r;->e:Ljava/util/List;

    const/4 v4, 0x2

    invoke-interface {v3, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/oplus/camera/ui/preview/r$b;

    double-to-float v1, v1

    iget-object v2, v0, Lcom/oplus/camera/ui/preview/r;->f:Landroid/graphics/PointF;

    iget v2, v2, Landroid/graphics/PointF;->x:F

    iget-object v0, v0, Lcom/oplus/camera/ui/preview/r;->f:Landroid/graphics/PointF;

    iget v0, v0, Landroid/graphics/PointF;->y:F

    invoke-virtual {v3, v6, v1, v2, v0}, Lcom/oplus/camera/ui/preview/r$b;->a(FFFF)V

    return-void
.end method

.method private c(IIII)V
    .locals 6

    .line 264
    iget-object v0, p0, Lcom/oplus/camera/ui/preview/r;->e:Ljava/util/List;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/oplus/camera/ui/preview/r$b;

    int-to-float v1, p1

    int-to-float v2, p2

    int-to-float v3, p4

    const v4, 0x3eaaaaab

    mul-float v5, v3, v4

    add-float/2addr v5, v2

    add-int/2addr p1, p3

    int-to-float p1, p1

    invoke-virtual {v0, v1, v5, p1, v5}, Lcom/oplus/camera/ui/preview/r$b;->a(FFFF)V

    .line 266
    iget-object v0, p0, Lcom/oplus/camera/ui/preview/r;->e:Ljava/util/List;

    const/4 v5, 0x1

    invoke-interface {v0, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/oplus/camera/ui/preview/r$b;

    const v5, 0x3f2aaaab

    mul-float/2addr v3, v5

    add-float/2addr v3, v2

    invoke-virtual {v0, v1, v3, p1, v3}, Lcom/oplus/camera/ui/preview/r$b;->a(FFFF)V

    .line 268
    iget-object p1, p0, Lcom/oplus/camera/ui/preview/r;->e:Ljava/util/List;

    const/4 v0, 0x2

    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/oplus/camera/ui/preview/r$b;

    int-to-float p3, p3

    mul-float/2addr v4, p3

    add-float/2addr v4, v1

    add-int/2addr p2, p4

    int-to-float p2, p2

    invoke-virtual {p1, v4, v2, v4, p2}, Lcom/oplus/camera/ui/preview/r$b;->a(FFFF)V

    .line 270
    iget-object p0, p0, Lcom/oplus/camera/ui/preview/r;->e:Ljava/util/List;

    const/4 p1, 0x3

    invoke-interface {p0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/oplus/camera/ui/preview/r$b;

    mul-float/2addr p3, v5

    add-float/2addr v1, p3

    invoke-virtual {p0, v1, v2, v1, p2}, Lcom/oplus/camera/ui/preview/r$b;->a(FFFF)V

    return-void
.end method


# virtual methods
.method public a(Ljava/lang/String;)V
    .locals 2

    const/4 v0, 0x0

    if-eqz p1, :cond_1

    const-string v1, "off"

    .line 275
    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_0

    .line 278
    :cond_0
    iput-object p1, p0, Lcom/oplus/camera/ui/preview/r;->d:Ljava/lang/String;

    .line 280
    iget-boolean p1, p0, Lcom/oplus/camera/ui/preview/r;->c:Z

    if-nez p1, :cond_2

    const/4 p1, 0x1

    .line 281
    iput-boolean p1, p0, Lcom/oplus/camera/ui/preview/r;->c:Z

    .line 282
    invoke-virtual {p0, v0}, Lcom/oplus/camera/ui/preview/r;->setVisibility(I)V

    .line 284
    iget-object p1, p0, Lcom/oplus/camera/ui/preview/r;->h:Lcom/oplus/camera/ui/preview/r$a;

    if-eqz p1, :cond_2

    .line 285
    invoke-virtual {p0}, Lcom/oplus/camera/ui/preview/r;->clearAnimation()V

    .line 286
    iget-object p1, p0, Lcom/oplus/camera/ui/preview/r;->h:Lcom/oplus/camera/ui/preview/r$a;

    invoke-virtual {p0, p1}, Lcom/oplus/camera/ui/preview/r;->setAnimation(Landroid/view/animation/Animation;)V

    .line 287
    iget-object p0, p0, Lcom/oplus/camera/ui/preview/r;->h:Lcom/oplus/camera/ui/preview/r$a;

    const/4 p1, 0x0

    const/high16 v0, 0x42ff0000    # 127.5f

    invoke-virtual {p0, p1, v0}, Lcom/oplus/camera/ui/preview/r$a;->a(FF)V

    goto :goto_1

    .line 276
    :cond_1
    :goto_0
    invoke-virtual {p0, v0}, Lcom/oplus/camera/ui/preview/r;->a(Z)V

    :cond_2
    :goto_1
    return-void
.end method

.method public a(Z)V
    .locals 1

    .line 325
    iget-boolean v0, p0, Lcom/oplus/camera/ui/preview/r;->c:Z

    if-eqz v0, :cond_1

    const/4 v0, 0x0

    .line 326
    iput-boolean v0, p0, Lcom/oplus/camera/ui/preview/r;->c:Z

    .line 327
    invoke-virtual {p0}, Lcom/oplus/camera/ui/preview/r;->clearAnimation()V

    if-eqz p1, :cond_0

    .line 330
    iget-object p1, p0, Lcom/oplus/camera/ui/preview/r;->i:Lcom/oplus/camera/ui/preview/r$a;

    invoke-virtual {p0, p1}, Lcom/oplus/camera/ui/preview/r;->setAnimation(Landroid/view/animation/Animation;)V

    .line 331
    iget-object p0, p0, Lcom/oplus/camera/ui/preview/r;->i:Lcom/oplus/camera/ui/preview/r$a;

    const/high16 p1, 0x42ff0000    # 127.5f

    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/oplus/camera/ui/preview/r$a;->a(FF)V

    goto :goto_0

    :cond_0
    const/16 p1, 0x8

    .line 333
    invoke-virtual {p0, p1}, Lcom/oplus/camera/ui/preview/r;->setVisibility(I)V

    :cond_1
    :goto_0
    return-void
.end method

.method protected onDetachedFromWindow()V
    .locals 1

    .line 204
    invoke-super {p0}, Landroid/view/View;->onDetachedFromWindow()V

    .line 206
    iget-object v0, p0, Lcom/oplus/camera/ui/preview/r;->l:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_0

    .line 207
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    const/4 v0, 0x0

    .line 208
    iput-object v0, p0, Lcom/oplus/camera/ui/preview/r;->l:Landroid/graphics/Bitmap;

    :cond_0
    return-void
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 17

    move-object/from16 v0, p0

    .line 125
    invoke-virtual/range {p0 .. p0}, Lcom/oplus/camera/ui/preview/r;->getWidth()I

    move-result v1

    .line 126
    invoke-virtual/range {p0 .. p0}, Lcom/oplus/camera/ui/preview/r;->getHeight()I

    move-result v2

    if-lez v1, :cond_e

    if-gtz v2, :cond_0

    goto/16 :goto_3

    .line 134
    :cond_0
    iget-boolean v3, v0, Lcom/oplus/camera/ui/preview/r;->c:Z

    if-eqz v3, :cond_d

    .line 135
    invoke-direct {v0, v1, v2}, Lcom/oplus/camera/ui/preview/r;->a(II)V

    .line 136
    invoke-direct/range {p0 .. p0}, Lcom/oplus/camera/ui/preview/r;->a()I

    move-result v3

    .line 138
    iget-object v4, v0, Lcom/oplus/camera/ui/preview/r;->d:Ljava/lang/String;

    const/4 v5, -0x1

    invoke-virtual {v4}, Ljava/lang/String;->hashCode()I

    move-result v6

    const v7, -0x3566f50f    # -5014904.5f

    const/4 v8, 0x2

    const/4 v9, 0x0

    const/4 v10, 0x1

    if-eq v6, v7, :cond_3

    const v7, 0x308b46

    if-eq v6, v7, :cond_2

    const v7, 0x59460a08

    if-eq v6, v7, :cond_1

    goto :goto_0

    :cond_1
    const-string v6, "triangle"

    invoke-virtual {v4, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_4

    move v5, v10

    goto :goto_0

    :cond_2
    const-string v6, "grid"

    invoke-virtual {v4, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_4

    move v5, v9

    goto :goto_0

    :cond_3
    const-string v6, "spiral"

    invoke-virtual {v4, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_4

    move v5, v8

    :cond_4
    :goto_0
    if-eqz v5, :cond_9

    if-eq v5, v10, :cond_8

    if-eq v5, v8, :cond_5

    goto :goto_1

    :cond_5
    int-to-float v4, v9

    .line 148
    iget v5, v0, Lcom/oplus/camera/ui/preview/r;->m:F

    add-float v6, v4, v5

    float-to-int v6, v6

    add-float/2addr v4, v5

    float-to-int v4, v4

    .line 150
    invoke-static {v2, v1}, Lcom/oplus/camera/util/Util;->d(II)I

    move-result v5

    if-eq v10, v5, :cond_6

    const/4 v7, 0x5

    if-ne v7, v5, :cond_7

    :cond_6
    int-to-float v1, v1

    .line 154
    iget v5, v0, Lcom/oplus/camera/ui/preview/r;->m:F

    const/high16 v7, 0x40000000    # 2.0f

    mul-float v8, v5, v7

    sub-float/2addr v1, v8

    float-to-int v1, v1

    int-to-float v2, v2

    mul-float/2addr v5, v7

    sub-float/2addr v2, v5

    float-to-int v2, v2

    .line 158
    :cond_7
    invoke-direct {v0, v6, v4, v1, v2}, Lcom/oplus/camera/ui/preview/r;->a(IIII)V

    goto :goto_1

    .line 144
    :cond_8
    invoke-direct {v0, v9, v9, v1, v2}, Lcom/oplus/camera/ui/preview/r;->b(IIII)V

    goto :goto_1

    .line 140
    :cond_9
    invoke-direct {v0, v9, v9, v1, v2}, Lcom/oplus/camera/ui/preview/r;->c(IIII)V

    :goto_1
    if-ge v9, v3, :cond_c

    .line 166
    iget-object v1, v0, Lcom/oplus/camera/ui/preview/r;->e:Ljava/util/List;

    invoke-interface {v1, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/oplus/camera/ui/preview/r$b;

    .line 168
    invoke-static {v1}, Lcom/oplus/camera/ui/preview/r$b;->a(Lcom/oplus/camera/ui/preview/r$b;)I

    move-result v2

    if-nez v2, :cond_a

    .line 169
    iget-object v11, v0, Lcom/oplus/camera/ui/preview/r;->k:Landroid/graphics/Canvas;

    invoke-static {v1}, Lcom/oplus/camera/ui/preview/r$b;->b(Lcom/oplus/camera/ui/preview/r$b;)Landroid/graphics/PointF;

    move-result-object v2

    iget v12, v2, Landroid/graphics/PointF;->x:F

    invoke-static {v1}, Lcom/oplus/camera/ui/preview/r$b;->b(Lcom/oplus/camera/ui/preview/r$b;)Landroid/graphics/PointF;

    move-result-object v2

    iget v13, v2, Landroid/graphics/PointF;->y:F

    invoke-static {v1}, Lcom/oplus/camera/ui/preview/r$b;->c(Lcom/oplus/camera/ui/preview/r$b;)Landroid/graphics/PointF;

    move-result-object v2

    iget v14, v2, Landroid/graphics/PointF;->x:F

    invoke-static {v1}, Lcom/oplus/camera/ui/preview/r$b;->c(Lcom/oplus/camera/ui/preview/r$b;)Landroid/graphics/PointF;

    move-result-object v1

    iget v15, v1, Landroid/graphics/PointF;->y:F

    iget-object v1, v0, Lcom/oplus/camera/ui/preview/r;->a:Landroid/graphics/Paint;

    move-object/from16 v16, v1

    invoke-virtual/range {v11 .. v16}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    goto :goto_2

    .line 170
    :cond_a
    invoke-static {v1}, Lcom/oplus/camera/ui/preview/r$b;->a(Lcom/oplus/camera/ui/preview/r$b;)I

    move-result v2

    if-ne v10, v2, :cond_b

    .line 171
    iget-object v11, v0, Lcom/oplus/camera/ui/preview/r;->k:Landroid/graphics/Canvas;

    invoke-static {v1}, Lcom/oplus/camera/ui/preview/r$b;->d(Lcom/oplus/camera/ui/preview/r$b;)Landroid/graphics/RectF;

    move-result-object v12

    invoke-static {v1}, Lcom/oplus/camera/ui/preview/r$b;->e(Lcom/oplus/camera/ui/preview/r$b;)I

    move-result v2

    int-to-float v13, v2

    invoke-static {v1}, Lcom/oplus/camera/ui/preview/r$b;->f(Lcom/oplus/camera/ui/preview/r$b;)I

    move-result v2

    int-to-float v14, v2

    invoke-static {v1}, Lcom/oplus/camera/ui/preview/r$b;->g(Lcom/oplus/camera/ui/preview/r$b;)Z

    move-result v15

    iget-object v1, v0, Lcom/oplus/camera/ui/preview/r;->a:Landroid/graphics/Paint;

    move-object/from16 v16, v1

    invoke-virtual/range {v11 .. v16}, Landroid/graphics/Canvas;->drawArc(Landroid/graphics/RectF;FFZLandroid/graphics/Paint;)V

    :cond_b
    :goto_2
    add-int/lit8 v9, v9, 0x1

    goto :goto_1

    .line 175
    :cond_c
    iget-object v1, v0, Lcom/oplus/camera/ui/preview/r;->b:Landroid/graphics/Paint;

    iget v2, v0, Lcom/oplus/camera/ui/preview/r;->j:I

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 176
    iget-object v1, v0, Lcom/oplus/camera/ui/preview/r;->l:Landroid/graphics/Bitmap;

    iget-object v0, v0, Lcom/oplus/camera/ui/preview/r;->b:Landroid/graphics/Paint;

    const/4 v2, 0x0

    move-object/from16 v3, p1

    invoke-virtual {v3, v1, v2, v2, v0}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    :cond_d
    return-void

    :cond_e
    :goto_3
    const-string v0, "GuideLineView"

    const-string v1, "onDraw, width or height <= 0"

    .line 129
    invoke-static {v0, v1}, Lcom/oplus/camera/e;->f(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method
