.class Lcom/oplus/camera/ui/preview/a/ad$3;
.super Ljava/lang/Object;
.source "VideoFusionTexturePreview.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/oplus/camera/ui/preview/a/ad;->B()V
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

    .line 584
    iput-object p1, p0, Lcom/oplus/camera/ui/preview/a/ad$3;->a:Lcom/oplus/camera/ui/preview/a/ad;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 587
    invoke-static {}, Lcom/oplus/camera/ui/preview/a/ad;->r()Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    .line 588
    :try_start_0
    iget-object v1, p0, Lcom/oplus/camera/ui/preview/a/ad$3;->a:Lcom/oplus/camera/ui/preview/a/ad;

    invoke-static {v1}, Lcom/oplus/camera/ui/preview/a/ad;->a(Lcom/oplus/camera/ui/preview/a/ad;)Lcom/oplus/camera/ui/preview/a/aa;

    move-result-object v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/oplus/camera/ui/preview/a/ad$3;->a:Lcom/oplus/camera/ui/preview/a/ad;

    invoke-static {v1}, Lcom/oplus/camera/ui/preview/a/ad;->b(Lcom/oplus/camera/ui/preview/a/ad;)Lcom/oplus/ocs/camera/HumanEffectFusionApiHelper;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 589
    iget-object p0, p0, Lcom/oplus/camera/ui/preview/a/ad$3;->a:Lcom/oplus/camera/ui/preview/a/ad;

    invoke-static {p0}, Lcom/oplus/camera/ui/preview/a/ad;->c(Lcom/oplus/camera/ui/preview/a/ad;)V

    .line 591
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
