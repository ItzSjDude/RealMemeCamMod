.class Lcom/oplus/camera/ui/preview/a/ab$2;
.super Ljava/lang/Object;
.source "TiltShiftTexturePreview.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/oplus/camera/ui/preview/a/ab;->e()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/oplus/camera/ui/preview/a/ab;


# direct methods
.method constructor <init>(Lcom/oplus/camera/ui/preview/a/ab;)V
    .locals 0

    .line 188
    iput-object p1, p0, Lcom/oplus/camera/ui/preview/a/ab$2;->a:Lcom/oplus/camera/ui/preview/a/ab;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .line 191
    iget-object v0, p0, Lcom/oplus/camera/ui/preview/a/ab$2;->a:Lcom/oplus/camera/ui/preview/a/ab;

    invoke-static {v0}, Lcom/oplus/camera/ui/preview/a/ab;->a(Lcom/oplus/camera/ui/preview/a/ab;)Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    .line 192
    :try_start_0
    iget-object v1, p0, Lcom/oplus/camera/ui/preview/a/ab$2;->a:Lcom/oplus/camera/ui/preview/a/ab;

    invoke-static {v1}, Lcom/oplus/camera/ui/preview/a/ab;->c(Lcom/oplus/camera/ui/preview/a/ab;)Lcom/oplus/camera/tiltshift/TiltShiftPreview;

    move-result-object v1

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    .line 193
    iget-object v1, p0, Lcom/oplus/camera/ui/preview/a/ab$2;->a:Lcom/oplus/camera/ui/preview/a/ab;

    iget-object v1, v1, Lcom/oplus/camera/ui/preview/a/ab;->h:Lcom/oplus/camera/gl/GLRootView;

    invoke-virtual {v1}, Lcom/oplus/camera/gl/GLRootView;->g()V

    .line 194
    iget-object v1, p0, Lcom/oplus/camera/ui/preview/a/ab$2;->a:Lcom/oplus/camera/ui/preview/a/ab;

    invoke-static {v1}, Lcom/oplus/camera/ui/preview/a/ab;->c(Lcom/oplus/camera/ui/preview/a/ab;)Lcom/oplus/camera/tiltshift/TiltShiftPreview;

    move-result-object v1

    invoke-virtual {v1}, Lcom/oplus/camera/tiltshift/TiltShiftPreview;->destory()I

    .line 195
    iget-object v1, p0, Lcom/oplus/camera/ui/preview/a/ab$2;->a:Lcom/oplus/camera/ui/preview/a/ab;

    invoke-static {v1, v2}, Lcom/oplus/camera/ui/preview/a/ab;->a(Lcom/oplus/camera/ui/preview/a/ab;Lcom/oplus/camera/tiltshift/TiltShiftPreview;)Lcom/oplus/camera/tiltshift/TiltShiftPreview;

    .line 198
    :cond_0
    iget-object v1, p0, Lcom/oplus/camera/ui/preview/a/ab$2;->a:Lcom/oplus/camera/ui/preview/a/ab;

    invoke-static {v1, v2}, Lcom/oplus/camera/ui/preview/a/ab;->a(Lcom/oplus/camera/ui/preview/a/ab;Lcom/oplus/camera/ui/preview/a/aa;)Lcom/oplus/camera/ui/preview/a/aa;

    .line 199
    iget-object p0, p0, Lcom/oplus/camera/ui/preview/a/ab$2;->a:Lcom/oplus/camera/ui/preview/a/ab;

    const/4 v1, 0x0

    invoke-static {p0, v1}, Lcom/oplus/camera/ui/preview/a/ab;->a(Lcom/oplus/camera/ui/preview/a/ab;Z)Z

    const-string p0, "TiltShiftTexturePreview"

    const-string v1, "destroyEngine X"

    .line 201
    invoke-static {p0, v1}, Lcom/oplus/camera/e;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 202
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method
