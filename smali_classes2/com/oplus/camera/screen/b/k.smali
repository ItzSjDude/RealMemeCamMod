.class public abstract Lcom/oplus/camera/screen/b/k;
.super Lcom/oplus/camera/screen/b/a;
.source "RackScreenMode.java"


# instance fields
.field protected d:Z

.field protected e:Landroid/view/ViewGroup;

.field protected f:Landroid/graphics/Rect;

.field private g:Landroid/app/Activity;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 41
    invoke-direct {p0}, Lcom/oplus/camera/screen/b/a;-><init>()V

    const/4 v0, 0x0

    .line 43
    iput-boolean v0, p0, Lcom/oplus/camera/screen/b/k;->d:Z

    const/4 v0, 0x0

    .line 45
    iput-object v0, p0, Lcom/oplus/camera/screen/b/k;->f:Landroid/graphics/Rect;

    .line 46
    iput-object v0, p0, Lcom/oplus/camera/screen/b/k;->g:Landroid/app/Activity;

    return-void
.end method

.method private static synthetic a(Landroid/app/Activity;IIILandroid/view/View;)V
    .locals 1

    const p4, 0x7f090299

    .line 228
    invoke-virtual {p0, p4}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object p4

    check-cast p4, Lcom/oplus/camera/ui/menu/setting/CameraSettingMenuPanel;

    .line 229
    invoke-virtual {p4}, Lcom/oplus/camera/ui/menu/setting/CameraSettingMenuPanel;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    iput p1, v0, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 230
    invoke-virtual {p4}, Lcom/oplus/camera/ui/menu/setting/CameraSettingMenuPanel;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p1

    iput p2, p1, Landroid/view/ViewGroup$LayoutParams;->height:I

    const/4 p1, 0x0

    .line 231
    invoke-virtual {p4, p1}, Lcom/oplus/camera/ui/menu/setting/CameraSettingMenuPanel;->setRotation(F)V

    .line 232
    invoke-virtual {p4, p1}, Lcom/oplus/camera/ui/menu/setting/CameraSettingMenuPanel;->setTranslationY(F)V

    .line 233
    invoke-virtual {p4, p1}, Lcom/oplus/camera/ui/menu/setting/CameraSettingMenuPanel;->setTranslationX(F)V

    .line 234
    new-instance p2, Landroid/graphics/PointF;

    invoke-direct {p2, p1, p1}, Landroid/graphics/PointF;-><init>(FF)V

    const v0, 0x7f09005a

    invoke-virtual {p4, v0, p2}, Lcom/oplus/camera/ui/menu/setting/CameraSettingMenuPanel;->setTag(ILjava/lang/Object;)V

    .line 235
    invoke-virtual {p4, p3}, Lcom/oplus/camera/ui/menu/setting/CameraSettingMenuPanel;->setPaddingLeftRight(I)V

    const p2, 0x7f09029b

    .line 237
    invoke-virtual {p0, p2}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object p0

    check-cast p0, Lcom/oplus/camera/ui/menu/setting/CameraSettingMenuPanel;

    if-eqz p0, :cond_0

    .line 240
    invoke-virtual {p0}, Lcom/oplus/camera/ui/menu/setting/CameraSettingMenuPanel;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p2

    const/4 p3, -0x1

    .line 241
    iput p3, p2, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 242
    invoke-virtual {p0, p1}, Lcom/oplus/camera/ui/menu/setting/CameraSettingMenuPanel;->setRotation(F)V

    :cond_0
    return-void
.end method

.method private static synthetic a(Landroid/app/Activity;ILandroid/view/View;)V
    .locals 4

    const p2, 0x7f0902d5

    .line 124
    invoke-virtual {p0, p2}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object p0

    check-cast p0, Lcom/oplus/camera/professional/p;

    if-nez p0, :cond_0

    return-void

    :cond_0
    const/4 p2, 0x4

    .line 130
    invoke-virtual {p0, p2, p1}, Lcom/oplus/camera/professional/p;->d(II)V

    .line 131
    invoke-virtual {p0}, Lcom/oplus/camera/professional/p;->getChildCount()I

    move-result v0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_2

    .line 134
    invoke-virtual {p0, v1}, Lcom/oplus/camera/professional/p;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    .line 136
    instance-of v3, v2, Lcom/oplus/camera/professional/LevelPanel;

    if-eqz v3, :cond_1

    .line 137
    check-cast v2, Lcom/oplus/camera/professional/LevelPanel;

    invoke-virtual {v2, p2, p1}, Lcom/oplus/camera/professional/LevelPanel;->a(II)V

    .line 138
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

    .line 339
    invoke-virtual {p0, p1}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object p0

    check-cast p0, Landroid/widget/RelativeLayout;

    const/16 p1, 0x8

    .line 340
    invoke-virtual {p0, p1}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    return-void
.end method

.method private static synthetic a(Landroid/view/View;)V
    .locals 1

    .line 290
    instance-of v0, p0, Lcom/oplus/camera/ui/control/ThumbImageView;

    if-eqz v0, :cond_0

    .line 291
    check-cast p0, Lcom/oplus/camera/ui/control/ThumbImageView;

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/oplus/camera/ui/control/ThumbImageView;->setPaddingPlus(I)V

    :cond_0
    return-void
.end method

.method private static synthetic b(Landroid/app/Activity;IIILandroid/view/View;)V
    .locals 8

    const p4, 0x7f090435

    .line 183
    invoke-virtual {p0, p4}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object p0

    move-object v0, p0

    check-cast v0, Lcom/oplus/camera/ui/preview/af;

    .line 184
    invoke-virtual {v0}, Lcom/oplus/camera/ui/preview/af;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p0

    const/4 p4, -0x1

    iput p4, p0, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 185
    invoke-virtual {v0}, Lcom/oplus/camera/ui/preview/af;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p0

    add-int p4, p1, p2

    iput p4, p0, Landroid/view/ViewGroup$LayoutParams;->height:I

    mul-int/lit8 v1, p1, 0x2

    sub-int v4, p1, p2

    const/4 v5, 0x0

    const/high16 v6, 0x3f800000    # 1.0f

    const/4 v7, 0x0

    move v2, p1

    move v3, p3

    .line 186
    invoke-virtual/range {v0 .. v7}, Lcom/oplus/camera/ui/preview/af;->a(IIIIFFF)V

    return-void
.end method

.method private static synthetic b(Landroid/app/Activity;Landroid/view/View;)V
    .locals 0

    const p1, 0x7f0902d6

    .line 152
    invoke-virtual {p0, p1}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object p0

    if-eqz p0, :cond_0

    const/high16 p1, 0x43870000    # 270.0f

    .line 155
    invoke-virtual {p0, p1}, Landroid/view/View;->setRotation(F)V

    :cond_0
    return-void
.end method

.method private static synthetic b(Landroid/view/View;)V
    .locals 1

    .line 261
    check-cast p0, Lcom/oplus/camera/ui/inverse/InverseColorRelativeLayout;

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/oplus/camera/ui/inverse/InverseColorRelativeLayout;->setBackgroundAlwaysTransparent(Z)V

    return-void
.end method

.method private synthetic c(Landroid/app/Activity;Landroid/view/View;)V
    .locals 0

    const p2, 0x7f09023a

    .line 106
    invoke-virtual {p1, p2}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lcom/oplus/camera/professional/ListProfessionalModeBar;

    if-nez p1, :cond_0

    return-void

    .line 112
    :cond_0
    invoke-virtual {p1, p0}, Lcom/oplus/camera/professional/ListProfessionalModeBar;->b(Lcom/oplus/camera/screen/b/a;)V

    return-void
.end method

.method private h(Landroid/app/Activity;)V
    .locals 10

    .line 91
    invoke-virtual {p0}, Lcom/oplus/camera/screen/b/k;->e()Landroid/widget/RelativeLayout$LayoutParams;

    move-result-object v0

    .line 92
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

    .line 96
    new-array v3, v7, [I

    iget v4, v0, Landroid/widget/RelativeLayout$LayoutParams;->width:I

    aput v4, v3, v5

    iget v0, v0, Landroid/widget/RelativeLayout$LayoutParams;->height:I

    aput v0, v3, v6

    iput-object v3, v1, Lcom/oplus/camera/screen/c;->c:[I

    .line 97
    iget-object v0, p0, Lcom/oplus/camera/screen/b/k;->a:Ljava/util/Map;

    const v3, 0x7f0902d9

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v0, v3, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 99
    invoke-virtual {p0}, Lcom/oplus/camera/screen/b/k;->f()Landroid/widget/RelativeLayout$LayoutParams;

    move-result-object v0

    .line 100
    new-instance v1, Lcom/oplus/camera/screen/c;

    new-array v3, v2, [I

    fill-array-data v3, :array_1

    new-array v4, v2, [I

    fill-array-data v4, :array_2

    invoke-direct {v1, v3, v4}, Lcom/oplus/camera/screen/c;-><init>([I[I)V

    .line 104
    new-array v3, v7, [I

    iget v4, v0, Landroid/widget/RelativeLayout$LayoutParams;->width:I

    aput v4, v3, v5

    iget v0, v0, Landroid/widget/RelativeLayout$LayoutParams;->height:I

    aput v0, v3, v6

    iput-object v3, v1, Lcom/oplus/camera/screen/c;->c:[I

    .line 105
    new-instance v0, Lcom/oplus/camera/screen/b/-$$Lambda$k$ByKUFyXFgVr4znLZI7ydEiwDu8M;

    invoke-direct {v0, p0, p1}, Lcom/oplus/camera/screen/b/-$$Lambda$k$ByKUFyXFgVr4znLZI7ydEiwDu8M;-><init>(Lcom/oplus/camera/screen/b/k;Landroid/app/Activity;)V

    iput-object v0, v1, Lcom/oplus/camera/screen/c;->f:Lcom/oplus/camera/screen/c$a;

    .line 114
    iget-object v0, p0, Lcom/oplus/camera/screen/b/k;->a:Ljava/util/Map;

    const v3, 0x7f09023a

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v0, v3, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 116
    invoke-virtual {p0}, Lcom/oplus/camera/screen/b/k;->g()Landroid/widget/RelativeLayout$LayoutParams;

    move-result-object v0

    .line 117
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

    .line 121
    new-array v3, v7, [I

    iget v4, v0, Landroid/widget/RelativeLayout$LayoutParams;->width:I

    aput v4, v3, v5

    iget v0, v0, Landroid/widget/RelativeLayout$LayoutParams;->height:I

    aput v0, v3, v6

    iput-object v3, v1, Lcom/oplus/camera/screen/c;->c:[I

    .line 122
    invoke-virtual {p0}, Lcom/oplus/camera/screen/b/k;->k()I

    move-result v0

    .line 123
    new-instance v3, Lcom/oplus/camera/screen/b/-$$Lambda$k$hjpjQpabXjMq7YsWil6PnCyhELc;

    invoke-direct {v3, p1, v0}, Lcom/oplus/camera/screen/b/-$$Lambda$k$hjpjQpabXjMq7YsWil6PnCyhELc;-><init>(Landroid/app/Activity;I)V

    iput-object v3, v1, Lcom/oplus/camera/screen/c;->f:Lcom/oplus/camera/screen/c$a;

    .line 142
    iget-object v0, p0, Lcom/oplus/camera/screen/b/k;->a:Ljava/util/Map;

    const v3, 0x7f0902d5

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v0, v3, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const v0, 0x7f070525

    .line 144
    invoke-static {v0}, Lcom/oplus/camera/util/Util;->i(I)I

    move-result v0

    const v1, 0x7f070526

    .line 145
    invoke-static {v1}, Lcom/oplus/camera/util/Util;->i(I)I

    move-result v1

    .line 146
    new-instance v3, Lcom/oplus/camera/screen/c;

    new-array v4, v2, [I

    fill-array-data v4, :array_4

    new-array v2, v2, [I

    aput v1, v2, v5

    aput v5, v2, v6

    aput v5, v2, v7

    aput v0, v2, v9

    invoke-direct {v3, v4, v2}, Lcom/oplus/camera/screen/c;-><init>([I[I)V

    .line 150
    new-array v0, v7, [I

    fill-array-data v0, :array_5

    iput-object v0, v3, Lcom/oplus/camera/screen/c;->c:[I

    .line 151
    new-instance v0, Lcom/oplus/camera/screen/b/-$$Lambda$k$lniYpPXN-1MCSBkPK-Pzorjwa0s;

    invoke-direct {v0, p1}, Lcom/oplus/camera/screen/b/-$$Lambda$k$lniYpPXN-1MCSBkPK-Pzorjwa0s;-><init>(Landroid/app/Activity;)V

    iput-object v0, v3, Lcom/oplus/camera/screen/c;->f:Lcom/oplus/camera/screen/c$a;

    .line 158
    iget-object p0, p0, Lcom/oplus/camera/screen/b/k;->a:Ljava/util/Map;

    const p1, 0x7f0902d6

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-interface {p0, p1, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

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
        0xe
        0x0
        0xc
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
        0xc
        0x0
        0x9
        0x0
    .end array-data

    :array_5
    .array-data 4
        -0x2
        -0x2
    .end array-data
.end method

.method private i(Landroid/app/Activity;)V
    .locals 8

    .line 162
    invoke-virtual {p1}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    .line 163
    new-instance v0, Lcom/oplus/camera/screen/c;

    const/4 v1, 0x4

    new-array v2, v1, [I

    fill-array-data v2, :array_0

    new-array v1, v1, [I

    const/4 v3, 0x0

    aput v3, v1, v3

    const/4 v4, 0x1

    aput v3, v1, v4

    const/4 v5, 0x2

    aput v3, v1, v5

    const v6, 0x7f070a02

    .line 167
    invoke-virtual {p1, v6}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v6

    const/4 v7, 0x3

    aput v6, v1, v7

    invoke-direct {v0, v2, v1}, Lcom/oplus/camera/screen/c;-><init>([I[I)V

    .line 169
    new-array v1, v5, [I

    const/4 v2, -0x2

    aput v2, v1, v3

    const v2, 0x7f070794

    invoke-virtual {p1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p1

    aput p1, v1, v4

    iput-object v1, v0, Lcom/oplus/camera/screen/c;->c:[I

    .line 171
    iget-object p0, p0, Lcom/oplus/camera/screen/b/k;->a:Ljava/util/Map;

    const p1, 0x7f090254

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-interface {p0, p1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void

    nop

    :array_0
    .array-data 4
        0xe
        0x0
        0xc
        0x0
    .end array-data
.end method

.method private j(Landroid/app/Activity;)V
    .locals 2

    .line 336
    new-instance v0, Lcom/oplus/camera/screen/c;

    const/4 v1, 0x0

    invoke-direct {v0, v1, v1}, Lcom/oplus/camera/screen/c;-><init>([I[I)V

    const/4 v1, 0x2

    .line 337
    new-array v1, v1, [I

    fill-array-data v1, :array_0

    iput-object v1, v0, Lcom/oplus/camera/screen/c;->c:[I

    .line 338
    new-instance v1, Lcom/oplus/camera/screen/b/-$$Lambda$k$Q-Pg2kzBCkzjF1iXVUyY1E9z2As;

    invoke-direct {v1, p1}, Lcom/oplus/camera/screen/b/-$$Lambda$k$Q-Pg2kzBCkzjF1iXVUyY1E9z2As;-><init>(Landroid/app/Activity;)V

    iput-object v1, v0, Lcom/oplus/camera/screen/c;->f:Lcom/oplus/camera/screen/c$a;

    .line 342
    iget-object p0, p0, Lcom/oplus/camera/screen/b/k;->a:Ljava/util/Map;

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

.method public static synthetic lambda$--o2Rp9vyncve6UMwl1OmYv0jP4(Landroid/app/Activity;IIILandroid/view/View;)V
    .locals 0

    invoke-static {p0, p1, p2, p3, p4}, Lcom/oplus/camera/screen/b/k;->b(Landroid/app/Activity;IIILandroid/view/View;)V

    return-void
.end method

.method public static synthetic lambda$-UzdMbATTC1Ue9A2rec072Hr5-0(Landroid/view/View;)V
    .locals 0

    invoke-static {p0}, Lcom/oplus/camera/screen/b/k;->a(Landroid/view/View;)V

    return-void
.end method

.method public static synthetic lambda$ByKUFyXFgVr4znLZI7ydEiwDu8M(Lcom/oplus/camera/screen/b/k;Landroid/app/Activity;Landroid/view/View;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/oplus/camera/screen/b/k;->c(Landroid/app/Activity;Landroid/view/View;)V

    return-void
.end method

.method public static synthetic lambda$FkoIiEL52jp7eWK5LzY564oVMJU(Landroid/app/Activity;IIILandroid/view/View;)V
    .locals 0

    invoke-static {p0, p1, p2, p3, p4}, Lcom/oplus/camera/screen/b/k;->a(Landroid/app/Activity;IIILandroid/view/View;)V

    return-void
.end method

.method public static synthetic lambda$Q-Pg2kzBCkzjF1iXVUyY1E9z2As(Landroid/app/Activity;Landroid/view/View;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/oplus/camera/screen/b/k;->a(Landroid/app/Activity;Landroid/view/View;)V

    return-void
.end method

.method public static synthetic lambda$hjpjQpabXjMq7YsWil6PnCyhELc(Landroid/app/Activity;ILandroid/view/View;)V
    .locals 0

    invoke-static {p0, p1, p2}, Lcom/oplus/camera/screen/b/k;->a(Landroid/app/Activity;ILandroid/view/View;)V

    return-void
.end method

.method public static synthetic lambda$lniYpPXN-1MCSBkPK-Pzorjwa0s(Landroid/app/Activity;Landroid/view/View;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/oplus/camera/screen/b/k;->b(Landroid/app/Activity;Landroid/view/View;)V

    return-void
.end method

.method public static synthetic lambda$ohxZC6pKxK8tAko7x4TocZAwpJg(Landroid/view/View;)V
    .locals 0

    invoke-static {p0}, Lcom/oplus/camera/screen/b/k;->b(Landroid/view/View;)V

    return-void
.end method


# virtual methods
.method public a(Z)I
    .locals 0

    .line 755
    iget-boolean p0, p0, Lcom/oplus/camera/screen/b/k;->d:Z

    if-eqz p0, :cond_0

    const/4 p0, 0x5

    goto :goto_0

    :cond_0
    const/4 p0, 0x4

    :goto_0
    return p0
.end method

.method public a(Landroid/content/res/Resources;Landroid/graphics/Rect;)Landroid/graphics/Rect;
    .locals 2

    const p0, 0x7f070a0b

    .line 201
    invoke-virtual {p1, p0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p0

    .line 203
    new-instance p1, Landroid/graphics/Rect;

    iget v0, p2, Landroid/graphics/Rect;->right:I

    iget p2, p2, Landroid/graphics/Rect;->bottom:I

    const/4 v1, 0x0

    invoke-direct {p1, p0, v1, v0, p2}, Landroid/graphics/Rect;-><init>(IIII)V

    return-object p1
.end method

.method public a(Landroid/util/Size;)Landroid/widget/RelativeLayout$LayoutParams;
    .locals 2

    .line 347
    invoke-virtual {p1}, Landroid/util/Size;->getHeight()I

    move-result v0

    invoke-virtual {p1}, Landroid/util/Size;->getWidth()I

    move-result p1

    invoke-virtual {p0, v0, p1}, Lcom/oplus/camera/screen/b/k;->b(II)Landroid/graphics/Rect;

    move-result-object p0

    .line 348
    new-instance p1, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-virtual {p0}, Landroid/graphics/Rect;->width()I

    move-result v0

    invoke-virtual {p0}, Landroid/graphics/Rect;->height()I

    move-result v1

    invoke-direct {p1, v0, v1}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 349
    iget v0, p0, Landroid/graphics/Rect;->top:I

    iput v0, p1, Landroid/widget/RelativeLayout$LayoutParams;->topMargin:I

    .line 350
    invoke-static {}, Lcom/oplus/camera/util/Util;->getScreenWidth()I

    move-result v0

    iget p0, p0, Landroid/graphics/Rect;->right:I

    sub-int/2addr v0, p0

    iput v0, p1, Landroid/widget/RelativeLayout$LayoutParams;->rightMargin:I

    const/16 p0, 0xa

    .line 351
    invoke-virtual {p1, p0}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    const/16 p0, 0xb

    .line 352
    invoke-virtual {p1, p0}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    return-object p1
.end method

.method public a(Landroid/app/Activity;Landroid/widget/RelativeLayout;I)Lcom/oplus/camera/ui/RotableTextView;
    .locals 2

    .line 739
    invoke-virtual {p1}, Landroid/app/Activity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object p3

    const v0, 0x7f0c0030

    .line 740
    invoke-virtual {p3, v0, p2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    const p2, 0x7f090093

    .line 741
    invoke-virtual {p1, p2}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Lcom/oplus/camera/ui/RotableTextView;

    .line 743
    invoke-virtual {p1}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object p3

    const v0, 0x7f080257

    const/4 v1, 0x0

    invoke-virtual {p3, v0, v1}, Landroid/content/res/Resources;->getDrawable(ILandroid/content/res/Resources$Theme;)Landroid/graphics/drawable/Drawable;

    move-result-object p3

    invoke-virtual {p2, p3}, Lcom/oplus/camera/ui/RotableTextView;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 744
    invoke-virtual {p2}, Lcom/oplus/camera/ui/RotableTextView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p3

    check-cast p3, Landroid/widget/RelativeLayout$LayoutParams;

    const/16 v0, 0xc

    .line 745
    invoke-virtual {p3, v0}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 746
    invoke-virtual {p1}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    iget-boolean p0, p0, Lcom/oplus/camera/screen/b/k;->d:Z

    if-eqz p0, :cond_0

    const p0, 0x7f07051c

    goto :goto_0

    :cond_0
    const p0, 0x7f07051a

    :goto_0
    invoke-virtual {p1, p0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p0

    iput p0, p3, Landroid/widget/RelativeLayout$LayoutParams;->bottomMargin:I

    return-object p2
.end method

.method public a(Landroid/content/Context;)Lcom/oplus/camera/ui/preview/w;
    .locals 1

    .line 494
    invoke-static {}, Lcom/oplus/camera/util/Util;->getScreenWidth()I

    move-result p0

    div-int/lit8 p0, p0, 0x2

    .line 495
    new-instance p1, Lcom/oplus/camera/ui/preview/w;

    invoke-static {}, Lcom/oplus/camera/util/Util;->getScreenHeight()I

    move-result v0

    invoke-direct {p1, v0, p0}, Lcom/oplus/camera/ui/preview/w;-><init>(II)V

    const/16 p0, 0x5a

    .line 496
    invoke-virtual {p1, p0}, Lcom/oplus/camera/ui/preview/w;->b(I)V

    return-object p1
.end method

.method public a(Landroid/app/Activity;Landroid/view/ViewGroup;)V
    .locals 2

    .line 512
    invoke-virtual {p1}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    .line 514
    new-instance p1, Landroidx/constraintlayout/widget/ConstraintLayout$a;

    const v0, 0x7f0709f1

    invoke-virtual {p0, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    const v1, 0x7f0709ed

    .line 515
    invoke-virtual {p0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    invoke-direct {p1, v0, v1}, Landroidx/constraintlayout/widget/ConstraintLayout$a;-><init>(II)V

    const/4 v0, 0x0

    .line 516
    iput v0, p1, Landroidx/constraintlayout/widget/ConstraintLayout$a;->s:I

    .line 517
    iput v0, p1, Landroidx/constraintlayout/widget/ConstraintLayout$a;->q:I

    .line 518
    iput v0, p1, Landroidx/constraintlayout/widget/ConstraintLayout$a;->k:I

    const v1, 0x7f0709ee

    .line 519
    invoke-virtual {p0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    iput v1, p1, Landroidx/constraintlayout/widget/ConstraintLayout$a;->bottomMargin:I

    const v1, 0x7f0709ef

    .line 520
    invoke-virtual {p0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p0

    iput p0, p1, Landroidx/constraintlayout/widget/ConstraintLayout$a;->rightMargin:I

    .line 521
    invoke-virtual {p2, p1}, Landroid/view/ViewGroup;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 522
    invoke-virtual {p2, v0}, Landroid/view/ViewGroup;->setVerticalFadingEdgeEnabled(Z)V

    return-void
.end method

.method public a(Landroid/app/Activity;Lcom/oplus/camera/screen/ScreenRelativeLayout;)V
    .locals 2

    .line 577
    invoke-static {}, Lcom/oplus/camera/util/Util;->getScreenWidth()I

    move-result v0

    sput v0, Lcom/oplus/camera/screen/f;->a:I

    .line 578
    invoke-static {}, Lcom/oplus/camera/util/Util;->getScreenHeight()I

    move-result v0

    sput v0, Lcom/oplus/camera/screen/f;->b:I

    .line 580
    invoke-static {p2}, Lcom/oplus/camera/screen/d;->a(Landroid/view/View;)V

    const/4 v0, 0x0

    .line 581
    invoke-virtual {p2, v0}, Lcom/oplus/camera/screen/ScreenRelativeLayout;->setRotation(F)V

    .line 582
    invoke-virtual {p0, p2}, Lcom/oplus/camera/screen/b/k;->a(Lcom/oplus/camera/screen/ScreenRelativeLayout;)V

    .line 583
    invoke-virtual {p2}, Lcom/oplus/camera/screen/ScreenRelativeLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    sget v1, Lcom/oplus/camera/screen/f;->b:I

    iput v1, v0, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 584
    invoke-virtual {p2}, Lcom/oplus/camera/screen/ScreenRelativeLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    sget v1, Lcom/oplus/camera/screen/f;->a:I

    iput v1, v0, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 585
    invoke-virtual {p2}, Lcom/oplus/camera/screen/ScreenRelativeLayout;->requestLayout()V

    .line 586
    invoke-virtual {p0, p1}, Lcom/oplus/camera/screen/b/k;->a(Landroid/app/Activity;)V

    return-void
.end method

.method protected a(Landroid/app/Activity;Lcom/oplus/camera/screen/c;)V
    .locals 7

    .line 306
    invoke-virtual {p1}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    .line 307
    new-instance p2, Lcom/oplus/camera/screen/c;

    const/4 v0, 0x4

    new-array v1, v0, [I

    fill-array-data v1, :array_0

    new-array v0, v0, [I

    const/4 v2, 0x0

    aput v2, v0, v2

    const/4 v3, 0x1

    aput v2, v0, v3

    const v4, 0x7f0709e4

    .line 311
    invoke-virtual {p1, v4}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v4

    const/4 v5, 0x2

    aput v4, v0, v5

    const v4, 0x7f0709e3

    .line 312
    invoke-virtual {p1, v4}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v4

    const/4 v6, 0x3

    aput v4, v0, v6

    invoke-direct {p2, v1, v0}, Lcom/oplus/camera/screen/c;-><init>([I[I)V

    .line 315
    new-array v0, v5, [I

    const v1, 0x7f0709e5

    invoke-virtual {p1, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    aput v1, v0, v2

    const v1, 0x7f0705e6

    invoke-virtual {p1, v1}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result p1

    aput p1, v0, v3

    iput-object v0, p2, Lcom/oplus/camera/screen/c;->c:[I

    .line 316
    iget-object p0, p0, Lcom/oplus/camera/screen/b/k;->a:Ljava/util/Map;

    const p1, 0x7f0901cd

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-interface {p0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void

    :array_0
    .array-data 4
        0xb
        0x0
        0xc
        0x0
    .end array-data
.end method

.method protected a(Landroid/app/Activity;Lcom/oplus/camera/screen/c;Lcom/oplus/camera/screen/c;)V
    .locals 9

    .line 250
    invoke-virtual {p1}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const p2, 0x7f070a84

    .line 251
    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p2

    const v0, 0x7f0709ff

    .line 252
    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    const v1, 0x7f070a00

    .line 253
    invoke-virtual {p1, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    const v2, 0x7f070a01

    .line 254
    invoke-virtual {p1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    const v3, 0x7f070b96

    .line 255
    invoke-virtual {p1, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p1

    .line 257
    new-instance v3, Lcom/oplus/camera/screen/c;

    const/4 v4, 0x2

    new-array v5, v4, [I

    fill-array-data v5, :array_0

    const/4 v6, 0x0

    invoke-direct {v3, v5, v6}, Lcom/oplus/camera/screen/c;-><init>([I[I)V

    .line 259
    new-array v5, v4, [I

    iget v6, p0, Lcom/oplus/camera/screen/b/k;->b:I

    const/4 v7, 0x0

    aput v6, v5, v7

    iget v6, p0, Lcom/oplus/camera/screen/b/k;->c:I

    const/4 v8, 0x1

    aput v6, v5, v8

    iput-object v5, v3, Lcom/oplus/camera/screen/c;->c:[I

    .line 260
    sget-object v5, Lcom/oplus/camera/screen/b/-$$Lambda$k$ohxZC6pKxK8tAko7x4TocZAwpJg;->INSTANCE:Lcom/oplus/camera/screen/b/-$$Lambda$k$ohxZC6pKxK8tAko7x4TocZAwpJg;

    iput-object v5, v3, Lcom/oplus/camera/screen/c;->f:Lcom/oplus/camera/screen/c$a;

    .line 263
    iget-object v5, p0, Lcom/oplus/camera/screen/b/k;->a:Ljava/util/Map;

    const v6, 0x7f0900e5

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-interface {v5, v6, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 265
    new-array v3, v4, [I

    aput p2, v3, v7

    aput v0, v3, v8

    iput-object v3, p3, Lcom/oplus/camera/screen/c;->c:[I

    .line 266
    iget-object p2, p0, Lcom/oplus/camera/screen/b/k;->a:Ljava/util/Map;

    const v0, 0x7f0900e4

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-interface {p2, v0, p3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 268
    new-instance p2, Lcom/oplus/camera/screen/c;

    new-array p3, v4, [I

    fill-array-data p3, :array_1

    const/4 v0, 0x4

    new-array v3, v0, [I

    fill-array-data v3, :array_2

    invoke-direct {p2, p3, v3}, Lcom/oplus/camera/screen/c;-><init>([I[I)V

    .line 269
    iget-object p3, p0, Lcom/oplus/camera/screen/b/k;->a:Ljava/util/Map;

    const v3, 0x7f090338

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {p3, v3, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 271
    new-instance p2, Lcom/oplus/camera/screen/c;

    new-array p3, v0, [I

    fill-array-data p3, :array_3

    new-array v3, v0, [I

    aput v7, v3, v7

    aput v7, v3, v8

    aput v7, v3, v4

    const/4 v5, 0x3

    aput v1, v3, v5

    invoke-direct {p2, p3, v3}, Lcom/oplus/camera/screen/c;-><init>([I[I)V

    .line 275
    new-array p3, v4, [I

    aput p1, p3, v7

    aput p1, p3, v8

    iput-object p3, p2, Lcom/oplus/camera/screen/c;->c:[I

    .line 276
    iget-object p3, p0, Lcom/oplus/camera/screen/b/k;->a:Ljava/util/Map;

    const v3, 0x7f090384

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {p3, v3, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 278
    new-instance p2, Lcom/oplus/camera/screen/c;

    new-array p3, v0, [I

    fill-array-data p3, :array_4

    new-array v3, v0, [I

    aput v7, v3, v7

    aput v7, v3, v8

    aput v7, v3, v4

    aput v1, v3, v5

    invoke-direct {p2, p3, v3}, Lcom/oplus/camera/screen/c;-><init>([I[I)V

    .line 282
    new-array p3, v4, [I

    aput p1, p3, v7

    aput p1, p3, v8

    iput-object p3, p2, Lcom/oplus/camera/screen/c;->c:[I

    .line 283
    iget-object p3, p0, Lcom/oplus/camera/screen/b/k;->a:Ljava/util/Map;

    const v1, 0x7f090419

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {p3, v1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 285
    new-instance p2, Lcom/oplus/camera/screen/c;

    new-array p3, v0, [I

    fill-array-data p3, :array_5

    new-array v1, v0, [I

    aput v7, v1, v7

    aput v2, v1, v8

    aput v7, v1, v4

    aput v7, v1, v5

    invoke-direct {p2, p3, v1}, Lcom/oplus/camera/screen/c;-><init>([I[I)V

    .line 289
    sget-object p3, Lcom/oplus/camera/screen/b/-$$Lambda$k$-UzdMbATTC1Ue9A2rec072Hr5-0;->INSTANCE:Lcom/oplus/camera/screen/b/-$$Lambda$k$-UzdMbATTC1Ue9A2rec072Hr5-0;

    iput-object p3, p2, Lcom/oplus/camera/screen/c;->f:Lcom/oplus/camera/screen/c$a;

    .line 294
    iget-object p3, p0, Lcom/oplus/camera/screen/b/k;->a:Ljava/util/Map;

    const v1, 0x7f0903b4

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {p3, v1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 295
    iget-object p3, p0, Lcom/oplus/camera/screen/b/k;->a:Ljava/util/Map;

    const v1, 0x7f0900a1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {p3, v1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 297
    new-instance p2, Lcom/oplus/camera/screen/c;

    new-array p3, v0, [I

    fill-array-data p3, :array_6

    new-array v0, v0, [I

    aput v7, v0, v7

    aput v2, v0, v8

    aput v7, v0, v4

    aput v7, v0, v5

    invoke-direct {p2, p3, v0}, Lcom/oplus/camera/screen/c;-><init>([I[I)V

    .line 301
    new-array p3, v4, [I

    aput p1, p3, v7

    aput p1, p3, v8

    iput-object p3, p2, Lcom/oplus/camera/screen/c;->c:[I

    .line 302
    iget-object p0, p0, Lcom/oplus/camera/screen/b/k;->a:Ljava/util/Map;

    const p1, 0x7f0902e7

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-interface {p0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void

    nop

    :array_0
    .array-data 4
        0xc
        0x0
    .end array-data

    :array_1
    .array-data 4
        0xd
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
        0x2
        0x7f090338
    .end array-data

    :array_4
    .array-data 4
        0xe
        0x0
        0x2
        0x7f090338
    .end array-data

    :array_5
    .array-data 4
        0xe
        0x0
        0x3
        0x7f090338
    .end array-data

    :array_6
    .array-data 4
        0xe
        0x0
        0x3
        0x7f090338
    .end array-data
.end method

.method protected a(Landroid/app/Activity;Lcom/oplus/camera/screen/c;Lcom/oplus/camera/screen/c;Lcom/oplus/camera/screen/c;)V
    .locals 8

    .line 414
    invoke-virtual {p1}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const/4 p2, 0x4

    .line 415
    new-array p3, p2, [I

    fill-array-data p3, :array_0

    const p4, 0x7f0709d7

    .line 416
    invoke-virtual {p1, p4}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result p4

    const v0, 0x7f0709d1

    .line 417
    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v0

    const v1, 0x7f0709d6

    .line 418
    invoke-virtual {p1, v1}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v1

    .line 420
    new-instance v2, Lcom/oplus/camera/screen/c;

    new-array v3, p2, [I

    const/4 v4, 0x0

    aput p4, v3, v4

    const/4 v5, 0x1

    aput v4, v3, v5

    const/4 v6, 0x2

    aput v4, v3, v6

    const/4 v7, 0x3

    aput v0, v3, v7

    invoke-direct {v2, p3, v3}, Lcom/oplus/camera/screen/c;-><init>([I[I)V

    .line 421
    new-instance v0, Lcom/oplus/camera/screen/c;

    new-array v3, p2, [I

    aput p4, v3, v4

    aput v4, v3, v5

    aput v4, v3, v6

    aput v1, v3, v7

    invoke-direct {v0, p3, v3}, Lcom/oplus/camera/screen/c;-><init>([I[I)V

    .line 423
    new-array p3, p2, [I

    fill-array-data p3, :array_1

    .line 424
    new-instance p4, Lcom/oplus/camera/screen/c;

    new-array p2, p2, [I

    aput v4, p2, v4

    aput v4, p2, v5

    const v1, 0x7f070beb

    invoke-virtual {p1, v1}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v1

    aput v1, p2, v6

    const v1, 0x7f070bea

    .line 425
    invoke-virtual {p1, v1}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v1

    aput v1, p2, v7

    invoke-direct {p4, p3, p2}, Lcom/oplus/camera/screen/c;-><init>([I[I)V

    const p2, 0x7f070477

    .line 427
    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result p1

    .line 429
    new-array p2, v6, [I

    aput p1, p2, v4

    aput p1, p2, v5

    iput-object p2, v2, Lcom/oplus/camera/screen/c;->c:[I

    .line 430
    new-array p2, v6, [I

    aput p1, p2, v4

    aput p1, p2, v5

    iput-object p2, v0, Lcom/oplus/camera/screen/c;->c:[I

    .line 432
    iget-object p1, p0, Lcom/oplus/camera/screen/b/k;->a:Ljava/util/Map;

    const p2, 0x7f0903c3

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    invoke-interface {p1, p2, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 433
    iget-object p1, p0, Lcom/oplus/camera/screen/b/k;->a:Ljava/util/Map;

    const p2, 0x7f0903c0

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    invoke-interface {p1, p2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 434
    iget-object p0, p0, Lcom/oplus/camera/screen/b/k;->a:Ljava/util/Map;

    const p1, 0x7f0903b7

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-interface {p0, p1, p4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

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
        0xc
        0x0
        0xb
        0x0
    .end array-data
.end method

.method public a(Landroid/app/Activity;Lcom/oplus/camera/ui/menu/setting/CameraSettingMenuPanel;)V
    .locals 0

    .line 591
    invoke-virtual {p2}, Lcom/oplus/camera/ui/menu/setting/CameraSettingMenuPanel;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p0

    const/4 p1, -0x1

    .line 592
    iput p1, p0, Landroid/view/ViewGroup$LayoutParams;->width:I

    const/4 p0, 0x0

    .line 593
    invoke-virtual {p2, p0}, Lcom/oplus/camera/ui/menu/setting/CameraSettingMenuPanel;->setRotation(F)V

    return-void
.end method

.method public a(Landroid/view/View;Lcom/oplus/camera/ui/menu/BasicOptionItemList;Landroid/content/Context;I)V
    .locals 4

    .line 390
    invoke-virtual {p3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p3

    const p4, 0x7f070a05

    .line 391
    invoke-virtual {p3, p4}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p4

    const v0, 0x7f070a03

    .line 392
    invoke-virtual {p3, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    const v1, 0x7f070a04

    .line 393
    invoke-virtual {p3, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    if-eqz p1, :cond_0

    .line 396
    invoke-virtual {p1}, Landroid/view/View;->getRootView()Landroid/view/View;

    move-result-object v2

    const v3, 0x7f090096

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/view/ViewGroup;

    iput-object v2, p0, Lcom/oplus/camera/screen/b/k;->e:Landroid/view/ViewGroup;

    .line 399
    :cond_0
    invoke-virtual {p0}, Lcom/oplus/camera/screen/b/k;->j()I

    move-result v2

    invoke-virtual {p2, v2}, Lcom/oplus/camera/ui/menu/BasicOptionItemList;->setScreenLayoutMode(I)V

    if-eqz p1, :cond_1

    .line 402
    iget-object p1, p0, Lcom/oplus/camera/screen/b/k;->e:Landroid/view/ViewGroup;

    if-eqz p1, :cond_1

    .line 403
    new-instance p1, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {p1, p4, v0}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    const/16 p4, 0x9

    .line 404
    invoke-virtual {p1, p4}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    const p4, 0x7f070a09

    .line 405
    invoke-virtual {p3, p4}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p3

    iput p3, p1, Landroid/widget/RelativeLayout$LayoutParams;->leftMargin:I

    .line 406
    iput v1, p1, Landroid/widget/RelativeLayout$LayoutParams;->topMargin:I

    .line 407
    iget-object p3, p0, Lcom/oplus/camera/screen/b/k;->e:Landroid/view/ViewGroup;

    invoke-virtual {p3, p2, p1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    :cond_1
    const/4 p1, 0x1

    .line 410
    new-array p1, p1, [Landroid/view/View;

    const/4 p3, 0x0

    aput-object p2, p1, p3

    invoke-virtual {p0, p1}, Lcom/oplus/camera/screen/b/k;->a([Landroid/view/View;)V

    return-void
.end method

.method public a(Lcom/oplus/camera/p$a;)V
    .locals 2

    const/16 v0, 0xc

    .line 664
    iput v0, p1, Lcom/oplus/camera/p$a;->a:I

    const/4 v0, 0x0

    .line 665
    iput v0, p1, Lcom/oplus/camera/p$a;->e:I

    .line 666
    iget-boolean v0, p0, Lcom/oplus/camera/screen/b/k;->d:Z

    if-eqz v0, :cond_0

    const v0, 0x7f07051e

    goto :goto_0

    :cond_0
    const v0, 0x7f070524

    :goto_0
    invoke-static {v0}, Lcom/oplus/camera/util/Util;->i(I)I

    move-result v0

    .line 669
    invoke-static {}, Lcom/oplus/camera/util/Util;->Z()I

    move-result v1

    sub-int/2addr v0, v1

    .line 670
    iput v0, p1, Lcom/oplus/camera/p$a;->d:I

    .line 671
    iget-boolean p0, p0, Lcom/oplus/camera/screen/b/k;->d:Z

    if-eqz p0, :cond_1

    const p0, 0x7f07051d

    goto :goto_1

    :cond_1
    const p0, 0x7f070523

    :goto_1
    invoke-static {p0}, Lcom/oplus/camera/util/Util;->i(I)I

    move-result p0

    iput p0, p1, Lcom/oplus/camera/p$a;->c:I

    return-void
.end method

.method public a(Lcom/oplus/camera/p$a;II)V
    .locals 1

    .line 646
    invoke-static {}, Lcom/oplus/camera/util/Util;->I()Landroid/util/Size;

    move-result-object p2

    .line 647
    invoke-virtual {p2}, Landroid/util/Size;->getHeight()I

    move-result p3

    invoke-virtual {p2}, Landroid/util/Size;->getWidth()I

    move-result p2

    invoke-virtual {p0, p3, p2}, Lcom/oplus/camera/screen/b/k;->b(II)Landroid/graphics/Rect;

    move-result-object p2

    const p3, 0x7f070998

    .line 648
    invoke-static {p3}, Lcom/oplus/camera/util/Util;->i(I)I

    move-result p3

    const v0, 0x7f070527

    .line 649
    invoke-static {v0}, Lcom/oplus/camera/util/Util;->i(I)I

    move-result v0

    .line 650
    iget-boolean p0, p0, Lcom/oplus/camera/screen/b/k;->d:Z

    if-eqz p0, :cond_0

    const p0, 0x7f07051f

    goto :goto_0

    :cond_0
    const p0, 0x7f070528

    :goto_0
    invoke-static {p0}, Lcom/oplus/camera/util/Util;->i(I)I

    move-result p0

    iput p0, p1, Lcom/oplus/camera/p$a;->b:I

    const/4 p0, 0x0

    .line 653
    iput p0, p1, Lcom/oplus/camera/p$a;->e:I

    .line 655
    iget p0, p2, Landroid/graphics/Rect;->top:I

    if-le p0, v0, :cond_1

    .line 656
    iget p0, p2, Landroid/graphics/Rect;->top:I

    add-int/2addr p0, p3

    iput p0, p1, Lcom/oplus/camera/p$a;->d:I

    goto :goto_1

    .line 658
    :cond_1
    iput v0, p1, Lcom/oplus/camera/p$a;->d:I

    :goto_1
    return-void
.end method

.method public a(Lcom/oplus/camera/screen/ScreenRelativeLayout;)V
    .locals 1

    .line 60
    sget v0, Lcom/oplus/camera/screen/f;->b:I

    iput v0, p0, Lcom/oplus/camera/screen/b/k;->b:I

    .line 61
    sget v0, Lcom/oplus/camera/screen/f;->a:I

    div-int/lit8 v0, v0, 0x2

    iput v0, p0, Lcom/oplus/camera/screen/b/k;->c:I

    .line 63
    invoke-virtual {p1}, Lcom/oplus/camera/screen/ScreenRelativeLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p0

    check-cast p0, Landroid/widget/RelativeLayout$LayoutParams;

    const/16 p1, 0xd

    .line 64
    invoke-virtual {p0, p1}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 65
    sget p1, Lcom/oplus/camera/screen/f;->b:I

    sget v0, Lcom/oplus/camera/screen/f;->a:I

    sub-int/2addr p1, v0

    div-int/lit8 p1, p1, 0x2

    iput p1, p0, Landroid/widget/RelativeLayout$LayoutParams;->topMargin:I

    .line 66
    sget p1, Lcom/oplus/camera/screen/f;->b:I

    sget v0, Lcom/oplus/camera/screen/f;->a:I

    sub-int/2addr p1, v0

    div-int/lit8 p1, p1, 0x2

    iput p1, p0, Landroid/widget/RelativeLayout$LayoutParams;->bottomMargin:I

    .line 67
    sget p1, Lcom/oplus/camera/screen/f;->b:I

    sget v0, Lcom/oplus/camera/screen/f;->a:I

    sub-int/2addr p1, v0

    neg-int p1, p1

    div-int/lit8 p1, p1, 0x2

    iput p1, p0, Landroid/widget/RelativeLayout$LayoutParams;->leftMargin:I

    .line 68
    sget p1, Lcom/oplus/camera/screen/f;->b:I

    sget v0, Lcom/oplus/camera/screen/f;->a:I

    sub-int/2addr p1, v0

    neg-int p1, p1

    div-int/lit8 p1, p1, 0x2

    iput p1, p0, Landroid/widget/RelativeLayout$LayoutParams;->rightMargin:I

    return-void
.end method

.method public a(Lcom/oplus/camera/screen/b/o$a;)V
    .locals 0

    const/4 p0, 0x0

    .line 734
    new-array p0, p0, [Ljava/lang/Object;

    invoke-interface {p1, p0}, Lcom/oplus/camera/screen/b/o$a;->call([Ljava/lang/Object;)V

    return-void
.end method

.method public a(Lcom/oplus/camera/screen/b/o$a;Lcom/oplus/camera/screen/b/o$a;)V
    .locals 0

    const/4 p0, 0x0

    .line 507
    new-array p0, p0, [Ljava/lang/Object;

    invoke-interface {p1, p0}, Lcom/oplus/camera/screen/b/o$a;->call([Ljava/lang/Object;)V

    return-void
.end method

.method public a(Lcom/oplus/camera/screen/b/o$a;Lcom/oplus/camera/screen/b/o$a;Lcom/oplus/camera/screen/b/o$a;)V
    .locals 3

    const/4 p0, 0x1

    .line 764
    new-array v0, p0, [Ljava/lang/Object;

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x0

    aput-object v1, v0, v2

    invoke-interface {p1, v0}, Lcom/oplus/camera/screen/b/o$a;->call([Ljava/lang/Object;)V

    const/4 p1, 0x2

    .line 765
    new-array p1, p1, [Ljava/lang/Object;

    const/4 v0, 0x0

    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v0

    aput-object v0, p1, v2

    aput-object v0, p1, p0

    invoke-interface {p2, p1}, Lcom/oplus/camera/screen/b/o$a;->call([Ljava/lang/Object;)V

    .line 766
    new-array p0, v2, [Ljava/lang/Object;

    invoke-interface {p3, p0}, Lcom/oplus/camera/screen/b/o$a;->call([Ljava/lang/Object;)V

    return-void
.end method

.method public a(I)Z
    .locals 0

    .line 597
    iget-boolean p0, p0, Lcom/oplus/camera/screen/b/k;->d:Z

    if-eqz p0, :cond_0

    const/4 p0, 0x0

    return p0

    :cond_0
    const/4 p0, 0x1

    return p0
.end method

.method public a(Landroid/app/Activity;Landroid/graphics/Rect;)Z
    .locals 0

    .line 533
    invoke-virtual {p1}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    .line 534
    iget p1, p2, Landroid/graphics/Rect;->left:I

    const p2, 0x7f0709ea

    invoke-virtual {p0, p2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p0

    if-le p1, p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public a(Lcom/oplus/camera/ui/CameraUIInterface;II)Z
    .locals 0

    .line 476
    iget-object p0, p0, Lcom/oplus/camera/screen/b/k;->f:Landroid/graphics/Rect;

    if-eqz p0, :cond_0

    .line 477
    invoke-virtual {p0, p2, p3}, Landroid/graphics/Rect;->contains(II)Z

    move-result p0

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public a(II)[I
    .locals 1

    const/4 p0, 0x2

    .line 468
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

    .line 472
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
    .locals 9

    const/4 v0, 0x4

    .line 358
    new-array v0, v0, [I

    .line 360
    invoke-virtual {p1}, Landroid/util/Size;->getWidth()I

    move-result v1

    int-to-double v1, v1

    invoke-virtual {p1}, Landroid/util/Size;->getHeight()I

    move-result p1

    int-to-double v3, p1

    div-double/2addr v1, v3

    .line 361
    iget p1, p0, Lcom/oplus/camera/screen/b/k;->b:I

    int-to-double v3, p1

    iget p1, p0, Lcom/oplus/camera/screen/b/k;->c:I

    int-to-double v5, p1

    div-double/2addr v3, v5

    cmpl-double p1, v1, v3

    const/4 v5, 0x1

    const/4 v6, 0x0

    if-lez p1, :cond_0

    .line 364
    iget p1, p0, Lcom/oplus/camera/screen/b/k;->b:I

    aput p1, v0, v6

    .line 365
    iget p1, p0, Lcom/oplus/camera/screen/b/k;->b:I

    int-to-double v6, p1

    div-double/2addr v6, v1

    double-to-int p1, v6

    aput p1, v0, v5

    goto :goto_0

    .line 367
    :cond_0
    iget p1, p0, Lcom/oplus/camera/screen/b/k;->c:I

    int-to-double v7, p1

    mul-double/2addr v7, v1

    double-to-int p1, v7

    aput p1, v0, v6

    .line 368
    iget p1, p0, Lcom/oplus/camera/screen/b/k;->c:I

    aput p1, v0, v5

    .line 371
    :goto_0
    invoke-virtual {p2}, Landroid/util/Size;->getWidth()I

    move-result p1

    int-to-double v1, p1

    invoke-virtual {p2}, Landroid/util/Size;->getHeight()I

    move-result p1

    int-to-double p1, p1

    div-double/2addr v1, p1

    cmpl-double p1, v1, v3

    const/4 p2, 0x3

    const/4 v3, 0x2

    if-lez p1, :cond_1

    .line 374
    iget p1, p0, Lcom/oplus/camera/screen/b/k;->b:I

    aput p1, v0, v3

    .line 375
    iget p0, p0, Lcom/oplus/camera/screen/b/k;->b:I

    int-to-double p0, p0

    div-double/2addr p0, v1

    double-to-int p0, p0

    aput p0, v0, p2

    goto :goto_1

    .line 377
    :cond_1
    iget p1, p0, Lcom/oplus/camera/screen/b/k;->c:I

    int-to-double v4, p1

    mul-double/2addr v4, v1

    double-to-int p1, v4

    aput p1, v0, v3

    .line 378
    iget p0, p0, Lcom/oplus/camera/screen/b/k;->c:I

    aput p0, v0, p2

    :goto_1
    return-object v0
.end method

.method public a_(Landroid/app/Activity;)V
    .locals 4

    const/4 v0, 0x0

    .line 678
    invoke-virtual {p0, p1, v0, v0}, Lcom/oplus/camera/screen/b/k;->a(Landroid/app/Activity;Lcom/oplus/camera/screen/c;Lcom/oplus/camera/screen/c;)V

    .line 679
    invoke-virtual {p0, p1, v0}, Lcom/oplus/camera/screen/b/k;->d(Landroid/app/Activity;Lcom/oplus/camera/screen/c;)V

    .line 680
    invoke-virtual {p0, p1, v0}, Lcom/oplus/camera/screen/b/k;->c(Landroid/app/Activity;Lcom/oplus/camera/screen/c;)V

    .line 681
    invoke-virtual {p0, p1, v0}, Lcom/oplus/camera/screen/b/k;->b(Landroid/app/Activity;Lcom/oplus/camera/screen/c;)V

    .line 683
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    const v1, 0x7f0900e4

    .line 684
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const v1, 0x7f090437

    .line 685
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const v1, 0x7f090436

    .line 686
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const v1, 0x7f090438

    .line 687
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const v1, 0x7f090168

    .line 688
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const v1, 0x7f0900a2

    .line 689
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const v1, 0x7f090145

    .line 690
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 691
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    new-array v1, v1, [Landroid/view/View;

    const/4 v2, 0x0

    .line 693
    :goto_0
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v3

    if-ge v2, v3, :cond_0

    .line 694
    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    invoke-virtual {p1, v3}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v3

    aput-object v3, v1, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 697
    :cond_0
    invoke-virtual {p0, v1}, Lcom/oplus/camera/screen/b/k;->a([Landroid/view/View;)V

    return-void
.end method

.method public b(I)I
    .locals 0

    const/16 p0, 0x5a

    return p0
.end method

.method protected b(Landroid/app/Activity;)V
    .locals 1

    .line 73
    invoke-virtual {p1}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    .line 74
    iput-object p1, p0, Lcom/oplus/camera/screen/b/k;->g:Landroid/app/Activity;

    .line 75
    invoke-super {p0, p1}, Lcom/oplus/camera/screen/b/a;->b(Landroid/app/Activity;)V

    const/4 v0, 0x0

    .line 76
    invoke-virtual {p0, p1, v0}, Lcom/oplus/camera/screen/b/k;->b(Landroid/app/Activity;Lcom/oplus/camera/screen/c;)V

    .line 77
    invoke-virtual {p0, p1, v0, v0}, Lcom/oplus/camera/screen/b/k;->a(Landroid/app/Activity;Lcom/oplus/camera/screen/c;Lcom/oplus/camera/screen/c;)V

    .line 78
    invoke-virtual {p0, p1}, Lcom/oplus/camera/screen/b/k;->f(Landroid/app/Activity;)V

    .line 79
    invoke-virtual {p0, p1, v0}, Lcom/oplus/camera/screen/b/k;->a(Landroid/app/Activity;Lcom/oplus/camera/screen/c;)V

    .line 80
    invoke-virtual {p0, p1, v0}, Lcom/oplus/camera/screen/b/k;->d(Landroid/app/Activity;Lcom/oplus/camera/screen/c;)V

    .line 81
    invoke-virtual {p0, p1, v0}, Lcom/oplus/camera/screen/b/k;->c(Landroid/app/Activity;Lcom/oplus/camera/screen/c;)V

    .line 82
    invoke-direct {p0, p1}, Lcom/oplus/camera/screen/b/k;->j(Landroid/app/Activity;)V

    .line 83
    invoke-virtual {p0, p1, v0}, Lcom/oplus/camera/screen/b/k;->f(Landroid/app/Activity;Lcom/oplus/camera/screen/c;)V

    .line 84
    invoke-direct {p0, p1}, Lcom/oplus/camera/screen/b/k;->i(Landroid/app/Activity;)V

    .line 85
    invoke-direct {p0, p1}, Lcom/oplus/camera/screen/b/k;->h(Landroid/app/Activity;)V

    .line 86
    invoke-virtual {p0, p1, v0, v0, v0}, Lcom/oplus/camera/screen/b/k;->a(Landroid/app/Activity;Lcom/oplus/camera/screen/c;Lcom/oplus/camera/screen/c;Lcom/oplus/camera/screen/c;)V

    .line 87
    invoke-virtual {p0, p1, v0}, Lcom/oplus/camera/screen/b/k;->e(Landroid/app/Activity;Lcom/oplus/camera/screen/c;)V

    return-void
.end method

.method public b(Landroid/app/Activity;I)V
    .locals 4

    .line 541
    iget-boolean p0, p0, Lcom/oplus/camera/screen/b/k;->d:Z

    const/4 v0, 0x0

    const/4 v1, 0x1

    if-eqz p0, :cond_0

    if-ne p2, v1, :cond_0

    move p0, v0

    goto :goto_0

    :cond_0
    move p0, v1

    :goto_0
    const v2, 0x7f090168

    .line 545
    invoke-static {p1, v2, p0}, Lcom/oplus/camera/util/Util;->a(Landroid/app/Activity;IZ)V

    const v2, 0x7f090145

    .line 546
    invoke-static {p1, v2, p0}, Lcom/oplus/camera/util/Util;->a(Landroid/app/Activity;IZ)V

    const v2, 0x7f0900a2

    .line 547
    invoke-static {p1, v2, p0}, Lcom/oplus/camera/util/Util;->a(Landroid/app/Activity;IZ)V

    const v2, 0x7f0903c3

    .line 548
    invoke-static {p1, v2, p0}, Lcom/oplus/camera/util/Util;->a(Landroid/app/Activity;IZ)V

    const v2, 0x7f0903c0

    .line 549
    invoke-static {p1, v2, p0}, Lcom/oplus/camera/util/Util;->a(Landroid/app/Activity;IZ)V

    const v2, 0x7f090312

    .line 550
    invoke-virtual {p1, v2}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    if-eqz v2, :cond_1

    const/16 v3, 0x8

    .line 553
    invoke-virtual {v2, v3}, Landroid/view/View;->setVisibility(I)V

    :cond_1
    const/4 v2, 0x2

    const v3, 0x7f0902a7

    if-eq v2, p2, :cond_3

    const/4 v2, 0x6

    if-eq v2, p2, :cond_3

    if-eqz p2, :cond_3

    const/4 v2, 0x7

    if-ne v2, p2, :cond_2

    goto :goto_1

    .line 562
    :cond_2
    invoke-static {p1, v3, v0}, Lcom/oplus/camera/util/Util;->a(Landroid/app/Activity;IZ)V

    goto :goto_2

    .line 560
    :cond_3
    :goto_1
    invoke-static {p1, v3, v1}, Lcom/oplus/camera/util/Util;->a(Landroid/app/Activity;IZ)V

    :goto_2
    if-eqz p0, :cond_4

    const p0, 0x7f080641

    goto :goto_3

    :cond_4
    const p0, 0x7f08063f

    :goto_3
    const p2, 0x7f090419

    .line 566
    invoke-static {p1, p2, p0}, Lcom/oplus/camera/util/Util;->a(Landroid/app/Activity;II)V

    const p2, 0x7f090384

    .line 567
    invoke-static {p1, p2, p0}, Lcom/oplus/camera/util/Util;->a(Landroid/app/Activity;II)V

    const p2, 0x7f0900a1

    .line 568
    invoke-static {p1, p2, p0}, Lcom/oplus/camera/util/Util;->a(Landroid/app/Activity;II)V

    const p2, 0x7f0902e7

    .line 569
    invoke-static {p1, p2, p0}, Lcom/oplus/camera/util/Util;->a(Landroid/app/Activity;II)V

    return-void
.end method

.method protected b(Landroid/app/Activity;Lcom/oplus/camera/screen/c;)V
    .locals 9

    .line 175
    invoke-virtual {p1}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f070d7b

    .line 176
    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    const v2, 0x7f070dc1

    .line 177
    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    const v3, 0x7f070a0a

    .line 178
    invoke-virtual {v0, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v3

    const v4, 0x7f070dbc

    .line 179
    invoke-virtual {v0, v4}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    const/4 v4, 0x2

    .line 180
    new-array v5, v4, [I

    mul-int/lit8 v6, v1, 0x2

    const/4 v7, 0x0

    aput v6, v5, v7

    add-int v6, v1, v3

    const/4 v8, 0x1

    aput v6, v5, v8

    iput-object v5, p2, Lcom/oplus/camera/screen/c;->c:[I

    const/16 v5, 0x5a

    .line 181
    iput v5, p2, Lcom/oplus/camera/screen/c;->d:I

    .line 182
    new-instance v5, Lcom/oplus/camera/screen/b/-$$Lambda$k$--o2Rp9vyncve6UMwl1OmYv0jP4;

    invoke-direct {v5, p1, v1, v3, v2}, Lcom/oplus/camera/screen/b/-$$Lambda$k$--o2Rp9vyncve6UMwl1OmYv0jP4;-><init>(Landroid/app/Activity;III)V

    iput-object v5, p2, Lcom/oplus/camera/screen/c;->f:Lcom/oplus/camera/screen/c$a;

    .line 189
    iget-object p1, p0, Lcom/oplus/camera/screen/b/k;->a:Ljava/util/Map;

    const v1, 0x7f090437

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {p1, v1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 191
    new-instance p1, Lcom/oplus/camera/screen/c;

    const/4 p2, 0x4

    new-array v1, p2, [I

    fill-array-data v1, :array_0

    new-array p2, p2, [I

    aput v7, p2, v7

    neg-int v0, v0

    sub-int/2addr v0, v3

    aput v0, p2, v8

    aput v7, p2, v4

    const/4 v0, 0x3

    aput v7, p2, v0

    invoke-direct {p1, v1, p2}, Lcom/oplus/camera/screen/c;-><init>([I[I)V

    .line 195
    new-array p2, v4, [I

    fill-array-data p2, :array_1

    iput-object p2, p1, Lcom/oplus/camera/screen/c;->c:[I

    .line 196
    iget-object p0, p0, Lcom/oplus/camera/screen/b/k;->a:Ljava/util/Map;

    const p2, 0x7f090436

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    invoke-interface {p0, p2, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void

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

.method public b(Z)V
    .locals 0

    .line 55
    iput-boolean p1, p0, Lcom/oplus/camera/screen/b/k;->d:Z

    return-void
.end method

.method public b(Landroid/app/Activity;Landroid/graphics/Rect;)Z
    .locals 0

    .line 527
    invoke-virtual {p1}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    .line 528
    invoke-virtual {p2}, Landroid/graphics/Rect;->centerX()I

    move-result p1

    const p2, 0x7f0709ea

    invoke-virtual {p0, p2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p0

    if-gt p1, p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public c(Landroid/app/Activity;)I
    .locals 0

    .line 616
    invoke-virtual {p1}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    const p1, 0x7f070975

    .line 617
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

    .line 485
    invoke-super {p0}, Lcom/oplus/camera/screen/b/a;->c()Ljava/util/ArrayList;

    move-result-object p0

    const-string v0, "multiCamera"

    .line 486
    invoke-virtual {p0, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const-string v0, "panorama"

    .line 487
    invoke-virtual {p0, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const-string v0, "superText"

    .line 488
    invoke-virtual {p0, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-object p0
.end method

.method protected c(Landroid/app/Activity;Lcom/oplus/camera/screen/c;)V
    .locals 2

    .line 321
    invoke-virtual {p1}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const v0, 0x7f070477

    .line 322
    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result p1

    const/4 v0, 0x2

    .line 323
    new-array v0, v0, [I

    const/4 v1, 0x0

    aput p1, v0, v1

    const/4 v1, 0x1

    aput p1, v0, v1

    iput-object v0, p2, Lcom/oplus/camera/screen/c;->c:[I

    .line 324
    iget-object p0, p0, Lcom/oplus/camera/screen/b/k;->a:Ljava/util/Map;

    const p1, 0x7f0900a2

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-interface {p0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public c(Lcom/oplus/camera/screen/b/o$a;Lcom/oplus/camera/screen/b/o$a;)V
    .locals 0

    const/4 p0, 0x0

    .line 460
    new-array p0, p0, [Ljava/lang/Object;

    invoke-interface {p2, p0}, Lcom/oplus/camera/screen/b/o$a;->call([Ljava/lang/Object;)V

    return-void
.end method

.method protected d(Landroid/app/Activity;Lcom/oplus/camera/screen/c;)V
    .locals 3

    .line 328
    invoke-virtual {p1}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0709d8

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v0

    const/4 v1, 0x2

    .line 329
    new-array v1, v1, [I

    const/4 v2, 0x0

    aput v0, v1, v2

    const/4 v2, 0x1

    aput v0, v1, v2

    iput-object v1, p2, Lcom/oplus/camera/screen/c;->c:[I

    .line 330
    iget-object p0, p0, Lcom/oplus/camera/screen/b/k;->a:Ljava/util/Map;

    const v0, 0x7f090168

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-interface {p0, v0, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const p0, 0x7f090145

    .line 331
    invoke-virtual {p1, p0}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object p0

    const/16 p1, 0x8

    .line 332
    invoke-virtual {p0, p1}, Landroid/view/View;->setVisibility(I)V

    return-void
.end method

.method public d(Lcom/oplus/camera/screen/b/o$a;Lcom/oplus/camera/screen/b/o$a;)V
    .locals 0

    const/4 p0, 0x0

    .line 464
    new-array p0, p0, [Ljava/lang/Object;

    invoke-interface {p2, p0}, Lcom/oplus/camera/screen/b/o$a;->call([Ljava/lang/Object;)V

    return-void
.end method

.method public e()Landroid/widget/RelativeLayout$LayoutParams;
    .locals 2

    .line 606
    new-instance v0, Landroid/widget/RelativeLayout$LayoutParams;

    iget p0, p0, Lcom/oplus/camera/screen/b/k;->c:I

    const/4 v1, -0x2

    invoke-direct {v0, v1, p0}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    const/16 p0, 0xc

    .line 607
    invoke-virtual {v0, p0}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    const/16 p0, 0xe

    .line 608
    invoke-virtual {v0, p0}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    const p0, 0x7f070529

    .line 609
    invoke-static {p0}, Lcom/oplus/camera/util/Util;->i(I)I

    move-result p0

    iput p0, v0, Landroid/widget/RelativeLayout$LayoutParams;->bottomMargin:I

    return-object v0
.end method

.method protected e(Landroid/app/Activity;Lcom/oplus/camera/screen/c;)V
    .locals 8

    .line 438
    invoke-virtual {p1}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const/4 p2, 0x2

    .line 439
    new-array v0, p2, [I

    fill-array-data v0, :array_0

    const v1, 0x7f070c18

    .line 440
    invoke-virtual {p1, v1}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result p1

    .line 442
    new-instance v1, Lcom/oplus/camera/screen/c;

    const/4 v2, 0x4

    new-array v3, v2, [I

    const/4 v4, 0x0

    aput v4, v3, v4

    const/4 v5, 0x1

    aput v4, v3, v5

    aput v4, v3, p2

    const/4 v6, 0x3

    aput p1, v3, v6

    invoke-direct {v1, v0, v3}, Lcom/oplus/camera/screen/c;-><init>([I[I)V

    .line 443
    iget-object v3, p0, Lcom/oplus/camera/screen/b/k;->a:Ljava/util/Map;

    const v7, 0x7f0903b8

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-interface {v3, v7, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 445
    new-instance v1, Lcom/oplus/camera/screen/c;

    new-array v2, v2, [I

    aput v4, v2, v4

    aput v4, v2, v5

    aput v4, v2, p2

    aput p1, v2, v6

    invoke-direct {v1, v0, v2}, Lcom/oplus/camera/screen/c;-><init>([I[I)V

    .line 446
    iget-object p0, p0, Lcom/oplus/camera/screen/b/k;->a:Ljava/util/Map;

    const p1, 0x7f0903bc

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-interface {p0, p1, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void

    :array_0
    .array-data 4
        0xc
        0x0
    .end array-data
.end method

.method public f()Landroid/widget/RelativeLayout$LayoutParams;
    .locals 2

    const p0, 0x7f0706fc

    .line 622
    invoke-static {p0}, Lcom/oplus/camera/util/Util;->i(I)I

    move-result p0

    const v0, 0x7f07052a

    .line 623
    invoke-static {v0}, Lcom/oplus/camera/util/Util;->i(I)I

    move-result v0

    .line 624
    new-instance v1, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v1, v0, p0}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    const/16 p0, 0xe

    .line 625
    invoke-virtual {v1, p0}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    const/16 p0, 0xc

    .line 626
    invoke-virtual {v1, p0}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    return-object v1
.end method

.method protected f(Landroid/app/Activity;)V
    .locals 10

    .line 207
    invoke-virtual {p1}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f070a05

    .line 208
    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    const v2, 0x7f070a03

    .line 209
    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    const v3, 0x7f0709e9

    .line 210
    invoke-virtual {v0, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v3

    const v4, 0x7f070a04

    .line 211
    invoke-virtual {v0, v4}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    .line 214
    new-instance v4, Lcom/oplus/camera/screen/c;

    const/4 v5, 0x4

    new-array v6, v5, [I

    fill-array-data v6, :array_0

    new-array v5, v5, [I

    const/4 v7, 0x0

    aput v7, v5, v7

    const/4 v8, 0x1

    aput v0, v5, v8

    const/4 v0, 0x2

    aput v7, v5, v0

    const/4 v9, 0x3

    aput v7, v5, v9

    invoke-direct {v4, v6, v5}, Lcom/oplus/camera/screen/c;-><init>([I[I)V

    .line 222
    new-array v0, v0, [I

    aput v1, v0, v7

    const/4 v5, -0x2

    aput v5, v0, v8

    iput-object v0, v4, Lcom/oplus/camera/screen/c;->c:[I

    .line 226
    iput v7, v4, Lcom/oplus/camera/screen/c;->d:I

    .line 227
    new-instance v0, Lcom/oplus/camera/screen/b/-$$Lambda$k$FkoIiEL52jp7eWK5LzY564oVMJU;

    invoke-direct {v0, p1, v1, v2, v3}, Lcom/oplus/camera/screen/b/-$$Lambda$k$FkoIiEL52jp7eWK5LzY564oVMJU;-><init>(Landroid/app/Activity;III)V

    iput-object v0, v4, Lcom/oplus/camera/screen/c;->f:Lcom/oplus/camera/screen/c$a;

    .line 246
    iget-object p0, p0, Lcom/oplus/camera/screen/b/k;->a:Ljava/util/Map;

    const p1, 0x7f09029a

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-interface {p0, p1, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void

    :array_0
    .array-data 4
        0xe
        0x0
        0xa
        0x0
    .end array-data
.end method

.method protected f(Landroid/app/Activity;Lcom/oplus/camera/screen/c;)V
    .locals 0

    .line 573
    iget-object p0, p0, Lcom/oplus/camera/screen/b/k;->a:Ljava/util/Map;

    const p1, 0x7f0902a7

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-interface {p0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public g()Landroid/widget/RelativeLayout$LayoutParams;
    .locals 3

    const p0, 0x7f070b2f

    .line 633
    invoke-static {p0}, Lcom/oplus/camera/util/Util;->i(I)I

    move-result p0

    const v0, 0x7f07052b

    .line 634
    invoke-static {v0}, Lcom/oplus/camera/util/Util;->i(I)I

    move-result v0

    const v1, 0x7f07052d

    .line 635
    invoke-static {v1}, Lcom/oplus/camera/util/Util;->i(I)I

    move-result v1

    .line 636
    new-instance v2, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v2, v1, p0}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    const/4 p0, 0x0

    .line 637
    invoke-virtual {v2, p0, p0, p0, v0}, Landroid/widget/RelativeLayout$LayoutParams;->setMargins(IIII)V

    const/16 p0, 0xe

    .line 638
    invoke-virtual {v2, p0}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    const/16 p0, 0xc

    .line 639
    invoke-virtual {v2, p0}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    return-object v2
.end method

.method public i()Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public j()I
    .locals 0

    const/4 p0, 0x4

    return p0
.end method

.method public q()Z
    .locals 0

    .line 50
    iget-boolean p0, p0, Lcom/oplus/camera/screen/b/k;->d:Z

    return p0
.end method

.method public r()Z
    .locals 0

    const/4 p0, 0x1

    return p0
.end method
