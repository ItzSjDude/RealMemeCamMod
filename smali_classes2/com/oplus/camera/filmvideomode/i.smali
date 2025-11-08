.class public Lcom/oplus/camera/filmvideomode/i;
.super Landroidx/recyclerview/widget/COUIRecyclerView;
.source "FilmModeBarRecyclerView.java"


# instance fields
.field private f:Lcom/oplus/camera/filmvideomode/h;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .line 18
    invoke-direct {p0, p1}, Landroidx/recyclerview/widget/COUIRecyclerView;-><init>(Landroid/content/Context;)V

    const/4 p1, 0x0

    .line 15
    iput-object p1, p0, Lcom/oplus/camera/filmvideomode/i;->f:Lcom/oplus/camera/filmvideomode/h;

    return-void
.end method


# virtual methods
.method public a(I)Landroid/view/View;
    .locals 1

    .line 83
    iget-object v0, p0, Lcom/oplus/camera/filmvideomode/i;->f:Lcom/oplus/camera/filmvideomode/h;

    invoke-virtual {v0, p1}, Lcom/oplus/camera/filmvideomode/h;->b(I)I

    move-result p1

    invoke-virtual {p0, p1}, Lcom/oplus/camera/filmvideomode/i;->findViewHolderForAdapterPosition(I)Landroidx/recyclerview/widget/RecyclerView$w;

    move-result-object p0

    if-eqz p0, :cond_0

    .line 86
    iget-object p0, p0, Landroidx/recyclerview/widget/RecyclerView$w;->itemView:Landroid/view/View;

    return-object p0

    :cond_0
    const/4 p0, 0x0

    return-object p0
.end method

.method public a(ILjava/lang/String;)V
    .locals 0

    .line 26
    iget-object p0, p0, Lcom/oplus/camera/filmvideomode/i;->f:Lcom/oplus/camera/filmvideomode/h;

    invoke-virtual {p0, p1, p2}, Lcom/oplus/camera/filmvideomode/h;->a(ILjava/lang/String;)V

    return-void
.end method

.method public a(ILjava/lang/String;Z)V
    .locals 2

    .line 30
    invoke-virtual {p0, p1}, Lcom/oplus/camera/filmvideomode/i;->a(I)Landroid/view/View;

    move-result-object v0

    .line 31
    iget-object v1, p0, Lcom/oplus/camera/filmvideomode/i;->f:Lcom/oplus/camera/filmvideomode/h;

    invoke-virtual {v1, p1, p2}, Lcom/oplus/camera/filmvideomode/h;->a(ILjava/lang/String;)V

    .line 32
    iget-object v1, p0, Lcom/oplus/camera/filmvideomode/i;->f:Lcom/oplus/camera/filmvideomode/h;

    invoke-virtual {v1, p1, p3}, Lcom/oplus/camera/filmvideomode/h;->a(IZ)V

    if-eqz v0, :cond_2

    .line 35
    iget-object v1, p0, Lcom/oplus/camera/filmvideomode/i;->f:Lcom/oplus/camera/filmvideomode/h;

    invoke-virtual {v1, v0, p2}, Lcom/oplus/camera/filmvideomode/h;->a(Landroid/view/View;Ljava/lang/String;)V

    .line 37
    invoke-static {p1}, Lcom/oplus/camera/professional/x;->a(I)Z

    move-result p1

    const/4 p2, 0x1

    if-eqz p1, :cond_1

    if-eqz p3, :cond_1

    .line 38
    invoke-virtual {v0}, Landroid/view/View;->isSelected()Z

    move-result p1

    const/4 p3, 0x0

    if-eqz p1, :cond_0

    .line 39
    iget-object p0, p0, Lcom/oplus/camera/filmvideomode/i;->f:Lcom/oplus/camera/filmvideomode/h;

    invoke-virtual {p0, v0, p3, p3}, Lcom/oplus/camera/filmvideomode/h;->a(Landroid/view/View;IZ)V

    goto :goto_0

    .line 41
    :cond_0
    iget-object p0, p0, Lcom/oplus/camera/filmvideomode/i;->f:Lcom/oplus/camera/filmvideomode/h;

    invoke-virtual {p0, v0, p3, p2}, Lcom/oplus/camera/filmvideomode/h;->a(Landroid/view/View;IZ)V

    goto :goto_0

    .line 44
    :cond_1
    iget-object p0, p0, Lcom/oplus/camera/filmvideomode/i;->f:Lcom/oplus/camera/filmvideomode/h;

    const/16 p1, 0x8

    invoke-virtual {p0, v0, p1, p2}, Lcom/oplus/camera/filmvideomode/h;->a(Landroid/view/View;IZ)V

    goto :goto_0

    .line 47
    :cond_2
    iget-object p0, p0, Lcom/oplus/camera/filmvideomode/i;->f:Lcom/oplus/camera/filmvideomode/h;

    invoke-virtual {p0, p1}, Lcom/oplus/camera/filmvideomode/h;->b(I)I

    move-result p1

    invoke-virtual {p0, p1}, Lcom/oplus/camera/filmvideomode/h;->notifyItemChanged(I)V

    :goto_0
    return-void
.end method

.method public a(IZZ)V
    .locals 1

    .line 56
    invoke-virtual {p0, p1}, Lcom/oplus/camera/filmvideomode/i;->a(I)Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 59
    instance-of p0, v0, Lcom/oplus/camera/filmvideomode/d;

    if-eqz p0, :cond_1

    .line 60
    check-cast v0, Lcom/oplus/camera/filmvideomode/d;

    const/4 p0, 0x1

    invoke-virtual {v0, p2, p0}, Lcom/oplus/camera/filmvideomode/d;->b(ZZ)V

    if-eqz p3, :cond_0

    const/4 p1, 0x0

    goto :goto_0

    :cond_0
    const/16 p1, 0x8

    .line 61
    :goto_0
    invoke-virtual {v0, p1, p0}, Lcom/oplus/camera/filmvideomode/d;->a(IZ)V

    goto :goto_1

    .line 63
    :cond_1
    invoke-virtual {v0, p2}, Landroid/view/View;->setEnabled(Z)V

    goto :goto_1

    .line 66
    :cond_2
    iget-object p0, p0, Lcom/oplus/camera/filmvideomode/i;->f:Lcom/oplus/camera/filmvideomode/h;

    invoke-virtual {p0, p1}, Lcom/oplus/camera/filmvideomode/h;->b(I)I

    move-result p1

    invoke-virtual {p0, p1}, Lcom/oplus/camera/filmvideomode/h;->notifyItemChanged(I)V

    :goto_1
    return-void
.end method

.method public getSelectedPosition()I
    .locals 1

    .line 93
    iget-object p0, p0, Lcom/oplus/camera/filmvideomode/i;->f:Lcom/oplus/camera/filmvideomode/h;

    invoke-virtual {p0}, Lcom/oplus/camera/filmvideomode/h;->b()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/oplus/camera/filmvideomode/h;->b(I)I

    move-result p0

    return p0
.end method

.method public isSelected()Z
    .locals 1

    .line 72
    invoke-virtual {p0}, Lcom/oplus/camera/filmvideomode/i;->getSelectedPosition()I

    move-result p0

    const/4 v0, -0x1

    if-eq p0, v0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public setAdapter(Landroidx/recyclerview/widget/RecyclerView$a;)V
    .locals 0

    .line 77
    invoke-super {p0, p1}, Landroidx/recyclerview/widget/COUIRecyclerView;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$a;)V

    .line 78
    check-cast p1, Lcom/oplus/camera/filmvideomode/h;

    iput-object p1, p0, Lcom/oplus/camera/filmvideomode/i;->f:Lcom/oplus/camera/filmvideomode/h;

    return-void
.end method

.method public setOnItemClickListener(Lcom/oplus/camera/filmvideomode/k$d;)V
    .locals 0

    .line 22
    iget-object p0, p0, Lcom/oplus/camera/filmvideomode/i;->f:Lcom/oplus/camera/filmvideomode/h;

    invoke-virtual {p0, p1}, Lcom/oplus/camera/filmvideomode/h;->a(Lcom/oplus/camera/filmvideomode/k$d;)V

    return-void
.end method
