.class Lcom/oplus/camera/ui/d$1;
.super Landroidx/recyclerview/widget/RecyclerView$c;
.source "CameraUIManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/oplus/camera/ui/d;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/oplus/camera/ui/d;


# direct methods
.method constructor <init>(Lcom/oplus/camera/ui/d;)V
    .locals 0

    .line 439
    iput-object p1, p0, Lcom/oplus/camera/ui/d$1;->a:Lcom/oplus/camera/ui/d;

    invoke-direct {p0}, Landroidx/recyclerview/widget/RecyclerView$c;-><init>()V

    return-void
.end method


# virtual methods
.method public onChanged()V
    .locals 4

    .line 442
    invoke-super {p0}, Landroidx/recyclerview/widget/RecyclerView$c;->onChanged()V

    .line 443
    iget-object v0, p0, Lcom/oplus/camera/ui/d$1;->a:Lcom/oplus/camera/ui/d;

    invoke-static {v0}, Lcom/oplus/camera/ui/d;->a(Lcom/oplus/camera/ui/d;)Lcom/oplus/camera/ui/k;

    move-result-object v0

    invoke-virtual {v0}, Lcom/oplus/camera/ui/k;->getItemCount()I

    move-result v0

    const/4 v1, 0x4

    const/4 v2, 0x0

    if-nez v0, :cond_0

    move v3, v1

    goto :goto_0

    :cond_0
    move v3, v2

    :goto_0
    if-nez v0, :cond_1

    move v1, v2

    .line 447
    :cond_1
    iget-object v0, p0, Lcom/oplus/camera/ui/d$1;->a:Lcom/oplus/camera/ui/d;

    invoke-static {v0}, Lcom/oplus/camera/ui/d;->b(Lcom/oplus/camera/ui/d;)Lcom/oplus/camera/ui/j;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 448
    iget-object v0, p0, Lcom/oplus/camera/ui/d$1;->a:Lcom/oplus/camera/ui/d;

    invoke-static {v0}, Lcom/oplus/camera/ui/d;->b(Lcom/oplus/camera/ui/d;)Lcom/oplus/camera/ui/j;

    move-result-object v0

    invoke-virtual {v0, v3}, Lcom/oplus/camera/ui/j;->setVisibility(I)V

    .line 451
    :cond_2
    iget-object v0, p0, Lcom/oplus/camera/ui/d$1;->a:Lcom/oplus/camera/ui/d;

    invoke-static {v0}, Lcom/oplus/camera/ui/d;->c(Lcom/oplus/camera/ui/d;)Lcom/oplus/camera/ui/inverse/InverseTextView;

    move-result-object v0

    if-eqz v0, :cond_3

    .line 452
    iget-object p0, p0, Lcom/oplus/camera/ui/d$1;->a:Lcom/oplus/camera/ui/d;

    invoke-static {p0}, Lcom/oplus/camera/ui/d;->c(Lcom/oplus/camera/ui/d;)Lcom/oplus/camera/ui/inverse/InverseTextView;

    move-result-object p0

    invoke-virtual {p0, v1}, Lcom/oplus/camera/ui/inverse/InverseTextView;->setVisibility(I)V

    :cond_3
    return-void
.end method

.method public onItemRangeChanged(II)V
    .locals 2

    .line 458
    invoke-super {p0, p1, p2}, Landroidx/recyclerview/widget/RecyclerView$c;->onItemRangeChanged(II)V

    .line 459
    iget-object p1, p0, Lcom/oplus/camera/ui/d$1;->a:Lcom/oplus/camera/ui/d;

    invoke-static {p1}, Lcom/oplus/camera/ui/d;->a(Lcom/oplus/camera/ui/d;)Lcom/oplus/camera/ui/k;

    move-result-object p1

    invoke-virtual {p1}, Lcom/oplus/camera/ui/k;->getItemCount()I

    move-result p1

    const/4 p2, 0x4

    const/4 v0, 0x0

    if-nez p1, :cond_0

    move v1, p2

    goto :goto_0

    :cond_0
    move v1, v0

    :goto_0
    if-nez p1, :cond_1

    move p2, v0

    .line 463
    :cond_1
    iget-object p1, p0, Lcom/oplus/camera/ui/d$1;->a:Lcom/oplus/camera/ui/d;

    invoke-static {p1}, Lcom/oplus/camera/ui/d;->b(Lcom/oplus/camera/ui/d;)Lcom/oplus/camera/ui/j;

    move-result-object p1

    if-eqz p1, :cond_2

    .line 464
    iget-object p1, p0, Lcom/oplus/camera/ui/d$1;->a:Lcom/oplus/camera/ui/d;

    invoke-static {p1}, Lcom/oplus/camera/ui/d;->b(Lcom/oplus/camera/ui/d;)Lcom/oplus/camera/ui/j;

    move-result-object p1

    invoke-virtual {p1, v1}, Lcom/oplus/camera/ui/j;->setVisibility(I)V

    .line 467
    :cond_2
    iget-object p1, p0, Lcom/oplus/camera/ui/d$1;->a:Lcom/oplus/camera/ui/d;

    invoke-static {p1}, Lcom/oplus/camera/ui/d;->c(Lcom/oplus/camera/ui/d;)Lcom/oplus/camera/ui/inverse/InverseTextView;

    move-result-object p1

    if-eqz p1, :cond_3

    .line 468
    iget-object p0, p0, Lcom/oplus/camera/ui/d$1;->a:Lcom/oplus/camera/ui/d;

    invoke-static {p0}, Lcom/oplus/camera/ui/d;->c(Lcom/oplus/camera/ui/d;)Lcom/oplus/camera/ui/inverse/InverseTextView;

    move-result-object p0

    invoke-virtual {p0, p2}, Lcom/oplus/camera/ui/inverse/InverseTextView;->setVisibility(I)V

    :cond_3
    return-void
.end method
