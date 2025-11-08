.class Lcom/oplus/camera/capmode/p$2;
.super Ljava/lang/Object;
.source "MicroscopeVideoMode.java"

# interfaces
.implements Lcom/oplus/camera/ui/MicroscopeHintView$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/oplus/camera/capmode/p;->onInitCameraMode()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/oplus/camera/capmode/p;


# direct methods
.method constructor <init>(Lcom/oplus/camera/capmode/p;)V
    .locals 0

    .line 209
    iput-object p1, p0, Lcom/oplus/camera/capmode/p$2;->a:Lcom/oplus/camera/capmode/p;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a()V
    .locals 2

    .line 212
    iget-object v0, p0, Lcom/oplus/camera/capmode/p$2;->a:Lcom/oplus/camera/capmode/p;

    iget-boolean v0, v0, Lcom/oplus/camera/capmode/p;->mbCapModeInit:Z

    if-eqz v0, :cond_0

    .line 213
    iget-object v0, p0, Lcom/oplus/camera/capmode/p$2;->a:Lcom/oplus/camera/capmode/p;

    iget-object v0, v0, Lcom/oplus/camera/capmode/p;->mCameraUIInterface:Lcom/oplus/camera/ui/CameraUIInterface;

    iget-object p0, p0, Lcom/oplus/camera/capmode/p$2;->a:Lcom/oplus/camera/capmode/p;

    invoke-static {p0}, Lcom/oplus/camera/capmode/p;->d(Lcom/oplus/camera/capmode/p;)Landroid/view/View$OnClickListener;

    move-result-object p0

    const/4 v1, 0x0

    invoke-interface {v0, p0, v1, v1}, Lcom/oplus/camera/ui/CameraUIInterface;->a(Landroid/view/View$OnClickListener;ZZ)V

    :cond_0
    return-void
.end method

.method public b()V
    .locals 4

    .line 219
    iget-object v0, p0, Lcom/oplus/camera/capmode/p$2;->a:Lcom/oplus/camera/capmode/p;

    iget-boolean v0, v0, Lcom/oplus/camera/capmode/p;->mbCapModeInit:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/oplus/camera/capmode/p$2;->a:Lcom/oplus/camera/capmode/p;

    iget-object v0, v0, Lcom/oplus/camera/capmode/p;->mCameraUIInterface:Lcom/oplus/camera/ui/CameraUIInterface;

    invoke-interface {v0}, Lcom/oplus/camera/ui/CameraUIInterface;->R()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/oplus/camera/capmode/p$2;->a:Lcom/oplus/camera/capmode/p;

    invoke-virtual {v0}, Lcom/oplus/camera/capmode/p;->isVideoRecording()Z

    move-result v0

    if-nez v0, :cond_0

    .line 220
    iget-object v0, p0, Lcom/oplus/camera/capmode/p$2;->a:Lcom/oplus/camera/capmode/p;

    iget-object v0, v0, Lcom/oplus/camera/capmode/p;->mCameraUIInterface:Lcom/oplus/camera/ui/CameraUIInterface;

    iget-object v1, p0, Lcom/oplus/camera/capmode/p$2;->a:Lcom/oplus/camera/capmode/p;

    invoke-static {v1}, Lcom/oplus/camera/capmode/p;->d(Lcom/oplus/camera/capmode/p;)Landroid/view/View$OnClickListener;

    move-result-object v1

    const/4 v2, 0x1

    const/4 v3, 0x0

    invoke-interface {v0, v1, v2, v3}, Lcom/oplus/camera/ui/CameraUIInterface;->a(Landroid/view/View$OnClickListener;ZZ)V

    .line 223
    :cond_0
    iget-object p0, p0, Lcom/oplus/camera/capmode/p$2;->a:Lcom/oplus/camera/capmode/p;

    iget-object p0, p0, Lcom/oplus/camera/capmode/p;->mCameraUIInterface:Lcom/oplus/camera/ui/CameraUIInterface;

    invoke-interface {p0}, Lcom/oplus/camera/ui/CameraUIInterface;->al()V

    return-void
.end method

.method public c()V
    .locals 4

    .line 228
    iget-object v0, p0, Lcom/oplus/camera/capmode/p$2;->a:Lcom/oplus/camera/capmode/p;

    iget-boolean v0, v0, Lcom/oplus/camera/capmode/p;->mbCapModeInit:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/oplus/camera/capmode/p$2;->a:Lcom/oplus/camera/capmode/p;

    iget-object v0, v0, Lcom/oplus/camera/capmode/p;->mCameraUIInterface:Lcom/oplus/camera/ui/CameraUIInterface;

    invoke-interface {v0}, Lcom/oplus/camera/ui/CameraUIInterface;->R()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/oplus/camera/capmode/p$2;->a:Lcom/oplus/camera/capmode/p;

    invoke-virtual {v0}, Lcom/oplus/camera/capmode/p;->isVideoRecording()Z

    move-result v0

    if-nez v0, :cond_0

    .line 229
    iget-object v0, p0, Lcom/oplus/camera/capmode/p$2;->a:Lcom/oplus/camera/capmode/p;

    iget-object v0, v0, Lcom/oplus/camera/capmode/p;->mCameraUIInterface:Lcom/oplus/camera/ui/CameraUIInterface;

    iget-object v1, p0, Lcom/oplus/camera/capmode/p$2;->a:Lcom/oplus/camera/capmode/p;

    invoke-static {v1}, Lcom/oplus/camera/capmode/p;->d(Lcom/oplus/camera/capmode/p;)Landroid/view/View$OnClickListener;

    move-result-object v1

    const/4 v2, 0x1

    const/4 v3, 0x0

    invoke-interface {v0, v1, v2, v3}, Lcom/oplus/camera/ui/CameraUIInterface;->a(Landroid/view/View$OnClickListener;ZZ)V

    .line 232
    :cond_0
    iget-object p0, p0, Lcom/oplus/camera/capmode/p$2;->a:Lcom/oplus/camera/capmode/p;

    iget-object p0, p0, Lcom/oplus/camera/capmode/p;->mCameraUIInterface:Lcom/oplus/camera/ui/CameraUIInterface;

    invoke-interface {p0}, Lcom/oplus/camera/ui/CameraUIInterface;->al()V

    return-void
.end method
