.class Lcom/oplus/camera/ui/preview/a/ae$1;
.super Ljava/lang/Object;
.source "VideoRetentionTexturePreview.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/oplus/camera/ui/preview/a/ae;->a(Lcom/oplus/camera/ui/preview/a/aa;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/oplus/camera/ui/preview/a/aa;

.field final synthetic b:Lcom/oplus/camera/ui/preview/a/ae;


# direct methods
.method constructor <init>(Lcom/oplus/camera/ui/preview/a/ae;Lcom/oplus/camera/ui/preview/a/aa;)V
    .locals 0

    .line 165
    iput-object p1, p0, Lcom/oplus/camera/ui/preview/a/ae$1;->b:Lcom/oplus/camera/ui/preview/a/ae;

    iput-object p2, p0, Lcom/oplus/camera/ui/preview/a/ae$1;->a:Lcom/oplus/camera/ui/preview/a/aa;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 168
    iget-object v0, p0, Lcom/oplus/camera/ui/preview/a/ae$1;->b:Lcom/oplus/camera/ui/preview/a/ae;

    invoke-static {v0}, Lcom/oplus/camera/ui/preview/a/ae;->a(Lcom/oplus/camera/ui/preview/a/ae;)Ljava/util/concurrent/locks/Lock;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->lock()V

    .line 171
    :try_start_0
    iget-object v0, p0, Lcom/oplus/camera/ui/preview/a/ae$1;->b:Lcom/oplus/camera/ui/preview/a/ae;

    invoke-static {v0}, Lcom/oplus/camera/ui/preview/a/ae;->b(Lcom/oplus/camera/ui/preview/a/ae;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 172
    iget-object v0, p0, Lcom/oplus/camera/ui/preview/a/ae$1;->b:Lcom/oplus/camera/ui/preview/a/ae;

    invoke-static {v0}, Lcom/oplus/camera/ui/preview/a/ae;->c(Lcom/oplus/camera/ui/preview/a/ae;)V

    .line 175
    :cond_0
    iget-object v0, p0, Lcom/oplus/camera/ui/preview/a/ae$1;->b:Lcom/oplus/camera/ui/preview/a/ae;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/oplus/camera/ui/preview/a/ae;->a(Lcom/oplus/camera/ui/preview/a/ae;Z)Z

    .line 176
    iget-object v0, p0, Lcom/oplus/camera/ui/preview/a/ae$1;->b:Lcom/oplus/camera/ui/preview/a/ae;

    iget-object v1, p0, Lcom/oplus/camera/ui/preview/a/ae$1;->a:Lcom/oplus/camera/ui/preview/a/aa;

    invoke-static {v0, v1}, Lcom/oplus/camera/ui/preview/a/ae;->a(Lcom/oplus/camera/ui/preview/a/ae;Lcom/oplus/camera/ui/preview/a/aa;)Lcom/oplus/camera/ui/preview/a/aa;

    const-string v0, "VideoRetentionTexturePreview"

    const-string v1, "createEngine X"

    .line 178
    invoke-static {v0, v1}, Lcom/oplus/camera/e;->a(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 180
    iget-object p0, p0, Lcom/oplus/camera/ui/preview/a/ae$1;->b:Lcom/oplus/camera/ui/preview/a/ae;

    invoke-static {p0}, Lcom/oplus/camera/ui/preview/a/ae;->a(Lcom/oplus/camera/ui/preview/a/ae;)Ljava/util/concurrent/locks/Lock;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/concurrent/locks/Lock;->unlock()V

    return-void

    :catchall_0
    move-exception v0

    iget-object p0, p0, Lcom/oplus/camera/ui/preview/a/ae$1;->b:Lcom/oplus/camera/ui/preview/a/ae;

    invoke-static {p0}, Lcom/oplus/camera/ui/preview/a/ae;->a(Lcom/oplus/camera/ui/preview/a/ae;)Ljava/util/concurrent/locks/Lock;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/concurrent/locks/Lock;->unlock()V

    .line 181
    throw v0
.end method
