.class final Lcom/coui/appcompat/widget/COUILockPatternView$PatternExploreByTouchHelper;
.super Landroidx/customview/a/a;
.source "COUILockPatternView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/coui/appcompat/widget/COUILockPatternView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "PatternExploreByTouchHelper"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/coui/appcompat/widget/COUILockPatternView$PatternExploreByTouchHelper$VirtualViewContainer;
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/coui/appcompat/widget/COUILockPatternView;

.field private b:Landroid/graphics/Rect;

.field private final c:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Lcom/coui/appcompat/widget/COUILockPatternView$PatternExploreByTouchHelper$VirtualViewContainer;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method private a(FF)I
    .locals 2

    .line 1650
    iget-object v0, p0, Lcom/coui/appcompat/widget/COUILockPatternView$PatternExploreByTouchHelper;->a:Lcom/coui/appcompat/widget/COUILockPatternView;

    invoke-static {v0, p2}, Lcom/coui/appcompat/widget/COUILockPatternView;->b(Lcom/coui/appcompat/widget/COUILockPatternView;F)I

    move-result p2

    const/high16 v0, -0x80000000

    if-gez p2, :cond_0

    return v0

    .line 1654
    :cond_0
    iget-object v1, p0, Lcom/coui/appcompat/widget/COUILockPatternView$PatternExploreByTouchHelper;->a:Lcom/coui/appcompat/widget/COUILockPatternView;

    invoke-static {v1, p1}, Lcom/coui/appcompat/widget/COUILockPatternView;->c(Lcom/coui/appcompat/widget/COUILockPatternView;F)I

    move-result p1

    if-gez p1, :cond_1

    return v0

    .line 1658
    :cond_1
    iget-object p0, p0, Lcom/coui/appcompat/widget/COUILockPatternView$PatternExploreByTouchHelper;->a:Lcom/coui/appcompat/widget/COUILockPatternView;

    invoke-static {p0}, Lcom/coui/appcompat/widget/COUILockPatternView;->g(Lcom/coui/appcompat/widget/COUILockPatternView;)[[Z

    move-result-object p0

    aget-object p0, p0, p2

    aget-boolean p0, p0, p1

    mul-int/lit8 p2, p2, 0x3

    add-int/2addr p2, p1

    add-int/lit8 p1, p2, 0x1

    if-eqz p0, :cond_2

    goto :goto_0

    :cond_2
    move p1, v0

    :goto_0
    return p1
.end method

.method private b(I)Z
    .locals 1

    const/high16 v0, -0x80000000

    if-eq p1, v0, :cond_0

    const v0, 0x7fffffff

    if-eq p1, v0, :cond_0

    add-int/lit8 p1, p1, -0x1

    .line 1575
    div-int/lit8 v0, p1, 0x3

    .line 1576
    rem-int/lit8 p1, p1, 0x3

    .line 1577
    iget-object p0, p0, Lcom/coui/appcompat/widget/COUILockPatternView$PatternExploreByTouchHelper;->a:Lcom/coui/appcompat/widget/COUILockPatternView;

    invoke-static {p0}, Lcom/coui/appcompat/widget/COUILockPatternView;->g(Lcom/coui/appcompat/widget/COUILockPatternView;)[[Z

    move-result-object p0

    aget-object p0, p0, v0

    aget-boolean p0, p0, p1

    xor-int/lit8 p0, p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method private c(I)Landroid/graphics/Rect;
    .locals 5

    add-int/lit8 p1, p1, -0x1

    .line 1620
    iget-object v0, p0, Lcom/coui/appcompat/widget/COUILockPatternView$PatternExploreByTouchHelper;->b:Landroid/graphics/Rect;

    .line 1621
    div-int/lit8 v1, p1, 0x3

    .line 1622
    rem-int/lit8 p1, p1, 0x3

    .line 1623
    iget-object v2, p0, Lcom/coui/appcompat/widget/COUILockPatternView$PatternExploreByTouchHelper;->a:Lcom/coui/appcompat/widget/COUILockPatternView;

    invoke-static {v2, p1}, Lcom/coui/appcompat/widget/COUILockPatternView;->a(Lcom/coui/appcompat/widget/COUILockPatternView;I)F

    move-result p1

    .line 1624
    iget-object v2, p0, Lcom/coui/appcompat/widget/COUILockPatternView$PatternExploreByTouchHelper;->a:Lcom/coui/appcompat/widget/COUILockPatternView;

    invoke-static {v2, v1}, Lcom/coui/appcompat/widget/COUILockPatternView;->b(Lcom/coui/appcompat/widget/COUILockPatternView;I)F

    move-result v1

    .line 1625
    iget-object v2, p0, Lcom/coui/appcompat/widget/COUILockPatternView$PatternExploreByTouchHelper;->a:Lcom/coui/appcompat/widget/COUILockPatternView;

    invoke-static {v2}, Lcom/coui/appcompat/widget/COUILockPatternView;->h(Lcom/coui/appcompat/widget/COUILockPatternView;)F

    move-result v2

    iget-object v3, p0, Lcom/coui/appcompat/widget/COUILockPatternView$PatternExploreByTouchHelper;->a:Lcom/coui/appcompat/widget/COUILockPatternView;

    invoke-static {v3}, Lcom/coui/appcompat/widget/COUILockPatternView;->i(Lcom/coui/appcompat/widget/COUILockPatternView;)F

    move-result v3

    mul-float/2addr v2, v3

    const/high16 v3, 0x3f000000    # 0.5f

    mul-float/2addr v2, v3

    .line 1626
    iget-object v4, p0, Lcom/coui/appcompat/widget/COUILockPatternView$PatternExploreByTouchHelper;->a:Lcom/coui/appcompat/widget/COUILockPatternView;

    invoke-static {v4}, Lcom/coui/appcompat/widget/COUILockPatternView;->j(Lcom/coui/appcompat/widget/COUILockPatternView;)F

    move-result v4

    iget-object p0, p0, Lcom/coui/appcompat/widget/COUILockPatternView$PatternExploreByTouchHelper;->a:Lcom/coui/appcompat/widget/COUILockPatternView;

    invoke-static {p0}, Lcom/coui/appcompat/widget/COUILockPatternView;->i(Lcom/coui/appcompat/widget/COUILockPatternView;)F

    move-result p0

    mul-float/2addr v4, p0

    mul-float/2addr v4, v3

    sub-float p0, p1, v4

    float-to-int p0, p0

    .line 1627
    iput p0, v0, Landroid/graphics/Rect;->left:I

    add-float/2addr p1, v4

    float-to-int p0, p1

    .line 1628
    iput p0, v0, Landroid/graphics/Rect;->right:I

    sub-float p0, v1, v2

    float-to-int p0, p0

    .line 1629
    iput p0, v0, Landroid/graphics/Rect;->top:I

    add-float/2addr v1, v2

    float-to-int p0, v1

    .line 1630
    iput p0, v0, Landroid/graphics/Rect;->bottom:I

    return-object v0
.end method

.method private d(I)Ljava/lang/CharSequence;
    .locals 3

    .line 1635
    iget-object p0, p0, Lcom/coui/appcompat/widget/COUILockPatternView$PatternExploreByTouchHelper;->a:Lcom/coui/appcompat/widget/COUILockPatternView;

    invoke-virtual {p0}, Lcom/coui/appcompat/widget/COUILockPatternView;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    .line 1636
    sget v0, Lcoui/support/appcompat/R$string;->lockscreen_access_pattern_cell_added_verbose:I

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    .line 1637
    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p1

    const/4 v2, 0x0

    aput-object p1, v1, v2

    .line 1636
    invoke-virtual {p0, v0, v1}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method a(I)Z
    .locals 1

    .line 1608
    invoke-virtual {p0, p1}, Lcom/coui/appcompat/widget/COUILockPatternView$PatternExploreByTouchHelper;->invalidateVirtualView(I)V

    const/4 v0, 0x1

    .line 1613
    invoke-virtual {p0, p1, v0}, Lcom/coui/appcompat/widget/COUILockPatternView$PatternExploreByTouchHelper;->sendEventForVirtualView(II)Z

    return v0
.end method

.method protected getVirtualViewAt(FF)I
    .locals 0

    .line 1510
    invoke-direct {p0, p1, p2}, Lcom/coui/appcompat/widget/COUILockPatternView$PatternExploreByTouchHelper;->a(FF)I

    move-result p0

    return p0
.end method

.method protected getVisibleVirtualViews(Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;)V"
        }
    .end annotation

    .line 1517
    iget-object p0, p0, Lcom/coui/appcompat/widget/COUILockPatternView$PatternExploreByTouchHelper;->a:Lcom/coui/appcompat/widget/COUILockPatternView;

    invoke-static {p0}, Lcom/coui/appcompat/widget/COUILockPatternView;->f(Lcom/coui/appcompat/widget/COUILockPatternView;)Z

    move-result p0

    if-nez p0, :cond_0

    return-void

    :cond_0
    const/4 p0, 0x1

    :goto_0
    const/16 v0, 0xa

    if-ge p0, v0, :cond_1

    .line 1523
    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 p0, p0, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method protected onPerformActionForVirtualView(IILandroid/os/Bundle;)Z
    .locals 0

    const/16 p3, 0x10

    if-eq p2, p3, :cond_0

    const/4 p0, 0x0

    return p0

    .line 1592
    :cond_0
    invoke-virtual {p0, p1}, Lcom/coui/appcompat/widget/COUILockPatternView$PatternExploreByTouchHelper;->a(I)Z

    move-result p0

    return p0
.end method

.method public onPopulateAccessibilityEvent(Landroid/view/View;Landroid/view/accessibility/AccessibilityEvent;)V
    .locals 0

    .line 1564
    invoke-super {p0, p1, p2}, Landroidx/customview/a/a;->onPopulateAccessibilityEvent(Landroid/view/View;Landroid/view/accessibility/AccessibilityEvent;)V

    .line 1565
    iget-object p1, p0, Lcom/coui/appcompat/widget/COUILockPatternView$PatternExploreByTouchHelper;->a:Lcom/coui/appcompat/widget/COUILockPatternView;

    invoke-static {p1}, Lcom/coui/appcompat/widget/COUILockPatternView;->f(Lcom/coui/appcompat/widget/COUILockPatternView;)Z

    move-result p1

    if-nez p1, :cond_0

    .line 1566
    iget-object p0, p0, Lcom/coui/appcompat/widget/COUILockPatternView$PatternExploreByTouchHelper;->a:Lcom/coui/appcompat/widget/COUILockPatternView;

    invoke-virtual {p0}, Lcom/coui/appcompat/widget/COUILockPatternView;->getContext()Landroid/content/Context;

    move-result-object p0

    sget p1, Lcoui/support/appcompat/R$string;->lockscreen_access_pattern_area:I

    invoke-virtual {p0, p1}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object p0

    .line 1568
    invoke-virtual {p2, p0}, Landroid/view/accessibility/AccessibilityEvent;->setContentDescription(Ljava/lang/CharSequence;)V

    :cond_0
    return-void
.end method

.method protected onPopulateEventForVirtualView(ILandroid/view/accessibility/AccessibilityEvent;)V
    .locals 0

    .line 1531
    iget-object p0, p0, Lcom/coui/appcompat/widget/COUILockPatternView$PatternExploreByTouchHelper;->c:Landroid/util/SparseArray;

    invoke-virtual {p0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/coui/appcompat/widget/COUILockPatternView$PatternExploreByTouchHelper$VirtualViewContainer;

    if-eqz p0, :cond_0

    .line 1533
    invoke-virtual {p2}, Landroid/view/accessibility/AccessibilityEvent;->getText()Ljava/util/List;

    move-result-object p1

    iget-object p0, p0, Lcom/coui/appcompat/widget/COUILockPatternView$PatternExploreByTouchHelper$VirtualViewContainer;->a:Ljava/lang/CharSequence;

    invoke-interface {p1, p0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_0
    return-void
.end method

.method protected onPopulateNodeForVirtualView(ILandroidx/core/h/a/d;)V
    .locals 1

    .line 1543
    invoke-direct {p0, p1}, Lcom/coui/appcompat/widget/COUILockPatternView$PatternExploreByTouchHelper;->d(I)Ljava/lang/CharSequence;

    move-result-object v0

    invoke-virtual {p2, v0}, Landroidx/core/h/a/d;->c(Ljava/lang/CharSequence;)V

    .line 1544
    invoke-direct {p0, p1}, Lcom/coui/appcompat/widget/COUILockPatternView$PatternExploreByTouchHelper;->d(I)Ljava/lang/CharSequence;

    move-result-object v0

    invoke-virtual {p2, v0}, Landroidx/core/h/a/d;->e(Ljava/lang/CharSequence;)V

    .line 1546
    iget-object v0, p0, Lcom/coui/appcompat/widget/COUILockPatternView$PatternExploreByTouchHelper;->a:Lcom/coui/appcompat/widget/COUILockPatternView;

    invoke-static {v0}, Lcom/coui/appcompat/widget/COUILockPatternView;->f(Lcom/coui/appcompat/widget/COUILockPatternView;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    .line 1547
    invoke-virtual {p2, v0}, Landroidx/core/h/a/d;->c(Z)V

    .line 1549
    invoke-direct {p0, p1}, Lcom/coui/appcompat/widget/COUILockPatternView$PatternExploreByTouchHelper;->b(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1551
    sget-object v0, Landroidx/core/h/a/d$a;->e:Landroidx/core/h/a/d$a;

    invoke-virtual {p2, v0}, Landroidx/core/h/a/d;->a(Landroidx/core/h/a/d$a;)V

    .line 1552
    invoke-direct {p0, p1}, Lcom/coui/appcompat/widget/COUILockPatternView$PatternExploreByTouchHelper;->b(I)Z

    move-result v0

    invoke-virtual {p2, v0}, Landroidx/core/h/a/d;->g(Z)V

    .line 1557
    :cond_0
    invoke-direct {p0, p1}, Lcom/coui/appcompat/widget/COUILockPatternView$PatternExploreByTouchHelper;->c(I)Landroid/graphics/Rect;

    move-result-object p0

    .line 1559
    invoke-virtual {p2, p0}, Landroidx/core/h/a/d;->b(Landroid/graphics/Rect;)V

    return-void
.end method
