.class Lcom/oplus/camera/capmode/w$7;
.super Ljava/lang/Object;
.source "VideoMode.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/oplus/camera/capmode/w;->stopVideoRecordThread()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/oplus/camera/capmode/w;


# direct methods
.method constructor <init>(Lcom/oplus/camera/capmode/w;)V
    .locals 0

    .line 1798
    iput-object p1, p0, Lcom/oplus/camera/capmode/w$7;->a:Lcom/oplus/camera/capmode/w;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 6

    .line 1801
    iget-object v0, p0, Lcom/oplus/camera/capmode/w$7;->a:Lcom/oplus/camera/capmode/w;

    iget-boolean v0, v0, Lcom/oplus/camera/capmode/w;->mbDestroyed:Z

    if-nez v0, :cond_3

    .line 1802
    iget-object v0, p0, Lcom/oplus/camera/capmode/w$7;->a:Lcom/oplus/camera/capmode/w;

    invoke-virtual {v0}, Lcom/oplus/camera/capmode/w;->isVideoHdrOpen()Z

    move-result v0

    const v1, 0x7f0604ff

    const v2, 0x7f0805e9

    const/4 v3, 0x0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/oplus/camera/capmode/w$7;->a:Lcom/oplus/camera/capmode/w;

    invoke-virtual {v0}, Lcom/oplus/camera/capmode/w;->isCommonVideoMode()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1803
    iget-object v0, p0, Lcom/oplus/camera/capmode/w$7;->a:Lcom/oplus/camera/capmode/w;

    iget-object v0, v0, Lcom/oplus/camera/capmode/w;->mCameraUIInterface:Lcom/oplus/camera/ui/CameraUIInterface;

    const v4, 0x7f1004c9

    new-array v5, v3, [Ljava/lang/Object;

    invoke-interface {v0, v4, v2, v1, v5}, Lcom/oplus/camera/ui/CameraUIInterface;->b(III[Ljava/lang/Object;)V

    .line 1808
    :cond_0
    iget-object v0, p0, Lcom/oplus/camera/capmode/w$7;->a:Lcom/oplus/camera/capmode/w;

    invoke-virtual {v0}, Lcom/oplus/camera/capmode/w;->isUltraNightVideoOpen()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/oplus/camera/capmode/w$7;->a:Lcom/oplus/camera/capmode/w;

    invoke-virtual {v0}, Lcom/oplus/camera/capmode/w;->isCommonVideoMode()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1809
    iget-object v0, p0, Lcom/oplus/camera/capmode/w$7;->a:Lcom/oplus/camera/capmode/w;

    iget-object v0, v0, Lcom/oplus/camera/capmode/w;->mCameraUIInterface:Lcom/oplus/camera/ui/CameraUIInterface;

    const v4, 0x7f100489

    new-array v5, v3, [Ljava/lang/Object;

    invoke-interface {v0, v4, v2, v1, v5}, Lcom/oplus/camera/ui/CameraUIInterface;->b(III[Ljava/lang/Object;)V

    .line 1814
    :cond_1
    iget-object v0, p0, Lcom/oplus/camera/capmode/w$7;->a:Lcom/oplus/camera/capmode/w;

    iget-object v0, v0, Lcom/oplus/camera/capmode/w;->mPreviewEffectProcess:Lcom/oplus/camera/ui/preview/a/t;

    if-eqz v0, :cond_2

    .line 1815
    iget-object v0, p0, Lcom/oplus/camera/capmode/w$7;->a:Lcom/oplus/camera/capmode/w;

    iget-object v0, v0, Lcom/oplus/camera/capmode/w;->mPreviewEffectProcess:Lcom/oplus/camera/ui/preview/a/t;

    invoke-interface {v0, v3}, Lcom/oplus/camera/ui/preview/a/t;->f(Z)V

    .line 1818
    :cond_2
    iget-object v0, p0, Lcom/oplus/camera/capmode/w$7;->a:Lcom/oplus/camera/capmode/w;

    iget-object v0, v0, Lcom/oplus/camera/capmode/w;->mCameraInterface:Lcom/oplus/camera/capmode/a;

    invoke-interface {v0}, Lcom/oplus/camera/capmode/a;->O()V

    .line 1819
    iget-object v0, p0, Lcom/oplus/camera/capmode/w$7;->a:Lcom/oplus/camera/capmode/w;

    invoke-virtual {v0}, Lcom/oplus/camera/capmode/w;->stopShutterButtonProgress()V

    .line 1820
    iget-object p0, p0, Lcom/oplus/camera/capmode/w$7;->a:Lcom/oplus/camera/capmode/w;

    invoke-static {p0}, Lcom/oplus/camera/capmode/w;->access$900(Lcom/oplus/camera/capmode/w;)V

    :cond_3
    return-void
.end method
