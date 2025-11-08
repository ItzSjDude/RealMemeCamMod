.class public Lcom/oplus/camera/screen/b/j;
.super Lcom/oplus/camera/screen/b/b;
.source "OutScreenMode.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 24
    invoke-direct {p0}, Lcom/oplus/camera/screen/b/b;-><init>()V

    return-void
.end method

.method private static synthetic a(Landroid/app/Activity;ILandroid/view/View;)V
    .locals 4

    const p2, 0x7f0902d5

    .line 316
    invoke-virtual {p0, p2}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object p0

    check-cast p0, Lcom/oplus/camera/professional/p;

    if-nez p0, :cond_0

    return-void

    :cond_0
    const/4 p2, 0x2

    .line 322
    invoke-virtual {p0, p2, p1}, Lcom/oplus/camera/professional/p;->d(II)V

    .line 323
    invoke-virtual {p0}, Lcom/oplus/camera/professional/p;->getChildCount()I

    move-result v0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_2

    .line 326
    invoke-virtual {p0, v1}, Lcom/oplus/camera/professional/p;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    .line 328
    instance-of v3, v2, Lcom/oplus/camera/professional/LevelPanel;

    if-eqz v3, :cond_1

    .line 329
    check-cast v2, Lcom/oplus/camera/professional/LevelPanel;

    invoke-virtual {v2, p2, p1}, Lcom/oplus/camera/professional/LevelPanel;->a(II)V

    .line 330
    invoke-virtual {v2}, Lcom/oplus/camera/professional/LevelPanel;->e()V

    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_2
    return-void
.end method

.method private synthetic a(Landroid/app/Activity;Landroid/view/View;)V
    .locals 0

    const p2, 0x7f09023a

    .line 298
    invoke-virtual {p1, p2}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lcom/oplus/camera/professional/ListProfessionalModeBar;

    if-nez p1, :cond_0

    return-void

    .line 304
    :cond_0
    invoke-virtual {p1, p0}, Lcom/oplus/camera/professional/ListProfessionalModeBar;->b(Lcom/oplus/camera/screen/b/a;)V

    return-void
.end method

.method public static c(I)I
    .locals 2

    .line 102
    invoke-static {}, Lcom/oplus/camera/MyApplication;->d()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    if-eqz p0, :cond_2

    const/4 v1, 0x1

    if-eq p0, v1, :cond_1

    const/4 v1, 0x2

    if-eq p0, v1, :cond_0

    const/4 p0, 0x0

    return p0

    :cond_0
    const p0, 0x7f070510

    .line 106
    invoke-virtual {v0, p0}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result p0

    return p0

    :cond_1
    const p0, 0x7f07050f

    .line 112
    invoke-virtual {v0, p0}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result p0

    return p0

    :cond_2
    const p0, 0x7f070511

    .line 109
    invoke-virtual {v0, p0}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result p0

    return p0
.end method

.method private h(Landroid/app/Activity;)V
    .locals 11

    .line 199
    invoke-virtual {p1}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const v0, 0x7f070477

    .line 201
    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v0

    const/4 v1, 0x4

    .line 202
    new-array v2, v1, [I

    fill-array-data v2, :array_0

    .line 203
    new-array v3, v1, [I

    const v4, 0x7f070bdd

    invoke-virtual {p1, v4}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v5

    const/4 v6, 0x0

    aput v5, v3, v6

    const/4 v5, 0x1

    aput v6, v3, v5

    const/4 v7, 0x2

    aput v6, v3, v7

    const v8, 0x7f070475

    .line 204
    invoke-virtual {p1, v8}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v9

    const/4 v10, 0x3

    aput v9, v3, v10

    .line 205
    new-instance v9, Lcom/oplus/camera/screen/c;

    invoke-direct {v9, v2, v3}, Lcom/oplus/camera/screen/c;-><init>([I[I)V

    .line 206
    new-array v2, v7, [I

    aput v0, v2, v6

    aput v0, v2, v5

    iput-object v2, v9, Lcom/oplus/camera/screen/c;->c:[I

    .line 207
    iget-object v2, p0, Lcom/oplus/camera/screen/b/j;->a:Ljava/util/Map;

    const v3, 0x7f0903c3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v2, v3, v9}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 209
    new-array v2, v1, [I

    fill-array-data v2, :array_1

    .line 210
    new-array v3, v1, [I

    aput v6, v3, v6

    aput v6, v3, v5

    invoke-virtual {p1, v4}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v4

    aput v4, v3, v7

    .line 211
    invoke-virtual {p1, v8}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v4

    aput v4, v3, v10

    .line 212
    new-instance v4, Lcom/oplus/camera/screen/c;

    invoke-direct {v4, v2, v3}, Lcom/oplus/camera/screen/c;-><init>([I[I)V

    .line 213
    new-array v2, v7, [I

    aput v0, v2, v6

    aput v0, v2, v5

    iput-object v2, v4, Lcom/oplus/camera/screen/c;->c:[I

    .line 214
    iget-object v0, p0, Lcom/oplus/camera/screen/b/j;->a:Ljava/util/Map;

    const v2, 0x7f0903c0

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v2, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 216
    new-instance v0, Lcom/oplus/camera/screen/c;

    new-array v2, v7, [I

    fill-array-data v2, :array_2

    new-array v1, v1, [I

    aput v6, v1, v6

    aput v6, v1, v5

    aput v6, v1, v7

    const v3, 0x7f070bf9

    .line 217
    invoke-virtual {p1, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p1

    aput p1, v1, v10

    invoke-direct {v0, v2, v1}, Lcom/oplus/camera/screen/c;-><init>([I[I)V

    .line 218
    new-array p1, v7, [I

    fill-array-data p1, :array_3

    iput-object p1, v0, Lcom/oplus/camera/screen/c;->c:[I

    .line 220
    iget-object p0, p0, Lcom/oplus/camera/screen/b/j;->a:Ljava/util/Map;

    const p1, 0x7f0903b8

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-interface {p0, p1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void

    nop

    :array_0
    .array-data 4
        0x9
        0x0
        0x2
        0x7f0900e5
    .end array-data

    :array_1
    .array-data 4
        0xb
        0x0
        0x2
        0x7f0900e5
    .end array-data

    :array_2
    .array-data 4
        0xc
        0x0
    .end array-data

    :array_3
    .array-data 4
        -0x1
        -0x2
    .end array-data
.end method

.method private i(Landroid/app/Activity;)V
    .locals 17

    move-object/from16 v0, p0

    .line 224
    invoke-virtual/range {p1 .. p1}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f070512

    .line 225
    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v2

    const v3, 0x7f070184

    .line 226
    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v3

    const v4, 0x7f07050e

    .line 227
    invoke-virtual {v1, v4}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v4

    const v5, 0x7f07017e

    .line 228
    invoke-virtual {v1, v5}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v5

    const v6, 0x7f070517

    .line 229
    invoke-virtual {v1, v6}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v6

    const v7, 0x7f070518

    .line 230
    invoke-virtual {v1, v7}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v7

    const v8, 0x7f070bd8

    .line 231
    invoke-virtual {v1, v8}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v8

    const v9, 0x7f070bd0

    .line 232
    invoke-virtual {v1, v9}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v1

    .line 234
    new-instance v9, Lcom/oplus/camera/screen/c;

    const/4 v10, 0x2

    new-array v11, v10, [I

    fill-array-data v11, :array_0

    const/4 v12, 0x4

    new-array v13, v12, [I

    fill-array-data v13, :array_1

    invoke-direct {v9, v11, v13}, Lcom/oplus/camera/screen/c;-><init>([I[I)V

    .line 235
    new-array v11, v10, [I

    const/4 v13, -0x1

    const/4 v14, 0x0

    aput v13, v11, v14

    invoke-static {}, Lcom/oplus/camera/util/Util;->O()I

    move-result v15

    const/16 v16, 0x1

    aput v15, v11, v16

    iput-object v11, v9, Lcom/oplus/camera/screen/c;->c:[I

    .line 236
    iget-object v11, v0, Lcom/oplus/camera/screen/b/j;->a:Ljava/util/Map;

    const v15, 0x7f0900e5

    invoke-static {v15}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v15

    invoke-interface {v11, v15, v9}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 238
    new-instance v9, Lcom/oplus/camera/screen/c;

    new-array v11, v10, [I

    fill-array-data v11, :array_2

    new-array v15, v12, [I

    aput v14, v15, v14

    aput v3, v15, v16

    aput v14, v15, v10

    const/4 v3, 0x3

    aput v14, v15, v3

    invoke-direct {v9, v11, v15}, Lcom/oplus/camera/screen/c;-><init>([I[I)V

    .line 240
    new-array v11, v10, [I

    aput v13, v11, v14

    aput v2, v11, v16

    iput-object v11, v9, Lcom/oplus/camera/screen/c;->c:[I

    .line 241
    iget-object v2, v0, Lcom/oplus/camera/screen/b/j;->a:Ljava/util/Map;

    const v11, 0x7f0900e4

    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    invoke-interface {v2, v11, v9}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 243
    new-instance v2, Lcom/oplus/camera/screen/c;

    new-array v9, v10, [I

    fill-array-data v9, :array_3

    new-array v11, v12, [I

    aput v14, v11, v14

    aput v4, v11, v16

    aput v14, v11, v10

    aput v14, v11, v3

    invoke-direct {v2, v9, v11}, Lcom/oplus/camera/screen/c;-><init>([I[I)V

    .line 245
    iget-object v4, v0, Lcom/oplus/camera/screen/b/j;->a:Ljava/util/Map;

    const v9, 0x7f090338

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-interface {v4, v9, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 247
    new-instance v2, Lcom/oplus/camera/screen/c;

    new-array v4, v10, [I

    fill-array-data v4, :array_4

    new-array v9, v12, [I

    aput v14, v9, v14

    aput v6, v9, v16

    aput v5, v9, v10

    aput v14, v9, v3

    invoke-direct {v2, v4, v9}, Lcom/oplus/camera/screen/c;-><init>([I[I)V

    .line 249
    iget-object v4, v0, Lcom/oplus/camera/screen/b/j;->a:Ljava/util/Map;

    const v9, 0x7f090384

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-interface {v4, v9, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 251
    new-instance v2, Lcom/oplus/camera/screen/c;

    new-array v4, v10, [I

    fill-array-data v4, :array_5

    new-array v9, v12, [I

    aput v14, v9, v14

    aput v6, v9, v16

    aput v5, v9, v10

    aput v14, v9, v3

    invoke-direct {v2, v4, v9}, Lcom/oplus/camera/screen/c;-><init>([I[I)V

    .line 253
    iget-object v4, v0, Lcom/oplus/camera/screen/b/j;->a:Ljava/util/Map;

    const v5, 0x7f090419

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-interface {v4, v5, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 255
    new-instance v2, Lcom/oplus/camera/screen/c;

    new-array v4, v10, [I

    fill-array-data v4, :array_6

    new-array v5, v12, [I

    aput v1, v5, v14

    aput v7, v5, v16

    aput v14, v5, v10

    aput v14, v5, v3

    invoke-direct {v2, v4, v5}, Lcom/oplus/camera/screen/c;-><init>([I[I)V

    .line 257
    iget-object v4, v0, Lcom/oplus/camera/screen/b/j;->a:Ljava/util/Map;

    const v5, 0x7f0903b4

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-interface {v4, v5, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 258
    iget-object v4, v0, Lcom/oplus/camera/screen/b/j;->a:Ljava/util/Map;

    const v5, 0x7f0900a1

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-interface {v4, v5, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 260
    new-instance v2, Lcom/oplus/camera/screen/c;

    new-array v4, v10, [I

    fill-array-data v4, :array_7

    new-array v5, v12, [I

    add-int/2addr v1, v8

    aput v1, v5, v14

    aput v6, v5, v16

    aput v14, v5, v10

    aput v14, v5, v3

    invoke-direct {v2, v4, v5}, Lcom/oplus/camera/screen/c;-><init>([I[I)V

    .line 262
    iget-object v0, v0, Lcom/oplus/camera/screen/b/j;->a:Ljava/util/Map;

    const v1, 0x7f0902e7

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void

    :array_0
    .array-data 4
        0xc
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
        0xa
        0x0
    .end array-data

    :array_3
    .array-data 4
        0xe
        0x0
    .end array-data

    :array_4
    .array-data 4
        0x15
        0x0
    .end array-data

    :array_5
    .array-data 4
        0x15
        0x0
    .end array-data

    :array_6
    .array-data 4
        0x14
        0x0
    .end array-data

    :array_7
    .array-data 4
        0x14
        0x0
    .end array-data
.end method

.method private j(Landroid/app/Activity;)V
    .locals 10

    .line 283
    invoke-virtual {p0}, Lcom/oplus/camera/screen/b/j;->e()Landroid/widget/RelativeLayout$LayoutParams;

    move-result-object v0

    .line 284
    new-instance v1, Lcom/oplus/camera/screen/c;

    const/4 v2, 0x4

    new-array v3, v2, [I

    fill-array-data v3, :array_0

    new-array v4, v2, [I

    const/4 v5, 0x0

    aput v5, v4, v5

    const/4 v6, 0x1

    aput v5, v4, v6

    const/4 v7, 0x2

    aput v5, v4, v7

    iget v8, v0, Landroid/widget/RelativeLayout$LayoutParams;->bottomMargin:I

    const/4 v9, 0x3

    aput v8, v4, v9

    invoke-direct {v1, v3, v4}, Lcom/oplus/camera/screen/c;-><init>([I[I)V

    .line 288
    new-array v3, v7, [I

    iget v4, v0, Landroid/widget/RelativeLayout$LayoutParams;->width:I

    aput v4, v3, v5

    iget v0, v0, Landroid/widget/RelativeLayout$LayoutParams;->height:I

    aput v0, v3, v6

    iput-object v3, v1, Lcom/oplus/camera/screen/c;->c:[I

    .line 289
    iget-object v0, p0, Lcom/oplus/camera/screen/b/j;->a:Ljava/util/Map;

    const v3, 0x7f0902d9

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v0, v3, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 291
    new-instance v0, Lcom/oplus/camera/screen/c;

    new-array v1, v2, [I

    fill-array-data v1, :array_1

    new-array v3, v2, [I

    fill-array-data v3, :array_2

    invoke-direct {v0, v1, v3}, Lcom/oplus/camera/screen/c;-><init>([I[I)V

    const v1, 0x7f0706fc

    .line 295
    invoke-static {v1}, Lcom/oplus/camera/util/Util;->i(I)I

    move-result v1

    .line 296
    new-array v3, v7, [I

    const/4 v4, -0x1

    aput v4, v3, v5

    aput v1, v3, v6

    iput-object v3, v0, Lcom/oplus/camera/screen/c;->c:[I

    .line 297
    new-instance v1, Lcom/oplus/camera/screen/b/-$$Lambda$j$p-74yuUwNzNumCHd4oe_NutrJsY;

    invoke-direct {v1, p0, p1}, Lcom/oplus/camera/screen/b/-$$Lambda$j$p-74yuUwNzNumCHd4oe_NutrJsY;-><init>(Lcom/oplus/camera/screen/b/j;Landroid/app/Activity;)V

    iput-object v1, v0, Lcom/oplus/camera/screen/c;->f:Lcom/oplus/camera/screen/c$a;

    .line 306
    iget-object v1, p0, Lcom/oplus/camera/screen/b/j;->a:Ljava/util/Map;

    const v3, 0x7f09023a

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v1, v3, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 308
    invoke-virtual {p0}, Lcom/oplus/camera/screen/b/j;->g()Landroid/widget/RelativeLayout$LayoutParams;

    move-result-object v0

    .line 309
    new-instance v1, Lcom/oplus/camera/screen/c;

    new-array v3, v2, [I

    fill-array-data v3, :array_3

    new-array v2, v2, [I

    aput v5, v2, v5

    aput v5, v2, v6

    aput v5, v2, v7

    iget v4, v0, Landroid/widget/RelativeLayout$LayoutParams;->bottomMargin:I

    aput v4, v2, v9

    invoke-direct {v1, v3, v2}, Lcom/oplus/camera/screen/c;-><init>([I[I)V

    .line 313
    new-array v2, v7, [I

    iget v3, v0, Landroid/widget/RelativeLayout$LayoutParams;->width:I

    aput v3, v2, v5

    iget v0, v0, Landroid/widget/RelativeLayout$LayoutParams;->height:I

    aput v0, v2, v6

    iput-object v2, v1, Lcom/oplus/camera/screen/c;->c:[I

    .line 314
    invoke-virtual {p0}, Lcom/oplus/camera/screen/b/j;->k()I

    move-result v0

    .line 315
    new-instance v2, Lcom/oplus/camera/screen/b/-$$Lambda$j$P1JFmQ8nHG5Qc63VPLwcK9u2FxM;

    invoke-direct {v2, p1, v0}, Lcom/oplus/camera/screen/b/-$$Lambda$j$P1JFmQ8nHG5Qc63VPLwcK9u2FxM;-><init>(Landroid/app/Activity;I)V

    iput-object v2, v1, Lcom/oplus/camera/screen/c;->f:Lcom/oplus/camera/screen/c$a;

    .line 334
    iget-object p0, p0, Lcom/oplus/camera/screen/b/j;->a:Ljava/util/Map;

    const p1, 0x7f0902d5

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-interface {p0, p1, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void

    nop

    :array_0
    .array-data 4
        0xc
        0x0
        0xe
        0x0
    .end array-data

    :array_1
    .array-data 4
        0xc
        0x0
        0xe
        0x0
    .end array-data

    :array_2
    .array-data 4
        0x0
        0x0
        0x0
        0x0
    .end array-data

    :array_3
    .array-data 4
        0xe
        0x0
        0xc
        0x0
    .end array-data
.end method

.method public static synthetic lambda$P1JFmQ8nHG5Qc63VPLwcK9u2FxM(Landroid/app/Activity;ILandroid/view/View;)V
    .locals 0

    invoke-static {p0, p1, p2}, Lcom/oplus/camera/screen/b/j;->a(Landroid/app/Activity;ILandroid/view/View;)V

    return-void
.end method

.method public static synthetic lambda$p-74yuUwNzNumCHd4oe_NutrJsY(Lcom/oplus/camera/screen/b/j;Landroid/app/Activity;Landroid/view/View;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/oplus/camera/screen/b/j;->a(Landroid/app/Activity;Landroid/view/View;)V

    return-void
.end method


# virtual methods
.method public a(Z)I
    .locals 0

    const/4 p0, 0x1

    return p0
.end method

.method public a(Landroid/util/Size;)Landroid/widget/RelativeLayout$LayoutParams;
    .locals 2

    if-nez p1, :cond_0

    const/4 p0, 0x0

    return-object p0

    .line 67
    :cond_0
    invoke-virtual {p1}, Landroid/util/Size;->getHeight()I

    move-result v0

    .line 68
    invoke-virtual {p1}, Landroid/util/Size;->getWidth()I

    move-result p1

    .line 69
    invoke-virtual {p0, v0, p1}, Lcom/oplus/camera/screen/b/j;->b(II)Landroid/graphics/Rect;

    move-result-object p0

    .line 70
    new-instance p1, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-virtual {p0}, Landroid/graphics/Rect;->width()I

    move-result v0

    invoke-virtual {p0}, Landroid/graphics/Rect;->height()I

    move-result v1

    invoke-direct {p1, v0, v1}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    const/16 v0, 0x14

    .line 71
    invoke-virtual {p1, v0}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    const/16 v0, 0xa

    .line 72
    invoke-virtual {p1, v0}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 73
    iget v0, p0, Landroid/graphics/Rect;->left:I

    iput v0, p1, Landroid/widget/RelativeLayout$LayoutParams;->leftMargin:I

    .line 74
    iget p0, p0, Landroid/graphics/Rect;->top:I

    iput p0, p1, Landroid/widget/RelativeLayout$LayoutParams;->topMargin:I

    return-object p1
.end method

.method protected a(Landroid/app/Activity;Lcom/oplus/camera/screen/c;)V
    .locals 2

    .line 266
    new-instance p2, Lcom/oplus/camera/screen/c;

    const/4 v0, 0x4

    new-array v1, v0, [I

    fill-array-data v1, :array_0

    new-array v0, v0, [I

    fill-array-data v0, :array_1

    invoke-direct {p2, v1, v0}, Lcom/oplus/camera/screen/c;-><init>([I[I)V

    .line 274
    invoke-super {p0, p1, p2}, Lcom/oplus/camera/screen/b/b;->a(Landroid/app/Activity;Lcom/oplus/camera/screen/c;)V

    return-void

    :array_0
    .array-data 4
        0xe
        0x0
        0xa
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

.method public a(Lcom/oplus/camera/screen/b/o$a;Lcom/oplus/camera/screen/b/o$a;)V
    .locals 0

    const/4 p0, 0x0

    .line 32
    new-array p0, p0, [Ljava/lang/Object;

    invoke-interface {p1, p0}, Lcom/oplus/camera/screen/b/o$a;->call([Ljava/lang/Object;)V

    return-void
.end method

.method public a(I)Z
    .locals 0

    const/4 p0, 0x2

    if-ne p0, p1, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public a(Landroid/view/View;FF)[F
    .locals 3

    const/4 p0, 0x2

    .line 44
    new-array v0, p0, [F

    .line 45
    new-array p0, p0, [I

    .line 46
    invoke-virtual {p1, p0}, Landroid/view/View;->getLocationOnScreen([I)V

    const/4 v1, 0x0

    .line 47
    aget v2, p0, v1

    int-to-float v2, v2

    sub-float/2addr p2, v2

    aput p2, v0, v1

    const/4 p2, 0x1

    .line 48
    aget p0, p0, p2

    int-to-float p0, p0

    sub-float/2addr p3, p0

    aput p3, v0, p2

    .line 50
    invoke-virtual {p1}, Landroid/view/View;->getPaddingLeft()I

    move-result p0

    .line 51
    invoke-virtual {p1}, Landroid/view/View;->getWidth()I

    move-result p3

    invoke-virtual {p1}, Landroid/view/View;->getPaddingRight()I

    move-result v2

    sub-int/2addr p3, v2

    .line 52
    aget v2, v0, v1

    int-to-float p0, p0

    invoke-static {v2, p0}, Ljava/lang/Math;->max(FF)F

    move-result p0

    int-to-float p3, p3

    invoke-static {p0, p3}, Ljava/lang/Math;->min(FF)F

    move-result p0

    aput p0, v0, v1

    .line 54
    invoke-virtual {p1}, Landroid/view/View;->getPaddingTop()I

    move-result p0

    .line 55
    invoke-virtual {p1}, Landroid/view/View;->getHeight()I

    move-result p3

    invoke-virtual {p1}, Landroid/view/View;->getPaddingBottom()I

    move-result p1

    sub-int/2addr p3, p1

    .line 56
    aget p1, v0, p2

    int-to-float p0, p0

    invoke-static {p1, p0}, Ljava/lang/Math;->max(FF)F

    move-result p0

    int-to-float p1, p3

    invoke-static {p0, p1}, Ljava/lang/Math;->min(FF)F

    move-result p0

    aput p0, v0, p2

    return-object v0
.end method

.method public a(Landroid/util/Size;Landroid/util/Size;)[I
    .locals 5

    const/4 v0, 0x4

    .line 121
    new-array v0, v0, [I

    .line 123
    invoke-virtual {p1}, Landroid/util/Size;->getWidth()I

    move-result v1

    int-to-float v1, v1

    invoke-virtual {p1}, Landroid/util/Size;->getHeight()I

    move-result v2

    int-to-float v2, v2

    div-float/2addr v1, v2

    .line 124
    invoke-virtual {p1}, Landroid/util/Size;->getWidth()I

    move-result v2

    invoke-virtual {p1}, Landroid/util/Size;->getHeight()I

    move-result p1

    invoke-static {v2, p1}, Lcom/oplus/camera/util/Util;->d(II)I

    move-result p1

    const/4 v2, 0x1

    const/4 v3, 0x0

    const/4 v4, 0x7

    if-ne v4, p1, :cond_0

    .line 127
    iget p1, p0, Lcom/oplus/camera/screen/b/j;->c:I

    aput p1, v0, v3

    .line 128
    iget p1, p0, Lcom/oplus/camera/screen/b/j;->c:I

    int-to-float p1, p1

    div-float/2addr p1, v1

    invoke-static {p1}, Ljava/lang/Math;->round(F)I

    move-result p1

    aput p1, v0, v2

    goto :goto_0

    .line 130
    :cond_0
    iget p1, p0, Lcom/oplus/camera/screen/b/j;->b:I

    int-to-float p1, p1

    mul-float/2addr p1, v1

    float-to-int p1, p1

    aput p1, v0, v3

    .line 131
    iget p1, p0, Lcom/oplus/camera/screen/b/j;->b:I

    aput p1, v0, v2

    .line 134
    :goto_0
    invoke-virtual {p2}, Landroid/util/Size;->getWidth()I

    move-result p1

    int-to-float p1, p1

    invoke-virtual {p2}, Landroid/util/Size;->getHeight()I

    move-result v1

    int-to-float v1, v1

    div-float/2addr p1, v1

    .line 135
    invoke-virtual {p2}, Landroid/util/Size;->getWidth()I

    move-result v1

    invoke-virtual {p2}, Landroid/util/Size;->getHeight()I

    move-result p2

    invoke-static {v1, p2}, Lcom/oplus/camera/util/Util;->d(II)I

    move-result p2

    const/4 v1, 0x3

    const/4 v2, 0x2

    if-ne v4, p2, :cond_1

    .line 138
    iget p2, p0, Lcom/oplus/camera/screen/b/j;->c:I

    aput p2, v0, v2

    .line 139
    iget p0, p0, Lcom/oplus/camera/screen/b/j;->c:I

    int-to-float p0, p0

    div-float/2addr p0, p1

    invoke-static {p0}, Ljava/lang/Math;->round(F)I

    move-result p0

    aput p0, v0, v1

    goto :goto_1

    .line 141
    :cond_1
    iget p2, p0, Lcom/oplus/camera/screen/b/j;->b:I

    int-to-float p2, p2

    mul-float/2addr p2, p1

    float-to-int p1, p2

    aput p1, v0, v2

    .line 142
    iget p0, p0, Lcom/oplus/camera/screen/b/j;->b:I

    aput p0, v0, v1

    :goto_1
    return-object v0
.end method

.method public b(II)Landroid/graphics/Rect;
    .locals 2

    .line 81
    invoke-static {}, Lcom/oplus/camera/util/Util;->getScreenWidth()I

    move-result v0

    iput v0, p0, Lcom/oplus/camera/screen/b/j;->b:I

    .line 82
    invoke-static {}, Lcom/oplus/camera/util/Util;->getScreenHeight()I

    move-result v0

    iput v0, p0, Lcom/oplus/camera/screen/b/j;->c:I

    .line 85
    invoke-static {p2, p1}, Lcom/oplus/camera/util/Util;->d(II)I

    move-result v0

    int-to-float p2, p2

    int-to-float p1, p1

    div-float/2addr p2, p1

    const/4 p1, 0x0

    const/4 v1, 0x7

    if-ne v1, v0, :cond_0

    .line 89
    iget v0, p0, Lcom/oplus/camera/screen/b/j;->c:I

    int-to-float v0, v0

    div-float/2addr v0, p2

    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    move-result p2

    .line 90
    iget v0, p0, Lcom/oplus/camera/screen/b/j;->b:I

    sub-int/2addr v0, p2

    div-int/lit8 v0, v0, 0x2

    .line 91
    new-instance v1, Landroid/graphics/Rect;

    add-int/2addr p2, v0

    iget p0, p0, Lcom/oplus/camera/screen/b/j;->c:I

    invoke-direct {v1, v0, p1, p2, p0}, Landroid/graphics/Rect;-><init>(IIII)V

    move-object v0, v1

    goto :goto_0

    .line 93
    :cond_0
    iget v1, p0, Lcom/oplus/camera/screen/b/j;->b:I

    int-to-float v1, v1

    mul-float/2addr p2, v1

    invoke-static {p2}, Ljava/lang/Math;->round(F)I

    move-result p2

    .line 94
    iget v1, p0, Lcom/oplus/camera/screen/b/j;->c:I

    sub-int/2addr v1, p2

    div-int/lit8 v1, v1, 0x2

    invoke-static {v0}, Lcom/oplus/camera/screen/b/j;->c(I)I

    move-result v0

    add-int/2addr v1, v0

    .line 95
    new-instance v0, Landroid/graphics/Rect;

    iget p0, p0, Lcom/oplus/camera/screen/b/j;->b:I

    add-int/2addr p2, v1

    invoke-direct {v0, p1, v1, p0, p2}, Landroid/graphics/Rect;-><init>(IIII)V

    :goto_0
    return-object v0
.end method

.method protected b(Landroid/app/Activity;)V
    .locals 1

    .line 190
    invoke-super {p0, p1}, Lcom/oplus/camera/screen/b/b;->b(Landroid/app/Activity;)V

    .line 192
    invoke-direct {p0, p1}, Lcom/oplus/camera/screen/b/j;->i(Landroid/app/Activity;)V

    const/4 v0, 0x0

    .line 193
    invoke-virtual {p0, p1, v0}, Lcom/oplus/camera/screen/b/j;->a(Landroid/app/Activity;Lcom/oplus/camera/screen/c;)V

    .line 194
    invoke-direct {p0, p1}, Lcom/oplus/camera/screen/b/j;->j(Landroid/app/Activity;)V

    .line 195
    invoke-direct {p0, p1}, Lcom/oplus/camera/screen/b/j;->h(Landroid/app/Activity;)V

    return-void
.end method

.method public b(Landroid/app/Activity;I)V
    .locals 0

    const/4 p0, 0x0

    const p2, 0x7f090168

    .line 159
    invoke-static {p1, p2, p0}, Lcom/oplus/camera/util/Util;->a(Landroid/app/Activity;IZ)V

    const p2, 0x7f0900a2

    .line 160
    invoke-static {p1, p2, p0}, Lcom/oplus/camera/util/Util;->a(Landroid/app/Activity;IZ)V

    const p2, 0x7f0903c3

    .line 161
    invoke-static {p1, p2, p0}, Lcom/oplus/camera/util/Util;->a(Landroid/app/Activity;IZ)V

    const p2, 0x7f0903c0

    .line 162
    invoke-static {p1, p2, p0}, Lcom/oplus/camera/util/Util;->a(Landroid/app/Activity;IZ)V

    return-void
.end method

.method public b(Lcom/oplus/camera/screen/b/o$a;Lcom/oplus/camera/screen/b/o$a;)V
    .locals 0

    const/4 p0, 0x0

    .line 40
    new-array p0, p0, [Ljava/lang/Object;

    invoke-interface {p2, p0}, Lcom/oplus/camera/screen/b/o$a;->call([Ljava/lang/Object;)V

    return-void
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

    .line 150
    new-instance p0, Ljava/util/ArrayList;

    invoke-direct {p0}, Ljava/util/ArrayList;-><init>()V

    const-string v0, "idPhoto"

    .line 151
    invoke-virtual {p0, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const-string v0, "sticker"

    .line 152
    invoke-virtual {p0, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-object p0
.end method

.method public g()Landroid/widget/RelativeLayout$LayoutParams;
    .locals 3

    const p0, 0x7f070b2f

    .line 172
    invoke-static {p0}, Lcom/oplus/camera/util/Util;->i(I)I

    move-result p0

    const v0, 0x7f0706fc

    .line 173
    invoke-static {v0}, Lcom/oplus/camera/util/Util;->i(I)I

    move-result v0

    .line 174
    new-instance v1, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-static {}, Lcom/oplus/camera/util/Util;->getScreenWidth()I

    move-result v2

    invoke-direct {v1, v2, p0}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    const/4 p0, 0x0

    .line 176
    invoke-virtual {v1, p0, p0, p0, v0}, Landroid/widget/RelativeLayout$LayoutParams;->setMargins(IIII)V

    const/16 p0, 0xe

    .line 177
    invoke-virtual {v1, p0}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    const/16 p0, 0xc

    .line 178
    invoke-virtual {v1, p0}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    return-object v1
.end method

.method public h()Ljava/lang/String;
    .locals 0

    const-string p0, "out"

    return-object p0
.end method

.method public j()I
    .locals 0

    const/4 p0, 0x2

    return p0
.end method
