.class Landroidx/recyclerview/widget/n$1;
.super Landroidx/recyclerview/widget/n;
.source "OrientationHelper.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroidx/recyclerview/widget/n;->a(Landroidx/recyclerview/widget/RecyclerView$i;)Landroidx/recyclerview/widget/n;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# direct methods
.method constructor <init>(Landroidx/recyclerview/widget/RecyclerView$i;)V
    .locals 1

    const/4 v0, 0x0

    .line 258
    invoke-direct {p0, p1, v0}, Landroidx/recyclerview/widget/n;-><init>(Landroidx/recyclerview/widget/RecyclerView$i;Landroidx/recyclerview/widget/n$1;)V

    return-void
.end method


# virtual methods
.method public a(Landroid/view/View;)I
    .locals 1

    .line 305
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroidx/recyclerview/widget/RecyclerView$j;

    .line 306
    iget-object p0, p0, Landroidx/recyclerview/widget/n$1;->a:Landroidx/recyclerview/widget/RecyclerView$i;

    invoke-virtual {p0, p1}, Landroidx/recyclerview/widget/RecyclerView$i;->getDecoratedLeft(Landroid/view/View;)I

    move-result p0

    iget p1, v0, Landroidx/recyclerview/widget/RecyclerView$j;->leftMargin:I

    sub-int/2addr p0, p1

    return p0
.end method

.method public a(I)V
    .locals 0

    .line 271
    iget-object p0, p0, Landroidx/recyclerview/widget/n$1;->a:Landroidx/recyclerview/widget/RecyclerView$i;

    invoke-virtual {p0, p1}, Landroidx/recyclerview/widget/RecyclerView$i;->offsetChildrenHorizontal(I)V

    return-void
.end method

.method public b(Landroid/view/View;)I
    .locals 1

    .line 298
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroidx/recyclerview/widget/RecyclerView$j;

    .line 299
    iget-object p0, p0, Landroidx/recyclerview/widget/n$1;->a:Landroidx/recyclerview/widget/RecyclerView$i;

    invoke-virtual {p0, p1}, Landroidx/recyclerview/widget/RecyclerView$i;->getDecoratedRight(Landroid/view/View;)I

    move-result p0

    iget p1, v0, Landroidx/recyclerview/widget/RecyclerView$j;->rightMargin:I

    add-int/2addr p0, p1

    return p0
.end method

.method public c(Landroid/view/View;)I
    .locals 3

    .line 311
    iget-object v0, p0, Landroidx/recyclerview/widget/n$1;->a:Landroidx/recyclerview/widget/RecyclerView$i;

    iget-object v1, p0, Landroidx/recyclerview/widget/n$1;->b:Landroid/graphics/Rect;

    const/4 v2, 0x1

    invoke-virtual {v0, p1, v2, v1}, Landroidx/recyclerview/widget/RecyclerView$i;->getTransformedBoundingBox(Landroid/view/View;ZLandroid/graphics/Rect;)V

    .line 312
    iget-object p0, p0, Landroidx/recyclerview/widget/n$1;->b:Landroid/graphics/Rect;

    iget p0, p0, Landroid/graphics/Rect;->right:I

    return p0
.end method

.method public d()I
    .locals 0

    .line 276
    iget-object p0, p0, Landroidx/recyclerview/widget/n$1;->a:Landroidx/recyclerview/widget/RecyclerView$i;

    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView$i;->getPaddingLeft()I

    move-result p0

    return p0
.end method

.method public d(Landroid/view/View;)I
    .locals 3

    .line 317
    iget-object v0, p0, Landroidx/recyclerview/widget/n$1;->a:Landroidx/recyclerview/widget/RecyclerView$i;

    iget-object v1, p0, Landroidx/recyclerview/widget/n$1;->b:Landroid/graphics/Rect;

    const/4 v2, 0x1

    invoke-virtual {v0, p1, v2, v1}, Landroidx/recyclerview/widget/RecyclerView$i;->getTransformedBoundingBox(Landroid/view/View;ZLandroid/graphics/Rect;)V

    .line 318
    iget-object p0, p0, Landroidx/recyclerview/widget/n$1;->b:Landroid/graphics/Rect;

    iget p0, p0, Landroid/graphics/Rect;->left:I

    return p0
.end method

.method public e()I
    .locals 1

    .line 261
    iget-object v0, p0, Landroidx/recyclerview/widget/n$1;->a:Landroidx/recyclerview/widget/RecyclerView$i;

    invoke-virtual {v0}, Landroidx/recyclerview/widget/RecyclerView$i;->getWidth()I

    move-result v0

    iget-object p0, p0, Landroidx/recyclerview/widget/n$1;->a:Landroidx/recyclerview/widget/RecyclerView$i;

    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView$i;->getPaddingRight()I

    move-result p0

    sub-int/2addr v0, p0

    return v0
.end method

.method public e(Landroid/view/View;)I
    .locals 1

    .line 282
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroidx/recyclerview/widget/RecyclerView$j;

    .line 283
    iget-object p0, p0, Landroidx/recyclerview/widget/n$1;->a:Landroidx/recyclerview/widget/RecyclerView$i;

    invoke-virtual {p0, p1}, Landroidx/recyclerview/widget/RecyclerView$i;->getDecoratedMeasuredWidth(Landroid/view/View;)I

    move-result p0

    iget p1, v0, Landroidx/recyclerview/widget/RecyclerView$j;->leftMargin:I

    add-int/2addr p0, p1

    iget p1, v0, Landroidx/recyclerview/widget/RecyclerView$j;->rightMargin:I

    add-int/2addr p0, p1

    return p0
.end method

.method public f()I
    .locals 0

    .line 266
    iget-object p0, p0, Landroidx/recyclerview/widget/n$1;->a:Landroidx/recyclerview/widget/RecyclerView$i;

    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView$i;->getWidth()I

    move-result p0

    return p0
.end method

.method public f(Landroid/view/View;)I
    .locals 1

    .line 290
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroidx/recyclerview/widget/RecyclerView$j;

    .line 291
    iget-object p0, p0, Landroidx/recyclerview/widget/n$1;->a:Landroidx/recyclerview/widget/RecyclerView$i;

    invoke-virtual {p0, p1}, Landroidx/recyclerview/widget/RecyclerView$i;->getDecoratedMeasuredHeight(Landroid/view/View;)I

    move-result p0

    iget p1, v0, Landroidx/recyclerview/widget/RecyclerView$j;->topMargin:I

    add-int/2addr p0, p1

    iget p1, v0, Landroidx/recyclerview/widget/RecyclerView$j;->bottomMargin:I

    add-int/2addr p0, p1

    return p0
.end method

.method public g()I
    .locals 2

    .line 323
    iget-object v0, p0, Landroidx/recyclerview/widget/n$1;->a:Landroidx/recyclerview/widget/RecyclerView$i;

    invoke-virtual {v0}, Landroidx/recyclerview/widget/RecyclerView$i;->getWidth()I

    move-result v0

    iget-object v1, p0, Landroidx/recyclerview/widget/n$1;->a:Landroidx/recyclerview/widget/RecyclerView$i;

    invoke-virtual {v1}, Landroidx/recyclerview/widget/RecyclerView$i;->getPaddingLeft()I

    move-result v1

    sub-int/2addr v0, v1

    iget-object p0, p0, Landroidx/recyclerview/widget/n$1;->a:Landroidx/recyclerview/widget/RecyclerView$i;

    .line 324
    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView$i;->getPaddingRight()I

    move-result p0

    sub-int/2addr v0, p0

    return v0
.end method

.method public h()I
    .locals 0

    .line 334
    iget-object p0, p0, Landroidx/recyclerview/widget/n$1;->a:Landroidx/recyclerview/widget/RecyclerView$i;

    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView$i;->getPaddingRight()I

    move-result p0

    return p0
.end method

.method public i()I
    .locals 0

    .line 339
    iget-object p0, p0, Landroidx/recyclerview/widget/n$1;->a:Landroidx/recyclerview/widget/RecyclerView$i;

    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView$i;->getWidthMode()I

    move-result p0

    return p0
.end method

.method public j()I
    .locals 0

    .line 344
    iget-object p0, p0, Landroidx/recyclerview/widget/n$1;->a:Landroidx/recyclerview/widget/RecyclerView$i;

    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView$i;->getHeightMode()I

    move-result p0

    return p0
.end method
