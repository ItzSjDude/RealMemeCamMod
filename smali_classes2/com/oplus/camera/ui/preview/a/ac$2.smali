.class Lcom/oplus/camera/ui/preview/a/ac$2;
.super Ljava/lang/Object;
.source "VideoBlurTexturePreview.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/oplus/camera/ui/preview/a/ac;->e()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/oplus/camera/ui/preview/a/ac;


# direct methods
.method constructor <init>(Lcom/oplus/camera/ui/preview/a/ac;)V
    .locals 0

    .line 187
    iput-object p1, p0, Lcom/oplus/camera/ui/preview/a/ac$2;->a:Lcom/oplus/camera/ui/preview/a/ac;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .line 190
    iget-object v0, p0, Lcom/oplus/camera/ui/preview/a/ac$2;->a:Lcom/oplus/camera/ui/preview/a/ac;

    invoke-static {v0}, Lcom/oplus/camera/ui/preview/a/ac;->a(Lcom/oplus/camera/ui/preview/a/ac;)Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    .line 191
    :try_start_0
    iget-object v1, p0, Lcom/oplus/camera/ui/preview/a/ac$2;->a:Lcom/oplus/camera/ui/preview/a/ac;

    invoke-static {v1}, Lcom/oplus/camera/ui/preview/a/ac;->b(Lcom/oplus/camera/ui/preview/a/ac;)Lcom/oplus/ocs/camera/HumanEffectBokehHelper;

    move-result-object v1

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    .line 192
    iget-object v1, p0, Lcom/oplus/camera/ui/preview/a/ac$2;->a:Lcom/oplus/camera/ui/preview/a/ac;

    iget-object v1, v1, Lcom/oplus/camera/ui/preview/a/ac;->h:Lcom/oplus/camera/gl/GLRootView;

    invoke-virtual {v1}, Lcom/oplus/camera/gl/GLRootView;->g()V

    .line 193
    iget-object v1, p0, Lcom/oplus/camera/ui/preview/a/ac$2;->a:Lcom/oplus/camera/ui/preview/a/ac;

    invoke-static {v1}, Lcom/oplus/camera/ui/preview/a/ac;->b(Lcom/oplus/camera/ui/preview/a/ac;)Lcom/oplus/ocs/camera/HumanEffectBokehHelper;

    move-result-object v1

    invoke-virtual {v1}, Lcom/oplus/ocs/camera/HumanEffectBokehHelper;->release()V

    .line 194
    iget-object v1, p0, Lcom/oplus/camera/ui/preview/a/ac$2;->a:Lcom/oplus/camera/ui/preview/a/ac;

    invoke-static {v1, v2}, Lcom/oplus/camera/ui/preview/a/ac;->a(Lcom/oplus/camera/ui/preview/a/ac;Lcom/oplus/ocs/camera/HumanEffectBokehHelper;)Lcom/oplus/ocs/camera/HumanEffectBokehHelper;

    .line 197
    :cond_0
    iget-object p0, p0, Lcom/oplus/camera/ui/preview/a/ac$2;->a:Lcom/oplus/camera/ui/preview/a/ac;

    invoke-static {p0, v2}, Lcom/oplus/camera/ui/preview/a/ac;->a(Lcom/oplus/camera/ui/preview/a/ac;Lcom/oplus/camera/ui/preview/a/aa;)Lcom/oplus/camera/ui/preview/a/aa;

    const-string p0, "VideoBlurTexturePreview"

    const-string v1, "destroyEngine X"

    .line 199
    invoke-static {p0, v1}, Lcom/oplus/camera/e;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 200
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method
