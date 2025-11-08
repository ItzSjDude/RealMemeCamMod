.class public abstract Lcom/oplus/camera/screen/b/g;
.super Lcom/oplus/camera/screen/b/c;
.source "FullScreenModeRotate.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 19
    invoke-direct {p0}, Lcom/oplus/camera/screen/b/c;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Landroid/app/Activity;Landroid/widget/RelativeLayout;I)Lcom/oplus/camera/ui/RotableTextView;
    .locals 1

    .line 63
    invoke-virtual {p1}, Landroid/app/Activity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object p0

    const v0, 0x7f0c0030

    .line 64
    invoke-virtual {p0, v0, p2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    const p0, 0x7f090093

    .line 65
    invoke-virtual {p1, p0}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object p0

    check-cast p0, Lcom/oplus/camera/ui/RotableTextView;

    const/4 p2, 0x0

    if-eqz p3, :cond_1

    const/4 v0, 0x1

    if-ne v0, p3, :cond_0

    goto :goto_0

    .line 71
    :cond_0
    invoke-virtual {p1}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object p3

    const v0, 0x7f080257

    invoke-virtual {p3, v0, p2}, Landroid/content/res/Resources;->getDrawable(ILandroid/content/res/Resources$Theme;)Landroid/graphics/drawable/Drawable;

    move-result-object p2

    invoke-virtual {p0, p2}, Lcom/oplus/camera/ui/RotableTextView;->setBackground(Landroid/graphics/drawable/Drawable;)V

    goto :goto_1

    .line 69
    :cond_1
    :goto_0
    invoke-virtual {p1}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object p3

    const v0, 0x7f080258

    invoke-virtual {p3, v0, p2}, Landroid/content/res/Resources;->getDrawable(ILandroid/content/res/Resources$Theme;)Landroid/graphics/drawable/Drawable;

    move-result-object p2

    invoke-virtual {p0, p2}, Lcom/oplus/camera/ui/RotableTextView;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 74
    :goto_1
    invoke-virtual {p0}, Lcom/oplus/camera/ui/RotableTextView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p2

    check-cast p2, Landroid/widget/RelativeLayout$LayoutParams;

    const/16 p3, 0xc

    .line 75
    invoke-virtual {p2, p3}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 76
    invoke-virtual {p1}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const p3, 0x7f0704c8

    .line 77
    invoke-virtual {p1, p3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p1

    iput p1, p2, Landroid/widget/RelativeLayout$LayoutParams;->bottomMargin:I

    return-object p0
.end method

.method protected a(Landroid/app/Activity;Lcom/oplus/camera/screen/c;)V
    .locals 0

    .line 34
    invoke-super {p0, p1, p2}, Lcom/oplus/camera/screen/b/c;->a(Landroid/app/Activity;Lcom/oplus/camera/screen/c;)V

    return-void
.end method

.method public a(Lcom/oplus/camera/screen/ScreenRelativeLayout;)V
    .locals 2

    .line 22
    sget v0, Lcom/oplus/camera/screen/f;->b:I

    iput v0, p0, Lcom/oplus/camera/screen/b/g;->b:I

    .line 23
    sget v0, Lcom/oplus/camera/screen/f;->a:I

    iput v0, p0, Lcom/oplus/camera/screen/b/g;->c:I

    .line 24
    invoke-virtual {p1}, Lcom/oplus/camera/screen/ScreenRelativeLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p1

    check-cast p1, Landroid/widget/RelativeLayout$LayoutParams;

    const/16 v0, 0xd

    .line 25
    invoke-virtual {p1, v0}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 26
    iget v0, p0, Lcom/oplus/camera/screen/b/g;->c:I

    iget v1, p0, Lcom/oplus/camera/screen/b/g;->b:I

    sub-int/2addr v0, v1

    neg-int v0, v0

    div-int/lit8 v0, v0, 0x2

    iput v0, p1, Landroid/widget/RelativeLayout$LayoutParams;->topMargin:I

    .line 27
    iget v0, p0, Lcom/oplus/camera/screen/b/g;->c:I

    iget v1, p0, Lcom/oplus/camera/screen/b/g;->b:I

    sub-int/2addr v0, v1

    neg-int v0, v0

    div-int/lit8 v0, v0, 0x2

    iput v0, p1, Landroid/widget/RelativeLayout$LayoutParams;->bottomMargin:I

    .line 28
    iget v0, p0, Lcom/oplus/camera/screen/b/g;->c:I

    iget v1, p0, Lcom/oplus/camera/screen/b/g;->b:I

    sub-int/2addr v0, v1

    div-int/lit8 v0, v0, 0x2

    iput v0, p1, Landroid/widget/RelativeLayout$LayoutParams;->leftMargin:I

    .line 29
    iget v0, p0, Lcom/oplus/camera/screen/b/g;->c:I

    iget p0, p0, Lcom/oplus/camera/screen/b/g;->b:I

    sub-int/2addr v0, p0

    div-int/lit8 v0, v0, 0x2

    iput v0, p1, Landroid/widget/RelativeLayout$LayoutParams;->rightMargin:I

    return-void
.end method

.method public a()Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public a(Landroid/app/Activity;Landroid/graphics/Rect;)Z
    .locals 1

    .line 46
    invoke-virtual {p1}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    const p1, 0x7f070183

    .line 47
    invoke-virtual {p0, p1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p1

    const v0, 0x7f070a84

    .line 48
    invoke-virtual {p0, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p0

    .line 49
    sget v0, Lcom/oplus/camera/screen/f;->b:I

    add-int/2addr p1, p0

    sub-int/2addr v0, p1

    int-to-float p0, v0

    .line 50
    iget p1, p2, Landroid/graphics/Rect;->bottom:I

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

    .line 38
    invoke-virtual {p1}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    const p1, 0x7f070183

    .line 39
    invoke-virtual {p0, p1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p1

    const p2, 0x7f070a84

    .line 40
    invoke-virtual {p0, p2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p0

    .line 41
    sget p2, Lcom/oplus/camera/screen/f;->b:I

    add-int/2addr p1, p0

    sub-int/2addr p2, p1

    int-to-float p0, p2

    cmpg-float p0, p4, p0

    if-gtz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public a(Lcom/oplus/camera/ui/CameraUIInterface;II)Z
    .locals 0

    .line 89
    iget p1, p0, Lcom/oplus/camera/screen/b/g;->d:I

    if-le p3, p1, :cond_0

    iget p1, p0, Lcom/oplus/camera/screen/b/g;->c:I

    iget p0, p0, Lcom/oplus/camera/screen/b/g;->d:I

    sub-int/2addr p1, p0

    if-ge p3, p1, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public a(Landroid/util/Size;Landroid/util/Size;)[I
    .locals 5

    const/4 v0, 0x4

    .line 99
    new-array v0, v0, [I

    .line 101
    invoke-virtual {p1}, Landroid/util/Size;->getWidth()I

    move-result v1

    int-to-double v1, v1

    invoke-virtual {p1}, Landroid/util/Size;->getHeight()I

    move-result p1

    int-to-double v3, p1

    div-double/2addr v1, v3

    .line 102
    iget p1, p0, Lcom/oplus/camera/screen/b/g;->b:I

    const/4 v3, 0x0

    aput p1, v0, v3

    .line 103
    iget p1, p0, Lcom/oplus/camera/screen/b/g;->b:I

    int-to-double v3, p1

    div-double/2addr v3, v1

    double-to-int p1, v3

    const/4 v1, 0x1

    aput p1, v0, v1

    .line 105
    invoke-virtual {p2}, Landroid/util/Size;->getWidth()I

    move-result p1

    int-to-double v1, p1

    invoke-virtual {p2}, Landroid/util/Size;->getHeight()I

    move-result p1

    int-to-double p1, p1

    div-double/2addr v1, p1

    .line 106
    iget p1, p0, Lcom/oplus/camera/screen/b/g;->b:I

    const/4 p2, 0x2

    aput p1, v0, p2

    .line 107
    iget p0, p0, Lcom/oplus/camera/screen/b/g;->b:I

    int-to-double p0, p0

    div-double/2addr p0, v1

    double-to-int p0, p0

    const/4 p1, 0x3

    aput p0, v0, p1

    return-object v0
.end method

.method public b(Landroid/app/Activity;I)V
    .locals 7

    const p0, 0x7f0902a7

    const v0, 0x7f090312

    const v1, 0x7f0900a2

    const v2, 0x7f090145

    const v3, 0x7f090168

    const/4 v4, 0x0

    const/4 v5, 0x1

    if-eqz p2, :cond_2

    if-eq p2, v5, :cond_1

    const/4 v6, 0x2

    if-eq p2, v6, :cond_2

    const/4 v5, 0x6

    if-eq p2, v5, :cond_0

    goto :goto_0

    .line 126
    :cond_0
    invoke-static {p1, v3, v4}, Lcom/oplus/camera/util/Util;->a(Landroid/app/Activity;IZ)V

    .line 127
    invoke-static {p1, v2, v4}, Lcom/oplus/camera/util/Util;->a(Landroid/app/Activity;IZ)V

    .line 128
    invoke-static {p1, v1, v4}, Lcom/oplus/camera/util/Util;->a(Landroid/app/Activity;IZ)V

    .line 129
    invoke-static {p1, v0, v4}, Lcom/oplus/camera/util/Util;->a(Landroid/app/Activity;IZ)V

    .line 130
    invoke-static {p1, p0, v4}, Lcom/oplus/camera/util/Util;->a(Landroid/app/Activity;IZ)V

    goto :goto_0

    .line 134
    :cond_1
    invoke-static {p1, v3, v5}, Lcom/oplus/camera/util/Util;->a(Landroid/app/Activity;IZ)V

    .line 135
    invoke-static {p1, v2, v5}, Lcom/oplus/camera/util/Util;->a(Landroid/app/Activity;IZ)V

    .line 136
    invoke-static {p1, v1, v5}, Lcom/oplus/camera/util/Util;->a(Landroid/app/Activity;IZ)V

    .line 137
    invoke-static {p1, v0, v5}, Lcom/oplus/camera/util/Util;->a(Landroid/app/Activity;IZ)V

    .line 138
    invoke-static {p1, p0, v5}, Lcom/oplus/camera/util/Util;->a(Landroid/app/Activity;IZ)V

    const p0, 0x7f0903c3

    .line 139
    invoke-static {p1, p0, v5}, Lcom/oplus/camera/util/Util;->a(Landroid/app/Activity;IZ)V

    const p0, 0x7f0903c0

    .line 140
    invoke-static {p1, p0, v5}, Lcom/oplus/camera/util/Util;->a(Landroid/app/Activity;IZ)V

    goto :goto_0

    .line 118
    :cond_2
    invoke-static {p1, v3, v4}, Lcom/oplus/camera/util/Util;->a(Landroid/app/Activity;IZ)V

    .line 119
    invoke-static {p1, v2, v4}, Lcom/oplus/camera/util/Util;->a(Landroid/app/Activity;IZ)V

    .line 120
    invoke-static {p1, v1, v4}, Lcom/oplus/camera/util/Util;->a(Landroid/app/Activity;IZ)V

    .line 121
    invoke-static {p1, v0, v5}, Lcom/oplus/camera/util/Util;->a(Landroid/app/Activity;IZ)V

    .line 122
    invoke-static {p1, p0, v5}, Lcom/oplus/camera/util/Util;->a(Landroid/app/Activity;IZ)V

    :goto_0
    const p0, 0x7f090384

    const p2, 0x7f08063f

    .line 144
    invoke-static {p1, p0, p2}, Lcom/oplus/camera/util/Util;->a(Landroid/app/Activity;II)V

    const p0, 0x7f0900a1

    .line 145
    invoke-static {p1, p0, p2}, Lcom/oplus/camera/util/Util;->a(Landroid/app/Activity;II)V

    const p0, 0x7f090419

    .line 146
    invoke-static {p1, p0, p2}, Lcom/oplus/camera/util/Util;->a(Landroid/app/Activity;II)V

    const p0, 0x7f0902e7

    .line 147
    invoke-static {p1, p0, p2}, Lcom/oplus/camera/util/Util;->a(Landroid/app/Activity;II)V

    return-void
.end method

.method public b(Landroid/app/Activity;Landroid/graphics/Rect;)Z
    .locals 1

    .line 54
    invoke-virtual {p1}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    const p1, 0x7f070183

    .line 55
    invoke-virtual {p0, p1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p1

    const v0, 0x7f070a84

    .line 56
    invoke-virtual {p0, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p0

    .line 57
    sget v0, Lcom/oplus/camera/screen/f;->b:I

    add-int/2addr p1, p0

    sub-int/2addr v0, p1

    int-to-float p0, v0

    .line 58
    invoke-virtual {p2}, Landroid/graphics/Rect;->centerY()I

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

.method public d(Lcom/oplus/camera/screen/b/o$a;)V
    .locals 0

    const/4 p0, 0x0

    .line 84
    new-array p0, p0, [Ljava/lang/Object;

    invoke-interface {p1, p0}, Lcom/oplus/camera/screen/b/o$a;->call([Ljava/lang/Object;)V

    return-void
.end method
