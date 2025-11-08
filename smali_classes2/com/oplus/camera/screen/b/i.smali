.class public Lcom/oplus/camera/screen/b/i;
.super Lcom/oplus/camera/screen/b/h;
.source "LeftScreenMode.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 29
    invoke-direct {p0}, Lcom/oplus/camera/screen/b/h;-><init>()V

    return-void
.end method

.method private static synthetic a(Landroid/app/Activity;Landroid/view/View;)V
    .locals 4

    const p1, 0x7f090196

    .line 61
    invoke-virtual {p0, p1}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/RelativeLayout;

    const v0, 0x7f09019c

    .line 62
    invoke-virtual {p1, v0}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroidx/viewpager2/widget/ViewPager2;

    const/4 v1, 0x0

    .line 63
    invoke-virtual {v0, v1}, Landroidx/viewpager2/widget/ViewPager2;->setLayoutAnimation(Landroid/view/animation/LayoutAnimationController;)V

    .line 65
    invoke-virtual {v0}, Landroidx/viewpager2/widget/ViewPager2;->getAdapter()Landroidx/recyclerview/widget/RecyclerView$a;

    move-result-object v1

    check-cast v1, Lcom/oplus/camera/ui/k;

    if-eqz v1, :cond_1

    .line 67
    invoke-virtual {v1}, Lcom/oplus/camera/ui/k;->a()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 68
    invoke-virtual {v1}, Lcom/oplus/camera/ui/k;->getItemCount()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    const/4 v3, 0x0

    invoke-virtual {v0, v2, v3}, Landroidx/viewpager2/widget/ViewPager2;->a(IZ)V

    .line 70
    invoke-virtual {v1}, Lcom/oplus/camera/ui/k;->getItemCount()I

    move-result v0

    if-nez v0, :cond_0

    const v0, 0x7f09019e

    .line 71
    invoke-virtual {p0, v0}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/oplus/camera/ui/inverse/InverseTextView;

    .line 72
    invoke-virtual {v0, v3}, Lcom/oplus/camera/ui/inverse/InverseTextView;->setVisibility(I)V

    const v0, 0x7f090198

    .line 73
    invoke-virtual {p0, v0}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object p0

    check-cast p0, Lcom/oplus/camera/ui/j;

    const/4 v0, 0x4

    .line 74
    invoke-virtual {p0, v0}, Lcom/oplus/camera/ui/j;->setVisibility(I)V

    .line 77
    :cond_0
    invoke-virtual {p1, v3}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    :cond_1
    return-void
.end method

.method private static synthetic a(Landroid/view/View;)V
    .locals 1

    .line 50
    check-cast p0, Lcom/oplus/camera/ui/inverse/InverseColorRelativeLayout;

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/oplus/camera/ui/inverse/InverseColorRelativeLayout;->setBackgroundAlwaysTransparent(Z)V

    return-void
.end method

.method public static synthetic lambda$6xrt5IqO6u0YhJxyrMuXYZ9qP0A(Landroid/app/Activity;Landroid/view/View;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/oplus/camera/screen/b/i;->a(Landroid/app/Activity;Landroid/view/View;)V

    return-void
.end method

.method public static synthetic lambda$LqrCmmCWkQrrk6nplIHginwUK1E(Landroid/view/View;)V
    .locals 0

    invoke-static {p0}, Lcom/oplus/camera/screen/b/i;->a(Landroid/view/View;)V

    return-void
.end method


# virtual methods
.method public a(Landroid/util/Size;)Landroid/widget/RelativeLayout$LayoutParams;
    .locals 2

    if-nez p1, :cond_0

    const/4 p0, 0x0

    return-object p0

    .line 111
    :cond_0
    invoke-virtual {p1}, Landroid/util/Size;->getHeight()I

    move-result v0

    .line 112
    invoke-virtual {p1}, Landroid/util/Size;->getWidth()I

    move-result p1

    .line 113
    invoke-virtual {p0, v0, p1}, Lcom/oplus/camera/screen/b/i;->b(II)Landroid/graphics/Rect;

    move-result-object p0

    .line 114
    new-instance p1, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-virtual {p0}, Landroid/graphics/Rect;->width()I

    move-result v0

    invoke-virtual {p0}, Landroid/graphics/Rect;->height()I

    move-result v1

    invoke-direct {p1, v0, v1}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    const/16 v0, 0x14

    .line 115
    invoke-virtual {p1, v0}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    const/16 v0, 0xa

    .line 116
    invoke-virtual {p1, v0}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 117
    iget v0, p0, Landroid/graphics/Rect;->left:I

    iput v0, p1, Landroid/widget/RelativeLayout$LayoutParams;->leftMargin:I

    .line 118
    iget p0, p0, Landroid/graphics/Rect;->top:I

    iput p0, p1, Landroid/widget/RelativeLayout$LayoutParams;->topMargin:I

    return-object p1
.end method

.method public a(Landroid/content/Context;)Lcom/oplus/camera/ui/preview/w;
    .locals 1

    .line 92
    invoke-static {}, Lcom/oplus/camera/util/Util;->getScreenWidth()I

    move-result p0

    div-int/lit8 p0, p0, 0x2

    .line 93
    new-instance p1, Lcom/oplus/camera/ui/preview/w;

    invoke-static {}, Lcom/oplus/camera/util/Util;->getScreenHeight()I

    move-result v0

    invoke-direct {p1, p0, v0}, Lcom/oplus/camera/ui/preview/w;-><init>(II)V

    return-object p1
.end method

.method public a(Lcom/oplus/camera/screen/ScreenRelativeLayout;)V
    .locals 0

    .line 32
    invoke-super {p0, p1}, Lcom/oplus/camera/screen/b/h;->a(Lcom/oplus/camera/screen/ScreenRelativeLayout;)V

    .line 33
    invoke-virtual {p1}, Lcom/oplus/camera/screen/ScreenRelativeLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p0

    check-cast p0, Landroid/widget/RelativeLayout$LayoutParams;

    const/16 p1, 0x9

    .line 34
    invoke-virtual {p0, p1}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    return-void
.end method

.method public a(Lcom/oplus/camera/ui/CameraUIInterface;II)Z
    .locals 1

    .line 86
    invoke-interface {p1}, Lcom/oplus/camera/ui/CameraUIInterface;->am()I

    move-result v0

    if-lt p3, v0, :cond_0

    .line 87
    invoke-interface {p1}, Lcom/oplus/camera/ui/CameraUIInterface;->an()I

    move-result p1

    if-gt p3, p1, :cond_0

    iget p0, p0, Lcom/oplus/camera/screen/b/i;->b:I

    if-gt p2, p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public b(II)Landroid/graphics/Rect;
    .locals 2

    .line 125
    invoke-static {}, Lcom/oplus/camera/util/Util;->getScreenWidth()I

    move-result v0

    div-int/lit8 v0, v0, 0x2

    iput v0, p0, Lcom/oplus/camera/screen/b/i;->b:I

    .line 126
    invoke-static {}, Lcom/oplus/camera/util/Util;->getScreenHeight()I

    move-result v0

    iput v0, p0, Lcom/oplus/camera/screen/b/i;->c:I

    int-to-float p2, p2

    int-to-float p1, p1

    div-float/2addr p2, p1

    .line 129
    iget p1, p0, Lcom/oplus/camera/screen/b/i;->b:I

    int-to-float p1, p1

    mul-float/2addr p1, p2

    invoke-static {p1}, Ljava/lang/Math;->round(F)I

    move-result p1

    .line 130
    invoke-static {}, Lcom/oplus/camera/util/Util;->l()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f070549

    .line 131
    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    .line 132
    iget v1, p0, Lcom/oplus/camera/screen/b/i;->c:I

    sub-int/2addr v1, p1

    div-int/lit8 v1, v1, 0x2

    invoke-static {p2}, Lcom/oplus/camera/screen/b/i;->a(F)I

    move-result p2

    add-int/2addr v1, p2

    sub-int/2addr v1, v0

    .line 133
    new-instance p2, Landroid/graphics/Rect;

    iget p0, p0, Lcom/oplus/camera/screen/b/i;->b:I

    add-int/2addr p1, v1

    const/4 v0, 0x0

    invoke-direct {p2, v0, v1, p0, p1}, Landroid/graphics/Rect;-><init>(IIII)V

    return-object p2
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

    .line 98
    invoke-super {p0}, Lcom/oplus/camera/screen/b/h;->c()Ljava/util/ArrayList;

    move-result-object p0

    const-string v0, "slowVideo"

    .line 99
    invoke-virtual {p0, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const-string v0, "professional"

    .line 100
    invoke-virtual {p0, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-object p0
.end method

.method protected f(Landroid/app/Activity;)V
    .locals 6

    .line 44
    invoke-virtual {p1}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f070545

    .line 45
    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v1

    const v2, 0x7f070184

    .line 46
    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v0

    .line 47
    new-instance v2, Lcom/oplus/camera/screen/c;

    const/4 v3, 0x2

    new-array v4, v3, [I

    fill-array-data v4, :array_0

    const/4 v5, 0x0

    invoke-direct {v2, v4, v5}, Lcom/oplus/camera/screen/c;-><init>([I[I)V

    .line 48
    new-array v3, v3, [I

    const/4 v4, 0x0

    const/4 v5, -0x1

    aput v5, v3, v4

    add-int/2addr v1, v0

    const/4 v0, 0x1

    aput v1, v3, v0

    iput-object v3, v2, Lcom/oplus/camera/screen/c;->c:[I

    .line 49
    sget-object v0, Lcom/oplus/camera/screen/b/-$$Lambda$i$LqrCmmCWkQrrk6nplIHginwUK1E;->INSTANCE:Lcom/oplus/camera/screen/b/-$$Lambda$i$LqrCmmCWkQrrk6nplIHginwUK1E;

    iput-object v0, v2, Lcom/oplus/camera/screen/c;->f:Lcom/oplus/camera/screen/c$a;

    .line 52
    iget-object v0, p0, Lcom/oplus/camera/screen/b/i;->a:Ljava/util/Map;

    const v1, 0x7f0900e5

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 53
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

    const-string p0, "left"

    return-object p0
.end method

.method protected i(Landroid/app/Activity;)V
    .locals 4

    .line 58
    new-instance v0, Lcom/oplus/camera/screen/c;

    const/4 v1, 0x2

    new-array v2, v1, [I

    fill-array-data v2, :array_0

    const/4 v3, 0x0

    invoke-direct {v0, v2, v3}, Lcom/oplus/camera/screen/c;-><init>([I[I)V

    .line 59
    new-array v1, v1, [I

    iget v2, p0, Lcom/oplus/camera/screen/b/i;->b:I

    const/4 v3, 0x0

    aput v2, v1, v3

    iget v2, p0, Lcom/oplus/camera/screen/b/i;->c:I

    const/4 v3, 0x1

    aput v2, v1, v3

    iput-object v1, v0, Lcom/oplus/camera/screen/c;->c:[I

    .line 60
    new-instance v1, Lcom/oplus/camera/screen/b/-$$Lambda$i$6xrt5IqO6u0YhJxyrMuXYZ9qP0A;

    invoke-direct {v1, p1}, Lcom/oplus/camera/screen/b/-$$Lambda$i$6xrt5IqO6u0YhJxyrMuXYZ9qP0A;-><init>(Landroid/app/Activity;)V

    iput-object v1, v0, Lcom/oplus/camera/screen/c;->f:Lcom/oplus/camera/screen/c$a;

    .line 81
    iget-object p0, p0, Lcom/oplus/camera/screen/b/i;->a:Ljava/util/Map;

    const p1, 0x7f090196

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-interface {p0, p1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void

    :array_0
    .array-data 4
        0xb
        0x0
    .end array-data
.end method

.method public p()I
    .locals 0

    const/4 p0, 0x0

    return p0
.end method
