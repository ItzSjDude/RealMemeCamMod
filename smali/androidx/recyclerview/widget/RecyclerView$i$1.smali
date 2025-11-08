.class Landroidx/recyclerview/widget/RecyclerView$i$1;
.super Ljava/lang/Object;
.source "RecyclerView.java"

# interfaces
.implements Landroidx/recyclerview/widget/t$b;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/recyclerview/widget/RecyclerView$i;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Landroidx/recyclerview/widget/RecyclerView$i;


# direct methods
.method constructor <init>(Landroidx/recyclerview/widget/RecyclerView$i;)V
    .locals 0

    .line 7743
    iput-object p1, p0, Landroidx/recyclerview/widget/RecyclerView$i$1;->a:Landroidx/recyclerview/widget/RecyclerView$i;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a()I
    .locals 0

    .line 7751
    iget-object p0, p0, Landroidx/recyclerview/widget/RecyclerView$i$1;->a:Landroidx/recyclerview/widget/RecyclerView$i;

    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView$i;->getPaddingLeft()I

    move-result p0

    return p0
.end method

.method public a(Landroid/view/View;)I
    .locals 1

    .line 7762
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroidx/recyclerview/widget/RecyclerView$j;

    .line 7763
    iget-object p0, p0, Landroidx/recyclerview/widget/RecyclerView$i$1;->a:Landroidx/recyclerview/widget/RecyclerView$i;

    invoke-virtual {p0, p1}, Landroidx/recyclerview/widget/RecyclerView$i;->getDecoratedLeft(Landroid/view/View;)I

    move-result p0

    iget p1, v0, Landroidx/recyclerview/widget/RecyclerView$j;->leftMargin:I

    sub-int/2addr p0, p1

    return p0
.end method

.method public a(I)Landroid/view/View;
    .locals 0

    .line 7746
    iget-object p0, p0, Landroidx/recyclerview/widget/RecyclerView$i$1;->a:Landroidx/recyclerview/widget/RecyclerView$i;

    invoke-virtual {p0, p1}, Landroidx/recyclerview/widget/RecyclerView$i;->getChildAt(I)Landroid/view/View;

    move-result-object p0

    return-object p0
.end method

.method public b()I
    .locals 1

    .line 7756
    iget-object v0, p0, Landroidx/recyclerview/widget/RecyclerView$i$1;->a:Landroidx/recyclerview/widget/RecyclerView$i;

    invoke-virtual {v0}, Landroidx/recyclerview/widget/RecyclerView$i;->getWidth()I

    move-result v0

    iget-object p0, p0, Landroidx/recyclerview/widget/RecyclerView$i$1;->a:Landroidx/recyclerview/widget/RecyclerView$i;

    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView$i;->getPaddingRight()I

    move-result p0

    sub-int/2addr v0, p0

    return v0
.end method

.method public b(Landroid/view/View;)I
    .locals 1

    .line 7769
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroidx/recyclerview/widget/RecyclerView$j;

    .line 7770
    iget-object p0, p0, Landroidx/recyclerview/widget/RecyclerView$i$1;->a:Landroidx/recyclerview/widget/RecyclerView$i;

    invoke-virtual {p0, p1}, Landroidx/recyclerview/widget/RecyclerView$i;->getDecoratedRight(Landroid/view/View;)I

    move-result p0

    iget p1, v0, Landroidx/recyclerview/widget/RecyclerView$j;->rightMargin:I

    add-int/2addr p0, p1

    return p0
.end method
