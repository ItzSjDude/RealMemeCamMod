.class Lcom/oplus/camera/capmode/o$2;
.super Ljava/lang/Object;
.source "MicroscopeCaptureMode.java"

# interfaces
.implements Lcom/oplus/camera/ui/MicroscopeHintView$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/oplus/camera/capmode/o;->onInitCameraMode()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/oplus/camera/capmode/o;


# direct methods
.method constructor <init>(Lcom/oplus/camera/capmode/o;)V
    .locals 0

    .line 190
    iput-object p1, p0, Lcom/oplus/camera/capmode/o$2;->a:Lcom/oplus/camera/capmode/o;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a()V
    .locals 3

    .line 193
    iget-object v0, p0, Lcom/oplus/camera/capmode/o$2;->a:Lcom/oplus/camera/capmode/o;

    iget-boolean v0, v0, Lcom/oplus/camera/capmode/o;->mbCapModeInit:Z

    if-eqz v0, :cond_0

    .line 194
    iget-object v0, p0, Lcom/oplus/camera/capmode/o$2;->a:Lcom/oplus/camera/capmode/o;

    iget-object v0, v0, Lcom/oplus/camera/capmode/o;->mCameraUIInterface:Lcom/oplus/camera/ui/CameraUIInterface;

    iget-object p0, p0, Lcom/oplus/camera/capmode/o$2;->a:Lcom/oplus/camera/capmode/o;

    invoke-static {p0}, Lcom/oplus/camera/capmode/o;->d(Lcom/oplus/camera/capmode/o;)Landroid/view/View$OnClickListener;

    move-result-object p0

    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-interface {v0, p0, v1, v2}, Lcom/oplus/camera/ui/CameraUIInterface;->a(Landroid/view/View$OnClickListener;ZZ)V

    :cond_0
    return-void
.end method

.method public b()V
    .locals 3

    .line 200
    iget-object v0, p0, Lcom/oplus/camera/capmode/o$2;->a:Lcom/oplus/camera/capmode/o;

    iget-boolean v0, v0, Lcom/oplus/camera/capmode/o;->mbCapModeInit:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/oplus/camera/capmode/o$2;->a:Lcom/oplus/camera/capmode/o;

    iget-object v0, v0, Lcom/oplus/camera/capmode/o;->mCameraUIInterface:Lcom/oplus/camera/ui/CameraUIInterface;

    invoke-interface {v0}, Lcom/oplus/camera/ui/CameraUIInterface;->R()Z

    move-result v0

    if-nez v0, :cond_0

    .line 201
    iget-object v0, p0, Lcom/oplus/camera/capmode/o$2;->a:Lcom/oplus/camera/capmode/o;

    iget-object v0, v0, Lcom/oplus/camera/capmode/o;->mCameraUIInterface:Lcom/oplus/camera/ui/CameraUIInterface;

    iget-object v1, p0, Lcom/oplus/camera/capmode/o$2;->a:Lcom/oplus/camera/capmode/o;

    invoke-static {v1}, Lcom/oplus/camera/capmode/o;->d(Lcom/oplus/camera/capmode/o;)Landroid/view/View$OnClickListener;

    move-result-object v1

    const/4 v2, 0x1

    invoke-interface {v0, v1, v2, v2}, Lcom/oplus/camera/ui/CameraUIInterface;->a(Landroid/view/View$OnClickListener;ZZ)V

    .line 204
    :cond_0
    iget-object p0, p0, Lcom/oplus/camera/capmode/o$2;->a:Lcom/oplus/camera/capmode/o;

    iget-object p0, p0, Lcom/oplus/camera/capmode/o;->mCameraUIInterface:Lcom/oplus/camera/ui/CameraUIInterface;

    invoke-interface {p0}, Lcom/oplus/camera/ui/CameraUIInterface;->al()V

    return-void
.end method

.method public c()V
    .locals 3

    .line 209
    iget-object v0, p0, Lcom/oplus/camera/capmode/o$2;->a:Lcom/oplus/camera/capmode/o;

    iget-boolean v0, v0, Lcom/oplus/camera/capmode/o;->mbCapModeInit:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/oplus/camera/capmode/o$2;->a:Lcom/oplus/camera/capmode/o;

    iget-object v0, v0, Lcom/oplus/camera/capmode/o;->mCameraUIInterface:Lcom/oplus/camera/ui/CameraUIInterface;

    invoke-interface {v0}, Lcom/oplus/camera/ui/CameraUIInterface;->R()Z

    move-result v0

    if-nez v0, :cond_0

    .line 210
    iget-object v0, p0, Lcom/oplus/camera/capmode/o$2;->a:Lcom/oplus/camera/capmode/o;

    iget-object v0, v0, Lcom/oplus/camera/capmode/o;->mCameraUIInterface:Lcom/oplus/camera/ui/CameraUIInterface;

    iget-object v1, p0, Lcom/oplus/camera/capmode/o$2;->a:Lcom/oplus/camera/capmode/o;

    invoke-static {v1}, Lcom/oplus/camera/capmode/o;->d(Lcom/oplus/camera/capmode/o;)Landroid/view/View$OnClickListener;

    move-result-object v1

    const/4 v2, 0x1

    invoke-interface {v0, v1, v2, v2}, Lcom/oplus/camera/ui/CameraUIInterface;->a(Landroid/view/View$OnClickListener;ZZ)V

    .line 213
    :cond_0
    iget-object p0, p0, Lcom/oplus/camera/capmode/o$2;->a:Lcom/oplus/camera/capmode/o;

    iget-object p0, p0, Lcom/oplus/camera/capmode/o;->mCameraUIInterface:Lcom/oplus/camera/ui/CameraUIInterface;

    invoke-interface {p0}, Lcom/oplus/camera/ui/CameraUIInterface;->al()V

    return-void
.end method
