.class Lcom/oplus/camera/ui/preview/a/ad$2;
.super Ljava/lang/Object;
.source "VideoFusionTexturePreview.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/oplus/camera/ui/preview/a/ad;->e()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/oplus/camera/ui/preview/a/ad;


# direct methods
.method constructor <init>(Lcom/oplus/camera/ui/preview/a/ad;)V
    .locals 0

    .line 473
    iput-object p1, p0, Lcom/oplus/camera/ui/preview/a/ad$2;->a:Lcom/oplus/camera/ui/preview/a/ad;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .line 476
    invoke-static {}, Lcom/oplus/camera/ui/preview/a/ad;->r()Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    .line 477
    :try_start_0
    iget-object v1, p0, Lcom/oplus/camera/ui/preview/a/ad$2;->a:Lcom/oplus/camera/ui/preview/a/ad;

    invoke-static {v1}, Lcom/oplus/camera/ui/preview/a/ad;->b(Lcom/oplus/camera/ui/preview/a/ad;)Lcom/oplus/ocs/camera/HumanEffectFusionApiHelper;

    move-result-object v1

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    const-string v1, "VideoFusionTexturePreview"

    const-string v3, "destroyEngine, mHumanEffectFusionApi release"

    .line 478
    invoke-static {v1, v3}, Lcom/oplus/camera/e;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 480
    iget-object v1, p0, Lcom/oplus/camera/ui/preview/a/ad$2;->a:Lcom/oplus/camera/ui/preview/a/ad;

    iget-object v1, v1, Lcom/oplus/camera/ui/preview/a/ad;->h:Lcom/oplus/camera/gl/GLRootView;

    invoke-virtual {v1}, Lcom/oplus/camera/gl/GLRootView;->g()V

    .line 481
    iget-object v1, p0, Lcom/oplus/camera/ui/preview/a/ad$2;->a:Lcom/oplus/camera/ui/preview/a/ad;

    invoke-static {v1}, Lcom/oplus/camera/ui/preview/a/ad;->b(Lcom/oplus/camera/ui/preview/a/ad;)Lcom/oplus/ocs/camera/HumanEffectFusionApiHelper;

    move-result-object v1

    invoke-virtual {v1}, Lcom/oplus/ocs/camera/HumanEffectFusionApiHelper;->release()I

    .line 482
    iget-object v1, p0, Lcom/oplus/camera/ui/preview/a/ad$2;->a:Lcom/oplus/camera/ui/preview/a/ad;

    invoke-static {v1, v2}, Lcom/oplus/camera/ui/preview/a/ad;->a(Lcom/oplus/camera/ui/preview/a/ad;Lcom/oplus/ocs/camera/HumanEffectFusionApiHelper;)Lcom/oplus/ocs/camera/HumanEffectFusionApiHelper;

    .line 483
    iget-object v1, p0, Lcom/oplus/camera/ui/preview/a/ad$2;->a:Lcom/oplus/camera/ui/preview/a/ad;

    invoke-static {v1, v2}, Lcom/oplus/camera/ui/preview/a/ad;->a(Lcom/oplus/camera/ui/preview/a/ad;Lcom/oplus/ocs/camera/HumanEffectFusionApiHelper$HumanVideoFusionParams;)Lcom/oplus/ocs/camera/HumanEffectFusionApiHelper$HumanVideoFusionParams;

    .line 486
    :cond_0
    iget-object p0, p0, Lcom/oplus/camera/ui/preview/a/ad$2;->a:Lcom/oplus/camera/ui/preview/a/ad;

    invoke-static {p0, v2}, Lcom/oplus/camera/ui/preview/a/ad;->a(Lcom/oplus/camera/ui/preview/a/ad;Lcom/oplus/camera/ui/preview/a/aa;)Lcom/oplus/camera/ui/preview/a/aa;

    const-string p0, "VideoFusionTexturePreview"

    const-string v1, "destroyEngine X"

    .line 488
    invoke-static {p0, v1}, Lcom/oplus/camera/e;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 489
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method
