.class public Lcom/oplus/camera/screen/b/m;
.super Lcom/oplus/camera/screen/b/k;
.source "RackScreenMode90.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 18
    invoke-direct {p0}, Lcom/oplus/camera/screen/b/k;-><init>()V

    return-void
.end method


# virtual methods
.method protected a(Landroid/app/Activity;Lcom/oplus/camera/screen/c;Lcom/oplus/camera/screen/c;)V
    .locals 5

    .line 119
    invoke-virtual {p1}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object p3

    const v0, 0x7f0709d5

    .line 120
    invoke-virtual {p3, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p3

    .line 121
    invoke-static {}, Lcom/oplus/camera/util/Util;->Z()I

    move-result v0

    int-to-float v0, v0

    const/high16 v1, 0x40a00000    # 5.0f

    div-float/2addr v0, v1

    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    move-result v0

    add-int/2addr p3, v0

    .line 122
    new-instance v0, Lcom/oplus/camera/screen/c;

    const/4 v1, 0x4

    new-array v2, v1, [I

    fill-array-data v2, :array_0

    new-array v1, v1, [I

    const/4 v3, 0x0

    aput v3, v1, v3

    const/4 v4, 0x1

    aput v3, v1, v4

    const/4 v4, 0x2

    aput p3, v1, v4

    const/4 p3, 0x3

    aput v3, v1, p3

    invoke-direct {v0, v2, v1}, Lcom/oplus/camera/screen/c;-><init>([I[I)V

    .line 125
    invoke-super {p0, p1, p2, v0}, Lcom/oplus/camera/screen/b/k;->a(Landroid/app/Activity;Lcom/oplus/camera/screen/c;Lcom/oplus/camera/screen/c;)V

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

.method public a(Lcom/oplus/camera/screen/ScreenRelativeLayout;)V
    .locals 0

    .line 23
    invoke-super {p0, p1}, Lcom/oplus/camera/screen/b/k;->a(Lcom/oplus/camera/screen/ScreenRelativeLayout;)V

    const/high16 p0, 0x42b40000    # 90.0f

    .line 24
    invoke-virtual {p1, p0}, Lcom/oplus/camera/screen/ScreenRelativeLayout;->setRotation(F)V

    return-void
.end method

.method public a(Landroid/app/Activity;Landroid/graphics/Rect;)Z
    .locals 0

    .line 81
    invoke-super {p0, p1, p2}, Lcom/oplus/camera/screen/b/k;->a(Landroid/app/Activity;Landroid/graphics/Rect;)Z

    move-result p0

    return p0
.end method

.method public a(Landroid/app/Activity;ZFF)Z
    .locals 0

    .line 76
    invoke-virtual {p1}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    const p1, 0x7f0709ea

    .line 77
    invoke-virtual {p0, p1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p0

    int-to-float p0, p0

    cmpl-float p0, p3, p0

    if-lez p0, :cond_0

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

    .line 89
    new-array v0, p0, [F

    .line 90
    new-array p0, p0, [I

    .line 91
    invoke-virtual {p1, p0}, Landroid/view/View;->getLocationOnScreen([I)V

    const/4 v1, 0x1

    .line 92
    aget v2, p0, v1

    int-to-float v2, v2

    sub-float/2addr p3, v2

    const/4 v2, 0x0

    aput p3, v0, v2

    .line 93
    aget p0, p0, v2

    int-to-float p0, p0

    sub-float/2addr p0, p2

    aput p0, v0, v1

    .line 95
    invoke-virtual {p1}, Landroid/view/View;->getPaddingLeft()I

    move-result p0

    .line 96
    invoke-virtual {p1}, Landroid/view/View;->getWidth()I

    move-result p2

    invoke-virtual {p1}, Landroid/view/View;->getPaddingRight()I

    move-result p3

    sub-int/2addr p2, p3

    .line 97
    aget p3, v0, v2

    int-to-float p0, p0

    invoke-static {p3, p0}, Ljava/lang/Math;->max(FF)F

    move-result p0

    int-to-float p2, p2

    invoke-static {p0, p2}, Ljava/lang/Math;->min(FF)F

    move-result p0

    aput p0, v0, v2

    .line 99
    invoke-virtual {p1}, Landroid/view/View;->getPaddingTop()I

    move-result p0

    .line 100
    invoke-virtual {p1}, Landroid/view/View;->getHeight()I

    move-result p2

    invoke-virtual {p1}, Landroid/view/View;->getPaddingBottom()I

    move-result p1

    sub-int/2addr p2, p1

    .line 101
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

.method public b(II)Landroid/graphics/Rect;
    .locals 3

    .line 29
    invoke-static {}, Lcom/oplus/camera/util/Util;->getScreenHeight()I

    move-result v0

    iput v0, p0, Lcom/oplus/camera/screen/b/m;->b:I

    .line 30
    invoke-static {}, Lcom/oplus/camera/util/Util;->getScreenWidth()I

    move-result v0

    div-int/lit8 v0, v0, 0x2

    iput v0, p0, Lcom/oplus/camera/screen/b/m;->c:I

    int-to-float p2, p2

    int-to-float p1, p1

    div-float/2addr p2, p1

    .line 34
    iget p1, p0, Lcom/oplus/camera/screen/b/m;->b:I

    int-to-float p1, p1

    iget v0, p0, Lcom/oplus/camera/screen/b/m;->c:I

    int-to-float v0, v0

    div-float/2addr p1, v0

    cmpl-float p1, p2, p1

    const/4 v0, 0x0

    if-lez p1, :cond_1

    .line 41
    invoke-static {}, Lcom/oplus/camera/MyApplication;->d()Landroid/content/Context;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const v1, 0x7f0709fa

    .line 42
    invoke-virtual {p1, v1}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result p1

    .line 43
    iget v1, p0, Lcom/oplus/camera/screen/b/m;->b:I

    int-to-float v1, v1

    div-float/2addr v1, p2

    .line 44
    invoke-static {v1}, Ljava/lang/Math;->round(F)I

    move-result p2

    .line 46
    iget-boolean v1, p0, Lcom/oplus/camera/screen/b/m;->d:Z

    if-eqz v1, :cond_0

    goto :goto_0

    .line 49
    :cond_0
    invoke-static {}, Lcom/oplus/camera/util/Util;->getScreenWidth()I

    move-result v1

    sub-int/2addr v1, p1

    sub-int p1, v1, p2

    .line 52
    :goto_0
    new-instance v1, Landroid/graphics/Rect;

    add-int/2addr p2, p1

    iget v2, p0, Lcom/oplus/camera/screen/b/m;->b:I

    invoke-direct {v1, p1, v0, p2, v2}, Landroid/graphics/Rect;-><init>(IIII)V

    goto :goto_1

    .line 54
    :cond_1
    iget p1, p0, Lcom/oplus/camera/screen/b/m;->c:I

    int-to-float v1, p1

    mul-float/2addr v1, p2

    .line 55
    invoke-static {v1}, Ljava/lang/Math;->round(F)I

    move-result p2

    .line 56
    iget v1, p0, Lcom/oplus/camera/screen/b/m;->b:I

    sub-int/2addr v1, p2

    div-int/lit8 v1, v1, 0x2

    .line 58
    iget-boolean v2, p0, Lcom/oplus/camera/screen/b/m;->d:Z

    if-nez v2, :cond_2

    .line 59
    invoke-static {}, Lcom/oplus/camera/util/Util;->getScreenWidth()I

    move-result v0

    div-int/lit8 v0, v0, 0x2

    .line 62
    :cond_2
    new-instance v2, Landroid/graphics/Rect;

    add-int/2addr p1, v0

    add-int/2addr p2, v1

    invoke-direct {v2, v0, v1, p1, p2}, Landroid/graphics/Rect;-><init>(IIII)V

    move-object v1, v2

    .line 65
    :goto_1
    iput-object v1, p0, Lcom/oplus/camera/screen/b/m;->f:Landroid/graphics/Rect;

    return-object v1
.end method

.method protected b(Landroid/app/Activity;Lcom/oplus/camera/screen/c;)V
    .locals 8

    .line 145
    invoke-virtual {p1}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    const v0, 0x7f070d7b

    .line 146
    invoke-virtual {p2, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    const v1, 0x7f070a0a

    .line 147
    invoke-virtual {p2, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    const v2, 0x7f070a0b

    .line 148
    invoke-virtual {p2, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p2

    .line 150
    new-instance v2, Lcom/oplus/camera/screen/c;

    const/4 v3, 0x4

    new-array v4, v3, [I

    fill-array-data v4, :array_0

    new-array v3, v3, [I

    neg-int v5, v0

    const/4 v6, 0x2

    div-int/2addr v5, v6

    div-int/2addr v1, v6

    add-int/2addr v5, v1

    const/4 v7, 0x0

    aput v5, v3, v7

    const/4 v5, 0x1

    aput v7, v3, v5

    aput v7, v3, v6

    div-int/2addr v0, v6

    sub-int/2addr v0, p2

    sub-int/2addr v0, v1

    const/4 p2, 0x3

    aput v0, v3, p2

    invoke-direct {v2, v4, v3}, Lcom/oplus/camera/screen/c;-><init>([I[I)V

    .line 156
    invoke-super {p0, p1, v2}, Lcom/oplus/camera/screen/b/k;->b(Landroid/app/Activity;Lcom/oplus/camera/screen/c;)V

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

.method public b(Landroid/app/Activity;Landroid/graphics/Rect;)Z
    .locals 0

    .line 85
    invoke-super {p0, p1, p2}, Lcom/oplus/camera/screen/b/k;->b(Landroid/app/Activity;Landroid/graphics/Rect;)Z

    move-result p0

    return p0
.end method

.method protected c(Landroid/app/Activity;Lcom/oplus/camera/screen/c;)V
    .locals 4

    .line 161
    invoke-virtual {p1}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    const v0, 0x7f0709d7

    .line 162
    invoke-virtual {p2, v0}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v0

    const v1, 0x7f0709d1

    .line 163
    invoke-virtual {p2, v1}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result p2

    const/4 v1, 0x4

    .line 164
    new-array v2, v1, [I

    fill-array-data v2, :array_0

    .line 168
    new-array v1, v1, [I

    const/4 v3, 0x0

    aput v0, v1, v3

    const/4 v0, 0x1

    aput v3, v1, v0

    const/4 v0, 0x2

    aput v3, v1, v0

    const/4 v0, 0x3

    aput p2, v1, v0

    .line 169
    new-instance p2, Lcom/oplus/camera/screen/c;

    invoke-direct {p2, v2, v1}, Lcom/oplus/camera/screen/c;-><init>([I[I)V

    .line 171
    invoke-super {p0, p1, p2}, Lcom/oplus/camera/screen/b/k;->c(Landroid/app/Activity;Lcom/oplus/camera/screen/c;)V

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

.method protected d(Landroid/app/Activity;Lcom/oplus/camera/screen/c;)V
    .locals 4

    .line 130
    invoke-virtual {p1}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    const v0, 0x7f0709d7

    .line 131
    invoke-virtual {p2, v0}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v0

    const v1, 0x7f0709d6

    .line 132
    invoke-virtual {p2, v1}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result p2

    const/4 v1, 0x4

    .line 133
    new-array v2, v1, [I

    fill-array-data v2, :array_0

    .line 137
    new-array v1, v1, [I

    const/4 v3, 0x0

    aput v0, v1, v3

    const/4 v0, 0x1

    aput v3, v1, v0

    const/4 v0, 0x2

    aput v3, v1, v0

    const/4 v0, 0x3

    aput p2, v1, v0

    .line 138
    new-instance p2, Lcom/oplus/camera/screen/c;

    invoke-direct {p2, v2, v1}, Lcom/oplus/camera/screen/c;-><init>([I[I)V

    .line 140
    invoke-super {p0, p1, p2}, Lcom/oplus/camera/screen/b/k;->d(Landroid/app/Activity;Lcom/oplus/camera/screen/c;)V

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

.method protected f(Landroid/app/Activity;Lcom/oplus/camera/screen/c;)V
    .locals 6

    .line 108
    invoke-virtual {p1}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    const/4 v0, 0x4

    .line 109
    new-array v1, v0, [I

    fill-array-data v1, :array_0

    const v2, 0x7f0709fb

    .line 110
    invoke-virtual {p2, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    const v3, 0x7f0709fc

    .line 111
    invoke-virtual {p2, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p2

    .line 112
    new-instance v3, Lcom/oplus/camera/screen/c;

    new-array v0, v0, [I

    const/4 v4, 0x0

    aput v4, v0, v4

    const/4 v5, 0x1

    aput p2, v0, v5

    const/4 p2, 0x2

    aput v2, v0, p2

    const/4 p2, 0x3

    aput v4, v0, p2

    invoke-direct {v3, v1, v0}, Lcom/oplus/camera/screen/c;-><init>([I[I)V

    const/16 p2, 0x5a

    .line 113
    iput p2, v3, Lcom/oplus/camera/screen/c;->d:I

    .line 114
    invoke-super {p0, p1, v3}, Lcom/oplus/camera/screen/b/k;->f(Landroid/app/Activity;Lcom/oplus/camera/screen/c;)V

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

.method public h()Ljava/lang/String;
    .locals 0

    .line 176
    iget-boolean p0, p0, Lcom/oplus/camera/screen/b/m;->d:Z

    if-eqz p0, :cond_0

    const-string p0, "low90"

    goto :goto_0

    :cond_0
    const-string p0, "rack90"

    :goto_0
    return-object p0
.end method

.method public k()I
    .locals 0

    const/16 p0, 0x5a

    return p0
.end method
