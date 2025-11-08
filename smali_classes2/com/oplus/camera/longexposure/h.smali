.class public Lcom/oplus/camera/longexposure/h;
.super Landroid/widget/TextView;
.source "LongExposureRotableTextView.java"


# instance fields
.field private a:Landroid/content/Context;

.field private b:Landroid/content/res/Resources;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    .line 31
    invoke-direct {p0, p1}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    const/4 v0, 0x0

    .line 27
    iput-object v0, p0, Lcom/oplus/camera/longexposure/h;->a:Landroid/content/Context;

    .line 28
    iput-object v0, p0, Lcom/oplus/camera/longexposure/h;->b:Landroid/content/res/Resources;

    .line 32
    iput-object p1, p0, Lcom/oplus/camera/longexposure/h;->a:Landroid/content/Context;

    .line 34
    iget-object v0, p0, Lcom/oplus/camera/longexposure/h;->b:Landroid/content/res/Resources;

    if-nez v0, :cond_0

    .line 35
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    iput-object p1, p0, Lcom/oplus/camera/longexposure/h;->b:Landroid/content/res/Resources;

    :cond_0
    return-void
.end method


# virtual methods
.method public a(I)V
    .locals 8

    .line 52
    new-instance v0, Landroid/widget/RelativeLayout$LayoutParams;

    iget-object v1, p0, Lcom/oplus/camera/longexposure/h;->b:Landroid/content/res/Resources;

    const v2, 0x7f0706d2

    .line 53
    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    iget-object v3, p0, Lcom/oplus/camera/longexposure/h;->b:Landroid/content/res/Resources;

    const v4, 0x7f0706c8

    .line 54
    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v3

    invoke-direct {v0, v1, v3}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 56
    iget-object v1, p0, Lcom/oplus/camera/longexposure/h;->b:Landroid/content/res/Resources;

    invoke-virtual {v1, v4}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    div-int/lit8 v1, v1, 0x2

    .line 57
    iget-object v3, p0, Lcom/oplus/camera/longexposure/h;->b:Landroid/content/res/Resources;

    invoke-virtual {v3, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    div-int/lit8 v2, v2, 0x2

    const/16 v3, 0x10e

    const/16 v4, 0xb4

    const/16 v5, 0x5a

    const/16 v6, 0x9

    const/16 v7, 0xa

    if-eq p1, v5, :cond_2

    if-eq p1, v4, :cond_1

    if-eq p1, v3, :cond_0

    .line 88
    invoke-virtual {v0, v6}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 89
    invoke-virtual {v0, v7}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 90
    iget-object p1, p0, Lcom/oplus/camera/longexposure/h;->b:Landroid/content/res/Resources;

    const v1, 0x7f0706c9

    invoke-virtual {p1, v1}, Landroid/content/res/Resources;->getDimension(I)F

    move-result p1

    float-to-int p1, p1

    iput p1, v0, Landroid/widget/RelativeLayout$LayoutParams;->leftMargin:I

    .line 91
    iget-object p1, p0, Lcom/oplus/camera/longexposure/h;->b:Landroid/content/res/Resources;

    const v1, 0x7f0706cd

    invoke-virtual {p1, v1}, Landroid/content/res/Resources;->getDimension(I)F

    move-result p1

    float-to-int p1, p1

    iput p1, v0, Landroid/widget/RelativeLayout$LayoutParams;->topMargin:I

    const/4 v3, 0x0

    goto :goto_0

    :cond_0
    const/16 p1, 0xb

    .line 79
    invoke-virtual {v0, p1}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 80
    invoke-virtual {v0, v7}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 81
    iget-object p1, p0, Lcom/oplus/camera/longexposure/h;->b:Landroid/content/res/Resources;

    const v4, 0x7f0706cc

    invoke-virtual {p1, v4}, Landroid/content/res/Resources;->getDimension(I)F

    move-result p1

    float-to-int p1, p1

    add-int/2addr p1, v1

    sub-int/2addr p1, v2

    iput p1, v0, Landroid/widget/RelativeLayout$LayoutParams;->rightMargin:I

    .line 82
    iget-object p1, p0, Lcom/oplus/camera/longexposure/h;->b:Landroid/content/res/Resources;

    const v4, 0x7f0706cf

    invoke-virtual {p1, v4}, Landroid/content/res/Resources;->getDimension(I)F

    move-result p1

    float-to-int p1, p1

    add-int/2addr p1, v2

    sub-int/2addr p1, v1

    iput p1, v0, Landroid/widget/RelativeLayout$LayoutParams;->topMargin:I

    goto :goto_0

    .line 70
    :cond_1
    invoke-virtual {v0, v6}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 71
    invoke-virtual {v0, v7}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 72
    iget-object p1, p0, Lcom/oplus/camera/longexposure/h;->b:Landroid/content/res/Resources;

    const v1, 0x7f0706ca

    invoke-virtual {p1, v1}, Landroid/content/res/Resources;->getDimension(I)F

    move-result p1

    float-to-int p1, p1

    iput p1, v0, Landroid/widget/RelativeLayout$LayoutParams;->leftMargin:I

    .line 73
    iget-object p1, p0, Lcom/oplus/camera/longexposure/h;->b:Landroid/content/res/Resources;

    const v1, 0x7f0706ce

    invoke-virtual {p1, v1}, Landroid/content/res/Resources;->getDimension(I)F

    move-result p1

    float-to-int p1, p1

    iput p1, v0, Landroid/widget/RelativeLayout$LayoutParams;->topMargin:I

    move v3, v4

    goto :goto_0

    .line 61
    :cond_2
    invoke-virtual {v0, v6}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 62
    invoke-virtual {v0, v7}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 63
    iget-object p1, p0, Lcom/oplus/camera/longexposure/h;->b:Landroid/content/res/Resources;

    const v3, 0x7f0706cb

    invoke-virtual {p1, v3}, Landroid/content/res/Resources;->getDimension(I)F

    move-result p1

    float-to-int p1, p1

    add-int/2addr p1, v1

    sub-int/2addr p1, v2

    iput p1, v0, Landroid/widget/RelativeLayout$LayoutParams;->leftMargin:I

    .line 64
    iget-object p1, p0, Lcom/oplus/camera/longexposure/h;->b:Landroid/content/res/Resources;

    const v3, 0x7f0706d0

    invoke-virtual {p1, v3}, Landroid/content/res/Resources;->getDimension(I)F

    move-result p1

    float-to-int p1, p1

    add-int/2addr p1, v2

    sub-int/2addr p1, v1

    iput p1, v0, Landroid/widget/RelativeLayout$LayoutParams;->topMargin:I

    move v3, v5

    .line 97
    :goto_0
    invoke-virtual {p0, v0}, Lcom/oplus/camera/longexposure/h;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    neg-int p1, v3

    int-to-float p1, p1

    .line 98
    invoke-virtual {p0, p1}, Lcom/oplus/camera/longexposure/h;->setRotation(F)V

    return-void
.end method

.method public b(I)V
    .locals 7

    .line 102
    new-instance v0, Landroid/widget/RelativeLayout$LayoutParams;

    iget-object v1, p0, Lcom/oplus/camera/longexposure/h;->b:Landroid/content/res/Resources;

    const v2, 0x7f0706bf

    .line 103
    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    iget-object v3, p0, Lcom/oplus/camera/longexposure/h;->b:Landroid/content/res/Resources;

    const v4, 0x7f0706b5

    .line 104
    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v3

    invoke-direct {v0, v1, v3}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 106
    iget-object v1, p0, Lcom/oplus/camera/longexposure/h;->b:Landroid/content/res/Resources;

    invoke-virtual {v1, v4}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    div-int/lit8 v1, v1, 0x2

    .line 107
    iget-object v3, p0, Lcom/oplus/camera/longexposure/h;->b:Landroid/content/res/Resources;

    invoke-virtual {v3, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    div-int/lit8 v2, v2, 0x2

    const/16 v3, 0x10e

    const/16 v4, 0xb4

    const/16 v5, 0x5a

    const/16 v6, 0xa

    if-eq p1, v5, :cond_2

    const/16 v5, 0x9

    if-eq p1, v4, :cond_1

    if-eq p1, v3, :cond_0

    .line 138
    invoke-virtual {v0, v5}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 139
    invoke-virtual {v0, v6}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 140
    iget-object p1, p0, Lcom/oplus/camera/longexposure/h;->b:Landroid/content/res/Resources;

    const v1, 0x7f0706b6

    invoke-virtual {p1, v1}, Landroid/content/res/Resources;->getDimension(I)F

    move-result p1

    float-to-int p1, p1

    iput p1, v0, Landroid/widget/RelativeLayout$LayoutParams;->leftMargin:I

    .line 141
    iget-object p1, p0, Lcom/oplus/camera/longexposure/h;->b:Landroid/content/res/Resources;

    const v1, 0x7f0706ba

    invoke-virtual {p1, v1}, Landroid/content/res/Resources;->getDimension(I)F

    move-result p1

    float-to-int p1, p1

    iput p1, v0, Landroid/widget/RelativeLayout$LayoutParams;->topMargin:I

    const/4 v3, 0x0

    goto :goto_0

    .line 129
    :cond_0
    invoke-virtual {v0, v5}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 130
    invoke-virtual {v0, v6}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 131
    iget-object p1, p0, Lcom/oplus/camera/longexposure/h;->b:Landroid/content/res/Resources;

    const v4, 0x7f0706b8

    invoke-virtual {p1, v4}, Landroid/content/res/Resources;->getDimension(I)F

    move-result p1

    float-to-int p1, p1

    add-int/2addr p1, v1

    sub-int/2addr p1, v2

    iput p1, v0, Landroid/widget/RelativeLayout$LayoutParams;->leftMargin:I

    .line 132
    iget-object p1, p0, Lcom/oplus/camera/longexposure/h;->b:Landroid/content/res/Resources;

    const v4, 0x7f0706bc

    invoke-virtual {p1, v4}, Landroid/content/res/Resources;->getDimension(I)F

    move-result p1

    float-to-int p1, p1

    add-int/2addr p1, v2

    sub-int/2addr p1, v1

    iput p1, v0, Landroid/widget/RelativeLayout$LayoutParams;->topMargin:I

    goto :goto_0

    .line 120
    :cond_1
    invoke-virtual {v0, v5}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 121
    invoke-virtual {v0, v6}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 122
    iget-object p1, p0, Lcom/oplus/camera/longexposure/h;->b:Landroid/content/res/Resources;

    const v1, 0x7f0706b7

    invoke-virtual {p1, v1}, Landroid/content/res/Resources;->getDimension(I)F

    move-result p1

    float-to-int p1, p1

    iput p1, v0, Landroid/widget/RelativeLayout$LayoutParams;->leftMargin:I

    .line 123
    iget-object p1, p0, Lcom/oplus/camera/longexposure/h;->b:Landroid/content/res/Resources;

    const v1, 0x7f0706bb

    invoke-virtual {p1, v1}, Landroid/content/res/Resources;->getDimension(I)F

    move-result p1

    float-to-int p1, p1

    iput p1, v0, Landroid/widget/RelativeLayout$LayoutParams;->topMargin:I

    move v3, v4

    goto :goto_0

    :cond_2
    const/16 p1, 0xb

    .line 111
    invoke-virtual {v0, p1}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 112
    invoke-virtual {v0, v6}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 113
    iget-object p1, p0, Lcom/oplus/camera/longexposure/h;->b:Landroid/content/res/Resources;

    const v3, 0x7f0706b9

    invoke-virtual {p1, v3}, Landroid/content/res/Resources;->getDimension(I)F

    move-result p1

    float-to-int p1, p1

    add-int/2addr p1, v1

    sub-int/2addr p1, v2

    iput p1, v0, Landroid/widget/RelativeLayout$LayoutParams;->rightMargin:I

    .line 114
    iget-object p1, p0, Lcom/oplus/camera/longexposure/h;->b:Landroid/content/res/Resources;

    const v3, 0x7f0706bd

    invoke-virtual {p1, v3}, Landroid/content/res/Resources;->getDimension(I)F

    move-result p1

    float-to-int p1, p1

    add-int/2addr p1, v2

    sub-int/2addr p1, v1

    iput p1, v0, Landroid/widget/RelativeLayout$LayoutParams;->topMargin:I

    move v3, v5

    .line 147
    :goto_0
    invoke-virtual {p0, v0}, Lcom/oplus/camera/longexposure/h;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    neg-int p1, v3

    int-to-float p1, p1

    .line 148
    invoke-virtual {p0, p1}, Lcom/oplus/camera/longexposure/h;->setRotation(F)V

    return-void
.end method
