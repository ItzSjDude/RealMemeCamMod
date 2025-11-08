.class public Lcom/oplus/camera/ui/inverse/InverseMakeupItemView;
.super Lcom/oplus/camera/ui/inverse/InverseImageView;
.source "InverseMakeupItemView.java"


# instance fields
.field private a:I

.field private b:Landroid/graphics/Bitmap;

.field private c:Landroid/graphics/Paint;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    .line 25
    invoke-direct {p0, p1, v0}, Lcom/oplus/camera/ui/inverse/InverseMakeupItemView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    const/4 v0, 0x0

    .line 29
    invoke-direct {p0, p1, p2, v0}, Lcom/oplus/camera/ui/inverse/InverseMakeupItemView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    .line 33
    invoke-direct {p0, p1, p2, p3}, Lcom/oplus/camera/ui/inverse/InverseImageView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    const/4 p1, 0x0

    .line 20
    iput p1, p0, Lcom/oplus/camera/ui/inverse/InverseMakeupItemView;->a:I

    const/4 p1, 0x0

    .line 21
    iput-object p1, p0, Lcom/oplus/camera/ui/inverse/InverseMakeupItemView;->b:Landroid/graphics/Bitmap;

    .line 22
    iput-object p1, p0, Lcom/oplus/camera/ui/inverse/InverseMakeupItemView;->c:Landroid/graphics/Paint;

    return-void
.end method


# virtual methods
.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 3

    .line 60
    invoke-super {p0, p1}, Lcom/oplus/camera/ui/inverse/InverseImageView;->onDraw(Landroid/graphics/Canvas;)V

    .line 62
    iget v0, p0, Lcom/oplus/camera/ui/inverse/InverseMakeupItemView;->a:I

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/oplus/camera/ui/inverse/InverseMakeupItemView;->b:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_0

    .line 63
    invoke-virtual {p0}, Lcom/oplus/camera/ui/inverse/InverseMakeupItemView;->getPaddingStart()I

    move-result v1

    int-to-float v1, v1

    invoke-virtual {p0}, Lcom/oplus/camera/ui/inverse/InverseMakeupItemView;->getPaddingEnd()I

    move-result v2

    int-to-float v2, v2

    iget-object p0, p0, Lcom/oplus/camera/ui/inverse/InverseMakeupItemView;->c:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v1, v2, p0}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    :cond_0
    return-void
.end method

.method public setCornerMark(I)V
    .locals 2

    .line 37
    iput p1, p0, Lcom/oplus/camera/ui/inverse/InverseMakeupItemView;->a:I

    .line 39
    iget p1, p0, Lcom/oplus/camera/ui/inverse/InverseMakeupItemView;->a:I

    if-eqz p1, :cond_4

    .line 40
    invoke-static {}, Lcom/oplus/camera/util/Util;->aq()Z

    move-result p1

    const/4 v0, 0x2

    const/4 v1, 0x1

    if-eqz p1, :cond_1

    .line 41
    iget p1, p0, Lcom/oplus/camera/ui/inverse/InverseMakeupItemView;->a:I

    if-ne v1, p1, :cond_0

    const p1, 0x7f0804e2

    .line 42
    invoke-static {p1}, Lcom/oplus/camera/util/Util;->n(I)Landroid/graphics/Bitmap;

    move-result-object p1

    iput-object p1, p0, Lcom/oplus/camera/ui/inverse/InverseMakeupItemView;->b:Landroid/graphics/Bitmap;

    goto :goto_0

    :cond_0
    if-ne v0, p1, :cond_3

    const p1, 0x7f0804e0

    .line 44
    invoke-static {p1}, Lcom/oplus/camera/util/Util;->n(I)Landroid/graphics/Bitmap;

    move-result-object p1

    iput-object p1, p0, Lcom/oplus/camera/ui/inverse/InverseMakeupItemView;->b:Landroid/graphics/Bitmap;

    goto :goto_0

    .line 47
    :cond_1
    iget p1, p0, Lcom/oplus/camera/ui/inverse/InverseMakeupItemView;->a:I

    if-ne v1, p1, :cond_2

    const p1, 0x7f0804e3

    .line 48
    invoke-static {p1}, Lcom/oplus/camera/util/Util;->n(I)Landroid/graphics/Bitmap;

    move-result-object p1

    iput-object p1, p0, Lcom/oplus/camera/ui/inverse/InverseMakeupItemView;->b:Landroid/graphics/Bitmap;

    goto :goto_0

    :cond_2
    if-ne v0, p1, :cond_3

    const p1, 0x7f0804e1

    .line 50
    invoke-static {p1}, Lcom/oplus/camera/util/Util;->n(I)Landroid/graphics/Bitmap;

    move-result-object p1

    iput-object p1, p0, Lcom/oplus/camera/ui/inverse/InverseMakeupItemView;->b:Landroid/graphics/Bitmap;

    .line 54
    :cond_3
    :goto_0
    new-instance p1, Landroid/graphics/Paint;

    invoke-direct {p1}, Landroid/graphics/Paint;-><init>()V

    iput-object p1, p0, Lcom/oplus/camera/ui/inverse/InverseMakeupItemView;->c:Landroid/graphics/Paint;

    :cond_4
    return-void
.end method
