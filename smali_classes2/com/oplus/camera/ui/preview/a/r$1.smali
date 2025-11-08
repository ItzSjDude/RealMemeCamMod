.class Lcom/oplus/camera/ui/preview/a/r$1;
.super Landroid/os/Handler;
.source "OplusBlurTexturePreview.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/oplus/camera/ui/preview/a/r;->a(Lcom/oplus/camera/ui/preview/a/aa;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/oplus/camera/ui/preview/a/r;


# direct methods
.method constructor <init>(Lcom/oplus/camera/ui/preview/a/r;Landroid/os/Looper;)V
    .locals 0

    .line 211
    iput-object p1, p0, Lcom/oplus/camera/ui/preview/a/r$1;->a:Lcom/oplus/camera/ui/preview/a/r;

    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 3

    .line 214
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "mBlurPreviewHandler, handleMessage, msg: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p1, Landroid/os/Message;->what:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "OplusBlurTexturePreview"

    invoke-static {v1, v0}, Lcom/oplus/camera/e;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 216
    iget p1, p1, Landroid/os/Message;->what:I

    if-eqz p1, :cond_2

    const/4 v0, 0x1

    if-eq p1, v0, :cond_0

    goto/16 :goto_0

    .line 234
    :cond_0
    iget-object p1, p0, Lcom/oplus/camera/ui/preview/a/r$1;->a:Lcom/oplus/camera/ui/preview/a/r;

    invoke-static {p1}, Lcom/oplus/camera/ui/preview/a/r;->a(Lcom/oplus/camera/ui/preview/a/r;)Ljava/lang/Object;

    move-result-object p1

    monitor-enter p1

    .line 235
    :try_start_0
    iget-object v0, p0, Lcom/oplus/camera/ui/preview/a/r$1;->a:Lcom/oplus/camera/ui/preview/a/r;

    invoke-static {v0}, Lcom/oplus/camera/ui/preview/a/r;->b(Lcom/oplus/camera/ui/preview/a/r;)Lcom/oplus/a/a;

    move-result-object v0

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    .line 236
    iget-object v0, p0, Lcom/oplus/camera/ui/preview/a/r$1;->a:Lcom/oplus/camera/ui/preview/a/r;

    invoke-static {v0}, Lcom/oplus/camera/ui/preview/a/r;->b(Lcom/oplus/camera/ui/preview/a/r;)Lcom/oplus/a/a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/oplus/a/a;->a()V

    .line 237
    iget-object v0, p0, Lcom/oplus/camera/ui/preview/a/r$1;->a:Lcom/oplus/camera/ui/preview/a/r;

    invoke-static {v0, v1}, Lcom/oplus/camera/ui/preview/a/r;->a(Lcom/oplus/camera/ui/preview/a/r;Lcom/oplus/a/a;)Lcom/oplus/a/a;

    .line 240
    :cond_1
    iget-object p0, p0, Lcom/oplus/camera/ui/preview/a/r$1;->a:Lcom/oplus/camera/ui/preview/a/r;

    invoke-static {p0, v1}, Lcom/oplus/camera/ui/preview/a/r;->a(Lcom/oplus/camera/ui/preview/a/r;Lcom/oplus/camera/ui/preview/a/aa;)Lcom/oplus/camera/ui/preview/a/aa;

    .line 241
    monitor-exit p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const-string p0, "OplusBlurTexturePreview"

    const-string p1, "mBlurPreviewHandler, handleMessage, MSG_DESTROY_BLUR_PREVIEW X"

    .line 243
    invoke-static {p0, p1}, Lcom/oplus/camera/e;->a(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :catchall_0
    move-exception p0

    .line 241
    :try_start_1
    monitor-exit p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p0

    .line 218
    :cond_2
    iget-object p1, p0, Lcom/oplus/camera/ui/preview/a/r$1;->a:Lcom/oplus/camera/ui/preview/a/r;

    const/4 v0, 0x0

    invoke-static {p1, v0}, Lcom/oplus/camera/ui/preview/a/r;->a(Lcom/oplus/camera/ui/preview/a/r;Z)Z

    .line 220
    iget-object p1, p0, Lcom/oplus/camera/ui/preview/a/r$1;->a:Lcom/oplus/camera/ui/preview/a/r;

    invoke-static {p1}, Lcom/oplus/camera/ui/preview/a/r;->a(Lcom/oplus/camera/ui/preview/a/r;)Ljava/lang/Object;

    move-result-object p1

    monitor-enter p1

    .line 221
    :try_start_2
    iget-object v0, p0, Lcom/oplus/camera/ui/preview/a/r$1;->a:Lcom/oplus/camera/ui/preview/a/r;

    invoke-static {v0}, Lcom/oplus/camera/ui/preview/a/r;->b(Lcom/oplus/camera/ui/preview/a/r;)Lcom/oplus/a/a;

    move-result-object v0

    if-nez v0, :cond_3

    .line 222
    iget-object v0, p0, Lcom/oplus/camera/ui/preview/a/r$1;->a:Lcom/oplus/camera/ui/preview/a/r;

    new-instance v1, Lcom/oplus/a/a;

    invoke-direct {v1}, Lcom/oplus/a/a;-><init>()V

    invoke-static {v0, v1}, Lcom/oplus/camera/ui/preview/a/r;->a(Lcom/oplus/camera/ui/preview/a/r;Lcom/oplus/a/a;)Lcom/oplus/a/a;

    .line 223
    iget-object v0, p0, Lcom/oplus/camera/ui/preview/a/r$1;->a:Lcom/oplus/camera/ui/preview/a/r;

    invoke-static {v0}, Lcom/oplus/camera/ui/preview/a/r;->b(Lcom/oplus/camera/ui/preview/a/r;)Lcom/oplus/a/a;

    move-result-object v0

    iget-object v1, p0, Lcom/oplus/camera/ui/preview/a/r$1;->a:Lcom/oplus/camera/ui/preview/a/r;

    invoke-static {v1}, Lcom/oplus/camera/ui/preview/a/r;->c(Lcom/oplus/camera/ui/preview/a/r;)Z

    move-result v1

    invoke-virtual {v0, v1}, Lcom/oplus/a/a;->a(Z)V

    .line 224
    iget-object v0, p0, Lcom/oplus/camera/ui/preview/a/r$1;->a:Lcom/oplus/camera/ui/preview/a/r;

    iget-object v1, p0, Lcom/oplus/camera/ui/preview/a/r$1;->a:Lcom/oplus/camera/ui/preview/a/r;

    invoke-static {v1}, Lcom/oplus/camera/ui/preview/a/r;->d(Lcom/oplus/camera/ui/preview/a/r;)I

    move-result v1

    iget-object v2, p0, Lcom/oplus/camera/ui/preview/a/r$1;->a:Lcom/oplus/camera/ui/preview/a/r;

    invoke-static {v2}, Lcom/oplus/camera/ui/preview/a/r;->e(Lcom/oplus/camera/ui/preview/a/r;)I

    move-result v2

    invoke-static {v1, v2}, Lcom/oplus/a/a;->a(II)Z

    move-result v1

    invoke-static {v0, v1}, Lcom/oplus/camera/ui/preview/a/r;->b(Lcom/oplus/camera/ui/preview/a/r;Z)Z

    .line 225
    iget-object v0, p0, Lcom/oplus/camera/ui/preview/a/r$1;->a:Lcom/oplus/camera/ui/preview/a/r;

    invoke-static {v0}, Lcom/oplus/camera/ui/preview/a/r;->b(Lcom/oplus/camera/ui/preview/a/r;)Lcom/oplus/a/a;

    move-result-object v0

    iget-object v1, p0, Lcom/oplus/camera/ui/preview/a/r$1;->a:Lcom/oplus/camera/ui/preview/a/r;

    iget-object v1, v1, Lcom/oplus/camera/ui/preview/a/r;->j:Landroid/content/Context;

    invoke-virtual {v0, v1}, Lcom/oplus/a/a;->a(Landroid/content/Context;)V

    .line 228
    :cond_3
    iget-object v0, p0, Lcom/oplus/camera/ui/preview/a/r$1;->a:Lcom/oplus/camera/ui/preview/a/r;

    iget-object p0, p0, Lcom/oplus/camera/ui/preview/a/r$1;->a:Lcom/oplus/camera/ui/preview/a/r;

    invoke-static {p0}, Lcom/oplus/camera/ui/preview/a/r;->f(Lcom/oplus/camera/ui/preview/a/r;)Z

    move-result p0

    invoke-static {v0, p0}, Lcom/oplus/camera/ui/preview/a/r;->a(Lcom/oplus/camera/ui/preview/a/r;Z)Z

    .line 229
    monitor-exit p1

    :goto_0
    return-void

    :catchall_1
    move-exception p0

    monitor-exit p1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    throw p0
.end method
