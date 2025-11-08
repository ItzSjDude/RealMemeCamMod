.class public Lcom/oplus/camera/screen/d;
.super Ljava/lang/Object;
.source "LayoutUtil.java"


# direct methods
.method public static a(Landroid/view/View;)V
    .locals 2

    .line 8
    invoke-virtual {p0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p0

    check-cast p0, Landroid/widget/RelativeLayout$LayoutParams;

    if-nez p0, :cond_0

    return-void

    :cond_0
    const/16 v0, 0xa

    .line 14
    invoke-virtual {p0, v0}, Landroid/widget/RelativeLayout$LayoutParams;->removeRule(I)V

    const/16 v0, 0x9

    .line 15
    invoke-virtual {p0, v0}, Landroid/widget/RelativeLayout$LayoutParams;->removeRule(I)V

    const/16 v0, 0xb

    .line 16
    invoke-virtual {p0, v0}, Landroid/widget/RelativeLayout$LayoutParams;->removeRule(I)V

    const/16 v0, 0x14

    .line 17
    invoke-virtual {p0, v0}, Landroid/widget/RelativeLayout$LayoutParams;->removeRule(I)V

    const/16 v0, 0x15

    .line 18
    invoke-virtual {p0, v0}, Landroid/widget/RelativeLayout$LayoutParams;->removeRule(I)V

    const/16 v0, 0xc

    .line 19
    invoke-virtual {p0, v0}, Landroid/widget/RelativeLayout$LayoutParams;->removeRule(I)V

    const/16 v0, 0xd

    .line 20
    invoke-virtual {p0, v0}, Landroid/widget/RelativeLayout$LayoutParams;->removeRule(I)V

    const/16 v0, 0xe

    .line 21
    invoke-virtual {p0, v0}, Landroid/widget/RelativeLayout$LayoutParams;->removeRule(I)V

    const/16 v0, 0xf

    .line 22
    invoke-virtual {p0, v0}, Landroid/widget/RelativeLayout$LayoutParams;->removeRule(I)V

    const/4 v0, 0x2

    .line 23
    invoke-virtual {p0, v0}, Landroid/widget/RelativeLayout$LayoutParams;->removeRule(I)V

    const/4 v0, 0x3

    .line 24
    invoke-virtual {p0, v0}, Landroid/widget/RelativeLayout$LayoutParams;->removeRule(I)V

    const/16 v0, 0x10

    .line 25
    invoke-virtual {p0, v0}, Landroid/widget/RelativeLayout$LayoutParams;->removeRule(I)V

    const/4 v0, 0x0

    .line 26
    invoke-virtual {p0, v0}, Landroid/widget/RelativeLayout$LayoutParams;->removeRule(I)V

    const/16 v1, 0x11

    .line 27
    invoke-virtual {p0, v1}, Landroid/widget/RelativeLayout$LayoutParams;->removeRule(I)V

    const/4 v1, 0x1

    .line 28
    invoke-virtual {p0, v1}, Landroid/widget/RelativeLayout$LayoutParams;->removeRule(I)V

    .line 29
    invoke-virtual {p0, v0, v0, v0, v0}, Landroid/widget/RelativeLayout$LayoutParams;->setMargins(IIII)V

    .line 31
    invoke-virtual {p0}, Landroid/widget/RelativeLayout$LayoutParams;->getMarginStart()I

    move-result v1

    if-eqz v1, :cond_1

    .line 32
    invoke-virtual {p0, v0}, Landroid/widget/RelativeLayout$LayoutParams;->setMarginStart(I)V

    .line 35
    :cond_1
    invoke-virtual {p0}, Landroid/widget/RelativeLayout$LayoutParams;->getMarginEnd()I

    move-result v1

    if-eqz v1, :cond_2

    .line 36
    invoke-virtual {p0, v0}, Landroid/widget/RelativeLayout$LayoutParams;->setMarginEnd(I)V

    :cond_2
    return-void
.end method

.method public static a(Landroid/view/View;Lcom/oplus/camera/screen/c;)V
    .locals 9

    .line 41
    iget-boolean v0, p1, Lcom/oplus/camera/screen/c;->g:Z

    if-eqz v0, :cond_0

    .line 42
    invoke-static {p0}, Lcom/oplus/camera/screen/d;->a(Landroid/view/View;)V

    .line 45
    :cond_0
    invoke-virtual {p0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout$LayoutParams;

    .line 49
    iget-object v1, p1, Lcom/oplus/camera/screen/c;->a:[I

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-eqz v1, :cond_4

    move v1, v3

    move v4, v1

    .line 50
    :goto_0
    iget-object v5, p1, Lcom/oplus/camera/screen/c;->a:[I

    array-length v5, v5

    if-ge v1, v5, :cond_5

    .line 51
    iget-object v5, p1, Lcom/oplus/camera/screen/c;->a:[I

    aget v5, v5, v1

    const/16 v6, 0x14

    if-eq v5, v6, :cond_1

    const/16 v6, 0x15

    if-ne v5, v6, :cond_2

    :cond_1
    move v4, v2

    .line 57
    :cond_2
    iget-object v6, p1, Lcom/oplus/camera/screen/c;->a:[I

    add-int/lit8 v1, v1, 0x1

    aget v6, v6, v1

    if-nez v6, :cond_3

    .line 60
    invoke-virtual {v0, v5}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    goto :goto_1

    .line 62
    :cond_3
    invoke-virtual {v0, v5, v6}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_4
    move v4, v3

    .line 67
    :cond_5
    iget-object v1, p1, Lcom/oplus/camera/screen/c;->b:[I

    if-eqz v1, :cond_7

    const/4 v1, 0x3

    const/4 v5, 0x2

    if-eqz v4, :cond_6

    .line 69
    iget-object v4, p1, Lcom/oplus/camera/screen/c;->b:[I

    aget v4, v4, v3

    iget-object v6, p1, Lcom/oplus/camera/screen/c;->b:[I

    aget v6, v6, v2

    iget-object v7, p1, Lcom/oplus/camera/screen/c;->b:[I

    aget v7, v7, v5

    iget-object v8, p1, Lcom/oplus/camera/screen/c;->b:[I

    aget v1, v8, v1

    invoke-virtual {v0, v4, v6, v7, v1}, Landroid/widget/RelativeLayout$LayoutParams;->setMargins(IIII)V

    .line 70
    iget-object v1, p1, Lcom/oplus/camera/screen/c;->b:[I

    aget v1, v1, v3

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout$LayoutParams;->setMarginStart(I)V

    .line 71
    iget-object v1, p1, Lcom/oplus/camera/screen/c;->b:[I

    aget v1, v1, v5

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout$LayoutParams;->setMarginEnd(I)V

    goto :goto_2

    .line 73
    :cond_6
    iget-object v4, p1, Lcom/oplus/camera/screen/c;->b:[I

    aget v4, v4, v3

    iget-object v6, p1, Lcom/oplus/camera/screen/c;->b:[I

    aget v6, v6, v2

    iget-object v7, p1, Lcom/oplus/camera/screen/c;->b:[I

    aget v5, v7, v5

    iget-object v7, p1, Lcom/oplus/camera/screen/c;->b:[I

    aget v1, v7, v1

    invoke-virtual {v0, v4, v6, v5, v1}, Landroid/widget/RelativeLayout$LayoutParams;->setMargins(IIII)V

    const/high16 v1, -0x80000000

    .line 74
    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout$LayoutParams;->setMarginStart(I)V

    .line 75
    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout$LayoutParams;->setMarginEnd(I)V

    .line 79
    :cond_7
    :goto_2
    iget-object v1, p1, Lcom/oplus/camera/screen/c;->c:[I

    if-eqz v1, :cond_8

    .line 80
    iget-object v1, p1, Lcom/oplus/camera/screen/c;->c:[I

    aget v1, v1, v3

    iput v1, v0, Landroid/widget/RelativeLayout$LayoutParams;->width:I

    .line 81
    iget-object v1, p1, Lcom/oplus/camera/screen/c;->c:[I

    aget v1, v1, v2

    iput v1, v0, Landroid/widget/RelativeLayout$LayoutParams;->height:I

    .line 84
    :cond_8
    iget-object v0, p1, Lcom/oplus/camera/screen/c;->e:[I

    if-eqz v0, :cond_9

    .line 85
    iget-object v0, p1, Lcom/oplus/camera/screen/c;->e:[I

    aget v0, v0, v3

    int-to-float v0, v0

    invoke-virtual {p0, v0}, Landroid/view/View;->setPivotX(F)V

    .line 86
    iget-object v0, p1, Lcom/oplus/camera/screen/c;->e:[I

    aget v0, v0, v2

    int-to-float v0, v0

    invoke-virtual {p0, v0}, Landroid/view/View;->setPivotY(F)V

    .line 89
    :cond_9
    iget v0, p1, Lcom/oplus/camera/screen/c;->d:I

    int-to-float v0, v0

    invoke-virtual {p0, v0}, Landroid/view/View;->setRotation(F)V

    .line 91
    iget-object v0, p1, Lcom/oplus/camera/screen/c;->f:Lcom/oplus/camera/screen/c$a;

    if-eqz v0, :cond_a

    .line 92
    iget-object p1, p1, Lcom/oplus/camera/screen/c;->f:Lcom/oplus/camera/screen/c$a;

    invoke-interface {p1, p0}, Lcom/oplus/camera/screen/c$a;->call(Landroid/view/View;)V

    :cond_a
    return-void
.end method
