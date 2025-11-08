.class public Lcom/oplus/camera/ui/MaskView;
.super Landroid/view/View;
.source "MaskView.java"

# interfaces
.implements Lcom/oplus/camera/ui/a$a;


# instance fields
.field private final a:Ljava/lang/String;

.field private b:Landroid/graphics/Paint;

.field private c:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .line 25
    invoke-direct {p0, p1}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    const-string p1, "MaskView"

    .line 20
    iput-object p1, p0, Lcom/oplus/camera/ui/MaskView;->a:Ljava/lang/String;

    const/4 p1, 0x0

    .line 21
    iput-object p1, p0, Lcom/oplus/camera/ui/MaskView;->b:Landroid/graphics/Paint;

    const/4 p1, 0x0

    .line 22
    iput-boolean p1, p0, Lcom/oplus/camera/ui/MaskView;->c:Z

    .line 26
    invoke-direct {p0}, Lcom/oplus/camera/ui/MaskView;->a()V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    .line 30
    invoke-direct {p0, p1, p2}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const-string p1, "MaskView"

    .line 20
    iput-object p1, p0, Lcom/oplus/camera/ui/MaskView;->a:Ljava/lang/String;

    const/4 p1, 0x0

    .line 21
    iput-object p1, p0, Lcom/oplus/camera/ui/MaskView;->b:Landroid/graphics/Paint;

    const/4 p1, 0x0

    .line 22
    iput-boolean p1, p0, Lcom/oplus/camera/ui/MaskView;->c:Z

    .line 31
    invoke-direct {p0}, Lcom/oplus/camera/ui/MaskView;->a()V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    .line 35
    invoke-direct {p0, p1, p2, p3}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    const-string p1, "MaskView"

    .line 20
    iput-object p1, p0, Lcom/oplus/camera/ui/MaskView;->a:Ljava/lang/String;

    const/4 p1, 0x0

    .line 21
    iput-object p1, p0, Lcom/oplus/camera/ui/MaskView;->b:Landroid/graphics/Paint;

    const/4 p1, 0x0

    .line 22
    iput-boolean p1, p0, Lcom/oplus/camera/ui/MaskView;->c:Z

    .line 36
    invoke-direct {p0}, Lcom/oplus/camera/ui/MaskView;->a()V

    return-void
.end method

.method private a()V
    .locals 3

    .line 40
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/oplus/camera/ui/MaskView;->b:Landroid/graphics/Paint;

    .line 41
    iget-object v0, p0, Lcom/oplus/camera/ui/MaskView;->b:Landroid/graphics/Paint;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 42
    iget-object v0, p0, Lcom/oplus/camera/ui/MaskView;->b:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 43
    iget-object v0, p0, Lcom/oplus/camera/ui/MaskView;->b:Landroid/graphics/Paint;

    const/high16 v1, 0x3f800000    # 1.0f

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 44
    iget-object v0, p0, Lcom/oplus/camera/ui/MaskView;->b:Landroid/graphics/Paint;

    invoke-virtual {p0}, Lcom/oplus/camera/ui/MaskView;->getContext()Landroid/content/Context;

    move-result-object v1

    const v2, 0x7f060021

    invoke-virtual {v1, v2}, Landroid/content/Context;->getColor(I)I

    move-result v1

    invoke-static {v1}, Lcom/oplus/camera/util/c;->a(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 45
    iget-object v0, p0, Lcom/oplus/camera/ui/MaskView;->b:Landroid/graphics/Paint;

    new-instance v1, Landroid/graphics/PorterDuffXfermode;

    sget-object v2, Landroid/graphics/PorterDuff$Mode;->SRC:Landroid/graphics/PorterDuff$Mode;

    invoke-direct {v1, v2}, Landroid/graphics/PorterDuffXfermode;-><init>(Landroid/graphics/PorterDuff$Mode;)V

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setXfermode(Landroid/graphics/Xfermode;)Landroid/graphics/Xfermode;

    .line 47
    invoke-virtual {p0}, Lcom/oplus/camera/ui/MaskView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/oplus/camera/ui/a;->a(Landroid/content/Context;)Lcom/oplus/camera/ui/a;

    move-result-object v0

    const-string v1, "MaskView"

    invoke-virtual {v0, p0, v1}, Lcom/oplus/camera/ui/a;->a(Lcom/oplus/camera/ui/a$a;Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public a(ZI)V
    .locals 0

    .line 67
    iput-boolean p1, p0, Lcom/oplus/camera/ui/MaskView;->c:Z

    .line 68
    invoke-virtual {p0}, Lcom/oplus/camera/ui/MaskView;->postInvalidate()V

    return-void
.end method

.method protected onDetachedFromWindow()V
    .locals 1

    .line 78
    invoke-virtual {p0}, Lcom/oplus/camera/ui/MaskView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/oplus/camera/ui/a;->a(Landroid/content/Context;)Lcom/oplus/camera/ui/a;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/oplus/camera/ui/a;->a(Lcom/oplus/camera/ui/a$a;)V

    .line 79
    invoke-super {p0}, Landroid/view/View;->onDetachedFromWindow()V

    return-void
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 5

    .line 52
    iget-boolean v0, p0, Lcom/oplus/camera/ui/MaskView;->c:Z

    if-eqz v0, :cond_1

    sget-object v0, Lcom/oplus/camera/ui/inverse/e;->INS:Lcom/oplus/camera/ui/inverse/e;

    invoke-virtual {p0}, Lcom/oplus/camera/ui/MaskView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/oplus/camera/ui/inverse/e;->isInverseColor(I)Z

    move-result v0

    if-nez v0, :cond_1

    .line 53
    invoke-virtual {p0}, Lcom/oplus/camera/ui/MaskView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/oplus/camera/ui/a;->a(Landroid/content/Context;)Lcom/oplus/camera/ui/a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/oplus/camera/ui/a;->b()I

    move-result v0

    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    return-void

    .line 59
    :cond_0
    new-instance v1, Landroid/graphics/RectF;

    invoke-virtual {p0}, Lcom/oplus/camera/ui/MaskView;->getLeft()I

    move-result v2

    int-to-float v2, v2

    int-to-float v0, v0

    invoke-virtual {p0}, Lcom/oplus/camera/ui/MaskView;->getRight()I

    move-result v3

    int-to-float v3, v3

    invoke-virtual {p0}, Lcom/oplus/camera/ui/MaskView;->getBottom()I

    move-result v4

    int-to-float v4, v4

    invoke-direct {v1, v2, v0, v3, v4}, Landroid/graphics/RectF;-><init>(FFFF)V

    .line 60
    iget-object v0, p0, Lcom/oplus/camera/ui/MaskView;->b:Landroid/graphics/Paint;

    invoke-virtual {p1, v1, v0}, Landroid/graphics/Canvas;->drawRect(Landroid/graphics/RectF;Landroid/graphics/Paint;)V

    .line 61
    invoke-virtual {p0}, Lcom/oplus/camera/ui/MaskView;->invalidate()V

    :cond_1
    return-void
.end method

.method public setNormalBackground(Z)V
    .locals 0

    return-void
.end method
