.class public Lcom/oplus/camera/screen/b/n;
.super Lcom/oplus/camera/screen/b/h;
.source "RightScreenMode.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 28
    invoke-direct {p0}, Lcom/oplus/camera/screen/b/h;-><init>()V

    return-void
.end method

.method private static synthetic a(Landroid/app/Activity;Landroid/view/View;)V
    .locals 4

    const p1, 0x7f090196

    .line 60
    invoke-virtual {p0, p1}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/RelativeLayout;

    const v0, 0x7f09019c

    .line 61
    invoke-virtual {p1, v0}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroidx/viewpager2/widget/ViewPager2;

    const/4 v1, 0x0

    .line 62
    invoke-virtual {v0, v1}, Landroidx/viewpager2/widget/ViewPager2;->setLayoutAnimation(Landroid/view/animation/LayoutAnimationController;)V

    .line 63
    invoke-virtual {v0}, Landroidx/viewpager2/widget/ViewPager2;->getAdapter()Landroidx/recyclerview/widget/RecyclerView$a;

    move-result-object v1

    check-cast v1, Lcom/oplus/camera/ui/k;

    if-eqz v1, :cond_1

    .line 65
    invoke-virtual {v1}, Lcom/oplus/camera/ui/k;->a()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 66
    invoke-virtual {v1}, Lcom/oplus/camera/ui/k;->getItemCount()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    const/4 v3, 0x0

    invoke-virtual {v0, v2, v3}, Landroidx/viewpager2/widget/ViewPager2;->a(IZ)V

    .line 68
    invoke-virtual {v1}, Lcom/oplus/camera/ui/k;->getItemCount()I

    move-result v0

    if-nez v0, :cond_0

    const v0, 0x7f09019e

    .line 69
    invoke-virtual {p0, v0}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/oplus/camera/ui/inverse/InverseTextView;

    .line 70
    invoke-virtual {v0, v3}, Lcom/oplus/camera/ui/inverse/InverseTextView;->setVisibility(I)V

    const v0, 0x7f090198

    .line 71
    invoke-virtual {p0, v0}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object p0

    check-cast p0, Lcom/oplus/camera/ui/j;

    const/4 v0, 0x4

    .line 72
    invoke-virtual {p0, v0}, Lcom/oplus/camera/ui/j;->setVisibility(I)V

    .line 75
    :cond_0
    invoke-virtual {p1, v3}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    :cond_1
    return-void
.end method

.method private static synthetic a(Landroid/view/View;)V
    .locals 1

    .line 49
    check-cast p0, Lcom/oplus/camera/ui/inverse/InverseColorRelativeLayout;

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/oplus/camera/ui/inverse/InverseColorRelativeLayout;->setBackgroundAlwaysTransparent(Z)V

    return-void
.end method

.method public static synthetic lambda$8GdaqbkcSHKdi7h2PO2SgwvancY(Landroid/app/Activity;Landroid/view/View;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/oplus/camera/screen/b/n;->a(Landroid/app/Activity;Landroid/view/View;)V

    return-void
.end method

.method public static synthetic lambda$dgTbmGO4ZTzg0v8BKYws21Ks-dc(Landroid/view/View;)V
    .locals 0

    invoke-static {p0}, Lcom/oplus/camera/screen/b/n;->a(Landroid/view/View;)V

    return-void
.end method


# virtual methods
.method public a(Landroid/util/Size;)Landroid/widget/RelativeLayout$LayoutParams;
    .locals 2

    if-nez p1, :cond_0

    const/4 p0, 0x0

    return-object p0

    .line 102
    :cond_0
    invoke-virtual {p1}, Landroid/util/Size;->getHeight()I

    move-result v0

    .line 103
    invoke-virtual {p1}, Landroid/util/Size;->getWidth()I

    move-result p1

    .line 104
    invoke-virtual {p0, v0, p1}, Lcom/oplus/camera/screen/b/n;->b(II)Landroid/graphics/Rect;

    move-result-object p0

    .line 105
    new-instance p1, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-virtual {p0}, Landroid/graphics/Rect;->width()I

    move-result v0

    invoke-virtual {p0}, Landroid/graphics/Rect;->height()I

    move-result v1

    invoke-direct {p1, v0, v1}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    const/16 v0, 0xb

    .line 106
    invoke-virtual {p1, v0}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    const/16 v0, 0xa

    .line 107
    invoke-virtual {p1, v0}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 108
    iget v0, p0, Landroid/graphics/Rect;->left:I

    iput v0, p1, Landroid/widget/RelativeLayout$LayoutParams;->leftMargin:I

    .line 109
    iget p0, p0, Landroid/graphics/Rect;->top:I

    iput p0, p1, Landroid/widget/RelativeLayout$LayoutParams;->topMargin:I

    return-object p1
.end method

.method public a(Landroid/content/Context;)Lcom/oplus/camera/ui/preview/w;
    .locals 2

    .line 83
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    .line 84
    invoke-static {}, Lcom/oplus/camera/util/Util;->getScreenWidth()I

    move-result p1

    div-int/lit8 p1, p1, 0x2

    .line 85
    new-instance v0, Lcom/oplus/camera/ui/preview/w;

    invoke-static {}, Lcom/oplus/camera/util/Util;->getScreenHeight()I

    move-result v1

    invoke-direct {v0, p1, v1}, Lcom/oplus/camera/ui/preview/w;-><init>(II)V

    const p1, 0x7f070533

    .line 86
    invoke-virtual {p0, p1}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result p0

    invoke-virtual {v0, p0}, Lcom/oplus/camera/ui/preview/w;->a(I)V

    return-object v0
.end method

.method public a(Lcom/oplus/camera/screen/ScreenRelativeLayout;)V
    .locals 0

    .line 31
    invoke-super {p0, p1}, Lcom/oplus/camera/screen/b/h;->a(Lcom/oplus/camera/screen/ScreenRelativeLayout;)V

    .line 32
    invoke-virtual {p1}, Lcom/oplus/camera/screen/ScreenRelativeLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p0

    check-cast p0, Landroid/widget/RelativeLayout$LayoutParams;

    const/16 p1, 0xb

    .line 33
    invoke-virtual {p0, p1}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    return-void
.end method

.method public a(Lcom/oplus/camera/ui/CameraUIInterface;II)Z
    .locals 1

    .line 92
    invoke-interface {p1}, Lcom/oplus/camera/ui/CameraUIInterface;->am()I

    move-result v0

    if-lt p3, v0, :cond_0

    invoke-interface {p1}, Lcom/oplus/camera/ui/CameraUIInterface;->an()I

    move-result p1

    if-gt p3, p1, :cond_0

    iget p0, p0, Lcom/oplus/camera/screen/b/n;->b:I

    if-lt p2, p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public b(II)Landroid/graphics/Rect;
    .locals 2

    .line 116
    invoke-static {}, Lcom/oplus/camera/util/Util;->getScreenWidth()I

    move-result v0

    div-int/lit8 v0, v0, 0x2

    iput v0, p0, Lcom/oplus/camera/screen/b/n;->b:I

    .line 117
    invoke-static {}, Lcom/oplus/camera/util/Util;->getScreenHeight()I

    move-result v0

    iput v0, p0, Lcom/oplus/camera/screen/b/n;->c:I

    int-to-float p2, p2

    int-to-float p1, p1

    div-float/2addr p2, p1

    .line 120
    iget p1, p0, Lcom/oplus/camera/screen/b/n;->b:I

    int-to-float p1, p1

    mul-float/2addr p1, p2

    invoke-static {p1}, Ljava/lang/Math;->round(F)I

    move-result p1

    .line 122
    invoke-static {}, Lcom/oplus/camera/util/Util;->l()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f07053e

    .line 123
    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    .line 124
    iget v1, p0, Lcom/oplus/camera/screen/b/n;->c:I

    sub-int/2addr v1, p1

    div-int/lit8 v1, v1, 0x2

    invoke-static {p2}, Lcom/oplus/camera/screen/b/n;->a(F)I

    move-result p2

    add-int/2addr v1, p2

    sub-int/2addr v1, v0

    .line 125
    new-instance p2, Landroid/graphics/Rect;

    iget p0, p0, Lcom/oplus/camera/screen/b/n;->b:I

    add-int/2addr p1, v1

    const/4 v0, 0x0

    invoke-direct {p2, v0, v1, p0, p1}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 126
    invoke-static {}, Lcom/oplus/camera/util/Util;->getScreenWidth()I

    move-result p0

    div-int/lit8 p0, p0, 0x2

    .line 127
    iput p0, p2, Landroid/graphics/Rect;->left:I

    .line 128
    iget p1, p2, Landroid/graphics/Rect;->right:I

    add-int/2addr p1, p0

    iput p1, p2, Landroid/graphics/Rect;->right:I

    return-object p2
.end method

.method protected f(Landroid/app/Activity;)V
    .locals 6

    .line 43
    invoke-virtual {p1}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f070545

    .line 44
    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v1

    const v2, 0x7f070184

    .line 45
    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v0

    .line 46
    new-instance v2, Lcom/oplus/camera/screen/c;

    const/4 v3, 0x2

    new-array v4, v3, [I

    fill-array-data v4, :array_0

    const/4 v5, 0x0

    invoke-direct {v2, v4, v5}, Lcom/oplus/camera/screen/c;-><init>([I[I)V

    .line 47
    new-array v3, v3, [I

    const/4 v4, 0x0

    const/4 v5, -0x1

    aput v5, v3, v4

    add-int/2addr v1, v0

    const/4 v0, 0x1

    aput v1, v3, v0

    iput-object v3, v2, Lcom/oplus/camera/screen/c;->c:[I

    .line 48
    sget-object v0, Lcom/oplus/camera/screen/b/-$$Lambda$n$dgTbmGO4ZTzg0v8BKYws21Ks-dc;->INSTANCE:Lcom/oplus/camera/screen/b/-$$Lambda$n$dgTbmGO4ZTzg0v8BKYws21Ks-dc;

    iput-object v0, v2, Lcom/oplus/camera/screen/c;->f:Lcom/oplus/camera/screen/c$a;

    .line 51
    iget-object v0, p0, Lcom/oplus/camera/screen/b/n;->a:Ljava/util/Map;

    const v1, 0x7f0900e5

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 52
    invoke-super {p0, p1}, Lcom/oplus/camera/screen/b/h;->f(Landroid/app/Activity;)V

    return-void

    :array_0
    .array-data 4
        0xc
        0x0
    .end array-data
.end method

.method public h()Ljava/lang/String;
    .locals 0

    const-string p0, "right"

    return-object p0
.end method

.method protected i(Landroid/app/Activity;)V
    .locals 4

    .line 57
    new-instance v0, Lcom/oplus/camera/screen/c;

    const/4 v1, 0x2

    new-array v2, v1, [I

    fill-array-data v2, :array_0

    const/4 v3, 0x0

    invoke-direct {v0, v2, v3}, Lcom/oplus/camera/screen/c;-><init>([I[I)V

    .line 58
    new-array v1, v1, [I

    iget v2, p0, Lcom/oplus/camera/screen/b/n;->b:I

    const/4 v3, 0x0

    aput v2, v1, v3

    iget v2, p0, Lcom/oplus/camera/screen/b/n;->c:I

    const/4 v3, 0x1

    aput v2, v1, v3

    iput-object v1, v0, Lcom/oplus/camera/screen/c;->c:[I

    .line 59
    new-instance v1, Lcom/oplus/camera/screen/b/-$$Lambda$n$8GdaqbkcSHKdi7h2PO2SgwvancY;

    invoke-direct {v1, p1}, Lcom/oplus/camera/screen/b/-$$Lambda$n$8GdaqbkcSHKdi7h2PO2SgwvancY;-><init>(Landroid/app/Activity;)V

    iput-object v1, v0, Lcom/oplus/camera/screen/c;->f:Lcom/oplus/camera/screen/c$a;

    .line 78
    iget-object p0, p0, Lcom/oplus/camera/screen/b/n;->a:Ljava/util/Map;

    const p1, 0x7f090196

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-interface {p0, p1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void

    :array_0
    .array-data 4
        0x9
        0x0
    .end array-data
.end method

.method public p()I
    .locals 0

    const/4 p0, 0x1

    return p0
.end method
