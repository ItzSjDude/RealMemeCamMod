.class public Landroidx/recyclerview/widget/f$d;
.super Ljava/lang/Object;
.source "DiffUtil.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/recyclerview/widget/f;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "d"
.end annotation


# instance fields
.field private final a:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroidx/recyclerview/widget/f$c;",
            ">;"
        }
    .end annotation
.end field

.field private final b:[I

.field private final c:[I

.field private final d:Landroidx/recyclerview/widget/f$a;

.field private final e:I

.field private final f:I

.field private final g:Z


# direct methods
.method constructor <init>(Landroidx/recyclerview/widget/f$a;Ljava/util/List;[I[IZ)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/recyclerview/widget/f$a;",
            "Ljava/util/List<",
            "Landroidx/recyclerview/widget/f$c;",
            ">;[I[IZ)V"
        }
    .end annotation

    .line 664
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 665
    iput-object p2, p0, Landroidx/recyclerview/widget/f$d;->a:Ljava/util/List;

    .line 666
    iput-object p3, p0, Landroidx/recyclerview/widget/f$d;->b:[I

    .line 667
    iput-object p4, p0, Landroidx/recyclerview/widget/f$d;->c:[I

    .line 668
    iget-object p2, p0, Landroidx/recyclerview/widget/f$d;->b:[I

    const/4 p3, 0x0

    invoke-static {p2, p3}, Ljava/util/Arrays;->fill([II)V

    .line 669
    iget-object p2, p0, Landroidx/recyclerview/widget/f$d;->c:[I

    invoke-static {p2, p3}, Ljava/util/Arrays;->fill([II)V

    .line 670
    iput-object p1, p0, Landroidx/recyclerview/widget/f$d;->d:Landroidx/recyclerview/widget/f$a;

    .line 671
    invoke-virtual {p1}, Landroidx/recyclerview/widget/f$a;->a()I

    move-result p2

    iput p2, p0, Landroidx/recyclerview/widget/f$d;->e:I

    .line 672
    invoke-virtual {p1}, Landroidx/recyclerview/widget/f$a;->b()I

    move-result p1

    iput p1, p0, Landroidx/recyclerview/widget/f$d;->f:I

    .line 673
    iput-boolean p5, p0, Landroidx/recyclerview/widget/f$d;->g:Z

    .line 674
    invoke-direct {p0}, Landroidx/recyclerview/widget/f$d;->a()V

    .line 675
    invoke-direct {p0}, Landroidx/recyclerview/widget/f$d;->b()V

    return-void
.end method

.method private static a(Ljava/util/Collection;IZ)Landroidx/recyclerview/widget/f$e;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "Landroidx/recyclerview/widget/f$e;",
            ">;IZ)",
            "Landroidx/recyclerview/widget/f$e;"
        }
    .end annotation

    .line 976
    invoke-interface {p0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object p0

    .line 977
    :cond_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 978
    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/recyclerview/widget/f$e;

    .line 979
    iget v1, v0, Landroidx/recyclerview/widget/f$e;->a:I

    if-ne v1, p1, :cond_0

    iget-boolean v1, v0, Landroidx/recyclerview/widget/f$e;->c:Z

    if-ne v1, p2, :cond_0

    .line 981
    invoke-interface {p0}, Ljava/util/Iterator;->remove()V

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    .line 985
    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result p1

    if-eqz p1, :cond_3

    .line 987
    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroidx/recyclerview/widget/f$e;

    if-eqz p2, :cond_2

    .line 989
    iget v1, p1, Landroidx/recyclerview/widget/f$e;->b:I

    add-int/lit8 v1, v1, -0x1

    iput v1, p1, Landroidx/recyclerview/widget/f$e;->b:I

    goto :goto_0

    .line 991
    :cond_2
    iget v1, p1, Landroidx/recyclerview/widget/f$e;->b:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p1, Landroidx/recyclerview/widget/f$e;->b:I

    goto :goto_0

    :cond_3
    return-object v0
.end method

.method private a()V
    .locals 4

    .line 683
    iget-object v0, p0, Landroidx/recyclerview/widget/f$d;->a:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Landroidx/recyclerview/widget/f$d;->a:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/recyclerview/widget/f$c;

    :goto_0
    if-eqz v0, :cond_1

    .line 685
    iget v2, v0, Landroidx/recyclerview/widget/f$c;->a:I

    if-nez v2, :cond_1

    iget v0, v0, Landroidx/recyclerview/widget/f$c;->b:I

    if-eqz v0, :cond_2

    .line 686
    :cond_1
    iget-object v0, p0, Landroidx/recyclerview/widget/f$d;->a:Ljava/util/List;

    new-instance v2, Landroidx/recyclerview/widget/f$c;

    invoke-direct {v2, v1, v1, v1}, Landroidx/recyclerview/widget/f$c;-><init>(III)V

    invoke-interface {v0, v1, v2}, Ljava/util/List;->add(ILjava/lang/Object;)V

    .line 689
    :cond_2
    iget-object v0, p0, Landroidx/recyclerview/widget/f$d;->a:Ljava/util/List;

    new-instance v2, Landroidx/recyclerview/widget/f$c;

    iget v3, p0, Landroidx/recyclerview/widget/f$d;->e:I

    iget p0, p0, Landroidx/recyclerview/widget/f$d;->f:I

    invoke-direct {v2, v3, p0, v1}, Landroidx/recyclerview/widget/f$c;-><init>(III)V

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method private a(I)V
    .locals 5

    .line 739
    iget-object v0, p0, Landroidx/recyclerview/widget/f$d;->a:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x0

    move v2, v1

    :goto_0
    if-ge v1, v0, :cond_3

    .line 741
    iget-object v3, p0, Landroidx/recyclerview/widget/f$d;->a:Ljava/util/List;

    invoke-interface {v3, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroidx/recyclerview/widget/f$c;

    .line 742
    :goto_1
    iget v4, v3, Landroidx/recyclerview/widget/f$c;->b:I

    if-ge v2, v4, :cond_2

    .line 744
    iget-object v4, p0, Landroidx/recyclerview/widget/f$d;->c:[I

    aget v4, v4, v2

    if-nez v4, :cond_1

    .line 745
    iget-object v4, p0, Landroidx/recyclerview/widget/f$d;->d:Landroidx/recyclerview/widget/f$a;

    invoke-virtual {v4, p1, v2}, Landroidx/recyclerview/widget/f$a;->a(II)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 748
    iget-object v0, p0, Landroidx/recyclerview/widget/f$d;->d:Landroidx/recyclerview/widget/f$a;

    invoke-virtual {v0, p1, v2}, Landroidx/recyclerview/widget/f$a;->b(II)Z

    move-result v0

    const/4 v1, 0x4

    if-eqz v0, :cond_0

    const/16 v0, 0x8

    goto :goto_2

    :cond_0
    move v0, v1

    .line 752
    :goto_2
    iget-object v3, p0, Landroidx/recyclerview/widget/f$d;->b:[I

    shl-int/lit8 v4, v2, 0x4

    or-int/2addr v4, v0

    aput v4, v3, p1

    .line 753
    iget-object p0, p0, Landroidx/recyclerview/widget/f$d;->c:[I

    shl-int/2addr p1, v1

    or-int/2addr p1, v0

    aput p1, p0, v2

    return-void

    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 759
    :cond_2
    invoke-virtual {v3}, Landroidx/recyclerview/widget/f$c;->b()I

    move-result v2

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_3
    return-void
.end method

.method private b()V
    .locals 8

    .line 698
    iget-object v0, p0, Landroidx/recyclerview/widget/f$d;->a:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroidx/recyclerview/widget/f$c;

    const/4 v2, 0x0

    .line 699
    :goto_0
    iget v3, v1, Landroidx/recyclerview/widget/f$c;->c:I

    if-ge v2, v3, :cond_0

    .line 700
    iget v3, v1, Landroidx/recyclerview/widget/f$c;->a:I

    add-int/2addr v3, v2

    .line 701
    iget v4, v1, Landroidx/recyclerview/widget/f$c;->b:I

    add-int/2addr v4, v2

    .line 702
    iget-object v5, p0, Landroidx/recyclerview/widget/f$d;->d:Landroidx/recyclerview/widget/f$a;

    invoke-virtual {v5, v3, v4}, Landroidx/recyclerview/widget/f$a;->b(II)Z

    move-result v5

    if-eqz v5, :cond_1

    const/4 v5, 0x1

    goto :goto_1

    :cond_1
    const/4 v5, 0x2

    .line 704
    :goto_1
    iget-object v6, p0, Landroidx/recyclerview/widget/f$d;->b:[I

    shl-int/lit8 v7, v4, 0x4

    or-int/2addr v7, v5

    aput v7, v6, v3

    .line 705
    iget-object v6, p0, Landroidx/recyclerview/widget/f$d;->c:[I

    shl-int/lit8 v3, v3, 0x4

    or-int/2addr v3, v5

    aput v3, v6, v4

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 709
    :cond_2
    iget-boolean v0, p0, Landroidx/recyclerview/widget/f$d;->g:Z

    if-eqz v0, :cond_3

    .line 712
    invoke-direct {p0}, Landroidx/recyclerview/widget/f$d;->c()V

    :cond_3
    return-void
.end method

.method private c()V
    .locals 4

    .line 719
    iget-object v0, p0, Landroidx/recyclerview/widget/f$d;->a:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    const/4 v1, 0x0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroidx/recyclerview/widget/f$c;

    .line 720
    :goto_1
    iget v3, v2, Landroidx/recyclerview/widget/f$c;->a:I

    if-ge v1, v3, :cond_1

    .line 721
    iget-object v3, p0, Landroidx/recyclerview/widget/f$d;->b:[I

    aget v3, v3, v1

    if-nez v3, :cond_0

    .line 723
    invoke-direct {p0, v1}, Landroidx/recyclerview/widget/f$d;->a(I)V

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 728
    :cond_1
    invoke-virtual {v2}, Landroidx/recyclerview/widget/f$c;->a()I

    move-result v1

    goto :goto_0

    :cond_2
    return-void
.end method


# virtual methods
.method public a(Landroidx/recyclerview/widget/RecyclerView$a;)V
    .locals 1

    .line 840
    new-instance v0, Landroidx/recyclerview/widget/b;

    invoke-direct {v0, p1}, Landroidx/recyclerview/widget/b;-><init>(Landroidx/recyclerview/widget/RecyclerView$a;)V

    invoke-virtual {p0, v0}, Landroidx/recyclerview/widget/f$d;->a(Landroidx/recyclerview/widget/l;)V

    return-void
.end method

.method public a(Landroidx/recyclerview/widget/l;)V
    .locals 12

    .line 855
    instance-of v0, p1, Landroidx/recyclerview/widget/c;

    if-eqz v0, :cond_0

    .line 856
    check-cast p1, Landroidx/recyclerview/widget/c;

    goto :goto_0

    .line 858
    :cond_0
    new-instance v0, Landroidx/recyclerview/widget/c;

    invoke-direct {v0, p1}, Landroidx/recyclerview/widget/c;-><init>(Landroidx/recyclerview/widget/l;)V

    move-object p1, v0

    .line 868
    :goto_0
    iget v0, p0, Landroidx/recyclerview/widget/f$d;->e:I

    .line 870
    new-instance v1, Ljava/util/ArrayDeque;

    invoke-direct {v1}, Ljava/util/ArrayDeque;-><init>()V

    .line 872
    iget v2, p0, Landroidx/recyclerview/widget/f$d;->e:I

    .line 873
    iget v3, p0, Landroidx/recyclerview/widget/f$d;->f:I

    .line 877
    iget-object v4, p0, Landroidx/recyclerview/widget/f$d;->a:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    const/4 v5, 0x1

    sub-int/2addr v4, v5

    :goto_1
    if-ltz v4, :cond_a

    .line 878
    iget-object v6, p0, Landroidx/recyclerview/widget/f$d;->a:Ljava/util/List;

    invoke-interface {v6, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroidx/recyclerview/widget/f$c;

    .line 879
    invoke-virtual {v6}, Landroidx/recyclerview/widget/f$c;->a()I

    move-result v7

    .line 880
    invoke-virtual {v6}, Landroidx/recyclerview/widget/f$c;->b()I

    move-result v8

    :cond_1
    :goto_2
    const/4 v9, 0x0

    if-le v2, v7, :cond_4

    add-int/lit8 v2, v2, -0x1

    .line 887
    iget-object v10, p0, Landroidx/recyclerview/widget/f$d;->b:[I

    aget v10, v10, v2

    and-int/lit8 v11, v10, 0xc

    if-eqz v11, :cond_3

    shr-int/lit8 v11, v10, 0x4

    .line 891
    invoke-static {v1, v11, v9}, Landroidx/recyclerview/widget/f$d;->a(Ljava/util/Collection;IZ)Landroidx/recyclerview/widget/f$e;

    move-result-object v9

    if-eqz v9, :cond_2

    .line 895
    iget v9, v9, Landroidx/recyclerview/widget/f$e;->b:I

    sub-int v9, v0, v9

    sub-int/2addr v9, v5

    .line 896
    invoke-virtual {p1, v2, v9}, Landroidx/recyclerview/widget/c;->c(II)V

    and-int/lit8 v10, v10, 0x4

    if-eqz v10, :cond_1

    .line 898
    iget-object v10, p0, Landroidx/recyclerview/widget/f$d;->d:Landroidx/recyclerview/widget/f$a;

    invoke-virtual {v10, v2, v11}, Landroidx/recyclerview/widget/f$a;->c(II)Ljava/lang/Object;

    move-result-object v10

    .line 899
    invoke-virtual {p1, v9, v5, v10}, Landroidx/recyclerview/widget/c;->a(IILjava/lang/Object;)V

    goto :goto_2

    .line 903
    :cond_2
    new-instance v9, Landroidx/recyclerview/widget/f$e;

    sub-int v10, v0, v2

    sub-int/2addr v10, v5

    invoke-direct {v9, v2, v10, v5}, Landroidx/recyclerview/widget/f$e;-><init>(IIZ)V

    invoke-interface {v1, v9}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_2

    .line 911
    :cond_3
    invoke-virtual {p1, v2, v5}, Landroidx/recyclerview/widget/c;->b(II)V

    add-int/lit8 v0, v0, -0x1

    goto :goto_2

    :cond_4
    :goto_3
    if-le v3, v8, :cond_7

    add-int/lit8 v3, v3, -0x1

    .line 918
    iget-object v7, p0, Landroidx/recyclerview/widget/f$d;->c:[I

    aget v7, v7, v3

    and-int/lit8 v10, v7, 0xc

    if-eqz v10, :cond_6

    shr-int/lit8 v10, v7, 0x4

    .line 924
    invoke-static {v1, v10, v5}, Landroidx/recyclerview/widget/f$d;->a(Ljava/util/Collection;IZ)Landroidx/recyclerview/widget/f$e;

    move-result-object v11

    if-nez v11, :cond_5

    .line 929
    new-instance v7, Landroidx/recyclerview/widget/f$e;

    sub-int v10, v0, v2

    invoke-direct {v7, v3, v10, v9}, Landroidx/recyclerview/widget/f$e;-><init>(IIZ)V

    invoke-interface {v1, v7}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_3

    .line 938
    :cond_5
    iget v11, v11, Landroidx/recyclerview/widget/f$e;->b:I

    sub-int v11, v0, v11

    sub-int/2addr v11, v5

    .line 939
    invoke-virtual {p1, v11, v2}, Landroidx/recyclerview/widget/c;->c(II)V

    and-int/lit8 v7, v7, 0x4

    if-eqz v7, :cond_4

    .line 941
    iget-object v7, p0, Landroidx/recyclerview/widget/f$d;->d:Landroidx/recyclerview/widget/f$a;

    invoke-virtual {v7, v10, v3}, Landroidx/recyclerview/widget/f$a;->c(II)Ljava/lang/Object;

    move-result-object v7

    .line 942
    invoke-virtual {p1, v2, v5, v7}, Landroidx/recyclerview/widget/c;->a(IILjava/lang/Object;)V

    goto :goto_3

    .line 947
    :cond_6
    invoke-virtual {p1, v2, v5}, Landroidx/recyclerview/widget/c;->a(II)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_3

    .line 952
    :cond_7
    iget v2, v6, Landroidx/recyclerview/widget/f$c;->a:I

    .line 953
    iget v3, v6, Landroidx/recyclerview/widget/f$c;->b:I

    .line 954
    :goto_4
    iget v7, v6, Landroidx/recyclerview/widget/f$c;->c:I

    if-ge v9, v7, :cond_9

    .line 956
    iget-object v7, p0, Landroidx/recyclerview/widget/f$d;->b:[I

    aget v7, v7, v2

    and-int/lit8 v7, v7, 0xf

    const/4 v8, 0x2

    if-ne v7, v8, :cond_8

    .line 957
    iget-object v7, p0, Landroidx/recyclerview/widget/f$d;->d:Landroidx/recyclerview/widget/f$a;

    invoke-virtual {v7, v2, v3}, Landroidx/recyclerview/widget/f$a;->c(II)Ljava/lang/Object;

    move-result-object v7

    .line 958
    invoke-virtual {p1, v2, v5, v7}, Landroidx/recyclerview/widget/c;->a(IILjava/lang/Object;)V

    :cond_8
    add-int/lit8 v2, v2, 0x1

    add-int/lit8 v3, v3, 0x1

    add-int/lit8 v9, v9, 0x1

    goto :goto_4

    .line 964
    :cond_9
    iget v2, v6, Landroidx/recyclerview/widget/f$c;->a:I

    .line 965
    iget v3, v6, Landroidx/recyclerview/widget/f$c;->b:I

    add-int/lit8 v4, v4, -0x1

    goto/16 :goto_1

    .line 967
    :cond_a
    invoke-virtual {p1}, Landroidx/recyclerview/widget/c;->a()V

    return-void
.end method
