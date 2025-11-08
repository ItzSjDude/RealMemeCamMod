.class Lcom/oplus/camera/ui/preview/a/ad$4;
.super Ljava/lang/Object;
.source "VideoFusionTexturePreview.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/oplus/camera/ui/preview/a/ad;->a(F)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:F

.field final synthetic b:Lcom/oplus/camera/ui/preview/a/ad;


# direct methods
.method constructor <init>(Lcom/oplus/camera/ui/preview/a/ad;F)V
    .locals 0

    .line 738
    iput-object p1, p0, Lcom/oplus/camera/ui/preview/a/ad$4;->b:Lcom/oplus/camera/ui/preview/a/ad;

    iput p2, p0, Lcom/oplus/camera/ui/preview/a/ad$4;->a:F

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .line 741
    invoke-static {}, Lcom/oplus/camera/ui/preview/a/ad;->r()Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    .line 742
    :try_start_0
    iget-object v1, p0, Lcom/oplus/camera/ui/preview/a/ad$4;->b:Lcom/oplus/camera/ui/preview/a/ad;

    invoke-static {v1}, Lcom/oplus/camera/ui/preview/a/ad;->d(Lcom/oplus/camera/ui/preview/a/ad;)Z

    move-result v1

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/oplus/camera/ui/preview/a/ad$4;->b:Lcom/oplus/camera/ui/preview/a/ad;

    invoke-static {v1}, Lcom/oplus/camera/ui/preview/a/ad;->b(Lcom/oplus/camera/ui/preview/a/ad;)Lcom/oplus/ocs/camera/HumanEffectFusionApiHelper;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 743
    iget-object v1, p0, Lcom/oplus/camera/ui/preview/a/ad$4;->b:Lcom/oplus/camera/ui/preview/a/ad;

    invoke-static {v1}, Lcom/oplus/camera/ui/preview/a/ad;->e(Lcom/oplus/camera/ui/preview/a/ad;)Lcom/oplus/ocs/camera/HumanEffectFusionApiHelper$HumanVideoFusionParams;

    move-result-object v1

    iget v2, p0, Lcom/oplus/camera/ui/preview/a/ad$4;->a:F

    invoke-virtual {v1, v2}, Lcom/oplus/ocs/camera/HumanEffectFusionApiHelper$HumanVideoFusionParams;->UpdateBlurIntensity(F)Lcom/oplus/ocs/camera/HumanEffectFusionApiHelper$HumanVideoFusionParams;

    .line 744
    iget-object v1, p0, Lcom/oplus/camera/ui/preview/a/ad$4;->b:Lcom/oplus/camera/ui/preview/a/ad;

    invoke-static {v1}, Lcom/oplus/camera/ui/preview/a/ad;->b(Lcom/oplus/camera/ui/preview/a/ad;)Lcom/oplus/ocs/camera/HumanEffectFusionApiHelper;

    move-result-object v1

    iget-object v2, p0, Lcom/oplus/camera/ui/preview/a/ad$4;->b:Lcom/oplus/camera/ui/preview/a/ad;

    invoke-static {v2}, Lcom/oplus/camera/ui/preview/a/ad;->e(Lcom/oplus/camera/ui/preview/a/ad;)Lcom/oplus/ocs/camera/HumanEffectFusionApiHelper$HumanVideoFusionParams;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/oplus/ocs/camera/HumanEffectFusionApiHelper;->setParams(Lcom/oplus/ocs/camera/HumanEffectFusionApiHelper$HumanVideoFusionParams;)I

    const-string v1, "VideoFusionTexturePreview"

    .line 746
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "onVideoBlurLevelChange, blurLevel: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p0, p0, Lcom/oplus/camera/ui/preview/a/ad$4;->a:F

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v1, p0}, Lcom/oplus/camera/e;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 748
    :cond_0
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method
