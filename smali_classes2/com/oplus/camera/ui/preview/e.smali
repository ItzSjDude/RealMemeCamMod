.class public Lcom/oplus/camera/ui/preview/e;
.super Landroid/widget/ImageView;
.source "BlurCoverBg.java"


# instance fields
.field private a:I

.field private b:I

.field private c:I

.field private d:Landroid/graphics/Paint;

.field private e:Landroid/graphics/Rect;

.field private f:Landroid/graphics/Rect;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .line 23
    invoke-direct {p0, p1}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    const/4 p1, 0x0

    .line 15
    iput p1, p0, Lcom/oplus/camera/ui/preview/e;->a:I

    .line 16
    iput p1, p0, Lcom/oplus/camera/ui/preview/e;->b:I

    .line 17
    iput p1, p0, Lcom/oplus/camera/ui/preview/e;->c:I

    const/4 p1, 0x0

    .line 18
    iput-object p1, p0, Lcom/oplus/camera/ui/preview/e;->d:Landroid/graphics/Paint;

    .line 19
    iput-object p1, p0, Lcom/oplus/camera/ui/preview/e;->e:Landroid/graphics/Rect;

    .line 20
    iput-object p1, p0, Lcom/oplus/camera/ui/preview/e;->f:Landroid/graphics/Rect;

    return-void
.end method


# virtual methods
.method public a(II)V
    .locals 1

    .line 59
    invoke-static {}, Lcom/oplus/camera/util/Util;->N()I

    move-result v0

    add-int/2addr v0, p1

    iput v0, p0, Lcom/oplus/camera/ui/preview/e;->a:I

    .line 60
    iget p1, p0, Lcom/oplus/camera/ui/preview/e;->a:I

    add-int/2addr p1, p2

    iput p1, p0, Lcom/oplus/camera/ui/preview/e;->b:I

    return-void
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 5

    .line 36
    iget-object v0, p0, Lcom/oplus/camera/ui/preview/e;->d:Landroid/graphics/Paint;

    if-nez v0, :cond_0

    .line 37
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/oplus/camera/ui/preview/e;->d:Landroid/graphics/Paint;

    .line 40
    :cond_0
    iget-object v0, p0, Lcom/oplus/camera/ui/preview/e;->d:Landroid/graphics/Paint;

    iget v1, p0, Lcom/oplus/camera/ui/preview/e;->c:I

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 42
    iget-object v0, p0, Lcom/oplus/camera/ui/preview/e;->e:Landroid/graphics/Rect;

    const/4 v1, 0x0

    if-nez v0, :cond_1

    .line 43
    new-instance v0, Landroid/graphics/Rect;

    invoke-virtual {p0}, Lcom/oplus/camera/ui/preview/e;->getWidth()I

    move-result v2

    iget v3, p0, Lcom/oplus/camera/ui/preview/e;->a:I

    invoke-direct {v0, v1, v1, v2, v3}, Landroid/graphics/Rect;-><init>(IIII)V

    iput-object v0, p0, Lcom/oplus/camera/ui/preview/e;->e:Landroid/graphics/Rect;

    goto :goto_0

    .line 45
    :cond_1
    invoke-virtual {p0}, Lcom/oplus/camera/ui/preview/e;->getWidth()I

    move-result v2

    iget v3, p0, Lcom/oplus/camera/ui/preview/e;->a:I

    invoke-virtual {v0, v1, v1, v2, v3}, Landroid/graphics/Rect;->set(IIII)V

    .line 48
    :goto_0
    iget-object v0, p0, Lcom/oplus/camera/ui/preview/e;->f:Landroid/graphics/Rect;

    if-nez v0, :cond_2

    .line 49
    new-instance v0, Landroid/graphics/Rect;

    iget v2, p0, Lcom/oplus/camera/ui/preview/e;->b:I

    invoke-virtual {p0}, Lcom/oplus/camera/ui/preview/e;->getWidth()I

    move-result v3

    invoke-virtual {p0}, Lcom/oplus/camera/ui/preview/e;->getHeight()I

    move-result v4

    invoke-direct {v0, v1, v2, v3, v4}, Landroid/graphics/Rect;-><init>(IIII)V

    iput-object v0, p0, Lcom/oplus/camera/ui/preview/e;->f:Landroid/graphics/Rect;

    goto :goto_1

    .line 51
    :cond_2
    iget v2, p0, Lcom/oplus/camera/ui/preview/e;->b:I

    invoke-virtual {p0}, Lcom/oplus/camera/ui/preview/e;->getWidth()I

    move-result v3

    invoke-virtual {p0}, Lcom/oplus/camera/ui/preview/e;->getHeight()I

    move-result v4

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/graphics/Rect;->set(IIII)V

    .line 54
    :goto_1
    iget-object v0, p0, Lcom/oplus/camera/ui/preview/e;->e:Landroid/graphics/Rect;

    iget-object v1, p0, Lcom/oplus/camera/ui/preview/e;->d:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v1}, Landroid/graphics/Canvas;->drawRect(Landroid/graphics/Rect;Landroid/graphics/Paint;)V

    .line 55
    iget-object v0, p0, Lcom/oplus/camera/ui/preview/e;->f:Landroid/graphics/Rect;

    iget-object p0, p0, Lcom/oplus/camera/ui/preview/e;->d:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, p0}, Landroid/graphics/Canvas;->drawRect(Landroid/graphics/Rect;Landroid/graphics/Paint;)V

    return-void
.end method

.method public setDrawColor(I)V
    .locals 0

    .line 64
    iput p1, p0, Lcom/oplus/camera/ui/preview/e;->c:I

    return-void
.end method
