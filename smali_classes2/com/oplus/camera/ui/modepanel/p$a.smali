.class Lcom/oplus/camera/ui/modepanel/p$a;
.super Landroidx/recyclerview/widget/GridLayoutManager;
.source "MoreUIControl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/oplus/camera/ui/modepanel/p;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "a"
.end annotation


# instance fields
.field final synthetic i:Lcom/oplus/camera/ui/modepanel/p;


# direct methods
.method public constructor <init>(Lcom/oplus/camera/ui/modepanel/p;Landroid/content/Context;I)V
    .locals 0

    .line 706
    iput-object p1, p0, Lcom/oplus/camera/ui/modepanel/p$a;->i:Lcom/oplus/camera/ui/modepanel/p;

    .line 707
    invoke-direct {p0, p2, p3}, Landroidx/recyclerview/widget/GridLayoutManager;-><init>(Landroid/content/Context;I)V

    return-void
.end method


# virtual methods
.method public onLayoutChildren(Landroidx/recyclerview/widget/RecyclerView$p;Landroidx/recyclerview/widget/RecyclerView$t;)V
    .locals 0

    .line 745
    :try_start_0
    invoke-super {p0, p1, p2}, Landroidx/recyclerview/widget/GridLayoutManager;->onLayoutChildren(Landroidx/recyclerview/widget/RecyclerView$p;Landroidx/recyclerview/widget/RecyclerView$t;)V
    :try_end_0
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    .line 747
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "onLayoutChildren error, "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "MoreUIControl"

    invoke-static {p1, p0}, Lcom/oplus/camera/e;->f(Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    return-void
.end method

.method public onMeasure(Landroidx/recyclerview/widget/RecyclerView$p;Landroidx/recyclerview/widget/RecyclerView$t;II)V
    .locals 9

    .line 713
    :try_start_0
    invoke-super {p0, p1, p2, p3, p4}, Landroidx/recyclerview/widget/GridLayoutManager;->onMeasure(Landroidx/recyclerview/widget/RecyclerView$p;Landroidx/recyclerview/widget/RecyclerView$t;II)V

    .line 714
    iget-object v0, p0, Lcom/oplus/camera/ui/modepanel/p$a;->i:Lcom/oplus/camera/ui/modepanel/p;

    invoke-static {v0}, Lcom/oplus/camera/ui/modepanel/p;->k(Lcom/oplus/camera/ui/modepanel/p;)Lcom/oplus/camera/ui/modepanel/NonFlingRecycleView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/oplus/camera/ui/modepanel/NonFlingRecycleView;->getMeasuredWidth()I

    move-result v0

    .line 715
    iget-object v1, p0, Lcom/oplus/camera/ui/modepanel/p$a;->i:Lcom/oplus/camera/ui/modepanel/p;

    invoke-static {v1}, Lcom/oplus/camera/ui/modepanel/p;->k(Lcom/oplus/camera/ui/modepanel/p;)Lcom/oplus/camera/ui/modepanel/NonFlingRecycleView;

    move-result-object v1

    invoke-virtual {v1}, Lcom/oplus/camera/ui/modepanel/NonFlingRecycleView;->getMeasuredHeight()I

    move-result v1

    .line 717
    invoke-virtual {p2}, Landroidx/recyclerview/widget/RecyclerView$t;->e()I

    move-result p2

    const/4 v2, 0x0

    move v3, v2

    :goto_0
    if-ge v2, p2, :cond_1

    if-ge v3, v1, :cond_0

    .line 720
    invoke-virtual {p0}, Lcom/oplus/camera/ui/modepanel/p$a;->a()I

    move-result v4

    rem-int v4, v2, v4

    if-nez v4, :cond_0

    .line 721
    invoke-virtual {p1, v2}, Landroidx/recyclerview/widget/RecyclerView$p;->c(I)Landroid/view/View;

    move-result-object v4

    if-eqz v4, :cond_0

    .line 724
    invoke-virtual {v4}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v5

    check-cast v5, Landroidx/recyclerview/widget/RecyclerView$j;

    .line 726
    invoke-virtual {p0}, Lcom/oplus/camera/ui/modepanel/p$a;->getPaddingLeft()I

    move-result v6

    invoke-virtual {p0}, Lcom/oplus/camera/ui/modepanel/p$a;->getPaddingRight()I

    move-result v7

    add-int/2addr v6, v7

    iget v7, v5, Landroidx/recyclerview/widget/RecyclerView$j;->width:I

    .line 725
    invoke-static {p3, v6, v7}, Landroid/view/ViewGroup;->getChildMeasureSpec(III)I

    move-result v6

    .line 728
    invoke-virtual {p0}, Lcom/oplus/camera/ui/modepanel/p$a;->getPaddingTop()I

    move-result v7

    invoke-virtual {p0}, Lcom/oplus/camera/ui/modepanel/p$a;->getPaddingBottom()I

    move-result v8

    add-int/2addr v7, v8

    iget v8, v5, Landroidx/recyclerview/widget/RecyclerView$j;->height:I

    .line 727
    invoke-static {p4, v7, v8}, Landroid/view/ViewGroup;->getChildMeasureSpec(III)I

    move-result v7

    .line 730
    invoke-virtual {v4, v6, v7}, Landroid/view/View;->measure(II)V

    .line 731
    invoke-virtual {v4}, Landroid/view/View;->getMeasuredHeight()I

    move-result v4

    iget v6, v5, Landroidx/recyclerview/widget/RecyclerView$j;->bottomMargin:I

    add-int/2addr v4, v6

    iget v5, v5, Landroidx/recyclerview/widget/RecyclerView$j;->topMargin:I

    add-int/2addr v4, v5

    add-int/2addr v3, v4

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 736
    :cond_1
    invoke-static {v1, v3}, Ljava/lang/Math;->min(II)I

    move-result p1

    invoke-virtual {p0, v0, p1}, Lcom/oplus/camera/ui/modepanel/p$a;->setMeasuredDimension(II)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception p0

    .line 738
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "onMeasure error, "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "MoreUIControl"

    invoke-static {p1, p0}, Lcom/oplus/camera/e;->f(Ljava/lang/String;Ljava/lang/String;)V

    :goto_1
    return-void
.end method
