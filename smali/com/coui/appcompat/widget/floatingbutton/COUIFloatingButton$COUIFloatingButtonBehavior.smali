.class public Lcom/coui/appcompat/widget/floatingbutton/COUIFloatingButton$COUIFloatingButtonBehavior;
.super Landroidx/coordinatorlayout/widget/CoordinatorLayout$b;
.source "COUIFloatingButton.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/coui/appcompat/widget/floatingbutton/COUIFloatingButton;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "COUIFloatingButtonBehavior"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroidx/coordinatorlayout/widget/CoordinatorLayout$b<",
        "Landroid/view/View;",
        ">;"
    }
.end annotation


# instance fields
.field private a:Landroid/graphics/Rect;

.field private b:Lcom/google/android/material/floatingactionbutton/FloatingActionButton$OnVisibilityChangedListener;

.field private c:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1441
    invoke-direct {p0}, Landroidx/coordinatorlayout/widget/CoordinatorLayout$b;-><init>()V

    const/4 v0, 0x1

    .line 1442
    iput-boolean v0, p0, Lcom/coui/appcompat/widget/floatingbutton/COUIFloatingButton$COUIFloatingButtonBehavior;->c:Z

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    .line 1446
    invoke-direct {p0, p1, p2}, Landroidx/coordinatorlayout/widget/CoordinatorLayout$b;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 1447
    sget-object v0, Lcoui/support/appcompat/R$styleable;->FloatingActionButton_Behavior_Layout:[I

    invoke-virtual {p1, p2, v0}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object p1

    .line 1449
    sget p2, Lcoui/support/appcompat/R$styleable;->FloatingActionButton_Behavior_Layout_behavior_autoHide:I

    const/4 v0, 0x1

    invoke-virtual {p1, p2, v0}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result p2

    iput-boolean p2, p0, Lcom/coui/appcompat/widget/floatingbutton/COUIFloatingButton$COUIFloatingButtonBehavior;->c:Z

    .line 1452
    invoke-virtual {p1}, Landroid/content/res/TypedArray;->recycle()V

    return-void
.end method

.method private a(Lcom/google/android/material/appbar/AppBarLayout;)I
    .locals 1

    .line 1600
    invoke-static {p1}, Landroidx/core/h/v;->m(Landroid/view/View;)I

    move-result p0

    if-eqz p0, :cond_0

    mul-int/lit8 p0, p0, 0x2

    return p0

    .line 1604
    :cond_0
    invoke-virtual {p1}, Lcom/google/android/material/appbar/AppBarLayout;->getChildCount()I

    move-result p0

    const/4 v0, 0x1

    if-lt p0, v0, :cond_1

    sub-int/2addr p0, v0

    .line 1605
    invoke-virtual {p1, p0}, Lcom/google/android/material/appbar/AppBarLayout;->getChildAt(I)Landroid/view/View;

    move-result-object p0

    invoke-static {p0}, Landroidx/core/h/v;->m(Landroid/view/View;)I

    move-result p0

    mul-int/lit8 p0, p0, 0x2

    goto :goto_0

    :cond_1
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method private a(Landroid/view/View;Landroid/view/View;)Z
    .locals 2

    .line 1557
    invoke-virtual {p2}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroidx/coordinatorlayout/widget/CoordinatorLayout$e;

    .line 1558
    iget-boolean p0, p0, Lcom/coui/appcompat/widget/floatingbutton/COUIFloatingButton$COUIFloatingButtonBehavior;->c:Z

    const/4 v1, 0x0

    if-nez p0, :cond_0

    return v1

    .line 1562
    :cond_0
    invoke-virtual {v0}, Landroidx/coordinatorlayout/widget/CoordinatorLayout$e;->a()I

    move-result p0

    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result p1

    if-eq p0, p1, :cond_1

    return v1

    .line 1570
    :cond_1
    invoke-virtual {p2}, Landroid/view/View;->getVisibility()I

    move-result p0

    if-nez p0, :cond_2

    const/4 v1, 0x1

    :cond_2
    return v1
.end method

.method private a(Landroidx/coordinatorlayout/widget/CoordinatorLayout;Lcom/google/android/material/appbar/AppBarLayout;Landroid/view/View;)Z
    .locals 2

    .line 1575
    invoke-direct {p0, p2, p3}, Lcom/coui/appcompat/widget/floatingbutton/COUIFloatingButton$COUIFloatingButtonBehavior;->a(Landroid/view/View;Landroid/view/View;)Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    .line 1579
    :cond_0
    iget-object v0, p0, Lcom/coui/appcompat/widget/floatingbutton/COUIFloatingButton$COUIFloatingButtonBehavior;->a:Landroid/graphics/Rect;

    if-nez v0, :cond_1

    .line 1580
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/coui/appcompat/widget/floatingbutton/COUIFloatingButton$COUIFloatingButtonBehavior;->a:Landroid/graphics/Rect;

    .line 1584
    :cond_1
    iget-object v0, p0, Lcom/coui/appcompat/widget/floatingbutton/COUIFloatingButton$COUIFloatingButtonBehavior;->a:Landroid/graphics/Rect;

    .line 1585
    invoke-static {p1, p2, v0}, Lcom/coui/appcompat/widget/floatingbutton/c;->b(Landroid/view/ViewGroup;Landroid/view/View;Landroid/graphics/Rect;)V

    .line 1587
    iget p1, v0, Landroid/graphics/Rect;->bottom:I

    invoke-direct {p0, p2}, Lcom/coui/appcompat/widget/floatingbutton/COUIFloatingButton$COUIFloatingButtonBehavior;->a(Lcom/google/android/material/appbar/AppBarLayout;)I

    move-result p0

    if-gt p1, p0, :cond_2

    const/16 p0, 0x8

    .line 1590
    invoke-virtual {p3, p0}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0

    .line 1594
    :cond_2
    invoke-virtual {p3, v1}, Landroid/view/View;->setVisibility(I)V

    :goto_0
    const/4 p0, 0x1

    return p0
.end method

.method private b(Landroid/view/View;Landroid/view/View;)Z
    .locals 2

    .line 1611
    invoke-direct {p0, p1, p2}, Lcom/coui/appcompat/widget/floatingbutton/COUIFloatingButton$COUIFloatingButtonBehavior;->a(Landroid/view/View;Landroid/view/View;)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 p0, 0x0

    return p0

    .line 1615
    :cond_0
    invoke-virtual {p2}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroidx/coordinatorlayout/widget/CoordinatorLayout$e;

    .line 1616
    invoke-virtual {p1}, Landroid/view/View;->getTop()I

    move-result p1

    invoke-virtual {p2}, Landroid/view/View;->getHeight()I

    move-result v1

    div-int/lit8 v1, v1, 0x2

    iget v0, v0, Landroidx/coordinatorlayout/widget/CoordinatorLayout$e;->topMargin:I

    add-int/2addr v1, v0

    if-ge p1, v1, :cond_1

    .line 1617
    invoke-virtual {p0, p2}, Lcom/coui/appcompat/widget/floatingbutton/COUIFloatingButton$COUIFloatingButtonBehavior;->b(Landroid/view/View;)V

    goto :goto_0

    .line 1619
    :cond_1
    invoke-virtual {p0, p2}, Lcom/coui/appcompat/widget/floatingbutton/COUIFloatingButton$COUIFloatingButtonBehavior;->a(Landroid/view/View;)V

    :goto_0
    const/4 p0, 0x1

    return p0
.end method

.method private static c(Landroid/view/View;)Z
    .locals 1

    .line 1456
    invoke-virtual {p0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p0

    .line 1457
    instance-of v0, p0, Landroidx/coordinatorlayout/widget/CoordinatorLayout$e;

    if-eqz v0, :cond_0

    .line 1458
    check-cast p0, Landroidx/coordinatorlayout/widget/CoordinatorLayout$e;

    .line 1459
    invoke-virtual {p0}, Landroidx/coordinatorlayout/widget/CoordinatorLayout$e;->b()Landroidx/coordinatorlayout/widget/CoordinatorLayout$b;

    move-result-object p0

    instance-of p0, p0, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method


# virtual methods
.method protected a(Landroid/view/View;)V
    .locals 1

    .line 1536
    instance-of v0, p1, Lcom/google/android/material/floatingactionbutton/FloatingActionButton;

    if-eqz v0, :cond_0

    .line 1537
    check-cast p1, Lcom/google/android/material/floatingactionbutton/FloatingActionButton;

    iget-object p0, p0, Lcom/coui/appcompat/widget/floatingbutton/COUIFloatingButton$COUIFloatingButtonBehavior;->b:Lcom/google/android/material/floatingactionbutton/FloatingActionButton$OnVisibilityChangedListener;

    invoke-virtual {p1, p0}, Lcom/google/android/material/floatingactionbutton/FloatingActionButton;->show(Lcom/google/android/material/floatingactionbutton/FloatingActionButton$OnVisibilityChangedListener;)V

    goto :goto_0

    .line 1538
    :cond_0
    instance-of p0, p1, Lcom/coui/appcompat/widget/floatingbutton/COUIFloatingButton;

    const/4 v0, 0x0

    if-eqz p0, :cond_1

    .line 1539
    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0

    .line 1541
    :cond_1
    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    :goto_0
    return-void
.end method

.method protected b(Landroid/view/View;)V
    .locals 1

    .line 1546
    instance-of v0, p1, Lcom/google/android/material/floatingactionbutton/FloatingActionButton;

    if-eqz v0, :cond_0

    .line 1547
    check-cast p1, Lcom/google/android/material/floatingactionbutton/FloatingActionButton;

    iget-object p0, p0, Lcom/coui/appcompat/widget/floatingbutton/COUIFloatingButton$COUIFloatingButtonBehavior;->b:Lcom/google/android/material/floatingactionbutton/FloatingActionButton$OnVisibilityChangedListener;

    invoke-virtual {p1, p0}, Lcom/google/android/material/floatingactionbutton/FloatingActionButton;->hide(Lcom/google/android/material/floatingactionbutton/FloatingActionButton$OnVisibilityChangedListener;)V

    goto :goto_0

    .line 1548
    :cond_0
    instance-of v0, p1, Lcom/coui/appcompat/widget/floatingbutton/COUIFloatingButton;

    if-eqz v0, :cond_1

    .line 1549
    check-cast p1, Lcom/coui/appcompat/widget/floatingbutton/COUIFloatingButton;

    iget-object p0, p0, Lcom/coui/appcompat/widget/floatingbutton/COUIFloatingButton$COUIFloatingButtonBehavior;->b:Lcom/google/android/material/floatingactionbutton/FloatingActionButton$OnVisibilityChangedListener;

    invoke-static {p1, p0}, Lcom/coui/appcompat/widget/floatingbutton/COUIFloatingButton;->a(Lcom/coui/appcompat/widget/floatingbutton/COUIFloatingButton;Lcom/google/android/material/floatingactionbutton/FloatingActionButton$OnVisibilityChangedListener;)V

    goto :goto_0

    :cond_1
    const/4 p0, 0x4

    .line 1551
    invoke-virtual {p1, p0}, Landroid/view/View;->setVisibility(I)V

    :goto_0
    return-void
.end method

.method public onAttachedToLayoutParams(Landroidx/coordinatorlayout/widget/CoordinatorLayout$e;)V
    .locals 0

    .line 1487
    iget p0, p1, Landroidx/coordinatorlayout/widget/CoordinatorLayout$e;->h:I

    if-nez p0, :cond_0

    const/16 p0, 0x50

    .line 1490
    iput p0, p1, Landroidx/coordinatorlayout/widget/CoordinatorLayout$e;->h:I

    :cond_0
    return-void
.end method

.method public onDependentViewChanged(Landroidx/coordinatorlayout/widget/CoordinatorLayout;Landroid/view/View;Landroid/view/View;)Z
    .locals 1

    .line 1497
    instance-of v0, p3, Lcom/google/android/material/appbar/AppBarLayout;

    if-eqz v0, :cond_0

    .line 1500
    check-cast p3, Lcom/google/android/material/appbar/AppBarLayout;

    invoke-direct {p0, p1, p3, p2}, Lcom/coui/appcompat/widget/floatingbutton/COUIFloatingButton$COUIFloatingButtonBehavior;->a(Landroidx/coordinatorlayout/widget/CoordinatorLayout;Lcom/google/android/material/appbar/AppBarLayout;Landroid/view/View;)Z

    goto :goto_0

    .line 1501
    :cond_0
    invoke-static {p3}, Lcom/coui/appcompat/widget/floatingbutton/COUIFloatingButton$COUIFloatingButtonBehavior;->c(Landroid/view/View;)Z

    move-result p1

    if-eqz p1, :cond_1

    .line 1502
    invoke-direct {p0, p3, p2}, Lcom/coui/appcompat/widget/floatingbutton/COUIFloatingButton$COUIFloatingButtonBehavior;->b(Landroid/view/View;Landroid/view/View;)Z

    :cond_1
    :goto_0
    const/4 p0, 0x0

    return p0
.end method

.method public onLayoutChild(Landroidx/coordinatorlayout/widget/CoordinatorLayout;Landroid/view/View;I)Z
    .locals 5

    .line 1511
    invoke-virtual {p1, p2}, Landroidx/coordinatorlayout/widget/CoordinatorLayout;->getDependencies(Landroid/view/View;)Ljava/util/List;

    move-result-object v0

    .line 1512
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_2

    .line 1513
    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/view/View;

    .line 1514
    instance-of v4, v3, Lcom/google/android/material/appbar/AppBarLayout;

    if-eqz v4, :cond_0

    .line 1515
    check-cast v3, Lcom/google/android/material/appbar/AppBarLayout;

    invoke-direct {p0, p1, v3, p2}, Lcom/coui/appcompat/widget/floatingbutton/COUIFloatingButton$COUIFloatingButtonBehavior;->a(Landroidx/coordinatorlayout/widget/CoordinatorLayout;Lcom/google/android/material/appbar/AppBarLayout;Landroid/view/View;)Z

    move-result v3

    if-eqz v3, :cond_1

    goto :goto_1

    .line 1519
    :cond_0
    invoke-static {v3}, Lcom/coui/appcompat/widget/floatingbutton/COUIFloatingButton$COUIFloatingButtonBehavior;->c(Landroid/view/View;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 1520
    invoke-direct {p0, v3, p2}, Lcom/coui/appcompat/widget/floatingbutton/COUIFloatingButton$COUIFloatingButtonBehavior;->b(Landroid/view/View;Landroid/view/View;)Z

    move-result v3

    if-eqz v3, :cond_1

    goto :goto_1

    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 1526
    :cond_2
    :goto_1
    invoke-virtual {p1, p2, p3}, Landroidx/coordinatorlayout/widget/CoordinatorLayout;->onLayoutChild(Landroid/view/View;I)V

    const/4 p0, 0x1

    return p0
.end method
