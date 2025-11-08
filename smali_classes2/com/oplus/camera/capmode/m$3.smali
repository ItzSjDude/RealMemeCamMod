.class Lcom/oplus/camera/capmode/m$3;
.super Landroid/os/Handler;
.source "LongExposureMode.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/oplus/camera/capmode/m;->onInitCameraMode()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/oplus/camera/capmode/m;


# direct methods
.method constructor <init>(Lcom/oplus/camera/capmode/m;)V
    .locals 0

    .line 216
    iput-object p1, p0, Lcom/oplus/camera/capmode/m$3;->a:Lcom/oplus/camera/capmode/m;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 3

    .line 219
    invoke-super {p0, p1}, Landroid/os/Handler;->handleMessage(Landroid/os/Message;)V

    .line 221
    iget v0, p1, Landroid/os/Message;->what:I

    const/4 v1, 0x1

    if-eq v0, v1, :cond_2

    const/4 p1, 0x2

    if-eq v0, p1, :cond_0

    goto :goto_0

    .line 236
    :cond_0
    iget-object p1, p0, Lcom/oplus/camera/capmode/m$3;->a:Lcom/oplus/camera/capmode/m;

    iget-object p1, p1, Lcom/oplus/camera/capmode/m;->mCameraUIInterface:Lcom/oplus/camera/ui/CameraUIInterface;

    if-eqz p1, :cond_1

    iget-object p1, p0, Lcom/oplus/camera/capmode/m$3;->a:Lcom/oplus/camera/capmode/m;

    invoke-static {p1}, Lcom/oplus/camera/capmode/m;->c(Lcom/oplus/camera/capmode/m;)I

    move-result p1

    if-eqz p1, :cond_1

    .line 237
    iget-object p1, p0, Lcom/oplus/camera/capmode/m$3;->a:Lcom/oplus/camera/capmode/m;

    iget-object p1, p1, Lcom/oplus/camera/capmode/m;->mCameraUIInterface:Lcom/oplus/camera/ui/CameraUIInterface;

    iget-object v0, p0, Lcom/oplus/camera/capmode/m$3;->a:Lcom/oplus/camera/capmode/m;

    invoke-static {v0}, Lcom/oplus/camera/capmode/m;->c(Lcom/oplus/camera/capmode/m;)I

    move-result v0

    invoke-interface {p1, v0}, Lcom/oplus/camera/ui/CameraUIInterface;->a(I)V

    .line 240
    :cond_1
    iget-object p0, p0, Lcom/oplus/camera/capmode/m$3;->a:Lcom/oplus/camera/capmode/m;

    const/4 p1, 0x0

    invoke-static {p0, p1}, Lcom/oplus/camera/capmode/m;->b(Lcom/oplus/camera/capmode/m;I)I

    goto :goto_0

    .line 223
    :cond_2
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    .line 224
    iget v1, p1, Landroid/os/Message;->arg1:I

    .line 225
    iget p1, p1, Landroid/os/Message;->arg2:I

    .line 226
    iget-object v2, p0, Lcom/oplus/camera/capmode/m$3;->a:Lcom/oplus/camera/capmode/m;

    invoke-static {v2, v1, v0, p1}, Lcom/oplus/camera/capmode/m;->a(Lcom/oplus/camera/capmode/m;IZI)V

    if-nez v0, :cond_3

    .line 230
    iget-object p0, p0, Lcom/oplus/camera/capmode/m$3;->a:Lcom/oplus/camera/capmode/m;

    invoke-static {p0, v1}, Lcom/oplus/camera/capmode/m;->a(Lcom/oplus/camera/capmode/m;I)V

    :cond_3
    :goto_0
    return-void
.end method
