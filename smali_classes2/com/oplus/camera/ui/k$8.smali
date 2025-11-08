.class Lcom/oplus/camera/ui/k$8;
.super Ljava/lang/Object;
.source "GalleryPreviewAdapter.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/oplus/camera/ui/k;->c(Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Z

.field final synthetic b:Lcom/oplus/camera/ui/k;


# direct methods
.method constructor <init>(Lcom/oplus/camera/ui/k;Z)V
    .locals 0

    .line 502
    iput-object p1, p0, Lcom/oplus/camera/ui/k$8;->b:Lcom/oplus/camera/ui/k;

    iput-boolean p2, p0, Lcom/oplus/camera/ui/k$8;->a:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .line 505
    iget-object v0, p0, Lcom/oplus/camera/ui/k$8;->b:Lcom/oplus/camera/ui/k;

    invoke-static {v0}, Lcom/oplus/camera/ui/k;->g(Lcom/oplus/camera/ui/k;)Lcom/oplus/camera/ui/inverse/InverseLinearLayout;

    move-result-object v0

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/oplus/camera/ui/k$8;->b:Lcom/oplus/camera/ui/k;

    invoke-static {v0}, Lcom/oplus/camera/ui/k;->h(Lcom/oplus/camera/ui/k;)Landroid/widget/RelativeLayout;

    move-result-object v0

    if-nez v0, :cond_0

    goto/16 :goto_1

    .line 509
    :cond_0
    iget-object v0, p0, Lcom/oplus/camera/ui/k$8;->b:Lcom/oplus/camera/ui/k;

    invoke-static {v0}, Lcom/oplus/camera/ui/k;->i(Lcom/oplus/camera/ui/k;)Landroidx/recyclerview/widget/RecyclerView;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/oplus/camera/ui/k$8;->b:Lcom/oplus/camera/ui/k;

    .line 510
    invoke-static {v0}, Lcom/oplus/camera/ui/k;->i(Lcom/oplus/camera/ui/k;)Landroidx/recyclerview/widget/RecyclerView;

    move-result-object v0

    const v1, 0x7f0901a4

    invoke-virtual {v0, v1}, Landroidx/recyclerview/widget/RecyclerView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 511
    iget-object v0, p0, Lcom/oplus/camera/ui/k$8;->b:Lcom/oplus/camera/ui/k;

    invoke-static {v0}, Lcom/oplus/camera/ui/k;->i(Lcom/oplus/camera/ui/k;)Landroidx/recyclerview/widget/RecyclerView;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroidx/recyclerview/widget/RecyclerView;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/oplus/camera/ui/inverse/InverseLinearLayout;

    invoke-static {v0, v1}, Lcom/oplus/camera/ui/k;->a(Lcom/oplus/camera/ui/k;Lcom/oplus/camera/ui/inverse/InverseLinearLayout;)Lcom/oplus/camera/ui/inverse/InverseLinearLayout;

    .line 514
    :cond_1
    iget-object v0, p0, Lcom/oplus/camera/ui/k$8;->b:Lcom/oplus/camera/ui/k;

    invoke-static {v0}, Lcom/oplus/camera/ui/k;->i(Lcom/oplus/camera/ui/k;)Landroidx/recyclerview/widget/RecyclerView;

    move-result-object v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/oplus/camera/ui/k$8;->b:Lcom/oplus/camera/ui/k;

    .line 515
    invoke-static {v0}, Lcom/oplus/camera/ui/k;->i(Lcom/oplus/camera/ui/k;)Landroidx/recyclerview/widget/RecyclerView;

    move-result-object v0

    const v1, 0x7f0901a8

    invoke-virtual {v0, v1}, Landroidx/recyclerview/widget/RecyclerView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 516
    iget-object v0, p0, Lcom/oplus/camera/ui/k$8;->b:Lcom/oplus/camera/ui/k;

    invoke-static {v0}, Lcom/oplus/camera/ui/k;->i(Lcom/oplus/camera/ui/k;)Landroidx/recyclerview/widget/RecyclerView;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroidx/recyclerview/widget/RecyclerView;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/RelativeLayout;

    invoke-static {v0, v1}, Lcom/oplus/camera/ui/k;->a(Lcom/oplus/camera/ui/k;Landroid/widget/RelativeLayout;)Landroid/widget/RelativeLayout;

    .line 519
    :cond_2
    iget-object v0, p0, Lcom/oplus/camera/ui/k$8;->b:Lcom/oplus/camera/ui/k;

    invoke-static {v0}, Lcom/oplus/camera/ui/k;->h(Lcom/oplus/camera/ui/k;)Landroid/widget/RelativeLayout;

    move-result-object v0

    iget-boolean v1, p0, Lcom/oplus/camera/ui/k$8;->a:Z

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setEnabled(Z)V

    .line 520
    iget-object v0, p0, Lcom/oplus/camera/ui/k$8;->b:Lcom/oplus/camera/ui/k;

    invoke-static {v0}, Lcom/oplus/camera/ui/k;->a(Lcom/oplus/camera/ui/k;)Landroid/content/Context;

    move-result-object v0

    iget-boolean v1, p0, Lcom/oplus/camera/ui/k$8;->a:Z

    if-eqz v1, :cond_3

    const v1, 0x7f060080

    goto :goto_0

    :cond_3
    const v1, 0x7f06007f

    :goto_0
    invoke-static {v0, v1}, Landroidx/core/a/a;->c(Landroid/content/Context;I)I

    move-result v0

    .line 522
    iget-object v1, p0, Lcom/oplus/camera/ui/k$8;->b:Lcom/oplus/camera/ui/k;

    invoke-static {v1}, Lcom/oplus/camera/ui/k;->g(Lcom/oplus/camera/ui/k;)Lcom/oplus/camera/ui/inverse/InverseLinearLayout;

    move-result-object v1

    const v2, 0x7f0901a6

    invoke-virtual {v1, v2}, Lcom/oplus/camera/ui/inverse/InverseLinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    .line 523
    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->setColorFilter(I)V

    .line 524
    iget-object p0, p0, Lcom/oplus/camera/ui/k$8;->b:Lcom/oplus/camera/ui/k;

    invoke-static {p0}, Lcom/oplus/camera/ui/k;->g(Lcom/oplus/camera/ui/k;)Lcom/oplus/camera/ui/inverse/InverseLinearLayout;

    move-result-object p0

    const v1, 0x7f0901a7

    invoke-virtual {p0, v1}, Lcom/oplus/camera/ui/inverse/InverseLinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object p0

    check-cast p0, Landroid/widget/TextView;

    .line 525
    invoke-virtual {p0, v0}, Landroid/widget/TextView;->setTextColor(I)V

    :cond_4
    :goto_1
    return-void
.end method
