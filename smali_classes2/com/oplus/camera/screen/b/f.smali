.class public Lcom/oplus/camera/screen/b/f;
.super Lcom/oplus/camera/screen/b/g;
.source "FullScreenMode90.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 23
    invoke-direct {p0}, Lcom/oplus/camera/screen/b/g;-><init>()V

    return-void
.end method

.method private a(Landroid/graphics/Rect;)Landroid/graphics/Rect;
    .locals 4

    .line 302
    new-instance p0, Landroid/graphics/Rect;

    iget v0, p1, Landroid/graphics/Rect;->left:I

    invoke-virtual {p1}, Landroid/graphics/Rect;->height()I

    move-result v1

    sub-int/2addr v0, v1

    iget v1, p1, Landroid/graphics/Rect;->top:I

    iget v2, p1, Landroid/graphics/Rect;->left:I

    iget v3, p1, Landroid/graphics/Rect;->top:I

    invoke-virtual {p1}, Landroid/graphics/Rect;->width()I

    move-result p1

    add-int/2addr v3, p1

    invoke-direct {p0, v0, v1, v2, v3}, Landroid/graphics/Rect;-><init>(IIII)V

    return-object p0
.end method

.method private static synthetic a(Landroid/app/Activity;Landroid/view/View;)V
    .locals 0

    const p1, 0x7f0902d6

    .line 57
    invoke-virtual {p0, p1}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object p0

    if-eqz p0, :cond_0

    const/high16 p1, 0x43870000    # 270.0f

    .line 60
    invoke-virtual {p0, p1}, Landroid/view/View;->setRotation(F)V

    :cond_0
    return-void
.end method

.method public static synthetic lambda$a0kXrENQNrWRrcC2PwWBF_Mqk88(Landroid/app/Activity;Landroid/view/View;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/oplus/camera/screen/b/f;->a(Landroid/app/Activity;Landroid/view/View;)V

    return-void
.end method


# virtual methods
.method public a(Landroid/content/Context;)Lcom/oplus/camera/ui/preview/w;
    .locals 0

    .line 315
    invoke-super {p0, p1}, Lcom/oplus/camera/screen/b/g;->a(Landroid/content/Context;)Lcom/oplus/camera/ui/preview/w;

    move-result-object p1

    .line 316
    invoke-virtual {p0}, Lcom/oplus/camera/screen/b/f;->k()I

    move-result p0

    invoke-virtual {p1, p0}, Lcom/oplus/camera/ui/preview/w;->b(I)V

    return-object p1
.end method

.method protected a(Landroid/app/Activity;Lcom/oplus/camera/screen/c;)V
    .locals 5

    .line 99
    invoke-virtual {p1}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    .line 100
    new-instance v0, Lcom/oplus/camera/screen/c;

    const/4 v1, 0x4

    new-array v2, v1, [I

    fill-array-data v2, :array_0

    new-array v1, v1, [I

    const/4 v3, 0x0

    aput v3, v1, v3

    const/4 v4, 0x1

    aput v3, v1, v4

    const v3, 0x7f070caa

    .line 104
    invoke-virtual {p2, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v3

    const/4 v4, 0x2

    aput v3, v1, v4

    const v3, 0x7f070cac

    .line 105
    invoke-virtual {p2, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p2

    const/4 v3, 0x3

    aput p2, v1, v3

    invoke-direct {v0, v2, v1}, Lcom/oplus/camera/screen/c;-><init>([I[I)V

    .line 108
    invoke-super {p0, p1, v0}, Lcom/oplus/camera/screen/b/g;->a(Landroid/app/Activity;Lcom/oplus/camera/screen/c;)V

    return-void

    nop

    :array_0
    .array-data 4
        0xb
        0x0
        0xc
        0x0
    .end array-data
.end method

.method protected a(Landroid/app/Activity;Lcom/oplus/camera/screen/c;Lcom/oplus/camera/screen/c;)V
    .locals 4

    .line 84
    invoke-virtual {p1}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    const p3, 0x7f070183

    .line 85
    invoke-virtual {p2, p3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p2

    .line 87
    new-instance p3, Lcom/oplus/camera/screen/c;

    const/4 v0, 0x2

    new-array v1, v0, [I

    fill-array-data v1, :array_0

    const/4 v2, 0x0

    invoke-direct {p3, v1, v2}, Lcom/oplus/camera/screen/c;-><init>([I[I)V

    .line 88
    new-instance v1, Lcom/oplus/camera/screen/c;

    new-array v3, v0, [I

    fill-array-data v3, :array_1

    invoke-direct {v1, v3, v2}, Lcom/oplus/camera/screen/c;-><init>([I[I)V

    .line 89
    invoke-super {p0, p1, p3, v1}, Lcom/oplus/camera/screen/b/g;->a(Landroid/app/Activity;Lcom/oplus/camera/screen/c;Lcom/oplus/camera/screen/c;)V

    .line 92
    new-instance p1, Lcom/oplus/camera/screen/c;

    new-array p3, v0, [I

    fill-array-data p3, :array_2

    const/4 v1, 0x4

    new-array v1, v1, [I

    const/4 v2, 0x0

    aput v2, v1, v2

    const/4 v3, 0x1

    aput v2, v1, v3

    aput p2, v1, v0

    const/4 p2, 0x3

    aput v2, v1, p2

    invoke-direct {p1, p3, v1}, Lcom/oplus/camera/screen/c;-><init>([I[I)V

    .line 94
    iget-object p0, p0, Lcom/oplus/camera/screen/b/f;->a:Ljava/util/Map;

    const p2, 0x7f0902f0

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    invoke-interface {p0, p2, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void

    nop

    :array_0
    .array-data 4
        0xb
        0x0
    .end array-data

    :array_1
    .array-data 4
        0xb
        0x0
    .end array-data

    :array_2
    .array-data 4
        0xb
        0x0
    .end array-data
.end method

.method protected a(Landroid/app/Activity;Lcom/oplus/camera/screen/c;Lcom/oplus/camera/screen/c;Lcom/oplus/camera/screen/c;)V
    .locals 9

    .line 170
    invoke-virtual {p1}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    const p3, 0x7f070c62

    .line 171
    invoke-virtual {p2, p3}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result p3

    const p4, 0x7f070c61

    .line 172
    invoke-virtual {p2, p4}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result p4

    const v0, 0x7f070c70

    .line 173
    invoke-virtual {p2, v0}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v0

    const/4 v1, 0x4

    .line 174
    new-array v2, v1, [I

    fill-array-data v2, :array_0

    .line 178
    new-instance v3, Lcom/oplus/camera/screen/c;

    new-array v4, v1, [I

    const/4 v5, 0x0

    aput p3, v4, v5

    const/4 v6, 0x1

    aput v5, v4, v6

    const/4 v7, 0x2

    aput v5, v4, v7

    const/4 v8, 0x3

    aput p4, v4, v8

    invoke-direct {v3, v2, v4}, Lcom/oplus/camera/screen/c;-><init>([I[I)V

    .line 179
    new-instance p4, Lcom/oplus/camera/screen/c;

    new-array v4, v1, [I

    aput p3, v4, v5

    aput v5, v4, v6

    aput v5, v4, v7

    aput v0, v4, v8

    invoke-direct {p4, v2, v4}, Lcom/oplus/camera/screen/c;-><init>([I[I)V

    .line 181
    new-array p3, v1, [I

    fill-array-data p3, :array_1

    const v0, 0x7f0704d5

    .line 182
    invoke-virtual {p2, v0}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v0

    const v2, 0x7f0704d4

    .line 183
    invoke-virtual {p2, v2}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result p2

    .line 184
    new-instance v2, Lcom/oplus/camera/screen/c;

    new-array v1, v1, [I

    aput v5, v1, v5

    aput v0, v1, v6

    aput p2, v1, v7

    aput v5, v1, v8

    invoke-direct {v2, p3, v1}, Lcom/oplus/camera/screen/c;-><init>([I[I)V

    .line 186
    invoke-super {p0, p1, v3, p4, v2}, Lcom/oplus/camera/screen/b/g;->a(Landroid/app/Activity;Lcom/oplus/camera/screen/c;Lcom/oplus/camera/screen/c;Lcom/oplus/camera/screen/c;)V

    return-void

    nop

    :array_0
    .array-data 4
        0x9
        0x0
        0xc
        0x0
    .end array-data

    :array_1
    .array-data 4
        0xb
        0x0
        0xa
        0x0
    .end array-data
.end method

.method protected a(Landroid/app/Activity;Lcom/oplus/camera/screen/c;Lcom/oplus/camera/screen/c;Lcom/oplus/camera/screen/c;Lcom/oplus/camera/screen/c;)V
    .locals 8

    .line 33
    new-instance v2, Lcom/oplus/camera/screen/c;

    const/4 p2, 0x2

    new-array p3, p2, [I

    fill-array-data p3, :array_0

    const/4 p4, 0x4

    new-array p5, p4, [I

    fill-array-data p5, :array_1

    invoke-direct {v2, p3, p5}, Lcom/oplus/camera/screen/c;-><init>([I[I)V

    const p3, 0x7f0704d9

    .line 37
    invoke-static {p3}, Lcom/oplus/camera/util/Util;->h(I)F

    move-result p3

    float-to-int p3, p3

    .line 38
    new-instance v3, Lcom/oplus/camera/screen/c;

    new-array p5, p4, [I

    fill-array-data p5, :array_2

    new-array v0, p4, [I

    const/4 v1, 0x0

    aput v1, v0, v1

    const/4 v4, 0x1

    aput v1, v0, v4

    aput p3, v0, p2

    const/4 p3, 0x3

    aput v1, v0, p3

    invoke-direct {v3, p5, v0}, Lcom/oplus/camera/screen/c;-><init>([I[I)V

    const p5, 0x7f0704e7

    .line 43
    invoke-static {p5}, Lcom/oplus/camera/util/Util;->i(I)I

    move-result p5

    const v0, 0x7f0704e6

    .line 44
    invoke-static {v0}, Lcom/oplus/camera/util/Util;->i(I)I

    move-result v0

    .line 45
    new-instance v5, Lcom/oplus/camera/screen/c;

    new-array v6, p4, [I

    fill-array-data v6, :array_3

    new-array v7, p4, [I

    aput v1, v7, v1

    aput p5, v7, v4

    aput v0, v7, p2

    aput v1, v7, p3

    invoke-direct {v5, v6, v7}, Lcom/oplus/camera/screen/c;-><init>([I[I)V

    const p5, 0x7f0704d5

    .line 50
    invoke-static {p5}, Lcom/oplus/camera/util/Util;->i(I)I

    move-result p5

    const v0, 0x7f0704d4

    .line 51
    invoke-static {v0}, Lcom/oplus/camera/util/Util;->i(I)I

    move-result v0

    .line 52
    new-instance v6, Lcom/oplus/camera/screen/c;

    new-array v7, p4, [I

    fill-array-data v7, :array_4

    new-array p4, p4, [I

    aput v1, p4, v1

    aput p5, p4, v4

    aput v0, p4, p2

    aput v1, p4, p3

    invoke-direct {v6, v7, p4}, Lcom/oplus/camera/screen/c;-><init>([I[I)V

    .line 56
    new-instance p2, Lcom/oplus/camera/screen/b/-$$Lambda$f$a0kXrENQNrWRrcC2PwWBF_Mqk88;

    invoke-direct {p2, p1}, Lcom/oplus/camera/screen/b/-$$Lambda$f$a0kXrENQNrWRrcC2PwWBF_Mqk88;-><init>(Landroid/app/Activity;)V

    iput-object p2, v6, Lcom/oplus/camera/screen/c;->f:Lcom/oplus/camera/screen/c$a;

    move-object v0, p0

    move-object v1, p1

    move-object v4, v5

    move-object v5, v6

    .line 64
    invoke-super/range {v0 .. v5}, Lcom/oplus/camera/screen/b/g;->a(Landroid/app/Activity;Lcom/oplus/camera/screen/c;Lcom/oplus/camera/screen/c;Lcom/oplus/camera/screen/c;Lcom/oplus/camera/screen/c;)V

    return-void

    nop

    :array_0
    .array-data 4
        0xb
        0x0
    .end array-data

    :array_1
    .array-data 4
        0x0
        0x0
        0x0
        0x0
    .end array-data

    :array_2
    .array-data 4
        0xb
        0x0
        0xf
        0x0
    .end array-data

    :array_3
    .array-data 4
        0xa
        0x0
        0xb
        0x0
    .end array-data

    :array_4
    .array-data 4
        0xb
        0x0
        0xa
        0x0
    .end array-data
.end method

.method public a(Landroid/view/View;Lcom/oplus/camera/ui/menu/BasicOptionItemList;Landroid/content/Context;I)V
    .locals 5

    .line 242
    invoke-super {p0, p1, p2, p3, p4}, Lcom/oplus/camera/screen/b/g;->a(Landroid/view/View;Lcom/oplus/camera/ui/menu/BasicOptionItemList;Landroid/content/Context;I)V

    .line 244
    invoke-virtual {p3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p3

    const v0, 0x7f070560

    .line 245
    invoke-virtual {p3, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    const v1, 0x7f070556

    .line 246
    invoke-virtual {p3, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    const v2, 0x7f070557

    .line 247
    invoke-virtual {p3, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    mul-int v3, v0, p4

    const/4 v4, 0x1

    sub-int/2addr p4, v4

    mul-int/2addr v2, p4

    add-int/2addr v3, v2

    add-int/2addr v3, v1

    const p4, 0x7f07055f

    .line 249
    invoke-virtual {p3, p4}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p4

    sub-int/2addr p4, v3

    const v1, 0x7f070559

    .line 250
    invoke-virtual {p3, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p3

    if-eqz p1, :cond_0

    .line 253
    iget-object p1, p0, Lcom/oplus/camera/screen/b/f;->h:Landroid/view/ViewGroup;

    if-eqz p1, :cond_0

    .line 254
    new-instance p1, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {p1, v0, v3}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    const/16 v0, 0x9

    .line 255
    invoke-virtual {p1, v0}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 256
    iput p4, p1, Landroid/widget/RelativeLayout$LayoutParams;->topMargin:I

    .line 257
    iput p3, p1, Landroid/widget/RelativeLayout$LayoutParams;->leftMargin:I

    .line 258
    iget-object p3, p0, Lcom/oplus/camera/screen/b/f;->h:Landroid/view/ViewGroup;

    invoke-virtual {p3, p2, p1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 261
    :cond_0
    new-array p1, v4, [Landroid/view/View;

    const/4 p3, 0x0

    aput-object p2, p1, p3

    invoke-virtual {p0, p1}, Lcom/oplus/camera/screen/b/f;->a([Landroid/view/View;)V

    return-void
.end method

.method public a(Lcom/oplus/camera/p$a;II)V
    .locals 3

    .line 362
    invoke-static {}, Lcom/oplus/camera/util/Util;->I()Landroid/util/Size;

    move-result-object p2

    .line 363
    invoke-virtual {p2}, Landroid/util/Size;->getHeight()I

    move-result p3

    invoke-virtual {p2}, Landroid/util/Size;->getWidth()I

    move-result p2

    invoke-virtual {p0, p3, p2}, Lcom/oplus/camera/screen/b/f;->b(II)Landroid/graphics/Rect;

    move-result-object p2

    const p3, 0x7f070999

    .line 364
    invoke-static {p3}, Lcom/oplus/camera/util/Util;->i(I)I

    move-result p3

    const v0, 0x7f0704d7

    .line 365
    invoke-static {v0}, Lcom/oplus/camera/util/Util;->i(I)I

    move-result v0

    const v1, 0x7f0704d6

    .line 366
    invoke-static {v1}, Lcom/oplus/camera/util/Util;->i(I)I

    move-result v1

    iput v1, p1, Lcom/oplus/camera/p$a;->d:I

    const/4 v1, 0x0

    .line 367
    iput v1, p1, Lcom/oplus/camera/p$a;->e:I

    .line 369
    iget v1, p0, Lcom/oplus/camera/screen/b/f;->c:I

    iget v2, p2, Landroid/graphics/Rect;->right:I

    sub-int/2addr v1, v2

    if-le v1, v0, :cond_0

    .line 370
    iget p0, p0, Lcom/oplus/camera/screen/b/f;->c:I

    iget p2, p2, Landroid/graphics/Rect;->right:I

    sub-int/2addr p0, p2

    add-int/2addr p0, p3

    iput p0, p1, Lcom/oplus/camera/p$a;->b:I

    goto :goto_0

    .line 372
    :cond_0
    iput v0, p1, Lcom/oplus/camera/p$a;->b:I

    :goto_0
    return-void
.end method

.method public a(Lcom/oplus/camera/screen/ScreenRelativeLayout;)V
    .locals 0

    .line 26
    invoke-super {p0, p1}, Lcom/oplus/camera/screen/b/g;->a(Lcom/oplus/camera/screen/ScreenRelativeLayout;)V

    const/high16 p0, 0x42b40000    # 90.0f

    .line 27
    invoke-virtual {p1, p0}, Lcom/oplus/camera/screen/ScreenRelativeLayout;->setRotation(F)V

    return-void
.end method

.method public a(Lcom/oplus/camera/screen/b/o$a;Lcom/oplus/camera/screen/b/o$a;Lcom/oplus/camera/screen/b/o$a;)V
    .locals 5

    const/4 p1, 0x2

    .line 231
    new-array v0, p1, [Ljava/lang/Object;

    const/4 v1, 0x0

    invoke-static {v1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v1

    const/4 v2, 0x0

    aput-object v1, v0, v2

    iget v3, p0, Lcom/oplus/camera/screen/b/f;->e:F

    invoke-static {v3}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v3

    const/4 v4, 0x1

    aput-object v3, v0, v4

    invoke-interface {p2, v0}, Lcom/oplus/camera/screen/b/o$a;->call([Ljava/lang/Object;)V

    .line 232
    new-array p1, p1, [Ljava/lang/Object;

    aput-object v1, p1, v2

    iget p0, p0, Lcom/oplus/camera/screen/b/f;->e:F

    invoke-static {p0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p0

    aput-object p0, p1, v4

    invoke-interface {p3, p1}, Lcom/oplus/camera/screen/b/o$a;->call([Ljava/lang/Object;)V

    return-void
.end method

.method public a(Landroid/app/Activity;Landroid/graphics/Rect;)Z
    .locals 0

    .line 292
    invoke-direct {p0, p2}, Lcom/oplus/camera/screen/b/f;->a(Landroid/graphics/Rect;)Landroid/graphics/Rect;

    move-result-object p2

    .line 293
    invoke-super {p0, p1, p2}, Lcom/oplus/camera/screen/b/g;->a(Landroid/app/Activity;Landroid/graphics/Rect;)Z

    move-result p0

    return p0
.end method

.method public a(Landroid/view/View;FF)[F
    .locals 3

    const/4 p0, 0x2

    .line 274
    new-array v0, p0, [F

    .line 275
    new-array p0, p0, [I

    .line 276
    invoke-virtual {p1, p0}, Landroid/view/View;->getLocationOnScreen([I)V

    const/4 v1, 0x1

    .line 277
    aget v2, p0, v1

    int-to-float v2, v2

    sub-float/2addr p3, v2

    const/4 v2, 0x0

    aput p3, v0, v2

    .line 278
    aget p0, p0, v2

    int-to-float p0, p0

    sub-float/2addr p0, p2

    aput p0, v0, v1

    .line 280
    invoke-virtual {p1}, Landroid/view/View;->getPaddingLeft()I

    move-result p0

    .line 281
    invoke-virtual {p1}, Landroid/view/View;->getWidth()I

    move-result p2

    invoke-virtual {p1}, Landroid/view/View;->getPaddingRight()I

    move-result p3

    sub-int/2addr p2, p3

    .line 282
    aget p3, v0, v2

    int-to-float p0, p0

    invoke-static {p3, p0}, Ljava/lang/Math;->max(FF)F

    move-result p0

    int-to-float p2, p2

    invoke-static {p0, p2}, Ljava/lang/Math;->min(FF)F

    move-result p0

    aput p0, v0, v2

    .line 284
    invoke-virtual {p1}, Landroid/view/View;->getPaddingTop()I

    move-result p0

    .line 285
    invoke-virtual {p1}, Landroid/view/View;->getHeight()I

    move-result p2

    invoke-virtual {p1}, Landroid/view/View;->getPaddingBottom()I

    move-result p1

    sub-int/2addr p2, p1

    .line 286
    aget p1, v0, v1

    int-to-float p0, p0

    invoke-static {p1, p0}, Ljava/lang/Math;->max(FF)F

    move-result p0

    int-to-float p1, p2

    invoke-static {p0, p1}, Ljava/lang/Math;->min(FF)F

    move-result p0

    aput p0, v0, v1

    return-object v0
.end method

.method public a(II)[I
    .locals 1

    const/4 p0, 0x2

    .line 306
    new-array p0, p0, [I

    const/4 v0, 0x0

    aput p2, p0, v0

    sget p2, Lcom/oplus/camera/screen/f;->a:I

    sub-int/2addr p2, p1

    const/4 p1, 0x1

    aput p2, p0, p1

    return-object p0
.end method

.method public a(IIII)[I
    .locals 0

    const/4 p0, 0x2

    .line 310
    new-array p0, p0, [I

    sget p4, Lcom/oplus/camera/screen/f;->a:I

    sub-int/2addr p4, p2

    sub-int/2addr p4, p3

    const/4 p2, 0x0

    aput p4, p0, p2

    const/4 p2, 0x1

    aput p1, p0, p2

    return-object p0
.end method

.method public a(Landroid/util/Size;Landroid/util/Size;)[I
    .locals 5

    const/4 v0, 0x4

    .line 322
    new-array v0, v0, [I

    .line 324
    invoke-virtual {p1}, Landroid/util/Size;->getWidth()I

    move-result v1

    int-to-double v1, v1

    invoke-virtual {p1}, Landroid/util/Size;->getHeight()I

    move-result p1

    int-to-double v3, p1

    div-double/2addr v1, v3

    .line 325
    iget p1, p0, Lcom/oplus/camera/screen/b/f;->b:I

    const/4 v3, 0x0

    aput p1, v0, v3

    .line 326
    iget p1, p0, Lcom/oplus/camera/screen/b/f;->b:I

    int-to-double v3, p1

    div-double/2addr v3, v1

    double-to-int p1, v3

    const/4 v1, 0x1

    aput p1, v0, v1

    .line 328
    invoke-virtual {p2}, Landroid/util/Size;->getWidth()I

    move-result p1

    int-to-double v1, p1

    invoke-virtual {p2}, Landroid/util/Size;->getHeight()I

    move-result p1

    int-to-double p1, p1

    div-double/2addr v1, p1

    .line 329
    iget p1, p0, Lcom/oplus/camera/screen/b/f;->b:I

    const/4 p2, 0x2

    aput p1, v0, p2

    .line 330
    iget p0, p0, Lcom/oplus/camera/screen/b/f;->b:I

    int-to-double p0, p0

    div-double/2addr p0, v1

    double-to-int p0, p0

    const/4 p1, 0x3

    aput p0, v0, p1

    return-object v0
.end method

.method public b(I)I
    .locals 0

    const/16 p0, 0x5a

    return p0
.end method

.method public b(II)Landroid/graphics/Rect;
    .locals 2

    .line 337
    invoke-static {}, Lcom/oplus/camera/util/Util;->getScreenHeight()I

    move-result v0

    iput v0, p0, Lcom/oplus/camera/screen/b/f;->b:I

    .line 338
    invoke-static {}, Lcom/oplus/camera/util/Util;->getScreenWidth()I

    move-result v0

    iput v0, p0, Lcom/oplus/camera/screen/b/f;->c:I

    .line 340
    invoke-static {}, Lcom/oplus/camera/util/Util;->getScreenHeight()I

    move-result v0

    int-to-float p2, p2

    int-to-float p1, p1

    div-float/2addr p2, p1

    int-to-float p1, v0

    div-float/2addr p1, p2

    .line 342
    invoke-static {p1}, Ljava/lang/Math;->round(F)I

    move-result p1

    .line 343
    iget p0, p0, Lcom/oplus/camera/screen/b/f;->c:I

    sub-int/2addr p0, p1

    div-int/lit8 p0, p0, 0x2

    .line 344
    new-instance p2, Landroid/graphics/Rect;

    add-int/2addr p1, p0

    const/4 v1, 0x0

    invoke-direct {p2, p0, v1, p1, v0}, Landroid/graphics/Rect;-><init>(IIII)V

    return-object p2
.end method

.method protected b(Landroid/app/Activity;Lcom/oplus/camera/screen/c;)V
    .locals 5

    .line 217
    invoke-virtual {p1}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    const v0, 0x7f070582

    .line 218
    invoke-virtual {p2, v0}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v0

    const v1, 0x7f070581

    .line 219
    invoke-virtual {p2, v1}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result p2

    .line 221
    new-instance v1, Lcom/oplus/camera/screen/c;

    const/4 v2, 0x4

    new-array v3, v2, [I

    fill-array-data v3, :array_0

    new-array v2, v2, [I

    const/4 v4, 0x0

    aput p2, v2, v4

    const/4 p2, 0x1

    aput v0, v2, p2

    const/4 p2, 0x2

    aput v4, v2, p2

    const/4 p2, 0x3

    aput v4, v2, p2

    invoke-direct {v1, v3, v2}, Lcom/oplus/camera/screen/c;-><init>([I[I)V

    .line 226
    invoke-super {p0, p1, v1}, Lcom/oplus/camera/screen/b/g;->b(Landroid/app/Activity;Lcom/oplus/camera/screen/c;)V

    return-void

    nop

    :array_0
    .array-data 4
        0x9
        0x0
        0xa
        0x0
    .end array-data
.end method

.method protected b(Landroid/app/Activity;Lcom/oplus/camera/screen/c;Lcom/oplus/camera/screen/c;)V
    .locals 2

    .line 191
    invoke-virtual {p1}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    const/4 v0, 0x2

    .line 192
    new-array v0, v0, [I

    fill-array-data v0, :array_0

    const v1, 0x7f070be7

    .line 193
    invoke-virtual {p2, v1}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    const v1, 0x7f070be6

    .line 194
    invoke-virtual {p2, v1}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    .line 196
    new-instance p2, Lcom/oplus/camera/screen/c;

    const/4 v1, 0x4

    new-array v1, v1, [I

    fill-array-data v1, :array_1

    invoke-direct {p2, v0, v1}, Lcom/oplus/camera/screen/c;-><init>([I[I)V

    .line 198
    invoke-super {p0, p1, p2, p3}, Lcom/oplus/camera/screen/b/g;->b(Landroid/app/Activity;Lcom/oplus/camera/screen/c;Lcom/oplus/camera/screen/c;)V

    return-void

    nop

    :array_0
    .array-data 4
        0x14
        0x0
    .end array-data

    :array_1
    .array-data 4
        0x0
        0x0
        0x0
        0x0
    .end array-data
.end method

.method public b(Landroid/app/Activity;Landroid/graphics/Rect;)Z
    .locals 0

    .line 297
    invoke-direct {p0, p2}, Lcom/oplus/camera/screen/b/f;->a(Landroid/graphics/Rect;)Landroid/graphics/Rect;

    move-result-object p2

    .line 298
    invoke-super {p0, p1, p2}, Lcom/oplus/camera/screen/b/g;->b(Landroid/app/Activity;Landroid/graphics/Rect;)Z

    move-result p0

    return p0
.end method

.method public c()Ljava/util/ArrayList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 349
    invoke-super {p0}, Lcom/oplus/camera/screen/b/g;->c()Ljava/util/ArrayList;

    move-result-object p0

    const-string v0, "panorama"

    .line 350
    invoke-virtual {p0, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-object p0
.end method

.method protected c(Landroid/app/Activity;Lcom/oplus/camera/screen/c;)V
    .locals 7

    .line 69
    invoke-virtual {p1}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    const v0, 0x7f070d7b

    .line 71
    invoke-virtual {p2, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    const v1, 0x7f070d87

    .line 72
    invoke-virtual {p2, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p2

    .line 74
    new-instance v1, Lcom/oplus/camera/screen/c;

    const/4 v2, 0x4

    new-array v3, v2, [I

    fill-array-data v3, :array_0

    new-array v2, v2, [I

    neg-int v4, v0

    const/4 v5, 0x2

    div-int/2addr v4, v5

    const/4 v6, 0x0

    aput v4, v2, v6

    const/4 v4, 0x1

    aput v6, v2, v4

    aput v6, v2, v5

    div-int/2addr v0, v5

    add-int/2addr p2, v0

    const/4 v0, 0x3

    aput p2, v2, v0

    invoke-direct {v1, v3, v2}, Lcom/oplus/camera/screen/c;-><init>([I[I)V

    const/16 p2, 0x5a

    .line 78
    iput p2, v1, Lcom/oplus/camera/screen/c;->d:I

    .line 79
    invoke-super {p0, p1, v1}, Lcom/oplus/camera/screen/b/g;->c(Landroid/app/Activity;Lcom/oplus/camera/screen/c;)V

    return-void

    nop

    :array_0
    .array-data 4
        0x9
        0x0
        0xc
        0x0
    .end array-data
.end method

.method protected c(Landroid/app/Activity;Lcom/oplus/camera/screen/c;Lcom/oplus/camera/screen/c;)V
    .locals 9

    .line 127
    invoke-virtual {p1}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    const/4 p3, 0x4

    .line 128
    new-array v0, p3, [I

    fill-array-data v0, :array_0

    const v1, 0x7f070535

    .line 129
    invoke-virtual {p2, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    const v2, 0x7f070536

    .line 130
    invoke-virtual {p2, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    const v3, 0x7f070513

    .line 131
    invoke-virtual {p2, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v3

    const v4, 0x7f070514

    .line 132
    invoke-virtual {p2, v4}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p2

    .line 133
    new-instance v4, Lcom/oplus/camera/screen/c;

    new-array v5, p3, [I

    const/4 v6, 0x0

    aput v6, v5, v6

    const/4 v7, 0x1

    aput v1, v5, v7

    const/4 v1, 0x2

    aput v2, v5, v1

    const/4 v2, 0x3

    aput v6, v5, v2

    invoke-direct {v4, v0, v5}, Lcom/oplus/camera/screen/c;-><init>([I[I)V

    const/16 v5, 0x5a

    .line 134
    iput v5, v4, Lcom/oplus/camera/screen/c;->d:I

    .line 135
    new-instance v8, Lcom/oplus/camera/screen/c;

    new-array p3, p3, [I

    aput v6, p3, v6

    aput v3, p3, v7

    aput p2, p3, v1

    aput v6, p3, v2

    invoke-direct {v8, v0, p3}, Lcom/oplus/camera/screen/c;-><init>([I[I)V

    .line 136
    iput v5, v8, Lcom/oplus/camera/screen/c;->d:I

    .line 137
    invoke-super {p0, p1, v4, v8}, Lcom/oplus/camera/screen/b/g;->c(Landroid/app/Activity;Lcom/oplus/camera/screen/c;Lcom/oplus/camera/screen/c;)V

    return-void

    :array_0
    .array-data 4
        0xb
        0x0
        0xa
        0x0
    .end array-data
.end method

.method protected d(Landroid/app/Activity;Lcom/oplus/camera/screen/c;)V
    .locals 4

    .line 142
    invoke-virtual {p1}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    const v0, 0x7f070c71

    .line 143
    invoke-virtual {p2, v0}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v0

    const v1, 0x7f070c70

    .line 144
    invoke-virtual {p2, v1}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result p2

    const/4 v1, 0x4

    .line 145
    new-array v2, v1, [I

    fill-array-data v2, :array_0

    .line 149
    new-array v1, v1, [I

    const/4 v3, 0x0

    aput v0, v1, v3

    const/4 v0, 0x1

    aput v3, v1, v0

    const/4 v0, 0x2

    aput v3, v1, v0

    const/4 v0, 0x3

    aput p2, v1, v0

    .line 150
    new-instance p2, Lcom/oplus/camera/screen/c;

    invoke-direct {p2, v2, v1}, Lcom/oplus/camera/screen/c;-><init>([I[I)V

    .line 151
    invoke-super {p0, p1, p2}, Lcom/oplus/camera/screen/b/g;->d(Landroid/app/Activity;Lcom/oplus/camera/screen/c;)V

    return-void

    nop

    :array_0
    .array-data 4
        0x9
        0x0
        0xc
        0x0
    .end array-data
.end method

.method protected e(Landroid/app/Activity;Lcom/oplus/camera/screen/c;)V
    .locals 4

    .line 156
    invoke-virtual {p1}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    const v0, 0x7f070c62

    .line 157
    invoke-virtual {p2, v0}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v0

    const v1, 0x7f070c61

    .line 158
    invoke-virtual {p2, v1}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result p2

    const/4 v1, 0x4

    .line 159
    new-array v2, v1, [I

    fill-array-data v2, :array_0

    .line 163
    new-array v1, v1, [I

    const/4 v3, 0x0

    aput v0, v1, v3

    const/4 v0, 0x1

    aput v3, v1, v0

    const/4 v0, 0x2

    aput v3, v1, v0

    const/4 v0, 0x3

    aput p2, v1, v0

    .line 164
    new-instance p2, Lcom/oplus/camera/screen/c;

    invoke-direct {p2, v2, v1}, Lcom/oplus/camera/screen/c;-><init>([I[I)V

    .line 165
    invoke-super {p0, p1, p2}, Lcom/oplus/camera/screen/b/g;->e(Landroid/app/Activity;Lcom/oplus/camera/screen/c;)V

    return-void

    nop

    :array_0
    .array-data 4
        0x9
        0x0
        0xc
        0x0
    .end array-data
.end method

.method public e(Lcom/oplus/camera/screen/b/o$a;Lcom/oplus/camera/screen/b/o$a;)V
    .locals 0

    const/4 p0, 0x0

    .line 237
    new-array p0, p0, [Ljava/lang/Object;

    invoke-interface {p2, p0}, Lcom/oplus/camera/screen/b/o$a;->call([Ljava/lang/Object;)V

    return-void
.end method

.method protected f(Landroid/app/Activity;Lcom/oplus/camera/screen/c;)V
    .locals 4

    .line 203
    invoke-virtual {p1}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    const v0, 0x7f070c74

    .line 204
    invoke-virtual {p2, v0}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v0

    const v1, 0x7f070c76

    .line 205
    invoke-virtual {p2, v1}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result p2

    const/4 v1, 0x4

    .line 206
    new-array v2, v1, [I

    fill-array-data v2, :array_0

    .line 210
    new-array v1, v1, [I

    const/4 v3, 0x0

    aput v0, v1, v3

    const/4 v0, 0x1

    aput p2, v1, v0

    const/4 p2, 0x2

    aput v3, v1, p2

    const/4 p2, 0x3

    aput v3, v1, p2

    .line 211
    new-instance p2, Lcom/oplus/camera/screen/c;

    invoke-direct {p2, v2, v1}, Lcom/oplus/camera/screen/c;-><init>([I[I)V

    .line 212
    invoke-super {p0, p1, p2}, Lcom/oplus/camera/screen/b/g;->f(Landroid/app/Activity;Lcom/oplus/camera/screen/c;)V

    return-void

    nop

    :array_0
    .array-data 4
        0x14
        0x0
        0xa
        0x0
    .end array-data
.end method

.method public h()Ljava/lang/String;
    .locals 0

    const-string p0, "full90"

    return-object p0
.end method

.method public k()I
    .locals 0

    const/16 p0, 0x5a

    return p0
.end method

.method public m()I
    .locals 0

    const/4 p0, 0x6

    return p0
.end method
