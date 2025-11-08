.class public Lcom/oplus/camera/screen/b/d;
.super Lcom/oplus/camera/screen/b/c;
.source "FullScreenMode0.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 27
    invoke-direct {p0}, Lcom/oplus/camera/screen/b/c;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Landroid/app/Activity;Landroid/widget/RelativeLayout;I)Lcom/oplus/camera/ui/RotableTextView;
    .locals 1

    .line 243
    invoke-virtual {p1}, Landroid/app/Activity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object p0

    const p3, 0x7f0c0030

    .line 244
    invoke-virtual {p0, p3, p2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    const p0, 0x7f090093

    .line 245
    invoke-virtual {p1, p0}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object p0

    check-cast p0, Lcom/oplus/camera/ui/RotableTextView;

    .line 247
    invoke-virtual {p1}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    const p3, 0x7f080257

    const/4 v0, 0x0

    invoke-virtual {p2, p3, v0}, Landroid/content/res/Resources;->getDrawable(ILandroid/content/res/Resources$Theme;)Landroid/graphics/drawable/Drawable;

    move-result-object p2

    invoke-virtual {p0, p2}, Lcom/oplus/camera/ui/RotableTextView;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 248
    invoke-virtual {p0}, Lcom/oplus/camera/ui/RotableTextView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p2

    check-cast p2, Landroid/widget/RelativeLayout$LayoutParams;

    const/16 p3, 0xc

    .line 249
    invoke-virtual {p2, p3}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 250
    invoke-virtual {p1}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const p3, 0x7f0704c7

    .line 251
    invoke-virtual {p1, p3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p1

    iput p1, p2, Landroid/widget/RelativeLayout$LayoutParams;->bottomMargin:I

    return-object p0
.end method

.method protected a(Landroid/app/Activity;Lcom/oplus/camera/screen/c;)V
    .locals 5

    .line 125
    invoke-virtual {p1}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    .line 126
    new-instance v0, Lcom/oplus/camera/screen/c;

    const/4 v1, 0x4

    new-array v2, v1, [I

    fill-array-data v2, :array_0

    new-array v1, v1, [I

    const/4 v3, 0x0

    aput v3, v1, v3

    const/4 v4, 0x1

    aput v3, v1, v4

    const v3, 0x7f070caa

    .line 130
    invoke-virtual {p2, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v3

    const/4 v4, 0x2

    aput v3, v1, v4

    const v3, 0x7f070ca9

    .line 131
    invoke-virtual {p2, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p2

    const/4 v3, 0x3

    aput p2, v1, v3

    invoke-direct {v0, v2, v1}, Lcom/oplus/camera/screen/c;-><init>([I[I)V

    .line 134
    invoke-super {p0, p1, v0}, Lcom/oplus/camera/screen/b/c;->a(Landroid/app/Activity;Lcom/oplus/camera/screen/c;)V

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

.method protected a(Landroid/app/Activity;Lcom/oplus/camera/screen/c;Lcom/oplus/camera/screen/c;)V
    .locals 2

    .line 81
    invoke-virtual {p1}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    const p3, 0x7f070183

    .line 82
    invoke-virtual {p2, p3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    .line 84
    new-instance p2, Lcom/oplus/camera/screen/c;

    const/4 p3, 0x2

    new-array v0, p3, [I

    fill-array-data v0, :array_0

    const/4 v1, 0x0

    invoke-direct {p2, v0, v1}, Lcom/oplus/camera/screen/c;-><init>([I[I)V

    .line 85
    new-instance v0, Lcom/oplus/camera/screen/c;

    new-array p3, p3, [I

    fill-array-data p3, :array_1

    invoke-direct {v0, p3, v1}, Lcom/oplus/camera/screen/c;-><init>([I[I)V

    .line 86
    invoke-super {p0, p1, p2, v0}, Lcom/oplus/camera/screen/b/c;->a(Landroid/app/Activity;Lcom/oplus/camera/screen/c;Lcom/oplus/camera/screen/c;)V

    return-void

    :array_0
    .array-data 4
        0xb
        0x0
    .end array-data

    :array_1
    .array-data 4
        0xb
        0x0
    .end array-data
.end method

.method protected a(Landroid/app/Activity;Lcom/oplus/camera/screen/c;Lcom/oplus/camera/screen/c;Lcom/oplus/camera/screen/c;)V
    .locals 9

    .line 180
    invoke-virtual {p1}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    const/4 p3, 0x4

    .line 181
    new-array p4, p3, [I

    fill-array-data p4, :array_0

    const v0, 0x7f070c62

    .line 182
    invoke-virtual {p2, v0}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v0

    const v1, 0x7f070c60

    .line 183
    invoke-virtual {p2, v1}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v1

    const v2, 0x7f070c6f

    .line 184
    invoke-virtual {p2, v2}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v2

    .line 185
    new-instance v3, Lcom/oplus/camera/screen/c;

    new-array v4, p3, [I

    const/4 v5, 0x0

    aput v0, v4, v5

    const/4 v6, 0x1

    aput v5, v4, v6

    const/4 v7, 0x2

    aput v5, v4, v7

    const/4 v8, 0x3

    aput v1, v4, v8

    invoke-direct {v3, p4, v4}, Lcom/oplus/camera/screen/c;-><init>([I[I)V

    .line 186
    new-instance v1, Lcom/oplus/camera/screen/c;

    new-array v4, p3, [I

    aput v0, v4, v5

    aput v5, v4, v6

    aput v5, v4, v7

    aput v2, v4, v8

    invoke-direct {v1, p4, v4}, Lcom/oplus/camera/screen/c;-><init>([I[I)V

    .line 188
    new-array p4, p3, [I

    fill-array-data p4, :array_1

    const v0, 0x7f0704d5

    .line 189
    invoke-virtual {p2, v0}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v0

    const v2, 0x7f0704d4

    .line 190
    invoke-virtual {p2, v2}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result p2

    .line 191
    new-instance v2, Lcom/oplus/camera/screen/c;

    new-array p3, p3, [I

    aput v5, p3, v5

    aput v0, p3, v6

    aput p2, p3, v7

    aput v5, p3, v8

    invoke-direct {v2, p4, p3}, Lcom/oplus/camera/screen/c;-><init>([I[I)V

    .line 193
    invoke-super {p0, p1, v3, v1, v2}, Lcom/oplus/camera/screen/b/c;->a(Landroid/app/Activity;Lcom/oplus/camera/screen/c;Lcom/oplus/camera/screen/c;Lcom/oplus/camera/screen/c;)V

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
        0xb
        0x0
        0xa
        0x0
    .end array-data
.end method

.method protected a(Landroid/app/Activity;Lcom/oplus/camera/screen/c;Lcom/oplus/camera/screen/c;Lcom/oplus/camera/screen/c;Lcom/oplus/camera/screen/c;)V
    .locals 8

    .line 37
    new-instance v2, Lcom/oplus/camera/screen/c;

    const/4 p2, 0x2

    new-array p3, p2, [I

    fill-array-data p3, :array_0

    const/4 p4, 0x4

    new-array p5, p4, [I

    fill-array-data p5, :array_1

    invoke-direct {v2, p3, p5}, Lcom/oplus/camera/screen/c;-><init>([I[I)V

    const p3, 0x7f0704d9

    .line 41
    invoke-static {p3}, Lcom/oplus/camera/util/Util;->i(I)I

    move-result p3

    .line 42
    new-instance v3, Lcom/oplus/camera/screen/c;

    new-array p5, p4, [I

    fill-array-data p5, :array_2

    new-array v0, p4, [I

    const/4 v1, 0x0

    aput v1, v0, v1

    const/4 v4, 0x1

    aput v1, v0, v4

    aput p3, v0, p2

    const/4 p3, 0x3

    aput v1, v0, p3

    invoke-direct {v3, p5, v0}, Lcom/oplus/camera/screen/c;-><init>([I[I)V

    const p5, 0x7f0704e7

    .line 47
    invoke-static {p5}, Lcom/oplus/camera/util/Util;->i(I)I

    move-result p5

    const v0, 0x7f0704e6

    .line 48
    invoke-static {v0}, Lcom/oplus/camera/util/Util;->i(I)I

    move-result v0

    .line 49
    new-instance v5, Lcom/oplus/camera/screen/c;

    new-array v6, p4, [I

    fill-array-data v6, :array_3

    new-array v7, p4, [I

    aput v1, v7, v1

    aput p5, v7, v4

    aput v0, v7, p2

    aput v1, v7, p3

    invoke-direct {v5, v6, v7}, Lcom/oplus/camera/screen/c;-><init>([I[I)V

    const p5, 0x7f0704d5

    .line 54
    invoke-static {p5}, Lcom/oplus/camera/util/Util;->i(I)I

    move-result p5

    const v0, 0x7f0704d4

    .line 55
    invoke-static {v0}, Lcom/oplus/camera/util/Util;->i(I)I

    move-result v0

    .line 56
    new-instance v6, Lcom/oplus/camera/screen/c;

    new-array v7, p4, [I

    fill-array-data v7, :array_4

    new-array p4, p4, [I

    aput v1, p4, v1

    aput p5, p4, v4

    aput v0, p4, p2

    aput v1, p4, p3

    invoke-direct {v6, v7, p4}, Lcom/oplus/camera/screen/c;-><init>([I[I)V

    move-object v0, p0

    move-object v1, p1

    move-object v4, v5

    move-object v5, v6

    .line 61
    invoke-super/range {v0 .. v5}, Lcom/oplus/camera/screen/b/c;->a(Landroid/app/Activity;Lcom/oplus/camera/screen/c;Lcom/oplus/camera/screen/c;Lcom/oplus/camera/screen/c;Lcom/oplus/camera/screen/c;)V

    return-void

    nop

    :array_0
    .array-data 4
        0xb
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
        0xb
        0x0
        0xf
        0x0
    .end array-data

    :array_3
    .array-data 4
        0xa
        0x0
        0xb
        0x0
    .end array-data

    :array_4
    .array-data 4
        0xb
        0x0
        0xa
        0x0
    .end array-data
.end method

.method public a(Landroid/view/View;Lcom/oplus/camera/ui/menu/BasicOptionItemList;Landroid/content/Context;I)V
    .locals 5

    .line 102
    invoke-super {p0, p1, p2, p3, p4}, Lcom/oplus/camera/screen/b/c;->a(Landroid/view/View;Lcom/oplus/camera/ui/menu/BasicOptionItemList;Landroid/content/Context;I)V

    .line 104
    invoke-virtual {p3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p3

    const v0, 0x7f070560

    .line 105
    invoke-virtual {p3, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    const v1, 0x7f070556

    .line 106
    invoke-virtual {p3, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    const v2, 0x7f070557

    .line 107
    invoke-virtual {p3, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    mul-int v3, v0, p4

    const/4 v4, 0x1

    sub-int/2addr p4, v4

    mul-int/2addr v2, p4

    add-int/2addr v3, v2

    add-int/2addr v3, v1

    const p4, 0x7f07055f

    .line 109
    invoke-virtual {p3, p4}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p4

    sub-int/2addr p4, v3

    const v1, 0x7f070559

    .line 110
    invoke-virtual {p3, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p3

    if-eqz p1, :cond_0

    .line 113
    iget-object p1, p0, Lcom/oplus/camera/screen/b/d;->h:Landroid/view/ViewGroup;

    if-eqz p1, :cond_0

    .line 114
    new-instance p1, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {p1, v0, v3}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    const/16 v0, 0x9

    .line 115
    invoke-virtual {p1, v0}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 116
    iput p4, p1, Landroid/widget/RelativeLayout$LayoutParams;->topMargin:I

    .line 117
    iput p3, p1, Landroid/widget/RelativeLayout$LayoutParams;->leftMargin:I

    .line 118
    iget-object p3, p0, Lcom/oplus/camera/screen/b/d;->h:Landroid/view/ViewGroup;

    invoke-virtual {p3, p2, p1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 121
    :cond_0
    new-array p1, v4, [Landroid/view/View;

    const/4 p3, 0x0

    aput-object p2, p1, p3

    invoke-virtual {p0, p1}, Lcom/oplus/camera/screen/b/d;->a([Landroid/view/View;)V

    return-void
.end method

.method public a(Lcom/oplus/camera/p$a;II)V
    .locals 1

    .line 355
    invoke-static {}, Lcom/oplus/camera/util/Util;->I()Landroid/util/Size;

    move-result-object p2

    .line 356
    invoke-virtual {p2}, Landroid/util/Size;->getHeight()I

    move-result p3

    invoke-virtual {p2}, Landroid/util/Size;->getWidth()I

    move-result p2

    invoke-virtual {p0, p3, p2}, Lcom/oplus/camera/screen/b/d;->b(II)Landroid/graphics/Rect;

    move-result-object p0

    const p2, 0x7f070998

    .line 357
    invoke-static {p2}, Lcom/oplus/camera/util/Util;->i(I)I

    move-result p2

    const p3, 0x7f0704d6

    .line 358
    invoke-static {p3}, Lcom/oplus/camera/util/Util;->i(I)I

    move-result p3

    const v0, 0x7f0704d7

    .line 359
    invoke-static {v0}, Lcom/oplus/camera/util/Util;->i(I)I

    move-result v0

    iput v0, p1, Lcom/oplus/camera/p$a;->b:I

    const/4 v0, 0x0

    .line 360
    iput v0, p1, Lcom/oplus/camera/p$a;->e:I

    .line 362
    iget v0, p0, Landroid/graphics/Rect;->left:I

    if-le v0, p3, :cond_0

    .line 363
    iget p0, p0, Landroid/graphics/Rect;->left:I

    add-int/2addr p0, p2

    iput p0, p1, Lcom/oplus/camera/p$a;->d:I

    goto :goto_0

    .line 365
    :cond_0
    iput p3, p1, Lcom/oplus/camera/p$a;->d:I

    :goto_0
    return-void
.end method

.method public a(Lcom/oplus/camera/screen/ScreenRelativeLayout;)V
    .locals 0

    .line 30
    sget p1, Lcom/oplus/camera/screen/f;->a:I

    iput p1, p0, Lcom/oplus/camera/screen/b/d;->b:I

    .line 31
    sget p1, Lcom/oplus/camera/screen/f;->b:I

    iput p1, p0, Lcom/oplus/camera/screen/b/d;->c:I

    return-void
.end method

.method public a(Lcom/oplus/camera/screen/b/o$a;Lcom/oplus/camera/screen/b/o$a;Lcom/oplus/camera/screen/b/o$a;)V
    .locals 5

    const/4 p1, 0x2

    .line 91
    new-array v0, p1, [Ljava/lang/Object;

    const/4 v1, 0x0

    invoke-static {v1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v1

    const/4 v2, 0x0

    aput-object v1, v0, v2

    iget v3, p0, Lcom/oplus/camera/screen/b/d;->e:F

    invoke-static {v3}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v3

    const/4 v4, 0x1

    aput-object v3, v0, v4

    invoke-interface {p2, v0}, Lcom/oplus/camera/screen/b/o$a;->call([Ljava/lang/Object;)V

    .line 92
    new-array p1, p1, [Ljava/lang/Object;

    aput-object v1, p1, v2

    iget p0, p0, Lcom/oplus/camera/screen/b/d;->e:F

    invoke-static {p0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p0

    aput-object p0, p1, v4

    invoke-interface {p3, p1}, Lcom/oplus/camera/screen/b/o$a;->call([Ljava/lang/Object;)V

    return-void
.end method

.method public a(I)Z
    .locals 0

    const/4 p0, 0x1

    if-eqz p1, :cond_1

    if-ne p0, p1, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :cond_1
    :goto_0
    return p0
.end method

.method public a(Lcom/oplus/camera/ui/CameraUIInterface;II)Z
    .locals 0

    .line 294
    iget p1, p0, Lcom/oplus/camera/screen/b/d;->d:I

    if-le p2, p1, :cond_0

    iget p1, p0, Lcom/oplus/camera/screen/b/d;->b:I

    iget p0, p0, Lcom/oplus/camera/screen/b/d;->d:I

    sub-int/2addr p1, p0

    if-ge p2, p1, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public a_(Landroid/app/Activity;)V
    .locals 4

    const/4 v0, 0x0

    .line 261
    invoke-virtual {p0, p1, v0}, Lcom/oplus/camera/screen/b/d;->d(Landroid/app/Activity;Lcom/oplus/camera/screen/c;)V

    .line 262
    invoke-virtual {p0, p1, v0}, Lcom/oplus/camera/screen/b/d;->e(Landroid/app/Activity;Lcom/oplus/camera/screen/c;)V

    .line 263
    invoke-virtual {p0, p1, v0}, Lcom/oplus/camera/screen/b/d;->c(Landroid/app/Activity;Lcom/oplus/camera/screen/c;)V

    .line 264
    invoke-virtual {p0, p1, v0, v0, v0}, Lcom/oplus/camera/screen/b/d;->a(Landroid/app/Activity;Lcom/oplus/camera/screen/c;Lcom/oplus/camera/screen/c;Lcom/oplus/camera/screen/c;)V

    .line 265
    invoke-virtual {p0, p1, v0, v0}, Lcom/oplus/camera/screen/b/d;->b(Landroid/app/Activity;Lcom/oplus/camera/screen/c;Lcom/oplus/camera/screen/c;)V

    .line 267
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    const v1, 0x7f090437

    .line 268
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const v1, 0x7f090436

    .line 269
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const v1, 0x7f090438

    .line 270
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const v1, 0x7f090168

    .line 271
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const v1, 0x7f0900a2

    .line 272
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const v1, 0x7f090145

    .line 273
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const v1, 0x7f0903c3

    .line 274
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const v1, 0x7f0903c0

    .line 275
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const v1, 0x7f0903b8

    .line 276
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const v1, 0x7f0903bc

    .line 277
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 278
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    new-array v1, v1, [Landroid/view/View;

    const/4 v2, 0x0

    .line 280
    :goto_0
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v3

    if-ge v2, v3, :cond_0

    .line 281
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

    .line 284
    :cond_0
    invoke-virtual {p0, v1}, Lcom/oplus/camera/screen/b/d;->a([Landroid/view/View;)V

    return-void
.end method

.method public b(I)I
    .locals 0

    add-int/lit8 p1, p1, 0x5a

    return p1
.end method

.method public b(Landroid/app/Activity;I)V
    .locals 11

    const p0, 0x7f0902e7

    const v0, 0x7f0900a1

    const v1, 0x7f090384

    const v2, 0x7f090419

    const v3, 0x7f0902a7

    const v4, 0x7f090312

    const v5, 0x7f0900a2

    const v6, 0x7f090145

    const v7, 0x7f090168

    const/4 v8, 0x0

    const v9, 0x7f080641

    const/4 v10, 0x1

    if-eqz p2, :cond_2

    if-eq p2, v10, :cond_1

    const/4 v9, 0x2

    if-eq p2, v9, :cond_0

    const/4 v9, 0x6

    if-eq p2, v9, :cond_0

    goto :goto_0

    .line 308
    :cond_0
    invoke-static {p1, v7, v8}, Lcom/oplus/camera/util/Util;->a(Landroid/app/Activity;IZ)V

    .line 309
    invoke-static {p1, v6, v8}, Lcom/oplus/camera/util/Util;->a(Landroid/app/Activity;IZ)V

    .line 310
    invoke-static {p1, v5, v8}, Lcom/oplus/camera/util/Util;->a(Landroid/app/Activity;IZ)V

    .line 311
    invoke-static {p1, v4, v8}, Lcom/oplus/camera/util/Util;->a(Landroid/app/Activity;IZ)V

    .line 312
    invoke-static {p1, v3, v8}, Lcom/oplus/camera/util/Util;->a(Landroid/app/Activity;IZ)V

    const p2, 0x7f08063f

    .line 313
    invoke-static {p1, v1, p2}, Lcom/oplus/camera/util/Util;->a(Landroid/app/Activity;II)V

    .line 314
    invoke-static {p1, v0, p2}, Lcom/oplus/camera/util/Util;->a(Landroid/app/Activity;II)V

    .line 315
    invoke-static {p1, v2, p2}, Lcom/oplus/camera/util/Util;->a(Landroid/app/Activity;II)V

    .line 316
    invoke-static {p1, p0, p2}, Lcom/oplus/camera/util/Util;->a(Landroid/app/Activity;II)V

    goto :goto_0

    .line 332
    :cond_1
    invoke-static {p1, v7, v10}, Lcom/oplus/camera/util/Util;->a(Landroid/app/Activity;IZ)V

    .line 333
    invoke-static {p1, v6, v10}, Lcom/oplus/camera/util/Util;->a(Landroid/app/Activity;IZ)V

    .line 334
    invoke-static {p1, v5, v10}, Lcom/oplus/camera/util/Util;->a(Landroid/app/Activity;IZ)V

    .line 335
    invoke-static {p1, v4, v10}, Lcom/oplus/camera/util/Util;->a(Landroid/app/Activity;IZ)V

    .line 336
    invoke-static {p1, v3, v10}, Lcom/oplus/camera/util/Util;->a(Landroid/app/Activity;IZ)V

    const p2, 0x7f0903c3

    .line 337
    invoke-static {p1, p2, v10}, Lcom/oplus/camera/util/Util;->a(Landroid/app/Activity;IZ)V

    const p2, 0x7f0903c0

    .line 338
    invoke-static {p1, p2, v10}, Lcom/oplus/camera/util/Util;->a(Landroid/app/Activity;IZ)V

    .line 339
    invoke-static {p1, v2, v9}, Lcom/oplus/camera/util/Util;->a(Landroid/app/Activity;II)V

    .line 340
    invoke-static {p1, v1, v9}, Lcom/oplus/camera/util/Util;->a(Landroid/app/Activity;II)V

    .line 341
    invoke-static {p1, v0, v9}, Lcom/oplus/camera/util/Util;->a(Landroid/app/Activity;II)V

    .line 342
    invoke-static {p1, p0, v9}, Lcom/oplus/camera/util/Util;->a(Landroid/app/Activity;II)V

    goto :goto_0

    .line 320
    :cond_2
    invoke-static {p1, v7, v10}, Lcom/oplus/camera/util/Util;->a(Landroid/app/Activity;IZ)V

    .line 321
    invoke-static {p1, v6, v10}, Lcom/oplus/camera/util/Util;->a(Landroid/app/Activity;IZ)V

    .line 322
    invoke-static {p1, v5, v10}, Lcom/oplus/camera/util/Util;->a(Landroid/app/Activity;IZ)V

    .line 323
    invoke-static {p1, v4, v10}, Lcom/oplus/camera/util/Util;->a(Landroid/app/Activity;IZ)V

    .line 324
    invoke-static {p1, v3, v8}, Lcom/oplus/camera/util/Util;->a(Landroid/app/Activity;IZ)V

    .line 325
    invoke-static {p1, v2, v9}, Lcom/oplus/camera/util/Util;->a(Landroid/app/Activity;II)V

    .line 326
    invoke-static {p1, v1, v9}, Lcom/oplus/camera/util/Util;->a(Landroid/app/Activity;II)V

    .line 327
    invoke-static {p1, v0, v9}, Lcom/oplus/camera/util/Util;->a(Landroid/app/Activity;II)V

    .line 328
    invoke-static {p1, p0, v9}, Lcom/oplus/camera/util/Util;->a(Landroid/app/Activity;II)V

    :goto_0
    return-void
.end method

.method protected b(Landroid/app/Activity;Lcom/oplus/camera/screen/c;)V
    .locals 5

    .line 229
    invoke-virtual {p1}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    const v0, 0x7f070582

    .line 230
    invoke-virtual {p2, v0}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v0

    const v1, 0x7f070581

    .line 231
    invoke-virtual {p2, v1}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result p2

    .line 233
    new-instance v1, Lcom/oplus/camera/screen/c;

    const/4 v2, 0x4

    new-array v3, v2, [I

    fill-array-data v3, :array_0

    new-array v2, v2, [I

    const/4 v4, 0x0

    aput p2, v2, v4

    const/4 p2, 0x1

    aput v0, v2, p2

    const/4 p2, 0x2

    aput v4, v2, p2

    const/4 p2, 0x3

    aput v4, v2, p2

    invoke-direct {v1, v3, v2}, Lcom/oplus/camera/screen/c;-><init>([I[I)V

    .line 238
    invoke-super {p0, p1, v1}, Lcom/oplus/camera/screen/b/c;->b(Landroid/app/Activity;Lcom/oplus/camera/screen/c;)V

    return-void

    nop

    :array_0
    .array-data 4
        0x9
        0x0
        0xa
        0x0
    .end array-data
.end method

.method protected b(Landroid/app/Activity;Lcom/oplus/camera/screen/c;Lcom/oplus/camera/screen/c;)V
    .locals 2

    .line 198
    invoke-virtual {p1}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    const/4 v0, 0x2

    .line 199
    new-array v0, v0, [I

    fill-array-data v0, :array_0

    const v1, 0x7f070be5

    .line 200
    invoke-virtual {p2, v1}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    const v1, 0x7f070be2

    .line 201
    invoke-virtual {p2, v1}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    .line 202
    invoke-static {}, Lcom/oplus/camera/util/Util;->Z()I

    .line 204
    invoke-static {}, Lcom/oplus/camera/util/Util;->Z()I

    move-result v1

    if-lez v1, :cond_0

    const v1, 0x7f070be7

    .line 205
    invoke-virtual {p2, v1}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    .line 208
    :cond_0
    new-instance p2, Lcom/oplus/camera/screen/c;

    const/4 v1, 0x4

    new-array v1, v1, [I

    fill-array-data v1, :array_1

    invoke-direct {p2, v0, v1}, Lcom/oplus/camera/screen/c;-><init>([I[I)V

    .line 210
    invoke-super {p0, p1, p2, p3}, Lcom/oplus/camera/screen/b/c;->b(Landroid/app/Activity;Lcom/oplus/camera/screen/c;Lcom/oplus/camera/screen/c;)V

    return-void

    :array_0
    .array-data 4
        0x14
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

.method protected c(Landroid/app/Activity;Lcom/oplus/camera/screen/c;)V
    .locals 7

    .line 66
    invoke-virtual {p1}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    const v0, 0x7f070d7b

    .line 68
    invoke-virtual {p2, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    const v1, 0x7f070d86

    .line 69
    invoke-virtual {p2, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p2

    .line 71
    new-instance v1, Lcom/oplus/camera/screen/c;

    const/4 v2, 0x4

    new-array v3, v2, [I

    fill-array-data v3, :array_0

    new-array v2, v2, [I

    neg-int v4, v0

    const/4 v5, 0x2

    div-int/2addr v4, v5

    const/4 v6, 0x0

    aput v4, v2, v6

    const/4 v4, 0x1

    aput v6, v2, v4

    aput v6, v2, v5

    div-int/2addr v0, v5

    add-int/2addr p2, v0

    const/4 v0, 0x3

    aput p2, v2, v0

    invoke-direct {v1, v3, v2}, Lcom/oplus/camera/screen/c;-><init>([I[I)V

    const/16 p2, 0x5a

    .line 75
    iput p2, v1, Lcom/oplus/camera/screen/c;->d:I

    .line 76
    invoke-super {p0, p1, v1}, Lcom/oplus/camera/screen/b/c;->c(Landroid/app/Activity;Lcom/oplus/camera/screen/c;)V

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

.method protected c(Landroid/app/Activity;Lcom/oplus/camera/screen/c;Lcom/oplus/camera/screen/c;)V
    .locals 8

    .line 139
    invoke-virtual {p1}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    const/4 p3, 0x4

    .line 140
    new-array v0, p3, [I

    fill-array-data v0, :array_0

    const v1, 0x7f070535

    .line 141
    invoke-virtual {p2, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    const v2, 0x7f070536

    .line 142
    invoke-virtual {p2, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    const v3, 0x7f070513

    .line 143
    invoke-virtual {p2, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v3

    const v4, 0x7f070514

    .line 144
    invoke-virtual {p2, v4}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p2

    .line 145
    new-instance v4, Lcom/oplus/camera/screen/c;

    new-array v5, p3, [I

    const/4 v6, 0x0

    aput v1, v5, v6

    const/4 v1, 0x1

    aput v2, v5, v1

    const/4 v2, 0x2

    aput v6, v5, v2

    const/4 v7, 0x3

    aput v6, v5, v7

    invoke-direct {v4, v0, v5}, Lcom/oplus/camera/screen/c;-><init>([I[I)V

    .line 146
    new-instance v5, Lcom/oplus/camera/screen/c;

    new-array p3, p3, [I

    aput v3, p3, v6

    aput p2, p3, v1

    aput v6, p3, v2

    aput v6, p3, v7

    invoke-direct {v5, v0, p3}, Lcom/oplus/camera/screen/c;-><init>([I[I)V

    .line 147
    invoke-super {p0, p1, v4, v5}, Lcom/oplus/camera/screen/b/c;->c(Landroid/app/Activity;Lcom/oplus/camera/screen/c;Lcom/oplus/camera/screen/c;)V

    return-void

    :array_0
    .array-data 4
        0x14
        0x0
        0xa
        0x0
    .end array-data
.end method

.method protected d(Landroid/app/Activity;Lcom/oplus/camera/screen/c;)V
    .locals 4

    .line 152
    invoke-virtual {p1}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    const v0, 0x7f070c71

    .line 153
    invoke-virtual {p2, v0}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v0

    const v1, 0x7f070c6f

    .line 154
    invoke-virtual {p2, v1}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result p2

    const/4 v1, 0x4

    .line 155
    new-array v2, v1, [I

    fill-array-data v2, :array_0

    .line 159
    new-array v1, v1, [I

    const/4 v3, 0x0

    aput v0, v1, v3

    const/4 v0, 0x1

    aput v3, v1, v0

    const/4 v0, 0x2

    aput v3, v1, v0

    const/4 v0, 0x3

    aput p2, v1, v0

    .line 160
    new-instance p2, Lcom/oplus/camera/screen/c;

    invoke-direct {p2, v2, v1}, Lcom/oplus/camera/screen/c;-><init>([I[I)V

    .line 161
    invoke-super {p0, p1, p2}, Lcom/oplus/camera/screen/b/c;->d(Landroid/app/Activity;Lcom/oplus/camera/screen/c;)V

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

.method public d(Lcom/oplus/camera/screen/b/o$a;)V
    .locals 0

    return-void
.end method

.method public e()Landroid/widget/RelativeLayout$LayoutParams;
    .locals 2

    .line 371
    new-instance p0, Landroid/widget/RelativeLayout$LayoutParams;

    const/4 v0, -0x2

    const/4 v1, -0x1

    invoke-direct {p0, v0, v1}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    const/16 v0, 0xb

    .line 373
    invoke-virtual {p0, v0}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 375
    invoke-static {}, Lcom/oplus/camera/util/Util;->H()I

    move-result v0

    const/4 v1, 0x1

    if-ne v1, v0, :cond_0

    const v0, 0x7f0704c4

    .line 376
    invoke-static {v0}, Lcom/oplus/camera/util/Util;->i(I)I

    move-result v0

    iput v0, p0, Landroid/widget/RelativeLayout$LayoutParams;->rightMargin:I

    :cond_0
    return-object p0
.end method

.method protected e(Landroid/app/Activity;Lcom/oplus/camera/screen/c;)V
    .locals 4

    .line 166
    invoke-virtual {p1}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    const v0, 0x7f070c62

    .line 167
    invoke-virtual {p2, v0}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v0

    const v1, 0x7f070c60

    .line 168
    invoke-virtual {p2, v1}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result p2

    const/4 v1, 0x4

    .line 169
    new-array v2, v1, [I

    fill-array-data v2, :array_0

    .line 173
    new-array v1, v1, [I

    const/4 v3, 0x0

    aput v0, v1, v3

    const/4 v0, 0x1

    aput v3, v1, v0

    const/4 v0, 0x2

    aput v3, v1, v0

    const/4 v0, 0x3

    aput p2, v1, v0

    .line 174
    new-instance p2, Lcom/oplus/camera/screen/c;

    invoke-direct {p2, v2, v1}, Lcom/oplus/camera/screen/c;-><init>([I[I)V

    .line 175
    invoke-super {p0, p1, p2}, Lcom/oplus/camera/screen/b/c;->e(Landroid/app/Activity;Lcom/oplus/camera/screen/c;)V

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

.method public e(Lcom/oplus/camera/screen/b/o$a;Lcom/oplus/camera/screen/b/o$a;)V
    .locals 0

    const/4 p0, 0x0

    .line 97
    new-array p0, p0, [Ljava/lang/Object;

    invoke-interface {p1, p0}, Lcom/oplus/camera/screen/b/o$a;->call([Ljava/lang/Object;)V

    return-void
.end method

.method protected f(Landroid/app/Activity;Lcom/oplus/camera/screen/c;)V
    .locals 4

    .line 215
    invoke-virtual {p1}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    const v0, 0x7f070c74

    .line 216
    invoke-virtual {p2, v0}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v0

    const v1, 0x7f070c76

    .line 217
    invoke-virtual {p2, v1}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result p2

    const/4 v1, 0x4

    .line 218
    new-array v2, v1, [I

    fill-array-data v2, :array_0

    .line 222
    new-array v1, v1, [I

    const/4 v3, 0x0

    aput v0, v1, v3

    const/4 v0, 0x1

    aput p2, v1, v0

    const/4 p2, 0x2

    aput v3, v1, p2

    const/4 p2, 0x3

    aput v3, v1, p2

    .line 223
    new-instance p2, Lcom/oplus/camera/screen/c;

    invoke-direct {p2, v2, v1}, Lcom/oplus/camera/screen/c;-><init>([I[I)V

    .line 224
    invoke-super {p0, p1, p2}, Lcom/oplus/camera/screen/b/c;->f(Landroid/app/Activity;Lcom/oplus/camera/screen/c;)V

    return-void

    nop

    :array_0
    .array-data 4
        0x9
        0x0
        0xa
        0x0
    .end array-data
.end method

.method public h()Ljava/lang/String;
    .locals 0

    const-string p0, "full"

    return-object p0
.end method

.method public n()Z
    .locals 0

    const/4 p0, 0x1

    return p0
.end method
