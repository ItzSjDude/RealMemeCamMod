.class Lcom/oplus/camera/ui/k$b;
.super Landroid/os/Handler;
.source "GalleryPreviewAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/oplus/camera/ui/k;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "b"
.end annotation


# instance fields
.field final synthetic a:Lcom/oplus/camera/ui/k;


# direct methods
.method public constructor <init>(Lcom/oplus/camera/ui/k;Landroid/os/Looper;)V
    .locals 0

    .line 1121
    iput-object p1, p0, Lcom/oplus/camera/ui/k$b;->a:Lcom/oplus/camera/ui/k;

    .line 1122
    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 4

    .line 1127
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "handleMessage, msg.what: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p1, Landroid/os/Message;->what:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "GalleryPreviewAdapter"

    invoke-static {v1, v0}, Lcom/oplus/camera/e;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 1129
    iget v0, p1, Landroid/os/Message;->what:I

    const/4 v1, 0x1

    if-eq v0, v1, :cond_2

    const/4 v2, 0x2

    if-eq v0, v2, :cond_1

    const/4 v2, 0x3

    if-eq v0, v2, :cond_0

    goto :goto_0

    .line 1148
    :cond_0
    iget p1, p1, Landroid/os/Message;->arg1:I

    .line 1149
    iget-object v0, p0, Lcom/oplus/camera/ui/k$b;->a:Lcom/oplus/camera/ui/k;

    invoke-virtual {v0, p1}, Lcom/oplus/camera/ui/k;->notifyItemChanged(I)V

    .line 1150
    iget-object p0, p0, Lcom/oplus/camera/ui/k$b;->a:Lcom/oplus/camera/ui/k;

    invoke-virtual {p0, p1, v1}, Lcom/oplus/camera/ui/k;->notifyItemRangeRemoved(II)V

    goto :goto_0

    .line 1143
    :cond_1
    iget p1, p1, Landroid/os/Message;->arg1:I

    .line 1144
    iget-object p0, p0, Lcom/oplus/camera/ui/k$b;->a:Lcom/oplus/camera/ui/k;

    invoke-virtual {p0, p1}, Lcom/oplus/camera/ui/k;->notifyItemChanged(I)V

    goto :goto_0

    .line 1131
    :cond_2
    iget v0, p1, Landroid/os/Message;->arg1:I

    .line 1132
    iget p1, p1, Landroid/os/Message;->arg2:I

    .line 1133
    iget-object v2, p0, Lcom/oplus/camera/ui/k$b;->a:Lcom/oplus/camera/ui/k;

    invoke-virtual {v2, v0}, Lcom/oplus/camera/ui/k;->notifyItemInserted(I)V

    .line 1134
    iget-object v2, p0, Lcom/oplus/camera/ui/k$b;->a:Lcom/oplus/camera/ui/k;

    invoke-static {v2}, Lcom/oplus/camera/ui/k;->e(Lcom/oplus/camera/ui/k;)Ljava/util/ArrayList;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    sub-int/2addr v3, v0

    invoke-virtual {v2, v0, v3}, Lcom/oplus/camera/ui/k;->notifyItemRangeChanged(II)V

    if-ne v1, p1, :cond_3

    .line 1136
    iget-object p1, p0, Lcom/oplus/camera/ui/k$b;->a:Lcom/oplus/camera/ui/k;

    invoke-static {p1}, Lcom/oplus/camera/ui/k;->i(Lcom/oplus/camera/ui/k;)Landroidx/recyclerview/widget/RecyclerView;

    move-result-object p1

    if-eqz p1, :cond_3

    .line 1137
    iget-object p0, p0, Lcom/oplus/camera/ui/k$b;->a:Lcom/oplus/camera/ui/k;

    invoke-static {p0}, Lcom/oplus/camera/ui/k;->i(Lcom/oplus/camera/ui/k;)Landroidx/recyclerview/widget/RecyclerView;

    move-result-object p0

    invoke-virtual {p0, v0}, Landroidx/recyclerview/widget/RecyclerView;->scrollToPosition(I)V

    :cond_3
    :goto_0
    return-void
.end method
