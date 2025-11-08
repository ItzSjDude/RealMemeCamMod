.class Landroidx/viewpager2/adapter/a$b;
.super Ljava/lang/Object;
.source "FragmentStateAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/viewpager2/adapter/a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "b"
.end annotation


# instance fields
.field final synthetic a:Landroidx/viewpager2/adapter/a;

.field private b:Landroidx/viewpager2/widget/ViewPager2;

.field private c:J


# virtual methods
.method a(Z)V
    .locals 9

    .line 693
    iget-object v0, p0, Landroidx/viewpager2/adapter/a$b;->a:Landroidx/viewpager2/adapter/a;

    invoke-virtual {v0}, Landroidx/viewpager2/adapter/a;->a()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 697
    :cond_0
    iget-object v0, p0, Landroidx/viewpager2/adapter/a$b;->b:Landroidx/viewpager2/widget/ViewPager2;

    invoke-virtual {v0}, Landroidx/viewpager2/widget/ViewPager2;->getScrollState()I

    move-result v0

    if-eqz v0, :cond_1

    return-void

    .line 701
    :cond_1
    iget-object v0, p0, Landroidx/viewpager2/adapter/a$b;->a:Landroidx/viewpager2/adapter/a;

    iget-object v0, v0, Landroidx/viewpager2/adapter/a;->c:Landroidx/collection/LongSparseArray;

    invoke-virtual {v0}, Landroidx/collection/LongSparseArray;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_b

    iget-object v0, p0, Landroidx/viewpager2/adapter/a$b;->a:Landroidx/viewpager2/adapter/a;

    invoke-virtual {v0}, Landroidx/viewpager2/adapter/a;->getItemCount()I

    move-result v0

    if-nez v0, :cond_2

    goto/16 :goto_5

    .line 705
    :cond_2
    iget-object v0, p0, Landroidx/viewpager2/adapter/a$b;->b:Landroidx/viewpager2/widget/ViewPager2;

    invoke-virtual {v0}, Landroidx/viewpager2/widget/ViewPager2;->getCurrentItem()I

    move-result v0

    .line 706
    iget-object v1, p0, Landroidx/viewpager2/adapter/a$b;->a:Landroidx/viewpager2/adapter/a;

    invoke-virtual {v1}, Landroidx/viewpager2/adapter/a;->getItemCount()I

    move-result v1

    if-lt v0, v1, :cond_3

    return-void

    .line 712
    :cond_3
    iget-object v1, p0, Landroidx/viewpager2/adapter/a$b;->a:Landroidx/viewpager2/adapter/a;

    invoke-virtual {v1, v0}, Landroidx/viewpager2/adapter/a;->getItemId(I)J

    move-result-wide v0

    .line 713
    iget-wide v2, p0, Landroidx/viewpager2/adapter/a$b;->c:J

    cmp-long v2, v0, v2

    if-nez v2, :cond_4

    if-nez p1, :cond_4

    return-void

    .line 717
    :cond_4
    iget-object p1, p0, Landroidx/viewpager2/adapter/a$b;->a:Landroidx/viewpager2/adapter/a;

    iget-object p1, p1, Landroidx/viewpager2/adapter/a;->c:Landroidx/collection/LongSparseArray;

    invoke-virtual {p1, v0, v1}, Landroidx/collection/LongSparseArray;->get(J)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroidx/fragment/app/Fragment;

    if-eqz p1, :cond_b

    .line 718
    invoke-virtual {p1}, Landroidx/fragment/app/Fragment;->isAdded()Z

    move-result p1

    if-nez p1, :cond_5

    goto/16 :goto_5

    .line 722
    :cond_5
    iput-wide v0, p0, Landroidx/viewpager2/adapter/a$b;->c:J

    .line 723
    iget-object p1, p0, Landroidx/viewpager2/adapter/a$b;->a:Landroidx/viewpager2/adapter/a;

    iget-object p1, p1, Landroidx/viewpager2/adapter/a;->b:Landroidx/fragment/app/h;

    invoke-virtual {p1}, Landroidx/fragment/app/h;->a()Landroidx/fragment/app/k;

    move-result-object p1

    const/4 v0, 0x0

    .line 726
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    const/4 v2, 0x0

    move-object v3, v0

    move v0, v2

    .line 727
    :goto_0
    iget-object v4, p0, Landroidx/viewpager2/adapter/a$b;->a:Landroidx/viewpager2/adapter/a;

    iget-object v4, v4, Landroidx/viewpager2/adapter/a;->c:Landroidx/collection/LongSparseArray;

    invoke-virtual {v4}, Landroidx/collection/LongSparseArray;->size()I

    move-result v4

    if-ge v0, v4, :cond_9

    .line 728
    iget-object v4, p0, Landroidx/viewpager2/adapter/a$b;->a:Landroidx/viewpager2/adapter/a;

    iget-object v4, v4, Landroidx/viewpager2/adapter/a;->c:Landroidx/collection/LongSparseArray;

    invoke-virtual {v4, v0}, Landroidx/collection/LongSparseArray;->keyAt(I)J

    move-result-wide v4

    .line 729
    iget-object v6, p0, Landroidx/viewpager2/adapter/a$b;->a:Landroidx/viewpager2/adapter/a;

    iget-object v6, v6, Landroidx/viewpager2/adapter/a;->c:Landroidx/collection/LongSparseArray;

    invoke-virtual {v6, v0}, Landroidx/collection/LongSparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroidx/fragment/app/Fragment;

    .line 731
    invoke-virtual {v6}, Landroidx/fragment/app/Fragment;->isAdded()Z

    move-result v7

    if-nez v7, :cond_6

    goto :goto_3

    .line 735
    :cond_6
    iget-wide v7, p0, Landroidx/viewpager2/adapter/a$b;->c:J

    cmp-long v7, v4, v7

    if-eqz v7, :cond_7

    .line 736
    sget-object v7, Landroidx/lifecycle/e$b;->STARTED:Landroidx/lifecycle/e$b;

    invoke-virtual {p1, v6, v7}, Landroidx/fragment/app/k;->a(Landroidx/fragment/app/Fragment;Landroidx/lifecycle/e$b;)Landroidx/fragment/app/k;

    .line 737
    iget-object v7, p0, Landroidx/viewpager2/adapter/a$b;->a:Landroidx/viewpager2/adapter/a;

    iget-object v7, v7, Landroidx/viewpager2/adapter/a;->d:Landroidx/viewpager2/adapter/a$a;

    sget-object v8, Landroidx/lifecycle/e$b;->STARTED:Landroidx/lifecycle/e$b;

    invoke-virtual {v7, v6, v8}, Landroidx/viewpager2/adapter/a$a;->a(Landroidx/fragment/app/Fragment;Landroidx/lifecycle/e$b;)Ljava/util/List;

    move-result-object v7

    invoke-interface {v1, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_7
    move-object v3, v6

    .line 743
    :goto_1
    iget-wide v7, p0, Landroidx/viewpager2/adapter/a$b;->c:J

    cmp-long v4, v4, v7

    if-nez v4, :cond_8

    const/4 v4, 0x1

    goto :goto_2

    :cond_8
    move v4, v2

    :goto_2
    invoke-virtual {v6, v4}, Landroidx/fragment/app/Fragment;->setMenuVisibility(Z)V

    :goto_3
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_9
    if-eqz v3, :cond_a

    .line 746
    sget-object v0, Landroidx/lifecycle/e$b;->RESUMED:Landroidx/lifecycle/e$b;

    invoke-virtual {p1, v3, v0}, Landroidx/fragment/app/k;->a(Landroidx/fragment/app/Fragment;Landroidx/lifecycle/e$b;)Landroidx/fragment/app/k;

    .line 747
    iget-object v0, p0, Landroidx/viewpager2/adapter/a$b;->a:Landroidx/viewpager2/adapter/a;

    iget-object v0, v0, Landroidx/viewpager2/adapter/a;->d:Landroidx/viewpager2/adapter/a$a;

    sget-object v2, Landroidx/lifecycle/e$b;->RESUMED:Landroidx/lifecycle/e$b;

    invoke-virtual {v0, v3, v2}, Landroidx/viewpager2/adapter/a$a;->a(Landroidx/fragment/app/Fragment;Landroidx/lifecycle/e$b;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 751
    :cond_a
    invoke-virtual {p1}, Landroidx/fragment/app/k;->h()Z

    move-result v0

    if-nez v0, :cond_b

    .line 752
    invoke-virtual {p1}, Landroidx/fragment/app/k;->d()V

    .line 753
    invoke-static {v1}, Ljava/util/Collections;->reverse(Ljava/util/List;)V

    .line 754
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_4
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_b

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    .line 755
    iget-object v1, p0, Landroidx/viewpager2/adapter/a$b;->a:Landroidx/viewpager2/adapter/a;

    iget-object v1, v1, Landroidx/viewpager2/adapter/a;->d:Landroidx/viewpager2/adapter/a$a;

    invoke-virtual {v1, v0}, Landroidx/viewpager2/adapter/a$a;->a(Ljava/util/List;)V

    goto :goto_4

    :cond_b
    :goto_5
    return-void
.end method
