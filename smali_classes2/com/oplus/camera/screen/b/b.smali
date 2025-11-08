.class public Lcom/oplus/camera/screen/b/b;
.super Lcom/oplus/camera/screen/b/a;
.source "CommonScreenMode.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 27
    invoke-direct {p0}, Lcom/oplus/camera/screen/b/a;-><init>()V

    return-void
.end method

.method private synthetic a(Landroid/app/Activity;IIIIILandroid/view/View;)V
    .locals 8

    const p7, 0x7f090435

    .line 52
    invoke-virtual {p1, p7}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    move-object v0, p1

    check-cast v0, Lcom/oplus/camera/ui/preview/af;

    .line 53
    invoke-virtual {v0}, Lcom/oplus/camera/ui/preview/af;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p1

    const/4 p7, -0x1

    iput p7, p1, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 54
    invoke-virtual {v0}, Lcom/oplus/camera/ui/preview/af;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p1

    iput p2, p1, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 55
    iget v1, p0, Lcom/oplus/camera/screen/b/b;->b:I

    .line 56
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

    .line 55
    invoke-virtual/range {v0 .. v7}, Lcom/oplus/camera/ui/preview/af;->a(IIIIFFF)V

    return-void
.end method

.method private static synthetic a(Landroid/app/Activity;IILandroid/view/View;)V
    .locals 2

    const p3, 0x7f090299

    .line 91
    invoke-virtual {p0, p3}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object p3

    check-cast p3, Lcom/oplus/camera/ui/menu/setting/CameraSettingMenuPanel;

    .line 92
    invoke-virtual {p3}, Lcom/oplus/camera/ui/menu/setting/CameraSettingMenuPanel;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    const/4 v1, -0x1

    iput v1, v0, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 93
    invoke-virtual {p3}, Lcom/oplus/camera/ui/menu/setting/CameraSettingMenuPanel;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    iput p1, v0, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 94
    invoke-virtual {p3, p2}, Lcom/oplus/camera/ui/menu/setting/CameraSettingMenuPanel;->setPaddingLeftRight(I)V

    const p1, 0x7f09029b

    .line 96
    invoke-virtual {p0, p1}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object p0

    check-cast p0, Lcom/oplus/camera/ui/menu/setting/CameraSettingMenuPanel;

    if-eqz p0, :cond_0

    .line 99
    invoke-virtual {p0}, Lcom/oplus/camera/ui/menu/setting/CameraSettingMenuPanel;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p1

    .line 100
    iput v1, p1, Landroid/view/ViewGroup$LayoutParams;->width:I

    const/4 p1, 0x0

    .line 101
    invoke-virtual {p0, p1}, Lcom/oplus/camera/ui/menu/setting/CameraSettingMenuPanel;->setRotation(F)V

    :cond_0
    return-void
.end method

.method private static synthetic a(Landroid/app/Activity;Landroid/view/View;)V
    .locals 0

    const p1, 0x7f090196

    .line 144
    invoke-virtual {p0, p1}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object p0

    check-cast p0, Landroid/widget/RelativeLayout;

    const/16 p1, 0x8

    .line 145
    invoke-virtual {p0, p1}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    return-void
.end method

.method private h(Landroid/app/Activity;)V
    .locals 6

    .line 78
    invoke-static {}, Lcom/oplus/camera/util/Util;->l()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f07075b

    .line 79
    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    const v2, 0x7f07075c

    .line 80
    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    .line 82
    new-instance v2, Lcom/oplus/camera/screen/c;

    const/4 v3, 0x2

    new-array v4, v3, [I

    fill-array-data v4, :array_0

    const/4 v5, 0x4

    new-array v5, v5, [I

    fill-array-data v5, :array_1

    invoke-direct {v2, v4, v5}, Lcom/oplus/camera/screen/c;-><init>([I[I)V

    .line 88
    new-array v3, v3, [I

    fill-array-data v3, :array_2

    iput-object v3, v2, Lcom/oplus/camera/screen/c;->c:[I

    .line 90
    new-instance v3, Lcom/oplus/camera/screen/b/-$$Lambda$b$psDyPbhOpNS9vM2hrLp5KWtNY5A;

    invoke-direct {v3, p1, v1, v0}, Lcom/oplus/camera/screen/b/-$$Lambda$b$psDyPbhOpNS9vM2hrLp5KWtNY5A;-><init>(Landroid/app/Activity;II)V

    iput-object v3, v2, Lcom/oplus/camera/screen/c;->f:Lcom/oplus/camera/screen/c$a;

    .line 104
    iget-object p0, p0, Lcom/oplus/camera/screen/b/b;->a:Ljava/util/Map;

    const p1, 0x7f09029a

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-interface {p0, p1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void

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

.method private i(Landroid/app/Activity;)V
    .locals 2

    .line 141
    new-instance v0, Lcom/oplus/camera/screen/c;

    const/4 v1, 0x0

    invoke-direct {v0, v1, v1}, Lcom/oplus/camera/screen/c;-><init>([I[I)V

    const/4 v1, 0x2

    .line 142
    new-array v1, v1, [I

    fill-array-data v1, :array_0

    iput-object v1, v0, Lcom/oplus/camera/screen/c;->c:[I

    .line 143
    new-instance v1, Lcom/oplus/camera/screen/b/-$$Lambda$b$A5r_DQHHKX-F6pH9j0WMJ6sPPOw;

    invoke-direct {v1, p1}, Lcom/oplus/camera/screen/b/-$$Lambda$b$A5r_DQHHKX-F6pH9j0WMJ6sPPOw;-><init>(Landroid/app/Activity;)V

    iput-object v1, v0, Lcom/oplus/camera/screen/c;->f:Lcom/oplus/camera/screen/c$a;

    .line 147
    iget-object p0, p0, Lcom/oplus/camera/screen/b/b;->a:Ljava/util/Map;

    const p1, 0x7f090196

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-interface {p0, p1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void

    :array_0
    .array-data 4
        0x0
        0x0
    .end array-data
.end method

.method public static synthetic lambda$9A--AMwStlUnPFsbFFG16r6tn8M(Lcom/oplus/camera/screen/b/b;Landroid/app/Activity;IIIIILandroid/view/View;)V
    .locals 0

    invoke-direct/range {p0 .. p7}, Lcom/oplus/camera/screen/b/b;->a(Landroid/app/Activity;IIIIILandroid/view/View;)V

    return-void
.end method

.method public static synthetic lambda$A5r_DQHHKX-F6pH9j0WMJ6sPPOw(Landroid/app/Activity;Landroid/view/View;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/oplus/camera/screen/b/b;->a(Landroid/app/Activity;Landroid/view/View;)V

    return-void
.end method

.method public static synthetic lambda$psDyPbhOpNS9vM2hrLp5KWtNY5A(Landroid/app/Activity;IILandroid/view/View;)V
    .locals 0

    invoke-static {p0, p1, p2, p3}, Lcom/oplus/camera/screen/b/b;->a(Landroid/app/Activity;IILandroid/view/View;)V

    return-void
.end method


# virtual methods
.method public a(Z)I
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public a(Landroid/app/Activity;Landroid/view/ViewGroup;)V
    .locals 2

    .line 183
    invoke-virtual {p1}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    .line 185
    new-instance p1, Landroidx/constraintlayout/widget/ConstraintLayout$a;

    const v0, 0x7f0705e6

    .line 186
    invoke-virtual {p0, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    const/4 v1, -0x1

    invoke-direct {p1, v1, v0}, Landroidx/constraintlayout/widget/ConstraintLayout$a;-><init>(II)V

    const/4 v0, 0x0

    .line 187
    iput v0, p1, Landroidx/constraintlayout/widget/ConstraintLayout$a;->s:I

    .line 188
    iput v0, p1, Landroidx/constraintlayout/widget/ConstraintLayout$a;->q:I

    .line 189
    iput v0, p1, Landroidx/constraintlayout/widget/ConstraintLayout$a;->h:I

    const v1, 0x7f0705ea

    .line 190
    invoke-virtual {p0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p0

    iput p0, p1, Landroidx/constraintlayout/widget/ConstraintLayout$a;->topMargin:I

    .line 191
    invoke-virtual {p2, p1}, Landroid/view/ViewGroup;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 192
    invoke-virtual {p2, v0}, Landroid/view/ViewGroup;->setVerticalFadingEdgeEnabled(Z)V

    return-void
.end method

.method public a(Landroid/view/View;Lcom/oplus/camera/ui/menu/BasicOptionItemList;Landroid/content/Context;I)V
    .locals 0

    return-void
.end method

.method public a(Lcom/oplus/camera/screen/ScreenRelativeLayout;)V
    .locals 0

    .line 30
    sget p1, Lcom/oplus/camera/screen/f;->a:I

    iput p1, p0, Lcom/oplus/camera/screen/b/b;->b:I

    .line 31
    sget p1, Lcom/oplus/camera/screen/f;->b:I

    iput p1, p0, Lcom/oplus/camera/screen/b/b;->c:I

    return-void
.end method

.method public a(Lcom/oplus/camera/screen/b/o$a;)V
    .locals 0

    const/4 p0, 0x0

    .line 157
    new-array p0, p0, [Ljava/lang/Object;

    invoke-interface {p1, p0}, Lcom/oplus/camera/screen/b/o$a;->call([Ljava/lang/Object;)V

    return-void
.end method

.method public a(Lcom/oplus/camera/screen/b/o$a;Lcom/oplus/camera/screen/b/o$a;)V
    .locals 0

    const/4 p0, 0x0

    .line 174
    new-array p0, p0, [Ljava/lang/Object;

    invoke-interface {p1, p0}, Lcom/oplus/camera/screen/b/o$a;->call([Ljava/lang/Object;)V

    return-void
.end method

.method public a(Lcom/oplus/camera/screen/b/o$a;Lcom/oplus/camera/screen/b/o$a;Lcom/oplus/camera/screen/b/o$a;)V
    .locals 0

    const/4 p0, 0x1

    .line 171
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

    if-eqz p1, :cond_1

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

.method public a(Lcom/oplus/camera/ui/CameraUIInterface;II)Z
    .locals 0

    .line 231
    invoke-interface {p1}, Lcom/oplus/camera/ui/CameraUIInterface;->am()I

    move-result p0

    if-lt p3, p0, :cond_0

    invoke-interface {p1}, Lcom/oplus/camera/ui/CameraUIInterface;->an()I

    move-result p0

    if-gt p3, p0, :cond_0

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

    .line 208
    new-array v0, p0, [F

    .line 209
    new-array p0, p0, [I

    .line 210
    invoke-virtual {p1, p0}, Landroid/view/View;->getLocationOnScreen([I)V

    const/4 v1, 0x0

    .line 211
    aget v2, p0, v1

    int-to-float v2, v2

    sub-float/2addr p2, v2

    aput p2, v0, v1

    const/4 p2, 0x1

    .line 212
    aget p0, p0, p2

    int-to-float p0, p0

    sub-float/2addr p3, p0

    aput p3, v0, p2

    .line 214
    invoke-virtual {p1}, Landroid/view/View;->getPaddingLeft()I

    move-result p0

    .line 215
    invoke-virtual {p1}, Landroid/view/View;->getWidth()I

    move-result p3

    invoke-virtual {p1}, Landroid/view/View;->getPaddingRight()I

    move-result v2

    sub-int/2addr p3, v2

    .line 216
    aget v2, v0, v1

    int-to-float p0, p0

    invoke-static {v2, p0}, Ljava/lang/Math;->max(FF)F

    move-result p0

    int-to-float p3, p3

    invoke-static {p0, p3}, Ljava/lang/Math;->min(FF)F

    move-result p0

    aput p0, v0, v1

    .line 218
    invoke-virtual {p1}, Landroid/view/View;->getPaddingTop()I

    move-result p0

    .line 219
    invoke-virtual {p1}, Landroid/view/View;->getHeight()I

    move-result p3

    invoke-virtual {p1}, Landroid/view/View;->getPaddingBottom()I

    move-result p1

    sub-int/2addr p3, p1

    .line 220
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

    .line 239
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

    .line 243
    new-array p0, p0, [I

    const/4 p3, 0x0

    aput p1, p0, p3

    const/4 p1, 0x1

    aput p2, p0, p1

    return-object p0
.end method

.method protected b(Landroid/app/Activity;)V
    .locals 17

    move-object/from16 v8, p0

    .line 36
    invoke-super/range {p0 .. p1}, Lcom/oplus/camera/screen/b/a;->b(Landroid/app/Activity;)V

    .line 37
    invoke-virtual/range {p1 .. p1}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v9

    const v0, 0x7f070dbc

    .line 38
    invoke-virtual {v9, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    neg-int v0, v0

    const v1, 0x7f070d9b

    .line 39
    invoke-virtual {v9, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    sub-int/2addr v0, v2

    const v2, 0x7f070184

    .line 40
    invoke-virtual {v9, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v7

    .line 41
    invoke-virtual {v9, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v10

    const v1, 0x7f070d88

    .line 42
    invoke-virtual {v9, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v3

    const v1, 0x7f070d82

    .line 43
    invoke-virtual {v9, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v6

    const v1, 0x7f070d7b

    .line 44
    invoke-virtual {v9, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v4

    const v1, 0x7f070dc1

    .line 45
    invoke-virtual {v9, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v5

    .line 47
    new-instance v11, Lcom/oplus/camera/screen/c;

    const/4 v12, 0x2

    new-array v1, v12, [I

    fill-array-data v1, :array_0

    const/4 v13, 0x4

    new-array v2, v13, [I

    const/4 v14, 0x0

    aput v14, v2, v14

    const/4 v15, 0x1

    aput v14, v2, v15

    aput v14, v2, v12

    const/16 v16, 0x3

    aput v0, v2, v16

    invoke-direct {v11, v1, v2}, Lcom/oplus/camera/screen/c;-><init>([I[I)V

    .line 49
    new-array v0, v12, [I

    fill-array-data v0, :array_1

    iput-object v0, v11, Lcom/oplus/camera/screen/c;->c:[I

    .line 50
    iput v14, v11, Lcom/oplus/camera/screen/c;->d:I

    .line 51
    new-instance v2, Lcom/oplus/camera/screen/b/-$$Lambda$b$9A--AMwStlUnPFsbFFG16r6tn8M;

    move-object v0, v2

    move-object/from16 v1, p0

    move-object v15, v2

    move-object/from16 v2, p1

    invoke-direct/range {v0 .. v7}, Lcom/oplus/camera/screen/b/-$$Lambda$b$9A--AMwStlUnPFsbFFG16r6tn8M;-><init>(Lcom/oplus/camera/screen/b/b;Landroid/app/Activity;IIIII)V

    iput-object v15, v11, Lcom/oplus/camera/screen/c;->f:Lcom/oplus/camera/screen/c$a;

    .line 58
    iget-object v0, v8, Lcom/oplus/camera/screen/b/b;->a:Ljava/util/Map;

    const v1, 0x7f090437

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1, v11}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 60
    new-instance v0, Lcom/oplus/camera/screen/c;

    new-array v1, v12, [I

    fill-array-data v1, :array_2

    new-array v2, v13, [I

    aput v14, v2, v14

    const/4 v3, 0x1

    aput v10, v2, v3

    aput v14, v2, v12

    aput v14, v2, v16

    invoke-direct {v0, v1, v2}, Lcom/oplus/camera/screen/c;-><init>([I[I)V

    .line 62
    new-array v1, v12, [I

    fill-array-data v1, :array_3

    iput-object v1, v0, Lcom/oplus/camera/screen/c;->c:[I

    .line 63
    iget-object v1, v8, Lcom/oplus/camera/screen/b/b;->a:Ljava/util/Map;

    const v2, 0x7f090436

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v1, v2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 65
    new-instance v0, Lcom/oplus/camera/screen/c;

    new-array v1, v13, [I

    fill-array-data v1, :array_4

    new-array v2, v13, [I

    aput v14, v2, v14

    const/4 v3, 0x1

    aput v14, v2, v3

    aput v14, v2, v12

    const v4, 0x7f070d80

    .line 66
    invoke-virtual {v9, v4}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v4

    aput v4, v2, v16

    invoke-direct {v0, v1, v2}, Lcom/oplus/camera/screen/c;-><init>([I[I)V

    .line 67
    new-array v1, v12, [I

    const/4 v2, -0x2

    aput v2, v1, v14

    const v2, 0x7f070d7f

    .line 68
    invoke-virtual {v9, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    aput v2, v1, v3

    iput-object v1, v0, Lcom/oplus/camera/screen/c;->c:[I

    .line 69
    iget-object v1, v8, Lcom/oplus/camera/screen/b/b;->a:Ljava/util/Map;

    const v2, 0x7f090438

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v1, v2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 71
    invoke-direct/range {p0 .. p1}, Lcom/oplus/camera/screen/b/b;->i(Landroid/app/Activity;)V

    .line 72
    invoke-virtual/range {p0 .. p1}, Lcom/oplus/camera/screen/b/b;->f(Landroid/app/Activity;)V

    .line 73
    invoke-virtual/range {p0 .. p1}, Lcom/oplus/camera/screen/b/b;->g(Landroid/app/Activity;)V

    .line 74
    invoke-direct/range {p0 .. p1}, Lcom/oplus/camera/screen/b/b;->h(Landroid/app/Activity;)V

    return-void

    nop

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

    :array_4
    .array-data 4
        0x2
        0x7f090435
        0xe
        0x0
    .end array-data
.end method

.method public b(Landroid/app/Activity;I)V
    .locals 2

    const p0, 0x7f0900a2

    const v0, 0x7f090168

    const/4 v1, 0x2

    if-eq p2, v1, :cond_0

    const/4 p2, 0x0

    .line 260
    invoke-static {p1, v0, p2}, Lcom/oplus/camera/util/Util;->a(Landroid/app/Activity;IZ)V

    .line 261
    invoke-static {p1, p0, p2}, Lcom/oplus/camera/util/Util;->a(Landroid/app/Activity;IZ)V

    const p0, 0x7f0903c3

    .line 262
    invoke-static {p1, p0, p2}, Lcom/oplus/camera/util/Util;->a(Landroid/app/Activity;IZ)V

    const p0, 0x7f0903c0

    .line 263
    invoke-static {p1, p0, p2}, Lcom/oplus/camera/util/Util;->a(Landroid/app/Activity;IZ)V

    const p0, 0x7f090419

    const p2, 0x7f08063f

    .line 264
    invoke-static {p1, p0, p2}, Lcom/oplus/camera/util/Util;->a(Landroid/app/Activity;II)V

    goto :goto_0

    :cond_0
    const/4 p2, 0x1

    .line 255
    invoke-static {p1, v0, p2}, Lcom/oplus/camera/util/Util;->a(Landroid/app/Activity;IZ)V

    .line 256
    invoke-static {p1, p0, p2}, Lcom/oplus/camera/util/Util;->a(Landroid/app/Activity;IZ)V

    :goto_0
    return-void
.end method

.method public b(Lcom/oplus/camera/screen/b/o$a;)V
    .locals 0

    return-void
.end method

.method public b(Lcom/oplus/camera/screen/b/o$a;Lcom/oplus/camera/screen/b/o$a;)V
    .locals 0

    const/4 p0, 0x0

    .line 196
    new-array p0, p0, [Ljava/lang/Object;

    invoke-interface {p2, p0}, Lcom/oplus/camera/screen/b/o$a;->call([Ljava/lang/Object;)V

    return-void
.end method

.method public c()Ljava/util/ArrayList;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 248
    new-instance p0, Ljava/util/ArrayList;

    invoke-direct {p0}, Ljava/util/ArrayList;-><init>()V

    return-object p0
.end method

.method public c(Lcom/oplus/camera/screen/b/o$a;Lcom/oplus/camera/screen/b/o$a;)V
    .locals 0

    const/4 p0, 0x0

    .line 204
    new-array p0, p0, [Ljava/lang/Object;

    invoke-interface {p1, p0}, Lcom/oplus/camera/screen/b/o$a;->call([Ljava/lang/Object;)V

    return-void
.end method

.method public d(Lcom/oplus/camera/screen/b/o$a;Lcom/oplus/camera/screen/b/o$a;)V
    .locals 0

    const/4 p0, 0x0

    .line 226
    new-array p0, p0, [Ljava/lang/Object;

    invoke-interface {p1, p0}, Lcom/oplus/camera/screen/b/o$a;->call([Ljava/lang/Object;)V

    return-void
.end method

.method protected f(Landroid/app/Activity;)V
    .locals 8

    .line 108
    invoke-virtual {p1}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f070475

    .line 110
    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v1

    const v2, 0x7f070615

    .line 111
    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v2

    const v3, 0x7f070477

    .line 112
    invoke-virtual {v0, v3}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v0

    const/4 v3, 0x4

    .line 113
    new-array v4, v3, [I

    fill-array-data v4, :array_0

    .line 117
    new-array v3, v3, [I

    const/4 v5, 0x0

    aput v5, v3, v5

    const/4 v6, 0x1

    aput v5, v3, v6

    const/4 v7, 0x2

    aput v2, v3, v7

    const/4 v2, 0x3

    aput v1, v3, v2

    .line 118
    new-instance v1, Lcom/oplus/camera/screen/c;

    invoke-direct {v1, v4, v3}, Lcom/oplus/camera/screen/c;-><init>([I[I)V

    .line 119
    new-array v2, v7, [I

    aput v0, v2, v5

    aput v0, v2, v6

    iput-object v2, v1, Lcom/oplus/camera/screen/c;->c:[I

    .line 120
    iget-object p0, p0, Lcom/oplus/camera/screen/b/b;->a:Ljava/util/Map;

    const v0, 0x7f090168

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-interface {p0, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const p0, 0x7f090145

    .line 121
    invoke-virtual {p1, p0}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object p0

    const/16 p1, 0x8

    .line 122
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

.method protected g(Landroid/app/Activity;)V
    .locals 7

    .line 126
    invoke-virtual {p1}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const v0, 0x7f070476

    .line 127
    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v0

    const v1, 0x7f070475

    .line 128
    invoke-virtual {p1, v1}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v1

    const v2, 0x7f070477

    .line 129
    invoke-virtual {p1, v2}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result p1

    const/4 v2, 0x4

    .line 130
    new-array v3, v2, [I

    fill-array-data v3, :array_0

    .line 134
    new-array v2, v2, [I

    const/4 v4, 0x0

    aput v0, v2, v4

    const/4 v0, 0x1

    aput v4, v2, v0

    const/4 v5, 0x2

    aput v4, v2, v5

    const/4 v6, 0x3

    aput v1, v2, v6

    .line 135
    new-instance v1, Lcom/oplus/camera/screen/c;

    invoke-direct {v1, v3, v2}, Lcom/oplus/camera/screen/c;-><init>([I[I)V

    .line 136
    new-array v2, v5, [I

    aput p1, v2, v4

    aput p1, v2, v0

    iput-object v2, v1, Lcom/oplus/camera/screen/c;->c:[I

    .line 137
    iget-object p0, p0, Lcom/oplus/camera/screen/b/b;->a:Ljava/util/Map;

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

.method public i()Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public j()I
    .locals 0

    const/4 p0, 0x0

    return p0
.end method
