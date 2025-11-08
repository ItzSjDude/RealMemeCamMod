.class public Lcom/oplus/camera/screen/b/e;
.super Lcom/oplus/camera/screen/b/g;
.source "FullScreenMode270.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 30
    invoke-direct {p0}, Lcom/oplus/camera/screen/b/g;-><init>()V

    return-void
.end method

.method private a(Landroid/graphics/Rect;)Landroid/graphics/Rect;
    .locals 4

    .line 388
    new-instance p0, Landroid/graphics/Rect;

    iget v0, p1, Landroid/graphics/Rect;->left:I

    iget v1, p1, Landroid/graphics/Rect;->top:I

    invoke-virtual {p1}, Landroid/graphics/Rect;->width()I

    move-result v2

    sub-int/2addr v1, v2

    iget v2, p1, Landroid/graphics/Rect;->left:I

    invoke-virtual {p1}, Landroid/graphics/Rect;->height()I

    move-result v3

    add-int/2addr v2, v3

    iget p1, p1, Landroid/graphics/Rect;->top:I

    invoke-direct {p0, v0, v1, v2, p1}, Landroid/graphics/Rect;-><init>(IIII)V

    return-object p0
.end method

.method private static synthetic a(Landroid/app/Activity;IIIILandroid/content/res/Resources;Landroid/view/View;)V
    .locals 2

    const p6, 0x7f090299

    .line 261
    invoke-virtual {p0, p6}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object p6

    check-cast p6, Lcom/oplus/camera/ui/menu/setting/CameraSettingMenuPanel;

    .line 262
    invoke-virtual {p6}, Lcom/oplus/camera/ui/menu/setting/CameraSettingMenuPanel;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    const/4 v1, -0x1

    iput v1, v0, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 263
    invoke-virtual {p6}, Lcom/oplus/camera/ui/menu/setting/CameraSettingMenuPanel;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    iput p1, v0, Landroid/view/ViewGroup$LayoutParams;->height:I

    const/4 p1, 0x0

    .line 264
    invoke-virtual {p6, p1}, Lcom/oplus/camera/ui/menu/setting/CameraSettingMenuPanel;->setRotation(F)V

    .line 265
    invoke-virtual {p6, p2}, Lcom/oplus/camera/ui/menu/setting/CameraSettingMenuPanel;->setPaddingLeftRight(I)V

    int-to-float p1, p3

    .line 266
    invoke-virtual {p6, p1}, Lcom/oplus/camera/ui/menu/setting/CameraSettingMenuPanel;->setTranslationY(F)V

    int-to-float p2, p4

    .line 267
    invoke-virtual {p6, p2}, Lcom/oplus/camera/ui/menu/setting/CameraSettingMenuPanel;->setTranslationX(F)V

    .line 268
    new-instance p3, Landroid/graphics/PointF;

    invoke-direct {p3, p2, p1}, Landroid/graphics/PointF;-><init>(FF)V

    const p1, 0x7f09005a

    invoke-virtual {p6, p1, p3}, Lcom/oplus/camera/ui/menu/setting/CameraSettingMenuPanel;->setTag(ILjava/lang/Object;)V

    const p1, 0x7f09029b

    .line 271
    invoke-virtual {p0, p1}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object p0

    check-cast p0, Lcom/oplus/camera/ui/menu/setting/CameraSettingMenuPanel;

    if-eqz p0, :cond_0

    .line 274
    invoke-virtual {p0}, Lcom/oplus/camera/ui/menu/setting/CameraSettingMenuPanel;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p1

    const p2, 0x7f070550

    .line 275
    invoke-virtual {p5, p2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p2

    iput p2, p1, Landroid/view/ViewGroup$LayoutParams;->width:I

    const p1, 0x7f0704ee

    .line 276
    invoke-virtual {p5, p1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p1

    int-to-float p1, p1

    invoke-virtual {p0, p1}, Lcom/oplus/camera/ui/menu/setting/CameraSettingMenuPanel;->setPivotX(F)V

    const p1, 0x7f0704f0

    .line 277
    invoke-virtual {p5, p1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p1

    int-to-float p1, p1

    invoke-virtual {p0, p1}, Lcom/oplus/camera/ui/menu/setting/CameraSettingMenuPanel;->setPivotY(F)V

    const/high16 p1, 0x43870000    # 270.0f

    .line 278
    invoke-virtual {p0, p1}, Lcom/oplus/camera/ui/menu/setting/CameraSettingMenuPanel;->setRotation(F)V

    :cond_0
    return-void
.end method

.method private static synthetic a(Landroid/app/Activity;Landroid/view/View;)V
    .locals 0

    const p1, 0x7f0902d6

    .line 65
    invoke-virtual {p0, p1}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object p0

    if-eqz p0, :cond_0

    const/high16 p1, 0x42b40000    # 90.0f

    .line 68
    invoke-virtual {p0, p1}, Landroid/view/View;->setRotation(F)V

    :cond_0
    return-void
.end method

.method public static synthetic lambda$sfXUhs7JEwsOecDtR1xJfPaCseg(Landroid/app/Activity;IIIILandroid/content/res/Resources;Landroid/view/View;)V
    .locals 0

    invoke-static/range {p0 .. p6}, Lcom/oplus/camera/screen/b/e;->a(Landroid/app/Activity;IIIILandroid/content/res/Resources;Landroid/view/View;)V

    return-void
.end method

.method public static synthetic lambda$zmi065lb-FTXdxWAq552Wn8-gug(Landroid/app/Activity;Landroid/view/View;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/oplus/camera/screen/b/e;->a(Landroid/app/Activity;Landroid/view/View;)V

    return-void
.end method


# virtual methods
.method public a(Landroid/content/Context;)Lcom/oplus/camera/ui/preview/w;
    .locals 0

    .line 401
    invoke-super {p0, p1}, Lcom/oplus/camera/screen/b/g;->a(Landroid/content/Context;)Lcom/oplus/camera/ui/preview/w;

    move-result-object p1

    .line 402
    invoke-virtual {p0}, Lcom/oplus/camera/screen/b/e;->k()I

    move-result p0

    invoke-virtual {p1, p0}, Lcom/oplus/camera/ui/preview/w;->b(I)V

    return-object p1
.end method

.method public a(Landroid/app/Activity;Landroid/view/ViewGroup;)V
    .locals 2

    .line 342
    invoke-virtual {p1}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    .line 344
    new-instance p1, Landroidx/constraintlayout/widget/ConstraintLayout$a;

    const v0, 0x7f070786

    invoke-virtual {p0, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    const v1, 0x7f070783

    .line 345
    invoke-virtual {p0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    invoke-direct {p1, v0, v1}, Landroidx/constraintlayout/widget/ConstraintLayout$a;-><init>(II)V

    const/4 v0, 0x0

    .line 346
    iput v0, p1, Landroidx/constraintlayout/widget/ConstraintLayout$a;->q:I

    .line 347
    iput v0, p1, Landroidx/constraintlayout/widget/ConstraintLayout$a;->k:I

    const v0, 0x7f070781

    .line 348
    invoke-virtual {p0, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p1, Landroidx/constraintlayout/widget/ConstraintLayout$a;->bottomMargin:I

    const v0, 0x7f070785

    .line 349
    invoke-virtual {p0, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p1, Landroidx/constraintlayout/widget/ConstraintLayout$a;->leftMargin:I

    .line 350
    invoke-virtual {p2, p1}, Landroid/view/ViewGroup;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    const/4 p1, 0x1

    .line 351
    invoke-virtual {p2, p1}, Landroid/view/ViewGroup;->setVerticalFadingEdgeEnabled(Z)V

    const p1, 0x7f070782

    .line 352
    invoke-virtual {p0, p1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p0

    invoke-virtual {p2, p0}, Landroid/view/ViewGroup;->setFadingEdgeLength(I)V

    return-void
.end method

.method protected a(Landroid/app/Activity;Lcom/oplus/camera/screen/c;)V
    .locals 5

    .line 107
    invoke-virtual {p1}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    .line 108
    new-instance v0, Lcom/oplus/camera/screen/c;

    const/4 v1, 0x4

    new-array v2, v1, [I

    fill-array-data v2, :array_0

    new-array v1, v1, [I

    const v3, 0x7f070caa

    .line 112
    invoke-virtual {p2, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v3

    const/4 v4, 0x0

    aput v3, v1, v4

    const/4 v3, 0x1

    aput v4, v1, v3

    const/4 v3, 0x2

    aput v4, v1, v3

    const v3, 0x7f070cac

    .line 113
    invoke-virtual {p2, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p2

    const/4 v3, 0x3

    aput p2, v1, v3

    invoke-direct {v0, v2, v1}, Lcom/oplus/camera/screen/c;-><init>([I[I)V

    .line 116
    invoke-super {p0, p1, v0}, Lcom/oplus/camera/screen/b/g;->a(Landroid/app/Activity;Lcom/oplus/camera/screen/c;)V

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

.method protected a(Landroid/app/Activity;Lcom/oplus/camera/screen/c;Lcom/oplus/camera/screen/c;)V
    .locals 4

    .line 92
    invoke-virtual {p1}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    const p3, 0x7f070183

    .line 93
    invoke-virtual {p2, p3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p2

    .line 95
    new-instance p3, Lcom/oplus/camera/screen/c;

    const/4 v0, 0x2

    new-array v1, v0, [I

    fill-array-data v1, :array_0

    const/4 v2, 0x0

    invoke-direct {p3, v1, v2}, Lcom/oplus/camera/screen/c;-><init>([I[I)V

    .line 96
    new-instance v1, Lcom/oplus/camera/screen/c;

    new-array v3, v0, [I

    fill-array-data v3, :array_1

    invoke-direct {v1, v3, v2}, Lcom/oplus/camera/screen/c;-><init>([I[I)V

    .line 97
    invoke-super {p0, p1, p3, v1}, Lcom/oplus/camera/screen/b/g;->a(Landroid/app/Activity;Lcom/oplus/camera/screen/c;Lcom/oplus/camera/screen/c;)V

    .line 100
    new-instance p1, Lcom/oplus/camera/screen/c;

    new-array p3, v0, [I

    fill-array-data p3, :array_2

    const/4 v1, 0x4

    new-array v1, v1, [I

    const/4 v2, 0x0

    aput p2, v1, v2

    const/4 p2, 0x1

    aput v2, v1, p2

    aput v2, v1, v0

    const/4 p2, 0x3

    aput v2, v1, p2

    invoke-direct {p1, p3, v1}, Lcom/oplus/camera/screen/c;-><init>([I[I)V

    .line 102
    iget-object p0, p0, Lcom/oplus/camera/screen/b/e;->a:Ljava/util/Map;

    const p2, 0x7f0902f0

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    invoke-interface {p0, p2, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void

    nop

    :array_0
    .array-data 4
        0x9
        0x0
    .end array-data

    :array_1
    .array-data 4
        0x9
        0x0
    .end array-data

    :array_2
    .array-data 4
        0x9
        0x0
    .end array-data
.end method

.method protected a(Landroid/app/Activity;Lcom/oplus/camera/screen/c;Lcom/oplus/camera/screen/c;Lcom/oplus/camera/screen/c;)V
    .locals 9

    .line 177
    invoke-virtual {p1}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    const p3, 0x7f070c62

    .line 178
    invoke-virtual {p2, p3}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result p3

    const p4, 0x7f070c61

    .line 179
    invoke-virtual {p2, p4}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result p4

    const v0, 0x7f070c70

    .line 180
    invoke-virtual {p2, v0}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v0

    const/4 v1, 0x4

    .line 181
    new-array v2, v1, [I

    fill-array-data v2, :array_0

    .line 186
    new-instance v3, Lcom/oplus/camera/screen/c;

    new-array v4, v1, [I

    const/4 v5, 0x0

    aput v5, v4, v5

    const/4 v6, 0x1

    aput v5, v4, v6

    const/4 v7, 0x2

    aput p3, v4, v7

    const/4 v8, 0x3

    aput p4, v4, v8

    invoke-direct {v3, v2, v4}, Lcom/oplus/camera/screen/c;-><init>([I[I)V

    .line 187
    new-instance p4, Lcom/oplus/camera/screen/c;

    new-array v4, v1, [I

    aput v5, v4, v5

    aput v5, v4, v6

    aput p3, v4, v7

    aput v0, v4, v8

    invoke-direct {p4, v2, v4}, Lcom/oplus/camera/screen/c;-><init>([I[I)V

    .line 188
    new-array p3, v1, [I

    fill-array-data p3, :array_1

    const v0, 0x7f0704d5

    .line 189
    invoke-virtual {p2, v0}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v0

    const v2, 0x7f0704d4

    .line 190
    invoke-virtual {p2, v2}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result p2

    .line 191
    new-instance v2, Lcom/oplus/camera/screen/c;

    new-array v1, v1, [I

    aput p2, v1, v5

    aput v0, v1, v6

    aput v5, v1, v7

    aput v5, v1, v8

    invoke-direct {v2, p3, v1}, Lcom/oplus/camera/screen/c;-><init>([I[I)V

    .line 193
    invoke-super {p0, p1, v3, p4, v2}, Lcom/oplus/camera/screen/b/g;->a(Landroid/app/Activity;Lcom/oplus/camera/screen/c;Lcom/oplus/camera/screen/c;Lcom/oplus/camera/screen/c;)V

    return-void

    nop

    :array_0
    .array-data 4
        0xb
        0x0
        0xc
        0x0
    .end array-data

    :array_1
    .array-data 4
        0x9
        0x0
        0xa
        0x0
    .end array-data
.end method

.method protected a(Landroid/app/Activity;Lcom/oplus/camera/screen/c;Lcom/oplus/camera/screen/c;Lcom/oplus/camera/screen/c;Lcom/oplus/camera/screen/c;)V
    .locals 8

    .line 40
    new-instance v2, Lcom/oplus/camera/screen/c;

    const/4 p2, 0x2

    new-array p3, p2, [I

    fill-array-data p3, :array_0

    const/4 p4, 0x4

    new-array p5, p4, [I

    fill-array-data p5, :array_1

    invoke-direct {v2, p3, p5}, Lcom/oplus/camera/screen/c;-><init>([I[I)V

    const p3, 0x7f0704d9

    .line 44
    invoke-static {p3}, Lcom/oplus/camera/util/Util;->h(I)F

    move-result p3

    float-to-int p3, p3

    .line 45
    new-instance v3, Lcom/oplus/camera/screen/c;

    new-array p5, p4, [I

    fill-array-data p5, :array_2

    new-array v0, p4, [I

    const/4 v1, 0x0

    aput p3, v0, v1

    const/4 p3, 0x1

    aput v1, v0, p3

    aput v1, v0, p2

    const/4 v4, 0x3

    aput v1, v0, v4

    invoke-direct {v3, p5, v0}, Lcom/oplus/camera/screen/c;-><init>([I[I)V

    const p5, 0x7f0704e7

    .line 50
    invoke-static {p5}, Lcom/oplus/camera/util/Util;->i(I)I

    move-result p5

    const v0, 0x7f0704e6

    .line 51
    invoke-static {v0}, Lcom/oplus/camera/util/Util;->i(I)I

    move-result v0

    .line 52
    new-instance v5, Lcom/oplus/camera/screen/c;

    new-array v6, p4, [I

    fill-array-data v6, :array_3

    new-array v7, p4, [I

    aput v0, v7, v1

    aput p5, v7, p3

    aput v1, v7, p2

    aput v1, v7, v4

    invoke-direct {v5, v6, v7}, Lcom/oplus/camera/screen/c;-><init>([I[I)V

    const p5, 0x7f0704d5

    .line 57
    invoke-static {p5}, Lcom/oplus/camera/util/Util;->i(I)I

    move-result p5

    const v0, 0x7f0704d4

    .line 58
    invoke-static {v0}, Lcom/oplus/camera/util/Util;->i(I)I

    move-result v0

    .line 59
    new-instance v6, Lcom/oplus/camera/screen/c;

    new-array v7, p4, [I

    fill-array-data v7, :array_4

    new-array p4, p4, [I

    aput v0, p4, v1

    aput p5, p4, p3

    aput v1, p4, p2

    aput v1, p4, v4

    invoke-direct {v6, v7, p4}, Lcom/oplus/camera/screen/c;-><init>([I[I)V

    .line 64
    new-instance p2, Lcom/oplus/camera/screen/b/-$$Lambda$e$zmi065lb-FTXdxWAq552Wn8-gug;

    invoke-direct {p2, p1}, Lcom/oplus/camera/screen/b/-$$Lambda$e$zmi065lb-FTXdxWAq552Wn8-gug;-><init>(Landroid/app/Activity;)V

    iput-object p2, v6, Lcom/oplus/camera/screen/c;->f:Lcom/oplus/camera/screen/c$a;

    move-object v0, p0

    move-object v1, p1

    move-object v4, v5

    move-object v5, v6

    .line 72
    invoke-super/range {v0 .. v5}, Lcom/oplus/camera/screen/b/g;->a(Landroid/app/Activity;Lcom/oplus/camera/screen/c;Lcom/oplus/camera/screen/c;Lcom/oplus/camera/screen/c;Lcom/oplus/camera/screen/c;)V

    return-void

    nop

    :array_0
    .array-data 4
        0x9
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
        0x9
        0x0
        0xf
        0x0
    .end array-data

    :array_3
    .array-data 4
        0xa
        0x0
        0x9
        0x0
    .end array-data

    :array_4
    .array-data 4
        0x9
        0x0
        0xa
        0x0
    .end array-data
.end method

.method public a(Landroid/app/Activity;Lcom/oplus/camera/ui/menu/setting/CameraSettingMenuPanel;)V
    .locals 1

    .line 301
    invoke-virtual {p1}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    .line 302
    invoke-virtual {p2}, Lcom/oplus/camera/ui/menu/setting/CameraSettingMenuPanel;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p1

    const v0, 0x7f070550

    .line 303
    invoke-virtual {p0, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p1, Landroid/view/ViewGroup$LayoutParams;->width:I

    const p1, 0x7f0704ee

    .line 304
    invoke-virtual {p0, p1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p1

    int-to-float p1, p1

    invoke-virtual {p2, p1}, Lcom/oplus/camera/ui/menu/setting/CameraSettingMenuPanel;->setPivotX(F)V

    const p1, 0x7f0704f0

    .line 305
    invoke-virtual {p0, p1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p0

    int-to-float p0, p0

    invoke-virtual {p2, p0}, Lcom/oplus/camera/ui/menu/setting/CameraSettingMenuPanel;->setPivotY(F)V

    const/high16 p0, 0x43870000    # 270.0f

    .line 306
    invoke-virtual {p2, p0}, Lcom/oplus/camera/ui/menu/setting/CameraSettingMenuPanel;->setRotation(F)V

    return-void
.end method

.method public a(Landroid/view/View;Lcom/oplus/camera/ui/menu/BasicOptionItemList;Landroid/content/Context;I)V
    .locals 5

    .line 312
    invoke-super {p0, p1, p2, p3, p4}, Lcom/oplus/camera/screen/b/g;->a(Landroid/view/View;Lcom/oplus/camera/ui/menu/BasicOptionItemList;Landroid/content/Context;I)V

    .line 314
    invoke-virtual {p3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p3

    const v0, 0x7f070560

    .line 315
    invoke-virtual {p3, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    const v1, 0x7f070556

    .line 316
    invoke-virtual {p3, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    const v2, 0x7f070557

    .line 317
    invoke-virtual {p3, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    mul-int v3, v0, p4

    const/4 v4, 0x1

    sub-int/2addr p4, v4

    mul-int/2addr v2, p4

    add-int/2addr v3, v2

    add-int/2addr v3, v1

    const p4, 0x7f07055f

    .line 319
    invoke-virtual {p3, p4}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p4

    sub-int/2addr p4, v3

    const v1, 0x7f07055a

    .line 320
    invoke-virtual {p3, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p3

    if-eqz p1, :cond_0

    .line 323
    iget-object p1, p0, Lcom/oplus/camera/screen/b/e;->h:Landroid/view/ViewGroup;

    if-eqz p1, :cond_0

    .line 324
    new-instance p1, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {p1, v0, v3}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    const/16 v0, 0x9

    .line 325
    invoke-virtual {p1, v0}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 326
    iput p4, p1, Landroid/widget/RelativeLayout$LayoutParams;->topMargin:I

    .line 327
    iput p3, p1, Landroid/widget/RelativeLayout$LayoutParams;->leftMargin:I

    .line 328
    iget-object p3, p0, Lcom/oplus/camera/screen/b/e;->h:Landroid/view/ViewGroup;

    invoke-virtual {p3, p2, p1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 332
    :cond_0
    new-array p1, v4, [Landroid/view/View;

    const/4 p3, 0x0

    aput-object p2, p1, p3

    invoke-virtual {p0, p1}, Lcom/oplus/camera/screen/b/e;->a([Landroid/view/View;)V

    return-void
.end method

.method public a(Lcom/oplus/camera/p$a;II)V
    .locals 2

    .line 497
    invoke-static {}, Lcom/oplus/camera/util/Util;->I()Landroid/util/Size;

    move-result-object p2

    .line 498
    invoke-virtual {p2}, Landroid/util/Size;->getHeight()I

    move-result p3

    invoke-virtual {p2}, Landroid/util/Size;->getWidth()I

    move-result p2

    invoke-virtual {p0, p3, p2}, Lcom/oplus/camera/screen/b/e;->b(II)Landroid/graphics/Rect;

    move-result-object p2

    const p3, 0x7f070614

    .line 499
    invoke-static {p3}, Lcom/oplus/camera/util/Util;->i(I)I

    move-result p3

    const v0, 0x7f070999

    .line 500
    invoke-static {v0}, Lcom/oplus/camera/util/Util;->i(I)I

    move-result v0

    const v1, 0x7f0704d7

    .line 501
    invoke-static {v1}, Lcom/oplus/camera/util/Util;->i(I)I

    move-result v1

    .line 502
    iget p0, p0, Lcom/oplus/camera/screen/b/e;->b:I

    sub-int/2addr p0, p3

    const p3, 0x7f0704d6

    invoke-static {p3}, Lcom/oplus/camera/util/Util;->i(I)I

    move-result p3

    sub-int/2addr p0, p3

    iput p0, p1, Lcom/oplus/camera/p$a;->d:I

    const/4 p0, 0x0

    .line 503
    iput p0, p1, Lcom/oplus/camera/p$a;->e:I

    .line 505
    iget p0, p2, Landroid/graphics/Rect;->left:I

    if-le p0, v1, :cond_0

    .line 506
    iget p0, p2, Landroid/graphics/Rect;->left:I

    add-int/2addr p0, v0

    iput p0, p1, Lcom/oplus/camera/p$a;->b:I

    goto :goto_0

    .line 508
    :cond_0
    iput v1, p1, Lcom/oplus/camera/p$a;->b:I

    :goto_0
    return-void
.end method

.method public a(Lcom/oplus/camera/screen/ScreenRelativeLayout;)V
    .locals 0

    .line 33
    invoke-super {p0, p1}, Lcom/oplus/camera/screen/b/g;->a(Lcom/oplus/camera/screen/ScreenRelativeLayout;)V

    const/high16 p0, 0x43870000    # 270.0f

    .line 34
    invoke-virtual {p1, p0}, Lcom/oplus/camera/screen/ScreenRelativeLayout;->setRotation(F)V

    return-void
.end method

.method public a(Lcom/oplus/camera/screen/b/o$a;Lcom/oplus/camera/screen/b/o$a;Lcom/oplus/camera/screen/b/o$a;)V
    .locals 5

    const/4 p1, 0x2

    .line 224
    new-array v0, p1, [Ljava/lang/Object;

    const/4 v1, 0x0

    invoke-static {v1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v1

    const/4 v2, 0x0

    aput-object v1, v0, v2

    iget v3, p0, Lcom/oplus/camera/screen/b/e;->e:F

    invoke-static {v3}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v3

    const/4 v4, 0x1

    aput-object v3, v0, v4

    invoke-interface {p2, v0}, Lcom/oplus/camera/screen/b/o$a;->call([Ljava/lang/Object;)V

    .line 225
    new-array p1, p1, [Ljava/lang/Object;

    aput-object v1, p1, v2

    iget p0, p0, Lcom/oplus/camera/screen/b/e;->e:F

    neg-float p0, p0

    invoke-static {p0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p0

    aput-object p0, p1, v4

    invoke-interface {p3, p1}, Lcom/oplus/camera/screen/b/o$a;->call([Ljava/lang/Object;)V

    return-void
.end method

.method public a(Landroid/app/Activity;Landroid/graphics/Rect;)Z
    .locals 0

    .line 378
    invoke-direct {p0, p2}, Lcom/oplus/camera/screen/b/e;->a(Landroid/graphics/Rect;)Landroid/graphics/Rect;

    move-result-object p2

    .line 379
    invoke-super {p0, p1, p2}, Lcom/oplus/camera/screen/b/g;->a(Landroid/app/Activity;Landroid/graphics/Rect;)Z

    move-result p0

    return p0
.end method

.method public a(Landroid/view/View;FF)[F
    .locals 3

    const/4 p0, 0x2

    .line 360
    new-array v0, p0, [F

    .line 361
    new-array p0, p0, [I

    .line 362
    invoke-virtual {p1, p0}, Landroid/view/View;->getLocationOnScreen([I)V

    const/4 v1, 0x1

    .line 363
    aget v2, p0, v1

    int-to-float v2, v2

    sub-float/2addr v2, p3

    const/4 p3, 0x0

    aput v2, v0, p3

    .line 364
    aget p0, p0, p3

    int-to-float p0, p0

    sub-float/2addr p2, p0

    aput p2, v0, v1

    .line 366
    invoke-virtual {p1}, Landroid/view/View;->getPaddingLeft()I

    move-result p0

    .line 367
    invoke-virtual {p1}, Landroid/view/View;->getWidth()I

    move-result p2

    invoke-virtual {p1}, Landroid/view/View;->getPaddingRight()I

    move-result v2

    sub-int/2addr p2, v2

    .line 368
    aget v2, v0, p3

    int-to-float p0, p0

    invoke-static {v2, p0}, Ljava/lang/Math;->max(FF)F

    move-result p0

    int-to-float p2, p2

    invoke-static {p0, p2}, Ljava/lang/Math;->min(FF)F

    move-result p0

    aput p0, v0, p3

    .line 370
    invoke-virtual {p1}, Landroid/view/View;->getPaddingTop()I

    move-result p0

    .line 371
    invoke-virtual {p1}, Landroid/view/View;->getHeight()I

    move-result p2

    invoke-virtual {p1}, Landroid/view/View;->getPaddingBottom()I

    move-result p1

    sub-int/2addr p2, p1

    .line 372
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

    .line 392
    new-array p0, p0, [I

    sget v0, Lcom/oplus/camera/screen/f;->b:I

    sub-int/2addr v0, p2

    const/4 p2, 0x0

    aput v0, p0, p2

    const/4 p2, 0x1

    aput p1, p0, p2

    return-object p0
.end method

.method public a(IIII)[I
    .locals 0

    const/4 p0, 0x2

    .line 396
    new-array p0, p0, [I

    const/4 p4, 0x0

    aput p2, p0, p4

    sget p2, Lcom/oplus/camera/screen/f;->b:I

    sub-int/2addr p2, p1

    sub-int/2addr p2, p3

    const/4 p1, 0x1

    aput p2, p0, p1

    return-object p0
.end method

.method public a(Landroid/util/Size;Landroid/util/Size;)[I
    .locals 5

    const/4 v0, 0x4

    .line 408
    new-array v0, v0, [I

    .line 410
    invoke-virtual {p1}, Landroid/util/Size;->getWidth()I

    move-result v1

    int-to-double v1, v1

    invoke-virtual {p1}, Landroid/util/Size;->getHeight()I

    move-result p1

    int-to-double v3, p1

    div-double/2addr v1, v3

    .line 411
    iget p1, p0, Lcom/oplus/camera/screen/b/e;->b:I

    const/4 v3, 0x0

    aput p1, v0, v3

    .line 412
    iget p1, p0, Lcom/oplus/camera/screen/b/e;->b:I

    int-to-double v3, p1

    div-double/2addr v3, v1

    double-to-int p1, v3

    const/4 v1, 0x1

    aput p1, v0, v1

    .line 414
    invoke-virtual {p2}, Landroid/util/Size;->getWidth()I

    move-result p1

    int-to-double v1, p1

    invoke-virtual {p2}, Landroid/util/Size;->getHeight()I

    move-result p1

    int-to-double p1, p1

    div-double/2addr v1, p1

    .line 415
    iget p1, p0, Lcom/oplus/camera/screen/b/e;->b:I

    const/4 p2, 0x2

    aput p1, v0, p2

    .line 416
    iget p0, p0, Lcom/oplus/camera/screen/b/e;->b:I

    int-to-double p0, p0

    div-double/2addr p0, v1

    double-to-int p0, p0

    const/4 p1, 0x3

    aput p0, v0, p1

    return-object v0
.end method

.method public b(I)I
    .locals 0

    const/16 p0, 0x10e

    return p0
.end method

.method public b(II)Landroid/graphics/Rect;
    .locals 2

    .line 423
    invoke-static {}, Lcom/oplus/camera/util/Util;->getScreenHeight()I

    move-result v0

    iput v0, p0, Lcom/oplus/camera/screen/b/e;->b:I

    .line 424
    invoke-static {}, Lcom/oplus/camera/util/Util;->getScreenWidth()I

    move-result v0

    iput v0, p0, Lcom/oplus/camera/screen/b/e;->c:I

    .line 426
    invoke-static {}, Lcom/oplus/camera/util/Util;->getScreenHeight()I

    move-result v0

    int-to-float p2, p2

    int-to-float p1, p1

    div-float/2addr p2, p1

    int-to-float p1, v0

    div-float/2addr p1, p2

    .line 428
    invoke-static {p1}, Ljava/lang/Math;->round(F)I

    move-result p1

    .line 429
    iget p0, p0, Lcom/oplus/camera/screen/b/e;->c:I

    sub-int/2addr p0, p1

    div-int/lit8 p0, p0, 0x2

    .line 430
    new-instance p2, Landroid/graphics/Rect;

    add-int/2addr p1, p0

    const/4 v1, 0x0

    invoke-direct {p2, p0, v1, p1, v0}, Landroid/graphics/Rect;-><init>(IIII)V

    return-object p2
.end method

.method protected b(Landroid/app/Activity;Lcom/oplus/camera/screen/c;)V
    .locals 6

    .line 287
    invoke-virtual {p1}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    const v0, 0x7f070582

    .line 288
    invoke-virtual {p2, v0}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v0

    const v1, 0x7f070581

    .line 289
    invoke-virtual {p2, v1}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result p2

    .line 291
    new-instance v1, Lcom/oplus/camera/screen/c;

    const/4 v2, 0x4

    new-array v3, v2, [I

    fill-array-data v3, :array_0

    new-array v2, v2, [I

    const/4 v4, 0x0

    aput v4, v2, v4

    const/4 v5, 0x1

    aput v0, v2, v5

    const/4 v0, 0x2

    aput p2, v2, v0

    const/4 p2, 0x3

    aput v4, v2, p2

    invoke-direct {v1, v3, v2}, Lcom/oplus/camera/screen/c;-><init>([I[I)V

    .line 296
    invoke-super {p0, p1, v1}, Lcom/oplus/camera/screen/b/g;->b(Landroid/app/Activity;Lcom/oplus/camera/screen/c;)V

    return-void

    nop

    :array_0
    .array-data 4
        0xb
        0x0
        0xa
        0x0
    .end array-data
.end method

.method protected b(Landroid/app/Activity;Lcom/oplus/camera/screen/c;Lcom/oplus/camera/screen/c;)V
    .locals 2

    .line 198
    invoke-virtual {p1}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    const/4 v0, 0x2

    .line 199
    new-array v0, v0, [I

    fill-array-data v0, :array_0

    const v1, 0x7f070be7

    .line 200
    invoke-virtual {p2, v1}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    const v1, 0x7f070be6

    .line 201
    invoke-virtual {p2, v1}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    .line 203
    new-instance p2, Lcom/oplus/camera/screen/c;

    const/4 v1, 0x4

    new-array v1, v1, [I

    fill-array-data v1, :array_1

    invoke-direct {p2, v0, v1}, Lcom/oplus/camera/screen/c;-><init>([I[I)V

    .line 205
    invoke-super {p0, p1, p2, p3}, Lcom/oplus/camera/screen/b/g;->b(Landroid/app/Activity;Lcom/oplus/camera/screen/c;Lcom/oplus/camera/screen/c;)V

    return-void

    nop

    :array_0
    .array-data 4
        0x15
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

    .line 383
    invoke-direct {p0, p2}, Lcom/oplus/camera/screen/b/e;->a(Landroid/graphics/Rect;)Landroid/graphics/Rect;

    move-result-object p2

    .line 384
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

    .line 435
    invoke-super {p0}, Lcom/oplus/camera/screen/b/g;->c()Ljava/util/ArrayList;

    move-result-object p0

    const-string v0, "panorama"

    .line 436
    invoke-virtual {p0, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-object p0
.end method

.method protected c(Landroid/app/Activity;Lcom/oplus/camera/screen/c;)V
    .locals 6

    .line 77
    invoke-virtual {p1}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    const v0, 0x7f070d7b

    .line 79
    invoke-virtual {p2, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    const v1, 0x7f070d87

    .line 80
    invoke-virtual {p2, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p2

    .line 82
    new-instance v1, Lcom/oplus/camera/screen/c;

    const/4 v2, 0x4

    new-array v3, v2, [I

    fill-array-data v3, :array_0

    new-array v2, v2, [I

    const/4 v4, 0x0

    aput v4, v2, v4

    const/4 v5, 0x1

    aput v4, v2, v5

    neg-int v4, v0

    const/4 v5, 0x2

    div-int/2addr v4, v5

    aput v4, v2, v5

    div-int/2addr v0, v5

    add-int/2addr p2, v0

    const/4 v0, 0x3

    aput p2, v2, v0

    invoke-direct {v1, v3, v2}, Lcom/oplus/camera/screen/c;-><init>([I[I)V

    const/16 p2, 0x10e

    .line 86
    iput p2, v1, Lcom/oplus/camera/screen/c;->d:I

    .line 87
    invoke-super {p0, p1, v1}, Lcom/oplus/camera/screen/b/g;->c(Landroid/app/Activity;Lcom/oplus/camera/screen/c;)V

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

.method protected c(Landroid/app/Activity;Lcom/oplus/camera/screen/c;Lcom/oplus/camera/screen/c;)V
    .locals 9

    .line 134
    invoke-virtual {p1}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    const/4 p3, 0x4

    .line 135
    new-array v0, p3, [I

    fill-array-data v0, :array_0

    const v1, 0x7f070535

    .line 136
    invoke-virtual {p2, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    const v2, 0x7f070536

    .line 137
    invoke-virtual {p2, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    const v3, 0x7f070513

    .line 138
    invoke-virtual {p2, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v3

    const v4, 0x7f070514

    .line 139
    invoke-virtual {p2, v4}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p2

    .line 140
    new-instance v4, Lcom/oplus/camera/screen/c;

    new-array v5, p3, [I

    const/4 v6, 0x0

    aput v2, v5, v6

    const/4 v2, 0x1

    aput v6, v5, v2

    const/4 v7, 0x2

    aput v6, v5, v7

    const/4 v8, 0x3

    aput v1, v5, v8

    invoke-direct {v4, v0, v5}, Lcom/oplus/camera/screen/c;-><init>([I[I)V

    const/16 v1, 0x10e

    .line 141
    iput v1, v4, Lcom/oplus/camera/screen/c;->d:I

    .line 142
    new-instance v5, Lcom/oplus/camera/screen/c;

    new-array p3, p3, [I

    aput p2, p3, v6

    aput v6, p3, v2

    aput v6, p3, v7

    aput v3, p3, v8

    invoke-direct {v5, v0, p3}, Lcom/oplus/camera/screen/c;-><init>([I[I)V

    .line 143
    iput v1, v5, Lcom/oplus/camera/screen/c;->d:I

    .line 144
    invoke-super {p0, p1, v4, v5}, Lcom/oplus/camera/screen/b/g;->c(Landroid/app/Activity;Lcom/oplus/camera/screen/c;Lcom/oplus/camera/screen/c;)V

    return-void

    :array_0
    .array-data 4
        0x14
        0x0
        0xc
        0x0
    .end array-data
.end method

.method public d()Landroid/widget/RelativeLayout$LayoutParams;
    .locals 3

    .line 448
    invoke-static {}, Lcom/oplus/camera/MyApplication;->d()Landroid/content/Context;

    move-result-object p0

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    const v0, 0x7f070cd4

    .line 449
    invoke-virtual {p0, v0}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v0

    .line 450
    new-instance v1, Landroid/widget/RelativeLayout$LayoutParams;

    const/4 v2, -0x2

    invoke-direct {v1, v0, v2}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    const/16 v0, 0xb

    .line 451
    invoke-virtual {v1, v0}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    const/16 v0, 0xa

    .line 452
    invoke-virtual {v1, v0}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    const v0, 0x7f070582

    .line 453
    invoke-virtual {p0, v0}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v0

    iput v0, v1, Landroid/widget/RelativeLayout$LayoutParams;->topMargin:I

    const v0, 0x7f070581

    .line 454
    invoke-virtual {p0, v0}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result p0

    iput p0, v1, Landroid/widget/RelativeLayout$LayoutParams;->rightMargin:I

    return-object v1
.end method

.method protected d(Landroid/app/Activity;Lcom/oplus/camera/screen/c;)V
    .locals 5

    .line 149
    invoke-virtual {p1}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    const v0, 0x7f070c71

    .line 150
    invoke-virtual {p2, v0}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v0

    const v1, 0x7f070c70

    .line 151
    invoke-virtual {p2, v1}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result p2

    const/4 v1, 0x4

    .line 152
    new-array v2, v1, [I

    fill-array-data v2, :array_0

    .line 156
    new-array v1, v1, [I

    const/4 v3, 0x0

    aput v3, v1, v3

    const/4 v4, 0x1

    aput v3, v1, v4

    const/4 v3, 0x2

    aput v0, v1, v3

    const/4 v0, 0x3

    aput p2, v1, v0

    .line 157
    new-instance p2, Lcom/oplus/camera/screen/c;

    invoke-direct {p2, v2, v1}, Lcom/oplus/camera/screen/c;-><init>([I[I)V

    .line 158
    invoke-super {p0, p1, p2}, Lcom/oplus/camera/screen/b/g;->d(Landroid/app/Activity;Lcom/oplus/camera/screen/c;)V

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

.method public e()Landroid/widget/RelativeLayout$LayoutParams;
    .locals 2

    .line 461
    new-instance p0, Landroid/widget/RelativeLayout$LayoutParams;

    const/4 v0, -0x2

    const/4 v1, -0x1

    invoke-direct {p0, v0, v1}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    const/16 v0, 0x9

    .line 463
    invoke-virtual {p0, v0}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    return-object p0
.end method

.method protected e(Landroid/app/Activity;Lcom/oplus/camera/screen/c;)V
    .locals 5

    .line 163
    invoke-virtual {p1}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    const v0, 0x7f070c62

    .line 164
    invoke-virtual {p2, v0}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v0

    const v1, 0x7f070c61

    .line 165
    invoke-virtual {p2, v1}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result p2

    const/4 v1, 0x4

    .line 166
    new-array v2, v1, [I

    fill-array-data v2, :array_0

    .line 170
    new-array v1, v1, [I

    const/4 v3, 0x0

    aput v3, v1, v3

    const/4 v4, 0x1

    aput v3, v1, v4

    const/4 v3, 0x2

    aput v0, v1, v3

    const/4 v0, 0x3

    aput p2, v1, v0

    .line 171
    new-instance p2, Lcom/oplus/camera/screen/c;

    invoke-direct {p2, v2, v1}, Lcom/oplus/camera/screen/c;-><init>([I[I)V

    .line 172
    invoke-super {p0, p1, p2}, Lcom/oplus/camera/screen/b/g;->e(Landroid/app/Activity;Lcom/oplus/camera/screen/c;)V

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

.method public e(Lcom/oplus/camera/screen/b/o$a;Lcom/oplus/camera/screen/b/o$a;)V
    .locals 0

    const/4 p0, 0x0

    .line 230
    new-array p0, p0, [Ljava/lang/Object;

    invoke-interface {p2, p0}, Lcom/oplus/camera/screen/b/o$a;->call([Ljava/lang/Object;)V

    return-void
.end method

.method public f()Landroid/widget/RelativeLayout$LayoutParams;
    .locals 2

    .line 470
    new-instance p0, Landroid/widget/RelativeLayout$LayoutParams;

    const v0, 0x7f0704dd

    .line 471
    invoke-static {v0}, Lcom/oplus/camera/util/Util;->i(I)I

    move-result v0

    const/4 v1, -0x2

    invoke-direct {p0, v0, v1}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    const/16 v0, 0x9

    .line 473
    invoke-virtual {p0, v0}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    const/16 v0, 0xf

    .line 474
    invoke-virtual {p0, v0}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    const v0, 0x7f0704d9

    .line 475
    invoke-static {v0}, Lcom/oplus/camera/util/Util;->i(I)I

    move-result v0

    iput v0, p0, Landroid/widget/RelativeLayout$LayoutParams;->leftMargin:I

    return-object p0
.end method

.method protected f(Landroid/app/Activity;)V
    .locals 15

    .line 234
    invoke-static {}, Lcom/oplus/camera/util/Util;->l()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    const v0, 0x7f070554

    .line 235
    invoke-virtual {v7, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    const v1, 0x7f070568

    .line 236
    invoke-virtual {v7, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    const v2, 0x7f070553

    .line 237
    invoke-virtual {v7, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    const v3, 0x7f07075b

    .line 238
    invoke-virtual {v7, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v3

    const v4, 0x7f0704d2

    .line 239
    invoke-virtual {v7, v4}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v4

    const v5, 0x7f070566

    .line 240
    invoke-virtual {v7, v5}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v5

    const v6, 0x7f070564

    .line 241
    invoke-virtual {v7, v6}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v6

    const v8, 0x7f0704cb

    .line 242
    invoke-virtual {v7, v8}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v8

    const v9, 0x7f0704cd

    .line 243
    invoke-virtual {v7, v9}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v9

    .line 246
    new-instance v10, Lcom/oplus/camera/screen/c;

    const/4 v11, 0x4

    new-array v12, v11, [I

    fill-array-data v12, :array_0

    new-array v11, v11, [I

    const/4 v13, 0x0

    aput v13, v11, v13

    const/4 v14, 0x1

    aput v5, v11, v14

    const/4 v5, 0x2

    aput v6, v11, v5

    const/4 v6, 0x3

    aput v13, v11, v6

    invoke-direct {v10, v12, v11}, Lcom/oplus/camera/screen/c;-><init>([I[I)V

    const/16 v6, 0x5a

    .line 253
    iput v6, v10, Lcom/oplus/camera/screen/c;->d:I

    .line 254
    new-array v6, v5, [I

    aput v2, v6, v13

    aput v2, v6, v14

    iput-object v6, v10, Lcom/oplus/camera/screen/c;->e:[I

    .line 257
    new-array v2, v5, [I

    aput v0, v2, v13

    aput v1, v2, v14

    iput-object v2, v10, Lcom/oplus/camera/screen/c;->c:[I

    .line 260
    new-instance v0, Lcom/oplus/camera/screen/b/-$$Lambda$e$sfXUhs7JEwsOecDtR1xJfPaCseg;

    move-object v1, v0

    move-object/from16 v2, p1

    move v5, v9

    move v6, v8

    invoke-direct/range {v1 .. v7}, Lcom/oplus/camera/screen/b/-$$Lambda$e$sfXUhs7JEwsOecDtR1xJfPaCseg;-><init>(Landroid/app/Activity;IIIILandroid/content/res/Resources;)V

    iput-object v0, v10, Lcom/oplus/camera/screen/c;->f:Lcom/oplus/camera/screen/c$a;

    move-object v0, p0

    .line 282
    iget-object v0, v0, Lcom/oplus/camera/screen/b/e;->a:Ljava/util/Map;

    const v1, 0x7f09029a

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1, v10}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void

    :array_0
    .array-data 4
        0xb
        0x0
        0xa
        0x0
    .end array-data
.end method

.method protected f(Landroid/app/Activity;Lcom/oplus/camera/screen/c;)V
    .locals 5

    .line 210
    invoke-virtual {p1}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    const v0, 0x7f070c74

    .line 211
    invoke-virtual {p2, v0}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v0

    const v1, 0x7f070c76

    .line 212
    invoke-virtual {p2, v1}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result p2

    const/4 v1, 0x4

    .line 213
    new-array v2, v1, [I

    fill-array-data v2, :array_0

    .line 217
    new-array v1, v1, [I

    const/4 v3, 0x0

    aput v3, v1, v3

    const/4 v4, 0x1

    aput p2, v1, v4

    const/4 p2, 0x2

    aput v0, v1, p2

    const/4 p2, 0x3

    aput v3, v1, p2

    .line 218
    new-instance p2, Lcom/oplus/camera/screen/c;

    invoke-direct {p2, v2, v1}, Lcom/oplus/camera/screen/c;-><init>([I[I)V

    .line 219
    invoke-super {p0, p1, p2}, Lcom/oplus/camera/screen/b/g;->f(Landroid/app/Activity;Lcom/oplus/camera/screen/c;)V

    return-void

    nop

    :array_0
    .array-data 4
        0xb
        0x0
        0xa
        0x0
    .end array-data
.end method

.method public g()Landroid/widget/RelativeLayout$LayoutParams;
    .locals 4

    const p0, 0x7f0704e8

    .line 482
    invoke-static {p0}, Lcom/oplus/camera/util/Util;->i(I)I

    move-result p0

    const v0, 0x7f0704e5

    .line 483
    invoke-static {v0}, Lcom/oplus/camera/util/Util;->i(I)I

    move-result v0

    const v1, 0x7f0704e7

    .line 484
    invoke-static {v1}, Lcom/oplus/camera/util/Util;->i(I)I

    move-result v1

    const v2, 0x7f0704e6

    .line 485
    invoke-static {v2}, Lcom/oplus/camera/util/Util;->i(I)I

    move-result v2

    .line 486
    new-instance v3, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v3, p0, v0}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    const/16 p0, 0xa

    .line 487
    invoke-virtual {v3, p0}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    const/16 p0, 0x9

    .line 488
    invoke-virtual {v3, p0}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 489
    iput v1, v3, Landroid/widget/RelativeLayout$LayoutParams;->topMargin:I

    .line 490
    iput v2, v3, Landroid/widget/RelativeLayout$LayoutParams;->leftMargin:I

    return-object v3
.end method

.method public h()Ljava/lang/String;
    .locals 0

    const-string p0, "full270"

    return-object p0
.end method

.method public k()I
    .locals 0

    const/16 p0, 0x10e

    return p0
.end method

.method public m()I
    .locals 0

    const/4 p0, 0x5

    return p0
.end method
