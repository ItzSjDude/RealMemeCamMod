.class Lcom/oplus/camera/ui/preview/a/af$1;
.super Ljava/lang/Object;
.source "VideoRetentionV2TexturePreview.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/oplus/camera/ui/preview/a/af;->a(Lcom/oplus/camera/ui/preview/a/aa;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/oplus/camera/ui/preview/a/aa;

.field final synthetic b:Lcom/oplus/camera/ui/preview/a/af;


# direct methods
.method constructor <init>(Lcom/oplus/camera/ui/preview/a/af;Lcom/oplus/camera/ui/preview/a/aa;)V
    .locals 0

    .line 149
    iput-object p1, p0, Lcom/oplus/camera/ui/preview/a/af$1;->b:Lcom/oplus/camera/ui/preview/a/af;

    iput-object p2, p0, Lcom/oplus/camera/ui/preview/a/af$1;->a:Lcom/oplus/camera/ui/preview/a/aa;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 152
    iget-object v0, p0, Lcom/oplus/camera/ui/preview/a/af$1;->b:Lcom/oplus/camera/ui/preview/a/af;

    invoke-static {v0}, Lcom/oplus/camera/ui/preview/a/af;->a(Lcom/oplus/camera/ui/preview/a/af;)Ljava/util/concurrent/locks/Lock;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->lock()V

    .line 155
    :try_start_0
    iget-object v0, p0, Lcom/oplus/camera/ui/preview/a/af$1;->b:Lcom/oplus/camera/ui/preview/a/af;

    invoke-static {v0}, Lcom/oplus/camera/ui/preview/a/af;->b(Lcom/oplus/camera/ui/preview/a/af;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 156
    iget-object v0, p0, Lcom/oplus/camera/ui/preview/a/af$1;->b:Lcom/oplus/camera/ui/preview/a/af;

    invoke-static {v0}, Lcom/oplus/camera/ui/preview/a/af;->c(Lcom/oplus/camera/ui/preview/a/af;)V

    .line 159
    :cond_0
    iget-object v0, p0, Lcom/oplus/camera/ui/preview/a/af$1;->b:Lcom/oplus/camera/ui/preview/a/af;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/oplus/camera/ui/preview/a/af;->a(Lcom/oplus/camera/ui/preview/a/af;Z)Z

    .line 160
    iget-object v0, p0, Lcom/oplus/camera/ui/preview/a/af$1;->b:Lcom/oplus/camera/ui/preview/a/af;

    iget-object v1, p0, Lcom/oplus/camera/ui/preview/a/af$1;->a:Lcom/oplus/camera/ui/preview/a/aa;

    invoke-static {v0, v1}, Lcom/oplus/camera/ui/preview/a/af;->a(Lcom/oplus/camera/ui/preview/a/af;Lcom/oplus/camera/ui/preview/a/aa;)Lcom/oplus/camera/ui/preview/a/aa;

    const-string v0, "VideoRetentionV2TexturePreview"

    const-string v1, "createEngine X"

    .line 162
    invoke-static {v0, v1}, Lcom/oplus/camera/e;->a(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 164
    iget-object p0, p0, Lcom/oplus/camera/ui/preview/a/af$1;->b:Lcom/oplus/camera/ui/preview/a/af;

    invoke-static {p0}, Lcom/oplus/camera/ui/preview/a/af;->a(Lcom/oplus/camera/ui/preview/a/af;)Ljava/util/concurrent/locks/Lock;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/concurrent/locks/Lock;->unlock()V

    return-void

    :catchall_0
    move-exception v0

    iget-object p0, p0, Lcom/oplus/camera/ui/preview/a/af$1;->b:Lcom/oplus/camera/ui/preview/a/af;

    invoke-static {p0}, Lcom/oplus/camera/ui/preview/a/af;->a(Lcom/oplus/camera/ui/preview/a/af;)Ljava/util/concurrent/locks/Lock;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/concurrent/locks/Lock;->unlock()V

    .line 165
    throw v0
.end method
