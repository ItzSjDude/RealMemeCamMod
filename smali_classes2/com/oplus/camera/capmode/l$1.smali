.class Lcom/oplus/camera/capmode/l$1;
.super Landroid/os/Handler;
.source "IdPhotoMode.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/oplus/camera/capmode/l;->onInitCameraMode()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/oplus/camera/capmode/l;


# direct methods
.method constructor <init>(Lcom/oplus/camera/capmode/l;)V
    .locals 0

    .line 74
    iput-object p1, p0, Lcom/oplus/camera/capmode/l$1;->a:Lcom/oplus/camera/capmode/l;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 3

    .line 77
    invoke-super {p0, p1}, Landroid/os/Handler;->handleMessage(Landroid/os/Message;)V

    .line 79
    iget v0, p1, Landroid/os/Message;->what:I

    const/4 v1, 0x1

    if-eq v0, v1, :cond_3

    const/4 p1, 0x2

    if-eq v0, p1, :cond_1

    const/4 p1, 0x3

    if-eq v0, p1, :cond_0

    goto :goto_0

    .line 108
    :cond_0
    iget-object p0, p0, Lcom/oplus/camera/capmode/l$1;->a:Lcom/oplus/camera/capmode/l;

    invoke-static {p0, v1}, Lcom/oplus/camera/capmode/l;->a(Lcom/oplus/camera/capmode/l;Z)Z

    goto :goto_0

    .line 99
    :cond_1
    iget-object p1, p0, Lcom/oplus/camera/capmode/l$1;->a:Lcom/oplus/camera/capmode/l;

    iget-object p1, p1, Lcom/oplus/camera/capmode/l;->mCameraUIInterface:Lcom/oplus/camera/ui/CameraUIInterface;

    if-eqz p1, :cond_2

    iget-object p1, p0, Lcom/oplus/camera/capmode/l$1;->a:Lcom/oplus/camera/capmode/l;

    invoke-static {p1}, Lcom/oplus/camera/capmode/l;->a(Lcom/oplus/camera/capmode/l;)I

    move-result p1

    if-eqz p1, :cond_2

    .line 100
    iget-object p1, p0, Lcom/oplus/camera/capmode/l$1;->a:Lcom/oplus/camera/capmode/l;

    iget-object p1, p1, Lcom/oplus/camera/capmode/l;->mCameraUIInterface:Lcom/oplus/camera/ui/CameraUIInterface;

    iget-object v0, p0, Lcom/oplus/camera/capmode/l$1;->a:Lcom/oplus/camera/capmode/l;

    invoke-static {v0}, Lcom/oplus/camera/capmode/l;->a(Lcom/oplus/camera/capmode/l;)I

    move-result v0

    invoke-interface {p1, v0}, Lcom/oplus/camera/ui/CameraUIInterface;->a(I)V

    .line 103
    :cond_2
    iget-object p0, p0, Lcom/oplus/camera/capmode/l$1;->a:Lcom/oplus/camera/capmode/l;

    const/4 p1, 0x0

    invoke-static {p0, p1}, Lcom/oplus/camera/capmode/l;->b(Lcom/oplus/camera/capmode/l;I)I

    goto :goto_0

    .line 81
    :cond_3
    iget-object v0, p0, Lcom/oplus/camera/capmode/l$1;->a:Lcom/oplus/camera/capmode/l;

    iget-object v0, v0, Lcom/oplus/camera/capmode/l;->mCameraUIInterface:Lcom/oplus/camera/ui/CameraUIInterface;

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/oplus/camera/capmode/l$1;->a:Lcom/oplus/camera/capmode/l;

    invoke-static {v0}, Lcom/oplus/camera/capmode/l;->a(Lcom/oplus/camera/capmode/l;)I

    move-result v0

    if-eqz v0, :cond_4

    const v0, 0x7f1001fe

    iget-object v1, p0, Lcom/oplus/camera/capmode/l$1;->a:Lcom/oplus/camera/capmode/l;

    .line 82
    invoke-static {v1}, Lcom/oplus/camera/capmode/l;->a(Lcom/oplus/camera/capmode/l;)I

    move-result v1

    if-eq v0, v1, :cond_4

    .line 83
    iget-object v0, p0, Lcom/oplus/camera/capmode/l$1;->a:Lcom/oplus/camera/capmode/l;

    iget-object v0, v0, Lcom/oplus/camera/capmode/l;->mCameraUIInterface:Lcom/oplus/camera/ui/CameraUIInterface;

    iget-object v1, p0, Lcom/oplus/camera/capmode/l$1;->a:Lcom/oplus/camera/capmode/l;

    invoke-static {v1}, Lcom/oplus/camera/capmode/l;->a(Lcom/oplus/camera/capmode/l;)I

    move-result v1

    invoke-interface {v0, v1}, Lcom/oplus/camera/ui/CameraUIInterface;->a(I)V

    .line 86
    :cond_4
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    .line 87
    iget v1, p1, Landroid/os/Message;->arg1:I

    .line 88
    iget p1, p1, Landroid/os/Message;->arg2:I

    .line 89
    iget-object v2, p0, Lcom/oplus/camera/capmode/l$1;->a:Lcom/oplus/camera/capmode/l;

    invoke-static {v2, v1, v0, p1}, Lcom/oplus/camera/capmode/l;->a(Lcom/oplus/camera/capmode/l;IZI)V

    if-nez v0, :cond_5

    .line 93
    iget-object p0, p0, Lcom/oplus/camera/capmode/l$1;->a:Lcom/oplus/camera/capmode/l;

    invoke-static {p0, v1}, Lcom/oplus/camera/capmode/l;->a(Lcom/oplus/camera/capmode/l;I)V

    :cond_5
    :goto_0
    return-void
.end method
