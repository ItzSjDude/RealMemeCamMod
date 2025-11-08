.class public Landroidx/recyclerview/widget/StaggeredGridLayoutManager;
.super Landroidx/recyclerview/widget/RecyclerView$i;
.source "StaggeredGridLayoutManager.java"

# interfaces
.implements Landroidx/recyclerview/widget/RecyclerView$s$b;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/recyclerview/widget/StaggeredGridLayoutManager$a;,
        Landroidx/recyclerview/widget/StaggeredGridLayoutManager$SavedState;,
        Landroidx/recyclerview/widget/StaggeredGridLayoutManager$LazySpanLookup;,
        Landroidx/recyclerview/widget/StaggeredGridLayoutManager$c;,
        Landroidx/recyclerview/widget/StaggeredGridLayoutManager$b;
    }
.end annotation


# instance fields
.field a:[Landroidx/recyclerview/widget/StaggeredGridLayoutManager$c;

.field b:Landroidx/recyclerview/widget/n;

.field c:Landroidx/recyclerview/widget/n;

.field d:Z

.field e:Z

.field f:I

.field g:I

.field h:Landroidx/recyclerview/widget/StaggeredGridLayoutManager$LazySpanLookup;

.field private i:I

.field private j:I

.field private k:I

.field private final l:Landroidx/recyclerview/widget/i;

.field private m:Ljava/util/BitSet;

.field private n:I

.field private o:Z

.field private p:Z

.field private q:Landroidx/recyclerview/widget/StaggeredGridLayoutManager$SavedState;

.field private r:I

.field private final s:Landroid/graphics/Rect;

.field private final t:Landroidx/recyclerview/widget/StaggeredGridLayoutManager$a;

.field private u:Z

.field private v:Z

.field private w:[I

.field private final x:Ljava/lang/Runnable;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V
    .locals 2

    .line 228
    invoke-direct {p0}, Landroidx/recyclerview/widget/RecyclerView$i;-><init>()V

    const/4 v0, -0x1

    .line 106
    iput v0, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->i:I

    const/4 v1, 0x0

    .line 129
    iput-boolean v1, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->d:Z

    .line 134
    iput-boolean v1, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->e:Z

    .line 145
    iput v0, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->f:I

    const/high16 v0, -0x80000000

    .line 151
    iput v0, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->g:I

    .line 157
    new-instance v0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$LazySpanLookup;

    invoke-direct {v0}, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$LazySpanLookup;-><init>()V

    iput-object v0, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->h:Landroidx/recyclerview/widget/StaggeredGridLayoutManager$LazySpanLookup;

    const/4 v0, 0x2

    .line 162
    iput v0, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->n:I

    .line 188
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->s:Landroid/graphics/Rect;

    .line 193
    new-instance v0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$a;

    invoke-direct {v0, p0}, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$a;-><init>(Landroidx/recyclerview/widget/StaggeredGridLayoutManager;)V

    iput-object v0, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->t:Landroidx/recyclerview/widget/StaggeredGridLayoutManager$a;

    .line 201
    iput-boolean v1, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->u:Z

    const/4 v0, 0x1

    .line 207
    iput-boolean v0, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->v:Z

    .line 215
    new-instance v0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$1;

    invoke-direct {v0, p0}, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$1;-><init>(Landroidx/recyclerview/widget/StaggeredGridLayoutManager;)V

    iput-object v0, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->x:Ljava/lang/Runnable;

    .line 229
    invoke-static {p1, p2, p3, p4}, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->getProperties(Landroid/content/Context;Landroid/util/AttributeSet;II)Landroidx/recyclerview/widget/RecyclerView$i$b;

    move-result-object p1

    .line 230
    iget p2, p1, Landroidx/recyclerview/widget/RecyclerView$i$b;->a:I

    invoke-virtual {p0, p2}, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->b(I)V

    .line 231
    iget p2, p1, Landroidx/recyclerview/widget/RecyclerView$i$b;->b:I

    invoke-virtual {p0, p2}, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->a(I)V

    .line 232
    iget-boolean p1, p1, Landroidx/recyclerview/widget/RecyclerView$i$b;->c:Z

    invoke-virtual {p0, p1}, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->a(Z)V

    .line 233
    new-instance p1, Landroidx/recyclerview/widget/i;

    invoke-direct {p1}, Landroidx/recyclerview/widget/i;-><init>()V

    iput-object p1, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->l:Landroidx/recyclerview/widget/i;

    .line 234
    invoke-direct {p0}, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->j()V

    return-void
.end method

.method private a(III)I
    .locals 1

    if-nez p2, :cond_0

    if-nez p3, :cond_0

    return p1

    .line 1220
    :cond_0
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result p0

    const/high16 v0, -0x80000000

    if-eq p0, v0, :cond_2

    const/high16 v0, 0x40000000    # 2.0f

    if-ne p0, v0, :cond_1

    goto :goto_0

    :cond_1
    return p1

    :cond_2
    :goto_0
    const/4 v0, 0x0

    .line 1223
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result p1

    sub-int/2addr p1, p2

    sub-int/2addr p1, p3

    invoke-static {v0, p1}, Ljava/lang/Math;->max(II)I

    move-result p1

    .line 1222
    invoke-static {p1, p0}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result p0

    return p0
.end method

.method private a(Landroidx/recyclerview/widget/RecyclerView$p;Landroidx/recyclerview/widget/i;Landroidx/recyclerview/widget/RecyclerView$t;)I
    .locals 16

    move-object/from16 v6, p0

    move-object/from16 v7, p1

    move-object/from16 v8, p2

    .line 1549
    iget-object v0, v6, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->m:Ljava/util/BitSet;

    iget v1, v6, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->i:I

    const/4 v9, 0x0

    const/4 v10, 0x1

    invoke-virtual {v0, v9, v1, v10}, Ljava/util/BitSet;->set(IIZ)V

    .line 1554
    iget-object v0, v6, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->l:Landroidx/recyclerview/widget/i;

    iget-boolean v0, v0, Landroidx/recyclerview/widget/i;->i:Z

    if-eqz v0, :cond_1

    .line 1555
    iget v0, v8, Landroidx/recyclerview/widget/i;->e:I

    if-ne v0, v10, :cond_0

    const v0, 0x7fffffff

    goto :goto_0

    :cond_0
    const/high16 v0, -0x80000000

    goto :goto_0

    .line 1561
    :cond_1
    iget v0, v8, Landroidx/recyclerview/widget/i;->e:I

    if-ne v0, v10, :cond_2

    .line 1562
    iget v0, v8, Landroidx/recyclerview/widget/i;->g:I

    iget v1, v8, Landroidx/recyclerview/widget/i;->b:I

    add-int/2addr v0, v1

    goto :goto_0

    .line 1564
    :cond_2
    iget v0, v8, Landroidx/recyclerview/widget/i;->f:I

    iget v1, v8, Landroidx/recyclerview/widget/i;->b:I

    sub-int/2addr v0, v1

    :goto_0
    move v11, v0

    .line 1568
    iget v0, v8, Landroidx/recyclerview/widget/i;->e:I

    invoke-direct {v6, v0, v11}, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->a(II)V

    .line 1575
    iget-boolean v0, v6, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->e:Z

    if-eqz v0, :cond_3

    .line 1576
    iget-object v0, v6, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->b:Landroidx/recyclerview/widget/n;

    invoke-virtual {v0}, Landroidx/recyclerview/widget/n;->e()I

    move-result v0

    goto :goto_1

    .line 1577
    :cond_3
    iget-object v0, v6, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->b:Landroidx/recyclerview/widget/n;

    invoke-virtual {v0}, Landroidx/recyclerview/widget/n;->d()I

    move-result v0

    :goto_1
    move v12, v0

    move v0, v9

    .line 1579
    :goto_2
    invoke-virtual/range {p2 .. p3}, Landroidx/recyclerview/widget/i;->a(Landroidx/recyclerview/widget/RecyclerView$t;)Z

    move-result v1

    const/4 v2, -0x1

    if-eqz v1, :cond_19

    iget-object v1, v6, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->l:Landroidx/recyclerview/widget/i;

    iget-boolean v1, v1, Landroidx/recyclerview/widget/i;->i:Z

    if-nez v1, :cond_4

    iget-object v1, v6, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->m:Ljava/util/BitSet;

    .line 1580
    invoke-virtual {v1}, Ljava/util/BitSet;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_19

    .line 1581
    :cond_4
    invoke-virtual {v8, v7}, Landroidx/recyclerview/widget/i;->a(Landroidx/recyclerview/widget/RecyclerView$p;)Landroid/view/View;

    move-result-object v13

    .line 1582
    invoke-virtual {v13}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    move-object v14, v0

    check-cast v14, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$b;

    .line 1583
    invoke-virtual {v14}, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$b;->f()I

    move-result v0

    .line 1584
    iget-object v1, v6, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->h:Landroidx/recyclerview/widget/StaggeredGridLayoutManager$LazySpanLookup;

    invoke-virtual {v1, v0}, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$LazySpanLookup;->c(I)I

    move-result v1

    if-ne v1, v2, :cond_5

    move v3, v10

    goto :goto_3

    :cond_5
    move v3, v9

    :goto_3
    if-eqz v3, :cond_7

    .line 1588
    iget-boolean v1, v14, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$b;->b:Z

    if-eqz v1, :cond_6

    iget-object v1, v6, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->a:[Landroidx/recyclerview/widget/StaggeredGridLayoutManager$c;

    aget-object v1, v1, v9

    goto :goto_4

    :cond_6
    invoke-direct {v6, v8}, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->a(Landroidx/recyclerview/widget/i;)Landroidx/recyclerview/widget/StaggeredGridLayoutManager$c;

    move-result-object v1

    .line 1589
    :goto_4
    iget-object v4, v6, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->h:Landroidx/recyclerview/widget/StaggeredGridLayoutManager$LazySpanLookup;

    invoke-virtual {v4, v0, v1}, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$LazySpanLookup;->a(ILandroidx/recyclerview/widget/StaggeredGridLayoutManager$c;)V

    goto :goto_5

    .line 1597
    :cond_7
    iget-object v4, v6, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->a:[Landroidx/recyclerview/widget/StaggeredGridLayoutManager$c;

    aget-object v1, v4, v1

    :goto_5
    move-object v15, v1

    .line 1600
    iput-object v15, v14, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$b;->a:Landroidx/recyclerview/widget/StaggeredGridLayoutManager$c;

    .line 1601
    iget v1, v8, Landroidx/recyclerview/widget/i;->e:I

    if-ne v1, v10, :cond_8

    .line 1602
    invoke-virtual {v6, v13}, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->addView(Landroid/view/View;)V

    goto :goto_6

    .line 1604
    :cond_8
    invoke-virtual {v6, v13, v9}, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->addView(Landroid/view/View;I)V

    .line 1606
    :goto_6
    invoke-direct {v6, v13, v14, v9}, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->a(Landroid/view/View;Landroidx/recyclerview/widget/StaggeredGridLayoutManager$b;Z)V

    .line 1610
    iget v1, v8, Landroidx/recyclerview/widget/i;->e:I

    if-ne v1, v10, :cond_b

    .line 1611
    iget-boolean v1, v14, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$b;->b:Z

    if-eqz v1, :cond_9

    invoke-direct {v6, v12}, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->i(I)I

    move-result v1

    goto :goto_7

    .line 1612
    :cond_9
    invoke-virtual {v15, v12}, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$c;->b(I)I

    move-result v1

    .line 1613
    :goto_7
    iget-object v4, v6, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->b:Landroidx/recyclerview/widget/n;

    invoke-virtual {v4, v13}, Landroidx/recyclerview/widget/n;->e(Landroid/view/View;)I

    move-result v4

    add-int/2addr v4, v1

    if-eqz v3, :cond_a

    .line 1614
    iget-boolean v5, v14, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$b;->b:Z

    if-eqz v5, :cond_a

    .line 1616
    invoke-direct {v6, v1}, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->e(I)Landroidx/recyclerview/widget/StaggeredGridLayoutManager$LazySpanLookup$FullSpanItem;

    move-result-object v5

    .line 1617
    iput v2, v5, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$LazySpanLookup$FullSpanItem;->mGapDir:I

    .line 1618
    iput v0, v5, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$LazySpanLookup$FullSpanItem;->mPosition:I

    .line 1619
    iget-object v9, v6, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->h:Landroidx/recyclerview/widget/StaggeredGridLayoutManager$LazySpanLookup;

    invoke-virtual {v9, v5}, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$LazySpanLookup;->a(Landroidx/recyclerview/widget/StaggeredGridLayoutManager$LazySpanLookup$FullSpanItem;)V

    :cond_a
    move v5, v4

    move v4, v1

    goto :goto_9

    .line 1622
    :cond_b
    iget-boolean v1, v14, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$b;->b:Z

    if-eqz v1, :cond_c

    invoke-direct {v6, v12}, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->h(I)I

    move-result v1

    goto :goto_8

    .line 1623
    :cond_c
    invoke-virtual {v15, v12}, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$c;->a(I)I

    move-result v1

    .line 1624
    :goto_8
    iget-object v4, v6, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->b:Landroidx/recyclerview/widget/n;

    invoke-virtual {v4, v13}, Landroidx/recyclerview/widget/n;->e(Landroid/view/View;)I

    move-result v4

    sub-int v4, v1, v4

    if-eqz v3, :cond_d

    .line 1625
    iget-boolean v5, v14, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$b;->b:Z

    if-eqz v5, :cond_d

    .line 1627
    invoke-direct {v6, v1}, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->f(I)Landroidx/recyclerview/widget/StaggeredGridLayoutManager$LazySpanLookup$FullSpanItem;

    move-result-object v5

    .line 1628
    iput v10, v5, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$LazySpanLookup$FullSpanItem;->mGapDir:I

    .line 1629
    iput v0, v5, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$LazySpanLookup$FullSpanItem;->mPosition:I

    .line 1630
    iget-object v9, v6, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->h:Landroidx/recyclerview/widget/StaggeredGridLayoutManager$LazySpanLookup;

    invoke-virtual {v9, v5}, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$LazySpanLookup;->a(Landroidx/recyclerview/widget/StaggeredGridLayoutManager$LazySpanLookup$FullSpanItem;)V

    :cond_d
    move v5, v1

    .line 1635
    :goto_9
    iget-boolean v1, v14, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$b;->b:Z

    if-eqz v1, :cond_11

    iget v1, v8, Landroidx/recyclerview/widget/i;->d:I

    if-ne v1, v2, :cond_11

    if-eqz v3, :cond_e

    .line 1637
    iput-boolean v10, v6, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->u:Z

    goto :goto_b

    .line 1640
    :cond_e
    iget v1, v8, Landroidx/recyclerview/widget/i;->e:I

    if-ne v1, v10, :cond_f

    .line 1641
    invoke-virtual/range {p0 .. p0}, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->f()Z

    move-result v1

    goto :goto_a

    .line 1643
    :cond_f
    invoke-virtual/range {p0 .. p0}, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->g()Z

    move-result v1

    :goto_a
    xor-int/2addr v1, v10

    if-eqz v1, :cond_11

    .line 1646
    iget-object v1, v6, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->h:Landroidx/recyclerview/widget/StaggeredGridLayoutManager$LazySpanLookup;

    .line 1647
    invoke-virtual {v1, v0}, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$LazySpanLookup;->f(I)Landroidx/recyclerview/widget/StaggeredGridLayoutManager$LazySpanLookup$FullSpanItem;

    move-result-object v0

    if-eqz v0, :cond_10

    .line 1649
    iput-boolean v10, v0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$LazySpanLookup$FullSpanItem;->mHasUnwantedGapAfter:Z

    .line 1651
    :cond_10
    iput-boolean v10, v6, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->u:Z

    .line 1655
    :cond_11
    :goto_b
    invoke-direct {v6, v13, v14, v8}, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->a(Landroid/view/View;Landroidx/recyclerview/widget/StaggeredGridLayoutManager$b;Landroidx/recyclerview/widget/i;)V

    .line 1658
    invoke-virtual/range {p0 .. p0}, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->d()Z

    move-result v0

    if-eqz v0, :cond_13

    iget v0, v6, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->j:I

    if-ne v0, v10, :cond_13

    .line 1659
    iget-boolean v0, v14, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$b;->b:Z

    if-eqz v0, :cond_12

    iget-object v0, v6, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->c:Landroidx/recyclerview/widget/n;

    invoke-virtual {v0}, Landroidx/recyclerview/widget/n;->e()I

    move-result v0

    goto :goto_c

    .line 1661
    :cond_12
    iget-object v0, v6, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->c:Landroidx/recyclerview/widget/n;

    .line 1660
    invoke-virtual {v0}, Landroidx/recyclerview/widget/n;->e()I

    move-result v0

    iget v1, v6, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->i:I

    sub-int/2addr v1, v10

    iget v2, v15, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$c;->e:I

    sub-int/2addr v1, v2

    iget v2, v6, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->k:I

    mul-int/2addr v1, v2

    sub-int/2addr v0, v1

    .line 1662
    :goto_c
    iget-object v1, v6, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->c:Landroidx/recyclerview/widget/n;

    invoke-virtual {v1, v13}, Landroidx/recyclerview/widget/n;->e(Landroid/view/View;)I

    move-result v1

    sub-int v1, v0, v1

    move v9, v0

    move v3, v1

    goto :goto_e

    .line 1664
    :cond_13
    iget-boolean v0, v14, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$b;->b:Z

    if-eqz v0, :cond_14

    iget-object v0, v6, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->c:Landroidx/recyclerview/widget/n;

    invoke-virtual {v0}, Landroidx/recyclerview/widget/n;->d()I

    move-result v0

    goto :goto_d

    .line 1666
    :cond_14
    iget v0, v15, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$c;->e:I

    iget v1, v6, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->k:I

    mul-int/2addr v0, v1

    iget-object v1, v6, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->c:Landroidx/recyclerview/widget/n;

    invoke-virtual {v1}, Landroidx/recyclerview/widget/n;->d()I

    move-result v1

    add-int/2addr v0, v1

    .line 1667
    :goto_d
    iget-object v1, v6, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->c:Landroidx/recyclerview/widget/n;

    invoke-virtual {v1, v13}, Landroidx/recyclerview/widget/n;->e(Landroid/view/View;)I

    move-result v1

    add-int/2addr v1, v0

    move v3, v0

    move v9, v1

    .line 1670
    :goto_e
    iget v0, v6, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->j:I

    if-ne v0, v10, :cond_15

    move-object/from16 v0, p0

    move-object v1, v13

    move v2, v3

    move v3, v4

    move v4, v9

    .line 1671
    invoke-virtual/range {v0 .. v5}, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->layoutDecoratedWithMargins(Landroid/view/View;IIII)V

    goto :goto_f

    :cond_15
    move-object/from16 v0, p0

    move-object v1, v13

    move v2, v4

    move v4, v5

    move v5, v9

    .line 1673
    invoke-virtual/range {v0 .. v5}, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->layoutDecoratedWithMargins(Landroid/view/View;IIII)V

    .line 1676
    :goto_f
    iget-boolean v0, v14, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$b;->b:Z

    if-eqz v0, :cond_16

    .line 1677
    iget-object v0, v6, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->l:Landroidx/recyclerview/widget/i;

    iget v0, v0, Landroidx/recyclerview/widget/i;->e:I

    invoke-direct {v6, v0, v11}, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->a(II)V

    goto :goto_10

    .line 1679
    :cond_16
    iget-object v0, v6, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->l:Landroidx/recyclerview/widget/i;

    iget v0, v0, Landroidx/recyclerview/widget/i;->e:I

    invoke-direct {v6, v15, v0, v11}, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->a(Landroidx/recyclerview/widget/StaggeredGridLayoutManager$c;II)V

    .line 1681
    :goto_10
    iget-object v0, v6, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->l:Landroidx/recyclerview/widget/i;

    invoke-direct {v6, v7, v0}, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->a(Landroidx/recyclerview/widget/RecyclerView$p;Landroidx/recyclerview/widget/i;)V

    .line 1682
    iget-object v0, v6, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->l:Landroidx/recyclerview/widget/i;

    iget-boolean v0, v0, Landroidx/recyclerview/widget/i;->h:Z

    if-eqz v0, :cond_18

    invoke-virtual {v13}, Landroid/view/View;->hasFocusable()Z

    move-result v0

    if-eqz v0, :cond_18

    .line 1683
    iget-boolean v0, v14, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$b;->b:Z

    if-eqz v0, :cond_17

    .line 1684
    iget-object v0, v6, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->m:Ljava/util/BitSet;

    invoke-virtual {v0}, Ljava/util/BitSet;->clear()V

    goto :goto_11

    .line 1686
    :cond_17
    iget-object v0, v6, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->m:Ljava/util/BitSet;

    iget v1, v15, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$c;->e:I

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v3}, Ljava/util/BitSet;->set(IZ)V

    goto :goto_12

    :cond_18
    :goto_11
    const/4 v3, 0x0

    :goto_12
    move v9, v3

    move v0, v10

    goto/16 :goto_2

    :cond_19
    move v3, v9

    if-nez v0, :cond_1a

    .line 1692
    iget-object v0, v6, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->l:Landroidx/recyclerview/widget/i;

    invoke-direct {v6, v7, v0}, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->a(Landroidx/recyclerview/widget/RecyclerView$p;Landroidx/recyclerview/widget/i;)V

    .line 1695
    :cond_1a
    iget-object v0, v6, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->l:Landroidx/recyclerview/widget/i;

    iget v0, v0, Landroidx/recyclerview/widget/i;->e:I

    if-ne v0, v2, :cond_1b

    .line 1696
    iget-object v0, v6, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->b:Landroidx/recyclerview/widget/n;

    invoke-virtual {v0}, Landroidx/recyclerview/widget/n;->d()I

    move-result v0

    invoke-direct {v6, v0}, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->h(I)I

    move-result v0

    .line 1697
    iget-object v1, v6, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->b:Landroidx/recyclerview/widget/n;

    invoke-virtual {v1}, Landroidx/recyclerview/widget/n;->d()I

    move-result v1

    sub-int/2addr v1, v0

    goto :goto_13

    .line 1699
    :cond_1b
    iget-object v0, v6, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->b:Landroidx/recyclerview/widget/n;

    invoke-virtual {v0}, Landroidx/recyclerview/widget/n;->e()I

    move-result v0

    invoke-direct {v6, v0}, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->i(I)I

    move-result v0

    .line 1700
    iget-object v1, v6, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->b:Landroidx/recyclerview/widget/n;

    invoke-virtual {v1}, Landroidx/recyclerview/widget/n;->e()I

    move-result v1

    sub-int v1, v0, v1

    :goto_13
    if-lez v1, :cond_1c

    .line 1702
    iget v0, v8, Landroidx/recyclerview/widget/i;->b:I

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v9

    move v3, v9

    :cond_1c
    return v3
.end method

.method private a(Landroidx/recyclerview/widget/RecyclerView$t;)I
    .locals 7

    .line 1080
    invoke-virtual {p0}, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->getChildCount()I

    move-result v0

    if-nez v0, :cond_0

    const/4 p0, 0x0

    return p0

    .line 1083
    :cond_0
    iget-object v1, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->b:Landroidx/recyclerview/widget/n;

    iget-boolean v0, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->v:Z

    xor-int/lit8 v0, v0, 0x1

    .line 1084
    invoke-virtual {p0, v0}, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->b(Z)Landroid/view/View;

    move-result-object v2

    iget-boolean v0, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->v:Z

    xor-int/lit8 v0, v0, 0x1

    .line 1085
    invoke-virtual {p0, v0}, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->c(Z)Landroid/view/View;

    move-result-object v3

    iget-boolean v5, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->v:Z

    iget-boolean v6, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->e:Z

    move-object v0, p1

    move-object v4, p0

    .line 1083
    invoke-static/range {v0 .. v6}, Landroidx/recyclerview/widget/q;->a(Landroidx/recyclerview/widget/RecyclerView$t;Landroidx/recyclerview/widget/n;Landroid/view/View;Landroid/view/View;Landroidx/recyclerview/widget/RecyclerView$i;ZZ)I

    move-result p0

    return p0
.end method

.method private a(Landroidx/recyclerview/widget/i;)Landroidx/recyclerview/widget/StaggeredGridLayoutManager$c;
    .locals 7

    .line 1954
    iget v0, p1, Landroidx/recyclerview/widget/i;->e:I

    invoke-direct {p0, v0}, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->k(I)Z

    move-result v0

    const/4 v1, -0x1

    const/4 v2, 0x1

    if-eqz v0, :cond_0

    .line 1957
    iget v0, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->i:I

    sub-int/2addr v0, v2

    move v3, v1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 1962
    iget v1, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->i:I

    move v3, v2

    .line 1965
    :goto_0
    iget p1, p1, Landroidx/recyclerview/widget/i;->e:I

    const/4 v4, 0x0

    if-ne p1, v2, :cond_3

    const p1, 0x7fffffff

    .line 1968
    iget-object v2, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->b:Landroidx/recyclerview/widget/n;

    invoke-virtual {v2}, Landroidx/recyclerview/widget/n;->d()I

    move-result v2

    :goto_1
    if-eq v0, v1, :cond_2

    .line 1970
    iget-object v5, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->a:[Landroidx/recyclerview/widget/StaggeredGridLayoutManager$c;

    aget-object v5, v5, v0

    .line 1971
    invoke-virtual {v5, v2}, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$c;->b(I)I

    move-result v6

    if-ge v6, p1, :cond_1

    move-object v4, v5

    move p1, v6

    :cond_1
    add-int/2addr v0, v3

    goto :goto_1

    :cond_2
    return-object v4

    :cond_3
    const/high16 p1, -0x80000000

    .line 1981
    iget-object v2, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->b:Landroidx/recyclerview/widget/n;

    invoke-virtual {v2}, Landroidx/recyclerview/widget/n;->e()I

    move-result v2

    :goto_2
    if-eq v0, v1, :cond_5

    .line 1983
    iget-object v5, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->a:[Landroidx/recyclerview/widget/StaggeredGridLayoutManager$c;

    aget-object v5, v5, v0

    .line 1984
    invoke-virtual {v5, v2}, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$c;->a(I)I

    move-result v6

    if-le v6, p1, :cond_4

    move-object v4, v5

    move p1, v6

    :cond_4
    add-int/2addr v0, v3

    goto :goto_2

    :cond_5
    return-object v4
.end method

.method private a(II)V
    .locals 2

    const/4 v0, 0x0

    .line 1793
    :goto_0
    iget v1, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->i:I

    if-ge v0, v1, :cond_1

    .line 1794
    iget-object v1, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->a:[Landroidx/recyclerview/widget/StaggeredGridLayoutManager$c;

    aget-object v1, v1, v0

    iget-object v1, v1, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$c;->a:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_1

    .line 1797
    :cond_0
    iget-object v1, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->a:[Landroidx/recyclerview/widget/StaggeredGridLayoutManager$c;

    aget-object v1, v1, v0

    invoke-direct {p0, v1, p1, p2}, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->a(Landroidx/recyclerview/widget/StaggeredGridLayoutManager$c;II)V

    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method private a(Landroid/view/View;)V
    .locals 2

    .line 1780
    iget v0, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->i:I

    add-int/lit8 v0, v0, -0x1

    :goto_0
    if-ltz v0, :cond_0

    .line 1781
    iget-object v1, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->a:[Landroidx/recyclerview/widget/StaggeredGridLayoutManager$c;

    aget-object v1, v1, v0

    invoke-virtual {v1, p1}, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$c;->b(Landroid/view/View;)V

    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method private a(Landroid/view/View;IIZ)V
    .locals 4

    .line 1201
    iget-object v0, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->s:Landroid/graphics/Rect;

    invoke-virtual {p0, p1, v0}, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->calculateItemDecorationsForChild(Landroid/view/View;Landroid/graphics/Rect;)V

    .line 1202
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$b;

    .line 1203
    iget v1, v0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$b;->leftMargin:I

    iget-object v2, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->s:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->left:I

    add-int/2addr v1, v2

    iget v2, v0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$b;->rightMargin:I

    iget-object v3, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->s:Landroid/graphics/Rect;

    iget v3, v3, Landroid/graphics/Rect;->right:I

    add-int/2addr v2, v3

    invoke-direct {p0, p2, v1, v2}, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->a(III)I

    move-result p2

    .line 1205
    iget v1, v0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$b;->topMargin:I

    iget-object v2, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->s:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->top:I

    add-int/2addr v1, v2

    iget v2, v0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$b;->bottomMargin:I

    iget-object v3, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->s:Landroid/graphics/Rect;

    iget v3, v3, Landroid/graphics/Rect;->bottom:I

    add-int/2addr v2, v3

    invoke-direct {p0, p3, v1, v2}, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->a(III)I

    move-result p3

    if-eqz p4, :cond_0

    .line 1208
    invoke-virtual {p0, p1, p2, p3, v0}, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->shouldReMeasureChild(Landroid/view/View;IILandroidx/recyclerview/widget/RecyclerView$j;)Z

    move-result p0

    goto :goto_0

    .line 1209
    :cond_0
    invoke-virtual {p0, p1, p2, p3, v0}, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->shouldMeasureChild(Landroid/view/View;IILandroidx/recyclerview/widget/RecyclerView$j;)Z

    move-result p0

    :goto_0
    if-eqz p0, :cond_1

    .line 1211
    invoke-virtual {p1, p2, p3}, Landroid/view/View;->measure(II)V

    :cond_1
    return-void
.end method

.method private a(Landroid/view/View;Landroidx/recyclerview/widget/StaggeredGridLayoutManager$b;Landroidx/recyclerview/widget/i;)V
    .locals 1

    .line 1724
    iget p3, p3, Landroidx/recyclerview/widget/i;->e:I

    const/4 v0, 0x1

    if-ne p3, v0, :cond_1

    .line 1725
    iget-boolean p3, p2, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$b;->b:Z

    if-eqz p3, :cond_0

    .line 1726
    invoke-direct {p0, p1}, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->a(Landroid/view/View;)V

    goto :goto_0

    .line 1728
    :cond_0
    iget-object p0, p2, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$b;->a:Landroidx/recyclerview/widget/StaggeredGridLayoutManager$c;

    invoke-virtual {p0, p1}, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$c;->b(Landroid/view/View;)V

    goto :goto_0

    .line 1731
    :cond_1
    iget-boolean p3, p2, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$b;->b:Z

    if-eqz p3, :cond_2

    .line 1732
    invoke-direct {p0, p1}, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->b(Landroid/view/View;)V

    goto :goto_0

    .line 1734
    :cond_2
    iget-object p0, p2, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$b;->a:Landroidx/recyclerview/widget/StaggeredGridLayoutManager$c;

    invoke-virtual {p0, p1}, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$c;->a(Landroid/view/View;)V

    :goto_0
    return-void
.end method

.method private a(Landroid/view/View;Landroidx/recyclerview/widget/StaggeredGridLayoutManager$b;Z)V
    .locals 6

    .line 1136
    iget-boolean v0, p2, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$b;->b:Z

    const/4 v1, 0x1

    if-eqz v0, :cond_1

    .line 1137
    iget v0, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->j:I

    if-ne v0, v1, :cond_0

    .line 1138
    iget v0, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->r:I

    .line 1140
    invoke-virtual {p0}, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->getHeight()I

    move-result v2

    .line 1141
    invoke-virtual {p0}, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->getHeightMode()I

    move-result v3

    .line 1142
    invoke-virtual {p0}, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->getPaddingTop()I

    move-result v4

    invoke-virtual {p0}, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->getPaddingBottom()I

    move-result v5

    add-int/2addr v4, v5

    iget p2, p2, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$b;->height:I

    .line 1139
    invoke-static {v2, v3, v4, p2, v1}, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->getChildMeasureSpec(IIIIZ)I

    move-result p2

    .line 1138
    invoke-direct {p0, p1, v0, p2, p3}, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->a(Landroid/view/View;IIZ)V

    goto :goto_0

    .line 1150
    :cond_0
    invoke-virtual {p0}, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->getWidth()I

    move-result v0

    .line 1151
    invoke-virtual {p0}, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->getWidthMode()I

    move-result v2

    .line 1152
    invoke-virtual {p0}, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->getPaddingLeft()I

    move-result v3

    invoke-virtual {p0}, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->getPaddingRight()I

    move-result v4

    add-int/2addr v3, v4

    iget p2, p2, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$b;->width:I

    .line 1149
    invoke-static {v0, v2, v3, p2, v1}, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->getChildMeasureSpec(IIIIZ)I

    move-result p2

    iget v0, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->r:I

    .line 1147
    invoke-direct {p0, p1, p2, v0, p3}, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->a(Landroid/view/View;IIZ)V

    goto :goto_0

    .line 1159
    :cond_1
    iget v0, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->j:I

    const/4 v2, 0x0

    if-ne v0, v1, :cond_2

    .line 1162
    iget v0, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->k:I

    .line 1166
    invoke-virtual {p0}, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->getWidthMode()I

    move-result v3

    iget v4, p2, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$b;->width:I

    .line 1164
    invoke-static {v0, v3, v2, v4, v2}, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->getChildMeasureSpec(IIIIZ)I

    move-result v0

    .line 1171
    invoke-virtual {p0}, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->getHeight()I

    move-result v2

    .line 1172
    invoke-virtual {p0}, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->getHeightMode()I

    move-result v3

    .line 1173
    invoke-virtual {p0}, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->getPaddingTop()I

    move-result v4

    invoke-virtual {p0}, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->getPaddingBottom()I

    move-result v5

    add-int/2addr v4, v5

    iget p2, p2, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$b;->height:I

    .line 1170
    invoke-static {v2, v3, v4, p2, v1}, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->getChildMeasureSpec(IIIIZ)I

    move-result p2

    .line 1162
    invoke-direct {p0, p1, v0, p2, p3}, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->a(Landroid/view/View;IIZ)V

    goto :goto_0

    .line 1183
    :cond_2
    invoke-virtual {p0}, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->getWidth()I

    move-result v0

    .line 1184
    invoke-virtual {p0}, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->getWidthMode()I

    move-result v3

    .line 1185
    invoke-virtual {p0}, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->getPaddingLeft()I

    move-result v4

    invoke-virtual {p0}, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->getPaddingRight()I

    move-result v5

    add-int/2addr v4, v5

    iget v5, p2, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$b;->width:I

    .line 1182
    invoke-static {v0, v3, v4, v5, v1}, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->getChildMeasureSpec(IIIIZ)I

    move-result v0

    iget v1, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->k:I

    .line 1190
    invoke-virtual {p0}, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->getHeightMode()I

    move-result v3

    iget p2, p2, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$b;->height:I

    .line 1188
    invoke-static {v1, v3, v2, p2, v2}, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->getChildMeasureSpec(IIIIZ)I

    move-result p2

    .line 1180
    invoke-direct {p0, p1, v0, p2, p3}, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->a(Landroid/view/View;IIZ)V

    :goto_0
    return-void
.end method

.method private a(Landroidx/recyclerview/widget/RecyclerView$p;I)V
    .locals 5

    .line 1881
    :goto_0
    invoke-virtual {p0}, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->getChildCount()I

    move-result v0

    if-lez v0, :cond_5

    const/4 v0, 0x0

    .line 1882
    invoke-virtual {p0, v0}, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    .line 1883
    iget-object v2, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->b:Landroidx/recyclerview/widget/n;

    invoke-virtual {v2, v1}, Landroidx/recyclerview/widget/n;->b(Landroid/view/View;)I

    move-result v2

    if-gt v2, p2, :cond_5

    iget-object v2, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->b:Landroidx/recyclerview/widget/n;

    .line 1884
    invoke-virtual {v2, v1}, Landroidx/recyclerview/widget/n;->c(Landroid/view/View;)I

    move-result v2

    if-gt v2, p2, :cond_5

    .line 1885
    invoke-virtual {v1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    check-cast v2, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$b;

    .line 1887
    iget-boolean v3, v2, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$b;->b:Z

    const/4 v4, 0x1

    if-eqz v3, :cond_2

    move v2, v0

    .line 1888
    :goto_1
    iget v3, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->i:I

    if-ge v2, v3, :cond_1

    .line 1889
    iget-object v3, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->a:[Landroidx/recyclerview/widget/StaggeredGridLayoutManager$c;

    aget-object v3, v3, v2

    iget-object v3, v3, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$c;->a:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-ne v3, v4, :cond_0

    return-void

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 1893
    :cond_1
    :goto_2
    iget v2, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->i:I

    if-ge v0, v2, :cond_4

    .line 1894
    iget-object v2, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->a:[Landroidx/recyclerview/widget/StaggeredGridLayoutManager$c;

    aget-object v2, v2, v0

    invoke-virtual {v2}, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$c;->h()V

    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    .line 1897
    :cond_2
    iget-object v0, v2, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$b;->a:Landroidx/recyclerview/widget/StaggeredGridLayoutManager$c;

    iget-object v0, v0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$c;->a:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ne v0, v4, :cond_3

    return-void

    .line 1900
    :cond_3
    iget-object v0, v2, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$b;->a:Landroidx/recyclerview/widget/StaggeredGridLayoutManager$c;

    invoke-virtual {v0}, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$c;->h()V

    .line 1902
    :cond_4
    invoke-virtual {p0, v1, p1}, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->removeAndRecycleView(Landroid/view/View;Landroidx/recyclerview/widget/RecyclerView$p;)V

    goto :goto_0

    :cond_5
    return-void
.end method

.method private a(Landroidx/recyclerview/widget/RecyclerView$p;Landroidx/recyclerview/widget/RecyclerView$t;Z)V
    .locals 8

    .line 619
    iget-object v0, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->t:Landroidx/recyclerview/widget/StaggeredGridLayoutManager$a;

    .line 620
    iget-object v1, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->q:Landroidx/recyclerview/widget/StaggeredGridLayoutManager$SavedState;

    const/4 v2, -0x1

    if-nez v1, :cond_0

    iget v1, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->f:I

    if-eq v1, v2, :cond_1

    .line 621
    :cond_0
    invoke-virtual {p2}, Landroidx/recyclerview/widget/RecyclerView$t;->e()I

    move-result v1

    if-nez v1, :cond_1

    .line 622
    invoke-virtual {p0, p1}, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->removeAndRecycleAllViews(Landroidx/recyclerview/widget/RecyclerView$p;)V

    .line 623
    invoke-virtual {v0}, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$a;->a()V

    return-void

    .line 628
    :cond_1
    iget-boolean v1, v0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$a;->e:Z

    const/4 v3, 0x0

    const/4 v4, 0x1

    if-eqz v1, :cond_3

    iget v1, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->f:I

    if-ne v1, v2, :cond_3

    iget-object v1, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->q:Landroidx/recyclerview/widget/StaggeredGridLayoutManager$SavedState;

    if-eqz v1, :cond_2

    goto :goto_0

    :cond_2
    move v1, v3

    goto :goto_1

    :cond_3
    :goto_0
    move v1, v4

    :goto_1
    if-eqz v1, :cond_5

    .line 631
    invoke-virtual {v0}, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$a;->a()V

    .line 632
    iget-object v5, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->q:Landroidx/recyclerview/widget/StaggeredGridLayoutManager$SavedState;

    if-eqz v5, :cond_4

    .line 633
    invoke-direct {p0, v0}, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->a(Landroidx/recyclerview/widget/StaggeredGridLayoutManager$a;)V

    goto :goto_2

    .line 635
    :cond_4
    invoke-direct {p0}, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->k()V

    .line 636
    iget-boolean v5, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->e:Z

    iput-boolean v5, v0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$a;->c:Z

    .line 638
    :goto_2
    invoke-virtual {p0, p2, v0}, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->a(Landroidx/recyclerview/widget/RecyclerView$t;Landroidx/recyclerview/widget/StaggeredGridLayoutManager$a;)V

    .line 639
    iput-boolean v4, v0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$a;->e:Z

    .line 641
    :cond_5
    iget-object v5, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->q:Landroidx/recyclerview/widget/StaggeredGridLayoutManager$SavedState;

    if-nez v5, :cond_7

    iget v5, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->f:I

    if-ne v5, v2, :cond_7

    .line 642
    iget-boolean v5, v0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$a;->c:Z

    iget-boolean v6, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->o:Z

    if-ne v5, v6, :cond_6

    .line 643
    invoke-virtual {p0}, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->d()Z

    move-result v5

    iget-boolean v6, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->p:Z

    if-eq v5, v6, :cond_7

    .line 644
    :cond_6
    iget-object v5, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->h:Landroidx/recyclerview/widget/StaggeredGridLayoutManager$LazySpanLookup;

    invoke-virtual {v5}, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$LazySpanLookup;->a()V

    .line 645
    iput-boolean v4, v0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$a;->d:Z

    .line 649
    :cond_7
    invoke-virtual {p0}, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->getChildCount()I

    move-result v5

    if-lez v5, :cond_e

    iget-object v5, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->q:Landroidx/recyclerview/widget/StaggeredGridLayoutManager$SavedState;

    if-eqz v5, :cond_8

    iget v5, v5, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$SavedState;->mSpanOffsetsSize:I

    if-ge v5, v4, :cond_e

    .line 651
    :cond_8
    iget-boolean v5, v0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$a;->d:Z

    if-eqz v5, :cond_a

    move v1, v3

    .line 652
    :goto_3
    iget v5, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->i:I

    if-ge v1, v5, :cond_e

    .line 654
    iget-object v5, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->a:[Landroidx/recyclerview/widget/StaggeredGridLayoutManager$c;

    aget-object v5, v5, v1

    invoke-virtual {v5}, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$c;->e()V

    .line 655
    iget v5, v0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$a;->b:I

    const/high16 v6, -0x80000000

    if-eq v5, v6, :cond_9

    .line 656
    iget-object v5, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->a:[Landroidx/recyclerview/widget/StaggeredGridLayoutManager$c;

    aget-object v5, v5, v1

    iget v6, v0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$a;->b:I

    invoke-virtual {v5, v6}, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$c;->c(I)V

    :cond_9
    add-int/lit8 v1, v1, 0x1

    goto :goto_3

    :cond_a
    if-nez v1, :cond_c

    .line 660
    iget-object v1, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->t:Landroidx/recyclerview/widget/StaggeredGridLayoutManager$a;

    iget-object v1, v1, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$a;->f:[I

    if-nez v1, :cond_b

    goto :goto_5

    :cond_b
    move v1, v3

    .line 667
    :goto_4
    iget v5, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->i:I

    if-ge v1, v5, :cond_e

    .line 668
    iget-object v5, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->a:[Landroidx/recyclerview/widget/StaggeredGridLayoutManager$c;

    aget-object v5, v5, v1

    .line 669
    invoke-virtual {v5}, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$c;->e()V

    .line 670
    iget-object v6, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->t:Landroidx/recyclerview/widget/StaggeredGridLayoutManager$a;

    iget-object v6, v6, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$a;->f:[I

    aget v6, v6, v1

    invoke-virtual {v5, v6}, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$c;->c(I)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_4

    :cond_c
    :goto_5
    move v1, v3

    .line 661
    :goto_6
    iget v5, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->i:I

    if-ge v1, v5, :cond_d

    .line 662
    iget-object v5, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->a:[Landroidx/recyclerview/widget/StaggeredGridLayoutManager$c;

    aget-object v5, v5, v1

    iget-boolean v6, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->e:Z

    iget v7, v0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$a;->b:I

    invoke-virtual {v5, v6, v7}, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$c;->a(ZI)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_6

    .line 665
    :cond_d
    iget-object v1, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->t:Landroidx/recyclerview/widget/StaggeredGridLayoutManager$a;

    iget-object v5, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->a:[Landroidx/recyclerview/widget/StaggeredGridLayoutManager$c;

    invoke-virtual {v1, v5}, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$a;->a([Landroidx/recyclerview/widget/StaggeredGridLayoutManager$c;)V

    .line 675
    :cond_e
    invoke-virtual {p0, p1}, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->detachAndScrapAttachedViews(Landroidx/recyclerview/widget/RecyclerView$p;)V

    .line 676
    iget-object v1, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->l:Landroidx/recyclerview/widget/i;

    iput-boolean v3, v1, Landroidx/recyclerview/widget/i;->a:Z

    .line 677
    iput-boolean v3, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->u:Z

    .line 678
    iget-object v1, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->c:Landroidx/recyclerview/widget/n;

    invoke-virtual {v1}, Landroidx/recyclerview/widget/n;->g()I

    move-result v1

    invoke-virtual {p0, v1}, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->c(I)V

    .line 679
    iget v1, v0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$a;->a:I

    invoke-direct {p0, v1, p2}, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->b(ILandroidx/recyclerview/widget/RecyclerView$t;)V

    .line 680
    iget-boolean v1, v0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$a;->c:Z

    if-eqz v1, :cond_f

    .line 682
    invoke-direct {p0, v2}, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->d(I)V

    .line 683
    iget-object v1, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->l:Landroidx/recyclerview/widget/i;

    invoke-direct {p0, p1, v1, p2}, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->a(Landroidx/recyclerview/widget/RecyclerView$p;Landroidx/recyclerview/widget/i;Landroidx/recyclerview/widget/RecyclerView$t;)I

    .line 685
    invoke-direct {p0, v4}, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->d(I)V

    .line 686
    iget-object v1, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->l:Landroidx/recyclerview/widget/i;

    iget v2, v0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$a;->a:I

    iget-object v5, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->l:Landroidx/recyclerview/widget/i;

    iget v5, v5, Landroidx/recyclerview/widget/i;->d:I

    add-int/2addr v2, v5

    iput v2, v1, Landroidx/recyclerview/widget/i;->c:I

    .line 687
    iget-object v1, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->l:Landroidx/recyclerview/widget/i;

    invoke-direct {p0, p1, v1, p2}, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->a(Landroidx/recyclerview/widget/RecyclerView$p;Landroidx/recyclerview/widget/i;Landroidx/recyclerview/widget/RecyclerView$t;)I

    goto :goto_7

    .line 690
    :cond_f
    invoke-direct {p0, v4}, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->d(I)V

    .line 691
    iget-object v1, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->l:Landroidx/recyclerview/widget/i;

    invoke-direct {p0, p1, v1, p2}, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->a(Landroidx/recyclerview/widget/RecyclerView$p;Landroidx/recyclerview/widget/i;Landroidx/recyclerview/widget/RecyclerView$t;)I

    .line 693
    invoke-direct {p0, v2}, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->d(I)V

    .line 694
    iget-object v1, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->l:Landroidx/recyclerview/widget/i;

    iget v2, v0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$a;->a:I

    iget-object v5, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->l:Landroidx/recyclerview/widget/i;

    iget v5, v5, Landroidx/recyclerview/widget/i;->d:I

    add-int/2addr v2, v5

    iput v2, v1, Landroidx/recyclerview/widget/i;->c:I

    .line 695
    iget-object v1, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->l:Landroidx/recyclerview/widget/i;

    invoke-direct {p0, p1, v1, p2}, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->a(Landroidx/recyclerview/widget/RecyclerView$p;Landroidx/recyclerview/widget/i;Landroidx/recyclerview/widget/RecyclerView$t;)I

    .line 698
    :goto_7
    invoke-direct {p0}, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->l()V

    .line 700
    invoke-virtual {p0}, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->getChildCount()I

    move-result v1

    if-lez v1, :cond_11

    .line 701
    iget-boolean v1, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->e:Z

    if-eqz v1, :cond_10

    .line 702
    invoke-direct {p0, p1, p2, v4}, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->b(Landroidx/recyclerview/widget/RecyclerView$p;Landroidx/recyclerview/widget/RecyclerView$t;Z)V

    .line 703
    invoke-direct {p0, p1, p2, v3}, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->c(Landroidx/recyclerview/widget/RecyclerView$p;Landroidx/recyclerview/widget/RecyclerView$t;Z)V

    goto :goto_8

    .line 705
    :cond_10
    invoke-direct {p0, p1, p2, v4}, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->c(Landroidx/recyclerview/widget/RecyclerView$p;Landroidx/recyclerview/widget/RecyclerView$t;Z)V

    .line 706
    invoke-direct {p0, p1, p2, v3}, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->b(Landroidx/recyclerview/widget/RecyclerView$p;Landroidx/recyclerview/widget/RecyclerView$t;Z)V

    :cond_11
    :goto_8
    if-eqz p3, :cond_14

    .line 710
    invoke-virtual {p2}, Landroidx/recyclerview/widget/RecyclerView$t;->a()Z

    move-result p3

    if-nez p3, :cond_14

    .line 711
    iget p3, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->n:I

    if-eqz p3, :cond_13

    .line 712
    invoke-virtual {p0}, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->getChildCount()I

    move-result p3

    if-lez p3, :cond_13

    iget-boolean p3, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->u:Z

    if-nez p3, :cond_12

    .line 713
    invoke-virtual {p0}, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->b()Landroid/view/View;

    move-result-object p3

    if-eqz p3, :cond_13

    :cond_12
    move p3, v4

    goto :goto_9

    :cond_13
    move p3, v3

    :goto_9
    if-eqz p3, :cond_14

    .line 715
    iget-object p3, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->x:Ljava/lang/Runnable;

    invoke-virtual {p0, p3}, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 716
    invoke-virtual {p0}, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->a()Z

    move-result p3

    if-eqz p3, :cond_14

    goto :goto_a

    :cond_14
    move v4, v3

    .line 721
    :goto_a
    invoke-virtual {p2}, Landroidx/recyclerview/widget/RecyclerView$t;->a()Z

    move-result p3

    if-eqz p3, :cond_15

    .line 722
    iget-object p3, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->t:Landroidx/recyclerview/widget/StaggeredGridLayoutManager$a;

    invoke-virtual {p3}, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$a;->a()V

    .line 724
    :cond_15
    iget-boolean p3, v0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$a;->c:Z

    iput-boolean p3, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->o:Z

    .line 725
    invoke-virtual {p0}, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->d()Z

    move-result p3

    iput-boolean p3, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->p:Z

    if-eqz v4, :cond_16

    .line 727
    iget-object p3, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->t:Landroidx/recyclerview/widget/StaggeredGridLayoutManager$a;

    invoke-virtual {p3}, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$a;->a()V

    .line 728
    invoke-direct {p0, p1, p2, v3}, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->a(Landroidx/recyclerview/widget/RecyclerView$p;Landroidx/recyclerview/widget/RecyclerView$t;Z)V

    :cond_16
    return-void
.end method

.method private a(Landroidx/recyclerview/widget/RecyclerView$p;Landroidx/recyclerview/widget/i;)V
    .locals 2

    .line 1740
    iget-boolean v0, p2, Landroidx/recyclerview/widget/i;->a:Z

    if-eqz v0, :cond_6

    iget-boolean v0, p2, Landroidx/recyclerview/widget/i;->i:Z

    if-eqz v0, :cond_0

    goto :goto_2

    .line 1743
    :cond_0
    iget v0, p2, Landroidx/recyclerview/widget/i;->b:I

    const/4 v1, -0x1

    if-nez v0, :cond_2

    .line 1745
    iget v0, p2, Landroidx/recyclerview/widget/i;->e:I

    if-ne v0, v1, :cond_1

    .line 1746
    iget p2, p2, Landroidx/recyclerview/widget/i;->g:I

    invoke-direct {p0, p1, p2}, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->b(Landroidx/recyclerview/widget/RecyclerView$p;I)V

    goto :goto_2

    .line 1748
    :cond_1
    iget p2, p2, Landroidx/recyclerview/widget/i;->f:I

    invoke-direct {p0, p1, p2}, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->a(Landroidx/recyclerview/widget/RecyclerView$p;I)V

    goto :goto_2

    .line 1753
    :cond_2
    iget v0, p2, Landroidx/recyclerview/widget/i;->e:I

    if-ne v0, v1, :cond_4

    .line 1755
    iget v0, p2, Landroidx/recyclerview/widget/i;->f:I

    iget v1, p2, Landroidx/recyclerview/widget/i;->f:I

    invoke-direct {p0, v1}, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->g(I)I

    move-result v1

    sub-int/2addr v0, v1

    if-gez v0, :cond_3

    .line 1758
    iget p2, p2, Landroidx/recyclerview/widget/i;->g:I

    goto :goto_0

    .line 1760
    :cond_3
    iget v1, p2, Landroidx/recyclerview/widget/i;->g:I

    iget p2, p2, Landroidx/recyclerview/widget/i;->b:I

    invoke-static {v0, p2}, Ljava/lang/Math;->min(II)I

    move-result p2

    sub-int p2, v1, p2

    .line 1762
    :goto_0
    invoke-direct {p0, p1, p2}, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->b(Landroidx/recyclerview/widget/RecyclerView$p;I)V

    goto :goto_2

    .line 1765
    :cond_4
    iget v0, p2, Landroidx/recyclerview/widget/i;->g:I

    invoke-direct {p0, v0}, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->j(I)I

    move-result v0

    iget v1, p2, Landroidx/recyclerview/widget/i;->g:I

    sub-int/2addr v0, v1

    if-gez v0, :cond_5

    .line 1768
    iget p2, p2, Landroidx/recyclerview/widget/i;->f:I

    goto :goto_1

    .line 1770
    :cond_5
    iget v1, p2, Landroidx/recyclerview/widget/i;->f:I

    iget p2, p2, Landroidx/recyclerview/widget/i;->b:I

    invoke-static {v0, p2}, Ljava/lang/Math;->min(II)I

    move-result p2

    add-int/2addr p2, v1

    .line 1772
    :goto_1
    invoke-direct {p0, p1, p2}, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->a(Landroidx/recyclerview/widget/RecyclerView$p;I)V

    :cond_6
    :goto_2
    return-void
.end method

.method private a(Landroidx/recyclerview/widget/StaggeredGridLayoutManager$a;)V
    .locals 3

    .line 794
    iget-object v0, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->q:Landroidx/recyclerview/widget/StaggeredGridLayoutManager$SavedState;

    iget v0, v0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$SavedState;->mSpanOffsetsSize:I

    if-lez v0, :cond_3

    .line 795
    iget-object v0, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->q:Landroidx/recyclerview/widget/StaggeredGridLayoutManager$SavedState;

    iget v0, v0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$SavedState;->mSpanOffsetsSize:I

    iget v1, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->i:I

    if-ne v0, v1, :cond_2

    const/4 v0, 0x0

    .line 796
    :goto_0
    iget v1, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->i:I

    if-ge v0, v1, :cond_3

    .line 797
    iget-object v1, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->a:[Landroidx/recyclerview/widget/StaggeredGridLayoutManager$c;

    aget-object v1, v1, v0

    invoke-virtual {v1}, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$c;->e()V

    .line 798
    iget-object v1, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->q:Landroidx/recyclerview/widget/StaggeredGridLayoutManager$SavedState;

    iget-object v1, v1, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$SavedState;->mSpanOffsets:[I

    aget v1, v1, v0

    const/high16 v2, -0x80000000

    if-eq v1, v2, :cond_1

    .line 800
    iget-object v2, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->q:Landroidx/recyclerview/widget/StaggeredGridLayoutManager$SavedState;

    iget-boolean v2, v2, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$SavedState;->mAnchorLayoutFromEnd:Z

    if-eqz v2, :cond_0

    .line 801
    iget-object v2, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->b:Landroidx/recyclerview/widget/n;

    invoke-virtual {v2}, Landroidx/recyclerview/widget/n;->e()I

    move-result v2

    goto :goto_1

    .line 803
    :cond_0
    iget-object v2, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->b:Landroidx/recyclerview/widget/n;

    invoke-virtual {v2}, Landroidx/recyclerview/widget/n;->d()I

    move-result v2

    :goto_1
    add-int/2addr v1, v2

    .line 806
    :cond_1
    iget-object v2, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->a:[Landroidx/recyclerview/widget/StaggeredGridLayoutManager$c;

    aget-object v2, v2, v0

    invoke-virtual {v2, v1}, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$c;->c(I)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 809
    :cond_2
    iget-object v0, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->q:Landroidx/recyclerview/widget/StaggeredGridLayoutManager$SavedState;

    invoke-virtual {v0}, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$SavedState;->invalidateSpanInfo()V

    .line 810
    iget-object v0, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->q:Landroidx/recyclerview/widget/StaggeredGridLayoutManager$SavedState;

    iget v1, v0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$SavedState;->mVisibleAnchorPosition:I

    iput v1, v0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$SavedState;->mAnchorPosition:I

    .line 813
    :cond_3
    iget-object v0, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->q:Landroidx/recyclerview/widget/StaggeredGridLayoutManager$SavedState;

    iget-boolean v0, v0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$SavedState;->mLastLayoutRTL:Z

    iput-boolean v0, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->p:Z

    .line 814
    iget-object v0, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->q:Landroidx/recyclerview/widget/StaggeredGridLayoutManager$SavedState;

    iget-boolean v0, v0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$SavedState;->mReverseLayout:Z

    invoke-virtual {p0, v0}, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->a(Z)V

    .line 815
    invoke-direct {p0}, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->k()V

    .line 817
    iget-object v0, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->q:Landroidx/recyclerview/widget/StaggeredGridLayoutManager$SavedState;

    iget v0, v0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$SavedState;->mAnchorPosition:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_4

    .line 818
    iget-object v0, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->q:Landroidx/recyclerview/widget/StaggeredGridLayoutManager$SavedState;

    iget v0, v0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$SavedState;->mAnchorPosition:I

    iput v0, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->f:I

    .line 819
    iget-object v0, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->q:Landroidx/recyclerview/widget/StaggeredGridLayoutManager$SavedState;

    iget-boolean v0, v0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$SavedState;->mAnchorLayoutFromEnd:Z

    iput-boolean v0, p1, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$a;->c:Z

    goto :goto_2

    .line 821
    :cond_4
    iget-boolean v0, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->e:Z

    iput-boolean v0, p1, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$a;->c:Z

    .line 823
    :goto_2
    iget-object p1, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->q:Landroidx/recyclerview/widget/StaggeredGridLayoutManager$SavedState;

    iget p1, p1, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$SavedState;->mSpanLookupSize:I

    const/4 v0, 0x1

    if-le p1, v0, :cond_5

    .line 824
    iget-object p1, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->h:Landroidx/recyclerview/widget/StaggeredGridLayoutManager$LazySpanLookup;

    iget-object v0, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->q:Landroidx/recyclerview/widget/StaggeredGridLayoutManager$SavedState;

    iget-object v0, v0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$SavedState;->mSpanLookup:[I

    iput-object v0, p1, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$LazySpanLookup;->a:[I

    .line 825
    iget-object p1, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->h:Landroidx/recyclerview/widget/StaggeredGridLayoutManager$LazySpanLookup;

    iget-object p0, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->q:Landroidx/recyclerview/widget/StaggeredGridLayoutManager$SavedState;

    iget-object p0, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$SavedState;->mFullSpanItems:Ljava/util/List;

    iput-object p0, p1, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$LazySpanLookup;->b:Ljava/util/List;

    :cond_5
    return-void
.end method

.method private a(Landroidx/recyclerview/widget/StaggeredGridLayoutManager$c;II)V
    .locals 3

    .line 1802
    invoke-virtual {p1}, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$c;->i()I

    move-result v0

    const/4 v1, 0x0

    const/4 v2, -0x1

    if-ne p2, v2, :cond_0

    .line 1804
    invoke-virtual {p1}, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$c;->b()I

    move-result p2

    add-int/2addr p2, v0

    if-gt p2, p3, :cond_1

    .line 1806
    iget-object p0, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->m:Ljava/util/BitSet;

    iget p1, p1, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$c;->e:I

    invoke-virtual {p0, p1, v1}, Ljava/util/BitSet;->set(IZ)V

    goto :goto_0

    .line 1809
    :cond_0
    invoke-virtual {p1}, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$c;->d()I

    move-result p2

    sub-int/2addr p2, v0

    if-lt p2, p3, :cond_1

    .line 1811
    iget-object p0, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->m:Ljava/util/BitSet;

    iget p1, p1, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$c;->e:I

    invoke-virtual {p0, p1, v1}, Ljava/util/BitSet;->set(IZ)V

    :cond_1
    :goto_0
    return-void
.end method

.method private a(Landroidx/recyclerview/widget/StaggeredGridLayoutManager$c;)Z
    .locals 2

    .line 402
    iget-boolean v0, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->e:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 403
    invoke-virtual {p1}, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$c;->d()I

    move-result v0

    iget-object p0, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->b:Landroidx/recyclerview/widget/n;

    invoke-virtual {p0}, Landroidx/recyclerview/widget/n;->e()I

    move-result p0

    if-ge v0, p0, :cond_1

    .line 405
    iget-object p0, p1, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$c;->a:Ljava/util/ArrayList;

    iget-object v0, p1, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$c;->a:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    invoke-virtual {p0, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/view/View;

    .line 406
    invoke-virtual {p1, p0}, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$c;->c(Landroid/view/View;)Landroidx/recyclerview/widget/StaggeredGridLayoutManager$b;

    move-result-object p0

    .line 407
    iget-boolean p0, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$b;->b:Z

    xor-int/lit8 p0, p0, 0x1

    return p0

    .line 409
    :cond_0
    invoke-virtual {p1}, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$c;->b()I

    move-result v0

    iget-object p0, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->b:Landroidx/recyclerview/widget/n;

    invoke-virtual {p0}, Landroidx/recyclerview/widget/n;->d()I

    move-result p0

    if-le v0, p0, :cond_1

    .line 411
    iget-object p0, p1, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$c;->a:Ljava/util/ArrayList;

    invoke-virtual {p0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/view/View;

    .line 412
    invoke-virtual {p1, p0}, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$c;->c(Landroid/view/View;)Landroidx/recyclerview/widget/StaggeredGridLayoutManager$b;

    move-result-object p0

    .line 413
    iget-boolean p0, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$b;->b:Z

    xor-int/lit8 p0, p0, 0x1

    return p0

    :cond_1
    return v1
.end method

.method private b(Landroidx/recyclerview/widget/RecyclerView$t;)I
    .locals 6

    .line 1100
    invoke-virtual {p0}, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->getChildCount()I

    move-result v0

    if-nez v0, :cond_0

    const/4 p0, 0x0

    return p0

    .line 1103
    :cond_0
    iget-object v1, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->b:Landroidx/recyclerview/widget/n;

    iget-boolean v0, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->v:Z

    xor-int/lit8 v0, v0, 0x1

    .line 1104
    invoke-virtual {p0, v0}, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->b(Z)Landroid/view/View;

    move-result-object v2

    iget-boolean v0, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->v:Z

    xor-int/lit8 v0, v0, 0x1

    .line 1105
    invoke-virtual {p0, v0}, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->c(Z)Landroid/view/View;

    move-result-object v3

    iget-boolean v5, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->v:Z

    move-object v0, p1

    move-object v4, p0

    .line 1103
    invoke-static/range {v0 .. v5}, Landroidx/recyclerview/widget/q;->a(Landroidx/recyclerview/widget/RecyclerView$t;Landroidx/recyclerview/widget/n;Landroid/view/View;Landroid/view/View;Landroidx/recyclerview/widget/RecyclerView$i;Z)I

    move-result p0

    return p0
.end method

.method private b(III)V
    .locals 6

    .line 1505
    iget-boolean v0, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->e:Z

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->h()I

    move-result v0

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->i()I

    move-result v0

    :goto_0
    const/16 v1, 0x8

    if-ne p3, v1, :cond_2

    if-ge p1, p2, :cond_1

    add-int/lit8 v2, p2, 0x1

    goto :goto_1

    :cond_1
    add-int/lit8 v2, p1, 0x1

    move v3, v2

    move v2, p2

    goto :goto_2

    :cond_2
    add-int v2, p1, p2

    :goto_1
    move v3, v2

    move v2, p1

    .line 1522
    :goto_2
    iget-object v4, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->h:Landroidx/recyclerview/widget/StaggeredGridLayoutManager$LazySpanLookup;

    invoke-virtual {v4, v2}, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$LazySpanLookup;->b(I)I

    const/4 v4, 0x1

    if-eq p3, v4, :cond_5

    const/4 v5, 0x2

    if-eq p3, v5, :cond_4

    if-eq p3, v1, :cond_3

    goto :goto_3

    .line 1532
    :cond_3
    iget-object p3, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->h:Landroidx/recyclerview/widget/StaggeredGridLayoutManager$LazySpanLookup;

    invoke-virtual {p3, p1, v4}, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$LazySpanLookup;->a(II)V

    .line 1533
    iget-object p1, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->h:Landroidx/recyclerview/widget/StaggeredGridLayoutManager$LazySpanLookup;

    invoke-virtual {p1, p2, v4}, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$LazySpanLookup;->b(II)V

    goto :goto_3

    .line 1528
    :cond_4
    iget-object p3, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->h:Landroidx/recyclerview/widget/StaggeredGridLayoutManager$LazySpanLookup;

    invoke-virtual {p3, p1, p2}, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$LazySpanLookup;->a(II)V

    goto :goto_3

    .line 1525
    :cond_5
    iget-object p3, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->h:Landroidx/recyclerview/widget/StaggeredGridLayoutManager$LazySpanLookup;

    invoke-virtual {p3, p1, p2}, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$LazySpanLookup;->b(II)V

    :goto_3
    if-gt v3, v0, :cond_6

    return-void

    .line 1541
    :cond_6
    iget-boolean p1, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->e:Z

    if-eqz p1, :cond_7

    invoke-virtual {p0}, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->i()I

    move-result p1

    goto :goto_4

    :cond_7
    invoke-virtual {p0}, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->h()I

    move-result p1

    :goto_4
    if-gt v2, p1, :cond_8

    .line 1543
    invoke-virtual {p0}, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->requestLayout()V

    :cond_8
    return-void
.end method

.method private b(ILandroidx/recyclerview/widget/RecyclerView$t;)V
    .locals 4

    .line 1422
    iget-object v0, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->l:Landroidx/recyclerview/widget/i;

    const/4 v1, 0x0

    iput v1, v0, Landroidx/recyclerview/widget/i;->b:I

    .line 1423
    iput p1, v0, Landroidx/recyclerview/widget/i;->c:I

    .line 1426
    invoke-virtual {p0}, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->isSmoothScrolling()Z

    move-result v0

    const/4 v2, 0x1

    if-eqz v0, :cond_2

    .line 1427
    invoke-virtual {p2}, Landroidx/recyclerview/widget/RecyclerView$t;->c()I

    move-result p2

    const/4 v0, -0x1

    if-eq p2, v0, :cond_2

    .line 1429
    iget-boolean v0, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->e:Z

    if-ge p2, p1, :cond_0

    move p1, v2

    goto :goto_0

    :cond_0
    move p1, v1

    :goto_0
    if-ne v0, p1, :cond_1

    .line 1430
    iget-object p1, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->b:Landroidx/recyclerview/widget/n;

    invoke-virtual {p1}, Landroidx/recyclerview/widget/n;->g()I

    move-result p1

    move p2, v1

    goto :goto_1

    .line 1432
    :cond_1
    iget-object p1, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->b:Landroidx/recyclerview/widget/n;

    invoke-virtual {p1}, Landroidx/recyclerview/widget/n;->g()I

    move-result p1

    move p2, p1

    move p1, v1

    goto :goto_1

    :cond_2
    move p1, v1

    move p2, p1

    .line 1438
    :goto_1
    invoke-virtual {p0}, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->getClipToPadding()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 1440
    iget-object v0, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->l:Landroidx/recyclerview/widget/i;

    iget-object v3, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->b:Landroidx/recyclerview/widget/n;

    invoke-virtual {v3}, Landroidx/recyclerview/widget/n;->d()I

    move-result v3

    sub-int/2addr v3, p2

    iput v3, v0, Landroidx/recyclerview/widget/i;->f:I

    .line 1441
    iget-object p2, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->l:Landroidx/recyclerview/widget/i;

    iget-object v0, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->b:Landroidx/recyclerview/widget/n;

    invoke-virtual {v0}, Landroidx/recyclerview/widget/n;->e()I

    move-result v0

    add-int/2addr v0, p1

    iput v0, p2, Landroidx/recyclerview/widget/i;->g:I

    goto :goto_2

    .line 1443
    :cond_3
    iget-object v0, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->l:Landroidx/recyclerview/widget/i;

    iget-object v3, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->b:Landroidx/recyclerview/widget/n;

    invoke-virtual {v3}, Landroidx/recyclerview/widget/n;->f()I

    move-result v3

    add-int/2addr v3, p1

    iput v3, v0, Landroidx/recyclerview/widget/i;->g:I

    .line 1444
    iget-object p1, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->l:Landroidx/recyclerview/widget/i;

    neg-int p2, p2

    iput p2, p1, Landroidx/recyclerview/widget/i;->f:I

    .line 1446
    :goto_2
    iget-object p1, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->l:Landroidx/recyclerview/widget/i;

    iput-boolean v1, p1, Landroidx/recyclerview/widget/i;->h:Z

    .line 1447
    iput-boolean v2, p1, Landroidx/recyclerview/widget/i;->a:Z

    .line 1448
    iget-object p2, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->b:Landroidx/recyclerview/widget/n;

    invoke-virtual {p2}, Landroidx/recyclerview/widget/n;->i()I

    move-result p2

    if-nez p2, :cond_4

    iget-object p0, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->b:Landroidx/recyclerview/widget/n;

    .line 1449
    invoke-virtual {p0}, Landroidx/recyclerview/widget/n;->f()I

    move-result p0

    if-nez p0, :cond_4

    move v1, v2

    :cond_4
    iput-boolean v1, p1, Landroidx/recyclerview/widget/i;->i:Z

    return-void
.end method

.method private b(Landroid/view/View;)V
    .locals 2

    .line 1787
    iget v0, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->i:I

    add-int/lit8 v0, v0, -0x1

    :goto_0
    if-ltz v0, :cond_0

    .line 1788
    iget-object v1, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->a:[Landroidx/recyclerview/widget/StaggeredGridLayoutManager$c;

    aget-object v1, v1, v0

    invoke-virtual {v1, p1}, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$c;->a(Landroid/view/View;)V

    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method private b(Landroidx/recyclerview/widget/RecyclerView$p;I)V
    .locals 6

    .line 1910
    invoke-virtual {p0}, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->getChildCount()I

    move-result v0

    const/4 v1, 0x1

    sub-int/2addr v0, v1

    :goto_0
    if-ltz v0, :cond_5

    .line 1913
    invoke-virtual {p0, v0}, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    .line 1914
    iget-object v3, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->b:Landroidx/recyclerview/widget/n;

    invoke-virtual {v3, v2}, Landroidx/recyclerview/widget/n;->a(Landroid/view/View;)I

    move-result v3

    if-lt v3, p2, :cond_5

    iget-object v3, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->b:Landroidx/recyclerview/widget/n;

    .line 1915
    invoke-virtual {v3, v2}, Landroidx/recyclerview/widget/n;->d(Landroid/view/View;)I

    move-result v3

    if-lt v3, p2, :cond_5

    .line 1916
    invoke-virtual {v2}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v3

    check-cast v3, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$b;

    .line 1918
    iget-boolean v4, v3, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$b;->b:Z

    if-eqz v4, :cond_2

    const/4 v3, 0x0

    move v4, v3

    .line 1919
    :goto_1
    iget v5, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->i:I

    if-ge v4, v5, :cond_1

    .line 1920
    iget-object v5, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->a:[Landroidx/recyclerview/widget/StaggeredGridLayoutManager$c;

    aget-object v5, v5, v4

    iget-object v5, v5, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$c;->a:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v5

    if-ne v5, v1, :cond_0

    return-void

    :cond_0
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    .line 1924
    :cond_1
    :goto_2
    iget v4, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->i:I

    if-ge v3, v4, :cond_4

    .line 1925
    iget-object v4, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->a:[Landroidx/recyclerview/widget/StaggeredGridLayoutManager$c;

    aget-object v4, v4, v3

    invoke-virtual {v4}, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$c;->g()V

    add-int/lit8 v3, v3, 0x1

    goto :goto_2

    .line 1928
    :cond_2
    iget-object v4, v3, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$b;->a:Landroidx/recyclerview/widget/StaggeredGridLayoutManager$c;

    iget-object v4, v4, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$c;->a:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-ne v4, v1, :cond_3

    return-void

    .line 1931
    :cond_3
    iget-object v3, v3, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$b;->a:Landroidx/recyclerview/widget/StaggeredGridLayoutManager$c;

    invoke-virtual {v3}, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$c;->g()V

    .line 1933
    :cond_4
    invoke-virtual {p0, v2, p1}, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->removeAndRecycleView(Landroid/view/View;Landroidx/recyclerview/widget/RecyclerView$p;)V

    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    :cond_5
    return-void
.end method

.method private b(Landroidx/recyclerview/widget/RecyclerView$p;Landroidx/recyclerview/widget/RecyclerView$t;Z)V
    .locals 2

    const/high16 v0, -0x80000000

    .line 1385
    invoke-direct {p0, v0}, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->i(I)I

    move-result v1

    if-ne v1, v0, :cond_0

    return-void

    .line 1389
    :cond_0
    iget-object v0, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->b:Landroidx/recyclerview/widget/n;

    invoke-virtual {v0}, Landroidx/recyclerview/widget/n;->e()I

    move-result v0

    sub-int/2addr v0, v1

    if-lez v0, :cond_1

    neg-int v1, v0

    .line 1392
    invoke-virtual {p0, v1, p1, p2}, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->a(ILandroidx/recyclerview/widget/RecyclerView$p;Landroidx/recyclerview/widget/RecyclerView$t;)I

    move-result p1

    neg-int p1, p1

    sub-int/2addr v0, p1

    if-eqz p3, :cond_1

    if-lez v0, :cond_1

    .line 1398
    iget-object p0, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->b:Landroidx/recyclerview/widget/n;

    invoke-virtual {p0, v0}, Landroidx/recyclerview/widget/n;->a(I)V

    :cond_1
    return-void
.end method

.method private c(Landroidx/recyclerview/widget/RecyclerView$t;)I
    .locals 6

    .line 1120
    invoke-virtual {p0}, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->getChildCount()I

    move-result v0

    if-nez v0, :cond_0

    const/4 p0, 0x0

    return p0

    .line 1123
    :cond_0
    iget-object v1, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->b:Landroidx/recyclerview/widget/n;

    iget-boolean v0, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->v:Z

    xor-int/lit8 v0, v0, 0x1

    .line 1124
    invoke-virtual {p0, v0}, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->b(Z)Landroid/view/View;

    move-result-object v2

    iget-boolean v0, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->v:Z

    xor-int/lit8 v0, v0, 0x1

    .line 1125
    invoke-virtual {p0, v0}, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->c(Z)Landroid/view/View;

    move-result-object v3

    iget-boolean v5, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->v:Z

    move-object v0, p1

    move-object v4, p0

    .line 1123
    invoke-static/range {v0 .. v5}, Landroidx/recyclerview/widget/q;->b(Landroidx/recyclerview/widget/RecyclerView$t;Landroidx/recyclerview/widget/n;Landroid/view/View;Landroid/view/View;Landroidx/recyclerview/widget/RecyclerView$i;Z)I

    move-result p0

    return p0
.end method

.method private c(Landroidx/recyclerview/widget/RecyclerView$p;Landroidx/recyclerview/widget/RecyclerView$t;Z)V
    .locals 2

    const v0, 0x7fffffff

    .line 1404
    invoke-direct {p0, v0}, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->h(I)I

    move-result v1

    if-ne v1, v0, :cond_0

    return-void

    .line 1408
    :cond_0
    iget-object v0, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->b:Landroidx/recyclerview/widget/n;

    invoke-virtual {v0}, Landroidx/recyclerview/widget/n;->d()I

    move-result v0

    sub-int/2addr v1, v0

    if-lez v1, :cond_1

    .line 1411
    invoke-virtual {p0, v1, p1, p2}, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->a(ILandroidx/recyclerview/widget/RecyclerView$p;Landroidx/recyclerview/widget/RecyclerView$t;)I

    move-result p1

    sub-int/2addr v1, p1

    if-eqz p3, :cond_1

    if-lez v1, :cond_1

    .line 1417
    iget-object p0, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->b:Landroidx/recyclerview/widget/n;

    neg-int p1, v1

    invoke-virtual {p0, p1}, Landroidx/recyclerview/widget/n;->a(I)V

    :cond_1
    return-void
.end method

.method private c(Landroidx/recyclerview/widget/RecyclerView$t;Landroidx/recyclerview/widget/StaggeredGridLayoutManager$a;)Z
    .locals 1

    .line 848
    iget-boolean v0, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->o:Z

    if-eqz v0, :cond_0

    .line 849
    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView$t;->e()I

    move-result p1

    invoke-direct {p0, p1}, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->n(I)I

    move-result p0

    goto :goto_0

    .line 850
    :cond_0
    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView$t;->e()I

    move-result p1

    invoke-direct {p0, p1}, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->m(I)I

    move-result p0

    :goto_0
    iput p0, p2, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$a;->a:I

    const/high16 p0, -0x80000000

    .line 851
    iput p0, p2, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$a;->b:I

    const/4 p0, 0x1

    return p0
.end method

.method private d(I)V
    .locals 3

    .line 1453
    iget-object v0, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->l:Landroidx/recyclerview/widget/i;

    iput p1, v0, Landroidx/recyclerview/widget/i;->e:I

    .line 1454
    iget-boolean p0, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->e:Z

    const/4 v1, 0x1

    const/4 v2, -0x1

    if-ne p1, v2, :cond_0

    move p1, v1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    if-ne p0, p1, :cond_1

    goto :goto_1

    :cond_1
    move v1, v2

    .line 1455
    :goto_1
    iput v1, v0, Landroidx/recyclerview/widget/i;->d:I

    return-void
.end method

.method private e(I)Landroidx/recyclerview/widget/StaggeredGridLayoutManager$LazySpanLookup$FullSpanItem;
    .locals 4

    .line 1706
    new-instance v0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$LazySpanLookup$FullSpanItem;

    invoke-direct {v0}, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$LazySpanLookup$FullSpanItem;-><init>()V

    .line 1707
    iget v1, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->i:I

    new-array v1, v1, [I

    iput-object v1, v0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$LazySpanLookup$FullSpanItem;->mGapPerSpan:[I

    const/4 v1, 0x0

    .line 1708
    :goto_0
    iget v2, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->i:I

    if-ge v1, v2, :cond_0

    .line 1709
    iget-object v2, v0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$LazySpanLookup$FullSpanItem;->mGapPerSpan:[I

    iget-object v3, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->a:[Landroidx/recyclerview/widget/StaggeredGridLayoutManager$c;

    aget-object v3, v3, v1

    invoke-virtual {v3, p1}, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$c;->b(I)I

    move-result v3

    sub-int v3, p1, v3

    aput v3, v2, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-object v0
.end method

.method private f(I)Landroidx/recyclerview/widget/StaggeredGridLayoutManager$LazySpanLookup$FullSpanItem;
    .locals 4

    .line 1715
    new-instance v0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$LazySpanLookup$FullSpanItem;

    invoke-direct {v0}, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$LazySpanLookup$FullSpanItem;-><init>()V

    .line 1716
    iget v1, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->i:I

    new-array v1, v1, [I

    iput-object v1, v0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$LazySpanLookup$FullSpanItem;->mGapPerSpan:[I

    const/4 v1, 0x0

    .line 1717
    :goto_0
    iget v2, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->i:I

    if-ge v1, v2, :cond_0

    .line 1718
    iget-object v2, v0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$LazySpanLookup$FullSpanItem;->mGapPerSpan:[I

    iget-object v3, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->a:[Landroidx/recyclerview/widget/StaggeredGridLayoutManager$c;

    aget-object v3, v3, v1

    invoke-virtual {v3, p1}, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$c;->a(I)I

    move-result v3

    sub-int/2addr v3, p1

    aput v3, v2, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-object v0
.end method

.method private g(I)I
    .locals 3

    .line 1817
    iget-object v0, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->a:[Landroidx/recyclerview/widget/StaggeredGridLayoutManager$c;

    const/4 v1, 0x0

    aget-object v0, v0, v1

    invoke-virtual {v0, p1}, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$c;->a(I)I

    move-result v0

    const/4 v1, 0x1

    .line 1818
    :goto_0
    iget v2, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->i:I

    if-ge v1, v2, :cond_1

    .line 1819
    iget-object v2, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->a:[Landroidx/recyclerview/widget/StaggeredGridLayoutManager$c;

    aget-object v2, v2, v1

    invoke-virtual {v2, p1}, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$c;->a(I)I

    move-result v2

    if-le v2, v0, :cond_0

    move v0, v2

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    return v0
.end method

.method private h(I)I
    .locals 3

    .line 1828
    iget-object v0, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->a:[Landroidx/recyclerview/widget/StaggeredGridLayoutManager$c;

    const/4 v1, 0x0

    aget-object v0, v0, v1

    invoke-virtual {v0, p1}, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$c;->a(I)I

    move-result v0

    const/4 v1, 0x1

    .line 1829
    :goto_0
    iget v2, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->i:I

    if-ge v1, v2, :cond_1

    .line 1830
    iget-object v2, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->a:[Landroidx/recyclerview/widget/StaggeredGridLayoutManager$c;

    aget-object v2, v2, v1

    invoke-virtual {v2, p1}, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$c;->a(I)I

    move-result v2

    if-ge v2, v0, :cond_0

    move v0, v2

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    return v0
.end method

.method private i(I)I
    .locals 3

    .line 1859
    iget-object v0, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->a:[Landroidx/recyclerview/widget/StaggeredGridLayoutManager$c;

    const/4 v1, 0x0

    aget-object v0, v0, v1

    invoke-virtual {v0, p1}, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$c;->b(I)I

    move-result v0

    const/4 v1, 0x1

    .line 1860
    :goto_0
    iget v2, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->i:I

    if-ge v1, v2, :cond_1

    .line 1861
    iget-object v2, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->a:[Landroidx/recyclerview/widget/StaggeredGridLayoutManager$c;

    aget-object v2, v2, v1

    invoke-virtual {v2, p1}, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$c;->b(I)I

    move-result v2

    if-le v2, v0, :cond_0

    move v0, v2

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    return v0
.end method

.method private j(I)I
    .locals 3

    .line 1870
    iget-object v0, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->a:[Landroidx/recyclerview/widget/StaggeredGridLayoutManager$c;

    const/4 v1, 0x0

    aget-object v0, v0, v1

    invoke-virtual {v0, p1}, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$c;->b(I)I

    move-result v0

    const/4 v1, 0x1

    .line 1871
    :goto_0
    iget v2, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->i:I

    if-ge v1, v2, :cond_1

    .line 1872
    iget-object v2, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->a:[Landroidx/recyclerview/widget/StaggeredGridLayoutManager$c;

    aget-object v2, v2, v1

    invoke-virtual {v2, p1}, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$c;->b(I)I

    move-result v2

    if-ge v2, v0, :cond_0

    move v0, v2

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    return v0
.end method

.method private j()V
    .locals 1

    .line 257
    iget v0, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->j:I

    invoke-static {p0, v0}, Landroidx/recyclerview/widget/n;->a(Landroidx/recyclerview/widget/RecyclerView$i;I)Landroidx/recyclerview/widget/n;

    move-result-object v0

    iput-object v0, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->b:Landroidx/recyclerview/widget/n;

    .line 258
    iget v0, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->j:I

    rsub-int/lit8 v0, v0, 0x1

    .line 259
    invoke-static {p0, v0}, Landroidx/recyclerview/widget/n;->a(Landroidx/recyclerview/widget/RecyclerView$i;I)Landroidx/recyclerview/widget/n;

    move-result-object v0

    iput-object v0, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->c:Landroidx/recyclerview/widget/n;

    return-void
.end method

.method private k()V
    .locals 2

    .line 559
    iget v0, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->j:I

    const/4 v1, 0x1

    if-eq v0, v1, :cond_1

    invoke-virtual {p0}, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->d()Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    .line 562
    :cond_0
    iget-boolean v0, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->d:Z

    xor-int/2addr v0, v1

    iput-boolean v0, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->e:Z

    goto :goto_1

    .line 560
    :cond_1
    :goto_0
    iget-boolean v0, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->d:Z

    iput-boolean v0, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->e:Z

    :goto_1
    return-void
.end method

.method private k(I)Z
    .locals 4

    .line 1944
    iget v0, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->j:I

    const/4 v1, -0x1

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-nez v0, :cond_2

    if-ne p1, v1, :cond_0

    move p1, v2

    goto :goto_0

    :cond_0
    move p1, v3

    .line 1945
    :goto_0
    iget-boolean p0, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->e:Z

    if-eq p1, p0, :cond_1

    goto :goto_1

    :cond_1
    move v2, v3

    :goto_1
    return v2

    :cond_2
    if-ne p1, v1, :cond_3

    move p1, v2

    goto :goto_2

    :cond_3
    move p1, v3

    .line 1947
    :goto_2
    iget-boolean v0, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->e:Z

    if-ne p1, v0, :cond_4

    move p1, v2

    goto :goto_3

    :cond_4
    move p1, v3

    :goto_3
    invoke-virtual {p0}, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->d()Z

    move-result p0

    if-ne p1, p0, :cond_5

    goto :goto_4

    :cond_5
    move v2, v3

    :goto_4
    return v2
.end method

.method private l(I)I
    .locals 3

    .line 2017
    invoke-virtual {p0}, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->getChildCount()I

    move-result v0

    const/4 v1, -0x1

    const/4 v2, 0x1

    if-nez v0, :cond_1

    .line 2018
    iget-boolean p0, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->e:Z

    if-eqz p0, :cond_0

    move v1, v2

    :cond_0
    return v1

    .line 2020
    :cond_1
    invoke-virtual {p0}, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->i()I

    move-result v0

    if-ge p1, v0, :cond_2

    move p1, v2

    goto :goto_0

    :cond_2
    const/4 p1, 0x0

    .line 2021
    :goto_0
    iget-boolean p0, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->e:Z

    if-eq p1, p0, :cond_3

    goto :goto_1

    :cond_3
    move v1, v2

    :goto_1
    return v1
.end method

.method private l()V
    .locals 8

    .line 742
    iget-object v0, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->c:Landroidx/recyclerview/widget/n;

    invoke-virtual {v0}, Landroidx/recyclerview/widget/n;->i()I

    move-result v0

    const/high16 v1, 0x40000000    # 2.0f

    if-ne v0, v1, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x0

    .line 746
    invoke-virtual {p0}, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->getChildCount()I

    move-result v1

    const/4 v2, 0x0

    move v3, v0

    move v0, v2

    :goto_0
    if-ge v0, v1, :cond_3

    .line 748
    invoke-virtual {p0, v0}, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->getChildAt(I)Landroid/view/View;

    move-result-object v4

    .line 749
    iget-object v5, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->c:Landroidx/recyclerview/widget/n;

    invoke-virtual {v5, v4}, Landroidx/recyclerview/widget/n;->e(Landroid/view/View;)I

    move-result v5

    int-to-float v5, v5

    cmpg-float v6, v5, v3

    if-gez v6, :cond_1

    goto :goto_1

    .line 753
    :cond_1
    invoke-virtual {v4}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v4

    check-cast v4, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$b;

    .line 754
    invoke-virtual {v4}, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$b;->a()Z

    move-result v4

    if-eqz v4, :cond_2

    const/high16 v4, 0x3f800000    # 1.0f

    mul-float/2addr v5, v4

    .line 755
    iget v4, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->i:I

    int-to-float v4, v4

    div-float/2addr v5, v4

    .line 757
    :cond_2
    invoke-static {v3, v5}, Ljava/lang/Math;->max(FF)F

    move-result v3

    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 759
    :cond_3
    iget v0, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->k:I

    .line 760
    iget v4, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->i:I

    int-to-float v4, v4

    mul-float/2addr v3, v4

    invoke-static {v3}, Ljava/lang/Math;->round(F)I

    move-result v3

    .line 761
    iget-object v4, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->c:Landroidx/recyclerview/widget/n;

    invoke-virtual {v4}, Landroidx/recyclerview/widget/n;->i()I

    move-result v4

    const/high16 v5, -0x80000000

    if-ne v4, v5, :cond_4

    .line 762
    iget-object v4, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->c:Landroidx/recyclerview/widget/n;

    invoke-virtual {v4}, Landroidx/recyclerview/widget/n;->g()I

    move-result v4

    invoke-static {v3, v4}, Ljava/lang/Math;->min(II)I

    move-result v3

    .line 764
    :cond_4
    invoke-virtual {p0, v3}, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->c(I)V

    .line 765
    iget v3, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->k:I

    if-ne v3, v0, :cond_5

    return-void

    :cond_5
    :goto_2
    if-ge v2, v1, :cond_9

    .line 769
    invoke-virtual {p0, v2}, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    .line 770
    invoke-virtual {v3}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v4

    check-cast v4, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$b;

    .line 771
    iget-boolean v5, v4, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$b;->b:Z

    if-eqz v5, :cond_6

    goto :goto_3

    .line 774
    :cond_6
    invoke-virtual {p0}, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->d()Z

    move-result v5

    const/4 v6, 0x1

    if-eqz v5, :cond_7

    iget v5, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->j:I

    if-ne v5, v6, :cond_7

    .line 775
    iget v5, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->i:I

    sub-int/2addr v5, v6

    iget-object v7, v4, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$b;->a:Landroidx/recyclerview/widget/StaggeredGridLayoutManager$c;

    iget v7, v7, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$c;->e:I

    sub-int/2addr v5, v7

    neg-int v5, v5

    iget v7, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->k:I

    mul-int/2addr v5, v7

    .line 776
    iget v7, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->i:I

    sub-int/2addr v7, v6

    iget-object v4, v4, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$b;->a:Landroidx/recyclerview/widget/StaggeredGridLayoutManager$c;

    iget v4, v4, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$c;->e:I

    sub-int/2addr v7, v4

    neg-int v4, v7

    mul-int/2addr v4, v0

    sub-int/2addr v5, v4

    .line 777
    invoke-virtual {v3, v5}, Landroid/view/View;->offsetLeftAndRight(I)V

    goto :goto_3

    .line 779
    :cond_7
    iget-object v5, v4, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$b;->a:Landroidx/recyclerview/widget/StaggeredGridLayoutManager$c;

    iget v5, v5, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$c;->e:I

    iget v7, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->k:I

    mul-int/2addr v5, v7

    .line 780
    iget-object v4, v4, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$b;->a:Landroidx/recyclerview/widget/StaggeredGridLayoutManager$c;

    iget v4, v4, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$c;->e:I

    mul-int/2addr v4, v0

    .line 781
    iget v7, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->j:I

    if-ne v7, v6, :cond_8

    sub-int/2addr v5, v4

    .line 782
    invoke-virtual {v3, v5}, Landroid/view/View;->offsetLeftAndRight(I)V

    goto :goto_3

    :cond_8
    sub-int/2addr v5, v4

    .line 784
    invoke-virtual {v3, v5}, Landroid/view/View;->offsetTopAndBottom(I)V

    :goto_3
    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    :cond_9
    return-void
.end method

.method private m(I)I
    .locals 4

    .line 2192
    invoke-virtual {p0}, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->getChildCount()I

    move-result v0

    const/4 v1, 0x0

    move v2, v1

    :goto_0
    if-ge v2, v0, :cond_1

    .line 2194
    invoke-virtual {p0, v2}, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    .line 2195
    invoke-virtual {p0, v3}, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->getPosition(Landroid/view/View;)I

    move-result v3

    if-ltz v3, :cond_0

    if-ge v3, p1, :cond_0

    return v3

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    return v1
.end method

.method private n(I)I
    .locals 2

    .line 2209
    invoke-virtual {p0}, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->getChildCount()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    :goto_0
    if-ltz v0, :cond_1

    .line 2210
    invoke-virtual {p0, v0}, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    .line 2211
    invoke-virtual {p0, v1}, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->getPosition(Landroid/view/View;)I

    move-result v1

    if-ltz v1, :cond_0

    if-ge v1, p1, :cond_0

    return v1

    :cond_0
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    :cond_1
    const/4 p0, 0x0

    return p0
.end method

.method private o(I)I
    .locals 4

    const/4 v0, -0x1

    const/4 v1, 0x1

    if-eq p1, v1, :cond_b

    const/4 v2, 0x2

    if-eq p1, v2, :cond_8

    const/16 v2, 0x11

    const/high16 v3, -0x80000000

    if-eq p1, v2, :cond_6

    const/16 v2, 0x21

    if-eq p1, v2, :cond_4

    const/16 v0, 0x42

    if-eq p1, v0, :cond_2

    const/16 v0, 0x82

    if-eq p1, v0, :cond_0

    return v3

    .line 2387
    :cond_0
    iget p0, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->j:I

    if-ne p0, v1, :cond_1

    goto :goto_0

    :cond_1
    move v1, v3

    :goto_0
    return v1

    .line 2393
    :cond_2
    iget p0, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->j:I

    if-nez p0, :cond_3

    goto :goto_1

    :cond_3
    move v1, v3

    :goto_1
    return v1

    .line 2384
    :cond_4
    iget p0, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->j:I

    if-ne p0, v1, :cond_5

    goto :goto_2

    :cond_5
    move v0, v3

    :goto_2
    return v0

    .line 2390
    :cond_6
    iget p0, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->j:I

    if-nez p0, :cond_7

    goto :goto_3

    :cond_7
    move v0, v3

    :goto_3
    return v0

    .line 2376
    :cond_8
    iget p1, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->j:I

    if-ne p1, v1, :cond_9

    return v1

    .line 2378
    :cond_9
    invoke-virtual {p0}, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->d()Z

    move-result p0

    if-eqz p0, :cond_a

    return v0

    :cond_a
    return v1

    .line 2368
    :cond_b
    iget p1, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->j:I

    if-ne p1, v1, :cond_c

    return v0

    .line 2370
    :cond_c
    invoke-virtual {p0}, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->d()Z

    move-result p0

    if-eqz p0, :cond_d

    return v1

    :cond_d
    return v0
.end method


# virtual methods
.method a(ILandroidx/recyclerview/widget/RecyclerView$p;Landroidx/recyclerview/widget/RecyclerView$t;)I
    .locals 2

    .line 2149
    invoke-virtual {p0}, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->getChildCount()I

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_3

    if-nez p1, :cond_0

    goto :goto_1

    .line 2153
    :cond_0
    invoke-virtual {p0, p1, p3}, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->a(ILandroidx/recyclerview/widget/RecyclerView$t;)V

    .line 2154
    iget-object v0, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->l:Landroidx/recyclerview/widget/i;

    invoke-direct {p0, p2, v0, p3}, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->a(Landroidx/recyclerview/widget/RecyclerView$p;Landroidx/recyclerview/widget/i;Landroidx/recyclerview/widget/RecyclerView$t;)I

    move-result p3

    .line 2155
    iget-object v0, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->l:Landroidx/recyclerview/widget/i;

    iget v0, v0, Landroidx/recyclerview/widget/i;->b:I

    if-ge v0, p3, :cond_1

    goto :goto_0

    :cond_1
    if-gez p1, :cond_2

    neg-int p1, p3

    goto :goto_0

    :cond_2
    move p1, p3

    .line 2168
    :goto_0
    iget-object p3, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->b:Landroidx/recyclerview/widget/n;

    neg-int v0, p1

    invoke-virtual {p3, v0}, Landroidx/recyclerview/widget/n;->a(I)V

    .line 2170
    iget-boolean p3, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->e:Z

    iput-boolean p3, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->o:Z

    .line 2171
    iget-object p3, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->l:Landroidx/recyclerview/widget/i;

    iput v1, p3, Landroidx/recyclerview/widget/i;->b:I

    .line 2172
    invoke-direct {p0, p2, p3}, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->a(Landroidx/recyclerview/widget/RecyclerView$p;Landroidx/recyclerview/widget/i;)V

    return p1

    :cond_3
    :goto_1
    return v1
.end method

.method public a(I)V
    .locals 2

    const/4 v0, 0x0

    .line 428
    invoke-virtual {p0, v0}, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->assertNotInLayoutOrScroll(Ljava/lang/String;)V

    .line 429
    iget v0, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->i:I

    if-eq p1, v0, :cond_1

    .line 430
    invoke-virtual {p0}, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->c()V

    .line 431
    iput p1, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->i:I

    .line 432
    new-instance p1, Ljava/util/BitSet;

    iget v0, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->i:I

    invoke-direct {p1, v0}, Ljava/util/BitSet;-><init>(I)V

    iput-object p1, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->m:Ljava/util/BitSet;

    .line 433
    iget p1, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->i:I

    new-array p1, p1, [Landroidx/recyclerview/widget/StaggeredGridLayoutManager$c;

    iput-object p1, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->a:[Landroidx/recyclerview/widget/StaggeredGridLayoutManager$c;

    const/4 p1, 0x0

    .line 434
    :goto_0
    iget v0, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->i:I

    if-ge p1, v0, :cond_0

    .line 435
    iget-object v0, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->a:[Landroidx/recyclerview/widget/StaggeredGridLayoutManager$c;

    new-instance v1, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$c;

    invoke-direct {v1, p0, p1}, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$c;-><init>(Landroidx/recyclerview/widget/StaggeredGridLayoutManager;I)V

    aput-object v1, v0, p1

    add-int/lit8 p1, p1, 0x1

    goto :goto_0

    .line 437
    :cond_0
    invoke-virtual {p0}, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->requestLayout()V

    :cond_1
    return-void
.end method

.method a(ILandroidx/recyclerview/widget/RecyclerView$t;)V
    .locals 5

    const/4 v0, 0x1

    if-lez p1, :cond_0

    .line 2136
    invoke-virtual {p0}, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->h()I

    move-result v1

    move v2, v0

    goto :goto_0

    :cond_0
    const/4 v1, -0x1

    .line 2139
    invoke-virtual {p0}, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->i()I

    move-result v2

    move v4, v2

    move v2, v1

    move v1, v4

    .line 2141
    :goto_0
    iget-object v3, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->l:Landroidx/recyclerview/widget/i;

    iput-boolean v0, v3, Landroidx/recyclerview/widget/i;->a:Z

    .line 2142
    invoke-direct {p0, v1, p2}, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->b(ILandroidx/recyclerview/widget/RecyclerView$t;)V

    .line 2143
    invoke-direct {p0, v2}, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->d(I)V

    .line 2144
    iget-object p2, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->l:Landroidx/recyclerview/widget/i;

    iget v0, p2, Landroidx/recyclerview/widget/i;->d:I

    add-int/2addr v1, v0

    iput v1, p2, Landroidx/recyclerview/widget/i;->c:I

    .line 2145
    iget-object p0, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->l:Landroidx/recyclerview/widget/i;

    invoke-static {p1}, Ljava/lang/Math;->abs(I)I

    move-result p1

    iput p1, p0, Landroidx/recyclerview/widget/i;->b:I

    return-void
.end method

.method a(Landroidx/recyclerview/widget/RecyclerView$t;Landroidx/recyclerview/widget/StaggeredGridLayoutManager$a;)V
    .locals 1

    .line 830
    invoke-virtual {p0, p1, p2}, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->b(Landroidx/recyclerview/widget/RecyclerView$t;Landroidx/recyclerview/widget/StaggeredGridLayoutManager$a;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 833
    :cond_0
    invoke-direct {p0, p1, p2}, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->c(Landroidx/recyclerview/widget/RecyclerView$t;Landroidx/recyclerview/widget/StaggeredGridLayoutManager$a;)Z

    move-result p0

    if-eqz p0, :cond_1

    return-void

    .line 839
    :cond_1
    invoke-virtual {p2}, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$a;->b()V

    const/4 p0, 0x0

    .line 840
    iput p0, p2, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$a;->a:I

    return-void
.end method

.method public a(Z)V
    .locals 1

    const/4 v0, 0x0

    .line 476
    invoke-virtual {p0, v0}, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->assertNotInLayoutOrScroll(Ljava/lang/String;)V

    .line 477
    iget-object v0, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->q:Landroidx/recyclerview/widget/StaggeredGridLayoutManager$SavedState;

    if-eqz v0, :cond_0

    iget-boolean v0, v0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$SavedState;->mReverseLayout:Z

    if-eq v0, p1, :cond_0

    .line 478
    iget-object v0, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->q:Landroidx/recyclerview/widget/StaggeredGridLayoutManager$SavedState;

    iput-boolean p1, v0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$SavedState;->mReverseLayout:Z

    .line 480
    :cond_0
    iput-boolean p1, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->d:Z

    .line 481
    invoke-virtual {p0}, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->requestLayout()V

    return-void
.end method

.method a()Z
    .locals 7

    .line 269
    invoke-virtual {p0}, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->getChildCount()I

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_7

    iget v0, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->n:I

    if-eqz v0, :cond_7

    invoke-virtual {p0}, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->isAttachedToWindow()Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_3

    .line 273
    :cond_0
    iget-boolean v0, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->e:Z

    if-eqz v0, :cond_1

    .line 274
    invoke-virtual {p0}, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->h()I

    move-result v0

    .line 275
    invoke-virtual {p0}, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->i()I

    move-result v2

    goto :goto_0

    .line 277
    :cond_1
    invoke-virtual {p0}, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->i()I

    move-result v0

    .line 278
    invoke-virtual {p0}, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->h()I

    move-result v2

    :goto_0
    const/4 v3, 0x1

    if-nez v0, :cond_2

    .line 281
    invoke-virtual {p0}, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->b()Landroid/view/View;

    move-result-object v4

    if-eqz v4, :cond_2

    .line 283
    iget-object v0, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->h:Landroidx/recyclerview/widget/StaggeredGridLayoutManager$LazySpanLookup;

    invoke-virtual {v0}, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$LazySpanLookup;->a()V

    .line 284
    invoke-virtual {p0}, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->requestSimpleAnimationsInNextLayout()V

    .line 285
    invoke-virtual {p0}, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->requestLayout()V

    return v3

    .line 289
    :cond_2
    iget-boolean v4, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->u:Z

    if-nez v4, :cond_3

    return v1

    .line 292
    :cond_3
    iget-boolean v4, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->e:Z

    const/4 v5, -0x1

    if-eqz v4, :cond_4

    move v4, v5

    goto :goto_1

    :cond_4
    move v4, v3

    .line 293
    :goto_1
    iget-object v6, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->h:Landroidx/recyclerview/widget/StaggeredGridLayoutManager$LazySpanLookup;

    add-int/2addr v2, v3

    .line 294
    invoke-virtual {v6, v0, v2, v4, v3}, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$LazySpanLookup;->a(IIIZ)Landroidx/recyclerview/widget/StaggeredGridLayoutManager$LazySpanLookup$FullSpanItem;

    move-result-object v6

    if-nez v6, :cond_5

    .line 296
    iput-boolean v1, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->u:Z

    .line 297
    iget-object p0, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->h:Landroidx/recyclerview/widget/StaggeredGridLayoutManager$LazySpanLookup;

    invoke-virtual {p0, v2}, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$LazySpanLookup;->a(I)I

    return v1

    .line 300
    :cond_5
    iget-object v1, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->h:Landroidx/recyclerview/widget/StaggeredGridLayoutManager$LazySpanLookup;

    iget v2, v6, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$LazySpanLookup$FullSpanItem;->mPosition:I

    mul-int/2addr v4, v5

    .line 301
    invoke-virtual {v1, v0, v2, v4, v3}, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$LazySpanLookup;->a(IIIZ)Landroidx/recyclerview/widget/StaggeredGridLayoutManager$LazySpanLookup$FullSpanItem;

    move-result-object v0

    if-nez v0, :cond_6

    .line 304
    iget-object v0, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->h:Landroidx/recyclerview/widget/StaggeredGridLayoutManager$LazySpanLookup;

    iget v1, v6, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$LazySpanLookup$FullSpanItem;->mPosition:I

    invoke-virtual {v0, v1}, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$LazySpanLookup;->a(I)I

    goto :goto_2

    .line 306
    :cond_6
    iget-object v1, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->h:Landroidx/recyclerview/widget/StaggeredGridLayoutManager$LazySpanLookup;

    iget v0, v0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$LazySpanLookup$FullSpanItem;->mPosition:I

    add-int/2addr v0, v3

    invoke-virtual {v1, v0}, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$LazySpanLookup;->a(I)I

    .line 308
    :goto_2
    invoke-virtual {p0}, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->requestSimpleAnimationsInNextLayout()V

    .line 309
    invoke-virtual {p0}, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->requestLayout()V

    return v3

    :cond_7
    :goto_3
    return v1
.end method

.method public assertNotInLayoutOrScroll(Ljava/lang/String;)V
    .locals 1

    .line 527
    iget-object v0, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->q:Landroidx/recyclerview/widget/StaggeredGridLayoutManager$SavedState;

    if-nez v0, :cond_0

    .line 528
    invoke-super {p0, p1}, Landroidx/recyclerview/widget/RecyclerView$i;->assertNotInLayoutOrScroll(Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method b()Landroid/view/View;
    .locals 12

    .line 339
    invoke-virtual {p0}, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->getChildCount()I

    move-result v0

    const/4 v1, 0x1

    sub-int/2addr v0, v1

    .line 340
    new-instance v2, Ljava/util/BitSet;

    iget v3, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->i:I

    invoke-direct {v2, v3}, Ljava/util/BitSet;-><init>(I)V

    .line 341
    iget v3, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->i:I

    const/4 v4, 0x0

    invoke-virtual {v2, v4, v3, v1}, Ljava/util/BitSet;->set(IIZ)V

    .line 344
    iget v3, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->j:I

    const/4 v5, -0x1

    if-ne v3, v1, :cond_0

    invoke-virtual {p0}, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->d()Z

    move-result v3

    if-eqz v3, :cond_0

    move v3, v1

    goto :goto_0

    :cond_0
    move v3, v5

    .line 346
    :goto_0
    iget-boolean v6, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->e:Z

    if-eqz v6, :cond_1

    move v6, v5

    goto :goto_1

    :cond_1
    add-int/lit8 v0, v0, 0x1

    move v6, v0

    move v0, v4

    :goto_1
    if-ge v0, v6, :cond_2

    move v5, v1

    :cond_2
    :goto_2
    if-eq v0, v6, :cond_d

    .line 355
    invoke-virtual {p0, v0}, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->getChildAt(I)Landroid/view/View;

    move-result-object v7

    .line 356
    invoke-virtual {v7}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v8

    check-cast v8, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$b;

    .line 357
    iget-object v9, v8, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$b;->a:Landroidx/recyclerview/widget/StaggeredGridLayoutManager$c;

    iget v9, v9, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$c;->e:I

    invoke-virtual {v2, v9}, Ljava/util/BitSet;->get(I)Z

    move-result v9

    if-eqz v9, :cond_4

    .line 358
    iget-object v9, v8, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$b;->a:Landroidx/recyclerview/widget/StaggeredGridLayoutManager$c;

    invoke-direct {p0, v9}, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->a(Landroidx/recyclerview/widget/StaggeredGridLayoutManager$c;)Z

    move-result v9

    if-eqz v9, :cond_3

    return-object v7

    .line 361
    :cond_3
    iget-object v9, v8, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$b;->a:Landroidx/recyclerview/widget/StaggeredGridLayoutManager$c;

    iget v9, v9, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$c;->e:I

    invoke-virtual {v2, v9}, Ljava/util/BitSet;->clear(I)V

    .line 363
    :cond_4
    iget-boolean v9, v8, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$b;->b:Z

    if-eqz v9, :cond_5

    goto :goto_7

    :cond_5
    add-int v9, v0, v5

    if-eq v9, v6, :cond_c

    .line 368
    invoke-virtual {p0, v9}, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->getChildAt(I)Landroid/view/View;

    move-result-object v9

    .line 370
    iget-boolean v10, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->e:Z

    if-eqz v10, :cond_7

    .line 372
    iget-object v10, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->b:Landroidx/recyclerview/widget/n;

    invoke-virtual {v10, v7}, Landroidx/recyclerview/widget/n;->b(Landroid/view/View;)I

    move-result v10

    .line 373
    iget-object v11, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->b:Landroidx/recyclerview/widget/n;

    invoke-virtual {v11, v9}, Landroidx/recyclerview/widget/n;->b(Landroid/view/View;)I

    move-result v11

    if-ge v10, v11, :cond_6

    return-object v7

    :cond_6
    if-ne v10, v11, :cond_9

    goto :goto_3

    .line 380
    :cond_7
    iget-object v10, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->b:Landroidx/recyclerview/widget/n;

    invoke-virtual {v10, v7}, Landroidx/recyclerview/widget/n;->a(Landroid/view/View;)I

    move-result v10

    .line 381
    iget-object v11, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->b:Landroidx/recyclerview/widget/n;

    invoke-virtual {v11, v9}, Landroidx/recyclerview/widget/n;->a(Landroid/view/View;)I

    move-result v11

    if-le v10, v11, :cond_8

    return-object v7

    :cond_8
    if-ne v10, v11, :cond_9

    :goto_3
    move v10, v1

    goto :goto_4

    :cond_9
    move v10, v4

    :goto_4
    if-eqz v10, :cond_c

    .line 390
    invoke-virtual {v9}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v9

    check-cast v9, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$b;

    .line 391
    iget-object v8, v8, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$b;->a:Landroidx/recyclerview/widget/StaggeredGridLayoutManager$c;

    iget v8, v8, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$c;->e:I

    iget-object v9, v9, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$b;->a:Landroidx/recyclerview/widget/StaggeredGridLayoutManager$c;

    iget v9, v9, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$c;->e:I

    sub-int/2addr v8, v9

    if-gez v8, :cond_a

    move v8, v1

    goto :goto_5

    :cond_a
    move v8, v4

    :goto_5
    if-gez v3, :cond_b

    move v9, v1

    goto :goto_6

    :cond_b
    move v9, v4

    :goto_6
    if-eq v8, v9, :cond_c

    return-object v7

    :cond_c
    :goto_7
    add-int/2addr v0, v5

    goto :goto_2

    :cond_d
    const/4 p0, 0x0

    return-object p0
.end method

.method b(Z)Landroid/view/View;
    .locals 8

    .line 1331
    iget-object v0, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->b:Landroidx/recyclerview/widget/n;

    invoke-virtual {v0}, Landroidx/recyclerview/widget/n;->d()I

    move-result v0

    .line 1332
    iget-object v1, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->b:Landroidx/recyclerview/widget/n;

    invoke-virtual {v1}, Landroidx/recyclerview/widget/n;->e()I

    move-result v1

    .line 1333
    invoke-virtual {p0}, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->getChildCount()I

    move-result v2

    const/4 v3, 0x0

    const/4 v4, 0x0

    :goto_0
    if-ge v4, v2, :cond_4

    .line 1336
    invoke-virtual {p0, v4}, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->getChildAt(I)Landroid/view/View;

    move-result-object v5

    .line 1337
    iget-object v6, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->b:Landroidx/recyclerview/widget/n;

    invoke-virtual {v6, v5}, Landroidx/recyclerview/widget/n;->a(Landroid/view/View;)I

    move-result v6

    .line 1338
    iget-object v7, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->b:Landroidx/recyclerview/widget/n;

    invoke-virtual {v7, v5}, Landroidx/recyclerview/widget/n;->b(Landroid/view/View;)I

    move-result v7

    if-le v7, v0, :cond_3

    if-lt v6, v1, :cond_0

    goto :goto_2

    :cond_0
    if-ge v6, v0, :cond_2

    if-nez p1, :cond_1

    goto :goto_1

    :cond_1
    if-nez v3, :cond_3

    move-object v3, v5

    goto :goto_2

    :cond_2
    :goto_1
    return-object v5

    :cond_3
    :goto_2
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_4
    return-object v3
.end method

.method public b(I)V
    .locals 1

    if-eqz p1, :cond_1

    const/4 v0, 0x1

    if-ne p1, v0, :cond_0

    goto :goto_0

    .line 449
    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "invalid orientation."

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_1
    :goto_0
    const/4 v0, 0x0

    .line 451
    invoke-virtual {p0, v0}, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->assertNotInLayoutOrScroll(Ljava/lang/String;)V

    .line 452
    iget v0, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->j:I

    if-ne p1, v0, :cond_2

    return-void

    .line 455
    :cond_2
    iput p1, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->j:I

    .line 456
    iget-object p1, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->b:Landroidx/recyclerview/widget/n;

    .line 457
    iget-object v0, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->c:Landroidx/recyclerview/widget/n;

    iput-object v0, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->b:Landroidx/recyclerview/widget/n;

    .line 458
    iput-object p1, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->c:Landroidx/recyclerview/widget/n;

    .line 459
    invoke-virtual {p0}, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->requestLayout()V

    return-void
.end method

.method b(Landroidx/recyclerview/widget/RecyclerView$t;Landroidx/recyclerview/widget/StaggeredGridLayoutManager$a;)Z
    .locals 4

    .line 857
    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView$t;->a()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_f

    iget v0, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->f:I

    const/4 v2, -0x1

    if-ne v0, v2, :cond_0

    goto/16 :goto_7

    :cond_0
    const/high16 v3, -0x80000000

    if-ltz v0, :cond_e

    .line 861
    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView$t;->e()I

    move-result p1

    if-lt v0, p1, :cond_1

    goto/16 :goto_6

    .line 867
    :cond_1
    iget-object p1, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->q:Landroidx/recyclerview/widget/StaggeredGridLayoutManager$SavedState;

    const/4 v0, 0x1

    if-eqz p1, :cond_3

    iget p1, p1, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$SavedState;->mAnchorPosition:I

    if-eq p1, v2, :cond_3

    iget-object p1, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->q:Landroidx/recyclerview/widget/StaggeredGridLayoutManager$SavedState;

    iget p1, p1, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$SavedState;->mSpanOffsetsSize:I

    if-ge p1, v0, :cond_2

    goto :goto_0

    .line 928
    :cond_2
    iput v3, p2, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$a;->b:I

    .line 929
    iget p0, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->f:I

    iput p0, p2, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$a;->a:I

    goto/16 :goto_5

    .line 870
    :cond_3
    :goto_0
    iget p1, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->f:I

    invoke-virtual {p0, p1}, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->findViewByPosition(I)Landroid/view/View;

    move-result-object p1

    if-eqz p1, :cond_b

    .line 874
    iget-boolean v1, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->e:Z

    if-eqz v1, :cond_4

    invoke-virtual {p0}, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->h()I

    move-result v1

    goto :goto_1

    .line 875
    :cond_4
    invoke-virtual {p0}, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->i()I

    move-result v1

    :goto_1
    iput v1, p2, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$a;->a:I

    .line 876
    iget v1, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->g:I

    if-eq v1, v3, :cond_6

    .line 877
    iget-boolean v1, p2, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$a;->c:Z

    if-eqz v1, :cond_5

    .line 878
    iget-object v1, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->b:Landroidx/recyclerview/widget/n;

    invoke-virtual {v1}, Landroidx/recyclerview/widget/n;->e()I

    move-result v1

    iget v2, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->g:I

    sub-int/2addr v1, v2

    .line 880
    iget-object p0, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->b:Landroidx/recyclerview/widget/n;

    invoke-virtual {p0, p1}, Landroidx/recyclerview/widget/n;->b(Landroid/view/View;)I

    move-result p0

    sub-int/2addr v1, p0

    iput v1, p2, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$a;->b:I

    goto :goto_2

    .line 882
    :cond_5
    iget-object v1, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->b:Landroidx/recyclerview/widget/n;

    invoke-virtual {v1}, Landroidx/recyclerview/widget/n;->d()I

    move-result v1

    iget v2, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->g:I

    add-int/2addr v1, v2

    .line 884
    iget-object p0, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->b:Landroidx/recyclerview/widget/n;

    invoke-virtual {p0, p1}, Landroidx/recyclerview/widget/n;->a(Landroid/view/View;)I

    move-result p0

    sub-int/2addr v1, p0

    iput v1, p2, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$a;->b:I

    :goto_2
    return v0

    .line 890
    :cond_6
    iget-object v1, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->b:Landroidx/recyclerview/widget/n;

    invoke-virtual {v1, p1}, Landroidx/recyclerview/widget/n;->e(Landroid/view/View;)I

    move-result v1

    .line 891
    iget-object v2, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->b:Landroidx/recyclerview/widget/n;

    invoke-virtual {v2}, Landroidx/recyclerview/widget/n;->g()I

    move-result v2

    if-le v1, v2, :cond_8

    .line 893
    iget-boolean p1, p2, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$a;->c:Z

    if-eqz p1, :cond_7

    .line 894
    iget-object p0, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->b:Landroidx/recyclerview/widget/n;

    invoke-virtual {p0}, Landroidx/recyclerview/widget/n;->e()I

    move-result p0

    goto :goto_3

    .line 895
    :cond_7
    iget-object p0, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->b:Landroidx/recyclerview/widget/n;

    invoke-virtual {p0}, Landroidx/recyclerview/widget/n;->d()I

    move-result p0

    :goto_3
    iput p0, p2, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$a;->b:I

    return v0

    .line 899
    :cond_8
    iget-object v1, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->b:Landroidx/recyclerview/widget/n;

    invoke-virtual {v1, p1}, Landroidx/recyclerview/widget/n;->a(Landroid/view/View;)I

    move-result v1

    iget-object v2, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->b:Landroidx/recyclerview/widget/n;

    .line 900
    invoke-virtual {v2}, Landroidx/recyclerview/widget/n;->d()I

    move-result v2

    sub-int/2addr v1, v2

    if-gez v1, :cond_9

    neg-int p0, v1

    .line 902
    iput p0, p2, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$a;->b:I

    return v0

    .line 905
    :cond_9
    iget-object v1, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->b:Landroidx/recyclerview/widget/n;

    invoke-virtual {v1}, Landroidx/recyclerview/widget/n;->e()I

    move-result v1

    iget-object p0, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->b:Landroidx/recyclerview/widget/n;

    .line 906
    invoke-virtual {p0, p1}, Landroidx/recyclerview/widget/n;->b(Landroid/view/View;)I

    move-result p0

    sub-int/2addr v1, p0

    if-gez v1, :cond_a

    .line 908
    iput v1, p2, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$a;->b:I

    return v0

    .line 912
    :cond_a
    iput v3, p2, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$a;->b:I

    goto :goto_5

    .line 916
    :cond_b
    iget p1, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->f:I

    iput p1, p2, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$a;->a:I

    .line 917
    iget p1, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->g:I

    if-ne p1, v3, :cond_d

    .line 918
    iget p1, p2, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$a;->a:I

    invoke-direct {p0, p1}, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->l(I)I

    move-result p0

    if-ne p0, v0, :cond_c

    move v1, v0

    .line 920
    :cond_c
    iput-boolean v1, p2, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$a;->c:Z

    .line 921
    invoke-virtual {p2}, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$a;->b()V

    goto :goto_4

    .line 923
    :cond_d
    invoke-virtual {p2, p1}, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$a;->a(I)V

    .line 925
    :goto_4
    iput-boolean v0, p2, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$a;->d:Z

    :goto_5
    return v0

    .line 862
    :cond_e
    :goto_6
    iput v2, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->f:I

    .line 863
    iput v3, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->g:I

    :cond_f
    :goto_7
    return v1
.end method

.method c(Z)Landroid/view/View;
    .locals 7

    .line 1361
    iget-object v0, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->b:Landroidx/recyclerview/widget/n;

    invoke-virtual {v0}, Landroidx/recyclerview/widget/n;->d()I

    move-result v0

    .line 1362
    iget-object v1, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->b:Landroidx/recyclerview/widget/n;

    invoke-virtual {v1}, Landroidx/recyclerview/widget/n;->e()I

    move-result v1

    .line 1364
    invoke-virtual {p0}, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->getChildCount()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    const/4 v3, 0x0

    :goto_0
    if-ltz v2, :cond_4

    .line 1365
    invoke-virtual {p0, v2}, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->getChildAt(I)Landroid/view/View;

    move-result-object v4

    .line 1366
    iget-object v5, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->b:Landroidx/recyclerview/widget/n;

    invoke-virtual {v5, v4}, Landroidx/recyclerview/widget/n;->a(Landroid/view/View;)I

    move-result v5

    .line 1367
    iget-object v6, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->b:Landroidx/recyclerview/widget/n;

    invoke-virtual {v6, v4}, Landroidx/recyclerview/widget/n;->b(Landroid/view/View;)I

    move-result v6

    if-le v6, v0, :cond_3

    if-lt v5, v1, :cond_0

    goto :goto_2

    :cond_0
    if-le v6, v1, :cond_2

    if-nez p1, :cond_1

    goto :goto_1

    :cond_1
    if-nez v3, :cond_3

    move-object v3, v4

    goto :goto_2

    :cond_2
    :goto_1
    return-object v4

    :cond_3
    :goto_2
    add-int/lit8 v2, v2, -0x1

    goto :goto_0

    :cond_4
    return-object v3
.end method

.method public c()V
    .locals 1

    .line 548
    iget-object v0, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->h:Landroidx/recyclerview/widget/StaggeredGridLayoutManager$LazySpanLookup;

    invoke-virtual {v0}, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$LazySpanLookup;->a()V

    .line 549
    invoke-virtual {p0}, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->requestLayout()V

    return-void
.end method

.method c(I)V
    .locals 1

    .line 935
    iget v0, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->i:I

    div-int v0, p1, v0

    iput v0, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->k:I

    .line 937
    iget-object v0, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->c:Landroidx/recyclerview/widget/n;

    .line 938
    invoke-virtual {v0}, Landroidx/recyclerview/widget/n;->i()I

    move-result v0

    .line 937
    invoke-static {p1, v0}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result p1

    iput p1, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->r:I

    return-void
.end method

.method public canScrollHorizontally()Z
    .locals 0

    .line 2001
    iget p0, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->j:I

    if-nez p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public canScrollVertically()Z
    .locals 1

    .line 1996
    iget p0, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->j:I

    const/4 v0, 0x1

    if-ne p0, v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public checkLayoutParams(Landroidx/recyclerview/widget/RecyclerView$j;)Z
    .locals 0

    .line 2247
    instance-of p0, p1, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$b;

    return p0
.end method

.method public collectAdjacentPrefetchPositions(IILandroidx/recyclerview/widget/RecyclerView$t;Landroidx/recyclerview/widget/RecyclerView$i$a;)V
    .locals 4

    .line 2097
    iget v0, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->j:I

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    move p1, p2

    .line 2098
    :goto_0
    invoke-virtual {p0}, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->getChildCount()I

    move-result p2

    if-eqz p2, :cond_7

    if-nez p1, :cond_1

    goto/16 :goto_4

    .line 2102
    :cond_1
    invoke-virtual {p0, p1, p3}, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->a(ILandroidx/recyclerview/widget/RecyclerView$t;)V

    .line 2105
    iget-object p1, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->w:[I

    if-eqz p1, :cond_2

    array-length p1, p1

    iget p2, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->i:I

    if-ge p1, p2, :cond_3

    .line 2106
    :cond_2
    iget p1, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->i:I

    new-array p1, p1, [I

    iput-object p1, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->w:[I

    :cond_3
    const/4 p1, 0x0

    move p2, p1

    move v0, p2

    .line 2110
    :goto_1
    iget v1, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->i:I

    if-ge p2, v1, :cond_6

    .line 2112
    iget-object v1, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->l:Landroidx/recyclerview/widget/i;

    iget v1, v1, Landroidx/recyclerview/widget/i;->d:I

    const/4 v2, -0x1

    if-ne v1, v2, :cond_4

    .line 2113
    iget-object v1, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->l:Landroidx/recyclerview/widget/i;

    iget v1, v1, Landroidx/recyclerview/widget/i;->f:I

    iget-object v2, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->a:[Landroidx/recyclerview/widget/StaggeredGridLayoutManager$c;

    aget-object v2, v2, p2

    iget-object v3, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->l:Landroidx/recyclerview/widget/i;

    iget v3, v3, Landroidx/recyclerview/widget/i;->f:I

    invoke-virtual {v2, v3}, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$c;->a(I)I

    move-result v2

    goto :goto_2

    .line 2114
    :cond_4
    iget-object v1, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->a:[Landroidx/recyclerview/widget/StaggeredGridLayoutManager$c;

    aget-object v1, v1, p2

    iget-object v2, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->l:Landroidx/recyclerview/widget/i;

    iget v2, v2, Landroidx/recyclerview/widget/i;->g:I

    invoke-virtual {v1, v2}, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$c;->b(I)I

    move-result v1

    iget-object v2, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->l:Landroidx/recyclerview/widget/i;

    iget v2, v2, Landroidx/recyclerview/widget/i;->g:I

    :goto_2
    sub-int/2addr v1, v2

    if-ltz v1, :cond_5

    .line 2117
    iget-object v2, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->w:[I

    aput v1, v2, v0

    add-int/lit8 v0, v0, 0x1

    :cond_5
    add-int/lit8 p2, p2, 0x1

    goto :goto_1

    .line 2121
    :cond_6
    iget-object p2, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->w:[I

    invoke-static {p2, p1, v0}, Ljava/util/Arrays;->sort([III)V

    :goto_3
    if-ge p1, v0, :cond_7

    .line 2124
    iget-object p2, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->l:Landroidx/recyclerview/widget/i;

    invoke-virtual {p2, p3}, Landroidx/recyclerview/widget/i;->a(Landroidx/recyclerview/widget/RecyclerView$t;)Z

    move-result p2

    if-eqz p2, :cond_7

    .line 2125
    iget-object p2, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->l:Landroidx/recyclerview/widget/i;

    iget p2, p2, Landroidx/recyclerview/widget/i;->c:I

    iget-object v1, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->w:[I

    aget v1, v1, p1

    invoke-interface {p4, p2, v1}, Landroidx/recyclerview/widget/RecyclerView$i$a;->b(II)V

    .line 2127
    iget-object p2, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->l:Landroidx/recyclerview/widget/i;

    iget v1, p2, Landroidx/recyclerview/widget/i;->c:I

    iget-object v2, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->l:Landroidx/recyclerview/widget/i;

    iget v2, v2, Landroidx/recyclerview/widget/i;->d:I

    add-int/2addr v1, v2

    iput v1, p2, Landroidx/recyclerview/widget/i;->c:I

    add-int/lit8 p1, p1, 0x1

    goto :goto_3

    :cond_7
    :goto_4
    return-void
.end method

.method public computeHorizontalScrollExtent(Landroidx/recyclerview/widget/RecyclerView$t;)I
    .locals 0

    .line 1096
    invoke-direct {p0, p1}, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->b(Landroidx/recyclerview/widget/RecyclerView$t;)I

    move-result p0

    return p0
.end method

.method public computeHorizontalScrollOffset(Landroidx/recyclerview/widget/RecyclerView$t;)I
    .locals 0

    .line 1076
    invoke-direct {p0, p1}, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->a(Landroidx/recyclerview/widget/RecyclerView$t;)I

    move-result p0

    return p0
.end method

.method public computeHorizontalScrollRange(Landroidx/recyclerview/widget/RecyclerView$t;)I
    .locals 0

    .line 1116
    invoke-direct {p0, p1}, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->c(Landroidx/recyclerview/widget/RecyclerView$t;)I

    move-result p0

    return p0
.end method

.method public computeScrollVectorForPosition(I)Landroid/graphics/PointF;
    .locals 2

    .line 2026
    invoke-direct {p0, p1}, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->l(I)I

    move-result p1

    .line 2027
    new-instance v0, Landroid/graphics/PointF;

    invoke-direct {v0}, Landroid/graphics/PointF;-><init>()V

    if-nez p1, :cond_0

    const/4 p0, 0x0

    return-object p0

    .line 2031
    :cond_0
    iget p0, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->j:I

    const/4 v1, 0x0

    if-nez p0, :cond_1

    int-to-float p0, p1

    .line 2032
    iput p0, v0, Landroid/graphics/PointF;->x:F

    .line 2033
    iput v1, v0, Landroid/graphics/PointF;->y:F

    goto :goto_0

    .line 2035
    :cond_1
    iput v1, v0, Landroid/graphics/PointF;->x:F

    int-to-float p0, p1

    .line 2036
    iput p0, v0, Landroid/graphics/PointF;->y:F

    :goto_0
    return-object v0
.end method

.method public computeVerticalScrollExtent(Landroidx/recyclerview/widget/RecyclerView$t;)I
    .locals 0

    .line 1111
    invoke-direct {p0, p1}, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->b(Landroidx/recyclerview/widget/RecyclerView$t;)I

    move-result p0

    return p0
.end method

.method public computeVerticalScrollOffset(Landroidx/recyclerview/widget/RecyclerView$t;)I
    .locals 0

    .line 1091
    invoke-direct {p0, p1}, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->a(Landroidx/recyclerview/widget/RecyclerView$t;)I

    move-result p0

    return p0
.end method

.method public computeVerticalScrollRange(Landroidx/recyclerview/widget/RecyclerView$t;)I
    .locals 0

    .line 1131
    invoke-direct {p0, p1}, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->c(Landroidx/recyclerview/widget/RecyclerView$t;)I

    move-result p0

    return p0
.end method

.method d()Z
    .locals 1

    .line 567
    invoke-virtual {p0}, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->getLayoutDirection()I

    move-result p0

    const/4 v0, 0x1

    if-ne p0, v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method e()I
    .locals 2

    .line 1319
    iget-boolean v0, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->e:Z

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    invoke-virtual {p0, v1}, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->c(Z)Landroid/view/View;

    move-result-object v0

    goto :goto_0

    .line 1320
    :cond_0
    invoke-virtual {p0, v1}, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->b(Z)Landroid/view/View;

    move-result-object v0

    :goto_0
    if-nez v0, :cond_1

    const/4 p0, -0x1

    goto :goto_1

    .line 1321
    :cond_1
    invoke-virtual {p0, v0}, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->getPosition(Landroid/view/View;)I

    move-result p0

    :goto_1
    return p0
.end method

.method f()Z
    .locals 6

    .line 1839
    iget-object v0, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->a:[Landroidx/recyclerview/widget/StaggeredGridLayoutManager$c;

    const/4 v1, 0x0

    aget-object v0, v0, v1

    const/high16 v2, -0x80000000

    invoke-virtual {v0, v2}, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$c;->b(I)I

    move-result v0

    const/4 v3, 0x1

    move v4, v3

    .line 1840
    :goto_0
    iget v5, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->i:I

    if-ge v4, v5, :cond_1

    .line 1841
    iget-object v5, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->a:[Landroidx/recyclerview/widget/StaggeredGridLayoutManager$c;

    aget-object v5, v5, v4

    invoke-virtual {v5, v2}, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$c;->b(I)I

    move-result v5

    if-eq v5, v0, :cond_0

    return v1

    :cond_0
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_1
    return v3
.end method

.method g()Z
    .locals 6

    .line 1849
    iget-object v0, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->a:[Landroidx/recyclerview/widget/StaggeredGridLayoutManager$c;

    const/4 v1, 0x0

    aget-object v0, v0, v1

    const/high16 v2, -0x80000000

    invoke-virtual {v0, v2}, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$c;->a(I)I

    move-result v0

    const/4 v3, 0x1

    move v4, v3

    .line 1850
    :goto_0
    iget v5, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->i:I

    if-ge v4, v5, :cond_1

    .line 1851
    iget-object v5, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->a:[Landroidx/recyclerview/widget/StaggeredGridLayoutManager$c;

    aget-object v5, v5, v4

    invoke-virtual {v5, v2}, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$c;->a(I)I

    move-result v5

    if-eq v5, v0, :cond_0

    return v1

    :cond_0
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_1
    return v3
.end method

.method public generateDefaultLayoutParams()Landroidx/recyclerview/widget/RecyclerView$j;
    .locals 2

    .line 2222
    iget p0, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->j:I

    const/4 v0, -0x2

    const/4 v1, -0x1

    if-nez p0, :cond_0

    .line 2223
    new-instance p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$b;

    invoke-direct {p0, v0, v1}, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$b;-><init>(II)V

    return-object p0

    .line 2226
    :cond_0
    new-instance p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$b;

    invoke-direct {p0, v1, v0}, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$b;-><init>(II)V

    return-object p0
.end method

.method public generateLayoutParams(Landroid/content/Context;Landroid/util/AttributeSet;)Landroidx/recyclerview/widget/RecyclerView$j;
    .locals 0

    .line 2233
    new-instance p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$b;

    invoke-direct {p0, p1, p2}, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$b;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-object p0
.end method

.method public generateLayoutParams(Landroid/view/ViewGroup$LayoutParams;)Landroidx/recyclerview/widget/RecyclerView$j;
    .locals 0

    .line 2238
    instance-of p0, p1, Landroid/view/ViewGroup$MarginLayoutParams;

    if-eqz p0, :cond_0

    .line 2239
    new-instance p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$b;

    check-cast p1, Landroid/view/ViewGroup$MarginLayoutParams;

    invoke-direct {p0, p1}, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$b;-><init>(Landroid/view/ViewGroup$MarginLayoutParams;)V

    return-object p0

    .line 2241
    :cond_0
    new-instance p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$b;

    invoke-direct {p0, p1}, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$b;-><init>(Landroid/view/ViewGroup$LayoutParams;)V

    return-object p0
.end method

.method h()I
    .locals 1

    .line 2177
    invoke-virtual {p0}, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->getChildCount()I

    move-result v0

    if-nez v0, :cond_0

    const/4 p0, 0x0

    goto :goto_0

    :cond_0
    add-int/lit8 v0, v0, -0x1

    .line 2178
    invoke-virtual {p0, v0}, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->getPosition(Landroid/view/View;)I

    move-result p0

    :goto_0
    return p0
.end method

.method i()I
    .locals 2

    .line 2182
    invoke-virtual {p0}, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->getChildCount()I

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    goto :goto_0

    .line 2183
    :cond_0
    invoke-virtual {p0, v1}, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->getPosition(Landroid/view/View;)I

    move-result v1

    :goto_0
    return v1
.end method

.method public isAutoMeasureEnabled()Z
    .locals 0

    .line 253
    iget p0, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->n:I

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public offsetChildrenHorizontal(I)V
    .locals 2

    .line 1460
    invoke-super {p0, p1}, Landroidx/recyclerview/widget/RecyclerView$i;->offsetChildrenHorizontal(I)V

    const/4 v0, 0x0

    .line 1461
    :goto_0
    iget v1, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->i:I

    if-ge v0, v1, :cond_0

    .line 1462
    iget-object v1, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->a:[Landroidx/recyclerview/widget/StaggeredGridLayoutManager$c;

    aget-object v1, v1, v0

    invoke-virtual {v1, p1}, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$c;->d(I)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public offsetChildrenVertical(I)V
    .locals 2

    .line 1468
    invoke-super {p0, p1}, Landroidx/recyclerview/widget/RecyclerView$i;->offsetChildrenVertical(I)V

    const/4 v0, 0x0

    .line 1469
    :goto_0
    iget v1, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->i:I

    if-ge v0, v1, :cond_0

    .line 1470
    iget-object v1, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->a:[Landroidx/recyclerview/widget/StaggeredGridLayoutManager$c;

    aget-object v1, v1, v0

    invoke-virtual {v1, p1}, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$c;->d(I)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public onAdapterChanged(Landroidx/recyclerview/widget/RecyclerView$a;Landroidx/recyclerview/widget/RecyclerView$a;)V
    .locals 0

    .line 611
    iget-object p1, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->h:Landroidx/recyclerview/widget/StaggeredGridLayoutManager$LazySpanLookup;

    invoke-virtual {p1}, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$LazySpanLookup;->a()V

    const/4 p1, 0x0

    .line 612
    :goto_0
    iget p2, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->i:I

    if-ge p1, p2, :cond_0

    .line 613
    iget-object p2, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->a:[Landroidx/recyclerview/widget/StaggeredGridLayoutManager$c;

    aget-object p2, p2, p1

    invoke-virtual {p2}, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$c;->e()V

    add-int/lit8 p1, p1, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public onDetachedFromWindow(Landroidx/recyclerview/widget/RecyclerView;Landroidx/recyclerview/widget/RecyclerView$p;)V
    .locals 1

    .line 322
    invoke-super {p0, p1, p2}, Landroidx/recyclerview/widget/RecyclerView$i;->onDetachedFromWindow(Landroidx/recyclerview/widget/RecyclerView;Landroidx/recyclerview/widget/RecyclerView$p;)V

    .line 324
    iget-object p2, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->x:Ljava/lang/Runnable;

    invoke-virtual {p0, p2}, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->removeCallbacks(Ljava/lang/Runnable;)Z

    const/4 p2, 0x0

    .line 325
    :goto_0
    iget v0, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->i:I

    if-ge p2, v0, :cond_0

    .line 326
    iget-object v0, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->a:[Landroidx/recyclerview/widget/StaggeredGridLayoutManager$c;

    aget-object v0, v0, p2

    invoke-virtual {v0}, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$c;->e()V

    add-int/lit8 p2, p2, 0x1

    goto :goto_0

    .line 329
    :cond_0
    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView;->requestLayout()V

    return-void
.end method

.method public onFocusSearchFailed(Landroid/view/View;ILandroidx/recyclerview/widget/RecyclerView$p;Landroidx/recyclerview/widget/RecyclerView$t;)Landroid/view/View;
    .locals 8

    .line 2258
    invoke-virtual {p0}, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->getChildCount()I

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return-object v1

    .line 2262
    :cond_0
    invoke-virtual {p0, p1}, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->findContainingItemView(Landroid/view/View;)Landroid/view/View;

    move-result-object p1

    if-nez p1, :cond_1

    return-object v1

    .line 2267
    :cond_1
    invoke-direct {p0}, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->k()V

    .line 2268
    invoke-direct {p0, p2}, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->o(I)I

    move-result p2

    const/high16 v0, -0x80000000

    if-ne p2, v0, :cond_2

    return-object v1

    .line 2272
    :cond_2
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$b;

    .line 2273
    iget-boolean v2, v0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$b;->b:Z

    .line 2274
    iget-object v0, v0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$b;->a:Landroidx/recyclerview/widget/StaggeredGridLayoutManager$c;

    const/4 v3, 0x1

    if-ne p2, v3, :cond_3

    .line 2277
    invoke-virtual {p0}, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->h()I

    move-result v4

    goto :goto_0

    .line 2279
    :cond_3
    invoke-virtual {p0}, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->i()I

    move-result v4

    .line 2281
    :goto_0
    invoke-direct {p0, v4, p4}, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->b(ILandroidx/recyclerview/widget/RecyclerView$t;)V

    .line 2282
    invoke-direct {p0, p2}, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->d(I)V

    .line 2284
    iget-object v5, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->l:Landroidx/recyclerview/widget/i;

    iget v6, v5, Landroidx/recyclerview/widget/i;->d:I

    add-int/2addr v6, v4

    iput v6, v5, Landroidx/recyclerview/widget/i;->c:I

    .line 2285
    iget-object v5, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->l:Landroidx/recyclerview/widget/i;

    const v6, 0x3eaaaaab

    iget-object v7, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->b:Landroidx/recyclerview/widget/n;

    invoke-virtual {v7}, Landroidx/recyclerview/widget/n;->g()I

    move-result v7

    int-to-float v7, v7

    mul-float/2addr v7, v6

    float-to-int v6, v7

    iput v6, v5, Landroidx/recyclerview/widget/i;->b:I

    .line 2286
    iget-object v5, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->l:Landroidx/recyclerview/widget/i;

    iput-boolean v3, v5, Landroidx/recyclerview/widget/i;->h:Z

    const/4 v6, 0x0

    .line 2287
    iput-boolean v6, v5, Landroidx/recyclerview/widget/i;->a:Z

    .line 2288
    invoke-direct {p0, p3, v5, p4}, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->a(Landroidx/recyclerview/widget/RecyclerView$p;Landroidx/recyclerview/widget/i;Landroidx/recyclerview/widget/RecyclerView$t;)I

    .line 2289
    iget-boolean p3, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->e:Z

    iput-boolean p3, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->o:Z

    if-nez v2, :cond_4

    .line 2291
    invoke-virtual {v0, v4, p2}, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$c;->a(II)Landroid/view/View;

    move-result-object p3

    if-eqz p3, :cond_4

    if-eq p3, p1, :cond_4

    return-object p3

    .line 2299
    :cond_4
    invoke-direct {p0, p2}, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->k(I)Z

    move-result p3

    if-eqz p3, :cond_6

    .line 2300
    iget p3, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->i:I

    sub-int/2addr p3, v3

    :goto_1
    if-ltz p3, :cond_8

    .line 2301
    iget-object p4, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->a:[Landroidx/recyclerview/widget/StaggeredGridLayoutManager$c;

    aget-object p4, p4, p3

    invoke-virtual {p4, v4, p2}, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$c;->a(II)Landroid/view/View;

    move-result-object p4

    if-eqz p4, :cond_5

    if-eq p4, p1, :cond_5

    return-object p4

    :cond_5
    add-int/lit8 p3, p3, -0x1

    goto :goto_1

    :cond_6
    move p3, v6

    .line 2307
    :goto_2
    iget p4, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->i:I

    if-ge p3, p4, :cond_8

    .line 2308
    iget-object p4, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->a:[Landroidx/recyclerview/widget/StaggeredGridLayoutManager$c;

    aget-object p4, p4, p3

    invoke-virtual {p4, v4, p2}, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$c;->a(II)Landroid/view/View;

    move-result-object p4

    if-eqz p4, :cond_7

    if-eq p4, p1, :cond_7

    return-object p4

    :cond_7
    add-int/lit8 p3, p3, 0x1

    goto :goto_2

    .line 2319
    :cond_8
    iget-boolean p3, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->d:Z

    xor-int/2addr p3, v3

    const/4 p4, -0x1

    if-ne p2, p4, :cond_9

    move p4, v3

    goto :goto_3

    :cond_9
    move p4, v6

    :goto_3
    if-ne p3, p4, :cond_a

    move p3, v3

    goto :goto_4

    :cond_a
    move p3, v6

    :goto_4
    if-nez v2, :cond_c

    if-eqz p3, :cond_b

    .line 2323
    invoke-virtual {v0}, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$c;->j()I

    move-result p4

    goto :goto_5

    .line 2324
    :cond_b
    invoke-virtual {v0}, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$c;->k()I

    move-result p4

    .line 2322
    :goto_5
    invoke-virtual {p0, p4}, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->findViewByPosition(I)Landroid/view/View;

    move-result-object p4

    if-eqz p4, :cond_c

    if-eq p4, p1, :cond_c

    return-object p4

    .line 2330
    :cond_c
    invoke-direct {p0, p2}, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->k(I)Z

    move-result p2

    if-eqz p2, :cond_10

    .line 2331
    iget p2, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->i:I

    sub-int/2addr p2, v3

    :goto_6
    if-ltz p2, :cond_13

    .line 2332
    iget p4, v0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$c;->e:I

    if-ne p2, p4, :cond_d

    goto :goto_8

    :cond_d
    if-eqz p3, :cond_e

    .line 2336
    iget-object p4, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->a:[Landroidx/recyclerview/widget/StaggeredGridLayoutManager$c;

    aget-object p4, p4, p2

    invoke-virtual {p4}, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$c;->j()I

    move-result p4

    goto :goto_7

    .line 2337
    :cond_e
    iget-object p4, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->a:[Landroidx/recyclerview/widget/StaggeredGridLayoutManager$c;

    aget-object p4, p4, p2

    invoke-virtual {p4}, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$c;->k()I

    move-result p4

    .line 2335
    :goto_7
    invoke-virtual {p0, p4}, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->findViewByPosition(I)Landroid/view/View;

    move-result-object p4

    if-eqz p4, :cond_f

    if-eq p4, p1, :cond_f

    return-object p4

    :cond_f
    :goto_8
    add-int/lit8 p2, p2, -0x1

    goto :goto_6

    .line 2343
    :cond_10
    :goto_9
    iget p2, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->i:I

    if-ge v6, p2, :cond_13

    if-eqz p3, :cond_11

    .line 2345
    iget-object p2, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->a:[Landroidx/recyclerview/widget/StaggeredGridLayoutManager$c;

    aget-object p2, p2, v6

    invoke-virtual {p2}, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$c;->j()I

    move-result p2

    goto :goto_a

    .line 2346
    :cond_11
    iget-object p2, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->a:[Landroidx/recyclerview/widget/StaggeredGridLayoutManager$c;

    aget-object p2, p2, v6

    invoke-virtual {p2}, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$c;->k()I

    move-result p2

    .line 2344
    :goto_a
    invoke-virtual {p0, p2}, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->findViewByPosition(I)Landroid/view/View;

    move-result-object p2

    if-eqz p2, :cond_12

    if-eq p2, p1, :cond_12

    return-object p2

    :cond_12
    add-int/lit8 v6, v6, 0x1

    goto :goto_9

    :cond_13
    return-object v1
.end method

.method public onInitializeAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)V
    .locals 2

    .line 1294
    invoke-super {p0, p1}, Landroidx/recyclerview/widget/RecyclerView$i;->onInitializeAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)V

    .line 1295
    invoke-virtual {p0}, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->getChildCount()I

    move-result v0

    if-lez v0, :cond_2

    const/4 v0, 0x0

    .line 1296
    invoke-virtual {p0, v0}, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->b(Z)Landroid/view/View;

    move-result-object v1

    .line 1297
    invoke-virtual {p0, v0}, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->c(Z)Landroid/view/View;

    move-result-object v0

    if-eqz v1, :cond_2

    if-nez v0, :cond_0

    goto :goto_0

    .line 1301
    :cond_0
    invoke-virtual {p0, v1}, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->getPosition(Landroid/view/View;)I

    move-result v1

    .line 1302
    invoke-virtual {p0, v0}, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->getPosition(Landroid/view/View;)I

    move-result p0

    if-ge v1, p0, :cond_1

    .line 1304
    invoke-virtual {p1, v1}, Landroid/view/accessibility/AccessibilityEvent;->setFromIndex(I)V

    .line 1305
    invoke-virtual {p1, p0}, Landroid/view/accessibility/AccessibilityEvent;->setToIndex(I)V

    goto :goto_0

    .line 1307
    :cond_1
    invoke-virtual {p1, p0}, Landroid/view/accessibility/AccessibilityEvent;->setFromIndex(I)V

    .line 1308
    invoke-virtual {p1, v1}, Landroid/view/accessibility/AccessibilityEvent;->setToIndex(I)V

    nop

    :cond_2
    :goto_0
    return-void
.end method

.method public onItemsAdded(Landroidx/recyclerview/widget/RecyclerView;II)V
    .locals 0

    const/4 p1, 0x1

    .line 1481
    invoke-direct {p0, p2, p3, p1}, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->b(III)V

    return-void
.end method

.method public onItemsChanged(Landroidx/recyclerview/widget/RecyclerView;)V
    .locals 0

    .line 1486
    iget-object p1, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->h:Landroidx/recyclerview/widget/StaggeredGridLayoutManager$LazySpanLookup;

    invoke-virtual {p1}, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$LazySpanLookup;->a()V

    .line 1487
    invoke-virtual {p0}, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->requestLayout()V

    return-void
.end method

.method public onItemsMoved(Landroidx/recyclerview/widget/RecyclerView;III)V
    .locals 0

    const/16 p1, 0x8

    .line 1492
    invoke-direct {p0, p2, p3, p1}, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->b(III)V

    return-void
.end method

.method public onItemsRemoved(Landroidx/recyclerview/widget/RecyclerView;II)V
    .locals 0

    const/4 p1, 0x2

    .line 1476
    invoke-direct {p0, p2, p3, p1}, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->b(III)V

    return-void
.end method

.method public onItemsUpdated(Landroidx/recyclerview/widget/RecyclerView;IILjava/lang/Object;)V
    .locals 0

    const/4 p1, 0x4

    .line 1498
    invoke-direct {p0, p2, p3, p1}, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->b(III)V

    return-void
.end method

.method public onLayoutChildren(Landroidx/recyclerview/widget/RecyclerView$p;Landroidx/recyclerview/widget/RecyclerView$t;)V
    .locals 1

    const/4 v0, 0x1

    .line 604
    invoke-direct {p0, p1, p2, v0}, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->a(Landroidx/recyclerview/widget/RecyclerView$p;Landroidx/recyclerview/widget/RecyclerView$t;Z)V

    return-void
.end method

.method public onLayoutCompleted(Landroidx/recyclerview/widget/RecyclerView$t;)V
    .locals 0

    .line 734
    invoke-super {p0, p1}, Landroidx/recyclerview/widget/RecyclerView$i;->onLayoutCompleted(Landroidx/recyclerview/widget/RecyclerView$t;)V

    const/4 p1, -0x1

    .line 735
    iput p1, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->f:I

    const/high16 p1, -0x80000000

    .line 736
    iput p1, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->g:I

    const/4 p1, 0x0

    .line 737
    iput-object p1, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->q:Landroidx/recyclerview/widget/StaggeredGridLayoutManager$SavedState;

    .line 738
    iget-object p0, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->t:Landroidx/recyclerview/widget/StaggeredGridLayoutManager$a;

    invoke-virtual {p0}, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$a;->a()V

    return-void
.end method

.method public onRestoreInstanceState(Landroid/os/Parcelable;)V
    .locals 1

    .line 1230
    instance-of v0, p1, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$SavedState;

    if-eqz v0, :cond_1

    .line 1231
    check-cast p1, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$SavedState;

    iput-object p1, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->q:Landroidx/recyclerview/widget/StaggeredGridLayoutManager$SavedState;

    .line 1232
    iget p1, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->f:I

    const/4 v0, -0x1

    if-eq p1, v0, :cond_0

    .line 1233
    iget-object p1, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->q:Landroidx/recyclerview/widget/StaggeredGridLayoutManager$SavedState;

    invoke-virtual {p1}, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$SavedState;->invalidateAnchorPositionInfo()V

    .line 1234
    iget-object p1, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->q:Landroidx/recyclerview/widget/StaggeredGridLayoutManager$SavedState;

    invoke-virtual {p1}, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$SavedState;->invalidateSpanInfo()V

    .line 1236
    :cond_0
    invoke-virtual {p0}, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->requestLayout()V

    :cond_1
    return-void
.end method

.method public onSaveInstanceState()Landroid/os/Parcelable;
    .locals 4

    .line 1244
    iget-object v0, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->q:Landroidx/recyclerview/widget/StaggeredGridLayoutManager$SavedState;

    if-eqz v0, :cond_0

    .line 1245
    new-instance p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$SavedState;

    invoke-direct {p0, v0}, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$SavedState;-><init>(Landroidx/recyclerview/widget/StaggeredGridLayoutManager$SavedState;)V

    return-object p0

    .line 1247
    :cond_0
    new-instance v0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$SavedState;

    invoke-direct {v0}, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$SavedState;-><init>()V

    .line 1248
    iget-boolean v1, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->d:Z

    iput-boolean v1, v0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$SavedState;->mReverseLayout:Z

    .line 1249
    iget-boolean v1, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->o:Z

    iput-boolean v1, v0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$SavedState;->mAnchorLayoutFromEnd:Z

    .line 1250
    iget-boolean v1, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->p:Z

    iput-boolean v1, v0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$SavedState;->mLastLayoutRTL:Z

    .line 1252
    iget-object v1, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->h:Landroidx/recyclerview/widget/StaggeredGridLayoutManager$LazySpanLookup;

    const/4 v2, 0x0

    if-eqz v1, :cond_1

    iget-object v1, v1, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$LazySpanLookup;->a:[I

    if-eqz v1, :cond_1

    .line 1253
    iget-object v1, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->h:Landroidx/recyclerview/widget/StaggeredGridLayoutManager$LazySpanLookup;

    iget-object v1, v1, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$LazySpanLookup;->a:[I

    iput-object v1, v0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$SavedState;->mSpanLookup:[I

    .line 1254
    iget-object v1, v0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$SavedState;->mSpanLookup:[I

    array-length v1, v1

    iput v1, v0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$SavedState;->mSpanLookupSize:I

    .line 1255
    iget-object v1, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->h:Landroidx/recyclerview/widget/StaggeredGridLayoutManager$LazySpanLookup;

    iget-object v1, v1, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$LazySpanLookup;->b:Ljava/util/List;

    iput-object v1, v0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$SavedState;->mFullSpanItems:Ljava/util/List;

    goto :goto_0

    .line 1257
    :cond_1
    iput v2, v0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$SavedState;->mSpanLookupSize:I

    .line 1260
    :goto_0
    invoke-virtual {p0}, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->getChildCount()I

    move-result v1

    if-lez v1, :cond_5

    .line 1261
    iget-boolean v1, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->o:Z

    if-eqz v1, :cond_2

    invoke-virtual {p0}, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->h()I

    move-result v1

    goto :goto_1

    .line 1262
    :cond_2
    invoke-virtual {p0}, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->i()I

    move-result v1

    :goto_1
    iput v1, v0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$SavedState;->mAnchorPosition:I

    .line 1263
    invoke-virtual {p0}, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->e()I

    move-result v1

    iput v1, v0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$SavedState;->mVisibleAnchorPosition:I

    .line 1264
    iget v1, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->i:I

    iput v1, v0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$SavedState;->mSpanOffsetsSize:I

    .line 1265
    new-array v1, v1, [I

    iput-object v1, v0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$SavedState;->mSpanOffsets:[I

    .line 1266
    :goto_2
    iget v1, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->i:I

    if-ge v2, v1, :cond_6

    .line 1268
    iget-boolean v1, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->o:Z

    const/high16 v3, -0x80000000

    if-eqz v1, :cond_3

    .line 1269
    iget-object v1, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->a:[Landroidx/recyclerview/widget/StaggeredGridLayoutManager$c;

    aget-object v1, v1, v2

    invoke-virtual {v1, v3}, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$c;->b(I)I

    move-result v1

    if-eq v1, v3, :cond_4

    .line 1271
    iget-object v3, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->b:Landroidx/recyclerview/widget/n;

    invoke-virtual {v3}, Landroidx/recyclerview/widget/n;->e()I

    move-result v3

    goto :goto_3

    .line 1274
    :cond_3
    iget-object v1, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->a:[Landroidx/recyclerview/widget/StaggeredGridLayoutManager$c;

    aget-object v1, v1, v2

    invoke-virtual {v1, v3}, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$c;->a(I)I

    move-result v1

    if-eq v1, v3, :cond_4

    .line 1276
    iget-object v3, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->b:Landroidx/recyclerview/widget/n;

    invoke-virtual {v3}, Landroidx/recyclerview/widget/n;->d()I

    move-result v3

    :goto_3
    sub-int/2addr v1, v3

    .line 1279
    :cond_4
    iget-object v3, v0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$SavedState;->mSpanOffsets:[I

    aput v1, v3, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    :cond_5
    const/4 p0, -0x1

    .line 1282
    iput p0, v0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$SavedState;->mAnchorPosition:I

    .line 1283
    iput p0, v0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$SavedState;->mVisibleAnchorPosition:I

    .line 1284
    iput v2, v0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$SavedState;->mSpanOffsetsSize:I

    :cond_6
    return-object v0
.end method

.method public onScrollStateChanged(I)V
    .locals 0

    if-nez p1, :cond_0

    .line 316
    invoke-virtual {p0}, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->a()Z

    :cond_0
    return-void
.end method

.method public scrollHorizontallyBy(ILandroidx/recyclerview/widget/RecyclerView$p;Landroidx/recyclerview/widget/RecyclerView$t;)I
    .locals 0

    .line 2007
    invoke-virtual {p0, p1, p2, p3}, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->a(ILandroidx/recyclerview/widget/RecyclerView$p;Landroidx/recyclerview/widget/RecyclerView$t;)I

    move-result p0

    return p0
.end method

.method public scrollToPosition(I)V
    .locals 1

    .line 2051
    iget-object v0, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->q:Landroidx/recyclerview/widget/StaggeredGridLayoutManager$SavedState;

    if-eqz v0, :cond_0

    iget v0, v0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$SavedState;->mAnchorPosition:I

    if-eq v0, p1, :cond_0

    .line 2052
    iget-object v0, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->q:Landroidx/recyclerview/widget/StaggeredGridLayoutManager$SavedState;

    invoke-virtual {v0}, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$SavedState;->invalidateAnchorPositionInfo()V

    .line 2054
    :cond_0
    iput p1, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->f:I

    const/high16 p1, -0x80000000

    .line 2055
    iput p1, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->g:I

    .line 2056
    invoke-virtual {p0}, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->requestLayout()V

    return-void
.end method

.method public scrollVerticallyBy(ILandroidx/recyclerview/widget/RecyclerView$p;Landroidx/recyclerview/widget/RecyclerView$t;)I
    .locals 0

    .line 2013
    invoke-virtual {p0, p1, p2, p3}, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->a(ILandroidx/recyclerview/widget/RecyclerView$p;Landroidx/recyclerview/widget/RecyclerView$t;)I

    move-result p0

    return p0
.end method

.method public setMeasuredDimension(Landroid/graphics/Rect;II)V
    .locals 4

    .line 586
    invoke-virtual {p0}, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->getPaddingLeft()I

    move-result v0

    invoke-virtual {p0}, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->getPaddingRight()I

    move-result v1

    add-int/2addr v0, v1

    .line 587
    invoke-virtual {p0}, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->getPaddingTop()I

    move-result v1

    invoke-virtual {p0}, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->getPaddingBottom()I

    move-result v2

    add-int/2addr v1, v2

    .line 588
    iget v2, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->j:I

    const/4 v3, 0x1

    if-ne v2, v3, :cond_0

    .line 589
    invoke-virtual {p1}, Landroid/graphics/Rect;->height()I

    move-result p1

    add-int/2addr p1, v1

    .line 590
    invoke-virtual {p0}, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->getMinimumHeight()I

    move-result v1

    invoke-static {p3, p1, v1}, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->chooseSize(III)I

    move-result p1

    .line 591
    iget p3, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->k:I

    iget v1, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->i:I

    mul-int/2addr p3, v1

    add-int/2addr p3, v0

    .line 592
    invoke-virtual {p0}, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->getMinimumWidth()I

    move-result v0

    .line 591
    invoke-static {p2, p3, v0}, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->chooseSize(III)I

    move-result p2

    goto :goto_0

    .line 594
    :cond_0
    invoke-virtual {p1}, Landroid/graphics/Rect;->width()I

    move-result p1

    add-int/2addr p1, v0

    .line 595
    invoke-virtual {p0}, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->getMinimumWidth()I

    move-result v0

    invoke-static {p2, p1, v0}, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->chooseSize(III)I

    move-result p2

    .line 596
    iget p1, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->k:I

    iget v0, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->i:I

    mul-int/2addr p1, v0

    add-int/2addr p1, v1

    .line 597
    invoke-virtual {p0}, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->getMinimumHeight()I

    move-result v0

    .line 596
    invoke-static {p3, p1, v0}, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->chooseSize(III)I

    move-result p1

    .line 599
    :goto_0
    invoke-virtual {p0, p2, p1}, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->setMeasuredDimension(II)V

    return-void
.end method

.method public smoothScrollToPosition(Landroidx/recyclerview/widget/RecyclerView;Landroidx/recyclerview/widget/RecyclerView$t;I)V
    .locals 0

    .line 2044
    new-instance p2, Landroidx/recyclerview/widget/j;

    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-direct {p2, p1}, Landroidx/recyclerview/widget/j;-><init>(Landroid/content/Context;)V

    .line 2045
    invoke-virtual {p2, p3}, Landroidx/recyclerview/widget/j;->setTargetPosition(I)V

    .line 2046
    invoke-virtual {p0, p2}, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->startSmoothScroll(Landroidx/recyclerview/widget/RecyclerView$s;)V

    return-void
.end method

.method public supportsPredictiveItemAnimations()Z
    .locals 0

    .line 943
    iget-object p0, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->q:Landroidx/recyclerview/widget/StaggeredGridLayoutManager$SavedState;

    if-nez p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method
