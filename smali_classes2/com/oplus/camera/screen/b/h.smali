.class public abstract Lcom/oplus/camera/screen/b/h;
.super Lcom/oplus/camera/screen/b/a;
.source "LeftRightScreenMode.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 33
    invoke-direct {p0}, Lcom/oplus/camera/screen/b/a;-><init>()V

    return-void
.end method

.method public static a(F)I
    .locals 7

    .line 412
    invoke-static {}, Lcom/oplus/camera/MyApplication;->d()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    float-to-double v1, p0

    const-wide/high16 v3, 0x3ff0000000000000L    # 1.0

    sub-double v3, v1, v3

    .line 414
    invoke-static {v3, v4}, Ljava/lang/Math;->abs(D)D

    move-result-wide v3

    const-wide v5, 0x3f847ae147ae147bL    # 0.01

    cmpg-double p0, v3, v5

    if-gez p0, :cond_0

    const p0, 0x7f070543

    .line 415
    invoke-virtual {v0, p0}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result p0

    return p0

    :cond_0
    const-wide v3, 0x3ff5555555555555L    # 1.3333333333333333

    sub-double v3, v1, v3

    .line 416
    invoke-static {v3, v4}, Ljava/lang/Math;->abs(D)D

    move-result-wide v3

    cmpg-double p0, v3, v5

    if-gez p0, :cond_1

    const p0, 0x7f070544

    .line 417
    invoke-virtual {v0, p0}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result p0

    return p0

    :cond_1
    const-wide v3, 0x3feddddddddddddeL    # 0.9333333333333333

    sub-double/2addr v1, v3

    .line 418
    invoke-static {v1, v2}, Ljava/lang/Math;->abs(D)D

    move-result-wide v1

    cmpg-double p0, v1, v5

    if-gez p0, :cond_2

    const p0, 0x7f070541

    .line 419
    invoke-virtual {v0, p0}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result p0

    return p0

    :cond_2
    const p0, 0x7f070542

    .line 421
    invoke-virtual {v0, p0}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result p0

    return p0
.end method

.method private synthetic a(Landroid/app/Activity;IIIIILandroid/view/View;)V
    .locals 8

    const p7, 0x7f090435

    .line 248
    invoke-virtual {p1, p7}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    move-object v0, p1

    check-cast v0, Lcom/oplus/camera/ui/preview/af;

    .line 249
    invoke-virtual {v0}, Lcom/oplus/camera/ui/preview/af;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p1

    const/4 p7, -0x1

    iput p7, p1, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 250
    invoke-virtual {v0}, Lcom/oplus/camera/ui/preview/af;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p1

    iput p2, p1, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 251
    iget v1, p0, Lcom/oplus/camera/screen/b/h;->b:I

    .line 252
    invoke-static {}, Lcom/oplus/camera/util/Util;->P()I

    move-result p0

    add-int/2addr p0, p6

    int-to-float p0, p0

    const/high16 p1, 0x40000000    # 2.0f

    div-float v5, p0, p1

    const/high16 v6, 0x3f800000    # 1.0f

    const/4 v7, 0x0

    move v2, p3

    move v3, p4

    move v4, p5

    .line 251
    invoke-virtual/range {v0 .. v7}, Lcom/oplus/camera/ui/preview/af;->a(IIIIFFF)V

    return-void
.end method

.method private static synthetic a(Landroid/app/Activity;ILandroid/view/View;)V
    .locals 4

    const p2, 0x7f0902d5

    .line 90
    invoke-virtual {p0, p2}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object p0

    check-cast p0, Lcom/oplus/camera/professional/p;

    if-nez p0, :cond_0

    return-void

    :cond_0
    const/4 p2, 0x3

    .line 96
    invoke-virtual {p0, p2, p1}, Lcom/oplus/camera/professional/p;->d(II)V

    .line 97
    invoke-virtual {p0}, Lcom/oplus/camera/professional/p;->getChildCount()I

    move-result v0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_2

    .line 100
    invoke-virtual {p0, v1}, Lcom/oplus/camera/professional/p;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    .line 102
    instance-of v3, v2, Lcom/oplus/camera/professional/LevelPanel;

    if-eqz v3, :cond_1

    .line 103
    check-cast v2, Lcom/oplus/camera/professional/LevelPanel;

    invoke-virtual {v2, p2, p1}, Lcom/oplus/camera/professional/LevelPanel;->a(II)V

    .line 104
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

    .line 72
    invoke-virtual {p1, p2}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lcom/oplus/camera/professional/ListProfessionalModeBar;

    if-nez p1, :cond_0

    return-void

    .line 78
    :cond_0
    invoke-virtual {p1, p0}, Lcom/oplus/camera/professional/ListProfessionalModeBar;->b(Lcom/oplus/camera/screen/b/a;)V

    return-void
.end method

.method private static synthetic a(Landroid/view/View;)V
    .locals 1

    .line 167
    instance-of v0, p0, Lcom/oplus/camera/ui/control/ThumbImageView;

    if-eqz v0, :cond_0

    .line 168
    check-cast p0, Lcom/oplus/camera/ui/control/ThumbImageView;

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/oplus/camera/ui/control/ThumbImageView;->setPaddingPlus(I)V

    :cond_0
    return-void
.end method

.method private static synthetic a(Lcom/oplus/camera/ui/menu/setting/CameraSettingMenuPanel;ILandroid/app/Activity;Landroid/view/View;)V
    .locals 2

    const/4 p3, 0x0

    .line 280
    invoke-virtual {p0, p3}, Lcom/oplus/camera/ui/menu/setting/CameraSettingMenuPanel;->setRotation(F)V

    .line 281
    invoke-virtual {p0, p3}, Lcom/oplus/camera/ui/menu/setting/CameraSettingMenuPanel;->setTranslationY(F)V

    .line 282
    invoke-virtual {p0, p3}, Lcom/oplus/camera/ui/menu/setting/CameraSettingMenuPanel;->setTranslationX(F)V

    .line 283
    new-instance v0, Landroid/graphics/PointF;

    invoke-direct {v0, p3, p3}, Landroid/graphics/PointF;-><init>(FF)V

    const v1, 0x7f09005a

    invoke-virtual {p0, v1, v0}, Lcom/oplus/camera/ui/menu/setting/CameraSettingMenuPanel;->setTag(ILjava/lang/Object;)V

    .line 284
    invoke-virtual {p0, p1}, Lcom/oplus/camera/ui/menu/setting/CameraSettingMenuPanel;->setPaddingLeftRight(I)V

    const p0, 0x7f09029b

    .line 287
    invoke-virtual {p2, p0}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object p0

    check-cast p0, Lcom/oplus/camera/ui/menu/setting/CameraSettingMenuPanel;

    if-eqz p0, :cond_0

    .line 290
    invoke-virtual {p0}, Lcom/oplus/camera/ui/menu/setting/CameraSettingMenuPanel;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p1

    const/4 p2, -0x1

    .line 291
    iput p2, p1, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 292
    invoke-virtual {p0, p3}, Lcom/oplus/camera/ui/menu/setting/CameraSettingMenuPanel;->setRotation(F)V

    :cond_0
    return-void
.end method

.method private l(Landroid/app/Activity;)V
    .locals 10

    .line 57
    invoke-virtual {p0}, Lcom/oplus/camera/screen/b/h;->e()Landroid/widget/RelativeLayout$LayoutParams;

    move-result-object v0

    .line 58
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

    .line 62
    new-array v3, v7, [I

    iget v4, v0, Landroid/widget/RelativeLayout$LayoutParams;->width:I

    aput v4, v3, v5

    iget v0, v0, Landroid/widget/RelativeLayout$LayoutParams;->height:I

    aput v0, v3, v6

    iput-object v3, v1, Lcom/oplus/camera/screen/c;->c:[I

    .line 63
    iget-object v0, p0, Lcom/oplus/camera/screen/b/h;->a:Ljava/util/Map;

    const v3, 0x7f0902d9

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v0, v3, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 65
    new-instance v0, Lcom/oplus/camera/screen/c;

    new-array v1, v2, [I

    fill-array-data v1, :array_1

    new-array v3, v2, [I

    fill-array-data v3, :array_2

    invoke-direct {v0, v1, v3}, Lcom/oplus/camera/screen/c;-><init>([I[I)V

    const v1, 0x7f0706fc

    .line 69
    invoke-static {v1}, Lcom/oplus/camera/util/Util;->i(I)I

    move-result v1

    .line 70
    new-array v3, v7, [I

    const/4 v4, -0x1

    aput v4, v3, v5

    aput v1, v3, v6

    iput-object v3, v0, Lcom/oplus/camera/screen/c;->c:[I

    .line 71
    new-instance v1, Lcom/oplus/camera/screen/b/-$$Lambda$h$3bjrjhuMhcCf96jYvgIYYqKxHKE;

    invoke-direct {v1, p0, p1}, Lcom/oplus/camera/screen/b/-$$Lambda$h$3bjrjhuMhcCf96jYvgIYYqKxHKE;-><init>(Lcom/oplus/camera/screen/b/h;Landroid/app/Activity;)V

    iput-object v1, v0, Lcom/oplus/camera/screen/c;->f:Lcom/oplus/camera/screen/c$a;

    .line 80
    iget-object v1, p0, Lcom/oplus/camera/screen/b/h;->a:Ljava/util/Map;

    const v3, 0x7f09023a

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v1, v3, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 82
    invoke-virtual {p0}, Lcom/oplus/camera/screen/b/h;->g()Landroid/widget/RelativeLayout$LayoutParams;

    move-result-object v0

    .line 83
    new-instance v1, Lcom/oplus/camera/screen/c;

    new-array v3, v2, [I

    fill-array-data v3, :array_3

    new-array v4, v2, [I

    aput v5, v4, v5

    aput v5, v4, v6

    aput v5, v4, v7

    iget v8, v0, Landroid/widget/RelativeLayout$LayoutParams;->bottomMargin:I

    aput v8, v4, v9

    invoke-direct {v1, v3, v4}, Lcom/oplus/camera/screen/c;-><init>([I[I)V

    .line 87
    new-array v3, v7, [I

    iget v4, v0, Landroid/widget/RelativeLayout$LayoutParams;->width:I

    aput v4, v3, v5

    iget v0, v0, Landroid/widget/RelativeLayout$LayoutParams;->height:I

    aput v0, v3, v6

    iput-object v3, v1, Lcom/oplus/camera/screen/c;->c:[I

    .line 88
    invoke-virtual {p0}, Lcom/oplus/camera/screen/b/h;->k()I

    move-result v0

    .line 89
    new-instance v3, Lcom/oplus/camera/screen/b/-$$Lambda$h$pAjpg81eNS7jrgoNC1s_SQDrk58;

    invoke-direct {v3, p1, v0}, Lcom/oplus/camera/screen/b/-$$Lambda$h$pAjpg81eNS7jrgoNC1s_SQDrk58;-><init>(Landroid/app/Activity;I)V

    iput-object v3, v1, Lcom/oplus/camera/screen/c;->f:Lcom/oplus/camera/screen/c$a;

    .line 108
    iget-object p1, p0, Lcom/oplus/camera/screen/b/h;->a:Ljava/util/Map;

    const v0, 0x7f0902d5

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-interface {p1, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const p1, 0x7f07053b

    .line 110
    invoke-static {p1}, Lcom/oplus/camera/util/Util;->i(I)I

    move-result p1

    const v0, 0x7f07053a

    .line 111
    invoke-static {v0}, Lcom/oplus/camera/util/Util;->i(I)I

    move-result v0

    .line 112
    new-instance v1, Lcom/oplus/camera/screen/c;

    new-array v3, v2, [I

    fill-array-data v3, :array_4

    new-array v2, v2, [I

    aput v5, v2, v5

    aput p1, v2, v6

    aput v0, v2, v7

    aput v5, v2, v9

    invoke-direct {v1, v3, v2}, Lcom/oplus/camera/screen/c;-><init>([I[I)V

    .line 116
    new-array p1, v7, [I

    fill-array-data p1, :array_5

    iput-object p1, v1, Lcom/oplus/camera/screen/c;->c:[I

    .line 117
    iget-object p0, p0, Lcom/oplus/camera/screen/b/h;->a:Ljava/util/Map;

    const p1, 0x7f0902d6

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-interface {p0, p1, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void

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

    :array_4
    .array-data 4
        0xb
        0x0
        0xa
        0x0
    .end array-data

    :array_5
    .array-data 4
        -0x2
        -0x2
    .end array-data
.end method

.method public static synthetic lambda$3bjrjhuMhcCf96jYvgIYYqKxHKE(Lcom/oplus/camera/screen/b/h;Landroid/app/Activity;Landroid/view/View;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/oplus/camera/screen/b/h;->a(Landroid/app/Activity;Landroid/view/View;)V

    return-void
.end method

.method public static synthetic lambda$5ZXwuuFfvx8V3j5t_DTfLx6OGqg(Lcom/oplus/camera/ui/menu/setting/CameraSettingMenuPanel;ILandroid/app/Activity;Landroid/view/View;)V
    .locals 0

    invoke-static {p0, p1, p2, p3}, Lcom/oplus/camera/screen/b/h;->a(Lcom/oplus/camera/ui/menu/setting/CameraSettingMenuPanel;ILandroid/app/Activity;Landroid/view/View;)V

    return-void
.end method

.method public static synthetic lambda$LxtM6OUd9RX9OMS2YZG9XP9J_B4(Lcom/oplus/camera/screen/b/h;Landroid/app/Activity;IIIIILandroid/view/View;)V
    .locals 0

    invoke-direct/range {p0 .. p7}, Lcom/oplus/camera/screen/b/h;->a(Landroid/app/Activity;IIIIILandroid/view/View;)V

    return-void
.end method

.method public static synthetic lambda$pAjpg81eNS7jrgoNC1s_SQDrk58(Landroid/app/Activity;ILandroid/view/View;)V
    .locals 0

    invoke-static {p0, p1, p2}, Lcom/oplus/camera/screen/b/h;->a(Landroid/app/Activity;ILandroid/view/View;)V

    return-void
.end method

.method public static synthetic lambda$tH4ChxzoJva0B9-qZfmLmMgUa5U(Landroid/view/View;)V
    .locals 0

    invoke-static {p0}, Lcom/oplus/camera/screen/b/h;->a(Landroid/view/View;)V

    return-void
.end method

.method private m(Landroid/app/Activity;)V
    .locals 8

    .line 181
    invoke-virtual {p1}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f070546

    .line 182
    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v1

    const v2, 0x7f070615

    .line 183
    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v2

    const v3, 0x7f070477

    .line 184
    invoke-virtual {v0, v3}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v0

    const/4 v3, 0x4

    .line 185
    new-array v4, v3, [I

    fill-array-data v4, :array_0

    .line 189
    new-array v3, v3, [I

    const/4 v5, 0x0

    aput v5, v3, v5

    const/4 v6, 0x1

    aput v5, v3, v6

    const/4 v7, 0x2

    aput v2, v3, v7

    const/4 v2, 0x3

    aput v1, v3, v2

    .line 190
    new-instance v1, Lcom/oplus/camera/screen/c;

    invoke-direct {v1, v4, v3}, Lcom/oplus/camera/screen/c;-><init>([I[I)V

    .line 191
    new-array v2, v7, [I

    aput v0, v2, v5

    aput v0, v2, v6

    iput-object v2, v1, Lcom/oplus/camera/screen/c;->c:[I

    .line 192
    iget-object p0, p0, Lcom/oplus/camera/screen/b/h;->a:Ljava/util/Map;

    const v0, 0x7f090168

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-interface {p0, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const p0, 0x7f090145

    .line 193
    invoke-virtual {p1, p0}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object p0

    const/16 p1, 0x8

    .line 194
    invoke-virtual {p0, p1}, Landroid/view/View;->setVisibility(I)V

    return-void

    nop

    :array_0
    .array-data 4
        0x2
        0x7f0900e5
        0x15
        0x0
    .end array-data
.end method

.method private n(Landroid/app/Activity;)V
    .locals 7

    .line 212
    invoke-virtual {p1}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const v0, 0x7f07053f

    .line 213
    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v0

    const v1, 0x7f070546

    .line 214
    invoke-virtual {p1, v1}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v1

    const v2, 0x7f070477

    .line 215
    invoke-virtual {p1, v2}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result p1

    const/4 v2, 0x4

    .line 216
    new-array v3, v2, [I

    fill-array-data v3, :array_0

    .line 220
    new-array v2, v2, [I

    const/4 v4, 0x0

    aput v0, v2, v4

    const/4 v0, 0x1

    aput v4, v2, v0

    const/4 v5, 0x2

    aput v4, v2, v5

    const/4 v6, 0x3

    aput v1, v2, v6

    .line 221
    new-instance v1, Lcom/oplus/camera/screen/c;

    invoke-direct {v1, v3, v2}, Lcom/oplus/camera/screen/c;-><init>([I[I)V

    .line 222
    new-array v2, v5, [I

    aput p1, v2, v4

    aput p1, v2, v0

    iput-object v2, v1, Lcom/oplus/camera/screen/c;->c:[I

    .line 223
    iget-object p0, p0, Lcom/oplus/camera/screen/b/h;->a:Ljava/util/Map;

    const p1, 0x7f0900a2

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-interface {p0, p1, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void

    nop

    :array_0
    .array-data 4
        0x2
        0x7f0900e5
        0x14
        0x0
    .end array-data
.end method

.method private o(Landroid/app/Activity;)V
    .locals 16

    move-object/from16 v8, p0

    .line 227
    invoke-virtual/range {p1 .. p1}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f070dbc

    .line 228
    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    neg-int v1, v1

    const v2, 0x7f070d9b

    .line 229
    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v3

    sub-int/2addr v1, v3

    const v3, 0x7f070184

    .line 230
    invoke-virtual {v0, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v7

    .line 231
    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v9

    const v2, 0x7f070d88

    .line 232
    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v3

    const v2, 0x7f070d82

    .line 233
    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v6

    const v2, 0x7f070dc1

    .line 236
    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v5

    const/4 v10, 0x0

    if-eqz v3, :cond_0

    const v2, 0x7f070d7b

    .line 239
    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    move v4, v0

    goto :goto_0

    :cond_0
    move v4, v10

    .line 242
    :goto_0
    new-instance v11, Lcom/oplus/camera/screen/c;

    const/4 v12, 0x2

    new-array v0, v12, [I

    fill-array-data v0, :array_0

    const/4 v13, 0x4

    new-array v2, v13, [I

    aput v10, v2, v10

    const/4 v14, 0x1

    aput v10, v2, v14

    aput v10, v2, v12

    const/4 v15, 0x3

    aput v1, v2, v15

    invoke-direct {v11, v0, v2}, Lcom/oplus/camera/screen/c;-><init>([I[I)V

    .line 244
    new-array v0, v12, [I

    fill-array-data v0, :array_1

    iput-object v0, v11, Lcom/oplus/camera/screen/c;->c:[I

    .line 245
    iput v10, v11, Lcom/oplus/camera/screen/c;->d:I

    .line 247
    new-instance v2, Lcom/oplus/camera/screen/b/-$$Lambda$h$LxtM6OUd9RX9OMS2YZG9XP9J_B4;

    move-object v0, v2

    move-object/from16 v1, p0

    move-object v15, v2

    move-object/from16 v2, p1

    invoke-direct/range {v0 .. v7}, Lcom/oplus/camera/screen/b/-$$Lambda$h$LxtM6OUd9RX9OMS2YZG9XP9J_B4;-><init>(Lcom/oplus/camera/screen/b/h;Landroid/app/Activity;IIIII)V

    iput-object v15, v11, Lcom/oplus/camera/screen/c;->f:Lcom/oplus/camera/screen/c$a;

    .line 254
    iget-object v0, v8, Lcom/oplus/camera/screen/b/h;->a:Ljava/util/Map;

    const v1, 0x7f090437

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1, v11}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 256
    new-instance v0, Lcom/oplus/camera/screen/c;

    new-array v1, v12, [I

    fill-array-data v1, :array_2

    new-array v2, v13, [I

    aput v10, v2, v10

    aput v9, v2, v14

    aput v10, v2, v12

    const/4 v3, 0x3

    aput v10, v2, v3

    invoke-direct {v0, v1, v2}, Lcom/oplus/camera/screen/c;-><init>([I[I)V

    .line 258
    new-array v1, v12, [I

    fill-array-data v1, :array_3

    iput-object v1, v0, Lcom/oplus/camera/screen/c;->c:[I

    .line 259
    iget-object v1, v8, Lcom/oplus/camera/screen/b/h;->a:Ljava/util/Map;

    const v2, 0x7f090436

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v1, v2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void

    :array_0
    .array-data 4
        0x2
        0x7f0900e5
    .end array-data

    :array_1
    .array-data 4
        -0x1
        -0x2
    .end array-data

    :array_2
    .array-data 4
        0x3
        0x7f090435
    .end array-data

    :array_3
    .array-data 4
        -0x1
        -0x2
    .end array-data
.end method

.method private p(Landroid/app/Activity;)V
    .locals 6

    .line 263
    invoke-static {}, Lcom/oplus/camera/util/Util;->l()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f07075b

    .line 264
    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    const v2, 0x7f07075c

    .line 265
    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    .line 267
    new-instance v2, Lcom/oplus/camera/screen/c;

    const/4 v3, 0x2

    new-array v4, v3, [I

    fill-array-data v4, :array_0

    const/4 v5, 0x4

    new-array v5, v5, [I

    fill-array-data v5, :array_1

    invoke-direct {v2, v4, v5}, Lcom/oplus/camera/screen/c;-><init>([I[I)V

    .line 273
    new-array v3, v3, [I

    fill-array-data v3, :array_2

    iput-object v3, v2, Lcom/oplus/camera/screen/c;->c:[I

    const/4 v3, 0x0

    .line 275
    iput v3, v2, Lcom/oplus/camera/screen/c;->d:I

    const v3, 0x7f090299

    .line 276
    invoke-virtual {p1, v3}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Lcom/oplus/camera/ui/menu/setting/CameraSettingMenuPanel;

    .line 277
    invoke-virtual {v3}, Lcom/oplus/camera/ui/menu/setting/CameraSettingMenuPanel;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v4

    const/4 v5, -0x1

    iput v5, v4, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 278
    invoke-virtual {v3}, Lcom/oplus/camera/ui/menu/setting/CameraSettingMenuPanel;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v4

    iput v1, v4, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 279
    new-instance v1, Lcom/oplus/camera/screen/b/-$$Lambda$h$5ZXwuuFfvx8V3j5t_DTfLx6OGqg;

    invoke-direct {v1, v3, v0, p1}, Lcom/oplus/camera/screen/b/-$$Lambda$h$5ZXwuuFfvx8V3j5t_DTfLx6OGqg;-><init>(Lcom/oplus/camera/ui/menu/setting/CameraSettingMenuPanel;ILandroid/app/Activity;)V

    iput-object v1, v2, Lcom/oplus/camera/screen/c;->f:Lcom/oplus/camera/screen/c$a;

    .line 295
    iget-object p0, p0, Lcom/oplus/camera/screen/b/h;->a:Ljava/util/Map;

    const p1, 0x7f09029a

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-interface {p0, p1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void

    nop

    :array_0
    .array-data 4
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

    :array_2
    .array-data 4
        -0x1
        -0x2
    .end array-data
.end method


# virtual methods
.method public a(Landroid/app/Activity;I)I
    .locals 0

    .line 388
    invoke-virtual {p1}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    const p1, 0x7f07054c

    .line 389
    invoke-virtual {p0, p1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p0

    return p0
.end method

.method public a(Z)I
    .locals 0

    if-eqz p1, :cond_0

    const/16 p0, 0x15

    goto :goto_0

    :cond_0
    const/4 p0, 0x2

    :goto_0
    return p0
.end method

.method public a(Landroid/app/Activity;Landroid/view/ViewGroup;)V
    .locals 2

    .line 399
    invoke-virtual {p1}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    .line 401
    new-instance p1, Landroidx/constraintlayout/widget/ConstraintLayout$a;

    const v0, 0x7f0705e6

    .line 402
    invoke-virtual {p0, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    const/4 v1, -0x1

    invoke-direct {p1, v1, v0}, Landroidx/constraintlayout/widget/ConstraintLayout$a;-><init>(II)V

    const/4 v0, 0x0

    .line 403
    iput v0, p1, Landroidx/constraintlayout/widget/ConstraintLayout$a;->s:I

    .line 404
    iput v0, p1, Landroidx/constraintlayout/widget/ConstraintLayout$a;->q:I

    .line 405
    iput v0, p1, Landroidx/constraintlayout/widget/ConstraintLayout$a;->h:I

    const v1, 0x7f0705ea

    .line 406
    invoke-virtual {p0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p0

    iput p0, p1, Landroidx/constraintlayout/widget/ConstraintLayout$a;->topMargin:I

    .line 407
    invoke-virtual {p2, p1}, Landroid/view/ViewGroup;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 408
    invoke-virtual {p2, v0}, Landroid/view/ViewGroup;->setVerticalFadingEdgeEnabled(Z)V

    return-void
.end method

.method protected a(Landroid/app/Activity;Lcom/oplus/camera/screen/c;)V
    .locals 2

    .line 121
    new-instance p2, Lcom/oplus/camera/screen/c;

    const/4 v0, 0x4

    new-array v1, v0, [I

    fill-array-data v1, :array_0

    new-array v0, v0, [I

    fill-array-data v0, :array_1

    invoke-direct {p2, v1, v0}, Lcom/oplus/camera/screen/c;-><init>([I[I)V

    .line 129
    invoke-super {p0, p1, p2}, Lcom/oplus/camera/screen/b/a;->a(Landroid/app/Activity;Lcom/oplus/camera/screen/c;)V

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

.method public a(Landroid/app/Activity;Lcom/oplus/camera/ui/menu/setting/CameraSettingMenuPanel;)V
    .locals 0

    .line 302
    invoke-virtual {p2}, Lcom/oplus/camera/ui/menu/setting/CameraSettingMenuPanel;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p0

    const/4 p1, -0x1

    .line 303
    iput p1, p0, Landroid/view/ViewGroup$LayoutParams;->width:I

    const/4 p0, 0x0

    .line 304
    invoke-virtual {p2, p0}, Lcom/oplus/camera/ui/menu/setting/CameraSettingMenuPanel;->setRotation(F)V

    return-void
.end method

.method public a(Lcom/oplus/camera/p$a;II)V
    .locals 1

    .line 545
    invoke-static {}, Lcom/oplus/camera/util/Util;->I()Landroid/util/Size;

    move-result-object p2

    .line 546
    invoke-virtual {p2}, Landroid/util/Size;->getHeight()I

    move-result p3

    invoke-virtual {p2}, Landroid/util/Size;->getWidth()I

    move-result p2

    invoke-virtual {p0, p3, p2}, Lcom/oplus/camera/screen/b/h;->b(II)Landroid/graphics/Rect;

    move-result-object p0

    const p2, 0x7f070999

    .line 547
    invoke-static {p2}, Lcom/oplus/camera/util/Util;->i(I)I

    move-result p2

    const p3, 0x7f070998

    .line 548
    invoke-static {p3}, Lcom/oplus/camera/util/Util;->i(I)I

    move-result p3

    const v0, 0x7f07053c

    .line 549
    invoke-static {v0}, Lcom/oplus/camera/util/Util;->i(I)I

    move-result v0

    .line 550
    iput p3, p1, Lcom/oplus/camera/p$a;->d:I

    const/4 p3, 0x0

    .line 551
    iput p3, p1, Lcom/oplus/camera/p$a;->e:I

    .line 553
    iget p3, p0, Landroid/graphics/Rect;->top:I

    add-int/2addr p3, p2

    if-le p3, v0, :cond_0

    .line 554
    iget p0, p0, Landroid/graphics/Rect;->top:I

    add-int/2addr p0, p2

    iput p0, p1, Lcom/oplus/camera/p$a;->b:I

    goto :goto_0

    .line 556
    :cond_0
    iput v0, p1, Lcom/oplus/camera/p$a;->b:I

    :goto_0
    return-void
.end method

.method public a(Lcom/oplus/camera/screen/ScreenRelativeLayout;)V
    .locals 0

    .line 36
    sget p1, Lcom/oplus/camera/screen/f;->a:I

    div-int/lit8 p1, p1, 0x2

    iput p1, p0, Lcom/oplus/camera/screen/b/h;->b:I

    .line 37
    sget p1, Lcom/oplus/camera/screen/f;->b:I

    iput p1, p0, Lcom/oplus/camera/screen/b/h;->c:I

    return-void
.end method

.method public a(Lcom/oplus/camera/screen/b/o$a;)V
    .locals 0

    const/4 p0, 0x0

    .line 309
    new-array p0, p0, [Ljava/lang/Object;

    invoke-interface {p1, p0}, Lcom/oplus/camera/screen/b/o$a;->call([Ljava/lang/Object;)V

    return-void
.end method

.method public a(Lcom/oplus/camera/screen/b/o$a;Lcom/oplus/camera/screen/b/o$a;)V
    .locals 0

    const/4 p0, 0x0

    .line 323
    new-array p0, p0, [Ljava/lang/Object;

    invoke-interface {p1, p0}, Lcom/oplus/camera/screen/b/o$a;->call([Ljava/lang/Object;)V

    return-void
.end method

.method public a(Lcom/oplus/camera/screen/b/o$a;Lcom/oplus/camera/screen/b/o$a;Lcom/oplus/camera/screen/b/o$a;)V
    .locals 0

    const/4 p0, 0x1

    .line 319
    new-array p0, p0, [Ljava/lang/Object;

    const/4 p2, 0x2

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    const/4 p3, 0x0

    aput-object p2, p0, p3

    invoke-interface {p1, p0}, Lcom/oplus/camera/screen/b/o$a;->call([Ljava/lang/Object;)V

    return-void
.end method

.method public a()Z
    .locals 0

    const/4 p0, 0x1

    return p0
.end method

.method public a(I)Z
    .locals 0

    const/4 p0, 0x6

    if-eq p0, p1, :cond_1

    const/4 p0, 0x2

    if-ne p0, p1, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p0, 0x1

    :goto_1
    return p0
.end method

.method public a(Landroid/view/View;FF)[F
    .locals 3

    const/4 p0, 0x2

    .line 339
    new-array v0, p0, [F

    .line 340
    new-array p0, p0, [I

    .line 341
    invoke-virtual {p1, p0}, Landroid/view/View;->getLocationOnScreen([I)V

    const/4 v1, 0x0

    .line 342
    aget v2, p0, v1

    int-to-float v2, v2

    sub-float/2addr p2, v2

    aput p2, v0, v1

    const/4 p2, 0x1

    .line 343
    aget p0, p0, p2

    int-to-float p0, p0

    sub-float/2addr p3, p0

    aput p3, v0, p2

    .line 345
    invoke-virtual {p1}, Landroid/view/View;->getPaddingLeft()I

    move-result p0

    .line 346
    invoke-virtual {p1}, Landroid/view/View;->getWidth()I

    move-result p3

    invoke-virtual {p1}, Landroid/view/View;->getPaddingRight()I

    move-result v2

    sub-int/2addr p3, v2

    .line 347
    aget v2, v0, v1

    int-to-float p0, p0

    invoke-static {v2, p0}, Ljava/lang/Math;->max(FF)F

    move-result p0

    int-to-float p3, p3

    invoke-static {p0, p3}, Ljava/lang/Math;->min(FF)F

    move-result p0

    aput p0, v0, v1

    .line 349
    invoke-virtual {p1}, Landroid/view/View;->getPaddingTop()I

    move-result p0

    .line 350
    invoke-virtual {p1}, Landroid/view/View;->getHeight()I

    move-result p3

    invoke-virtual {p1}, Landroid/view/View;->getPaddingBottom()I

    move-result p1

    sub-int/2addr p3, p1

    .line 351
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

.method public a(II)[I
    .locals 1

    const/4 p0, 0x2

    .line 361
    new-array p0, p0, [I

    const/4 v0, 0x0

    aput p1, p0, v0

    const/4 p1, 0x1

    aput p2, p0, p1

    return-object p0
.end method

.method public a(IIII)[I
    .locals 0

    const/4 p0, 0x2

    .line 365
    new-array p0, p0, [I

    const/4 p3, 0x0

    aput p1, p0, p3

    const/4 p1, 0x1

    aput p2, p0, p1

    return-object p0
.end method

.method public a(Landroid/util/Size;Landroid/util/Size;)[I
    .locals 5

    const/4 v0, 0x4

    .line 374
    new-array v0, v0, [I

    .line 376
    invoke-virtual {p1}, Landroid/util/Size;->getWidth()I

    move-result v1

    int-to-double v1, v1

    invoke-virtual {p1}, Landroid/util/Size;->getHeight()I

    move-result p1

    int-to-double v3, p1

    div-double/2addr v1, v3

    .line 377
    iget p1, p0, Lcom/oplus/camera/screen/b/h;->b:I

    int-to-double v3, p1

    mul-double/2addr v3, v1

    double-to-int p1, v3

    const/4 v1, 0x0

    aput p1, v0, v1

    .line 378
    iget p1, p0, Lcom/oplus/camera/screen/b/h;->b:I

    const/4 v1, 0x1

    aput p1, v0, v1

    .line 380
    invoke-virtual {p2}, Landroid/util/Size;->getWidth()I

    move-result p1

    int-to-double v1, p1

    invoke-virtual {p2}, Landroid/util/Size;->getHeight()I

    move-result p1

    int-to-double p1, p1

    div-double/2addr v1, p1

    .line 381
    iget p1, p0, Lcom/oplus/camera/screen/b/h;->b:I

    int-to-double p1, p1

    mul-double/2addr p1, v1

    double-to-int p1, p1

    const/4 p2, 0x2

    aput p1, v0, p2

    .line 382
    iget p0, p0, Lcom/oplus/camera/screen/b/h;->b:I

    const/4 p1, 0x3

    aput p0, v0, p1

    return-object v0
.end method

.method protected b(Landroid/app/Activity;)V
    .locals 1

    .line 42
    invoke-super {p0, p1}, Lcom/oplus/camera/screen/b/a;->b(Landroid/app/Activity;)V

    .line 43
    invoke-direct {p0, p1}, Lcom/oplus/camera/screen/b/h;->o(Landroid/app/Activity;)V

    .line 44
    invoke-virtual {p0, p1}, Lcom/oplus/camera/screen/b/h;->h(Landroid/app/Activity;)V

    .line 45
    invoke-direct {p0, p1}, Lcom/oplus/camera/screen/b/h;->m(Landroid/app/Activity;)V

    .line 46
    invoke-direct {p0, p1}, Lcom/oplus/camera/screen/b/h;->n(Landroid/app/Activity;)V

    .line 47
    invoke-virtual {p0, p1}, Lcom/oplus/camera/screen/b/h;->f(Landroid/app/Activity;)V

    .line 48
    invoke-virtual {p0, p1}, Lcom/oplus/camera/screen/b/h;->i(Landroid/app/Activity;)V

    const/4 v0, 0x0

    .line 49
    invoke-virtual {p0, p1, v0}, Lcom/oplus/camera/screen/b/h;->a(Landroid/app/Activity;Lcom/oplus/camera/screen/c;)V

    .line 50
    invoke-direct {p0, p1}, Lcom/oplus/camera/screen/b/h;->p(Landroid/app/Activity;)V

    .line 51
    invoke-direct {p0, p1}, Lcom/oplus/camera/screen/b/h;->l(Landroid/app/Activity;)V

    .line 52
    invoke-virtual {p0, p1}, Lcom/oplus/camera/screen/b/h;->j(Landroid/app/Activity;)V

    .line 53
    invoke-virtual {p0, p1}, Lcom/oplus/camera/screen/b/h;->k(Landroid/app/Activity;)V

    return-void
.end method

.method public b(Landroid/app/Activity;I)V
    .locals 4

    const/4 p0, 0x0

    const v0, 0x7f090168

    .line 438
    invoke-static {p1, v0, p0}, Lcom/oplus/camera/util/Util;->a(Landroid/app/Activity;IZ)V

    const v0, 0x7f090145

    .line 439
    invoke-static {p1, v0, p0}, Lcom/oplus/camera/util/Util;->a(Landroid/app/Activity;IZ)V

    const v0, 0x7f0900a2

    .line 440
    invoke-static {p1, v0, p0}, Lcom/oplus/camera/util/Util;->a(Landroid/app/Activity;IZ)V

    const/4 v0, 0x1

    const v1, 0x7f090312

    .line 441
    invoke-static {p1, v1, v0}, Lcom/oplus/camera/util/Util;->a(Landroid/app/Activity;IZ)V

    const v1, 0x7f0902a7

    .line 442
    invoke-static {p1, v1, v0}, Lcom/oplus/camera/util/Util;->a(Landroid/app/Activity;IZ)V

    const v1, 0x7f0903c3

    .line 443
    invoke-static {p1, v1, p0}, Lcom/oplus/camera/util/Util;->a(Landroid/app/Activity;IZ)V

    const v1, 0x7f0903c0

    .line 444
    invoke-static {p1, v1, p0}, Lcom/oplus/camera/util/Util;->a(Landroid/app/Activity;IZ)V

    const p0, 0x7f0902e7

    const v1, 0x7f0900a1

    const v2, 0x7f090384

    const v3, 0x7f090419

    if-ne p2, v0, :cond_0

    const p2, 0x7f08063f

    .line 447
    invoke-static {p1, v3, p2}, Lcom/oplus/camera/util/Util;->a(Landroid/app/Activity;II)V

    .line 448
    invoke-static {p1, v2, p2}, Lcom/oplus/camera/util/Util;->a(Landroid/app/Activity;II)V

    .line 449
    invoke-static {p1, v1, p2}, Lcom/oplus/camera/util/Util;->a(Landroid/app/Activity;II)V

    .line 450
    invoke-static {p1, p0, p2}, Lcom/oplus/camera/util/Util;->a(Landroid/app/Activity;II)V

    goto :goto_0

    :cond_0
    const p2, 0x7f080641

    .line 452
    invoke-static {p1, v3, p2}, Lcom/oplus/camera/util/Util;->a(Landroid/app/Activity;II)V

    .line 453
    invoke-static {p1, v2, p2}, Lcom/oplus/camera/util/Util;->a(Landroid/app/Activity;II)V

    .line 454
    invoke-static {p1, v1, p2}, Lcom/oplus/camera/util/Util;->a(Landroid/app/Activity;II)V

    .line 455
    invoke-static {p1, p0, p2}, Lcom/oplus/camera/util/Util;->a(Landroid/app/Activity;II)V

    :goto_0
    return-void
.end method

.method public b(Lcom/oplus/camera/screen/b/o$a;Lcom/oplus/camera/screen/b/o$a;)V
    .locals 0

    const/4 p0, 0x0

    .line 331
    new-array p0, p0, [Ljava/lang/Object;

    invoke-interface {p2, p0}, Lcom/oplus/camera/screen/b/o$a;->call([Ljava/lang/Object;)V

    return-void
.end method

.method public c(Landroid/app/Activity;)I
    .locals 0

    .line 393
    invoke-virtual {p1}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    const p1, 0x7f070976

    .line 394
    invoke-virtual {p0, p1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

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

    .line 427
    invoke-super {p0}, Lcom/oplus/camera/screen/b/a;->c()Ljava/util/ArrayList;

    move-result-object p0

    const-string v0, "multiCamera"

    .line 428
    invoke-virtual {p0, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const-string v0, "movie"

    .line 429
    invoke-virtual {p0, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const-string v0, "panorama"

    .line 430
    invoke-virtual {p0, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const-string v0, "superText"

    .line 431
    invoke-virtual {p0, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-object p0
.end method

.method public c(Lcom/oplus/camera/screen/b/o$a;Lcom/oplus/camera/screen/b/o$a;)V
    .locals 0

    const/4 p0, 0x0

    .line 335
    new-array p0, p0, [Ljava/lang/Object;

    invoke-interface {p1, p0}, Lcom/oplus/camera/screen/b/o$a;->call([Ljava/lang/Object;)V

    return-void
.end method

.method public d(Lcom/oplus/camera/screen/b/o$a;Lcom/oplus/camera/screen/b/o$a;)V
    .locals 0

    const/4 p0, 0x0

    .line 357
    new-array p0, p0, [Ljava/lang/Object;

    invoke-interface {p1, p0}, Lcom/oplus/camera/screen/b/o$a;->call([Ljava/lang/Object;)V

    return-void
.end method

.method public e()Landroid/widget/RelativeLayout$LayoutParams;
    .locals 2

    .line 512
    new-instance v0, Landroid/widget/RelativeLayout$LayoutParams;

    iget p0, p0, Lcom/oplus/camera/screen/b/h;->b:I

    const/4 v1, -0x2

    invoke-direct {v0, v1, p0}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    const/16 p0, 0xc

    .line 514
    invoke-virtual {v0, p0}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    const/16 p0, 0xe

    .line 515
    invoke-virtual {v0, p0}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    const p0, 0x7f07053d

    .line 516
    invoke-static {p0}, Lcom/oplus/camera/util/Util;->i(I)I

    move-result p0

    iput p0, v0, Landroid/widget/RelativeLayout$LayoutParams;->bottomMargin:I

    return-object v0
.end method

.method public f()Landroid/widget/RelativeLayout$LayoutParams;
    .locals 2

    const p0, 0x7f0706fc

    .line 523
    invoke-static {p0}, Lcom/oplus/camera/util/Util;->i(I)I

    move-result p0

    .line 524
    new-instance v0, Landroid/widget/RelativeLayout$LayoutParams;

    const/4 v1, -0x1

    invoke-direct {v0, v1, p0}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    const/16 p0, 0xe

    .line 526
    invoke-virtual {v0, p0}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    const/16 p0, 0xc

    .line 527
    invoke-virtual {v0, p0}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    return-object v0
.end method

.method protected f(Landroid/app/Activity;)V
    .locals 17

    move-object/from16 v0, p0

    .line 133
    invoke-virtual/range {p1 .. p1}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f070545

    .line 134
    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v2

    const v3, 0x7f070184

    .line 135
    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v3

    const v4, 0x7f0704f8

    .line 137
    invoke-virtual {v1, v4}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v4

    const v5, 0x7f070517

    .line 138
    invoke-virtual {v1, v5}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v5

    const v6, 0x7f070518

    .line 139
    invoke-virtual {v1, v6}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v6

    const v7, 0x7f07017e

    .line 140
    invoke-virtual {v1, v7}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v7

    const v8, 0x7f070bd8

    .line 141
    invoke-virtual {v1, v8}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v8

    const v9, 0x7f070bd0

    .line 142
    invoke-virtual {v1, v9}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v9

    const v10, 0x7f070b96

    .line 143
    invoke-virtual {v1, v10}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    .line 145
    new-instance v10, Lcom/oplus/camera/screen/c;

    const/4 v11, 0x2

    new-array v12, v11, [I

    fill-array-data v12, :array_0

    const/4 v13, 0x4

    new-array v14, v13, [I

    const/4 v15, 0x0

    aput v15, v14, v15

    const/16 v16, 0x1

    aput v3, v14, v16

    aput v15, v14, v11

    const/4 v3, 0x3

    aput v15, v14, v3

    invoke-direct {v10, v12, v14}, Lcom/oplus/camera/screen/c;-><init>([I[I)V

    .line 147
    new-array v12, v11, [I

    const/4 v14, -0x1

    aput v14, v12, v15

    aput v2, v12, v16

    iput-object v12, v10, Lcom/oplus/camera/screen/c;->c:[I

    .line 148
    iget-object v2, v0, Lcom/oplus/camera/screen/b/h;->a:Ljava/util/Map;

    const v12, 0x7f0900e4

    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    invoke-interface {v2, v12, v10}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 150
    new-instance v2, Lcom/oplus/camera/screen/c;

    new-array v10, v11, [I

    fill-array-data v10, :array_1

    new-array v12, v13, [I

    aput v15, v12, v15

    aput v4, v12, v16

    aput v15, v12, v11

    aput v15, v12, v3

    invoke-direct {v2, v10, v12}, Lcom/oplus/camera/screen/c;-><init>([I[I)V

    .line 152
    iget-object v4, v0, Lcom/oplus/camera/screen/b/h;->a:Ljava/util/Map;

    const v10, 0x7f090338

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    invoke-interface {v4, v10, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 154
    new-instance v2, Lcom/oplus/camera/screen/c;

    new-array v4, v11, [I

    fill-array-data v4, :array_2

    new-array v10, v13, [I

    aput v15, v10, v15

    aput v5, v10, v16

    aput v7, v10, v11

    aput v15, v10, v3

    invoke-direct {v2, v4, v10}, Lcom/oplus/camera/screen/c;-><init>([I[I)V

    .line 156
    new-array v4, v11, [I

    aput v1, v4, v15

    aput v1, v4, v16

    iput-object v4, v2, Lcom/oplus/camera/screen/c;->c:[I

    .line 157
    iget-object v4, v0, Lcom/oplus/camera/screen/b/h;->a:Ljava/util/Map;

    const v10, 0x7f090384

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    invoke-interface {v4, v10, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 159
    new-instance v2, Lcom/oplus/camera/screen/c;

    new-array v4, v11, [I

    fill-array-data v4, :array_3

    new-array v10, v13, [I

    aput v15, v10, v15

    aput v5, v10, v16

    aput v7, v10, v11

    aput v15, v10, v3

    invoke-direct {v2, v4, v10}, Lcom/oplus/camera/screen/c;-><init>([I[I)V

    .line 161
    new-array v4, v11, [I

    aput v1, v4, v15

    aput v1, v4, v16

    iput-object v4, v2, Lcom/oplus/camera/screen/c;->c:[I

    .line 162
    iget-object v4, v0, Lcom/oplus/camera/screen/b/h;->a:Ljava/util/Map;

    const v7, 0x7f090419

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-interface {v4, v7, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 164
    new-instance v2, Lcom/oplus/camera/screen/c;

    new-array v4, v11, [I

    fill-array-data v4, :array_4

    new-array v7, v13, [I

    aput v9, v7, v15

    aput v6, v7, v16

    aput v15, v7, v11

    aput v15, v7, v3

    invoke-direct {v2, v4, v7}, Lcom/oplus/camera/screen/c;-><init>([I[I)V

    .line 166
    sget-object v4, Lcom/oplus/camera/screen/b/-$$Lambda$h$tH4ChxzoJva0B9-qZfmLmMgUa5U;->INSTANCE:Lcom/oplus/camera/screen/b/-$$Lambda$h$tH4ChxzoJva0B9-qZfmLmMgUa5U;

    iput-object v4, v2, Lcom/oplus/camera/screen/c;->f:Lcom/oplus/camera/screen/c$a;

    .line 171
    iget-object v4, v0, Lcom/oplus/camera/screen/b/h;->a:Ljava/util/Map;

    const v6, 0x7f0903b4

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-interface {v4, v6, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 172
    iget-object v4, v0, Lcom/oplus/camera/screen/b/h;->a:Ljava/util/Map;

    const v6, 0x7f0900a1

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-interface {v4, v6, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 174
    new-instance v2, Lcom/oplus/camera/screen/c;

    new-array v4, v11, [I

    fill-array-data v4, :array_5

    new-array v6, v13, [I

    add-int/2addr v9, v8

    aput v9, v6, v15

    aput v5, v6, v16

    aput v15, v6, v11

    aput v15, v6, v3

    invoke-direct {v2, v4, v6}, Lcom/oplus/camera/screen/c;-><init>([I[I)V

    .line 176
    new-array v3, v11, [I

    aput v1, v3, v15

    aput v1, v3, v16

    iput-object v3, v2, Lcom/oplus/camera/screen/c;->c:[I

    .line 177
    iget-object v0, v0, Lcom/oplus/camera/screen/b/h;->a:Ljava/util/Map;

    const v1, 0x7f0902e7

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void

    :array_0
    .array-data 4
        0xa
        0x0
    .end array-data

    :array_1
    .array-data 4
        0xe
        0x0
    .end array-data

    :array_2
    .array-data 4
        0x15
        0x0
    .end array-data

    :array_3
    .array-data 4
        0x15
        0x0
    .end array-data

    :array_4
    .array-data 4
        0x14
        0x0
    .end array-data

    :array_5
    .array-data 4
        0x14
        0x0
    .end array-data
.end method

.method public g()Landroid/widget/RelativeLayout$LayoutParams;
    .locals 3

    const v0, 0x7f070b2f

    .line 534
    invoke-static {v0}, Lcom/oplus/camera/util/Util;->i(I)I

    move-result v0

    const v1, 0x7f0706fc

    .line 535
    invoke-static {v1}, Lcom/oplus/camera/util/Util;->i(I)I

    move-result v1

    .line 536
    new-instance v2, Landroid/widget/RelativeLayout$LayoutParams;

    iget p0, p0, Lcom/oplus/camera/screen/b/h;->b:I

    invoke-direct {v2, p0, v0}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    const/4 p0, 0x0

    .line 537
    invoke-virtual {v2, p0, p0, p0, v1}, Landroid/widget/RelativeLayout$LayoutParams;->setMargins(IIII)V

    const/16 p0, 0xe

    .line 538
    invoke-virtual {v2, p0}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    const/16 p0, 0xc

    .line 539
    invoke-virtual {v2, p0}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    return-object v2
.end method

.method protected h(Landroid/app/Activity;)V
    .locals 9

    .line 198
    invoke-virtual {p1}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const/4 v0, 0x4

    .line 199
    new-array v1, v0, [I

    fill-array-data v1, :array_0

    const v2, 0x7f070535

    .line 200
    invoke-virtual {p1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    const v3, 0x7f070536

    .line 201
    invoke-virtual {p1, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v3

    const v4, 0x7f070513

    .line 202
    invoke-virtual {p1, v4}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v4

    const v5, 0x7f070514

    .line 203
    invoke-virtual {p1, v5}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p1

    .line 204
    new-instance v5, Lcom/oplus/camera/screen/c;

    new-array v6, v0, [I

    const/4 v7, 0x0

    aput v2, v6, v7

    const/4 v2, 0x1

    aput v3, v6, v2

    const/4 v3, 0x2

    aput v7, v6, v3

    const/4 v8, 0x3

    aput v7, v6, v8

    invoke-direct {v5, v1, v6}, Lcom/oplus/camera/screen/c;-><init>([I[I)V

    .line 205
    new-instance v6, Lcom/oplus/camera/screen/c;

    new-array v0, v0, [I

    aput v4, v0, v7

    aput p1, v0, v2

    aput v7, v0, v3

    aput v7, v0, v8

    invoke-direct {v6, v1, v0}, Lcom/oplus/camera/screen/c;-><init>([I[I)V

    .line 207
    iget-object p1, p0, Lcom/oplus/camera/screen/b/h;->a:Ljava/util/Map;

    const v0, 0x7f090312

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-interface {p1, v0, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 208
    iget-object p0, p0, Lcom/oplus/camera/screen/b/h;->a:Ljava/util/Map;

    const p1, 0x7f0902a7

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-interface {p0, p1, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

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

.method protected abstract i(Landroid/app/Activity;)V
.end method

.method public j()I
    .locals 0

    const/4 p0, 0x3

    return p0
.end method

.method protected j(Landroid/app/Activity;)V
    .locals 13

    .line 465
    invoke-virtual {p1}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const/4 v0, 0x4

    .line 466
    new-array v1, v0, [I

    fill-array-data v1, :array_0

    .line 467
    new-array v2, v0, [I

    fill-array-data v2, :array_1

    .line 468
    new-array v3, v0, [I

    fill-array-data v3, :array_2

    .line 470
    new-instance v4, Lcom/oplus/camera/screen/c;

    new-array v5, v0, [I

    const v6, 0x7f070bdd

    invoke-virtual {p1, v6}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v7

    const/4 v8, 0x0

    aput v7, v5, v8

    const/4 v7, 0x1

    aput v8, v5, v7

    const/4 v9, 0x2

    aput v8, v5, v9

    const v10, 0x7f070475

    .line 471
    invoke-virtual {p1, v10}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v11

    const/4 v12, 0x3

    aput v11, v5, v12

    invoke-direct {v4, v1, v5}, Lcom/oplus/camera/screen/c;-><init>([I[I)V

    .line 472
    new-instance v1, Lcom/oplus/camera/screen/c;

    new-array v5, v0, [I

    aput v8, v5, v8

    aput v8, v5, v7

    invoke-virtual {p1, v6}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v6

    aput v6, v5, v9

    .line 473
    invoke-virtual {p1, v10}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v6

    aput v6, v5, v12

    invoke-direct {v1, v2, v5}, Lcom/oplus/camera/screen/c;-><init>([I[I)V

    .line 474
    new-instance v2, Lcom/oplus/camera/screen/c;

    new-array v0, v0, [I

    aput v8, v0, v8

    const v5, 0x7f07053b

    invoke-virtual {p1, v5}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v5

    aput v5, v0, v7

    const v5, 0x7f07053a

    .line 475
    invoke-virtual {p1, v5}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v5

    aput v5, v0, v9

    aput v8, v0, v12

    invoke-direct {v2, v3, v0}, Lcom/oplus/camera/screen/c;-><init>([I[I)V

    const v0, 0x7f070477

    .line 477
    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result p1

    .line 479
    new-array v0, v9, [I

    aput p1, v0, v8

    aput p1, v0, v7

    iput-object v0, v4, Lcom/oplus/camera/screen/c;->c:[I

    .line 480
    new-array v0, v9, [I

    aput p1, v0, v8

    aput p1, v0, v7

    iput-object v0, v1, Lcom/oplus/camera/screen/c;->c:[I

    .line 482
    iget-object p1, p0, Lcom/oplus/camera/screen/b/h;->a:Ljava/util/Map;

    const v0, 0x7f0903c3

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-interface {p1, v0, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 483
    iget-object p1, p0, Lcom/oplus/camera/screen/b/h;->a:Ljava/util/Map;

    const v0, 0x7f0903c0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-interface {p1, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 484
    iget-object p0, p0, Lcom/oplus/camera/screen/b/h;->a:Ljava/util/Map;

    const p1, 0x7f0903b7

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-interface {p0, p1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

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
        0xa
        0x0
        0xb
        0x0
    .end array-data
.end method

.method protected k(Landroid/app/Activity;)V
    .locals 8

    .line 488
    invoke-virtual {p1}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const/4 v0, 0x2

    .line 489
    new-array v1, v0, [I

    fill-array-data v1, :array_0

    const v2, 0x7f070bf9

    .line 490
    invoke-virtual {p1, v2}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result p1

    .line 492
    new-instance v2, Lcom/oplus/camera/screen/c;

    const/4 v3, 0x4

    new-array v4, v3, [I

    const/4 v5, 0x0

    aput v5, v4, v5

    const/4 v6, 0x1

    aput v5, v4, v6

    aput v5, v4, v0

    const/4 v7, 0x3

    aput p1, v4, v7

    invoke-direct {v2, v1, v4}, Lcom/oplus/camera/screen/c;-><init>([I[I)V

    .line 494
    new-instance v4, Lcom/oplus/camera/screen/c;

    new-array v3, v3, [I

    aput v5, v3, v5

    aput v5, v3, v6

    aput v5, v3, v0

    aput p1, v3, v7

    invoke-direct {v4, v1, v3}, Lcom/oplus/camera/screen/c;-><init>([I[I)V

    .line 496
    iget-object p1, p0, Lcom/oplus/camera/screen/b/h;->a:Ljava/util/Map;

    const v0, 0x7f0903b8

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-interface {p1, v0, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 497
    iget-object p0, p0, Lcom/oplus/camera/screen/b/h;->a:Ljava/util/Map;

    const p1, 0x7f0903bc

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-interface {p0, p1, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void

    :array_0
    .array-data 4
        0xc
        0x0
    .end array-data
.end method

.method public o()Z
    .locals 0

    const/4 p0, 0x1

    return p0
.end method
