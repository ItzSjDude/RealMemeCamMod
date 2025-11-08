.class public Lcom/oplus/camera/screen/b/l;
.super Lcom/oplus/camera/screen/b/k;
.source "RackScreenMode270.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 25
    invoke-direct {p0}, Lcom/oplus/camera/screen/b/k;-><init>()V

    return-void
.end method


# virtual methods
.method protected a(Landroid/app/Activity;Lcom/oplus/camera/screen/c;Lcom/oplus/camera/screen/c;)V
    .locals 5

    .line 117
    invoke-virtual {p1}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object p3

    const v0, 0x7f0709d5

    .line 118
    invoke-virtual {p3, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p3

    .line 119
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

    .line 122
    invoke-super {p0, p1, p2, v0}, Lcom/oplus/camera/screen/b/k;->a(Landroid/app/Activity;Lcom/oplus/camera/screen/c;Lcom/oplus/camera/screen/c;)V

    return-void

    :array_0
    .array-data 4
        0xb
        0x0
        0xc
        0x0
    .end array-data
.end method

.method protected a(Landroid/app/Activity;Lcom/oplus/camera/screen/c;Lcom/oplus/camera/screen/c;Lcom/oplus/camera/screen/c;)V
    .locals 8

    .line 160
    invoke-virtual {p1}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const/4 p2, 0x4

    .line 161
    new-array p3, p2, [I

    fill-array-data p3, :array_0

    const p4, 0x7f0709d7

    .line 162
    invoke-virtual {p1, p4}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result p4

    invoke-static {}, Lcom/oplus/camera/util/Util;->Z()I

    move-result v0

    add-int/2addr p4, v0

    const v0, 0x7f0709d1

    .line 163
    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v0

    const v1, 0x7f0709d6

    .line 164
    invoke-virtual {p1, v1}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v1

    .line 166
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

    .line 167
    new-instance v0, Lcom/oplus/camera/screen/c;

    new-array v3, p2, [I

    aput p4, v3, v4

    aput v4, v3, v5

    aput v4, v3, v6

    aput v1, v3, v7

    invoke-direct {v0, p3, v3}, Lcom/oplus/camera/screen/c;-><init>([I[I)V

    .line 169
    new-array p3, p2, [I

    fill-array-data p3, :array_1

    .line 170
    new-instance p4, Lcom/oplus/camera/screen/c;

    new-array p2, p2, [I

    aput v4, p2, v4

    aput v4, p2, v5

    const v1, 0x7f070beb

    invoke-virtual {p1, v1}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v1

    aput v1, p2, v6

    const v1, 0x7f070bea

    .line 171
    invoke-virtual {p1, v1}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v1

    aput v1, p2, v7

    invoke-direct {p4, p3, p2}, Lcom/oplus/camera/screen/c;-><init>([I[I)V

    const p2, 0x7f070477

    .line 173
    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result p1

    .line 175
    new-array p2, v6, [I

    aput p1, p2, v4

    aput p1, p2, v5

    iput-object p2, v2, Lcom/oplus/camera/screen/c;->c:[I

    .line 176
    new-array p2, v6, [I

    aput p1, p2, v4

    aput p1, p2, v5

    iput-object p2, v0, Lcom/oplus/camera/screen/c;->c:[I

    .line 178
    iget-object p1, p0, Lcom/oplus/camera/screen/b/l;->a:Ljava/util/Map;

    const p2, 0x7f0903c3

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    invoke-interface {p1, p2, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 179
    iget-object p1, p0, Lcom/oplus/camera/screen/b/l;->a:Ljava/util/Map;

    const p2, 0x7f0903c0

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    invoke-interface {p1, p2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 180
    iget-object p0, p0, Lcom/oplus/camera/screen/b/l;->a:Ljava/util/Map;

    const p1, 0x7f0903b7

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-interface {p0, p1, p4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void

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

.method public a(Lcom/oplus/camera/screen/ScreenRelativeLayout;)V
    .locals 0

    .line 29
    invoke-super {p0, p1}, Lcom/oplus/camera/screen/b/k;->a(Lcom/oplus/camera/screen/ScreenRelativeLayout;)V

    const/high16 p0, 0x43870000    # 270.0f

    .line 30
    invoke-virtual {p1, p0}, Lcom/oplus/camera/screen/ScreenRelativeLayout;->setRotation(F)V

    return-void
.end method

.method public a(Landroid/app/Activity;ZFF)Z
    .locals 0

    .line 93
    invoke-virtual {p1}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    .line 94
    sget p1, Lcom/oplus/camera/screen/f;->a:I

    int-to-float p1, p1

    sub-float/2addr p1, p3

    const p2, 0x7f0709ea

    invoke-virtual {p0, p2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p0

    int-to-float p0, p0

    cmpl-float p0, p1, p0

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

    .line 98
    new-array v0, p0, [F

    .line 99
    new-array p0, p0, [I

    .line 100
    invoke-virtual {p1, p0}, Landroid/view/View;->getLocationOnScreen([I)V

    const/4 v1, 0x1

    .line 101
    aget v2, p0, v1

    int-to-float v2, v2

    sub-float/2addr v2, p3

    const/4 p3, 0x0

    aput v2, v0, p3

    .line 102
    aget p0, p0, p3

    int-to-float p0, p0

    sub-float/2addr p2, p0

    aput p2, v0, v1

    .line 104
    invoke-virtual {p1}, Landroid/view/View;->getPaddingLeft()I

    move-result p0

    .line 105
    invoke-virtual {p1}, Landroid/view/View;->getWidth()I

    move-result p2

    invoke-virtual {p1}, Landroid/view/View;->getPaddingRight()I

    move-result v2

    sub-int/2addr p2, v2

    .line 106
    aget v2, v0, p3

    int-to-float p0, p0

    invoke-static {v2, p0}, Ljava/lang/Math;->max(FF)F

    move-result p0

    int-to-float p2, p2

    invoke-static {p0, p2}, Ljava/lang/Math;->min(FF)F

    move-result p0

    aput p0, v0, p3

    .line 108
    invoke-virtual {p1}, Landroid/view/View;->getPaddingTop()I

    move-result p0

    .line 109
    invoke-virtual {p1}, Landroid/view/View;->getHeight()I

    move-result p2

    invoke-virtual {p1}, Landroid/view/View;->getPaddingBottom()I

    move-result p1

    sub-int/2addr p2, p1

    .line 110
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

    .line 35
    invoke-static {}, Lcom/oplus/camera/util/Util;->getScreenHeight()I

    move-result v0

    iput v0, p0, Lcom/oplus/camera/screen/b/l;->b:I

    .line 36
    invoke-static {}, Lcom/oplus/camera/util/Util;->getScreenWidth()I

    move-result v0

    div-int/lit8 v0, v0, 0x2

    iput v0, p0, Lcom/oplus/camera/screen/b/l;->c:I

    int-to-float p2, p2

    int-to-float p1, p1

    div-float/2addr p2, p1

    .line 40
    iget p1, p0, Lcom/oplus/camera/screen/b/l;->b:I

    int-to-float p1, p1

    iget v0, p0, Lcom/oplus/camera/screen/b/l;->c:I

    int-to-float v0, v0

    div-float/2addr p1, v0

    cmpl-float p1, p2, p1

    const/4 v0, 0x0

    if-lez p1, :cond_1

    .line 47
    invoke-static {}, Lcom/oplus/camera/MyApplication;->d()Landroid/content/Context;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const v1, 0x7f0709fa

    .line 48
    invoke-virtual {p1, v1}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result p1

    .line 49
    iget v1, p0, Lcom/oplus/camera/screen/b/l;->b:I

    int-to-float v1, v1

    div-float/2addr v1, p2

    .line 50
    invoke-static {v1}, Ljava/lang/Math;->round(F)I

    move-result p2

    .line 52
    iget-boolean v1, p0, Lcom/oplus/camera/screen/b/l;->d:Z

    if-eqz v1, :cond_0

    .line 53
    invoke-static {}, Lcom/oplus/camera/util/Util;->getScreenWidth()I

    move-result v1

    sub-int/2addr v1, p1

    sub-int p1, v1, p2

    .line 58
    :cond_0
    new-instance v1, Landroid/graphics/Rect;

    add-int/2addr p2, p1

    iget v2, p0, Lcom/oplus/camera/screen/b/l;->b:I

    invoke-direct {v1, p1, v0, p2, v2}, Landroid/graphics/Rect;-><init>(IIII)V

    goto :goto_0

    .line 60
    :cond_1
    iget p1, p0, Lcom/oplus/camera/screen/b/l;->c:I

    int-to-float v1, p1

    mul-float/2addr v1, p2

    .line 61
    invoke-static {v1}, Ljava/lang/Math;->round(F)I

    move-result p2

    .line 62
    iget v1, p0, Lcom/oplus/camera/screen/b/l;->b:I

    sub-int/2addr v1, p2

    div-int/lit8 v1, v1, 0x2

    .line 64
    iget-boolean v2, p0, Lcom/oplus/camera/screen/b/l;->d:Z

    if-eqz v2, :cond_2

    .line 65
    invoke-static {}, Lcom/oplus/camera/util/Util;->getScreenWidth()I

    move-result v0

    div-int/lit8 v0, v0, 0x2

    .line 68
    :cond_2
    new-instance v2, Landroid/graphics/Rect;

    add-int/2addr p1, v0

    add-int/2addr p2, v1

    invoke-direct {v2, v0, v1, p1, p2}, Landroid/graphics/Rect;-><init>(IIII)V

    move-object v1, v2

    .line 71
    :goto_0
    iput-object v1, p0, Lcom/oplus/camera/screen/b/l;->f:Landroid/graphics/Rect;

    return-object v1
.end method

.method protected b(Landroid/app/Activity;Lcom/oplus/camera/screen/c;)V
    .locals 8

    .line 143
    invoke-virtual {p1}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    const v0, 0x7f070d7b

    .line 144
    invoke-virtual {p2, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    const v1, 0x7f070a0a

    .line 145
    invoke-virtual {p2, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    const v2, 0x7f070a0b

    .line 146
    invoke-virtual {p2, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p2

    neg-int v2, v0

    const/4 v3, 0x2

    .line 147
    div-int/2addr v2, v3

    div-int/2addr v1, v3

    add-int/2addr v2, v1

    invoke-static {}, Lcom/oplus/camera/util/Util;->Z()I

    move-result v4

    add-int/2addr v2, v4

    .line 149
    new-instance v4, Lcom/oplus/camera/screen/c;

    const/4 v5, 0x4

    new-array v6, v5, [I

    fill-array-data v6, :array_0

    new-array v5, v5, [I

    const/4 v7, 0x0

    aput v2, v5, v7

    const/4 v2, 0x1

    aput v7, v5, v2

    aput v7, v5, v3

    div-int/2addr v0, v3

    sub-int/2addr v0, p2

    sub-int/2addr v0, v1

    const/4 p2, 0x3

    aput v0, v5, p2

    invoke-direct {v4, v6, v5}, Lcom/oplus/camera/screen/c;-><init>([I[I)V

    .line 155
    invoke-super {p0, p1, v4}, Lcom/oplus/camera/screen/b/k;->b(Landroid/app/Activity;Lcom/oplus/camera/screen/c;)V

    return-void

    :array_0
    .array-data 4
        0x9
        0x0
        0xc
        0x0
    .end array-data
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

    .line 201
    invoke-super {p0}, Lcom/oplus/camera/screen/b/k;->c()Ljava/util/ArrayList;

    move-result-object p0

    const-string v0, "movie"

    .line 202
    invoke-virtual {p0, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-object p0
.end method

.method protected c(Landroid/app/Activity;Lcom/oplus/camera/screen/c;)V
    .locals 4

    .line 185
    invoke-virtual {p1}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    const v0, 0x7f0709d7

    .line 186
    invoke-virtual {p2, v0}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v0

    .line 187
    invoke-static {}, Lcom/oplus/camera/util/Util;->Z()I

    move-result v1

    add-int/2addr v0, v1

    const v1, 0x7f0709d1

    .line 188
    invoke-virtual {p2, v1}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result p2

    const/4 v1, 0x4

    .line 189
    new-array v2, v1, [I

    fill-array-data v2, :array_0

    .line 193
    new-array v1, v1, [I

    const/4 v3, 0x0

    aput v0, v1, v3

    const/4 v0, 0x1

    aput v3, v1, v0

    const/4 v0, 0x2

    aput v3, v1, v0

    const/4 v0, 0x3

    aput p2, v1, v0

    .line 194
    new-instance p2, Lcom/oplus/camera/screen/c;

    invoke-direct {p2, v2, v1}, Lcom/oplus/camera/screen/c;-><init>([I[I)V

    .line 196
    invoke-super {p0, p1, p2}, Lcom/oplus/camera/screen/b/k;->c(Landroid/app/Activity;Lcom/oplus/camera/screen/c;)V

    return-void

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

    .line 127
    invoke-virtual {p1}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    const v0, 0x7f0709d7

    .line 128
    invoke-virtual {p2, v0}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v0

    .line 129
    invoke-static {}, Lcom/oplus/camera/util/Util;->Z()I

    move-result v1

    add-int/2addr v0, v1

    const v1, 0x7f0709d6

    .line 130
    invoke-virtual {p2, v1}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result p2

    const/4 v1, 0x4

    .line 131
    new-array v2, v1, [I

    fill-array-data v2, :array_0

    .line 135
    new-array v1, v1, [I

    const/4 v3, 0x0

    aput v0, v1, v3

    const/4 v0, 0x1

    aput v3, v1, v0

    const/4 v0, 0x2

    aput v3, v1, v0

    const/4 v0, 0x3

    aput p2, v1, v0

    .line 136
    new-instance p2, Lcom/oplus/camera/screen/c;

    invoke-direct {p2, v2, v1}, Lcom/oplus/camera/screen/c;-><init>([I[I)V

    .line 138
    invoke-super {p0, p1, p2}, Lcom/oplus/camera/screen/b/k;->d(Landroid/app/Activity;Lcom/oplus/camera/screen/c;)V

    return-void

    :array_0
    .array-data 4
        0x9
        0x0
        0xc
        0x0
    .end array-data
.end method

.method protected f(Landroid/app/Activity;Lcom/oplus/camera/screen/c;)V
    .locals 5

    .line 78
    invoke-virtual {p1}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    const/4 v0, 0x4

    .line 79
    new-array v1, v0, [I

    fill-array-data v1, :array_0

    const v2, 0x7f0709fb

    .line 80
    invoke-virtual {p2, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    const v3, 0x7f0709fc

    .line 81
    invoke-virtual {p2, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p2

    .line 82
    new-instance v3, Lcom/oplus/camera/screen/c;

    new-array v0, v0, [I

    const/4 v4, 0x0

    aput v2, v0, v4

    const/4 v2, 0x1

    aput v4, v0, v2

    const/4 v2, 0x2

    aput v4, v0, v2

    const/4 v2, 0x3

    aput p2, v0, v2

    invoke-direct {v3, v1, v0}, Lcom/oplus/camera/screen/c;-><init>([I[I)V

    const/16 p2, 0x10e

    .line 83
    iput p2, v3, Lcom/oplus/camera/screen/c;->d:I

    .line 84
    invoke-super {p0, p1, v3}, Lcom/oplus/camera/screen/b/k;->f(Landroid/app/Activity;Lcom/oplus/camera/screen/c;)V

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

.method public h()Ljava/lang/String;
    .locals 0

    .line 209
    iget-boolean p0, p0, Lcom/oplus/camera/screen/b/l;->d:Z

    if-eqz p0, :cond_0

    const-string p0, "low270"

    goto :goto_0

    :cond_0
    const-string p0, "rack270"

    :goto_0
    return-object p0
.end method

.method public k()I
    .locals 0

    const/16 p0, 0x10e

    return p0
.end method
