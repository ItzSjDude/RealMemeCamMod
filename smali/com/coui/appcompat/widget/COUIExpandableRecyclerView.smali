.class public Lcom/coui/appcompat/widget/COUIExpandableRecyclerView;
.super Landroidx/recyclerview/widget/COUIRecyclerView;
.source "COUIExpandableRecyclerView.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/coui/appcompat/widget/COUIExpandableRecyclerView$SavedState;,
        Lcom/coui/appcompat/widget/COUIExpandableRecyclerView$d;,
        Lcom/coui/appcompat/widget/COUIExpandableRecyclerView$c;,
        Lcom/coui/appcompat/widget/COUIExpandableRecyclerView$a;,
        Lcom/coui/appcompat/widget/COUIExpandableRecyclerView$b;
    }
.end annotation


# instance fields
.field private f:Lcom/coui/appcompat/widget/f;

.field private g:Lcom/coui/appcompat/widget/ExpandableRecyclerConnector;

.field private h:Lcom/coui/appcompat/widget/COUIExpandableRecyclerView$b;

.field private i:Lcom/coui/appcompat/widget/COUIExpandableRecyclerView$a;

.field private j:Lcom/coui/appcompat/widget/COUIExpandableRecyclerView$c;

.field private k:Lcom/coui/appcompat/widget/COUIExpandableRecyclerView$d;


# direct methods
.method private a(Lcom/coui/appcompat/widget/x;)J
    .locals 2

    .line 64
    iget v0, p1, Lcom/coui/appcompat/widget/x;->d:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 65
    iget-object p0, p0, Lcom/coui/appcompat/widget/COUIExpandableRecyclerView;->f:Lcom/coui/appcompat/widget/f;

    iget v0, p1, Lcom/coui/appcompat/widget/x;->a:I

    iget p1, p1, Lcom/coui/appcompat/widget/x;->b:I

    invoke-interface {p0, v0, p1}, Lcom/coui/appcompat/widget/f;->b(II)J

    move-result-wide p0

    return-wide p0

    .line 67
    :cond_0
    iget-object p0, p0, Lcom/coui/appcompat/widget/COUIExpandableRecyclerView;->f:Lcom/coui/appcompat/widget/f;

    iget p1, p1, Lcom/coui/appcompat/widget/x;->a:I

    invoke-interface {p0, p1}, Lcom/coui/appcompat/widget/f;->d(I)J

    move-result-wide p0

    return-wide p0
.end method


# virtual methods
.method public a(I)Z
    .locals 1

    .line 165
    iget-object v0, p0, Lcom/coui/appcompat/widget/COUIExpandableRecyclerView;->g:Lcom/coui/appcompat/widget/ExpandableRecyclerConnector;

    invoke-virtual {v0, p1}, Lcom/coui/appcompat/widget/ExpandableRecyclerConnector;->a(I)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 p0, 0x0

    return p0

    .line 168
    :cond_0
    iget-object v0, p0, Lcom/coui/appcompat/widget/COUIExpandableRecyclerView;->g:Lcom/coui/appcompat/widget/ExpandableRecyclerConnector;

    invoke-virtual {v0}, Lcom/coui/appcompat/widget/ExpandableRecyclerConnector;->b()V

    .line 170
    iget-object p0, p0, Lcom/coui/appcompat/widget/COUIExpandableRecyclerView;->j:Lcom/coui/appcompat/widget/COUIExpandableRecyclerView$c;

    if-eqz p0, :cond_1

    .line 171
    invoke-interface {p0, p1}, Lcom/coui/appcompat/widget/COUIExpandableRecyclerView$c;->a(I)V

    :cond_1
    const/4 p0, 0x1

    return p0
.end method

.method a(Landroid/view/View;I)Z
    .locals 9

    .line 72
    iget-object v0, p0, Lcom/coui/appcompat/widget/COUIExpandableRecyclerView;->g:Lcom/coui/appcompat/widget/ExpandableRecyclerConnector;

    invoke-virtual {v0, p2}, Lcom/coui/appcompat/widget/ExpandableRecyclerConnector;->b(I)Lcom/coui/appcompat/widget/ExpandableRecyclerConnector$g;

    move-result-object p2

    .line 74
    iget-object v0, p2, Lcom/coui/appcompat/widget/ExpandableRecyclerConnector$g;->a:Lcom/coui/appcompat/widget/x;

    invoke-direct {p0, v0}, Lcom/coui/appcompat/widget/COUIExpandableRecyclerView;->a(Lcom/coui/appcompat/widget/x;)J

    move-result-wide v6

    .line 77
    iget-object v0, p2, Lcom/coui/appcompat/widget/ExpandableRecyclerConnector$g;->a:Lcom/coui/appcompat/widget/x;

    iget v0, v0, Lcom/coui/appcompat/widget/x;->d:I

    const/4 v8, 0x1

    const/4 v1, 0x2

    if-ne v0, v1, :cond_2

    .line 78
    iget-object v1, p0, Lcom/coui/appcompat/widget/COUIExpandableRecyclerView;->h:Lcom/coui/appcompat/widget/COUIExpandableRecyclerView$b;

    if-eqz v1, :cond_0

    .line 79
    iget-object v0, p2, Lcom/coui/appcompat/widget/ExpandableRecyclerConnector$g;->a:Lcom/coui/appcompat/widget/x;

    iget v4, v0, Lcom/coui/appcompat/widget/x;->a:I

    move-object v2, p0

    move-object v3, p1

    move-wide v5, v6

    invoke-interface/range {v1 .. v6}, Lcom/coui/appcompat/widget/COUIExpandableRecyclerView$b;->a(Lcom/coui/appcompat/widget/COUIExpandableRecyclerView;Landroid/view/View;IJ)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 80
    invoke-virtual {p2}, Lcom/coui/appcompat/widget/ExpandableRecyclerConnector$g;->a()V

    return v8

    .line 85
    :cond_0
    invoke-virtual {p2}, Lcom/coui/appcompat/widget/ExpandableRecyclerConnector$g;->b()Z

    move-result p1

    if-eqz p1, :cond_1

    .line 87
    iget-object p1, p2, Lcom/coui/appcompat/widget/ExpandableRecyclerConnector$g;->a:Lcom/coui/appcompat/widget/x;

    iget p1, p1, Lcom/coui/appcompat/widget/x;->a:I

    invoke-virtual {p0, p1}, Lcom/coui/appcompat/widget/COUIExpandableRecyclerView;->a(I)Z

    goto :goto_0

    .line 89
    :cond_1
    iget-object p1, p2, Lcom/coui/appcompat/widget/ExpandableRecyclerConnector$g;->a:Lcom/coui/appcompat/widget/x;

    iget p1, p1, Lcom/coui/appcompat/widget/x;->a:I

    invoke-virtual {p0, p1}, Lcom/coui/appcompat/widget/COUIExpandableRecyclerView;->b(I)Z

    goto :goto_0

    .line 95
    :cond_2
    iget-object v1, p0, Lcom/coui/appcompat/widget/COUIExpandableRecyclerView;->i:Lcom/coui/appcompat/widget/COUIExpandableRecyclerView$a;

    if-eqz v1, :cond_3

    .line 96
    iget-object v0, p2, Lcom/coui/appcompat/widget/ExpandableRecyclerConnector$g;->a:Lcom/coui/appcompat/widget/x;

    iget v4, v0, Lcom/coui/appcompat/widget/x;->a:I

    iget-object p2, p2, Lcom/coui/appcompat/widget/ExpandableRecyclerConnector$g;->a:Lcom/coui/appcompat/widget/x;

    iget v5, p2, Lcom/coui/appcompat/widget/x;->b:I

    move-object v2, p0

    move-object v3, p1

    invoke-interface/range {v1 .. v7}, Lcom/coui/appcompat/widget/COUIExpandableRecyclerView$a;->a(Landroidx/recyclerview/widget/COUIRecyclerView;Landroid/view/View;IIJ)Z

    move-result p0

    return p0

    :cond_3
    const/4 v8, 0x0

    .line 103
    :goto_0
    invoke-virtual {p2}, Lcom/coui/appcompat/widget/ExpandableRecyclerConnector$g;->a()V

    return v8
.end method

.method public b(I)Z
    .locals 1

    .line 178
    iget-object v0, p0, Lcom/coui/appcompat/widget/COUIExpandableRecyclerView;->g:Lcom/coui/appcompat/widget/ExpandableRecyclerConnector;

    invoke-virtual {v0, p1}, Lcom/coui/appcompat/widget/ExpandableRecyclerConnector;->e(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 180
    iget-object p0, p0, Lcom/coui/appcompat/widget/COUIExpandableRecyclerView;->k:Lcom/coui/appcompat/widget/COUIExpandableRecyclerView$d;

    if-eqz p0, :cond_0

    .line 181
    invoke-interface {p0, p1}, Lcom/coui/appcompat/widget/COUIExpandableRecyclerView$d;->a(I)V

    :cond_0
    return v0
.end method

.method public onRestoreInstanceState(Landroid/os/Parcelable;)V
    .locals 1

    .line 280
    instance-of v0, p1, Lcom/coui/appcompat/widget/COUIExpandableRecyclerView$SavedState;

    if-nez v0, :cond_0

    .line 281
    invoke-super {p0, p1}, Landroidx/recyclerview/widget/COUIRecyclerView;->onRestoreInstanceState(Landroid/os/Parcelable;)V

    return-void

    .line 285
    :cond_0
    check-cast p1, Lcom/coui/appcompat/widget/COUIExpandableRecyclerView$SavedState;

    .line 286
    invoke-virtual {p1}, Lcom/coui/appcompat/widget/COUIExpandableRecyclerView$SavedState;->getSuperState()Landroid/os/Parcelable;

    move-result-object v0

    invoke-super {p0, v0}, Landroidx/recyclerview/widget/COUIRecyclerView;->onRestoreInstanceState(Landroid/os/Parcelable;)V

    .line 288
    iget-object v0, p0, Lcom/coui/appcompat/widget/COUIExpandableRecyclerView;->g:Lcom/coui/appcompat/widget/ExpandableRecyclerConnector;

    if-eqz v0, :cond_1

    iget-object v0, p1, Lcom/coui/appcompat/widget/COUIExpandableRecyclerView$SavedState;->expandedGroupMetadataList:Ljava/util/ArrayList;

    if-eqz v0, :cond_1

    .line 289
    iget-object p0, p0, Lcom/coui/appcompat/widget/COUIExpandableRecyclerView;->g:Lcom/coui/appcompat/widget/ExpandableRecyclerConnector;

    iget-object p1, p1, Lcom/coui/appcompat/widget/COUIExpandableRecyclerView$SavedState;->expandedGroupMetadataList:Ljava/util/ArrayList;

    invoke-virtual {p0, p1}, Lcom/coui/appcompat/widget/ExpandableRecyclerConnector;->a(Ljava/util/ArrayList;)V

    :cond_1
    return-void
.end method

.method public onSaveInstanceState()Landroid/os/Parcelable;
    .locals 2

    .line 274
    invoke-super {p0}, Landroidx/recyclerview/widget/COUIRecyclerView;->onSaveInstanceState()Landroid/os/Parcelable;

    move-result-object v0

    .line 275
    new-instance v1, Lcom/coui/appcompat/widget/COUIExpandableRecyclerView$SavedState;

    iget-object p0, p0, Lcom/coui/appcompat/widget/COUIExpandableRecyclerView;->g:Lcom/coui/appcompat/widget/ExpandableRecyclerConnector;

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Lcom/coui/appcompat/widget/ExpandableRecyclerConnector;->c()Ljava/util/ArrayList;

    move-result-object p0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    invoke-direct {v1, v0, p0}, Lcom/coui/appcompat/widget/COUIExpandableRecyclerView$SavedState;-><init>(Landroid/os/Parcelable;Ljava/util/ArrayList;)V

    return-object v1
.end method

.method public setAdapter(Landroidx/recyclerview/widget/RecyclerView$a;)V
    .locals 0

    .line 109
    new-instance p0, Ljava/lang/RuntimeException;

    const-string p1, "adapter instansof COUIExpandableRecyclerAdapter"

    invoke-direct {p0, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public setAdapter(Lcom/coui/appcompat/widget/f;)V
    .locals 1

    .line 58
    iput-object p1, p0, Lcom/coui/appcompat/widget/COUIExpandableRecyclerView;->f:Lcom/coui/appcompat/widget/f;

    .line 59
    new-instance v0, Lcom/coui/appcompat/widget/ExpandableRecyclerConnector;

    invoke-direct {v0, p1, p0}, Lcom/coui/appcompat/widget/ExpandableRecyclerConnector;-><init>(Lcom/coui/appcompat/widget/f;Lcom/coui/appcompat/widget/COUIExpandableRecyclerView;)V

    iput-object v0, p0, Lcom/coui/appcompat/widget/COUIExpandableRecyclerView;->g:Lcom/coui/appcompat/widget/ExpandableRecyclerConnector;

    .line 60
    iget-object p1, p0, Lcom/coui/appcompat/widget/COUIExpandableRecyclerView;->g:Lcom/coui/appcompat/widget/ExpandableRecyclerConnector;

    invoke-super {p0, p1}, Landroidx/recyclerview/widget/COUIRecyclerView;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$a;)V

    return-void
.end method

.method public setItemAnimator(Landroidx/recyclerview/widget/RecyclerView$f;)V
    .locals 0

    if-nez p1, :cond_0

    const/4 p1, 0x0

    .line 54
    invoke-super {p0, p1}, Landroidx/recyclerview/widget/COUIRecyclerView;->setItemAnimator(Landroidx/recyclerview/widget/RecyclerView$f;)V

    return-void

    .line 52
    :cond_0
    new-instance p0, Ljava/lang/RuntimeException;

    const-string p1, "not set ItemAnimator"

    invoke-direct {p0, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public setLayoutManager(Landroidx/recyclerview/widget/RecyclerView$i;)V
    .locals 2

    .line 40
    instance-of v0, p1, Landroidx/recyclerview/widget/COUILinearLayoutManager;

    if-eqz v0, :cond_1

    .line 43
    move-object v0, p1

    check-cast v0, Landroidx/recyclerview/widget/COUILinearLayoutManager;

    invoke-virtual {v0}, Landroidx/recyclerview/widget/COUILinearLayoutManager;->getOrientation()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 46
    invoke-super {p0, p1}, Landroidx/recyclerview/widget/COUIRecyclerView;->setLayoutManager(Landroidx/recyclerview/widget/RecyclerView$i;)V

    return-void

    .line 44
    :cond_0
    new-instance p0, Ljava/lang/RuntimeException;

    const-string p1, "only vertical orientation"

    invoke-direct {p0, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 41
    :cond_1
    new-instance p0, Ljava/lang/RuntimeException;

    const-string p1, "only COUILinearLayoutManager"

    invoke-direct {p0, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public setOnChildClickListener(Lcom/coui/appcompat/widget/COUIExpandableRecyclerView$a;)V
    .locals 0

    .line 154
    iput-object p1, p0, Lcom/coui/appcompat/widget/COUIExpandableRecyclerView;->i:Lcom/coui/appcompat/widget/COUIExpandableRecyclerView$a;

    return-void
.end method

.method public setOnGroupClickListener(Lcom/coui/appcompat/widget/COUIExpandableRecyclerView$b;)V
    .locals 0

    .line 131
    iput-object p1, p0, Lcom/coui/appcompat/widget/COUIExpandableRecyclerView;->h:Lcom/coui/appcompat/widget/COUIExpandableRecyclerView$b;

    return-void
.end method

.method public setOnGroupCollapseListener(Lcom/coui/appcompat/widget/COUIExpandableRecyclerView$c;)V
    .locals 0

    .line 202
    iput-object p1, p0, Lcom/coui/appcompat/widget/COUIExpandableRecyclerView;->j:Lcom/coui/appcompat/widget/COUIExpandableRecyclerView$c;

    return-void
.end method

.method public setOnGroupExpandListener(Lcom/coui/appcompat/widget/COUIExpandableRecyclerView$d;)V
    .locals 0

    .line 220
    iput-object p1, p0, Lcom/coui/appcompat/widget/COUIExpandableRecyclerView;->k:Lcom/coui/appcompat/widget/COUIExpandableRecyclerView$d;

    return-void
.end method
