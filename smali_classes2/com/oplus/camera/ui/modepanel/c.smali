.class public Lcom/oplus/camera/ui/modepanel/c;
.super Ljava/lang/Object;
.source "DragHelperUtils.java"


# static fields
.field protected static a:I = 0xf

.field protected static b:I = 0xa

.field protected static c:F = 100.0f

.field protected static d:F = 200.0f


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public static a()F
    .locals 1

    const/high16 v0, 0x3f800000    # 1.0f

    return v0
.end method

.method public static a(FI)I
    .locals 2

    const/high16 v0, 0x3f800000    # 1.0f

    cmpl-float v1, p0, v0

    if-lez v1, :cond_0

    move p0, v0

    :cond_0
    int-to-float p1, p1

    mul-float/2addr p0, p1

    float-to-int p0, p0

    return p0
.end method

.method public static a(II)I
    .locals 1

    int-to-float p0, p0

    .line 47
    invoke-static {}, Lcom/oplus/camera/ui/modepanel/c;->c()F

    move-result v0

    cmpg-float v0, p0, v0

    if-gez v0, :cond_0

    const/4 p0, -0x1

    return p0

    :cond_0
    int-to-float p1, p1

    .line 49
    invoke-static {}, Lcom/oplus/camera/ui/modepanel/c;->c()F

    move-result v0

    sub-float/2addr p1, v0

    cmpl-float p0, p0, p1

    if-lez p0, :cond_1

    const/4 p0, 0x1

    return p0

    :cond_1
    const/4 p0, 0x0

    return p0
.end method

.method public static a(Landroid/view/View;II)I
    .locals 0

    .line 32
    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    move-result p1

    invoke-static {p2, p1}, Lcom/oplus/camera/ui/modepanel/c;->a(II)I

    move-result p1

    if-gez p1, :cond_0

    .line 36
    invoke-static {}, Lcom/oplus/camera/ui/modepanel/c;->c()F

    move-result p0

    int-to-float p1, p2

    sub-float/2addr p0, p1

    invoke-static {}, Lcom/oplus/camera/ui/modepanel/c;->c()F

    move-result p1

    div-float/2addr p0, p1

    .line 37
    invoke-static {}, Lcom/oplus/camera/ui/modepanel/c;->d()I

    move-result p1

    invoke-static {p0, p1}, Lcom/oplus/camera/ui/modepanel/c;->a(FI)I

    move-result p0

    neg-int p0, p0

    goto :goto_0

    :cond_0
    if-lez p1, :cond_1

    .line 39
    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    move-result p0

    sub-int/2addr p2, p0

    int-to-float p0, p2

    invoke-static {}, Lcom/oplus/camera/ui/modepanel/c;->c()F

    move-result p1

    add-float/2addr p0, p1

    invoke-static {}, Lcom/oplus/camera/ui/modepanel/c;->c()F

    move-result p1

    div-float/2addr p0, p1

    .line 40
    invoke-static {}, Lcom/oplus/camera/ui/modepanel/c;->d()I

    move-result p1

    invoke-static {p0, p1}, Lcom/oplus/camera/ui/modepanel/c;->a(FI)I

    move-result p0

    goto :goto_0

    :cond_1
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public static a(Lcom/oplus/camera/ui/modepanel/k;)Z
    .locals 0

    if-eqz p0, :cond_0

    .line 17
    invoke-virtual {p0}, Lcom/oplus/camera/ui/modepanel/k;->h()Z

    move-result p0

    return p0

    :cond_0
    const/4 p0, 0x1

    return p0
.end method

.method public static b()F
    .locals 2

    .line 61
    sget v0, Lcom/oplus/camera/ui/modepanel/c;->c:F

    invoke-static {}, Lcom/oplus/camera/ui/modepanel/c;->a()F

    move-result v1

    div-float/2addr v0, v1

    return v0
.end method

.method protected static b(II)I
    .locals 1

    int-to-float p0, p0

    .line 98
    invoke-static {}, Lcom/oplus/camera/ui/modepanel/c;->b()F

    move-result v0

    cmpg-float v0, p0, v0

    if-gez v0, :cond_0

    const/4 p0, -0x1

    return p0

    :cond_0
    int-to-float p1, p1

    .line 100
    invoke-static {}, Lcom/oplus/camera/ui/modepanel/c;->b()F

    move-result v0

    sub-float/2addr p1, v0

    cmpl-float p0, p0, p1

    if-lez p0, :cond_1

    const/4 p0, 0x1

    return p0

    :cond_1
    const/4 p0, 0x0

    return p0
.end method

.method public static b(Landroid/view/View;II)I
    .locals 0

    .line 83
    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    move-result p2

    invoke-static {p1, p2}, Lcom/oplus/camera/ui/modepanel/c;->b(II)I

    move-result p2

    if-gez p2, :cond_0

    .line 87
    invoke-static {}, Lcom/oplus/camera/ui/modepanel/c;->b()F

    move-result p0

    int-to-float p1, p1

    sub-float/2addr p0, p1

    invoke-static {}, Lcom/oplus/camera/ui/modepanel/c;->b()F

    move-result p1

    div-float/2addr p0, p1

    .line 88
    invoke-static {}, Lcom/oplus/camera/ui/modepanel/c;->e()I

    move-result p1

    invoke-static {p0, p1}, Lcom/oplus/camera/ui/modepanel/c;->a(FI)I

    move-result p0

    neg-int p0, p0

    goto :goto_0

    :cond_0
    if-lez p2, :cond_1

    .line 90
    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    move-result p0

    sub-int/2addr p1, p0

    int-to-float p0, p1

    invoke-static {}, Lcom/oplus/camera/ui/modepanel/c;->b()F

    move-result p1

    add-float/2addr p0, p1

    invoke-static {}, Lcom/oplus/camera/ui/modepanel/c;->b()F

    move-result p1

    div-float/2addr p0, p1

    .line 91
    invoke-static {}, Lcom/oplus/camera/ui/modepanel/c;->e()I

    move-result p1

    invoke-static {p0, p1}, Lcom/oplus/camera/ui/modepanel/c;->a(FI)I

    move-result p0

    goto :goto_0

    :cond_1
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public static b(Lcom/oplus/camera/ui/modepanel/k;)Z
    .locals 0

    if-eqz p0, :cond_0

    .line 25
    invoke-virtual {p0}, Lcom/oplus/camera/ui/modepanel/k;->f()Z

    move-result p0

    return p0

    :cond_0
    const/4 p0, 0x1

    return p0
.end method

.method public static c()F
    .locals 2

    .line 65
    sget v0, Lcom/oplus/camera/ui/modepanel/c;->d:F

    invoke-static {}, Lcom/oplus/camera/ui/modepanel/c;->a()F

    move-result v1

    div-float/2addr v0, v1

    return v0
.end method

.method public static c(Landroid/view/View;II)Landroid/graphics/Rect;
    .locals 5

    const/4 v0, 0x2

    .line 108
    new-array v0, v0, [I

    const/4 v1, 0x0

    if-nez p0, :cond_0

    .line 111
    new-instance p0, Landroid/graphics/Rect;

    invoke-direct {p0, v1, v1, v1, v1}, Landroid/graphics/Rect;-><init>(IIII)V

    return-object p0

    .line 114
    :cond_0
    invoke-virtual {p0, v0}, Landroid/view/View;->getLocationOnScreen([I)V

    const/4 v2, 0x4

    const/4 v3, 0x1

    if-ne v2, p1, :cond_2

    const/16 p1, 0x5a

    if-ne p2, p1, :cond_1

    .line 123
    aget p1, v0, v1

    .line 124
    aget p2, v0, v1

    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    move-result v1

    int-to-float v1, v1

    invoke-virtual {p0}, Landroid/view/View;->getScaleY()F

    move-result v2

    mul-float/2addr v1, v2

    float-to-int v1, v1

    sub-int/2addr p2, v1

    .line 125
    aget v0, v0, v3

    int-to-float v1, v0

    .line 126
    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    move-result v2

    int-to-float v2, v2

    invoke-virtual {p0}, Landroid/view/View;->getScaleX()F

    move-result p0

    mul-float/2addr v2, p0

    add-float/2addr v1, v2

    float-to-int p0, v1

    goto :goto_0

    .line 129
    :cond_1
    sget p1, Lcom/oplus/camera/screen/f;->a:I

    aget p2, v0, v1

    sub-int/2addr p1, p2

    .line 130
    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    move-result p2

    int-to-float p2, p2

    invoke-virtual {p0}, Landroid/view/View;->getScaleY()F

    move-result v1

    mul-float/2addr p2, v1

    float-to-int p2, p2

    sub-int p2, p1, p2

    .line 131
    sget v1, Lcom/oplus/camera/screen/f;->b:I

    aget v0, v0, v3

    sub-int v0, v1, v0

    .line 132
    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    move-result v1

    int-to-float v1, v1

    invoke-virtual {p0}, Landroid/view/View;->getScaleX()F

    move-result p0

    mul-float/2addr v1, p0

    float-to-int p0, v1

    add-int/2addr p0, v0

    goto :goto_0

    .line 135
    :cond_2
    aget p2, v0, v1

    .line 136
    aget p1, v0, v3

    .line 137
    aget v1, v0, v1

    int-to-float v1, v1

    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    move-result v2

    int-to-float v2, v2

    invoke-virtual {p0}, Landroid/view/View;->getScaleX()F

    move-result v4

    mul-float/2addr v2, v4

    add-float/2addr v1, v2

    float-to-int v1, v1

    .line 138
    aget v0, v0, v3

    int-to-float v0, v0

    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    move-result v2

    int-to-float v2, v2

    invoke-virtual {p0}, Landroid/view/View;->getScaleY()F

    move-result p0

    mul-float/2addr v2, p0

    add-float/2addr v0, v2

    float-to-int p0, v0

    move v0, p1

    move p1, v1

    .line 141
    :goto_0
    new-instance v1, Landroid/graphics/Rect;

    invoke-direct {v1, p2, v0, p1, p0}, Landroid/graphics/Rect;-><init>(IIII)V

    return-object v1
.end method

.method public static d()I
    .locals 2

    .line 75
    sget v0, Lcom/oplus/camera/ui/modepanel/c;->b:I

    int-to-float v0, v0

    invoke-static {}, Lcom/oplus/camera/ui/modepanel/c;->a()F

    move-result v1

    div-float/2addr v0, v1

    float-to-int v0, v0

    return v0
.end method

.method public static e()I
    .locals 2

    .line 79
    sget v0, Lcom/oplus/camera/ui/modepanel/c;->a:I

    int-to-float v0, v0

    invoke-static {}, Lcom/oplus/camera/ui/modepanel/c;->a()F

    move-result v1

    div-float/2addr v0, v1

    float-to-int v0, v0

    return v0
.end method
