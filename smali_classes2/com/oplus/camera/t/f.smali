.class public Lcom/oplus/camera/t/f;
.super Landroid/widget/RelativeLayout;
.source "StreetTraceGuideLayout.java"


# instance fields
.field private a:Landroid/widget/TextView;

.field private b:Landroid/widget/TextView;

.field private c:Landroid/widget/TextView;

.field private d:Landroid/widget/TextView;

.field private e:I

.field private f:I

.field private g:I

.field private h:I

.field private i:Landroid/graphics/Paint;

.field private j:Landroid/graphics/RectF;


# direct methods
.method public constructor <init>(Landroid/content/Context;I)V
    .locals 3

    .line 46
    invoke-direct {p0, p1}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;)V

    const/4 p1, 0x0

    .line 32
    iput-object p1, p0, Lcom/oplus/camera/t/f;->a:Landroid/widget/TextView;

    .line 33
    iput-object p1, p0, Lcom/oplus/camera/t/f;->b:Landroid/widget/TextView;

    .line 34
    iput-object p1, p0, Lcom/oplus/camera/t/f;->c:Landroid/widget/TextView;

    .line 35
    iput-object p1, p0, Lcom/oplus/camera/t/f;->d:Landroid/widget/TextView;

    const/4 v0, 0x0

    .line 37
    iput v0, p0, Lcom/oplus/camera/t/f;->e:I

    .line 38
    iput v0, p0, Lcom/oplus/camera/t/f;->f:I

    .line 39
    iput v0, p0, Lcom/oplus/camera/t/f;->g:I

    .line 40
    iput v0, p0, Lcom/oplus/camera/t/f;->h:I

    .line 42
    iput-object p1, p0, Lcom/oplus/camera/t/f;->i:Landroid/graphics/Paint;

    .line 43
    iput-object p1, p0, Lcom/oplus/camera/t/f;->j:Landroid/graphics/RectF;

    .line 47
    iput p2, p0, Lcom/oplus/camera/t/f;->e:I

    .line 48
    invoke-virtual {p0}, Lcom/oplus/camera/t/f;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const p2, 0x7f070b25

    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p1

    iput p1, p0, Lcom/oplus/camera/t/f;->f:I

    .line 49
    invoke-static {}, Lcom/oplus/camera/util/Util;->getScreenWidth()I

    move-result p1

    iput p1, p0, Lcom/oplus/camera/t/f;->g:I

    .line 50
    invoke-virtual {p0}, Lcom/oplus/camera/t/f;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const p2, 0x7f070b27

    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p1

    iput p1, p0, Lcom/oplus/camera/t/f;->h:I

    .line 52
    new-instance p1, Landroid/graphics/Paint;

    invoke-direct {p1}, Landroid/graphics/Paint;-><init>()V

    iput-object p1, p0, Lcom/oplus/camera/t/f;->i:Landroid/graphics/Paint;

    .line 53
    iget-object p1, p0, Lcom/oplus/camera/t/f;->i:Landroid/graphics/Paint;

    sget-object p2, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {p1, p2}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 54
    iget-object p1, p0, Lcom/oplus/camera/t/f;->i:Landroid/graphics/Paint;

    invoke-virtual {p0}, Lcom/oplus/camera/t/f;->getContext()Landroid/content/Context;

    move-result-object p2

    const v0, 0x7f06051f

    invoke-virtual {p2, v0}, Landroid/content/Context;->getColor(I)I

    move-result p2

    invoke-virtual {p1, p2}, Landroid/graphics/Paint;->setColor(I)V

    .line 55
    iget-object p1, p0, Lcom/oplus/camera/t/f;->i:Landroid/graphics/Paint;

    const/4 p2, 0x1

    invoke-virtual {p1, p2}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 56
    iget-object p1, p0, Lcom/oplus/camera/t/f;->i:Landroid/graphics/Paint;

    const/high16 p2, 0x40a00000    # 5.0f

    invoke-virtual {p1, p2}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 58
    iget p1, p0, Lcom/oplus/camera/t/f;->g:I

    div-int/lit8 p2, p1, 0x2

    iget v0, p0, Lcom/oplus/camera/t/f;->e:I

    sub-int/2addr p2, v0

    add-int/lit8 p2, p2, -0xb

    int-to-float p2, p2

    .line 59
    iget v1, p0, Lcom/oplus/camera/t/f;->h:I

    div-int/lit8 v2, v1, 0x2

    sub-int/2addr v2, v0

    add-int/lit8 v2, v2, -0xb

    int-to-float v2, v2

    .line 60
    div-int/lit8 p1, p1, 0x2

    add-int/2addr p1, v0

    add-int/lit8 p1, p1, 0xb

    int-to-float p1, p1

    .line 61
    div-int/lit8 v1, v1, 0x2

    add-int/2addr v1, v0

    add-int/lit8 v1, v1, 0xb

    int-to-float v0, v1

    .line 63
    new-instance v1, Landroid/graphics/RectF;

    invoke-direct {v1, p2, v2, p1, v0}, Landroid/graphics/RectF;-><init>(FFFF)V

    iput-object v1, p0, Lcom/oplus/camera/t/f;->j:Landroid/graphics/RectF;

    return-void
.end method

.method private b()V
    .locals 6

    .line 67
    invoke-direct {p0}, Lcom/oplus/camera/t/f;->c()Landroid/widget/TextView;

    move-result-object v0

    iput-object v0, p0, Lcom/oplus/camera/t/f;->a:Landroid/widget/TextView;

    .line 68
    invoke-direct {p0}, Lcom/oplus/camera/t/f;->c()Landroid/widget/TextView;

    move-result-object v0

    iput-object v0, p0, Lcom/oplus/camera/t/f;->b:Landroid/widget/TextView;

    .line 69
    invoke-direct {p0}, Lcom/oplus/camera/t/f;->c()Landroid/widget/TextView;

    move-result-object v0

    iput-object v0, p0, Lcom/oplus/camera/t/f;->c:Landroid/widget/TextView;

    .line 70
    invoke-direct {p0}, Lcom/oplus/camera/t/f;->c()Landroid/widget/TextView;

    move-result-object v0

    iput-object v0, p0, Lcom/oplus/camera/t/f;->d:Landroid/widget/TextView;

    .line 72
    iget-object v0, p0, Lcom/oplus/camera/t/f;->a:Landroid/widget/TextView;

    iget v1, p0, Lcom/oplus/camera/t/f;->f:I

    const/4 v2, 0x0

    invoke-virtual {v0, v2, v2, v1, v2}, Landroid/widget/TextView;->setPadding(IIII)V

    .line 73
    iget-object v0, p0, Lcom/oplus/camera/t/f;->a:Landroid/widget/TextView;

    const/4 v1, 0x5

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setGravity(I)V

    .line 74
    iget-object v0, p0, Lcom/oplus/camera/t/f;->a:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/oplus/camera/t/f;->getContext()Landroid/content/Context;

    move-result-object v1

    const v3, 0x7f10065a

    invoke-virtual {v1, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 75
    new-instance v0, Landroid/widget/RelativeLayout$LayoutParams;

    iget v1, p0, Lcom/oplus/camera/t/f;->g:I

    div-int/lit8 v1, v1, 0x2

    iget v3, p0, Lcom/oplus/camera/t/f;->e:I

    sub-int/2addr v1, v3

    const/4 v3, -0x2

    invoke-direct {v0, v1, v3}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    const/16 v1, 0x9

    .line 76
    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    const/16 v1, 0xf

    .line 77
    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 78
    iget-object v4, p0, Lcom/oplus/camera/t/f;->a:Landroid/widget/TextView;

    invoke-virtual {v4, v0}, Landroid/widget/TextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 80
    iget-object v0, p0, Lcom/oplus/camera/t/f;->b:Landroid/widget/TextView;

    iget v4, p0, Lcom/oplus/camera/t/f;->f:I

    invoke-virtual {v0, v4, v2, v2, v2}, Landroid/widget/TextView;->setPadding(IIII)V

    .line 81
    iget-object v0, p0, Lcom/oplus/camera/t/f;->b:Landroid/widget/TextView;

    const/4 v4, 0x3

    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setGravity(I)V

    .line 82
    iget-object v0, p0, Lcom/oplus/camera/t/f;->b:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/oplus/camera/t/f;->getContext()Landroid/content/Context;

    move-result-object v4

    const v5, 0x7f1005d2

    invoke-virtual {v4, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 83
    new-instance v0, Landroid/widget/RelativeLayout$LayoutParams;

    iget v4, p0, Lcom/oplus/camera/t/f;->g:I

    div-int/lit8 v4, v4, 0x2

    iget v5, p0, Lcom/oplus/camera/t/f;->e:I

    sub-int/2addr v4, v5

    invoke-direct {v0, v4, v3}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    const/16 v4, 0xb

    .line 84
    invoke-virtual {v0, v4}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 85
    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 86
    iget-object v1, p0, Lcom/oplus/camera/t/f;->b:Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 88
    iget-object v0, p0, Lcom/oplus/camera/t/f;->c:Landroid/widget/TextView;

    iget v1, p0, Lcom/oplus/camera/t/f;->f:I

    invoke-virtual {v0, v2, v2, v2, v1}, Landroid/widget/TextView;->setPadding(IIII)V

    .line 89
    iget-object v0, p0, Lcom/oplus/camera/t/f;->c:Landroid/widget/TextView;

    const/16 v1, 0x50

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setGravity(I)V

    .line 90
    iget-object v0, p0, Lcom/oplus/camera/t/f;->c:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/oplus/camera/t/f;->getContext()Landroid/content/Context;

    move-result-object v1

    const v4, 0x7f1006ec

    invoke-virtual {v1, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 91
    new-instance v0, Landroid/widget/RelativeLayout$LayoutParams;

    iget v1, p0, Lcom/oplus/camera/t/f;->h:I

    div-int/lit8 v1, v1, 0x2

    iget v4, p0, Lcom/oplus/camera/t/f;->e:I

    sub-int/2addr v1, v4

    invoke-direct {v0, v3, v1}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    const/16 v1, 0xa

    .line 92
    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    const/16 v1, 0xe

    .line 93
    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 94
    iget-object v4, p0, Lcom/oplus/camera/t/f;->c:Landroid/widget/TextView;

    invoke-virtual {v4, v0}, Landroid/widget/TextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 96
    iget-object v0, p0, Lcom/oplus/camera/t/f;->d:Landroid/widget/TextView;

    iget v4, p0, Lcom/oplus/camera/t/f;->f:I

    invoke-virtual {v0, v2, v4, v2, v2}, Landroid/widget/TextView;->setPadding(IIII)V

    .line 97
    iget-object v0, p0, Lcom/oplus/camera/t/f;->d:Landroid/widget/TextView;

    const/16 v2, 0x30

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setGravity(I)V

    .line 98
    iget-object v0, p0, Lcom/oplus/camera/t/f;->d:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/oplus/camera/t/f;->getContext()Landroid/content/Context;

    move-result-object v2

    const v4, 0x7f1006eb

    invoke-virtual {v2, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 99
    new-instance v0, Landroid/widget/RelativeLayout$LayoutParams;

    iget v2, p0, Lcom/oplus/camera/t/f;->h:I

    div-int/lit8 v2, v2, 0x2

    iget v4, p0, Lcom/oplus/camera/t/f;->e:I

    sub-int/2addr v2, v4

    invoke-direct {v0, v3, v2}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    const/16 v2, 0xc

    .line 100
    invoke-virtual {v0, v2}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 101
    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 102
    iget-object v1, p0, Lcom/oplus/camera/t/f;->d:Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 104
    iget-object v0, p0, Lcom/oplus/camera/t/f;->a:Landroid/widget/TextView;

    invoke-virtual {p0, v0}, Lcom/oplus/camera/t/f;->addView(Landroid/view/View;)V

    .line 105
    iget-object v0, p0, Lcom/oplus/camera/t/f;->b:Landroid/widget/TextView;

    invoke-virtual {p0, v0}, Lcom/oplus/camera/t/f;->addView(Landroid/view/View;)V

    .line 106
    iget-object v0, p0, Lcom/oplus/camera/t/f;->c:Landroid/widget/TextView;

    invoke-virtual {p0, v0}, Lcom/oplus/camera/t/f;->addView(Landroid/view/View;)V

    .line 107
    iget-object v0, p0, Lcom/oplus/camera/t/f;->d:Landroid/widget/TextView;

    invoke-virtual {p0, v0}, Lcom/oplus/camera/t/f;->addView(Landroid/view/View;)V

    return-void
.end method

.method private b(F)V
    .locals 3

    .line 133
    invoke-virtual {p0, p1}, Lcom/oplus/camera/t/f;->setY(F)V

    .line 135
    iget-object p1, p0, Lcom/oplus/camera/t/f;->a:Landroid/widget/TextView;

    if-nez p1, :cond_0

    .line 136
    new-instance p1, Landroid/widget/RelativeLayout$LayoutParams;

    const/4 v0, -0x1

    .line 137
    invoke-virtual {p0}, Lcom/oplus/camera/t/f;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f070b27

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    invoke-direct {p1, v0, v1}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 138
    invoke-virtual {p0, p1}, Lcom/oplus/camera/t/f;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 139
    invoke-direct {p0}, Lcom/oplus/camera/t/f;->b()V

    const/4 p1, 0x0

    .line 140
    invoke-virtual {p0, p1}, Lcom/oplus/camera/t/f;->setBackgroundColor(I)V

    :cond_0
    return-void
.end method

.method private c()Landroid/widget/TextView;
    .locals 4

    .line 111
    new-instance v0, Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/oplus/camera/t/f;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    .line 112
    invoke-virtual {p0}, Lcom/oplus/camera/t/f;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const/4 v2, 0x0

    .line 113
    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setIncludeFontPadding(Z)V

    const v3, 0x7f070b26

    .line 115
    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v3

    int-to-float v3, v3

    .line 114
    invoke-virtual {v0, v2, v3}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 116
    invoke-virtual {p0}, Lcom/oplus/camera/t/f;->getContext()Landroid/content/Context;

    move-result-object p0

    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p0

    invoke-static {p0}, Lcom/oplus/camera/util/Util;->l(Landroid/content/Context;)Landroid/graphics/Typeface;

    move-result-object p0

    invoke-virtual {v0, p0}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    const p0, 0x7f060470

    .line 117
    invoke-virtual {v1, p0}, Landroid/content/res/Resources;->getColor(I)I

    move-result p0

    invoke-virtual {v0, p0}, Landroid/widget/TextView;->setTextColor(I)V

    .line 118
    invoke-static {}, Landroid/view/View;->generateViewId()I

    move-result p0

    invoke-virtual {v0, p0}, Landroid/widget/TextView;->setId(I)V

    return-object v0
.end method


# virtual methods
.method public a()V
    .locals 1

    const/16 v0, 0x8

    .line 129
    invoke-virtual {p0, v0}, Lcom/oplus/camera/t/f;->setVisibility(I)V

    return-void
.end method

.method public a(F)V
    .locals 0

    .line 124
    invoke-direct {p0, p1}, Lcom/oplus/camera/t/f;->b(F)V

    const/4 p1, 0x0

    .line 125
    invoke-virtual {p0, p1}, Lcom/oplus/camera/t/f;->setVisibility(I)V

    return-void
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 12

    .line 146
    invoke-super {p0, p1}, Landroid/widget/RelativeLayout;->onDraw(Landroid/graphics/Canvas;)V

    .line 148
    iget-object v1, p0, Lcom/oplus/camera/t/f;->j:Landroid/graphics/RectF;

    iget-object v5, p0, Lcom/oplus/camera/t/f;->i:Landroid/graphics/Paint;

    const/high16 v2, -0x3e700000    # -18.0f

    const/high16 v3, 0x42100000    # 36.0f

    const/4 v4, 0x0

    move-object v0, p1

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawArc(Landroid/graphics/RectF;FFZLandroid/graphics/Paint;)V

    .line 149
    iget-object v7, p0, Lcom/oplus/camera/t/f;->j:Landroid/graphics/RectF;

    iget-object v11, p0, Lcom/oplus/camera/t/f;->i:Landroid/graphics/Paint;

    const/high16 v8, 0x42900000    # 72.0f

    const/high16 v9, 0x42100000    # 36.0f

    const/4 v10, 0x0

    move-object v6, p1

    invoke-virtual/range {v6 .. v11}, Landroid/graphics/Canvas;->drawArc(Landroid/graphics/RectF;FFZLandroid/graphics/Paint;)V

    .line 150
    iget-object v1, p0, Lcom/oplus/camera/t/f;->j:Landroid/graphics/RectF;

    iget-object v5, p0, Lcom/oplus/camera/t/f;->i:Landroid/graphics/Paint;

    const/high16 v2, 0x43220000    # 162.0f

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawArc(Landroid/graphics/RectF;FFZLandroid/graphics/Paint;)V

    .line 151
    iget-object v7, p0, Lcom/oplus/camera/t/f;->j:Landroid/graphics/RectF;

    iget-object v11, p0, Lcom/oplus/camera/t/f;->i:Landroid/graphics/Paint;

    const/high16 v8, 0x437c0000    # 252.0f

    invoke-virtual/range {v6 .. v11}, Landroid/graphics/Canvas;->drawArc(Landroid/graphics/RectF;FFZLandroid/graphics/Paint;)V

    return-void
.end method
