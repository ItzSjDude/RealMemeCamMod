.class Lcom/oplus/camera/ui/k$11;
.super Ljava/lang/Object;
.source "GalleryPreviewAdapter.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/oplus/camera/ui/k;->a(Lcom/oplus/c/a/b/a;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:I

.field final synthetic b:Lcom/oplus/camera/ui/k;


# direct methods
.method constructor <init>(Lcom/oplus/camera/ui/k;I)V
    .locals 0

    .line 787
    iput-object p1, p0, Lcom/oplus/camera/ui/k$11;->b:Lcom/oplus/camera/ui/k;

    iput p2, p0, Lcom/oplus/camera/ui/k$11;->a:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 790
    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v0

    const/4 v1, 0x3

    .line 791
    iput v1, v0, Landroid/os/Message;->what:I

    .line 792
    iget v1, p0, Lcom/oplus/camera/ui/k$11;->a:I

    iput v1, v0, Landroid/os/Message;->arg1:I

    .line 793
    iget-object v1, p0, Lcom/oplus/camera/ui/k$11;->b:Lcom/oplus/camera/ui/k;

    invoke-static {v1}, Lcom/oplus/camera/ui/k;->f(Lcom/oplus/camera/ui/k;)Landroid/os/Handler;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 795
    iget v0, p0, Lcom/oplus/camera/ui/k$11;->a:I

    iget-object v1, p0, Lcom/oplus/camera/ui/k$11;->b:Lcom/oplus/camera/ui/k;

    invoke-static {v1}, Lcom/oplus/camera/ui/k;->e(Lcom/oplus/camera/ui/k;)Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-lt v0, v1, :cond_0

    .line 796
    iget-object v0, p0, Lcom/oplus/camera/ui/k$11;->b:Lcom/oplus/camera/ui/k;

    invoke-static {v0}, Lcom/oplus/camera/ui/k;->i(Lcom/oplus/camera/ui/k;)Landroidx/recyclerview/widget/RecyclerView;

    move-result-object v0

    iget-object p0, p0, Lcom/oplus/camera/ui/k$11;->b:Lcom/oplus/camera/ui/k;

    invoke-static {p0}, Lcom/oplus/camera/ui/k;->e(Lcom/oplus/camera/ui/k;)Ljava/util/ArrayList;

    move-result-object p0

    invoke-virtual {p0}, Ljava/util/ArrayList;->size()I

    move-result p0

    add-int/lit8 p0, p0, -0x1

    invoke-virtual {v0, p0}, Landroidx/recyclerview/widget/RecyclerView;->scrollToPosition(I)V

    goto :goto_0

    .line 797
    :cond_0
    iget v0, p0, Lcom/oplus/camera/ui/k$11;->a:I

    if-nez v0, :cond_1

    .line 798
    iget-object p0, p0, Lcom/oplus/camera/ui/k$11;->b:Lcom/oplus/camera/ui/k;

    invoke-static {p0}, Lcom/oplus/camera/ui/k;->i(Lcom/oplus/camera/ui/k;)Landroidx/recyclerview/widget/RecyclerView;

    move-result-object p0

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroidx/recyclerview/widget/RecyclerView;->scrollToPosition(I)V

    goto :goto_0

    .line 800
    :cond_1
    iget-object v0, p0, Lcom/oplus/camera/ui/k$11;->b:Lcom/oplus/camera/ui/k;

    invoke-static {v0}, Lcom/oplus/camera/ui/k;->i(Lcom/oplus/camera/ui/k;)Landroidx/recyclerview/widget/RecyclerView;

    move-result-object v0

    iget p0, p0, Lcom/oplus/camera/ui/k$11;->a:I

    add-int/lit8 p0, p0, -0x1

    invoke-virtual {v0, p0}, Landroidx/recyclerview/widget/RecyclerView;->scrollToPosition(I)V

    :goto_0
    return-void
.end method
