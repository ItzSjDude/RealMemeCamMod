.class Lcom/oplus/camera/ui/preview/a/ad$1;
.super Ljava/lang/Object;
.source "VideoFusionTexturePreview.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/oplus/camera/ui/preview/a/ad;->a(Lcom/oplus/camera/ui/preview/a/aa;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/oplus/camera/ui/preview/a/aa;

.field final synthetic b:Lcom/oplus/camera/ui/preview/a/ad;


# direct methods
.method constructor <init>(Lcom/oplus/camera/ui/preview/a/ad;Lcom/oplus/camera/ui/preview/a/aa;)V
    .locals 0

    .line 453
    iput-object p1, p0, Lcom/oplus/camera/ui/preview/a/ad$1;->b:Lcom/oplus/camera/ui/preview/a/ad;

    iput-object p2, p0, Lcom/oplus/camera/ui/preview/a/ad$1;->a:Lcom/oplus/camera/ui/preview/a/aa;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .line 456
    invoke-static {}, Lcom/oplus/camera/ui/preview/a/ad;->r()Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    .line 457
    :try_start_0
    iget-object v1, p0, Lcom/oplus/camera/ui/preview/a/ad$1;->b:Lcom/oplus/camera/ui/preview/a/ad;

    iget-object v2, p0, Lcom/oplus/camera/ui/preview/a/ad$1;->a:Lcom/oplus/camera/ui/preview/a/aa;

    invoke-static {v1, v2}, Lcom/oplus/camera/ui/preview/a/ad;->a(Lcom/oplus/camera/ui/preview/a/ad;Lcom/oplus/camera/ui/preview/a/aa;)Lcom/oplus/camera/ui/preview/a/aa;

    .line 459
    iget-object v1, p0, Lcom/oplus/camera/ui/preview/a/ad$1;->b:Lcom/oplus/camera/ui/preview/a/ad;

    invoke-static {v1}, Lcom/oplus/camera/ui/preview/a/ad;->a(Lcom/oplus/camera/ui/preview/a/ad;)Lcom/oplus/camera/ui/preview/a/aa;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 460
    iget-object v1, p0, Lcom/oplus/camera/ui/preview/a/ad$1;->b:Lcom/oplus/camera/ui/preview/a/ad;

    invoke-static {v1}, Lcom/oplus/camera/ui/preview/a/ad;->a(Lcom/oplus/camera/ui/preview/a/ad;)Lcom/oplus/camera/ui/preview/a/aa;

    move-result-object v1

    iget-object p0, p0, Lcom/oplus/camera/ui/preview/a/ad$1;->b:Lcom/oplus/camera/ui/preview/a/ad;

    invoke-virtual {v1, p0}, Lcom/oplus/camera/ui/preview/a/aa;->a(Lcom/oplus/camera/ui/preview/a/aa$e;)V

    :cond_0
    const-string p0, "VideoFusionTexturePreview"

    const-string v1, "createEngine X"

    .line 463
    invoke-static {p0, v1}, Lcom/oplus/camera/e;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 464
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method
