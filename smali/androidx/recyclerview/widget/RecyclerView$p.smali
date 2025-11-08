.class public final Landroidx/recyclerview/widget/RecyclerView$p;
.super Ljava/lang/Object;
.source "RecyclerView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/recyclerview/widget/RecyclerView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = "p"
.end annotation


# instance fields
.field final a:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Landroidx/recyclerview/widget/RecyclerView$w;",
            ">;"
        }
    .end annotation
.end field

.field b:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Landroidx/recyclerview/widget/RecyclerView$w;",
            ">;"
        }
    .end annotation
.end field

.field final c:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Landroidx/recyclerview/widget/RecyclerView$w;",
            ">;"
        }
    .end annotation
.end field

.field d:I

.field e:Landroidx/recyclerview/widget/RecyclerView$o;

.field final synthetic f:Landroidx/recyclerview/widget/RecyclerView;

.field private final g:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroidx/recyclerview/widget/RecyclerView$w;",
            ">;"
        }
    .end annotation
.end field

.field private h:I

.field private i:Landroidx/recyclerview/widget/RecyclerView$u;


# direct methods
.method public constructor <init>(Landroidx/recyclerview/widget/RecyclerView;)V
    .locals 0

    .line 5920
    iput-object p1, p0, Landroidx/recyclerview/widget/RecyclerView$p;->f:Landroidx/recyclerview/widget/RecyclerView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 5921
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Landroidx/recyclerview/widget/RecyclerView$p;->a:Ljava/util/ArrayList;

    const/4 p1, 0x0

    .line 5922
    iput-object p1, p0, Landroidx/recyclerview/widget/RecyclerView$p;->b:Ljava/util/ArrayList;

    .line 5924
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Landroidx/recyclerview/widget/RecyclerView$p;->c:Ljava/util/ArrayList;

    .line 5926
    iget-object p1, p0, Landroidx/recyclerview/widget/RecyclerView$p;->a:Ljava/util/ArrayList;

    .line 5927
    invoke-static {p1}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object p1

    iput-object p1, p0, Landroidx/recyclerview/widget/RecyclerView$p;->g:Ljava/util/List;

    const/4 p1, 0x2

    .line 5929
    iput p1, p0, Landroidx/recyclerview/widget/RecyclerView$p;->h:I

    .line 5930
    iput p1, p0, Landroidx/recyclerview/widget/RecyclerView$p;->d:I

    return-void
.end method

.method private a(Landroid/view/ViewGroup;Z)V
    .locals 4

    .line 6352
    invoke-virtual {p1}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v0

    const/4 v1, 0x1

    sub-int/2addr v0, v1

    :goto_0
    if-ltz v0, :cond_1

    .line 6353
    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    .line 6354
    instance-of v3, v2, Landroid/view/ViewGroup;

    if-eqz v3, :cond_0

    .line 6355
    check-cast v2, Landroid/view/ViewGroup;

    invoke-direct {p0, v2, v1}, Landroidx/recyclerview/widget/RecyclerView$p;->a(Landroid/view/ViewGroup;Z)V

    :cond_0
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    :cond_1
    if-nez p2, :cond_2

    return-void

    .line 6362
    :cond_2
    invoke-virtual {p1}, Landroid/view/ViewGroup;->getVisibility()I

    move-result p0

    const/4 p2, 0x4

    if-ne p0, p2, :cond_3

    const/4 p0, 0x0

    .line 6363
    invoke-virtual {p1, p0}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 6364
    invoke-virtual {p1, p2}, Landroid/view/ViewGroup;->setVisibility(I)V

    goto :goto_1

    .line 6366
    :cond_3
    invoke-virtual {p1}, Landroid/view/ViewGroup;->getVisibility()I

    move-result p0

    .line 6367
    invoke-virtual {p1, p2}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 6368
    invoke-virtual {p1, p0}, Landroid/view/ViewGroup;->setVisibility(I)V

    :goto_1
    return-void
.end method

.method private a(Landroidx/recyclerview/widget/RecyclerView$w;IIJ)Z
    .locals 9

    const/4 v0, 0x0

    .line 6028
    iput-object v0, p1, Landroidx/recyclerview/widget/RecyclerView$w;->mBindingAdapter:Landroidx/recyclerview/widget/RecyclerView$a;

    .line 6029
    iget-object v0, p0, Landroidx/recyclerview/widget/RecyclerView$p;->f:Landroidx/recyclerview/widget/RecyclerView;

    iput-object v0, p1, Landroidx/recyclerview/widget/RecyclerView$w;->mOwnerRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    .line 6030
    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView$w;->getItemViewType()I

    move-result v2

    .line 6031
    iget-object v0, p0, Landroidx/recyclerview/widget/RecyclerView$p;->f:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v0}, Landroidx/recyclerview/widget/RecyclerView;->getNanoTime()J

    move-result-wide v7

    const-wide v0, 0x7fffffffffffffffL

    cmp-long v0, p4, v0

    if-eqz v0, :cond_0

    .line 6032
    iget-object v1, p0, Landroidx/recyclerview/widget/RecyclerView$p;->e:Landroidx/recyclerview/widget/RecyclerView$o;

    move-wide v3, v7

    move-wide v5, p4

    .line 6033
    invoke-virtual/range {v1 .. v6}, Landroidx/recyclerview/widget/RecyclerView$o;->b(IJJ)Z

    move-result p4

    if-nez p4, :cond_0

    const/4 p0, 0x0

    return p0

    .line 6037
    :cond_0
    iget-object p4, p0, Landroidx/recyclerview/widget/RecyclerView$p;->f:Landroidx/recyclerview/widget/RecyclerView;

    iget-object p4, p4, Landroidx/recyclerview/widget/RecyclerView;->mAdapter:Landroidx/recyclerview/widget/RecyclerView$a;

    invoke-virtual {p4, p1, p2}, Landroidx/recyclerview/widget/RecyclerView$a;->bindViewHolder(Landroidx/recyclerview/widget/RecyclerView$w;I)V

    .line 6038
    iget-object p2, p0, Landroidx/recyclerview/widget/RecyclerView$p;->f:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {p2}, Landroidx/recyclerview/widget/RecyclerView;->getNanoTime()J

    move-result-wide p4

    .line 6039
    iget-object p2, p0, Landroidx/recyclerview/widget/RecyclerView$p;->e:Landroidx/recyclerview/widget/RecyclerView$o;

    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView$w;->getItemViewType()I

    move-result v0

    sub-long/2addr p4, v7

    invoke-virtual {p2, v0, p4, p5}, Landroidx/recyclerview/widget/RecyclerView$o;->b(IJ)V

    .line 6040
    invoke-direct {p0, p1}, Landroidx/recyclerview/widget/RecyclerView$p;->e(Landroidx/recyclerview/widget/RecyclerView$w;)V

    .line 6041
    iget-object p0, p0, Landroidx/recyclerview/widget/RecyclerView$p;->f:Landroidx/recyclerview/widget/RecyclerView;

    iget-object p0, p0, Landroidx/recyclerview/widget/RecyclerView;->mState:Landroidx/recyclerview/widget/RecyclerView$t;

    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView$t;->a()Z

    move-result p0

    if-eqz p0, :cond_1

    .line 6042
    iput p3, p1, Landroidx/recyclerview/widget/RecyclerView$w;->mPreLayoutPosition:I

    :cond_1
    const/4 p0, 0x1

    return p0
.end method

.method private e(Landroidx/recyclerview/widget/RecyclerView$w;)V
    .locals 1

    .line 6324
    iget-object v0, p0, Landroidx/recyclerview/widget/RecyclerView$p;->f:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v0}, Landroidx/recyclerview/widget/RecyclerView;->isAccessibilityEnabled()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 6325
    iget-object p1, p1, Landroidx/recyclerview/widget/RecyclerView$w;->itemView:Landroid/view/View;

    .line 6326
    invoke-static {p1}, Landroidx/core/h/v;->f(Landroid/view/View;)I

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    .line 6328
    invoke-static {p1, v0}, Landroidx/core/h/v;->b(Landroid/view/View;I)V

    .line 6331
    :cond_0
    iget-object v0, p0, Landroidx/recyclerview/widget/RecyclerView$p;->f:Landroidx/recyclerview/widget/RecyclerView;

    iget-object v0, v0, Landroidx/recyclerview/widget/RecyclerView;->mAccessibilityDelegate:Landroidx/recyclerview/widget/p;

    if-nez v0, :cond_1

    return-void

    .line 6334
    :cond_1
    iget-object p0, p0, Landroidx/recyclerview/widget/RecyclerView$p;->f:Landroidx/recyclerview/widget/RecyclerView;

    iget-object p0, p0, Landroidx/recyclerview/widget/RecyclerView;->mAccessibilityDelegate:Landroidx/recyclerview/widget/p;

    invoke-virtual {p0}, Landroidx/recyclerview/widget/p;->getItemDelegate()Landroidx/core/h/a;

    move-result-object p0

    .line 6335
    instance-of v0, p0, Landroidx/recyclerview/widget/p$a;

    if-eqz v0, :cond_2

    .line 6338
    move-object v0, p0

    check-cast v0, Landroidx/recyclerview/widget/p$a;

    .line 6339
    invoke-virtual {v0, p1}, Landroidx/recyclerview/widget/p$a;->a(Landroid/view/View;)V

    .line 6341
    :cond_2
    invoke-static {p1, p0}, Landroidx/core/h/v;->a(Landroid/view/View;Landroidx/core/h/a;)V

    :cond_3
    return-void
.end method

.method private f(Landroidx/recyclerview/widget/RecyclerView$w;)V
    .locals 1

    .line 6346
    iget-object v0, p1, Landroidx/recyclerview/widget/RecyclerView$w;->itemView:Landroid/view/View;

    instance-of v0, v0, Landroid/view/ViewGroup;

    if-eqz v0, :cond_0

    .line 6347
    iget-object p1, p1, Landroidx/recyclerview/widget/RecyclerView$w;->itemView:Landroid/view/View;

    check-cast p1, Landroid/view/ViewGroup;

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Landroidx/recyclerview/widget/RecyclerView$p;->a(Landroid/view/ViewGroup;Z)V

    :cond_0
    return-void
.end method


# virtual methods
.method a(IZ)Landroid/view/View;
    .locals 2

    const-wide v0, 0x7fffffffffffffffL

    .line 6143
    invoke-virtual {p0, p1, p2, v0, v1}, Landroidx/recyclerview/widget/RecyclerView$p;->a(IZJ)Landroidx/recyclerview/widget/RecyclerView$w;

    move-result-object p0

    iget-object p0, p0, Landroidx/recyclerview/widget/RecyclerView$w;->itemView:Landroid/view/View;

    return-object p0
.end method

.method a(IZJ)Landroidx/recyclerview/widget/RecyclerView$w;
    .locals 16

    move-object/from16 v6, p0

    move/from16 v3, p1

    move/from16 v0, p2

    if-ltz v3, :cond_17

    .line 6167
    iget-object v1, v6, Landroidx/recyclerview/widget/RecyclerView$p;->f:Landroidx/recyclerview/widget/RecyclerView;

    iget-object v1, v1, Landroidx/recyclerview/widget/RecyclerView;->mState:Landroidx/recyclerview/widget/RecyclerView$t;

    invoke-virtual {v1}, Landroidx/recyclerview/widget/RecyclerView$t;->e()I

    move-result v1

    if-ge v3, v1, :cond_17

    .line 6175
    iget-object v1, v6, Landroidx/recyclerview/widget/RecyclerView$p;->f:Landroidx/recyclerview/widget/RecyclerView;

    iget-object v1, v1, Landroidx/recyclerview/widget/RecyclerView;->mState:Landroidx/recyclerview/widget/RecyclerView$t;

    invoke-virtual {v1}, Landroidx/recyclerview/widget/RecyclerView$t;->a()Z

    move-result v1

    const/4 v2, 0x0

    const/4 v7, 0x1

    const/4 v8, 0x0

    if-eqz v1, :cond_0

    .line 6176
    invoke-virtual/range {p0 .. p1}, Landroidx/recyclerview/widget/RecyclerView$p;->f(I)Landroidx/recyclerview/widget/RecyclerView$w;

    move-result-object v1

    if-eqz v1, :cond_1

    move v4, v7

    goto :goto_0

    :cond_0
    move-object v1, v2

    :cond_1
    move v4, v8

    :goto_0
    if-nez v1, :cond_6

    .line 6181
    invoke-virtual/range {p0 .. p2}, Landroidx/recyclerview/widget/RecyclerView$p;->b(IZ)Landroidx/recyclerview/widget/RecyclerView$w;

    move-result-object v1

    if-eqz v1, :cond_6

    .line 6183
    invoke-virtual {v6, v1}, Landroidx/recyclerview/widget/RecyclerView$p;->a(Landroidx/recyclerview/widget/RecyclerView$w;)Z

    move-result v5

    if-nez v5, :cond_5

    if-nez v0, :cond_4

    const/4 v5, 0x4

    .line 6188
    invoke-virtual {v1, v5}, Landroidx/recyclerview/widget/RecyclerView$w;->addFlags(I)V

    .line 6189
    invoke-virtual {v1}, Landroidx/recyclerview/widget/RecyclerView$w;->isScrap()Z

    move-result v5

    if-eqz v5, :cond_2

    .line 6190
    iget-object v5, v6, Landroidx/recyclerview/widget/RecyclerView$p;->f:Landroidx/recyclerview/widget/RecyclerView;

    iget-object v9, v1, Landroidx/recyclerview/widget/RecyclerView$w;->itemView:Landroid/view/View;

    invoke-virtual {v5, v9, v8}, Landroidx/recyclerview/widget/RecyclerView;->removeDetachedView(Landroid/view/View;Z)V

    .line 6191
    invoke-virtual {v1}, Landroidx/recyclerview/widget/RecyclerView$w;->unScrap()V

    goto :goto_1

    .line 6192
    :cond_2
    invoke-virtual {v1}, Landroidx/recyclerview/widget/RecyclerView$w;->wasReturnedFromScrap()Z

    move-result v5

    if-eqz v5, :cond_3

    .line 6193
    invoke-virtual {v1}, Landroidx/recyclerview/widget/RecyclerView$w;->clearReturnedFromScrapFlag()V

    .line 6195
    :cond_3
    :goto_1
    invoke-virtual {v6, v1}, Landroidx/recyclerview/widget/RecyclerView$p;->b(Landroidx/recyclerview/widget/RecyclerView$w;)V

    :cond_4
    move-object v1, v2

    goto :goto_2

    :cond_5
    move v4, v7

    :cond_6
    :goto_2
    if-nez v1, :cond_f

    .line 6204
    iget-object v5, v6, Landroidx/recyclerview/widget/RecyclerView$p;->f:Landroidx/recyclerview/widget/RecyclerView;

    iget-object v5, v5, Landroidx/recyclerview/widget/RecyclerView;->mAdapterHelper:Landroidx/recyclerview/widget/a;

    invoke-virtual {v5, v3}, Landroidx/recyclerview/widget/a;->b(I)I

    move-result v5

    if-ltz v5, :cond_e

    .line 6205
    iget-object v9, v6, Landroidx/recyclerview/widget/RecyclerView$p;->f:Landroidx/recyclerview/widget/RecyclerView;

    iget-object v9, v9, Landroidx/recyclerview/widget/RecyclerView;->mAdapter:Landroidx/recyclerview/widget/RecyclerView$a;

    invoke-virtual {v9}, Landroidx/recyclerview/widget/RecyclerView$a;->getItemCount()I

    move-result v9

    if-ge v5, v9, :cond_e

    .line 6211
    iget-object v9, v6, Landroidx/recyclerview/widget/RecyclerView$p;->f:Landroidx/recyclerview/widget/RecyclerView;

    iget-object v9, v9, Landroidx/recyclerview/widget/RecyclerView;->mAdapter:Landroidx/recyclerview/widget/RecyclerView$a;

    invoke-virtual {v9, v5}, Landroidx/recyclerview/widget/RecyclerView$a;->getItemViewType(I)I

    move-result v9

    .line 6213
    iget-object v10, v6, Landroidx/recyclerview/widget/RecyclerView$p;->f:Landroidx/recyclerview/widget/RecyclerView;

    iget-object v10, v10, Landroidx/recyclerview/widget/RecyclerView;->mAdapter:Landroidx/recyclerview/widget/RecyclerView$a;

    invoke-virtual {v10}, Landroidx/recyclerview/widget/RecyclerView$a;->hasStableIds()Z

    move-result v10

    if-eqz v10, :cond_7

    .line 6214
    iget-object v1, v6, Landroidx/recyclerview/widget/RecyclerView$p;->f:Landroidx/recyclerview/widget/RecyclerView;

    iget-object v1, v1, Landroidx/recyclerview/widget/RecyclerView;->mAdapter:Landroidx/recyclerview/widget/RecyclerView$a;

    invoke-virtual {v1, v5}, Landroidx/recyclerview/widget/RecyclerView$a;->getItemId(I)J

    move-result-wide v10

    invoke-virtual {v6, v10, v11, v9, v0}, Landroidx/recyclerview/widget/RecyclerView$p;->a(JIZ)Landroidx/recyclerview/widget/RecyclerView$w;

    move-result-object v1

    if-eqz v1, :cond_7

    .line 6218
    iput v5, v1, Landroidx/recyclerview/widget/RecyclerView$w;->mPosition:I

    move v4, v7

    :cond_7
    if-nez v1, :cond_a

    .line 6222
    iget-object v0, v6, Landroidx/recyclerview/widget/RecyclerView$p;->i:Landroidx/recyclerview/widget/RecyclerView$u;

    if-eqz v0, :cond_a

    .line 6226
    invoke-virtual {v0, v6, v3, v9}, Landroidx/recyclerview/widget/RecyclerView$u;->a(Landroidx/recyclerview/widget/RecyclerView$p;II)Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_a

    .line 6228
    iget-object v1, v6, Landroidx/recyclerview/widget/RecyclerView$p;->f:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v1, v0}, Landroidx/recyclerview/widget/RecyclerView;->getChildViewHolder(Landroid/view/View;)Landroidx/recyclerview/widget/RecyclerView$w;

    move-result-object v1

    if-eqz v1, :cond_9

    .line 6233
    invoke-virtual {v1}, Landroidx/recyclerview/widget/RecyclerView$w;->shouldIgnore()Z

    move-result v0

    if-nez v0, :cond_8

    goto :goto_3

    .line 6234
    :cond_8
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getViewForPositionAndType returned a view that is ignored. You must call stopIgnoring before returning this view."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, v6, Landroidx/recyclerview/widget/RecyclerView$p;->f:Landroidx/recyclerview/widget/RecyclerView;

    .line 6236
    invoke-virtual {v2}, Landroidx/recyclerview/widget/RecyclerView;->exceptionLabel()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 6230
    :cond_9
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getViewForPositionAndType returned a view which does not have a ViewHolder"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, v6, Landroidx/recyclerview/widget/RecyclerView$p;->f:Landroidx/recyclerview/widget/RecyclerView;

    .line 6232
    invoke-virtual {v2}, Landroidx/recyclerview/widget/RecyclerView;->exceptionLabel()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_a
    :goto_3
    if-nez v1, :cond_b

    .line 6245
    invoke-virtual/range {p0 .. p0}, Landroidx/recyclerview/widget/RecyclerView$p;->g()Landroidx/recyclerview/widget/RecyclerView$o;

    move-result-object v0

    invoke-virtual {v0, v9}, Landroidx/recyclerview/widget/RecyclerView$o;->a(I)Landroidx/recyclerview/widget/RecyclerView$w;

    move-result-object v1

    if-eqz v1, :cond_b

    .line 6247
    invoke-virtual {v1}, Landroidx/recyclerview/widget/RecyclerView$w;->resetInternal()V

    .line 6248
    sget-boolean v0, Landroidx/recyclerview/widget/RecyclerView;->FORCE_INVALIDATE_DISPLAY_LIST:Z

    if-eqz v0, :cond_b

    .line 6249
    invoke-direct {v6, v1}, Landroidx/recyclerview/widget/RecyclerView$p;->f(Landroidx/recyclerview/widget/RecyclerView$w;)V

    :cond_b
    if-nez v1, :cond_f

    .line 6254
    iget-object v0, v6, Landroidx/recyclerview/widget/RecyclerView$p;->f:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v0}, Landroidx/recyclerview/widget/RecyclerView;->getNanoTime()J

    move-result-wide v0

    const-wide v10, 0x7fffffffffffffffL

    cmp-long v5, p3, v10

    if-eqz v5, :cond_c

    .line 6255
    iget-object v10, v6, Landroidx/recyclerview/widget/RecyclerView$p;->e:Landroidx/recyclerview/widget/RecyclerView$o;

    move v11, v9

    move-wide v12, v0

    move-wide/from16 v14, p3

    .line 6256
    invoke-virtual/range {v10 .. v15}, Landroidx/recyclerview/widget/RecyclerView$o;->a(IJJ)Z

    move-result v5

    if-nez v5, :cond_c

    return-object v2

    .line 6260
    :cond_c
    iget-object v2, v6, Landroidx/recyclerview/widget/RecyclerView$p;->f:Landroidx/recyclerview/widget/RecyclerView;

    iget-object v2, v2, Landroidx/recyclerview/widget/RecyclerView;->mAdapter:Landroidx/recyclerview/widget/RecyclerView$a;

    iget-object v5, v6, Landroidx/recyclerview/widget/RecyclerView$p;->f:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v2, v5, v9}, Landroidx/recyclerview/widget/RecyclerView$a;->createViewHolder(Landroid/view/ViewGroup;I)Landroidx/recyclerview/widget/RecyclerView$w;

    move-result-object v2

    .line 6261
    sget-boolean v5, Landroidx/recyclerview/widget/RecyclerView;->ALLOW_THREAD_GAP_WORK:Z

    if-eqz v5, :cond_d

    .line 6263
    iget-object v5, v2, Landroidx/recyclerview/widget/RecyclerView$w;->itemView:Landroid/view/View;

    invoke-static {v5}, Landroidx/recyclerview/widget/RecyclerView;->findNestedRecyclerView(Landroid/view/View;)Landroidx/recyclerview/widget/RecyclerView;

    move-result-object v5

    if-eqz v5, :cond_d

    .line 6265
    new-instance v10, Ljava/lang/ref/WeakReference;

    invoke-direct {v10, v5}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v10, v2, Landroidx/recyclerview/widget/RecyclerView$w;->mNestedRecyclerView:Ljava/lang/ref/WeakReference;

    .line 6269
    :cond_d
    iget-object v5, v6, Landroidx/recyclerview/widget/RecyclerView$p;->f:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v5}, Landroidx/recyclerview/widget/RecyclerView;->getNanoTime()J

    move-result-wide v10

    .line 6270
    iget-object v5, v6, Landroidx/recyclerview/widget/RecyclerView$p;->e:Landroidx/recyclerview/widget/RecyclerView$o;

    sub-long/2addr v10, v0

    invoke-virtual {v5, v9, v10, v11}, Landroidx/recyclerview/widget/RecyclerView$o;->a(IJ)V

    move-object v10, v2

    goto :goto_4

    .line 6206
    :cond_e
    new-instance v0, Ljava/lang/IndexOutOfBoundsException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Inconsistency detected. Invalid item position "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, "(offset:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ").state:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, v6, Landroidx/recyclerview/widget/RecyclerView$p;->f:Landroidx/recyclerview/widget/RecyclerView;

    iget-object v2, v2, Landroidx/recyclerview/widget/RecyclerView;->mState:Landroidx/recyclerview/widget/RecyclerView$t;

    .line 6208
    invoke-virtual {v2}, Landroidx/recyclerview/widget/RecyclerView$t;->e()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    iget-object v2, v6, Landroidx/recyclerview/widget/RecyclerView$p;->f:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v2}, Landroidx/recyclerview/widget/RecyclerView;->exceptionLabel()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_f
    move-object v10, v1

    :goto_4
    move v9, v4

    if-eqz v9, :cond_10

    .line 6280
    iget-object v0, v6, Landroidx/recyclerview/widget/RecyclerView$p;->f:Landroidx/recyclerview/widget/RecyclerView;

    iget-object v0, v0, Landroidx/recyclerview/widget/RecyclerView;->mState:Landroidx/recyclerview/widget/RecyclerView$t;

    invoke-virtual {v0}, Landroidx/recyclerview/widget/RecyclerView$t;->a()Z

    move-result v0

    if-nez v0, :cond_10

    const/16 v0, 0x2000

    .line 6281
    invoke-virtual {v10, v0}, Landroidx/recyclerview/widget/RecyclerView$w;->hasAnyOfTheFlags(I)Z

    move-result v1

    if-eqz v1, :cond_10

    .line 6282
    invoke-virtual {v10, v8, v0}, Landroidx/recyclerview/widget/RecyclerView$w;->setFlags(II)V

    .line 6283
    iget-object v0, v6, Landroidx/recyclerview/widget/RecyclerView$p;->f:Landroidx/recyclerview/widget/RecyclerView;

    iget-object v0, v0, Landroidx/recyclerview/widget/RecyclerView;->mState:Landroidx/recyclerview/widget/RecyclerView$t;

    iget-boolean v0, v0, Landroidx/recyclerview/widget/RecyclerView$t;->j:Z

    if-eqz v0, :cond_10

    .line 6285
    invoke-static {v10}, Landroidx/recyclerview/widget/RecyclerView$f;->e(Landroidx/recyclerview/widget/RecyclerView$w;)I

    move-result v0

    or-int/lit16 v0, v0, 0x1000

    .line 6287
    iget-object v1, v6, Landroidx/recyclerview/widget/RecyclerView$p;->f:Landroidx/recyclerview/widget/RecyclerView;

    iget-object v1, v1, Landroidx/recyclerview/widget/RecyclerView;->mItemAnimator:Landroidx/recyclerview/widget/RecyclerView$f;

    iget-object v2, v6, Landroidx/recyclerview/widget/RecyclerView$p;->f:Landroidx/recyclerview/widget/RecyclerView;

    iget-object v2, v2, Landroidx/recyclerview/widget/RecyclerView;->mState:Landroidx/recyclerview/widget/RecyclerView$t;

    .line 6288
    invoke-virtual {v10}, Landroidx/recyclerview/widget/RecyclerView$w;->getUnmodifiedPayloads()Ljava/util/List;

    move-result-object v4

    .line 6287
    invoke-virtual {v1, v2, v10, v0, v4}, Landroidx/recyclerview/widget/RecyclerView$f;->a(Landroidx/recyclerview/widget/RecyclerView$t;Landroidx/recyclerview/widget/RecyclerView$w;ILjava/util/List;)Landroidx/recyclerview/widget/RecyclerView$f$c;

    move-result-object v0

    .line 6289
    iget-object v1, v6, Landroidx/recyclerview/widget/RecyclerView$p;->f:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v1, v10, v0}, Landroidx/recyclerview/widget/RecyclerView;->recordAnimationInfoIfBouncedHiddenView(Landroidx/recyclerview/widget/RecyclerView$w;Landroidx/recyclerview/widget/RecyclerView$f$c;)V

    .line 6294
    :cond_10
    iget-object v0, v6, Landroidx/recyclerview/widget/RecyclerView$p;->f:Landroidx/recyclerview/widget/RecyclerView;

    iget-object v0, v0, Landroidx/recyclerview/widget/RecyclerView;->mState:Landroidx/recyclerview/widget/RecyclerView$t;

    invoke-virtual {v0}, Landroidx/recyclerview/widget/RecyclerView$t;->a()Z

    move-result v0

    if-eqz v0, :cond_11

    invoke-virtual {v10}, Landroidx/recyclerview/widget/RecyclerView$w;->isBound()Z

    move-result v0

    if-eqz v0, :cond_11

    .line 6296
    iput v3, v10, Landroidx/recyclerview/widget/RecyclerView$w;->mPreLayoutPosition:I

    goto :goto_5

    .line 6297
    :cond_11
    invoke-virtual {v10}, Landroidx/recyclerview/widget/RecyclerView$w;->isBound()Z

    move-result v0

    if-eqz v0, :cond_13

    invoke-virtual {v10}, Landroidx/recyclerview/widget/RecyclerView$w;->needsUpdate()Z

    move-result v0

    if-nez v0, :cond_13

    invoke-virtual {v10}, Landroidx/recyclerview/widget/RecyclerView$w;->isInvalid()Z

    move-result v0

    if-eqz v0, :cond_12

    goto :goto_6

    :cond_12
    :goto_5
    move v0, v8

    goto :goto_7

    .line 6303
    :cond_13
    :goto_6
    iget-object v0, v6, Landroidx/recyclerview/widget/RecyclerView$p;->f:Landroidx/recyclerview/widget/RecyclerView;

    iget-object v0, v0, Landroidx/recyclerview/widget/RecyclerView;->mAdapterHelper:Landroidx/recyclerview/widget/a;

    invoke-virtual {v0, v3}, Landroidx/recyclerview/widget/a;->b(I)I

    move-result v2

    move-object/from16 v0, p0

    move-object v1, v10

    move/from16 v3, p1

    move-wide/from16 v4, p3

    .line 6304
    invoke-direct/range {v0 .. v5}, Landroidx/recyclerview/widget/RecyclerView$p;->a(Landroidx/recyclerview/widget/RecyclerView$w;IIJ)Z

    move-result v0

    .line 6307
    :goto_7
    iget-object v1, v10, Landroidx/recyclerview/widget/RecyclerView$w;->itemView:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    if-nez v1, :cond_14

    .line 6310
    iget-object v1, v6, Landroidx/recyclerview/widget/RecyclerView$p;->f:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v1}, Landroidx/recyclerview/widget/RecyclerView;->generateDefaultLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    check-cast v1, Landroidx/recyclerview/widget/RecyclerView$j;

    .line 6311
    iget-object v2, v10, Landroidx/recyclerview/widget/RecyclerView$w;->itemView:Landroid/view/View;

    invoke-virtual {v2, v1}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    goto :goto_8

    .line 6312
    :cond_14
    iget-object v2, v6, Landroidx/recyclerview/widget/RecyclerView$p;->f:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v2, v1}, Landroidx/recyclerview/widget/RecyclerView;->checkLayoutParams(Landroid/view/ViewGroup$LayoutParams;)Z

    move-result v2

    if-nez v2, :cond_15

    .line 6313
    iget-object v2, v6, Landroidx/recyclerview/widget/RecyclerView$p;->f:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v2, v1}, Landroidx/recyclerview/widget/RecyclerView;->generateLayoutParams(Landroid/view/ViewGroup$LayoutParams;)Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    check-cast v1, Landroidx/recyclerview/widget/RecyclerView$j;

    .line 6314
    iget-object v2, v10, Landroidx/recyclerview/widget/RecyclerView$w;->itemView:Landroid/view/View;

    invoke-virtual {v2, v1}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    goto :goto_8

    .line 6316
    :cond_15
    check-cast v1, Landroidx/recyclerview/widget/RecyclerView$j;

    .line 6318
    :goto_8
    iput-object v10, v1, Landroidx/recyclerview/widget/RecyclerView$j;->c:Landroidx/recyclerview/widget/RecyclerView$w;

    if-eqz v9, :cond_16

    if-eqz v0, :cond_16

    goto :goto_9

    :cond_16
    move v7, v8

    .line 6319
    :goto_9
    iput-boolean v7, v1, Landroidx/recyclerview/widget/RecyclerView$j;->f:Z

    return-object v10

    .line 6168
    :cond_17
    new-instance v0, Ljava/lang/IndexOutOfBoundsException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Invalid item position "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, "("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, "). Item count:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, v6, Landroidx/recyclerview/widget/RecyclerView$p;->f:Landroidx/recyclerview/widget/RecyclerView;

    iget-object v2, v2, Landroidx/recyclerview/widget/RecyclerView;->mState:Landroidx/recyclerview/widget/RecyclerView$t;

    .line 6169
    invoke-virtual {v2}, Landroidx/recyclerview/widget/RecyclerView$t;->e()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    iget-object v2, v6, Landroidx/recyclerview/widget/RecyclerView$p;->f:Landroidx/recyclerview/widget/RecyclerView;

    .line 6170
    invoke-virtual {v2}, Landroidx/recyclerview/widget/RecyclerView;->exceptionLabel()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method a(JIZ)Landroidx/recyclerview/widget/RecyclerView$w;
    .locals 5

    .line 6739
    iget-object v0, p0, Landroidx/recyclerview/widget/RecyclerView$p;->a:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    :goto_0
    if-ltz v0, :cond_3

    .line 6741
    iget-object v1, p0, Landroidx/recyclerview/widget/RecyclerView$p;->a:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroidx/recyclerview/widget/RecyclerView$w;

    .line 6742
    invoke-virtual {v1}, Landroidx/recyclerview/widget/RecyclerView$w;->getItemId()J

    move-result-wide v2

    cmp-long v2, v2, p1

    if-nez v2, :cond_2

    invoke-virtual {v1}, Landroidx/recyclerview/widget/RecyclerView$w;->wasReturnedFromScrap()Z

    move-result v2

    if-nez v2, :cond_2

    .line 6743
    invoke-virtual {v1}, Landroidx/recyclerview/widget/RecyclerView$w;->getItemViewType()I

    move-result v2

    if-ne p3, v2, :cond_1

    const/16 p1, 0x20

    .line 6744
    invoke-virtual {v1, p1}, Landroidx/recyclerview/widget/RecyclerView$w;->addFlags(I)V

    .line 6745
    invoke-virtual {v1}, Landroidx/recyclerview/widget/RecyclerView$w;->isRemoved()Z

    move-result p1

    if-eqz p1, :cond_0

    .line 6754
    iget-object p0, p0, Landroidx/recyclerview/widget/RecyclerView$p;->f:Landroidx/recyclerview/widget/RecyclerView;

    iget-object p0, p0, Landroidx/recyclerview/widget/RecyclerView;->mState:Landroidx/recyclerview/widget/RecyclerView$t;

    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView$t;->a()Z

    move-result p0

    if-nez p0, :cond_0

    const/4 p0, 0x2

    const/16 p1, 0xe

    .line 6755
    invoke-virtual {v1, p0, p1}, Landroidx/recyclerview/widget/RecyclerView$w;->setFlags(II)V

    :cond_0
    return-object v1

    :cond_1
    if-nez p4, :cond_2

    .line 6764
    iget-object v2, p0, Landroidx/recyclerview/widget/RecyclerView$p;->a:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 6765
    iget-object v2, p0, Landroidx/recyclerview/widget/RecyclerView$p;->f:Landroidx/recyclerview/widget/RecyclerView;

    iget-object v3, v1, Landroidx/recyclerview/widget/RecyclerView$w;->itemView:Landroid/view/View;

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Landroidx/recyclerview/widget/RecyclerView;->removeDetachedView(Landroid/view/View;Z)V

    .line 6766
    iget-object v1, v1, Landroidx/recyclerview/widget/RecyclerView$w;->itemView:Landroid/view/View;

    invoke-virtual {p0, v1}, Landroidx/recyclerview/widget/RecyclerView$p;->b(Landroid/view/View;)V

    :cond_2
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    .line 6772
    :cond_3
    iget-object v0, p0, Landroidx/recyclerview/widget/RecyclerView$p;->c:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    :goto_1
    const/4 v1, 0x0

    if-ltz v0, :cond_7

    .line 6774
    iget-object v2, p0, Landroidx/recyclerview/widget/RecyclerView$p;->c:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroidx/recyclerview/widget/RecyclerView$w;

    .line 6775
    invoke-virtual {v2}, Landroidx/recyclerview/widget/RecyclerView$w;->getItemId()J

    move-result-wide v3

    cmp-long v3, v3, p1

    if-nez v3, :cond_6

    invoke-virtual {v2}, Landroidx/recyclerview/widget/RecyclerView$w;->isAttachedToTransitionOverlay()Z

    move-result v3

    if-nez v3, :cond_6

    .line 6776
    invoke-virtual {v2}, Landroidx/recyclerview/widget/RecyclerView$w;->getItemViewType()I

    move-result v3

    if-ne p3, v3, :cond_5

    if-nez p4, :cond_4

    .line 6778
    iget-object p0, p0, Landroidx/recyclerview/widget/RecyclerView$p;->c:Ljava/util/ArrayList;

    invoke-virtual {p0, v0}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    :cond_4
    return-object v2

    :cond_5
    if-nez p4, :cond_6

    .line 6782
    invoke-virtual {p0, v0}, Landroidx/recyclerview/widget/RecyclerView$p;->d(I)V

    return-object v1

    :cond_6
    add-int/lit8 v0, v0, -0x1

    goto :goto_1

    :cond_7
    return-object v1
.end method

.method public a()V
    .locals 1

    .line 5943
    iget-object v0, p0, Landroidx/recyclerview/widget/RecyclerView$p;->a:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 5944
    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView$p;->d()V

    return-void
.end method

.method public a(I)V
    .locals 0

    .line 5953
    iput p1, p0, Landroidx/recyclerview/widget/RecyclerView$p;->h:I

    .line 5954
    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView$p;->b()V

    return-void
.end method

.method a(II)V
    .locals 8

    if-ge p1, p2, :cond_0

    const/4 v0, -0x1

    move v1, p2

    move v2, v0

    move v0, p1

    goto :goto_0

    :cond_0
    const/4 v0, 0x1

    move v1, p1

    move v2, v0

    move v0, p2

    .line 6821
    :goto_0
    iget-object v3, p0, Landroidx/recyclerview/widget/RecyclerView$p;->c:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    const/4 v4, 0x0

    move v5, v4

    :goto_1
    if-ge v5, v3, :cond_4

    .line 6823
    iget-object v6, p0, Landroidx/recyclerview/widget/RecyclerView$p;->c:Ljava/util/ArrayList;

    invoke-virtual {v6, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroidx/recyclerview/widget/RecyclerView$w;

    if-eqz v6, :cond_3

    .line 6824
    iget v7, v6, Landroidx/recyclerview/widget/RecyclerView$w;->mPosition:I

    if-lt v7, v0, :cond_3

    iget v7, v6, Landroidx/recyclerview/widget/RecyclerView$w;->mPosition:I

    if-le v7, v1, :cond_1

    goto :goto_2

    .line 6827
    :cond_1
    iget v7, v6, Landroidx/recyclerview/widget/RecyclerView$w;->mPosition:I

    if-ne v7, p1, :cond_2

    sub-int v7, p2, p1

    .line 6828
    invoke-virtual {v6, v7, v4}, Landroidx/recyclerview/widget/RecyclerView$w;->offsetPosition(IZ)V

    goto :goto_2

    .line 6830
    :cond_2
    invoke-virtual {v6, v2, v4}, Landroidx/recyclerview/widget/RecyclerView$w;->offsetPosition(IZ)V

    :cond_3
    :goto_2
    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    :cond_4
    return-void
.end method

.method a(IIZ)V
    .locals 4

    add-int v0, p1, p2

    .line 6861
    iget-object v1, p0, Landroidx/recyclerview/widget/RecyclerView$p;->c:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    :goto_0
    if-ltz v1, :cond_2

    .line 6863
    iget-object v2, p0, Landroidx/recyclerview/widget/RecyclerView$p;->c:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroidx/recyclerview/widget/RecyclerView$w;

    if-eqz v2, :cond_1

    .line 6865
    iget v3, v2, Landroidx/recyclerview/widget/RecyclerView$w;->mPosition:I

    if-lt v3, v0, :cond_0

    neg-int v3, p2

    .line 6871
    invoke-virtual {v2, v3, p3}, Landroidx/recyclerview/widget/RecyclerView$w;->offsetPosition(IZ)V

    goto :goto_1

    .line 6872
    :cond_0
    iget v3, v2, Landroidx/recyclerview/widget/RecyclerView$w;->mPosition:I

    if-lt v3, p1, :cond_1

    const/16 v3, 0x8

    .line 6874
    invoke-virtual {v2, v3}, Landroidx/recyclerview/widget/RecyclerView$w;->addFlags(I)V

    .line 6875
    invoke-virtual {p0, v1}, Landroidx/recyclerview/widget/RecyclerView$p;->d(I)V

    :cond_1
    :goto_1
    add-int/lit8 v1, v1, -0x1

    goto :goto_0

    :cond_2
    return-void
.end method

.method public a(Landroid/view/View;)V
    .locals 3

    .line 6385
    invoke-static {p1}, Landroidx/recyclerview/widget/RecyclerView;->getChildViewHolderInt(Landroid/view/View;)Landroidx/recyclerview/widget/RecyclerView$w;

    move-result-object v0

    .line 6386
    invoke-virtual {v0}, Landroidx/recyclerview/widget/RecyclerView$w;->isTmpDetached()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 6387
    iget-object v1, p0, Landroidx/recyclerview/widget/RecyclerView$p;->f:Landroidx/recyclerview/widget/RecyclerView;

    const/4 v2, 0x0

    invoke-virtual {v1, p1, v2}, Landroidx/recyclerview/widget/RecyclerView;->removeDetachedView(Landroid/view/View;Z)V

    .line 6389
    :cond_0
    invoke-virtual {v0}, Landroidx/recyclerview/widget/RecyclerView$w;->isScrap()Z

    move-result p1

    if-eqz p1, :cond_1

    .line 6390
    invoke-virtual {v0}, Landroidx/recyclerview/widget/RecyclerView$w;->unScrap()V

    goto :goto_0

    .line 6391
    :cond_1
    invoke-virtual {v0}, Landroidx/recyclerview/widget/RecyclerView$w;->wasReturnedFromScrap()Z

    move-result p1

    if-eqz p1, :cond_2

    .line 6392
    invoke-virtual {v0}, Landroidx/recyclerview/widget/RecyclerView$w;->clearReturnedFromScrapFlag()V

    .line 6394
    :cond_2
    :goto_0
    invoke-virtual {p0, v0}, Landroidx/recyclerview/widget/RecyclerView$p;->b(Landroidx/recyclerview/widget/RecyclerView$w;)V

    .line 6409
    iget-object p1, p0, Landroidx/recyclerview/widget/RecyclerView$p;->f:Landroidx/recyclerview/widget/RecyclerView;

    iget-object p1, p1, Landroidx/recyclerview/widget/RecyclerView;->mItemAnimator:Landroidx/recyclerview/widget/RecyclerView$f;

    if-eqz p1, :cond_3

    invoke-virtual {v0}, Landroidx/recyclerview/widget/RecyclerView$w;->isRecyclable()Z

    move-result p1

    if-nez p1, :cond_3

    .line 6410
    iget-object p0, p0, Landroidx/recyclerview/widget/RecyclerView$p;->f:Landroidx/recyclerview/widget/RecyclerView;

    iget-object p0, p0, Landroidx/recyclerview/widget/RecyclerView;->mItemAnimator:Landroidx/recyclerview/widget/RecyclerView$f;

    invoke-virtual {p0, v0}, Landroidx/recyclerview/widget/RecyclerView$f;->d(Landroidx/recyclerview/widget/RecyclerView$w;)V

    :cond_3
    return-void
.end method

.method a(Landroidx/recyclerview/widget/RecyclerView$a;Landroidx/recyclerview/widget/RecyclerView$a;Z)V
    .locals 0

    .line 6806
    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView$p;->a()V

    .line 6807
    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView$p;->g()Landroidx/recyclerview/widget/RecyclerView$o;

    move-result-object p0

    invoke-virtual {p0, p1, p2, p3}, Landroidx/recyclerview/widget/RecyclerView$o;->a(Landroidx/recyclerview/widget/RecyclerView$a;Landroidx/recyclerview/widget/RecyclerView$a;Z)V

    return-void
.end method

.method a(Landroidx/recyclerview/widget/RecyclerView$o;)V
    .locals 1

    .line 6886
    iget-object v0, p0, Landroidx/recyclerview/widget/RecyclerView$p;->e:Landroidx/recyclerview/widget/RecyclerView$o;

    if-eqz v0, :cond_0

    .line 6887
    invoke-virtual {v0}, Landroidx/recyclerview/widget/RecyclerView$o;->c()V

    .line 6889
    :cond_0
    iput-object p1, p0, Landroidx/recyclerview/widget/RecyclerView$p;->e:Landroidx/recyclerview/widget/RecyclerView$o;

    .line 6890
    iget-object p1, p0, Landroidx/recyclerview/widget/RecyclerView$p;->e:Landroidx/recyclerview/widget/RecyclerView$o;

    if-eqz p1, :cond_1

    iget-object p1, p0, Landroidx/recyclerview/widget/RecyclerView$p;->f:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView;->getAdapter()Landroidx/recyclerview/widget/RecyclerView$a;

    move-result-object p1

    if-eqz p1, :cond_1

    .line 6891
    iget-object p0, p0, Landroidx/recyclerview/widget/RecyclerView$p;->e:Landroidx/recyclerview/widget/RecyclerView$o;

    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView$o;->b()V

    :cond_1
    return-void
.end method

.method a(Landroidx/recyclerview/widget/RecyclerView$u;)V
    .locals 0

    .line 6882
    iput-object p1, p0, Landroidx/recyclerview/widget/RecyclerView$p;->i:Landroidx/recyclerview/widget/RecyclerView$u;

    return-void
.end method

.method a(Landroidx/recyclerview/widget/RecyclerView$w;Z)V
    .locals 4

    .line 6550
    invoke-static {p1}, Landroidx/recyclerview/widget/RecyclerView;->clearNestedRecyclerViewIfNotNested(Landroidx/recyclerview/widget/RecyclerView$w;)V

    .line 6551
    iget-object v0, p1, Landroidx/recyclerview/widget/RecyclerView$w;->itemView:Landroid/view/View;

    .line 6552
    iget-object v1, p0, Landroidx/recyclerview/widget/RecyclerView$p;->f:Landroidx/recyclerview/widget/RecyclerView;

    iget-object v1, v1, Landroidx/recyclerview/widget/RecyclerView;->mAccessibilityDelegate:Landroidx/recyclerview/widget/p;

    const/4 v2, 0x0

    if-eqz v1, :cond_1

    .line 6553
    iget-object v1, p0, Landroidx/recyclerview/widget/RecyclerView$p;->f:Landroidx/recyclerview/widget/RecyclerView;

    iget-object v1, v1, Landroidx/recyclerview/widget/RecyclerView;->mAccessibilityDelegate:Landroidx/recyclerview/widget/p;

    invoke-virtual {v1}, Landroidx/recyclerview/widget/p;->getItemDelegate()Landroidx/core/h/a;

    move-result-object v1

    .line 6555
    instance-of v3, v1, Landroidx/recyclerview/widget/p$a;

    if-eqz v3, :cond_0

    .line 6556
    check-cast v1, Landroidx/recyclerview/widget/p$a;

    .line 6558
    invoke-virtual {v1, v0}, Landroidx/recyclerview/widget/p$a;->b(Landroid/view/View;)Landroidx/core/h/a;

    move-result-object v1

    goto :goto_0

    :cond_0
    move-object v1, v2

    .line 6561
    :goto_0
    invoke-static {v0, v1}, Landroidx/core/h/v;->a(Landroid/view/View;Landroidx/core/h/a;)V

    :cond_1
    if-eqz p2, :cond_2

    .line 6564
    invoke-virtual {p0, p1}, Landroidx/recyclerview/widget/RecyclerView$p;->d(Landroidx/recyclerview/widget/RecyclerView$w;)V

    .line 6566
    :cond_2
    iput-object v2, p1, Landroidx/recyclerview/widget/RecyclerView$w;->mBindingAdapter:Landroidx/recyclerview/widget/RecyclerView$a;

    .line 6567
    iput-object v2, p1, Landroidx/recyclerview/widget/RecyclerView$w;->mOwnerRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    .line 6568
    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView$p;->g()Landroidx/recyclerview/widget/RecyclerView$o;

    move-result-object p0

    invoke-virtual {p0, p1}, Landroidx/recyclerview/widget/RecyclerView$o;->a(Landroidx/recyclerview/widget/RecyclerView$w;)V

    return-void
.end method

.method a(Landroidx/recyclerview/widget/RecyclerView$w;)Z
    .locals 5

    .line 5989
    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView$w;->isRemoved()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 5994
    iget-object p0, p0, Landroidx/recyclerview/widget/RecyclerView$p;->f:Landroidx/recyclerview/widget/RecyclerView;

    iget-object p0, p0, Landroidx/recyclerview/widget/RecyclerView;->mState:Landroidx/recyclerview/widget/RecyclerView$t;

    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView$t;->a()Z

    move-result p0

    return p0

    .line 5996
    :cond_0
    iget v0, p1, Landroidx/recyclerview/widget/RecyclerView$w;->mPosition:I

    if-ltz v0, :cond_4

    iget v0, p1, Landroidx/recyclerview/widget/RecyclerView$w;->mPosition:I

    iget-object v1, p0, Landroidx/recyclerview/widget/RecyclerView$p;->f:Landroidx/recyclerview/widget/RecyclerView;

    iget-object v1, v1, Landroidx/recyclerview/widget/RecyclerView;->mAdapter:Landroidx/recyclerview/widget/RecyclerView$a;

    invoke-virtual {v1}, Landroidx/recyclerview/widget/RecyclerView$a;->getItemCount()I

    move-result v1

    if-ge v0, v1, :cond_4

    .line 6000
    iget-object v0, p0, Landroidx/recyclerview/widget/RecyclerView$p;->f:Landroidx/recyclerview/widget/RecyclerView;

    iget-object v0, v0, Landroidx/recyclerview/widget/RecyclerView;->mState:Landroidx/recyclerview/widget/RecyclerView$t;

    invoke-virtual {v0}, Landroidx/recyclerview/widget/RecyclerView$t;->a()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_1

    .line 6002
    iget-object v0, p0, Landroidx/recyclerview/widget/RecyclerView$p;->f:Landroidx/recyclerview/widget/RecyclerView;

    iget-object v0, v0, Landroidx/recyclerview/widget/RecyclerView;->mAdapter:Landroidx/recyclerview/widget/RecyclerView$a;

    iget v2, p1, Landroidx/recyclerview/widget/RecyclerView$w;->mPosition:I

    invoke-virtual {v0, v2}, Landroidx/recyclerview/widget/RecyclerView$a;->getItemViewType(I)I

    move-result v0

    .line 6003
    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView$w;->getItemViewType()I

    move-result v2

    if-eq v0, v2, :cond_1

    return v1

    .line 6007
    :cond_1
    iget-object v0, p0, Landroidx/recyclerview/widget/RecyclerView$p;->f:Landroidx/recyclerview/widget/RecyclerView;

    iget-object v0, v0, Landroidx/recyclerview/widget/RecyclerView;->mAdapter:Landroidx/recyclerview/widget/RecyclerView$a;

    invoke-virtual {v0}, Landroidx/recyclerview/widget/RecyclerView$a;->hasStableIds()Z

    move-result v0

    const/4 v2, 0x1

    if-eqz v0, :cond_3

    .line 6008
    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView$w;->getItemId()J

    move-result-wide v3

    iget-object p0, p0, Landroidx/recyclerview/widget/RecyclerView$p;->f:Landroidx/recyclerview/widget/RecyclerView;

    iget-object p0, p0, Landroidx/recyclerview/widget/RecyclerView;->mAdapter:Landroidx/recyclerview/widget/RecyclerView$a;

    iget p1, p1, Landroidx/recyclerview/widget/RecyclerView$w;->mPosition:I

    invoke-virtual {p0, p1}, Landroidx/recyclerview/widget/RecyclerView$a;->getItemId(I)J

    move-result-wide p0

    cmp-long p0, v3, p0

    if-nez p0, :cond_2

    move v1, v2

    :cond_2
    return v1

    :cond_3
    return v2

    .line 5997
    :cond_4
    new-instance v0, Ljava/lang/IndexOutOfBoundsException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Inconsistency detected. Invalid view holder adapter position"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Landroidx/recyclerview/widget/RecyclerView$p;->f:Landroidx/recyclerview/widget/RecyclerView;

    .line 5998
    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView;->exceptionLabel()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public b(I)I
    .locals 3

    if-ltz p1, :cond_1

    .line 6113
    iget-object v0, p0, Landroidx/recyclerview/widget/RecyclerView$p;->f:Landroidx/recyclerview/widget/RecyclerView;

    iget-object v0, v0, Landroidx/recyclerview/widget/RecyclerView;->mState:Landroidx/recyclerview/widget/RecyclerView$t;

    invoke-virtual {v0}, Landroidx/recyclerview/widget/RecyclerView$t;->e()I

    move-result v0

    if-ge p1, v0, :cond_1

    .line 6117
    iget-object v0, p0, Landroidx/recyclerview/widget/RecyclerView$p;->f:Landroidx/recyclerview/widget/RecyclerView;

    iget-object v0, v0, Landroidx/recyclerview/widget/RecyclerView;->mState:Landroidx/recyclerview/widget/RecyclerView$t;

    invoke-virtual {v0}, Landroidx/recyclerview/widget/RecyclerView$t;->a()Z

    move-result v0

    if-nez v0, :cond_0

    return p1

    .line 6120
    :cond_0
    iget-object p0, p0, Landroidx/recyclerview/widget/RecyclerView$p;->f:Landroidx/recyclerview/widget/RecyclerView;

    iget-object p0, p0, Landroidx/recyclerview/widget/RecyclerView;->mAdapterHelper:Landroidx/recyclerview/widget/a;

    invoke-virtual {p0, p1}, Landroidx/recyclerview/widget/a;->b(I)I

    move-result p0

    return p0

    .line 6114
    :cond_1
    new-instance v0, Ljava/lang/IndexOutOfBoundsException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "invalid position "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, ". State item count is "

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p1, p0, Landroidx/recyclerview/widget/RecyclerView$p;->f:Landroidx/recyclerview/widget/RecyclerView;

    iget-object p1, p1, Landroidx/recyclerview/widget/RecyclerView;->mState:Landroidx/recyclerview/widget/RecyclerView$t;

    .line 6115
    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView$t;->e()I

    move-result p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    iget-object p0, p0, Landroidx/recyclerview/widget/RecyclerView$p;->f:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView;->exceptionLabel()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method b(IZ)Landroidx/recyclerview/widget/RecyclerView$w;
    .locals 5

    .line 6684
    iget-object v0, p0, Landroidx/recyclerview/widget/RecyclerView$p;->a:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v1, 0x0

    move v2, v1

    :goto_0
    if-ge v2, v0, :cond_2

    .line 6688
    iget-object v3, p0, Landroidx/recyclerview/widget/RecyclerView$p;->a:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroidx/recyclerview/widget/RecyclerView$w;

    .line 6689
    invoke-virtual {v3}, Landroidx/recyclerview/widget/RecyclerView$w;->wasReturnedFromScrap()Z

    move-result v4

    if-nez v4, :cond_1

    invoke-virtual {v3}, Landroidx/recyclerview/widget/RecyclerView$w;->getLayoutPosition()I

    move-result v4

    if-ne v4, p1, :cond_1

    .line 6690
    invoke-virtual {v3}, Landroidx/recyclerview/widget/RecyclerView$w;->isInvalid()Z

    move-result v4

    if-nez v4, :cond_1

    iget-object v4, p0, Landroidx/recyclerview/widget/RecyclerView$p;->f:Landroidx/recyclerview/widget/RecyclerView;

    iget-object v4, v4, Landroidx/recyclerview/widget/RecyclerView;->mState:Landroidx/recyclerview/widget/RecyclerView$t;

    iget-boolean v4, v4, Landroidx/recyclerview/widget/RecyclerView$t;->g:Z

    if-nez v4, :cond_0

    invoke-virtual {v3}, Landroidx/recyclerview/widget/RecyclerView$w;->isRemoved()Z

    move-result v4

    if-nez v4, :cond_1

    :cond_0
    const/16 p0, 0x20

    .line 6691
    invoke-virtual {v3, p0}, Landroidx/recyclerview/widget/RecyclerView$w;->addFlags(I)V

    return-object v3

    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_2
    if-nez p2, :cond_4

    .line 6697
    iget-object v0, p0, Landroidx/recyclerview/widget/RecyclerView$p;->f:Landroidx/recyclerview/widget/RecyclerView;

    iget-object v0, v0, Landroidx/recyclerview/widget/RecyclerView;->mChildHelper:Landroidx/recyclerview/widget/d;

    invoke-virtual {v0, p1}, Landroidx/recyclerview/widget/d;->c(I)Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_4

    .line 6701
    invoke-static {v0}, Landroidx/recyclerview/widget/RecyclerView;->getChildViewHolderInt(Landroid/view/View;)Landroidx/recyclerview/widget/RecyclerView$w;

    move-result-object p1

    .line 6702
    iget-object p2, p0, Landroidx/recyclerview/widget/RecyclerView$p;->f:Landroidx/recyclerview/widget/RecyclerView;

    iget-object p2, p2, Landroidx/recyclerview/widget/RecyclerView;->mChildHelper:Landroidx/recyclerview/widget/d;

    invoke-virtual {p2, v0}, Landroidx/recyclerview/widget/d;->e(Landroid/view/View;)V

    .line 6703
    iget-object p2, p0, Landroidx/recyclerview/widget/RecyclerView$p;->f:Landroidx/recyclerview/widget/RecyclerView;

    iget-object p2, p2, Landroidx/recyclerview/widget/RecyclerView;->mChildHelper:Landroidx/recyclerview/widget/d;

    invoke-virtual {p2, v0}, Landroidx/recyclerview/widget/d;->b(Landroid/view/View;)I

    move-result p2

    const/4 v1, -0x1

    if-eq p2, v1, :cond_3

    .line 6708
    iget-object v1, p0, Landroidx/recyclerview/widget/RecyclerView$p;->f:Landroidx/recyclerview/widget/RecyclerView;

    iget-object v1, v1, Landroidx/recyclerview/widget/RecyclerView;->mChildHelper:Landroidx/recyclerview/widget/d;

    invoke-virtual {v1, p2}, Landroidx/recyclerview/widget/d;->e(I)V

    .line 6709
    invoke-virtual {p0, v0}, Landroidx/recyclerview/widget/RecyclerView$p;->c(Landroid/view/View;)V

    const/16 p0, 0x2020

    .line 6710
    invoke-virtual {p1, p0}, Landroidx/recyclerview/widget/RecyclerView$w;->addFlags(I)V

    return-object p1

    .line 6705
    :cond_3
    new-instance p2, Ljava/lang/IllegalStateException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "layout index should not be -1 after unhiding a view:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Landroidx/recyclerview/widget/RecyclerView$p;->f:Landroidx/recyclerview/widget/RecyclerView;

    .line 6706
    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView;->exceptionLabel()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {p2, p0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p2

    .line 6717
    :cond_4
    iget-object v0, p0, Landroidx/recyclerview/widget/RecyclerView$p;->c:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    :goto_1
    if-ge v1, v0, :cond_7

    .line 6719
    iget-object v2, p0, Landroidx/recyclerview/widget/RecyclerView$p;->c:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroidx/recyclerview/widget/RecyclerView$w;

    .line 6722
    invoke-virtual {v2}, Landroidx/recyclerview/widget/RecyclerView$w;->isInvalid()Z

    move-result v3

    if-nez v3, :cond_6

    invoke-virtual {v2}, Landroidx/recyclerview/widget/RecyclerView$w;->getLayoutPosition()I

    move-result v3

    if-ne v3, p1, :cond_6

    .line 6723
    invoke-virtual {v2}, Landroidx/recyclerview/widget/RecyclerView$w;->isAttachedToTransitionOverlay()Z

    move-result v3

    if-nez v3, :cond_6

    if-nez p2, :cond_5

    .line 6725
    iget-object p0, p0, Landroidx/recyclerview/widget/RecyclerView$p;->c:Ljava/util/ArrayList;

    invoke-virtual {p0, v1}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    :cond_5
    return-object v2

    :cond_6
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_7
    const/4 p0, 0x0

    return-object p0
.end method

.method b()V
    .locals 3

    .line 5958
    iget-object v0, p0, Landroidx/recyclerview/widget/RecyclerView$p;->f:Landroidx/recyclerview/widget/RecyclerView;

    iget-object v0, v0, Landroidx/recyclerview/widget/RecyclerView;->mLayout:Landroidx/recyclerview/widget/RecyclerView$i;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroidx/recyclerview/widget/RecyclerView$p;->f:Landroidx/recyclerview/widget/RecyclerView;

    iget-object v0, v0, Landroidx/recyclerview/widget/RecyclerView;->mLayout:Landroidx/recyclerview/widget/RecyclerView$i;

    iget v0, v0, Landroidx/recyclerview/widget/RecyclerView$i;->mPrefetchMaxCountObserved:I

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 5959
    :goto_0
    iget v1, p0, Landroidx/recyclerview/widget/RecyclerView$p;->h:I

    add-int/2addr v1, v0

    iput v1, p0, Landroidx/recyclerview/widget/RecyclerView$p;->d:I

    .line 5962
    iget-object v0, p0, Landroidx/recyclerview/widget/RecyclerView$p;->c:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    :goto_1
    if-ltz v0, :cond_1

    .line 5963
    iget-object v1, p0, Landroidx/recyclerview/widget/RecyclerView$p;->c:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    iget v2, p0, Landroidx/recyclerview/widget/RecyclerView$p;->d:I

    if-le v1, v2, :cond_1

    .line 5964
    invoke-virtual {p0, v0}, Landroidx/recyclerview/widget/RecyclerView$p;->d(I)V

    add-int/lit8 v0, v0, -0x1

    goto :goto_1

    :cond_1
    return-void
.end method

.method b(II)V
    .locals 4

    .line 6840
    iget-object v0, p0, Landroidx/recyclerview/widget/RecyclerView$p;->c:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_1

    .line 6842
    iget-object v2, p0, Landroidx/recyclerview/widget/RecyclerView$p;->c:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroidx/recyclerview/widget/RecyclerView$w;

    if-eqz v2, :cond_0

    .line 6843
    iget v3, v2, Landroidx/recyclerview/widget/RecyclerView$w;->mPosition:I

    if-lt v3, p1, :cond_0

    const/4 v3, 0x1

    .line 6848
    invoke-virtual {v2, p2, v3}, Landroidx/recyclerview/widget/RecyclerView$w;->offsetPosition(IZ)V

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method b(Landroid/view/View;)V
    .locals 1

    .line 6577
    invoke-static {p1}, Landroidx/recyclerview/widget/RecyclerView;->getChildViewHolderInt(Landroid/view/View;)Landroidx/recyclerview/widget/RecyclerView$w;

    move-result-object p1

    const/4 v0, 0x0

    .line 6578
    iput-object v0, p1, Landroidx/recyclerview/widget/RecyclerView$w;->mScrapContainer:Landroidx/recyclerview/widget/RecyclerView$p;

    const/4 v0, 0x0

    .line 6579
    iput-boolean v0, p1, Landroidx/recyclerview/widget/RecyclerView$w;->mInChangeScrap:Z

    .line 6580
    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView$w;->clearReturnedFromScrapFlag()V

    .line 6581
    invoke-virtual {p0, p1}, Landroidx/recyclerview/widget/RecyclerView$p;->b(Landroidx/recyclerview/widget/RecyclerView$w;)V

    return-void
.end method

.method b(Landroidx/recyclerview/widget/RecyclerView$w;)V
    .locals 6

    .line 6454
    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView$w;->isScrap()Z

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-nez v0, :cond_d

    iget-object v0, p1, Landroidx/recyclerview/widget/RecyclerView$w;->itemView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    if-eqz v0, :cond_0

    goto/16 :goto_6

    .line 6461
    :cond_0
    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView$w;->isTmpDetached()Z

    move-result v0

    if-nez v0, :cond_c

    .line 6467
    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView$w;->shouldIgnore()Z

    move-result v0

    if-nez v0, :cond_b

    .line 6473
    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView$w;->doesTransientStatePreventRecycling()Z

    move-result v0

    .line 6475
    iget-object v3, p0, Landroidx/recyclerview/widget/RecyclerView$p;->f:Landroidx/recyclerview/widget/RecyclerView;

    iget-object v3, v3, Landroidx/recyclerview/widget/RecyclerView;->mAdapter:Landroidx/recyclerview/widget/RecyclerView$a;

    if-eqz v3, :cond_1

    if-eqz v0, :cond_1

    iget-object v3, p0, Landroidx/recyclerview/widget/RecyclerView$p;->f:Landroidx/recyclerview/widget/RecyclerView;

    iget-object v3, v3, Landroidx/recyclerview/widget/RecyclerView;->mAdapter:Landroidx/recyclerview/widget/RecyclerView$a;

    .line 6477
    invoke-virtual {v3, p1}, Landroidx/recyclerview/widget/RecyclerView$a;->onFailedToRecycleView(Landroidx/recyclerview/widget/RecyclerView$w;)Z

    move-result v3

    if-eqz v3, :cond_1

    move v3, v2

    goto :goto_0

    :cond_1
    move v3, v1

    :goto_0
    if-nez v3, :cond_3

    .line 6484
    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView$w;->isRecyclable()Z

    move-result v3

    if-eqz v3, :cond_2

    goto :goto_1

    :cond_2
    move v3, v1

    goto :goto_5

    .line 6485
    :cond_3
    :goto_1
    iget v3, p0, Landroidx/recyclerview/widget/RecyclerView$p;->d:I

    if-lez v3, :cond_8

    const/16 v3, 0x20e

    .line 6486
    invoke-virtual {p1, v3}, Landroidx/recyclerview/widget/RecyclerView$w;->hasAnyOfTheFlags(I)Z

    move-result v3

    if-nez v3, :cond_8

    .line 6491
    iget-object v3, p0, Landroidx/recyclerview/widget/RecyclerView$p;->c:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    .line 6492
    iget v4, p0, Landroidx/recyclerview/widget/RecyclerView$p;->d:I

    if-lt v3, v4, :cond_4

    if-lez v3, :cond_4

    .line 6493
    invoke-virtual {p0, v1}, Landroidx/recyclerview/widget/RecyclerView$p;->d(I)V

    add-int/lit8 v3, v3, -0x1

    .line 6498
    :cond_4
    sget-boolean v4, Landroidx/recyclerview/widget/RecyclerView;->ALLOW_THREAD_GAP_WORK:Z

    if-eqz v4, :cond_7

    if-lez v3, :cond_7

    iget-object v4, p0, Landroidx/recyclerview/widget/RecyclerView$p;->f:Landroidx/recyclerview/widget/RecyclerView;

    iget-object v4, v4, Landroidx/recyclerview/widget/RecyclerView;->mPrefetchRegistry:Landroidx/recyclerview/widget/h$a;

    iget v5, p1, Landroidx/recyclerview/widget/RecyclerView$w;->mPosition:I

    .line 6500
    invoke-virtual {v4, v5}, Landroidx/recyclerview/widget/h$a;->a(I)Z

    move-result v4

    if-nez v4, :cond_7

    add-int/lit8 v3, v3, -0x1

    :goto_2
    if-ltz v3, :cond_6

    .line 6504
    iget-object v4, p0, Landroidx/recyclerview/widget/RecyclerView$p;->c:Ljava/util/ArrayList;

    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroidx/recyclerview/widget/RecyclerView$w;

    iget v4, v4, Landroidx/recyclerview/widget/RecyclerView$w;->mPosition:I

    .line 6505
    iget-object v5, p0, Landroidx/recyclerview/widget/RecyclerView$p;->f:Landroidx/recyclerview/widget/RecyclerView;

    iget-object v5, v5, Landroidx/recyclerview/widget/RecyclerView;->mPrefetchRegistry:Landroidx/recyclerview/widget/h$a;

    invoke-virtual {v5, v4}, Landroidx/recyclerview/widget/h$a;->a(I)Z

    move-result v4

    if-nez v4, :cond_5

    goto :goto_3

    :cond_5
    add-int/lit8 v3, v3, -0x1

    goto :goto_2

    :cond_6
    :goto_3
    add-int/2addr v3, v2

    .line 6512
    :cond_7
    iget-object v4, p0, Landroidx/recyclerview/widget/RecyclerView$p;->c:Ljava/util/ArrayList;

    invoke-virtual {v4, v3, p1}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    move v3, v2

    goto :goto_4

    :cond_8
    move v3, v1

    :goto_4
    if-nez v3, :cond_9

    .line 6516
    invoke-virtual {p0, p1, v2}, Landroidx/recyclerview/widget/RecyclerView$p;->a(Landroidx/recyclerview/widget/RecyclerView$w;Z)V

    move v1, v2

    .line 6534
    :cond_9
    :goto_5
    iget-object p0, p0, Landroidx/recyclerview/widget/RecyclerView$p;->f:Landroidx/recyclerview/widget/RecyclerView;

    iget-object p0, p0, Landroidx/recyclerview/widget/RecyclerView;->mViewInfoStore:Landroidx/recyclerview/widget/u;

    invoke-virtual {p0, p1}, Landroidx/recyclerview/widget/u;->g(Landroidx/recyclerview/widget/RecyclerView$w;)V

    if-nez v3, :cond_a

    if-nez v1, :cond_a

    if-eqz v0, :cond_a

    const/4 p0, 0x0

    .line 6536
    iput-object p0, p1, Landroidx/recyclerview/widget/RecyclerView$w;->mBindingAdapter:Landroidx/recyclerview/widget/RecyclerView$a;

    .line 6537
    iput-object p0, p1, Landroidx/recyclerview/widget/RecyclerView$w;->mOwnerRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    :cond_a
    return-void

    .line 6468
    :cond_b
    new-instance p1, Ljava/lang/IllegalArgumentException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Trying to recycle an ignored view holder. You should first call stopIgnoringView(view) before calling recycle."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Landroidx/recyclerview/widget/RecyclerView$p;->f:Landroidx/recyclerview/widget/RecyclerView;

    .line 6470
    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView;->exceptionLabel()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 6462
    :cond_c
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Tmp detached view should be removed from RecyclerView before it can be recycled: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Landroidx/recyclerview/widget/RecyclerView$p;->f:Landroidx/recyclerview/widget/RecyclerView;

    .line 6464
    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView;->exceptionLabel()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 6455
    :cond_d
    :goto_6
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Scrapped or attached views may not be recycled. isScrap:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 6457
    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView$w;->isScrap()Z

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v4, " isAttached:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p1, p1, Landroidx/recyclerview/widget/RecyclerView$w;->itemView:Landroid/view/View;

    .line 6458
    invoke-virtual {p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object p1

    if-eqz p1, :cond_e

    move v1, v2

    :cond_e
    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    iget-object p0, p0, Landroidx/recyclerview/widget/RecyclerView$p;->f:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView;->exceptionLabel()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public c(I)Landroid/view/View;
    .locals 1

    const/4 v0, 0x0

    .line 6139
    invoke-virtual {p0, p1, v0}, Landroidx/recyclerview/widget/RecyclerView$p;->a(IZ)Landroid/view/View;

    move-result-object p0

    return-object p0
.end method

.method public c()Ljava/util/List;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Landroidx/recyclerview/widget/RecyclerView$w;",
            ">;"
        }
    .end annotation

    .line 5975
    iget-object p0, p0, Landroidx/recyclerview/widget/RecyclerView$p;->g:Ljava/util/List;

    return-object p0
.end method

.method c(II)V
    .locals 3

    add-int/2addr p2, p1

    .line 6904
    iget-object v0, p0, Landroidx/recyclerview/widget/RecyclerView$p;->c:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    :goto_0
    if-ltz v0, :cond_2

    .line 6906
    iget-object v1, p0, Landroidx/recyclerview/widget/RecyclerView$p;->c:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroidx/recyclerview/widget/RecyclerView$w;

    if-nez v1, :cond_0

    goto :goto_1

    .line 6911
    :cond_0
    iget v2, v1, Landroidx/recyclerview/widget/RecyclerView$w;->mPosition:I

    if-lt v2, p1, :cond_1

    if-ge v2, p2, :cond_1

    const/4 v2, 0x2

    .line 6913
    invoke-virtual {v1, v2}, Landroidx/recyclerview/widget/RecyclerView$w;->addFlags(I)V

    .line 6914
    invoke-virtual {p0, v0}, Landroidx/recyclerview/widget/RecyclerView$p;->d(I)V

    :cond_1
    :goto_1
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    :cond_2
    return-void
.end method

.method c(Landroid/view/View;)V
    .locals 2

    .line 6594
    invoke-static {p1}, Landroidx/recyclerview/widget/RecyclerView;->getChildViewHolderInt(Landroid/view/View;)Landroidx/recyclerview/widget/RecyclerView$w;

    move-result-object p1

    const/16 v0, 0xc

    .line 6595
    invoke-virtual {p1, v0}, Landroidx/recyclerview/widget/RecyclerView$w;->hasAnyOfTheFlags(I)Z

    move-result v0

    if-nez v0, :cond_2

    .line 6596
    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView$w;->isUpdated()Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Landroidx/recyclerview/widget/RecyclerView$p;->f:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v0, p1}, Landroidx/recyclerview/widget/RecyclerView;->canReuseUpdatedViewHolder(Landroidx/recyclerview/widget/RecyclerView$w;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 6605
    :cond_0
    iget-object v0, p0, Landroidx/recyclerview/widget/RecyclerView$p;->b:Ljava/util/ArrayList;

    if-nez v0, :cond_1

    .line 6606
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroidx/recyclerview/widget/RecyclerView$p;->b:Ljava/util/ArrayList;

    :cond_1
    const/4 v0, 0x1

    .line 6608
    invoke-virtual {p1, p0, v0}, Landroidx/recyclerview/widget/RecyclerView$w;->setScrapContainer(Landroidx/recyclerview/widget/RecyclerView$p;Z)V

    .line 6609
    iget-object p0, p0, Landroidx/recyclerview/widget/RecyclerView$p;->b:Ljava/util/ArrayList;

    invoke-virtual {p0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_2

    .line 6597
    :cond_2
    :goto_0
    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView$w;->isInvalid()Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView$w;->isRemoved()Z

    move-result v0

    if-nez v0, :cond_4

    iget-object v0, p0, Landroidx/recyclerview/widget/RecyclerView$p;->f:Landroidx/recyclerview/widget/RecyclerView;

    iget-object v0, v0, Landroidx/recyclerview/widget/RecyclerView;->mAdapter:Landroidx/recyclerview/widget/RecyclerView$a;

    invoke-virtual {v0}, Landroidx/recyclerview/widget/RecyclerView$a;->hasStableIds()Z

    move-result v0

    if-eqz v0, :cond_3

    goto :goto_1

    .line 6598
    :cond_3
    new-instance p1, Ljava/lang/IllegalArgumentException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Called scrap view with an invalid view. Invalid views cannot be reused from scrap, they should rebound from recycler pool."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Landroidx/recyclerview/widget/RecyclerView$p;->f:Landroidx/recyclerview/widget/RecyclerView;

    .line 6600
    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView;->exceptionLabel()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_4
    :goto_1
    const/4 v0, 0x0

    .line 6602
    invoke-virtual {p1, p0, v0}, Landroidx/recyclerview/widget/RecyclerView$w;->setScrapContainer(Landroidx/recyclerview/widget/RecyclerView$p;Z)V

    .line 6603
    iget-object p0, p0, Landroidx/recyclerview/widget/RecyclerView$p;->a:Ljava/util/ArrayList;

    invoke-virtual {p0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :goto_2
    return-void
.end method

.method c(Landroidx/recyclerview/widget/RecyclerView$w;)V
    .locals 1

    .line 6620
    iget-boolean v0, p1, Landroidx/recyclerview/widget/RecyclerView$w;->mInChangeScrap:Z

    if-eqz v0, :cond_0

    .line 6621
    iget-object p0, p0, Landroidx/recyclerview/widget/RecyclerView$p;->b:Ljava/util/ArrayList;

    invoke-virtual {p0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    goto :goto_0

    .line 6623
    :cond_0
    iget-object p0, p0, Landroidx/recyclerview/widget/RecyclerView$p;->a:Ljava/util/ArrayList;

    invoke-virtual {p0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    :goto_0
    const/4 p0, 0x0

    .line 6625
    iput-object p0, p1, Landroidx/recyclerview/widget/RecyclerView$w;->mScrapContainer:Landroidx/recyclerview/widget/RecyclerView$p;

    const/4 p0, 0x0

    .line 6626
    iput-boolean p0, p1, Landroidx/recyclerview/widget/RecyclerView$w;->mInChangeScrap:Z

    .line 6627
    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView$w;->clearReturnedFromScrapFlag()V

    return-void
.end method

.method d()V
    .locals 1

    .line 6415
    iget-object v0, p0, Landroidx/recyclerview/widget/RecyclerView$p;->c:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    :goto_0
    if-ltz v0, :cond_0

    .line 6417
    invoke-virtual {p0, v0}, Landroidx/recyclerview/widget/RecyclerView$p;->d(I)V

    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    .line 6419
    :cond_0
    iget-object v0, p0, Landroidx/recyclerview/widget/RecyclerView$p;->c:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 6420
    sget-boolean v0, Landroidx/recyclerview/widget/RecyclerView;->ALLOW_THREAD_GAP_WORK:Z

    if-eqz v0, :cond_1

    .line 6421
    iget-object p0, p0, Landroidx/recyclerview/widget/RecyclerView$p;->f:Landroidx/recyclerview/widget/RecyclerView;

    iget-object p0, p0, Landroidx/recyclerview/widget/RecyclerView;->mPrefetchRegistry:Landroidx/recyclerview/widget/h$a;

    invoke-virtual {p0}, Landroidx/recyclerview/widget/h$a;->a()V

    :cond_1
    return-void
.end method

.method d(I)V
    .locals 2

    .line 6440
    iget-object v0, p0, Landroidx/recyclerview/widget/RecyclerView$p;->c:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/recyclerview/widget/RecyclerView$w;

    const/4 v1, 0x1

    .line 6444
    invoke-virtual {p0, v0, v1}, Landroidx/recyclerview/widget/RecyclerView$p;->a(Landroidx/recyclerview/widget/RecyclerView$w;Z)V

    .line 6445
    iget-object p0, p0, Landroidx/recyclerview/widget/RecyclerView$p;->c:Ljava/util/ArrayList;

    invoke-virtual {p0, p1}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    return-void
.end method

.method d(Landroidx/recyclerview/widget/RecyclerView$w;)V
    .locals 1

    .line 6792
    iget-object v0, p0, Landroidx/recyclerview/widget/RecyclerView$p;->f:Landroidx/recyclerview/widget/RecyclerView;

    iget-object v0, v0, Landroidx/recyclerview/widget/RecyclerView;->mRecyclerListener:Landroidx/recyclerview/widget/RecyclerView$q;

    if-eqz v0, :cond_0

    .line 6793
    iget-object v0, p0, Landroidx/recyclerview/widget/RecyclerView$p;->f:Landroidx/recyclerview/widget/RecyclerView;

    iget-object v0, v0, Landroidx/recyclerview/widget/RecyclerView;->mRecyclerListener:Landroidx/recyclerview/widget/RecyclerView$q;

    invoke-interface {v0, p1}, Landroidx/recyclerview/widget/RecyclerView$q;->a(Landroidx/recyclerview/widget/RecyclerView$w;)V

    .line 6795
    :cond_0
    iget-object v0, p0, Landroidx/recyclerview/widget/RecyclerView$p;->f:Landroidx/recyclerview/widget/RecyclerView;

    iget-object v0, v0, Landroidx/recyclerview/widget/RecyclerView;->mAdapter:Landroidx/recyclerview/widget/RecyclerView$a;

    if-eqz v0, :cond_1

    .line 6796
    iget-object v0, p0, Landroidx/recyclerview/widget/RecyclerView$p;->f:Landroidx/recyclerview/widget/RecyclerView;

    iget-object v0, v0, Landroidx/recyclerview/widget/RecyclerView;->mAdapter:Landroidx/recyclerview/widget/RecyclerView$a;

    invoke-virtual {v0, p1}, Landroidx/recyclerview/widget/RecyclerView$a;->onViewRecycled(Landroidx/recyclerview/widget/RecyclerView$w;)V

    .line 6798
    :cond_1
    iget-object v0, p0, Landroidx/recyclerview/widget/RecyclerView$p;->f:Landroidx/recyclerview/widget/RecyclerView;

    iget-object v0, v0, Landroidx/recyclerview/widget/RecyclerView;->mState:Landroidx/recyclerview/widget/RecyclerView$t;

    if-eqz v0, :cond_2

    .line 6799
    iget-object p0, p0, Landroidx/recyclerview/widget/RecyclerView$p;->f:Landroidx/recyclerview/widget/RecyclerView;

    iget-object p0, p0, Landroidx/recyclerview/widget/RecyclerView;->mViewInfoStore:Landroidx/recyclerview/widget/u;

    invoke-virtual {p0, p1}, Landroidx/recyclerview/widget/u;->g(Landroidx/recyclerview/widget/RecyclerView$w;)V

    :cond_2
    return-void
.end method

.method e()I
    .locals 0

    .line 6631
    iget-object p0, p0, Landroidx/recyclerview/widget/RecyclerView$p;->a:Ljava/util/ArrayList;

    invoke-virtual {p0}, Ljava/util/ArrayList;->size()I

    move-result p0

    return p0
.end method

.method e(I)Landroid/view/View;
    .locals 0

    .line 6635
    iget-object p0, p0, Landroidx/recyclerview/widget/RecyclerView$p;->a:Ljava/util/ArrayList;

    invoke-virtual {p0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroidx/recyclerview/widget/RecyclerView$w;

    iget-object p0, p0, Landroidx/recyclerview/widget/RecyclerView$w;->itemView:Landroid/view/View;

    return-object p0
.end method

.method f(I)Landroidx/recyclerview/widget/RecyclerView$w;
    .locals 9

    .line 6648
    iget-object v0, p0, Landroidx/recyclerview/widget/RecyclerView$p;->b:Ljava/util/ArrayList;

    const/4 v1, 0x0

    if-eqz v0, :cond_4

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-nez v0, :cond_0

    goto :goto_2

    :cond_0
    const/4 v2, 0x0

    move v3, v2

    :goto_0
    const/16 v4, 0x20

    if-ge v3, v0, :cond_2

    .line 6653
    iget-object v5, p0, Landroidx/recyclerview/widget/RecyclerView$p;->b:Ljava/util/ArrayList;

    invoke-virtual {v5, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroidx/recyclerview/widget/RecyclerView$w;

    .line 6654
    invoke-virtual {v5}, Landroidx/recyclerview/widget/RecyclerView$w;->wasReturnedFromScrap()Z

    move-result v6

    if-nez v6, :cond_1

    invoke-virtual {v5}, Landroidx/recyclerview/widget/RecyclerView$w;->getLayoutPosition()I

    move-result v6

    if-ne v6, p1, :cond_1

    .line 6655
    invoke-virtual {v5, v4}, Landroidx/recyclerview/widget/RecyclerView$w;->addFlags(I)V

    return-object v5

    :cond_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 6660
    :cond_2
    iget-object v3, p0, Landroidx/recyclerview/widget/RecyclerView$p;->f:Landroidx/recyclerview/widget/RecyclerView;

    iget-object v3, v3, Landroidx/recyclerview/widget/RecyclerView;->mAdapter:Landroidx/recyclerview/widget/RecyclerView$a;

    invoke-virtual {v3}, Landroidx/recyclerview/widget/RecyclerView$a;->hasStableIds()Z

    move-result v3

    if-eqz v3, :cond_4

    .line 6661
    iget-object v3, p0, Landroidx/recyclerview/widget/RecyclerView$p;->f:Landroidx/recyclerview/widget/RecyclerView;

    iget-object v3, v3, Landroidx/recyclerview/widget/RecyclerView;->mAdapterHelper:Landroidx/recyclerview/widget/a;

    invoke-virtual {v3, p1}, Landroidx/recyclerview/widget/a;->b(I)I

    move-result p1

    if-lez p1, :cond_4

    .line 6662
    iget-object v3, p0, Landroidx/recyclerview/widget/RecyclerView$p;->f:Landroidx/recyclerview/widget/RecyclerView;

    iget-object v3, v3, Landroidx/recyclerview/widget/RecyclerView;->mAdapter:Landroidx/recyclerview/widget/RecyclerView$a;

    invoke-virtual {v3}, Landroidx/recyclerview/widget/RecyclerView$a;->getItemCount()I

    move-result v3

    if-ge p1, v3, :cond_4

    .line 6663
    iget-object v3, p0, Landroidx/recyclerview/widget/RecyclerView$p;->f:Landroidx/recyclerview/widget/RecyclerView;

    iget-object v3, v3, Landroidx/recyclerview/widget/RecyclerView;->mAdapter:Landroidx/recyclerview/widget/RecyclerView$a;

    invoke-virtual {v3, p1}, Landroidx/recyclerview/widget/RecyclerView$a;->getItemId(I)J

    move-result-wide v5

    :goto_1
    if-ge v2, v0, :cond_4

    .line 6665
    iget-object p1, p0, Landroidx/recyclerview/widget/RecyclerView$p;->b:Ljava/util/ArrayList;

    invoke-virtual {p1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroidx/recyclerview/widget/RecyclerView$w;

    .line 6666
    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView$w;->wasReturnedFromScrap()Z

    move-result v3

    if-nez v3, :cond_3

    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView$w;->getItemId()J

    move-result-wide v7

    cmp-long v3, v7, v5

    if-nez v3, :cond_3

    .line 6667
    invoke-virtual {p1, v4}, Landroidx/recyclerview/widget/RecyclerView$w;->addFlags(I)V

    return-object p1

    :cond_3
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_4
    :goto_2
    return-object v1
.end method

.method f()V
    .locals 1

    .line 6639
    iget-object v0, p0, Landroidx/recyclerview/widget/RecyclerView$p;->a:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 6640
    iget-object p0, p0, Landroidx/recyclerview/widget/RecyclerView$p;->b:Ljava/util/ArrayList;

    if-eqz p0, :cond_0

    .line 6641
    invoke-virtual {p0}, Ljava/util/ArrayList;->clear()V

    :cond_0
    return-void
.end method

.method g()Landroidx/recyclerview/widget/RecyclerView$o;
    .locals 1

    .line 6896
    iget-object v0, p0, Landroidx/recyclerview/widget/RecyclerView$p;->e:Landroidx/recyclerview/widget/RecyclerView$o;

    if-nez v0, :cond_0

    .line 6897
    new-instance v0, Landroidx/recyclerview/widget/RecyclerView$o;

    invoke-direct {v0}, Landroidx/recyclerview/widget/RecyclerView$o;-><init>()V

    iput-object v0, p0, Landroidx/recyclerview/widget/RecyclerView$p;->e:Landroidx/recyclerview/widget/RecyclerView$o;

    .line 6899
    :cond_0
    iget-object p0, p0, Landroidx/recyclerview/widget/RecyclerView$p;->e:Landroidx/recyclerview/widget/RecyclerView$o;

    return-object p0
.end method

.method h()V
    .locals 4

    .line 6922
    iget-object v0, p0, Landroidx/recyclerview/widget/RecyclerView$p;->c:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_1

    .line 6924
    iget-object v2, p0, Landroidx/recyclerview/widget/RecyclerView$p;->c:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroidx/recyclerview/widget/RecyclerView$w;

    if-eqz v2, :cond_0

    const/4 v3, 0x6

    .line 6926
    invoke-virtual {v2, v3}, Landroidx/recyclerview/widget/RecyclerView$w;->addFlags(I)V

    const/4 v3, 0x0

    .line 6927
    invoke-virtual {v2, v3}, Landroidx/recyclerview/widget/RecyclerView$w;->addChangePayload(Ljava/lang/Object;)V

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 6931
    :cond_1
    iget-object v0, p0, Landroidx/recyclerview/widget/RecyclerView$p;->f:Landroidx/recyclerview/widget/RecyclerView;

    iget-object v0, v0, Landroidx/recyclerview/widget/RecyclerView;->mAdapter:Landroidx/recyclerview/widget/RecyclerView$a;

    if-eqz v0, :cond_2

    iget-object v0, p0, Landroidx/recyclerview/widget/RecyclerView$p;->f:Landroidx/recyclerview/widget/RecyclerView;

    iget-object v0, v0, Landroidx/recyclerview/widget/RecyclerView;->mAdapter:Landroidx/recyclerview/widget/RecyclerView$a;

    invoke-virtual {v0}, Landroidx/recyclerview/widget/RecyclerView$a;->hasStableIds()Z

    move-result v0

    if-nez v0, :cond_3

    .line 6933
    :cond_2
    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView$p;->d()V

    :cond_3
    return-void
.end method

.method i()V
    .locals 4

    .line 6938
    iget-object v0, p0, Landroidx/recyclerview/widget/RecyclerView$p;->c:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v1, 0x0

    move v2, v1

    :goto_0
    if-ge v2, v0, :cond_0

    .line 6940
    iget-object v3, p0, Landroidx/recyclerview/widget/RecyclerView$p;->c:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroidx/recyclerview/widget/RecyclerView$w;

    .line 6941
    invoke-virtual {v3}, Landroidx/recyclerview/widget/RecyclerView$w;->clearOldPosition()V

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 6943
    :cond_0
    iget-object v0, p0, Landroidx/recyclerview/widget/RecyclerView$p;->a:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    move v2, v1

    :goto_1
    if-ge v2, v0, :cond_1

    .line 6945
    iget-object v3, p0, Landroidx/recyclerview/widget/RecyclerView$p;->a:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroidx/recyclerview/widget/RecyclerView$w;

    invoke-virtual {v3}, Landroidx/recyclerview/widget/RecyclerView$w;->clearOldPosition()V

    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 6947
    :cond_1
    iget-object v0, p0, Landroidx/recyclerview/widget/RecyclerView$p;->b:Ljava/util/ArrayList;

    if-eqz v0, :cond_2

    .line 6948
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    :goto_2
    if-ge v1, v0, :cond_2

    .line 6950
    iget-object v2, p0, Landroidx/recyclerview/widget/RecyclerView$p;->b:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroidx/recyclerview/widget/RecyclerView$w;

    invoke-virtual {v2}, Landroidx/recyclerview/widget/RecyclerView$w;->clearOldPosition()V

    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    :cond_2
    return-void
.end method

.method j()V
    .locals 4

    .line 6956
    iget-object v0, p0, Landroidx/recyclerview/widget/RecyclerView$p;->c:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_1

    .line 6958
    iget-object v2, p0, Landroidx/recyclerview/widget/RecyclerView$p;->c:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroidx/recyclerview/widget/RecyclerView$w;

    .line 6959
    iget-object v2, v2, Landroidx/recyclerview/widget/RecyclerView$w;->itemView:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    check-cast v2, Landroidx/recyclerview/widget/RecyclerView$j;

    if-eqz v2, :cond_0

    const/4 v3, 0x1

    .line 6961
    iput-boolean v3, v2, Landroidx/recyclerview/widget/RecyclerView$j;->e:Z

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method
