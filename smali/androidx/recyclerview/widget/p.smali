.class public Landroidx/recyclerview/widget/p;
.super Landroidx/core/h/a;
.source "RecyclerViewAccessibilityDelegate.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/recyclerview/widget/p$a;
    }
.end annotation


# instance fields
.field private final mItemDelegate:Landroidx/recyclerview/widget/p$a;

.field final mRecyclerView:Landroidx/recyclerview/widget/RecyclerView;


# direct methods
.method public constructor <init>(Landroidx/recyclerview/widget/RecyclerView;)V
    .locals 1

    .line 44
    invoke-direct {p0}, Landroidx/core/h/a;-><init>()V

    .line 45
    iput-object p1, p0, Landroidx/recyclerview/widget/p;->mRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    .line 46
    invoke-virtual {p0}, Landroidx/recyclerview/widget/p;->getItemDelegate()Landroidx/core/h/a;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 47
    instance-of v0, p1, Landroidx/recyclerview/widget/p$a;

    if-eqz v0, :cond_0

    .line 48
    check-cast p1, Landroidx/recyclerview/widget/p$a;

    iput-object p1, p0, Landroidx/recyclerview/widget/p;->mItemDelegate:Landroidx/recyclerview/widget/p$a;

    goto :goto_0

    .line 50
    :cond_0
    new-instance p1, Landroidx/recyclerview/widget/p$a;

    invoke-direct {p1, p0}, Landroidx/recyclerview/widget/p$a;-><init>(Landroidx/recyclerview/widget/p;)V

    iput-object p1, p0, Landroidx/recyclerview/widget/p;->mItemDelegate:Landroidx/recyclerview/widget/p$a;

    :goto_0
    return-void
.end method


# virtual methods
.method public getItemDelegate()Landroidx/core/h/a;
    .locals 0

    .line 99
    iget-object p0, p0, Landroidx/recyclerview/widget/p;->mItemDelegate:Landroidx/recyclerview/widget/p$a;

    return-object p0
.end method

.method public onInitializeAccessibilityEvent(Landroid/view/View;Landroid/view/accessibility/AccessibilityEvent;)V
    .locals 1

    .line 80
    invoke-super {p0, p1, p2}, Landroidx/core/h/a;->onInitializeAccessibilityEvent(Landroid/view/View;Landroid/view/accessibility/AccessibilityEvent;)V

    .line 81
    instance-of v0, p1, Landroidx/recyclerview/widget/RecyclerView;

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Landroidx/recyclerview/widget/p;->shouldIgnore()Z

    move-result p0

    if-nez p0, :cond_0

    .line 82
    check-cast p1, Landroidx/recyclerview/widget/RecyclerView;

    .line 83
    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView;->getLayoutManager()Landroidx/recyclerview/widget/RecyclerView$i;

    move-result-object p0

    if-eqz p0, :cond_0

    .line 84
    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView;->getLayoutManager()Landroidx/recyclerview/widget/RecyclerView$i;

    move-result-object p0

    invoke-virtual {p0, p2}, Landroidx/recyclerview/widget/RecyclerView$i;->onInitializeAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)V

    :cond_0
    return-void
.end method

.method public onInitializeAccessibilityNodeInfo(Landroid/view/View;Landroidx/core/h/a/d;)V
    .locals 0

    .line 72
    invoke-super {p0, p1, p2}, Landroidx/core/h/a;->onInitializeAccessibilityNodeInfo(Landroid/view/View;Landroidx/core/h/a/d;)V

    .line 73
    invoke-virtual {p0}, Landroidx/recyclerview/widget/p;->shouldIgnore()Z

    move-result p1

    if-nez p1, :cond_0

    iget-object p1, p0, Landroidx/recyclerview/widget/p;->mRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView;->getLayoutManager()Landroidx/recyclerview/widget/RecyclerView$i;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 74
    iget-object p0, p0, Landroidx/recyclerview/widget/p;->mRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView;->getLayoutManager()Landroidx/recyclerview/widget/RecyclerView$i;

    move-result-object p0

    invoke-virtual {p0, p2}, Landroidx/recyclerview/widget/RecyclerView$i;->onInitializeAccessibilityNodeInfo(Landroidx/core/h/a/d;)V

    :cond_0
    return-void
.end method

.method public performAccessibilityAction(Landroid/view/View;ILandroid/os/Bundle;)Z
    .locals 0

    .line 60
    invoke-super {p0, p1, p2, p3}, Landroidx/core/h/a;->performAccessibilityAction(Landroid/view/View;ILandroid/os/Bundle;)Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p0, 0x1

    return p0

    .line 63
    :cond_0
    invoke-virtual {p0}, Landroidx/recyclerview/widget/p;->shouldIgnore()Z

    move-result p1

    if-nez p1, :cond_1

    iget-object p1, p0, Landroidx/recyclerview/widget/p;->mRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView;->getLayoutManager()Landroidx/recyclerview/widget/RecyclerView$i;

    move-result-object p1

    if-eqz p1, :cond_1

    .line 64
    iget-object p0, p0, Landroidx/recyclerview/widget/p;->mRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView;->getLayoutManager()Landroidx/recyclerview/widget/RecyclerView$i;

    move-result-object p0

    invoke-virtual {p0, p2, p3}, Landroidx/recyclerview/widget/RecyclerView$i;->performAccessibilityAction(ILandroid/os/Bundle;)Z

    move-result p0

    return p0

    :cond_1
    const/4 p0, 0x0

    return p0
.end method

.method shouldIgnore()Z
    .locals 0

    .line 55
    iget-object p0, p0, Landroidx/recyclerview/widget/p;->mRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView;->hasPendingAdapterUpdates()Z

    move-result p0

    return p0
.end method
