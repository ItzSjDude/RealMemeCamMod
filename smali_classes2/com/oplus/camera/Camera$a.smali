.class Lcom/oplus/camera/Camera$a;
.super Landroid/os/Handler;
.source "Camera.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/oplus/camera/Camera;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "a"
.end annotation


# instance fields
.field final synthetic a:Lcom/oplus/camera/Camera;


# direct methods
.method private constructor <init>(Lcom/oplus/camera/Camera;)V
    .locals 0

    .line 1640
    iput-object p1, p0, Lcom/oplus/camera/Camera$a;->a:Lcom/oplus/camera/Camera;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/oplus/camera/Camera;Lcom/oplus/camera/Camera$1;)V
    .locals 0

    .line 1640
    invoke-direct {p0, p1}, Lcom/oplus/camera/Camera$a;-><init>(Lcom/oplus/camera/Camera;)V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 4

    .line 1643
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "handleMessage, message: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p1, Landroid/os/Message;->what:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v2, "OplusCamera"

    invoke-static {v2, v0}, Lcom/oplus/camera/e;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 1645
    iget v0, p1, Landroid/os/Message;->what:I

    const/4 v3, 0x1

    if-eq v0, v3, :cond_0

    goto :goto_0

    .line 1647
    :cond_0
    iget-object v0, p0, Lcom/oplus/camera/Camera$a;->a:Lcom/oplus/camera/Camera;

    invoke-static {v0}, Lcom/oplus/camera/Camera;->c(Lcom/oplus/camera/Camera;)Lcom/oplus/camera/CameraManager;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/oplus/camera/Camera$a;->a:Lcom/oplus/camera/Camera;

    invoke-static {v0}, Lcom/oplus/camera/Camera;->c(Lcom/oplus/camera/Camera;)Lcom/oplus/camera/CameraManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/oplus/camera/CameraManager;->aH()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1648
    iget-object p0, p0, Lcom/oplus/camera/Camera$a;->a:Lcom/oplus/camera/Camera;

    invoke-virtual {p0}, Lcom/oplus/camera/Camera;->p()V

    goto :goto_0

    .line 1649
    :cond_1
    iget-object v0, p0, Lcom/oplus/camera/Camera$a;->a:Lcom/oplus/camera/Camera;

    invoke-static {v0}, Lcom/oplus/camera/Camera;->c(Lcom/oplus/camera/Camera;)Lcom/oplus/camera/CameraManager;

    move-result-object v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/oplus/camera/Camera$a;->a:Lcom/oplus/camera/Camera;

    invoke-static {v0}, Lcom/oplus/camera/Camera;->c(Lcom/oplus/camera/Camera;)Lcom/oplus/camera/CameraManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/oplus/camera/CameraManager;->aE()Z

    move-result v0

    if-nez v0, :cond_2

    .line 1650
    iget-object v0, p0, Lcom/oplus/camera/Camera$a;->a:Lcom/oplus/camera/Camera;

    invoke-virtual {v0}, Lcom/oplus/camera/Camera;->getWindow()Landroid/view/Window;

    move-result-object v0

    const/16 v3, 0x80

    invoke-virtual {v0, v3}, Landroid/view/Window;->clearFlags(I)V

    .line 1651
    iget-object p0, p0, Lcom/oplus/camera/Camera$a;->a:Lcom/oplus/camera/Camera;

    invoke-virtual {p0}, Lcom/oplus/camera/Camera;->finish()V

    .line 1660
    :cond_2
    :goto_0
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p1, p1, Landroid/os/Message;->what:I

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, " X"

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v2, p0}, Lcom/oplus/camera/e;->a(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method
