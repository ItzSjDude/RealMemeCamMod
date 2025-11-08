.class Lcom/oplus/camera/ui/k$e;
.super Landroid/os/Handler;
.source "GalleryPreviewAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/oplus/camera/ui/k;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "e"
.end annotation


# instance fields
.field final synthetic a:Lcom/oplus/camera/ui/k;


# direct methods
.method public constructor <init>(Lcom/oplus/camera/ui/k;Landroid/os/Looper;)V
    .locals 0

    .line 1088
    iput-object p1, p0, Lcom/oplus/camera/ui/k$e;->a:Lcom/oplus/camera/ui/k;

    .line 1089
    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 5

    .line 1094
    iget v0, p1, Landroid/os/Message;->what:I

    const/4 v1, 0x1

    if-eq v0, v1, :cond_0

    goto :goto_0

    .line 1096
    :cond_0
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Lcom/oplus/c/a/b/a;

    .line 1097
    iget-object v2, p0, Lcom/oplus/camera/ui/k$e;->a:Lcom/oplus/camera/ui/k;

    invoke-static {v2}, Lcom/oplus/camera/ui/k;->a(Lcom/oplus/camera/ui/k;)Landroid/content/Context;

    move-result-object v3

    invoke-static {v3, v0, v1}, Lcom/oplus/c/a/b;->b(Landroid/content/Context;Lcom/oplus/c/a/b/a;I)[I

    move-result-object v3

    invoke-static {v2, v3}, Lcom/oplus/camera/ui/k;->a(Lcom/oplus/camera/ui/k;[I)I

    move-result v2

    .line 1098
    iget-object v3, p0, Lcom/oplus/camera/ui/k$e;->a:Lcom/oplus/camera/ui/k;

    invoke-static {v3}, Lcom/oplus/camera/ui/k;->a(Lcom/oplus/camera/ui/k;)Landroid/content/Context;

    move-result-object v4

    invoke-static {v4, v0, v2}, Lcom/oplus/c/a/b;->a(Landroid/content/Context;Lcom/oplus/c/a/b/a;I)Landroid/graphics/Bitmap;

    move-result-object v2

    invoke-static {v3, v2}, Lcom/oplus/camera/ui/k;->a(Lcom/oplus/camera/ui/k;Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;

    .line 1099
    iget-object v2, p0, Lcom/oplus/camera/ui/k$e;->a:Lcom/oplus/camera/ui/k;

    invoke-static {v2, v1}, Lcom/oplus/camera/ui/k;->a(Lcom/oplus/camera/ui/k;Z)Z

    .line 1101
    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v2

    .line 1102
    iput v1, v2, Landroid/os/Message;->what:I

    .line 1103
    iget v1, p1, Landroid/os/Message;->arg1:I

    iput v1, v2, Landroid/os/Message;->arg1:I

    .line 1104
    iget p1, p1, Landroid/os/Message;->arg2:I

    iput p1, v2, Landroid/os/Message;->arg2:I

    .line 1107
    invoke-virtual {v0}, Lcom/oplus/c/a/b/a;->f()Ljava/lang/String;

    move-result-object p1

    const-string v0, ".dng"

    invoke-virtual {p1, v0}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_1

    .line 1108
    iget-object p0, p0, Lcom/oplus/camera/ui/k$e;->a:Lcom/oplus/camera/ui/k;

    invoke-static {p0}, Lcom/oplus/camera/ui/k;->f(Lcom/oplus/camera/ui/k;)Landroid/os/Handler;

    move-result-object p0

    const-wide/16 v0, 0x14

    invoke-virtual {p0, v2, v0, v1}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    goto :goto_0

    .line 1110
    :cond_1
    iget-object p0, p0, Lcom/oplus/camera/ui/k$e;->a:Lcom/oplus/camera/ui/k;

    invoke-static {p0}, Lcom/oplus/camera/ui/k;->f(Lcom/oplus/camera/ui/k;)Landroid/os/Handler;

    move-result-object p0

    invoke-virtual {p0, v2}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    :goto_0
    return-void
.end method
