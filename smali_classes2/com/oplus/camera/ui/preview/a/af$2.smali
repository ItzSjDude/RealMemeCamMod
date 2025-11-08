.class Lcom/oplus/camera/ui/preview/a/af$2;
.super Ljava/lang/Object;
.source "VideoRetentionV2TexturePreview.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/oplus/camera/ui/preview/a/af;->e()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/oplus/camera/ui/preview/a/af;


# direct methods
.method constructor <init>(Lcom/oplus/camera/ui/preview/a/af;)V
    .locals 0

    .line 174
    iput-object p1, p0, Lcom/oplus/camera/ui/preview/a/af$2;->a:Lcom/oplus/camera/ui/preview/a/af;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .line 177
    iget-object v0, p0, Lcom/oplus/camera/ui/preview/a/af$2;->a:Lcom/oplus/camera/ui/preview/a/af;

    invoke-static {v0}, Lcom/oplus/camera/ui/preview/a/af;->a(Lcom/oplus/camera/ui/preview/a/af;)Ljava/util/concurrent/locks/Lock;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->lock()V

    .line 180
    :try_start_0
    iget-object v0, p0, Lcom/oplus/camera/ui/preview/a/af$2;->a:Lcom/oplus/camera/ui/preview/a/af;

    invoke-static {v0}, Lcom/oplus/camera/ui/preview/a/af;->d(Lcom/oplus/camera/ui/preview/a/af;)Lcom/oplus/ocs/camera/HumanEffectRetainApiV2Helper;

    move-result-object v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/4 v1, 0x0

    const-string v2, "VideoRetentionV2TexturePreview"

    if-eqz v0, :cond_0

    :try_start_1
    const-string v0, "destroyEngine, mHumanEffectApi release"

    .line 181
    invoke-static {v2, v0}, Lcom/oplus/camera/e;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 183
    iget-object v0, p0, Lcom/oplus/camera/ui/preview/a/af$2;->a:Lcom/oplus/camera/ui/preview/a/af;

    iget-object v0, v0, Lcom/oplus/camera/ui/preview/a/af;->h:Lcom/oplus/camera/gl/GLRootView;

    invoke-virtual {v0}, Lcom/oplus/camera/gl/GLRootView;->g()V

    .line 184
    iget-object v0, p0, Lcom/oplus/camera/ui/preview/a/af$2;->a:Lcom/oplus/camera/ui/preview/a/af;

    invoke-static {v0}, Lcom/oplus/camera/ui/preview/a/af;->d(Lcom/oplus/camera/ui/preview/a/af;)Lcom/oplus/ocs/camera/HumanEffectRetainApiV2Helper;

    move-result-object v0

    invoke-virtual {v0}, Lcom/oplus/ocs/camera/HumanEffectRetainApiV2Helper;->release()I

    .line 185
    iget-object v0, p0, Lcom/oplus/camera/ui/preview/a/af$2;->a:Lcom/oplus/camera/ui/preview/a/af;

    invoke-static {v0, v1}, Lcom/oplus/camera/ui/preview/a/af;->a(Lcom/oplus/camera/ui/preview/a/af;Lcom/oplus/ocs/camera/HumanEffectRetainApiV2Helper;)Lcom/oplus/ocs/camera/HumanEffectRetainApiV2Helper;

    .line 188
    :cond_0
    iget-object v0, p0, Lcom/oplus/camera/ui/preview/a/af$2;->a:Lcom/oplus/camera/ui/preview/a/af;

    invoke-static {v0, v1}, Lcom/oplus/camera/ui/preview/a/af;->a(Lcom/oplus/camera/ui/preview/a/af;Lcom/oplus/camera/ui/preview/a/aa;)Lcom/oplus/camera/ui/preview/a/aa;

    .line 189
    iget-object v0, p0, Lcom/oplus/camera/ui/preview/a/af$2;->a:Lcom/oplus/camera/ui/preview/a/af;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/oplus/camera/ui/preview/a/af;->a(Lcom/oplus/camera/ui/preview/a/af;Z)Z

    const-string v0, "destroyEngine X"

    .line 191
    invoke-static {v2, v0}, Lcom/oplus/camera/e;->a(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 193
    iget-object p0, p0, Lcom/oplus/camera/ui/preview/a/af$2;->a:Lcom/oplus/camera/ui/preview/a/af;

    invoke-static {p0}, Lcom/oplus/camera/ui/preview/a/af;->a(Lcom/oplus/camera/ui/preview/a/af;)Ljava/util/concurrent/locks/Lock;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/concurrent/locks/Lock;->unlock()V

    return-void

    :catchall_0
    move-exception v0

    iget-object p0, p0, Lcom/oplus/camera/ui/preview/a/af$2;->a:Lcom/oplus/camera/ui/preview/a/af;

    invoke-static {p0}, Lcom/oplus/camera/ui/preview/a/af;->a(Lcom/oplus/camera/ui/preview/a/af;)Ljava/util/concurrent/locks/Lock;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/concurrent/locks/Lock;->unlock()V

    .line 194
    throw v0
.end method
