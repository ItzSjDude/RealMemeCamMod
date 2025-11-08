.class public abstract Lcom/oplus/camera/screen/b/c;
.super Lcom/oplus/camera/screen/b/a;
.source "FullScreenMode.java"


# instance fields
.field protected d:I

.field protected e:F

.field protected f:I

.field protected g:F

.field protected h:Landroid/view/ViewGroup;


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 38
    invoke-direct {p0}, Lcom/oplus/camera/screen/b/a;-><init>()V

    const/4 v0, 0x0

    .line 40
    iput v0, p0, Lcom/oplus/camera/screen/b/c;->d:I

    const/4 v1, 0x0

    .line 41
    iput v1, p0, Lcom/oplus/camera/screen/b/c;->e:F

    .line 42
    iput v0, p0, Lcom/oplus/camera/screen/b/c;->f:I

    const/high16 v0, 0x41a00000    # 20.0f

    .line 43
    iput v0, p0, Lcom/oplus/camera/screen/b/c;->g:F

    return-void
.end method

.method private static synthetic a(ILandroid/view/View;)V
    .locals 1

    .line 225
    instance-of v0, p1, Lcom/oplus/camera/ui/control/ThumbImageView;

    if-eqz v0, :cond_0

    .line 226
    check-cast p1, Lcom/oplus/camera/ui/control/ThumbImageView;

    invoke-virtual {p1, p0}, Lcom/oplus/camera/ui/control/ThumbImageView;->setPaddingPlus(I)V

    :cond_0
    return-void
.end method

.method private static synthetic a(Landroid/app/Activity;IIIILandroid/content/res/Resources;Landroid/view/View;)V
    .locals 2

    const p6, 0x7f090299

    .line 271
    invoke-virtual {p0, p6}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object p6

    check-cast p6, Lcom/oplus/camera/ui/menu/setting/CameraSettingMenuPanel;

    .line 272
    invoke-virtual {p6}, Lcom/oplus/camera/ui/menu/setting/CameraSettingMenuPanel;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    const/4 v1, -0x1

    iput v1, v0, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 273
    invoke-virtual {p6}, Lcom/oplus/camera/ui/menu/setting/CameraSettingMenuPanel;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    iput p1, v0, Landroid/view/ViewGroup$LayoutParams;->height:I

    const/high16 p1, 0x43340000    # 180.0f

    .line 274
    invoke-virtual {p6, p1}, Lcom/oplus/camera/ui/menu/setting/CameraSettingMenuPanel;->setRotation(F)V

    .line 275
    invoke-virtual {p6, p2}, Lcom/oplus/camera/ui/menu/setting/CameraSettingMenuPanel;->setPaddingLeftRight(I)V

    int-to-float p1, p3

    .line 276
    invoke-virtual {p6, p1}, Lcom/oplus/camera/ui/menu/setting/CameraSettingMenuPanel;->setTranslationY(F)V

    int-to-float p2, p4

    .line 277
    invoke-virtual {p6, p2}, Lcom/oplus/camera/ui/menu/setting/CameraSettingMenuPanel;->setTranslationX(F)V

    .line 278
    new-instance p3, Landroid/graphics/PointF;

    invoke-direct {p3, p2, p1}, Landroid/graphics/PointF;-><init>(FF)V

    const p1, 0x7f09005a

    invoke-virtual {p6, p1, p3}, Lcom/oplus/camera/ui/menu/setting/CameraSettingMenuPanel;->setTag(ILjava/lang/Object;)V

    const p1, 0x7f09029b

    .line 281
    invoke-virtual {p0, p1}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object p0

    check-cast p0, Lcom/oplus/camera/ui/menu/setting/CameraSettingMenuPanel;

    if-eqz p0, :cond_0

    .line 284
    invoke-virtual {p0}, Lcom/oplus/camera/ui/menu/setting/CameraSettingMenuPanel;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p1

    const p2, 0x7f070550

    .line 285
    invoke-virtual {p5, p2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p2

    iput p2, p1, Landroid/view/ViewGroup$LayoutParams;->width:I

    const p1, 0x7f0704ed

    .line 286
    invoke-virtual {p5, p1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p1

    int-to-float p1, p1

    invoke-virtual {p0, p1}, Lcom/oplus/camera/ui/menu/setting/CameraSettingMenuPanel;->setPivotX(F)V

    const p1, 0x7f0704ef

    .line 287
    invoke-virtual {p5, p1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p1

    int-to-float p1, p1

    invoke-virtual {p0, p1}, Lcom/oplus/camera/ui/menu/setting/CameraSettingMenuPanel;->setPivotY(F)V

    const/high16 p1, 0x42b40000    # 90.0f

    .line 288
    invoke-virtual {p0, p1}, Lcom/oplus/camera/ui/menu/setting/CameraSettingMenuPanel;->setRotation(F)V

    :cond_0
    return-void
.end method

.method private synthetic a(Landroid/app/Activity;IIIILandroid/view/View;)V
    .locals 8

    const p6, 0x7f090435

    .line 140
    invoke-virtual {p1, p6}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    move-object v0, p1

    check-cast v0, Lcom/oplus/camera/ui/preview/af;

    .line 141
    invoke-virtual {v0}, Lcom/oplus/camera/ui/preview/af;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p1

    const/4 p6, -0x1

    iput p6, p1, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 142
    invoke-virtual {v0}, Lcom/oplus/camera/ui/preview/af;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p1

    iput p2, p1, Landroid/view/ViewGroup$LayoutParams;->height:I

    mul-int/lit8 v1, p2, 0x2

    .line 143
    div-int/lit8 p4, p4, 0x2

    sub-int p1, p2, p4

    sub-int v4, p1, p5

    iget v7, p0, Lcom/oplus/camera/screen/b/c;->g:F

    const/4 v5, 0x0

    const/high16 v6, 0x40000000    # 2.0f

    move v2, p2

    move v3, p3

    invoke-virtual/range {v0 .. v7}, Lcom/oplus/camera/ui/preview/af;->a(IIIIFFF)V

    return-void
.end method

.method private static synthetic a(Landroid/app/Activity;ILandroid/view/View;)V
    .locals 4

    const p2, 0x7f0902d5

    .line 105
    invoke-virtual {p0, p2}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object p0

    check-cast p0, Lcom/oplus/camera/professional/p;

    if-nez p0, :cond_0

    return-void

    :cond_0
    const/4 p2, 0x1

    .line 111
    invoke-virtual {p0, p2, p1}, Lcom/oplus/camera/professional/p;->d(II)V

    .line 112
    invoke-virtual {p0}, Lcom/oplus/camera/professional/p;->getChildCount()I

    move-result v0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_2

    .line 115
    invoke-virtual {p0, v1}, Lcom/oplus/camera/professional/p;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    .line 117
    instance-of v3, v2, Lcom/oplus/camera/professional/LevelPanel;

    if-eqz v3, :cond_1

    .line 118
    check-cast v2, Lcom/oplus/camera/professional/LevelPanel;

    invoke-virtual {v2, p2, p1}, Lcom/oplus/camera/professional/LevelPanel;->a(II)V

    .line 119
    invoke-virtual {v2}, Lcom/oplus/camera/professional/LevelPanel;->e()V

    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_2
    return-void
.end method

.method private static synthetic a(Landroid/app/Activity;Landroid/view/View;)V
    .locals 0

    const p1, 0x7f090196

    .line 174
    invoke-virtual {p0, p1}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object p0

    check-cast p0, Landroid/widget/RelativeLayout;

    const/16 p1, 0x8

    .line 175
    invoke-virtual {p0, p1}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    return-void
.end method

.method private static synthetic a(Landroid/view/View;)V
    .locals 1

    .line 194
    instance-of v0, p0, Lcom/oplus/camera/ui/inverse/InverseColorRelativeLayout;

    if-eqz v0, :cond_0

    .line 195
    check-cast p0, Lcom/oplus/camera/ui/inverse/InverseColorRelativeLayout;

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/oplus/camera/ui/inverse/InverseColorRelativeLayout;->setBackgroundAlwaysTransparent(Z)V

    :cond_0
    return-void
.end method

.method private synthetic b(Landroid/app/Activity;Landroid/view/View;)V
    .locals 0

    const p2, 0x7f09023a

    .line 90
    invoke-virtual {p1, p2}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lcom/oplus/camera/professional/ListProfessionalModeBar;

    if-nez p1, :cond_0

    return-void

    .line 96
    :cond_0
    invoke-virtual {p1, p0}, Lcom/oplus/camera/professional/ListProfessionalModeBar;->b(Lcom/oplus/camera/screen/b/a;)V

    return-void
.end method

.method private synthetic c(Landroid/app/Activity;Landroid/view/View;)V
    .locals 0

    const p2, 0x7f0902d9

    .line 79
    invoke-virtual {p1, p2}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lcom/oplus/camera/professional/v$a;

    if-eqz p1, :cond_0

    .line 82
    invoke-virtual {p0}, Lcom/oplus/camera/screen/b/c;->e()Landroid/widget/RelativeLayout$LayoutParams;

    move-result-object p0

    invoke-virtual {p1, p0}, Lcom/oplus/camera/professional/v$a;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    :cond_0
    return-void
.end method

.method private h(Landroid/app/Activity;)V
    .locals 2

    .line 171
    new-instance v0, Lcom/oplus/camera/screen/c;

    const/4 v1, 0x0

    invoke-direct {v0, v1, v1}, Lcom/oplus/camera/screen/c;-><init>([I[I)V

    const/4 v1, 0x2

    .line 172
    new-array v1, v1, [I

    fill-array-data v1, :array_0

    iput-object v1, v0, Lcom/oplus/camera/screen/c;->c:[I

    .line 173
    new-instance v1, Lcom/oplus/camera/screen/b/-$$Lambda$c$AdZtnvmVnJu8jLKSCpuYaaOp92g;

    invoke-direct {v1, p1}, Lcom/oplus/camera/screen/b/-$$Lambda$c$AdZtnvmVnJu8jLKSCpuYaaOp92g;-><init>(Landroid/app/Activity;)V

    iput-object v1, v0, Lcom/oplus/camera/screen/c;->f:Lcom/oplus/camera/screen/c$a;

    .line 177
    iget-object p0, p0, Lcom/oplus/camera/screen/b/c;->a:Ljava/util/Map;

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

.method public static synthetic lambda$AdZtnvmVnJu8jLKSCpuYaaOp92g(Landroid/app/Activity;Landroid/view/View;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/oplus/camera/screen/b/c;->a(Landroid/app/Activity;Landroid/view/View;)V

    return-void
.end method

.method public static synthetic lambda$GHRKJPYD08BlDp1Z0enwXPrbbIU(Landroid/view/View;)V
    .locals 0

    invoke-static {p0}, Lcom/oplus/camera/screen/b/c;->a(Landroid/view/View;)V

    return-void
.end method

.method public static synthetic lambda$IGePNhGjYtSyAd-1wlDoXGiQf6Y(Lcom/oplus/camera/screen/b/c;Landroid/app/Activity;Landroid/view/View;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/oplus/camera/screen/b/c;->c(Landroid/app/Activity;Landroid/view/View;)V

    return-void
.end method

.method public static synthetic lambda$OOGEV7H5hZGH4UCl1-IGH_wEOoU(ILandroid/view/View;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/oplus/camera/screen/b/c;->a(ILandroid/view/View;)V

    return-void
.end method

.method public static synthetic lambda$VYvn82MIvFRTUFSh36CSed-2Bnw(Lcom/oplus/camera/screen/b/c;Landroid/app/Activity;Landroid/view/View;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/oplus/camera/screen/b/c;->b(Landroid/app/Activity;Landroid/view/View;)V

    return-void
.end method

.method public static synthetic lambda$ZhjdO6cm4r2na2LW7eQl0DZFCwk(Landroid/app/Activity;IIIILandroid/content/res/Resources;Landroid/view/View;)V
    .locals 0

    invoke-static/range {p0 .. p6}, Lcom/oplus/camera/screen/b/c;->a(Landroid/app/Activity;IIIILandroid/content/res/Resources;Landroid/view/View;)V

    return-void
.end method

.method public static synthetic lambda$fs8ZxGTk7h1dR34uAq_8woW7eXo(Lcom/oplus/camera/screen/b/c;Landroid/app/Activity;IIIILandroid/view/View;)V
    .locals 0

    invoke-direct/range {p0 .. p6}, Lcom/oplus/camera/screen/b/c;->a(Landroid/app/Activity;IIIILandroid/view/View;)V

    return-void
.end method

.method public static synthetic lambda$zSuyYc5N9XJ28OjDxHWUvPMbD3g(Landroid/app/Activity;ILandroid/view/View;)V
    .locals 0

    invoke-static {p0, p1, p2}, Lcom/oplus/camera/screen/b/c;->a(Landroid/app/Activity;ILandroid/view/View;)V

    return-void
.end method


# virtual methods
.method public a(Landroid/app/Activity;I)I
    .locals 0

    .line 594
    invoke-virtual {p1}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    const p1, 0x7f0704ec

    .line 595
    invoke-virtual {p0, p1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p0

    return p0
.end method

.method public a(Z)I
    .locals 0

    if-eqz p1, :cond_0

    const/16 p0, 0x1f

    goto :goto_0

    :cond_0
    const/4 p0, 0x3

    :goto_0
    return p0
.end method

.method public a(Landroid/util/Size;)Landroid/widget/RelativeLayout$LayoutParams;
    .locals 3

    if-nez p1, :cond_0

    const-string p0, "FullScreenMode"

    const-string p1, "layoutPreviewFrame, previewSize is null."

    .line 380
    invoke-static {p0, p1}, Lcom/oplus/camera/e;->f(Ljava/lang/String;Ljava/lang/String;)V

    const/4 p0, 0x0

    return-object p0

    .line 385
    :cond_0
    invoke-virtual {p1}, Landroid/util/Size;->getHeight()I

    move-result v0

    invoke-virtual {p1}, Landroid/util/Size;->getWidth()I

    move-result p1

    invoke-virtual {p0, v0, p1}, Lcom/oplus/camera/screen/b/c;->b(II)Landroid/graphics/Rect;

    move-result-object p1

    .line 386
    new-instance v0, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-virtual {p1}, Landroid/graphics/Rect;->width()I

    move-result v1

    invoke-virtual {p1}, Landroid/graphics/Rect;->height()I

    move-result v2

    invoke-direct {v0, v1, v2}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    const/4 v1, 0x0

    .line 387
    iput v1, v0, Landroid/widget/RelativeLayout$LayoutParams;->topMargin:I

    .line 388
    iget v1, p1, Landroid/graphics/Rect;->left:I

    iput v1, v0, Landroid/widget/RelativeLayout$LayoutParams;->leftMargin:I

    const/16 v1, 0xa

    .line 389
    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    const/16 v1, 0x9

    .line 390
    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 391
    iget p1, p1, Landroid/graphics/Rect;->left:I

    iput p1, p0, Lcom/oplus/camera/screen/b/c;->d:I

    return-object v0
.end method

.method public a(Landroid/app/Activity;Landroid/widget/RelativeLayout;I)Lcom/oplus/camera/ui/RotableTextView;
    .locals 0

    const/4 p0, 0x0

    return-object p0
.end method

.method public a(Landroid/app/Activity;Landroid/view/ViewGroup;)V
    .locals 2

    .line 441
    invoke-virtual {p1}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    .line 443
    new-instance p1, Landroidx/constraintlayout/widget/ConstraintLayout$a;

    const v0, 0x7f070786

    invoke-virtual {p0, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    const v1, 0x7f070783

    .line 444
    invoke-virtual {p0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    invoke-direct {p1, v0, v1}, Landroidx/constraintlayout/widget/ConstraintLayout$a;-><init>(II)V

    const/4 v0, 0x0

    .line 445
    iput v0, p1, Landroidx/constraintlayout/widget/ConstraintLayout$a;->s:I

    .line 446
    iput v0, p1, Landroidx/constraintlayout/widget/ConstraintLayout$a;->k:I

    const v0, 0x7f070781

    .line 447
    invoke-virtual {p0, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p1, Landroidx/constraintlayout/widget/ConstraintLayout$a;->bottomMargin:I

    const v0, 0x7f070785

    .line 448
    invoke-virtual {p0, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p1, Landroidx/constraintlayout/widget/ConstraintLayout$a;->rightMargin:I

    .line 449
    invoke-virtual {p2, p1}, Landroid/view/ViewGroup;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    const/4 p1, 0x1

    .line 450
    invoke-virtual {p2, p1}, Landroid/view/ViewGroup;->setVerticalFadingEdgeEnabled(Z)V

    const p1, 0x7f070782

    .line 451
    invoke-virtual {p0, p1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p0

    invoke-virtual {p2, p0}, Landroid/view/ViewGroup;->setFadingEdgeLength(I)V

    return-void
.end method

.method protected a(Landroid/app/Activity;Lcom/oplus/camera/screen/c;)V
    .locals 3

    .line 295
    invoke-virtual {p1}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const/4 v0, 0x2

    .line 296
    new-array v0, v0, [I

    const v1, 0x7f070caf

    invoke-virtual {p1, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    const/4 v2, 0x0

    aput v1, v0, v2

    const v1, 0x7f070ca6

    invoke-virtual {p1, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p1

    const/4 v1, 0x1

    aput p1, v0, v1

    iput-object v0, p2, Lcom/oplus/camera/screen/c;->c:[I

    .line 297
    iget-object p0, p0, Lcom/oplus/camera/screen/b/c;->a:Ljava/util/Map;

    const p1, 0x7f0901cd

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-interface {p0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method protected a(Landroid/app/Activity;Lcom/oplus/camera/screen/c;Lcom/oplus/camera/screen/c;)V
    .locals 11

    .line 181
    invoke-virtual {p1}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const v0, 0x7f070183

    .line 182
    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    const v0, 0x7f070185

    .line 183
    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    .line 184
    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    const v2, 0x7f070a84

    .line 185
    invoke-virtual {p1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    const v2, 0x7f070b98

    .line 186
    invoke-virtual {p1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    const v3, 0x7f070bd6

    .line 187
    invoke-virtual {p1, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v3

    const v4, 0x7f070cd8

    .line 188
    invoke-virtual {p1, v4}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v4

    const v5, 0x7f070bd9

    .line 189
    invoke-virtual {p1, v5}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v5

    const v6, 0x7f070b97

    .line 190
    invoke-virtual {p1, v6}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p1

    const/4 v6, 0x2

    .line 192
    new-array v7, v6, [I

    const/4 v8, 0x0

    aput v1, v7, v8

    const/4 v1, -0x1

    const/4 v9, 0x1

    aput v1, v7, v9

    iput-object v7, p2, Lcom/oplus/camera/screen/c;->c:[I

    .line 193
    sget-object v7, Lcom/oplus/camera/screen/b/-$$Lambda$c$GHRKJPYD08BlDp1Z0enwXPrbbIU;->INSTANCE:Lcom/oplus/camera/screen/b/-$$Lambda$c$GHRKJPYD08BlDp1Z0enwXPrbbIU;

    iput-object v7, p2, Lcom/oplus/camera/screen/c;->f:Lcom/oplus/camera/screen/c$a;

    .line 198
    iget-object v7, p0, Lcom/oplus/camera/screen/b/c;->a:Ljava/util/Map;

    const v10, 0x7f0900e5

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    invoke-interface {v7, v10, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 200
    new-array p2, v6, [I

    aput v0, p2, v8

    aput v1, p2, v9

    iput-object p2, p3, Lcom/oplus/camera/screen/c;->c:[I

    .line 201
    iget-object p2, p0, Lcom/oplus/camera/screen/b/c;->a:Ljava/util/Map;

    const v0, 0x7f0900e4

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-interface {p2, v0, p3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 203
    new-instance p2, Lcom/oplus/camera/screen/c;

    new-array p3, v6, [I

    fill-array-data p3, :array_0

    const/4 v0, 0x4

    new-array v1, v0, [I

    fill-array-data v1, :array_1

    invoke-direct {p2, p3, v1}, Lcom/oplus/camera/screen/c;-><init>([I[I)V

    .line 204
    iget-object p3, p0, Lcom/oplus/camera/screen/b/c;->a:Ljava/util/Map;

    const v1, 0x7f090338

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {p3, v1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 206
    new-instance p2, Lcom/oplus/camera/screen/c;

    new-array p3, v0, [I

    fill-array-data p3, :array_2

    new-array v1, v0, [I

    aput v8, v1, v8

    aput v8, v1, v9

    aput v8, v1, v6

    const/4 v7, 0x3

    aput v2, v1, v7

    invoke-direct {p2, p3, v1}, Lcom/oplus/camera/screen/c;-><init>([I[I)V

    .line 210
    new-array p3, v6, [I

    aput p1, p3, v8

    aput p1, p3, v9

    iput-object p3, p2, Lcom/oplus/camera/screen/c;->c:[I

    .line 211
    iget-object p3, p0, Lcom/oplus/camera/screen/b/c;->a:Ljava/util/Map;

    const v1, 0x7f090384

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {p3, v1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 213
    new-instance p2, Lcom/oplus/camera/screen/c;

    new-array p3, v0, [I

    fill-array-data p3, :array_3

    new-array v1, v0, [I

    aput v8, v1, v8

    aput v8, v1, v9

    aput v8, v1, v6

    aput v2, v1, v7

    invoke-direct {p2, p3, v1}, Lcom/oplus/camera/screen/c;-><init>([I[I)V

    .line 217
    new-array p3, v6, [I

    aput p1, p3, v8

    aput p1, p3, v9

    iput-object p3, p2, Lcom/oplus/camera/screen/c;->c:[I

    .line 218
    iget-object p3, p0, Lcom/oplus/camera/screen/b/c;->a:Ljava/util/Map;

    const v1, 0x7f090419

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {p3, v1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 220
    new-instance p2, Lcom/oplus/camera/screen/c;

    new-array p3, v0, [I

    fill-array-data p3, :array_4

    new-array v1, v0, [I

    aput v8, v1, v8

    aput v3, v1, v9

    aput v8, v1, v6

    aput v8, v1, v7

    invoke-direct {p2, p3, v1}, Lcom/oplus/camera/screen/c;-><init>([I[I)V

    .line 224
    new-instance p3, Lcom/oplus/camera/screen/b/-$$Lambda$c$OOGEV7H5hZGH4UCl1-IGH_wEOoU;

    invoke-direct {p3, v5}, Lcom/oplus/camera/screen/b/-$$Lambda$c$OOGEV7H5hZGH4UCl1-IGH_wEOoU;-><init>(I)V

    iput-object p3, p2, Lcom/oplus/camera/screen/c;->f:Lcom/oplus/camera/screen/c$a;

    .line 229
    iget-object p3, p0, Lcom/oplus/camera/screen/b/c;->a:Ljava/util/Map;

    const v1, 0x7f0903b4

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {p3, v1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 230
    iget-object p3, p0, Lcom/oplus/camera/screen/b/c;->a:Ljava/util/Map;

    const v1, 0x7f0900a1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {p3, v1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 232
    new-instance p2, Lcom/oplus/camera/screen/c;

    new-array p3, v0, [I

    fill-array-data p3, :array_5

    new-array v0, v0, [I

    aput v8, v0, v8

    aput v4, v0, v9

    aput v8, v0, v6

    aput v8, v0, v7

    invoke-direct {p2, p3, v0}, Lcom/oplus/camera/screen/c;-><init>([I[I)V

    .line 236
    new-array p3, v6, [I

    aput p1, p3, v8

    aput p1, p3, v9

    iput-object p3, p2, Lcom/oplus/camera/screen/c;->c:[I

    .line 237
    iget-object p0, p0, Lcom/oplus/camera/screen/b/c;->a:Ljava/util/Map;

    const p1, 0x7f0902e7

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-interface {p0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void

    nop

    :array_0
    .array-data 4
        0xd
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
        0xe
        0x0
        0x2
        0x7f090338
    .end array-data

    :array_3
    .array-data 4
        0xe
        0x0
        0x2
        0x7f090338
    .end array-data

    :array_4
    .array-data 4
        0xe
        0x0
        0x3
        0x7f090338
    .end array-data

    :array_5
    .array-data 4
        0xe
        0x0
        0x3
        0x7f090338
    .end array-data
.end method

.method protected a(Landroid/app/Activity;Lcom/oplus/camera/screen/c;Lcom/oplus/camera/screen/c;Lcom/oplus/camera/screen/c;)V
    .locals 4

    .line 320
    invoke-virtual {p1}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const v0, 0x7f070c72

    .line 321
    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result p1

    const/4 v0, 0x2

    .line 322
    new-array v1, v0, [I

    const/4 v2, 0x0

    aput p1, v1, v2

    const/4 v3, 0x1

    aput p1, v1, v3

    iput-object v1, p2, Lcom/oplus/camera/screen/c;->c:[I

    .line 323
    new-array v0, v0, [I

    aput p1, v0, v2

    aput p1, v0, v3

    iput-object v0, p3, Lcom/oplus/camera/screen/c;->c:[I

    .line 325
    iget-object p1, p0, Lcom/oplus/camera/screen/b/c;->a:Ljava/util/Map;

    const v0, 0x7f0903c3

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-interface {p1, v0, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 326
    iget-object p1, p0, Lcom/oplus/camera/screen/b/c;->a:Ljava/util/Map;

    const p2, 0x7f0903c0

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    invoke-interface {p1, p2, p3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 327
    iget-object p0, p0, Lcom/oplus/camera/screen/b/c;->a:Ljava/util/Map;

    const p1, 0x7f0903b7

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-interface {p0, p1, p4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method protected a(Landroid/app/Activity;Lcom/oplus/camera/screen/c;Lcom/oplus/camera/screen/c;Lcom/oplus/camera/screen/c;Lcom/oplus/camera/screen/c;)V
    .locals 4

    const/4 v0, 0x2

    .line 77
    new-array v1, v0, [I

    fill-array-data v1, :array_0

    iput-object v1, p2, Lcom/oplus/camera/screen/c;->c:[I

    .line 78
    new-instance v1, Lcom/oplus/camera/screen/b/-$$Lambda$c$IGePNhGjYtSyAd-1wlDoXGiQf6Y;

    invoke-direct {v1, p0, p1}, Lcom/oplus/camera/screen/b/-$$Lambda$c$IGePNhGjYtSyAd-1wlDoXGiQf6Y;-><init>(Lcom/oplus/camera/screen/b/c;Landroid/app/Activity;)V

    iput-object v1, p2, Lcom/oplus/camera/screen/c;->f:Lcom/oplus/camera/screen/c$a;

    .line 85
    iget-object v1, p0, Lcom/oplus/camera/screen/b/c;->a:Ljava/util/Map;

    const v2, 0x7f0902d9

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v1, v2, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const p2, 0x7f0704dd

    .line 87
    invoke-static {p2}, Lcom/oplus/camera/util/Util;->i(I)I

    move-result p2

    .line 88
    new-array v1, v0, [I

    const/4 v2, 0x0

    aput p2, v1, v2

    const/4 p2, 0x1

    const/4 v3, -0x1

    aput v3, v1, p2

    iput-object v1, p3, Lcom/oplus/camera/screen/c;->c:[I

    .line 89
    new-instance v1, Lcom/oplus/camera/screen/b/-$$Lambda$c$VYvn82MIvFRTUFSh36CSed-2Bnw;

    invoke-direct {v1, p0, p1}, Lcom/oplus/camera/screen/b/-$$Lambda$c$VYvn82MIvFRTUFSh36CSed-2Bnw;-><init>(Lcom/oplus/camera/screen/b/c;Landroid/app/Activity;)V

    iput-object v1, p3, Lcom/oplus/camera/screen/c;->f:Lcom/oplus/camera/screen/c$a;

    .line 98
    iget-object v1, p0, Lcom/oplus/camera/screen/b/c;->a:Ljava/util/Map;

    const v3, 0x7f09023a

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v1, v3, p3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const p3, 0x7f0704e8

    .line 100
    invoke-static {p3}, Lcom/oplus/camera/util/Util;->i(I)I

    move-result p3

    const v1, 0x7f0704e5

    .line 101
    invoke-static {v1}, Lcom/oplus/camera/util/Util;->i(I)I

    move-result v1

    .line 102
    new-array v3, v0, [I

    aput p3, v3, v2

    aput v1, v3, p2

    iput-object v3, p4, Lcom/oplus/camera/screen/c;->c:[I

    .line 103
    invoke-virtual {p0}, Lcom/oplus/camera/screen/b/c;->k()I

    move-result p2

    .line 104
    new-instance p3, Lcom/oplus/camera/screen/b/-$$Lambda$c$zSuyYc5N9XJ28OjDxHWUvPMbD3g;

    invoke-direct {p3, p1, p2}, Lcom/oplus/camera/screen/b/-$$Lambda$c$zSuyYc5N9XJ28OjDxHWUvPMbD3g;-><init>(Landroid/app/Activity;I)V

    iput-object p3, p4, Lcom/oplus/camera/screen/c;->f:Lcom/oplus/camera/screen/c$a;

    .line 123
    iget-object p1, p0, Lcom/oplus/camera/screen/b/c;->a:Ljava/util/Map;

    const p2, 0x7f0902d5

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    invoke-interface {p1, p2, p4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 125
    new-array p1, v0, [I

    fill-array-data p1, :array_1

    iput-object p1, p5, Lcom/oplus/camera/screen/c;->c:[I

    .line 126
    iget-object p0, p0, Lcom/oplus/camera/screen/b/c;->a:Ljava/util/Map;

    const p1, 0x7f0902d6

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-interface {p0, p1, p5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void

    nop

    :array_0
    .array-data 4
        -0x2
        -0x1
    .end array-data

    :array_1
    .array-data 4
        -0x2
        -0x2
    .end array-data
.end method

.method public a(Landroid/app/Activity;Lcom/oplus/camera/ui/menu/setting/CameraSettingMenuPanel;)V
    .locals 2

    .line 370
    invoke-virtual {p2}, Lcom/oplus/camera/ui/menu/setting/CameraSettingMenuPanel;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p0

    .line 371
    invoke-virtual {p1}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f070550

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 372
    invoke-virtual {p1}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    const v0, 0x7f0704ed

    invoke-virtual {p0, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p0

    int-to-float p0, p0

    invoke-virtual {p2, p0}, Lcom/oplus/camera/ui/menu/setting/CameraSettingMenuPanel;->setPivotX(F)V

    .line 373
    invoke-virtual {p1}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    const p1, 0x7f0704ef

    invoke-virtual {p0, p1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p0

    int-to-float p0, p0

    invoke-virtual {p2, p0}, Lcom/oplus/camera/ui/menu/setting/CameraSettingMenuPanel;->setPivotY(F)V

    const/high16 p0, 0x42b40000    # 90.0f

    .line 374
    invoke-virtual {p2, p0}, Lcom/oplus/camera/ui/menu/setting/CameraSettingMenuPanel;->setRotation(F)V

    return-void
.end method

.method public a(Landroid/view/View;Lcom/oplus/camera/ui/menu/BasicOptionItemList;Landroid/content/Context;I)V
    .locals 0

    if-eqz p1, :cond_0

    .line 352
    invoke-virtual {p1}, Landroid/view/View;->getRootView()Landroid/view/View;

    move-result-object p1

    const p3, 0x7f090096

    invoke-virtual {p1, p3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/view/ViewGroup;

    iput-object p1, p0, Lcom/oplus/camera/screen/b/c;->h:Landroid/view/ViewGroup;

    .line 355
    :cond_0
    invoke-virtual {p0}, Lcom/oplus/camera/screen/b/c;->j()I

    move-result p0

    invoke-virtual {p2, p0}, Lcom/oplus/camera/ui/menu/BasicOptionItemList;->setScreenLayoutMode(I)V

    return-void
.end method

.method public a(Lcom/oplus/camera/screen/b/o$a;)V
    .locals 0

    if-eqz p1, :cond_0

    const/4 p0, 0x0

    .line 606
    new-array p0, p0, [Ljava/lang/Object;

    invoke-interface {p1, p0}, Lcom/oplus/camera/screen/b/o$a;->call([Ljava/lang/Object;)V

    goto :goto_0

    :cond_0
    const-string p0, "FullScreenMode"

    const-string p1, "updateZoomMargin, callBack is null"

    .line 608
    invoke-static {p0, p1}, Lcom/oplus/camera/e;->f(Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    return-void
.end method

.method public a(Lcom/oplus/camera/screen/b/o$a;Lcom/oplus/camera/screen/b/o$a;)V
    .locals 0

    const/4 p0, 0x0

    .line 432
    new-array p0, p0, [Ljava/lang/Object;

    invoke-interface {p2, p0}, Lcom/oplus/camera/screen/b/o$a;->call([Ljava/lang/Object;)V

    return-void
.end method

.method public a()Z
    .locals 0

    const/4 p0, 0x1

    return p0
.end method

.method public a(Landroid/app/Activity;Landroid/graphics/Rect;)Z
    .locals 1

    .line 465
    invoke-virtual {p1}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    const p1, 0x7f070183

    .line 466
    invoke-virtual {p0, p1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p1

    const v0, 0x7f070a84

    .line 467
    invoke-virtual {p0, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p0

    .line 468
    sget v0, Lcom/oplus/camera/screen/f;->a:I

    sub-int/2addr v0, p1

    sub-int/2addr v0, p0

    int-to-float p0, v0

    .line 469
    iget p1, p2, Landroid/graphics/Rect;->right:I

    int-to-float p1, p1

    cmpg-float p0, p1, p0

    if-gtz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public a(Landroid/app/Activity;ZFF)Z
    .locals 0

    .line 456
    invoke-virtual {p1}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    const p1, 0x7f070183

    .line 457
    invoke-virtual {p0, p1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p1

    const p2, 0x7f070a84

    .line 458
    invoke-virtual {p0, p2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p0

    .line 459
    sget p2, Lcom/oplus/camera/screen/f;->a:I

    sub-int/2addr p2, p1

    sub-int/2addr p2, p0

    int-to-float p0, p2

    cmpg-float p0, p3, p0

    if-gtz p0, :cond_0

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

    .line 486
    new-array v0, p0, [F

    .line 487
    new-array p0, p0, [I

    .line 488
    invoke-virtual {p1, p0}, Landroid/view/View;->getLocationOnScreen([I)V

    const/4 v1, 0x0

    .line 489
    aget v2, p0, v1

    int-to-float v2, v2

    sub-float/2addr p2, v2

    aput p2, v0, v1

    const/4 p2, 0x1

    .line 490
    aget p0, p0, p2

    int-to-float p0, p0

    sub-float/2addr p3, p0

    aput p3, v0, p2

    .line 492
    invoke-virtual {p1}, Landroid/view/View;->getPaddingLeft()I

    move-result p0

    .line 493
    invoke-virtual {p1}, Landroid/view/View;->getWidth()I

    move-result p3

    invoke-virtual {p1}, Landroid/view/View;->getPaddingRight()I

    move-result v2

    sub-int/2addr p3, v2

    .line 494
    aget v2, v0, v1

    int-to-float p0, p0

    invoke-static {v2, p0}, Ljava/lang/Math;->max(FF)F

    move-result p0

    int-to-float p3, p3

    invoke-static {p0, p3}, Ljava/lang/Math;->min(FF)F

    move-result p0

    aput p0, v0, v1

    .line 496
    invoke-virtual {p1}, Landroid/view/View;->getPaddingTop()I

    move-result p0

    .line 497
    invoke-virtual {p1}, Landroid/view/View;->getHeight()I

    move-result p3

    invoke-virtual {p1}, Landroid/view/View;->getPaddingBottom()I

    move-result p1

    sub-int/2addr p3, p1

    .line 498
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

    .line 529
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

    .line 533
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

    .line 411
    new-array v0, v0, [I

    .line 413
    invoke-virtual {p1}, Landroid/util/Size;->getWidth()I

    move-result v1

    int-to-double v1, v1

    invoke-virtual {p1}, Landroid/util/Size;->getHeight()I

    move-result p1

    int-to-double v3, p1

    div-double/2addr v1, v3

    .line 414
    iget p1, p0, Lcom/oplus/camera/screen/b/c;->c:I

    const/4 v3, 0x0

    aput p1, v0, v3

    .line 415
    iget p1, p0, Lcom/oplus/camera/screen/b/c;->c:I

    int-to-double v3, p1

    div-double/2addr v3, v1

    double-to-int p1, v3

    const/4 v1, 0x1

    aput p1, v0, v1

    .line 417
    invoke-virtual {p2}, Landroid/util/Size;->getWidth()I

    move-result p1

    int-to-double v1, p1

    invoke-virtual {p2}, Landroid/util/Size;->getHeight()I

    move-result p1

    int-to-double p1, p1

    div-double/2addr v1, p1

    .line 418
    iget p1, p0, Lcom/oplus/camera/screen/b/c;->c:I

    const/4 p2, 0x2

    aput p1, v0, p2

    .line 419
    iget p0, p0, Lcom/oplus/camera/screen/b/c;->c:I

    int-to-double p0, p0

    div-double/2addr p0, v1

    double-to-int p0, p0

    const/4 p1, 0x3

    aput p0, v0, p1

    return-object v0
.end method

.method public b(II)Landroid/graphics/Rect;
    .locals 3

    .line 398
    invoke-static {}, Lcom/oplus/camera/util/Util;->getScreenWidth()I

    move-result v0

    iput v0, p0, Lcom/oplus/camera/screen/b/c;->b:I

    .line 399
    invoke-static {}, Lcom/oplus/camera/util/Util;->getScreenHeight()I

    move-result v0

    iput v0, p0, Lcom/oplus/camera/screen/b/c;->c:I

    .line 401
    new-instance v0, Landroid/graphics/Rect;

    iget v1, p0, Lcom/oplus/camera/screen/b/c;->c:I

    const/4 v2, 0x0

    invoke-direct {v0, v2, v2, v2, v1}, Landroid/graphics/Rect;-><init>(IIII)V

    int-to-float p2, p2

    int-to-float p1, p1

    div-float/2addr p2, p1

    .line 403
    iget p1, p0, Lcom/oplus/camera/screen/b/c;->c:I

    int-to-float p1, p1

    div-float/2addr p1, p2

    invoke-static {p1}, Ljava/lang/Math;->round(F)I

    move-result p1

    .line 404
    iget p2, p0, Lcom/oplus/camera/screen/b/c;->b:I

    sub-int/2addr p2, p1

    div-int/lit8 p2, p2, 0x2

    iput p2, v0, Landroid/graphics/Rect;->left:I

    .line 405
    iget p0, p0, Lcom/oplus/camera/screen/b/c;->b:I

    iget p1, v0, Landroid/graphics/Rect;->left:I

    sub-int/2addr p0, p1

    iput p0, v0, Landroid/graphics/Rect;->right:I

    return-object v0
.end method

.method protected b(Landroid/app/Activity;)V
    .locals 7

    .line 48
    invoke-super {p0, p1}, Lcom/oplus/camera/screen/b/a;->b(Landroid/app/Activity;)V

    .line 49
    invoke-virtual {p1}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f070dba

    .line 50
    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    int-to-float v1, v1

    iput v1, p0, Lcom/oplus/camera/screen/b/c;->e:F

    const v1, 0x7f070577

    .line 51
    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lcom/oplus/camera/screen/b/c;->f:I

    const/4 v0, 0x0

    .line 53
    invoke-virtual {p0, p1, v0}, Lcom/oplus/camera/screen/b/c;->c(Landroid/app/Activity;Lcom/oplus/camera/screen/c;)V

    .line 54
    invoke-virtual {p0, p1, v0, v0}, Lcom/oplus/camera/screen/b/c;->a(Landroid/app/Activity;Lcom/oplus/camera/screen/c;Lcom/oplus/camera/screen/c;)V

    .line 55
    invoke-virtual {p0, p1}, Lcom/oplus/camera/screen/b/c;->f(Landroid/app/Activity;)V

    .line 56
    invoke-direct {p0, p1}, Lcom/oplus/camera/screen/b/c;->h(Landroid/app/Activity;)V

    .line 57
    invoke-virtual {p0, p1, v0}, Lcom/oplus/camera/screen/b/c;->a(Landroid/app/Activity;Lcom/oplus/camera/screen/c;)V

    .line 58
    invoke-virtual {p0, p1, v0, v0}, Lcom/oplus/camera/screen/b/c;->c(Landroid/app/Activity;Lcom/oplus/camera/screen/c;Lcom/oplus/camera/screen/c;)V

    .line 59
    invoke-virtual {p0, p1, v0}, Lcom/oplus/camera/screen/b/c;->d(Landroid/app/Activity;Lcom/oplus/camera/screen/c;)V

    .line 60
    invoke-virtual {p0, p1, v0}, Lcom/oplus/camera/screen/b/c;->f(Landroid/app/Activity;Lcom/oplus/camera/screen/c;)V

    .line 61
    invoke-virtual {p0, p1, v0}, Lcom/oplus/camera/screen/b/c;->e(Landroid/app/Activity;Lcom/oplus/camera/screen/c;)V

    .line 62
    invoke-virtual {p0, p1, v0}, Lcom/oplus/camera/screen/b/c;->b(Landroid/app/Activity;Lcom/oplus/camera/screen/c;)V

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object v1, p0

    move-object v2, p1

    .line 63
    invoke-virtual/range {v1 .. v6}, Lcom/oplus/camera/screen/b/c;->a(Landroid/app/Activity;Lcom/oplus/camera/screen/c;Lcom/oplus/camera/screen/c;Lcom/oplus/camera/screen/c;Lcom/oplus/camera/screen/c;)V

    .line 64
    invoke-virtual {p0, p1, v0, v0, v0}, Lcom/oplus/camera/screen/b/c;->a(Landroid/app/Activity;Lcom/oplus/camera/screen/c;Lcom/oplus/camera/screen/c;Lcom/oplus/camera/screen/c;)V

    .line 65
    invoke-virtual {p0, p1, v0, v0}, Lcom/oplus/camera/screen/b/c;->b(Landroid/app/Activity;Lcom/oplus/camera/screen/c;Lcom/oplus/camera/screen/c;)V

    return-void
.end method

.method protected b(Landroid/app/Activity;Lcom/oplus/camera/screen/c;)V
    .locals 2

    .line 69
    invoke-virtual {p1}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const v0, 0x7f070cd4

    .line 70
    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result p1

    const/4 v0, 0x2

    .line 71
    new-array v0, v0, [I

    const/4 v1, 0x0

    aput p1, v0, v1

    const/4 p1, 0x1

    const/4 v1, -0x2

    aput v1, v0, p1

    iput-object v0, p2, Lcom/oplus/camera/screen/c;->c:[I

    .line 72
    iget-object p0, p0, Lcom/oplus/camera/screen/b/c;->a:Ljava/util/Map;

    const p1, 0x7f09027d

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-interface {p0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method protected b(Landroid/app/Activity;Lcom/oplus/camera/screen/c;Lcom/oplus/camera/screen/c;)V
    .locals 5

    .line 331
    invoke-virtual {p1}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const/4 p3, 0x2

    .line 332
    new-array v0, p3, [I

    fill-array-data v0, :array_0

    const v1, 0x7f070c19

    .line 333
    invoke-virtual {p1, v1}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result p1

    .line 335
    new-instance v1, Lcom/oplus/camera/screen/c;

    const/4 v2, 0x4

    new-array v2, v2, [I

    const/4 v3, 0x0

    aput v3, v2, v3

    const/4 v4, 0x1

    aput v3, v2, v4

    aput v3, v2, p3

    const/4 p3, 0x3

    aput p1, v2, p3

    invoke-direct {v1, v0, v2}, Lcom/oplus/camera/screen/c;-><init>([I[I)V

    .line 337
    iget-object p1, p0, Lcom/oplus/camera/screen/b/c;->a:Ljava/util/Map;

    const p3, 0x7f0903b8

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p3

    invoke-interface {p1, p3, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 338
    iget-object p0, p0, Lcom/oplus/camera/screen/b/c;->a:Ljava/util/Map;

    const p1, 0x7f0903bc

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-interface {p0, p1, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void

    nop

    :array_0
    .array-data 4
        0xc
        0x0
    .end array-data
.end method

.method public b(Lcom/oplus/camera/screen/b/o$a;)V
    .locals 0

    const/4 p0, 0x0

    .line 513
    new-array p0, p0, [Ljava/lang/Object;

    invoke-interface {p1, p0}, Lcom/oplus/camera/screen/b/o$a;->call([Ljava/lang/Object;)V

    return-void
.end method

.method public b(Lcom/oplus/camera/screen/b/o$a;Lcom/oplus/camera/screen/b/o$a;)V
    .locals 0

    const/4 p0, 0x0

    .line 509
    new-array p0, p0, [Ljava/lang/Object;

    invoke-interface {p1, p0}, Lcom/oplus/camera/screen/b/o$a;->call([Ljava/lang/Object;)V

    return-void
.end method

.method public b(Landroid/app/Activity;Landroid/graphics/Rect;)Z
    .locals 1

    .line 474
    invoke-virtual {p1}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    const p1, 0x7f070183

    .line 475
    invoke-virtual {p0, p1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p1

    const v0, 0x7f070a84

    .line 476
    invoke-virtual {p0, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p0

    .line 477
    sget v0, Lcom/oplus/camera/screen/f;->a:I

    sub-int/2addr v0, p1

    sub-int/2addr v0, p0

    int-to-float p0, v0

    .line 478
    invoke-virtual {p2}, Landroid/graphics/Rect;->centerX()I

    move-result p1

    int-to-float p1, p1

    cmpl-float p0, p1, p0

    if-ltz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
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

    .line 538
    invoke-super {p0}, Lcom/oplus/camera/screen/b/a;->c()Ljava/util/ArrayList;

    move-result-object p0

    const-string v0, "movie"

    .line 539
    invoke-virtual {p0, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-object p0
.end method

.method protected c(Landroid/app/Activity;Lcom/oplus/camera/screen/c;)V
    .locals 13

    .line 130
    invoke-virtual {p1}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f070d7b

    .line 132
    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v5

    const v1, 0x7f070dc2

    .line 133
    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v6

    const v1, 0x7f070da3

    .line 134
    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    const v2, 0x7f070da6

    .line 135
    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v7

    const v2, 0x7f070dbc

    .line 136
    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    const/4 v9, 0x2

    .line 138
    new-array v2, v9, [I

    mul-int/lit8 v3, v5, 0x2

    const/4 v10, 0x0

    aput v3, v2, v10

    const/4 v11, 0x1

    aput v5, v2, v11

    iput-object v2, p2, Lcom/oplus/camera/screen/c;->c:[I

    .line 139
    new-instance v12, Lcom/oplus/camera/screen/b/-$$Lambda$c$fs8ZxGTk7h1dR34uAq_8woW7eXo;

    move-object v2, v12

    move-object v3, p0

    move-object v4, p1

    move v8, v1

    invoke-direct/range {v2 .. v8}, Lcom/oplus/camera/screen/b/-$$Lambda$c$fs8ZxGTk7h1dR34uAq_8woW7eXo;-><init>(Lcom/oplus/camera/screen/b/c;Landroid/app/Activity;IIII)V

    iput-object v12, p2, Lcom/oplus/camera/screen/c;->f:Lcom/oplus/camera/screen/c$a;

    .line 147
    iget-object p1, p0, Lcom/oplus/camera/screen/b/c;->a:Ljava/util/Map;

    const v2, 0x7f090437

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {p1, v2, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 149
    new-instance p1, Lcom/oplus/camera/screen/c;

    const/4 p2, 0x4

    new-array v2, p2, [I

    fill-array-data v2, :array_0

    new-array p2, p2, [I

    aput v10, p2, v10

    neg-int v0, v0

    sub-int/2addr v0, v1

    aput v0, p2, v11

    aput v10, p2, v9

    const/4 v0, 0x3

    aput v10, p2, v0

    invoke-direct {p1, v2, p2}, Lcom/oplus/camera/screen/c;-><init>([I[I)V

    .line 153
    new-array p2, v9, [I

    fill-array-data p2, :array_1

    iput-object p2, p1, Lcom/oplus/camera/screen/c;->c:[I

    .line 154
    iget-object p0, p0, Lcom/oplus/camera/screen/b/c;->a:Ljava/util/Map;

    const p2, 0x7f090436

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    invoke-interface {p0, p2, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void

    nop

    :array_0
    .array-data 4
        0x3
        0x7f090435
        0xe
        0x0
    .end array-data

    :array_1
    .array-data 4
        -0x2
        -0x2
    .end array-data
.end method

.method protected c(Landroid/app/Activity;Lcom/oplus/camera/screen/c;Lcom/oplus/camera/screen/c;)V
    .locals 1

    .line 364
    iget-object p1, p0, Lcom/oplus/camera/screen/b/c;->a:Ljava/util/Map;

    const v0, 0x7f090312

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-interface {p1, v0, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 365
    iget-object p0, p0, Lcom/oplus/camera/screen/b/c;->a:Ljava/util/Map;

    const p1, 0x7f0902a7

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-interface {p0, p1, p3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public c(Lcom/oplus/camera/screen/b/o$a;)V
    .locals 0

    const/4 p0, 0x0

    .line 517
    new-array p0, p0, [Ljava/lang/Object;

    invoke-interface {p1, p0}, Lcom/oplus/camera/screen/b/o$a;->call([Ljava/lang/Object;)V

    return-void
.end method

.method public c(Lcom/oplus/camera/screen/b/o$a;Lcom/oplus/camera/screen/b/o$a;)V
    .locals 0

    const/4 p0, 0x0

    .line 521
    new-array p0, p0, [Ljava/lang/Object;

    invoke-interface {p2, p0}, Lcom/oplus/camera/screen/b/o$a;->call([Ljava/lang/Object;)V

    return-void
.end method

.method public c(Landroid/app/Activity;I)[I
    .locals 5

    .line 546
    invoke-virtual {p1}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    const/4 p1, 0x3

    .line 547
    new-array p1, p1, [I

    const/4 v0, 0x7

    const/16 v1, 0x8

    const/4 v2, 0x2

    const/4 v3, 0x1

    const/4 v4, 0x0

    if-eq p2, v0, :cond_1

    const/16 v0, 0x9

    if-eq p2, v0, :cond_0

    goto :goto_0

    :cond_0
    const p2, 0x7f070120

    .line 551
    invoke-virtual {p0, p2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p2

    aput p2, p1, v4

    const p2, 0x7f070121

    .line 552
    invoke-virtual {p0, p2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p0

    aput p0, p1, v3

    aput v1, p1, v2

    goto :goto_0

    :cond_1
    const p2, 0x7f070103

    .line 558
    invoke-virtual {p0, p2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p2

    aput p2, p1, v4

    const p2, 0x7f070104

    .line 559
    invoke-virtual {p0, p2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p0

    aput p0, p1, v3

    aput v1, p1, v2

    :goto_0
    return-object p1
.end method

.method public d()Landroid/widget/RelativeLayout$LayoutParams;
    .locals 3

    .line 570
    invoke-static {}, Lcom/oplus/camera/MyApplication;->d()Landroid/content/Context;

    move-result-object p0

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    const v0, 0x7f070cd4

    .line 571
    invoke-virtual {p0, v0}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v0

    .line 572
    new-instance v1, Landroid/widget/RelativeLayout$LayoutParams;

    const/4 v2, -0x2

    invoke-direct {v1, v0, v2}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    const/16 v0, 0x9

    .line 573
    invoke-virtual {v1, v0}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    const/16 v0, 0xa

    .line 574
    invoke-virtual {v1, v0}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    const v0, 0x7f070582

    .line 575
    invoke-virtual {p0, v0}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v0

    const v2, 0x7f070581

    .line 576
    invoke-virtual {p0, v2}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result p0

    const/4 v2, 0x0

    .line 577
    invoke-virtual {v1, p0, v0, v2, v2}, Landroid/widget/RelativeLayout$LayoutParams;->setMargins(IIII)V

    return-object v1
.end method

.method protected d(Landroid/app/Activity;Lcom/oplus/camera/screen/c;)V
    .locals 4

    .line 301
    invoke-virtual {p1}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f070c72

    .line 303
    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v0

    const/4 v1, 0x2

    .line 304
    new-array v1, v1, [I

    const/4 v2, 0x0

    aput v0, v1, v2

    const/4 v3, 0x1

    aput v0, v1, v3

    iput-object v1, p2, Lcom/oplus/camera/screen/c;->c:[I

    .line 305
    iget-object v0, p0, Lcom/oplus/camera/screen/b/c;->a:Ljava/util/Map;

    const v1, 0x7f090168

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 306
    iget-object p0, p0, Lcom/oplus/camera/screen/b/c;->a:Ljava/util/Map;

    const v0, 0x7f090145

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {p0, v1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 307
    invoke-virtual {p1, v0}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object p0

    .line 308
    invoke-virtual {p0, v2}, Landroid/view/View;->setVisibility(I)V

    return-void
.end method

.method public d(Lcom/oplus/camera/screen/b/o$a;Lcom/oplus/camera/screen/b/o$a;)V
    .locals 0

    const/4 p0, 0x0

    .line 525
    new-array p0, p0, [Ljava/lang/Object;

    invoke-interface {p2, p0}, Lcom/oplus/camera/screen/b/o$a;->call([Ljava/lang/Object;)V

    return-void
.end method

.method public e()Landroid/widget/RelativeLayout$LayoutParams;
    .locals 2

    .line 614
    new-instance p0, Landroid/widget/RelativeLayout$LayoutParams;

    const/4 v0, -0x2

    const/4 v1, -0x1

    invoke-direct {p0, v0, v1}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    const/16 v0, 0xb

    .line 616
    invoke-virtual {p0, v0}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    return-object p0
.end method

.method protected e(Landroid/app/Activity;Lcom/oplus/camera/screen/c;)V
    .locals 2

    .line 312
    invoke-virtual {p1}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const v0, 0x7f070c72

    .line 314
    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result p1

    const/4 v0, 0x2

    .line 315
    new-array v0, v0, [I

    const/4 v1, 0x0

    aput p1, v0, v1

    const/4 v1, 0x1

    aput p1, v0, v1

    iput-object v0, p2, Lcom/oplus/camera/screen/c;->c:[I

    .line 316
    iget-object p0, p0, Lcom/oplus/camera/screen/b/c;->a:Ljava/util/Map;

    const p1, 0x7f0900a2

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-interface {p0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public f()Landroid/widget/RelativeLayout$LayoutParams;
    .locals 2

    .line 623
    new-instance p0, Landroid/widget/RelativeLayout$LayoutParams;

    const v0, 0x7f0704dd

    .line 624
    invoke-static {v0}, Lcom/oplus/camera/util/Util;->i(I)I

    move-result v0

    const/4 v1, -0x2

    invoke-direct {p0, v0, v1}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    const/16 v0, 0xb

    .line 626
    invoke-virtual {p0, v0}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    const/16 v0, 0xf

    .line 627
    invoke-virtual {p0, v0}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    const v0, 0x7f0704d9

    .line 628
    invoke-static {v0}, Lcom/oplus/camera/util/Util;->i(I)I

    move-result v0

    iput v0, p0, Landroid/widget/RelativeLayout$LayoutParams;->rightMargin:I

    return-object p0
.end method

.method protected f(Landroid/app/Activity;)V
    .locals 16

    .line 241
    invoke-static {}, Lcom/oplus/camera/util/Util;->l()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    const v0, 0x7f070554

    .line 242
    invoke-virtual {v7, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    const v1, 0x7f070567

    .line 243
    invoke-virtual {v7, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    const v2, 0x7f070565

    .line 244
    invoke-virtual {v7, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    const v3, 0x7f070561

    .line 245
    invoke-virtual {v7, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v3

    const v4, 0x7f070563

    .line 246
    invoke-virtual {v7, v4}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v4

    const v5, 0x7f070562

    .line 247
    invoke-virtual {v7, v5}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v5

    const v6, 0x7f07075b

    .line 248
    invoke-virtual {v7, v6}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v6

    const v8, 0x7f0704d2

    .line 249
    invoke-virtual {v7, v8}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v8

    const v9, 0x7f0704ca

    .line 250
    invoke-virtual {v7, v9}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v9

    const v10, 0x7f0704cc

    .line 251
    invoke-virtual {v7, v10}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v10

    .line 254
    new-instance v11, Lcom/oplus/camera/screen/c;

    const/4 v12, 0x4

    new-array v13, v12, [I

    fill-array-data v13, :array_0

    new-array v12, v12, [I

    const/4 v14, 0x0

    aput v3, v12, v14

    const/4 v3, 0x1

    aput v2, v12, v3

    const/4 v2, 0x2

    aput v14, v12, v2

    const/4 v15, 0x3

    aput v14, v12, v15

    invoke-direct {v11, v13, v12}, Lcom/oplus/camera/screen/c;-><init>([I[I)V

    const/16 v12, 0x10e

    .line 261
    iput v12, v11, Lcom/oplus/camera/screen/c;->d:I

    .line 262
    new-array v12, v2, [I

    aput v5, v12, v14

    aput v4, v12, v3

    iput-object v12, v11, Lcom/oplus/camera/screen/c;->e:[I

    .line 266
    new-array v2, v2, [I

    aput v0, v2, v14

    aput v1, v2, v3

    iput-object v2, v11, Lcom/oplus/camera/screen/c;->c:[I

    .line 270
    new-instance v0, Lcom/oplus/camera/screen/b/-$$Lambda$c$ZhjdO6cm4r2na2LW7eQl0DZFCwk;

    move-object v1, v0

    move-object/from16 v2, p1

    move v3, v6

    move v4, v8

    move v5, v10

    move v6, v9

    invoke-direct/range {v1 .. v7}, Lcom/oplus/camera/screen/b/-$$Lambda$c$ZhjdO6cm4r2na2LW7eQl0DZFCwk;-><init>(Landroid/app/Activity;IIIILandroid/content/res/Resources;)V

    iput-object v0, v11, Lcom/oplus/camera/screen/c;->f:Lcom/oplus/camera/screen/c$a;

    move-object/from16 v0, p0

    .line 291
    iget-object v0, v0, Lcom/oplus/camera/screen/b/c;->a:Ljava/util/Map;

    const v1, 0x7f09029a

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1, v11}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void

    :array_0
    .array-data 4
        0x9
        0x0
        0xa
        0x0
    .end array-data
.end method

.method protected f(Landroid/app/Activity;Lcom/oplus/camera/screen/c;)V
    .locals 2

    .line 342
    invoke-virtual {p1}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const v0, 0x7f070c77

    .line 344
    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result p1

    const/4 v0, 0x2

    .line 345
    new-array v0, v0, [I

    const/4 v1, 0x0

    aput p1, v0, v1

    const/4 p1, 0x1

    const/4 v1, -0x1

    aput v1, v0, p1

    iput-object v0, p2, Lcom/oplus/camera/screen/c;->c:[I

    .line 346
    iget-object p0, p0, Lcom/oplus/camera/screen/b/c;->a:Ljava/util/Map;

    const p1, 0x7f09014a

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-interface {p0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public g()Landroid/widget/RelativeLayout$LayoutParams;
    .locals 4

    const p0, 0x7f0704e8

    .line 635
    invoke-static {p0}, Lcom/oplus/camera/util/Util;->i(I)I

    move-result p0

    const v0, 0x7f0704e5

    .line 636
    invoke-static {v0}, Lcom/oplus/camera/util/Util;->i(I)I

    move-result v0

    const v1, 0x7f0704e7

    .line 637
    invoke-static {v1}, Lcom/oplus/camera/util/Util;->i(I)I

    move-result v1

    const v2, 0x7f0704e6

    .line 638
    invoke-static {v2}, Lcom/oplus/camera/util/Util;->i(I)I

    move-result v2

    .line 639
    new-instance v3, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v3, p0, v0}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    const/16 p0, 0xa

    .line 640
    invoke-virtual {v3, p0}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    const/16 p0, 0xb

    .line 641
    invoke-virtual {v3, p0}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 642
    iput v1, v3, Landroid/widget/RelativeLayout$LayoutParams;->topMargin:I

    .line 643
    iput v2, v3, Landroid/widget/RelativeLayout$LayoutParams;->rightMargin:I

    return-object v3
.end method

.method public j()I
    .locals 0

    const/4 p0, 0x1

    return p0
.end method

.method public k()I
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public l()Z
    .locals 0

    const/4 p0, 0x1

    return p0
.end method

.method public m()I
    .locals 0

    const/4 p0, 0x7

    return p0
.end method
