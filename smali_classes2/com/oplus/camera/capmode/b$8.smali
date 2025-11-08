.class Lcom/oplus/camera/capmode/b$8;
.super Landroid/os/Handler;
.source "CameraMediaCodec.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/oplus/camera/capmode/b;->w()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/oplus/camera/capmode/b;


# direct methods
.method constructor <init>(Lcom/oplus/camera/capmode/b;Landroid/os/Looper;)V
    .locals 0

    .line 975
    iput-object p1, p0, Lcom/oplus/camera/capmode/b$8;->a:Lcom/oplus/camera/capmode/b;

    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 3

    .line 978
    iget v0, p1, Landroid/os/Message;->what:I

    const/4 v1, 0x1

    const/4 v2, 0x2

    if-eq v0, v1, :cond_1

    if-eq v0, v2, :cond_0

    goto :goto_0

    .line 989
    :cond_0
    :try_start_0
    iget-object p0, p0, Lcom/oplus/camera/capmode/b$8;->a:Lcom/oplus/camera/capmode/b;

    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, [B

    invoke-static {p0, p1}, Lcom/oplus/camera/capmode/b;->a(Lcom/oplus/camera/capmode/b;[B)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    .line 991
    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0

    .line 980
    :cond_1
    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v0

    .line 981
    iget-object v1, p0, Lcom/oplus/camera/capmode/b$8;->a:Lcom/oplus/camera/capmode/b;

    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Lcom/oplus/ocs/camera/CameraPictureCallback$CameraPictureImage;

    invoke-static {v1, p1}, Lcom/oplus/camera/capmode/b;->a(Lcom/oplus/camera/capmode/b;Lcom/oplus/ocs/camera/CameraPictureCallback$CameraPictureImage;)[B

    move-result-object p1

    iput-object p1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 982
    iput v2, v0, Landroid/os/Message;->what:I

    .line 983
    iget-object p0, p0, Lcom/oplus/camera/capmode/b$8;->a:Lcom/oplus/camera/capmode/b;

    invoke-static {p0}, Lcom/oplus/camera/capmode/b;->G(Lcom/oplus/camera/capmode/b;)Landroid/os/Handler;

    move-result-object p0

    invoke-virtual {p0, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    :goto_0
    return-void
.end method
