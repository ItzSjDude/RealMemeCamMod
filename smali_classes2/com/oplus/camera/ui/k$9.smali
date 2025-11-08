.class Lcom/oplus/camera/ui/k$9;
.super Ljava/lang/Object;
.source "GalleryPreviewAdapter.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/oplus/camera/ui/k;->a(Ljava/lang/String;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Ljava/lang/String;

.field final synthetic b:Lcom/oplus/c/a/b/a;

.field final synthetic c:Lcom/oplus/camera/ui/k;


# direct methods
.method constructor <init>(Lcom/oplus/camera/ui/k;Ljava/lang/String;Lcom/oplus/c/a/b/a;)V
    .locals 0

    .line 578
    iput-object p1, p0, Lcom/oplus/camera/ui/k$9;->c:Lcom/oplus/camera/ui/k;

    iput-object p2, p0, Lcom/oplus/camera/ui/k$9;->a:Ljava/lang/String;

    iput-object p3, p0, Lcom/oplus/camera/ui/k$9;->b:Lcom/oplus/c/a/b/a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    .line 581
    iget-object v0, p0, Lcom/oplus/camera/ui/k$9;->c:Lcom/oplus/camera/ui/k;

    invoke-static {v0}, Lcom/oplus/camera/ui/k;->e(Lcom/oplus/camera/ui/k;)Ljava/util/ArrayList;

    move-result-object v0

    if-nez v0, :cond_0

    .line 582
    iget-object v0, p0, Lcom/oplus/camera/ui/k$9;->c:Lcom/oplus/camera/ui/k;

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    invoke-static {v0, v1}, Lcom/oplus/camera/ui/k;->a(Lcom/oplus/camera/ui/k;Ljava/util/ArrayList;)Ljava/util/ArrayList;

    .line 583
    iget-object v0, p0, Lcom/oplus/camera/ui/k$9;->c:Lcom/oplus/camera/ui/k;

    invoke-static {v0}, Lcom/oplus/camera/ui/k;->j(Lcom/oplus/camera/ui/k;)Ljava/util/HashMap;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    :cond_0
    const/4 v0, 0x0

    .line 588
    iget-object v1, p0, Lcom/oplus/camera/ui/k$9;->c:Lcom/oplus/camera/ui/k;

    invoke-static {v1}, Lcom/oplus/camera/ui/k;->j(Lcom/oplus/camera/ui/k;)Ljava/util/HashMap;

    move-result-object v1

    iget-object v2, p0, Lcom/oplus/camera/ui/k$9;->a:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    const/4 v2, 0x1

    if-eqz v1, :cond_2

    .line 589
    iget-object v0, p0, Lcom/oplus/camera/ui/k$9;->c:Lcom/oplus/camera/ui/k;

    invoke-static {v0}, Lcom/oplus/camera/ui/k;->j(Lcom/oplus/camera/ui/k;)Ljava/util/HashMap;

    move-result-object v0

    iget-object v1, p0, Lcom/oplus/camera/ui/k$9;->a:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 591
    iget-object v1, p0, Lcom/oplus/camera/ui/k$9;->c:Lcom/oplus/camera/ui/k;

    invoke-static {v1}, Lcom/oplus/camera/ui/k;->e(Lcom/oplus/camera/ui/k;)Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    sub-int/2addr v1, v2

    if-ge v0, v1, :cond_1

    .line 592
    iget-object v1, p0, Lcom/oplus/camera/ui/k$9;->c:Lcom/oplus/camera/ui/k;

    invoke-static {v1}, Lcom/oplus/camera/ui/k;->k(Lcom/oplus/camera/ui/k;)Ljava/lang/Object;

    move-result-object v1

    monitor-enter v1

    .line 593
    :try_start_0
    iget-object v2, p0, Lcom/oplus/camera/ui/k$9;->c:Lcom/oplus/camera/ui/k;

    invoke-static {v2}, Lcom/oplus/camera/ui/k;->e(Lcom/oplus/camera/ui/k;)Ljava/util/ArrayList;

    move-result-object v2

    iget-object v3, p0, Lcom/oplus/camera/ui/k$9;->b:Lcom/oplus/c/a/b/a;

    invoke-virtual {v2, v0, v3}, Ljava/util/ArrayList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 594
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 596
    iget-object p0, p0, Lcom/oplus/camera/ui/k$9;->c:Lcom/oplus/camera/ui/k;

    invoke-virtual {p0, v0}, Lcom/oplus/camera/ui/k;->notifyItemChanged(I)V

    return-void

    :catchall_0
    move-exception p0

    .line 594
    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p0

    .line 600
    :cond_1
    iget-object v1, p0, Lcom/oplus/camera/ui/k$9;->c:Lcom/oplus/camera/ui/k;

    invoke-static {v1}, Lcom/oplus/camera/ui/k;->k(Lcom/oplus/camera/ui/k;)Ljava/lang/Object;

    move-result-object v1

    monitor-enter v1

    .line 601
    :try_start_2
    iget-object v3, p0, Lcom/oplus/camera/ui/k$9;->c:Lcom/oplus/camera/ui/k;

    invoke-static {v3}, Lcom/oplus/camera/ui/k;->e(Lcom/oplus/camera/ui/k;)Ljava/util/ArrayList;

    move-result-object v3

    iget-object v4, p0, Lcom/oplus/camera/ui/k$9;->b:Lcom/oplus/c/a/b/a;

    invoke-virtual {v3, v0, v4}, Ljava/util/ArrayList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 602
    monitor-exit v1

    move v0, v2

    goto :goto_0

    :catchall_1
    move-exception p0

    monitor-exit v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    throw p0

    .line 606
    :cond_2
    iget-object v1, p0, Lcom/oplus/camera/ui/k$9;->c:Lcom/oplus/camera/ui/k;

    invoke-virtual {v1}, Lcom/oplus/camera/ui/k;->d()V

    .line 608
    iget-object v1, p0, Lcom/oplus/camera/ui/k$9;->c:Lcom/oplus/camera/ui/k;

    invoke-static {v1}, Lcom/oplus/camera/ui/k;->k(Lcom/oplus/camera/ui/k;)Ljava/lang/Object;

    move-result-object v1

    monitor-enter v1

    .line 609
    :try_start_3
    iget-object v3, p0, Lcom/oplus/camera/ui/k$9;->c:Lcom/oplus/camera/ui/k;

    invoke-static {v3}, Lcom/oplus/camera/ui/k;->e(Lcom/oplus/camera/ui/k;)Ljava/util/ArrayList;

    move-result-object v3

    iget-object v4, p0, Lcom/oplus/camera/ui/k$9;->b:Lcom/oplus/c/a/b/a;

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 610
    monitor-exit v1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    .line 612
    iget-object v1, p0, Lcom/oplus/camera/ui/k$9;->c:Lcom/oplus/camera/ui/k;

    invoke-static {v1}, Lcom/oplus/camera/ui/k;->j(Lcom/oplus/camera/ui/k;)Ljava/util/HashMap;

    move-result-object v1

    iget-object v3, p0, Lcom/oplus/camera/ui/k$9;->a:Ljava/lang/String;

    iget-object v4, p0, Lcom/oplus/camera/ui/k$9;->c:Lcom/oplus/camera/ui/k;

    invoke-static {v4}, Lcom/oplus/camera/ui/k;->e(Lcom/oplus/camera/ui/k;)Ljava/util/ArrayList;

    move-result-object v4

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    sub-int/2addr v4, v2

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v1, v3, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 615
    :goto_0
    iget-object v1, p0, Lcom/oplus/camera/ui/k$9;->b:Lcom/oplus/c/a/b/a;

    invoke-virtual {v1}, Lcom/oplus/c/a/b/a;->j()Z

    move-result v1

    if-nez v1, :cond_4

    if-nez v0, :cond_3

    iget-object v0, p0, Lcom/oplus/camera/ui/k$9;->b:Lcom/oplus/c/a/b/a;

    invoke-virtual {v0}, Lcom/oplus/c/a/b/a;->k()Z

    move-result v0

    if-nez v0, :cond_3

    goto :goto_1

    .line 637
    :cond_3
    iget-object v0, p0, Lcom/oplus/camera/ui/k$9;->b:Lcom/oplus/c/a/b/a;

    invoke-virtual {v0}, Lcom/oplus/c/a/b/a;->k()Z

    move-result v0

    if-nez v0, :cond_7

    .line 638
    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v0

    const/4 v1, 0x2

    .line 639
    iput v1, v0, Landroid/os/Message;->what:I

    .line 640
    iget-object v1, p0, Lcom/oplus/camera/ui/k$9;->c:Lcom/oplus/camera/ui/k;

    invoke-static {v1}, Lcom/oplus/camera/ui/k;->e(Lcom/oplus/camera/ui/k;)Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    sub-int/2addr v1, v2

    iput v1, v0, Landroid/os/Message;->arg1:I

    .line 641
    iget-object v1, p0, Lcom/oplus/camera/ui/k$9;->c:Lcom/oplus/camera/ui/k;

    invoke-static {v1}, Lcom/oplus/camera/ui/k;->f(Lcom/oplus/camera/ui/k;)Landroid/os/Handler;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    goto :goto_2

    .line 616
    :cond_4
    :goto_1
    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v0

    .line 618
    iget-object v1, p0, Lcom/oplus/camera/ui/k$9;->c:Lcom/oplus/camera/ui/k;

    invoke-static {v1}, Lcom/oplus/camera/ui/k;->i(Lcom/oplus/camera/ui/k;)Landroidx/recyclerview/widget/RecyclerView;

    move-result-object v1

    if-eqz v1, :cond_6

    iget-object v1, p0, Lcom/oplus/camera/ui/k$9;->c:Lcom/oplus/camera/ui/k;

    invoke-static {v1}, Lcom/oplus/camera/ui/k;->i(Lcom/oplus/camera/ui/k;)Landroidx/recyclerview/widget/RecyclerView;

    move-result-object v1

    invoke-virtual {v1}, Landroidx/recyclerview/widget/RecyclerView;->isShown()Z

    move-result v1

    if-eqz v1, :cond_6

    .line 619
    iput v2, v0, Landroid/os/Message;->what:I

    .line 620
    iget-object v1, p0, Lcom/oplus/camera/ui/k$9;->b:Lcom/oplus/c/a/b/a;

    iput-object v1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 621
    iget-object v1, p0, Lcom/oplus/camera/ui/k$9;->c:Lcom/oplus/camera/ui/k;

    invoke-static {v1}, Lcom/oplus/camera/ui/k;->e(Lcom/oplus/camera/ui/k;)Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    sub-int/2addr v1, v2

    iput v1, v0, Landroid/os/Message;->arg1:I

    .line 622
    iput v2, v0, Landroid/os/Message;->arg2:I

    .line 624
    iget-object v1, p0, Lcom/oplus/camera/ui/k$9;->c:Lcom/oplus/camera/ui/k;

    invoke-static {v1}, Lcom/oplus/camera/ui/k;->l(Lcom/oplus/camera/ui/k;)Lcom/oplus/camera/ui/k$e;

    move-result-object v1

    if-nez v1, :cond_5

    .line 625
    iget-object v1, p0, Lcom/oplus/camera/ui/k$9;->c:Lcom/oplus/camera/ui/k;

    invoke-static {v1}, Lcom/oplus/camera/ui/k;->m(Lcom/oplus/camera/ui/k;)V

    .line 628
    :cond_5
    iget-object v1, p0, Lcom/oplus/camera/ui/k$9;->c:Lcom/oplus/camera/ui/k;

    invoke-static {v1}, Lcom/oplus/camera/ui/k;->l(Lcom/oplus/camera/ui/k;)Lcom/oplus/camera/ui/k$e;

    move-result-object v1

    if-eqz v1, :cond_7

    .line 629
    iget-object v1, p0, Lcom/oplus/camera/ui/k$9;->c:Lcom/oplus/camera/ui/k;

    invoke-static {v1}, Lcom/oplus/camera/ui/k;->l(Lcom/oplus/camera/ui/k;)Lcom/oplus/camera/ui/k$e;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/oplus/camera/ui/k$e;->sendMessage(Landroid/os/Message;)Z

    goto :goto_2

    .line 632
    :cond_6
    iput v2, v0, Landroid/os/Message;->what:I

    .line 633
    iget-object v1, p0, Lcom/oplus/camera/ui/k$9;->c:Lcom/oplus/camera/ui/k;

    invoke-static {v1}, Lcom/oplus/camera/ui/k;->e(Lcom/oplus/camera/ui/k;)Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    sub-int/2addr v1, v2

    iput v1, v0, Landroid/os/Message;->arg1:I

    .line 634
    iput v2, v0, Landroid/os/Message;->arg2:I

    .line 635
    iget-object v1, p0, Lcom/oplus/camera/ui/k$9;->c:Lcom/oplus/camera/ui/k;

    invoke-static {v1}, Lcom/oplus/camera/ui/k;->f(Lcom/oplus/camera/ui/k;)Landroid/os/Handler;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 644
    :cond_7
    :goto_2
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "insertMediaItem, size of DataList: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/oplus/camera/ui/k$9;->c:Lcom/oplus/camera/ui/k;

    invoke-static {p0}, Lcom/oplus/camera/ui/k;->e(Lcom/oplus/camera/ui/k;)Ljava/util/ArrayList;

    move-result-object p0

    invoke-virtual {p0}, Ljava/util/ArrayList;->size()I

    move-result p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string v0, "GalleryPreviewAdapter"

    invoke-static {v0, p0}, Lcom/oplus/camera/e;->b(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :catchall_2
    move-exception p0

    .line 610
    :try_start_4
    monitor-exit v1
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    throw p0
.end method
