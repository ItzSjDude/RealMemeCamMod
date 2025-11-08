.class public Landroidx/recyclerview/widget/COUIPanelPreferenceLinearLayoutManager;
.super Landroidx/recyclerview/widget/LinearLayoutManager;
.source "COUIPanelPreferenceLinearLayoutManager.java"


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .line 32
    invoke-direct {p0, p1}, Landroidx/recyclerview/widget/LinearLayoutManager;-><init>(Landroid/content/Context;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V
    .locals 0

    .line 50
    invoke-direct {p0, p1, p2, p3, p4}, Landroidx/recyclerview/widget/LinearLayoutManager;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    return-void
.end method


# virtual methods
.method public computeVerticalScrollOffset(Landroidx/recyclerview/widget/RecyclerView$t;)I
    .locals 0

    .line 60
    invoke-super {p0, p1}, Landroidx/recyclerview/widget/LinearLayoutManager;->computeVerticalScrollOffset(Landroidx/recyclerview/widget/RecyclerView$t;)I

    move-result p1

    iget-object p0, p0, Landroidx/recyclerview/widget/COUIPanelPreferenceLinearLayoutManager;->mRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView;->getScrollY()I

    move-result p0

    add-int/2addr p1, p0

    return p1
.end method

.method public computeVerticalScrollRange(Landroidx/recyclerview/widget/RecyclerView$t;)I
    .locals 0

    .line 55
    invoke-super {p0, p1}, Landroidx/recyclerview/widget/LinearLayoutManager;->computeVerticalScrollRange(Landroidx/recyclerview/widget/RecyclerView$t;)I

    move-result p1

    iget-object p0, p0, Landroidx/recyclerview/widget/COUIPanelPreferenceLinearLayoutManager;->mRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView;->getScrollY()I

    move-result p0

    add-int/2addr p1, p0

    return p1
.end method
