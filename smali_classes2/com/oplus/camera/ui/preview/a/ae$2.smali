.class Lcom/oplus/camera/ui/preview/a/ae$2;
.super Ljava/lang/Object;
.source "VideoRetentionTexturePreview.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/oplus/camera/ui/preview/a/ae;->e()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/oplus/camera/ui/preview/a/ae;


# direct methods
.method constructor <init>(Lcom/oplus/camera/ui/preview/a/ae;)V
    .locals 0

    .line 190
    iput-object p1, p0, Lcom/oplus/camera/ui/preview/a/ae$2;->a:Lcom/oplus/camera/ui/preview/a/ae;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 193
    iget-object v0, p0, Lcom/oplus/camera/ui/preview/a/ae$2;->a:Lcom/oplus/camera/ui/preview/a/ae;

    invoke-static {v0}, Lcom/oplus/camera/ui/preview/a/ae;->a(Lcom/oplus/camera/ui/preview/a/ae;)Ljava/util/concurrent/locks/Lock;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->lock()V

    .line 196
    :try_start_0
    iget-object v0, p0, Lcom/oplus/camera/ui/preview/a/ae$2;->a:Lcom/oplus/camera/ui/preview/a/ae;

    invoke-static {v0}, Lcom/oplus/camera/ui/preview/a/ae;->d(Lcom/oplus/camera/ui/preview/a/ae;)Lcom/oplus/ocs/camera/HumanVideoApiHelper;

    move-result-object v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 197
    iget-object v0, p0, Lcom/oplus/camera/ui/preview/a/ae$2;->a:Lcom/oplus/camera/ui/preview/a/ae;

    iget-object v0, v0, Lcom/oplus/camera/ui/preview/a/ae;->h:Lcom/oplus/camera/gl/GLRootView;

    invoke-virtual {v0}, Lcom/oplus/camera/gl/GLRootView;->g()V

    .line 198
    iget-object v0, p0, Lcom/oplus/camera/ui/preview/a/ae$2;->a:Lcom/oplus/camera/ui/preview/a/ae;

    invoke-static {v0}, Lcom/oplus/camera/ui/preview/a/ae;->d(Lcom/oplus/camera/ui/preview/a/ae;)Lcom/oplus/ocs/camera/HumanVideoApiHelper;

    move-result-object v0

    invoke-virtual {v0}, Lcom/oplus/ocs/camera/HumanVideoApiHelper;->release()I

    .line 199
    iget-object v0, p0, Lcom/oplus/camera/ui/preview/a/ae$2;->a:Lcom/oplus/camera/ui/preview/a/ae;

    invoke-static {v0, v1}, Lcom/oplus/camera/ui/preview/a/ae;->a(Lcom/oplus/camera/ui/preview/a/ae;Lcom/oplus/ocs/camera/HumanVideoApiHelper;)Lcom/oplus/ocs/camera/HumanVideoApiHelper;

    .line 202
    :cond_0
    iget-object v0, p0, Lcom/oplus/camera/ui/preview/a/ae$2;->a:Lcom/oplus/camera/ui/preview/a/ae;

    invoke-static {v0, v1}, Lcom/oplus/camera/ui/preview/a/ae;->a(Lcom/oplus/camera/ui/preview/a/ae;Lcom/oplus/camera/ui/preview/a/aa;)Lcom/oplus/camera/ui/preview/a/aa;

    .line 203
    iget-object v0, p0, Lcom/oplus/camera/ui/preview/a/ae$2;->a:Lcom/oplus/camera/ui/preview/a/ae;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/oplus/camera/ui/preview/a/ae;->a(Lcom/oplus/camera/ui/preview/a/ae;Z)Z

    const-string v0, "VideoRetentionTexturePreview"

    const-string v1, "destroyEngine X"

    .line 205
    invoke-static {v0, v1}, Lcom/oplus/camera/e;->a(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 207
    iget-object p0, p0, Lcom/oplus/camera/ui/preview/a/ae$2;->a:Lcom/oplus/camera/ui/preview/a/ae;

    invoke-static {p0}, Lcom/oplus/camera/ui/preview/a/ae;->a(Lcom/oplus/camera/ui/preview/a/ae;)Ljava/util/concurrent/locks/Lock;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/concurrent/locks/Lock;->unlock()V

    return-void

    :catchall_0
    move-exception v0

    iget-object p0, p0, Lcom/oplus/camera/ui/preview/a/ae$2;->a:Lcom/oplus/camera/ui/preview/a/ae;

    invoke-static {p0}, Lcom/oplus/camera/ui/preview/a/ae;->a(Lcom/oplus/camera/ui/preview/a/ae;)Ljava/util/concurrent/locks/Lock;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/concurrent/locks/Lock;->unlock()V

    .line 208
    throw v0
.end method
