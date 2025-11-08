.class public Lcom/coui/appcompat/widget/floatingbutton/b;
.super Landroid/view/animation/ScaleAnimation;
.source "COUIFloatingButtonTouchAnimation.java"


# instance fields
.field private a:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation
.end field

.field private final b:F

.field private final c:F

.field private d:F

.field private e:F

.field private f:I


# direct methods
.method public constructor <init>(FFFF)V
    .locals 7

    move-object v0, p0

    move v1, p1

    move v2, p2

    move v3, p1

    move v4, p2

    move v5, p3

    move v6, p4

    .line 32
    invoke-direct/range {v0 .. v6}, Landroid/view/animation/ScaleAnimation;-><init>(FFFFFF)V

    const/4 p3, 0x0

    .line 29
    iput p3, p0, Lcom/coui/appcompat/widget/floatingbutton/b;->f:I

    .line 33
    iput p1, p0, Lcom/coui/appcompat/widget/floatingbutton/b;->b:F

    .line 34
    iput p2, p0, Lcom/coui/appcompat/widget/floatingbutton/b;->c:F

    return-void
.end method

.method private a(F)F
    .locals 3

    .line 60
    iget v0, p0, Lcom/coui/appcompat/widget/floatingbutton/b;->b:F

    iget p0, p0, Lcom/coui/appcompat/widget/floatingbutton/b;->c:F

    cmpl-float v1, v0, p0

    const/high16 v2, 0x3f800000    # 1.0f

    if-lez v1, :cond_0

    const p0, -0x41b33334    # -0.19999999f

    mul-float/2addr p1, p0

    add-float/2addr v2, p1

    goto :goto_0

    :cond_0
    cmpg-float p0, v0, p0

    if-gez p0, :cond_1

    const p0, 0x3f4ccccd    # 0.8f

    const v0, 0x3e4ccccc    # 0.19999999f

    mul-float/2addr p1, v0

    add-float v2, p1, p0

    :cond_1
    :goto_0
    return v2
.end method

.method private a(IF)I
    .locals 2

    const/4 p0, 0x3

    .line 69
    new-array p0, p0, [F

    .line 70
    invoke-static {p1, p0}, Landroidx/core/graphics/d;->a(I[F)V

    const/4 p1, 0x2

    .line 71
    aget v0, p0, p1

    mul-float/2addr v0, p2

    aput v0, p0, p1

    .line 72
    invoke-static {p0}, Landroidx/core/graphics/d;->a([F)I

    move-result p0

    .line 73
    invoke-static {p0}, Landroid/graphics/Color;->red(I)I

    move-result p1

    const/16 p2, 0xff

    invoke-static {p2, p1}, Ljava/lang/Math;->min(II)I

    move-result p1

    .line 74
    invoke-static {p0}, Landroid/graphics/Color;->green(I)I

    move-result v0

    invoke-static {p2, v0}, Ljava/lang/Math;->min(II)I

    move-result v0

    .line 75
    invoke-static {p0}, Landroid/graphics/Color;->blue(I)I

    move-result v1

    invoke-static {p2, v1}, Ljava/lang/Math;->min(II)I

    move-result p2

    .line 76
    invoke-static {p0}, Landroid/graphics/Color;->alpha(I)I

    move-result p0

    .line 77
    invoke-static {p0, p1, v0, p2}, Landroid/graphics/Color;->argb(IIII)I

    move-result p0

    return p0
.end method


# virtual methods
.method public a(Landroid/view/View;)V
    .locals 1

    .line 81
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/coui/appcompat/widget/floatingbutton/b;->a:Ljava/lang/ref/WeakReference;

    return-void
.end method

.method protected applyTransformation(FLandroid/view/animation/Transformation;)V
    .locals 2

    .line 39
    invoke-super {p0, p1, p2}, Landroid/view/animation/ScaleAnimation;->applyTransformation(FLandroid/view/animation/Transformation;)V

    .line 40
    iget p2, p0, Lcom/coui/appcompat/widget/floatingbutton/b;->b:F

    iget v0, p0, Lcom/coui/appcompat/widget/floatingbutton/b;->c:F

    sub-float/2addr v0, p2

    mul-float/2addr v0, p1

    add-float/2addr p2, v0

    iput p2, p0, Lcom/coui/appcompat/widget/floatingbutton/b;->d:F

    .line 41
    iget-object p2, p0, Lcom/coui/appcompat/widget/floatingbutton/b;->a:Ljava/lang/ref/WeakReference;

    if-eqz p2, :cond_2

    .line 42
    invoke-virtual {p2}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Landroid/view/View;

    .line 44
    invoke-virtual {p2}, Landroid/view/View;->getBackgroundTintList()Landroid/content/res/ColorStateList;

    move-result-object v0

    const/high16 v1, -0x80000000

    if-eqz v0, :cond_0

    .line 46
    invoke-virtual {v0}, Landroid/content/res/ColorStateList;->getDefaultColor()I

    move-result v0

    goto :goto_0

    .line 47
    :cond_0
    invoke-virtual {p2}, Landroid/view/View;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    instance-of v0, v0, Landroid/graphics/drawable/ColorDrawable;

    if-eqz v0, :cond_1

    .line 48
    invoke-virtual {p2}, Landroid/view/View;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    check-cast v0, Landroid/graphics/drawable/ColorDrawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/ColorDrawable;->getColor()I

    move-result v0

    goto :goto_0

    :cond_1
    move v0, v1

    :goto_0
    if-eq v0, v1, :cond_2

    .line 51
    invoke-direct {p0, p1}, Lcom/coui/appcompat/widget/floatingbutton/b;->a(F)F

    move-result p1

    iput p1, p0, Lcom/coui/appcompat/widget/floatingbutton/b;->e:F

    .line 52
    iget p1, p0, Lcom/coui/appcompat/widget/floatingbutton/b;->e:F

    invoke-direct {p0, v0, p1}, Lcom/coui/appcompat/widget/floatingbutton/b;->a(IF)I

    move-result p1

    iput p1, p0, Lcom/coui/appcompat/widget/floatingbutton/b;->f:I

    .line 53
    invoke-virtual {p2}, Landroid/view/View;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object p1

    iget p0, p0, Lcom/coui/appcompat/widget/floatingbutton/b;->f:I

    invoke-virtual {p1, p0}, Landroid/graphics/drawable/Drawable;->setTint(I)V

    :cond_2
    return-void
.end method

.method public getBackgroundColor()I
    .locals 0

    .line 89
    iget p0, p0, Lcom/coui/appcompat/widget/floatingbutton/b;->f:I

    return p0
.end method
