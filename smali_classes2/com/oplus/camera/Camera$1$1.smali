.class Lcom/oplus/camera/Camera$1$1;
.super Ljava/lang/Object;
.source "Camera.java"

# interfaces
.implements Landroid/content/ServiceConnection;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/oplus/camera/Camera$1;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/oplus/camera/Camera$1;


# direct methods
.method constructor <init>(Lcom/oplus/camera/Camera$1;)V
    .locals 0

    .line 160
    iput-object p1, p0, Lcom/oplus/camera/Camera$1$1;->a:Lcom/oplus/camera/Camera$1;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V
    .locals 3

    const-string v0, "OplusCamera"

    const-string v1, "mIpaConnection.onServiceConnected"

    .line 163
    invoke-static {v0, v1}, Lcom/oplus/camera/e;->b(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "ApsService.onServiceConnected"

    .line 165
    invoke-static {v1}, Lcom/oplus/camera/e;->a(Ljava/lang/String;)V

    .line 167
    iget-object v2, p0, Lcom/oplus/camera/Camera$1$1;->a:Lcom/oplus/camera/Camera$1;

    iget-object v2, v2, Lcom/oplus/camera/Camera$1;->a:Lcom/oplus/camera/Camera;

    invoke-static {v2}, Lcom/oplus/camera/Camera;->b(Lcom/oplus/camera/Camera;)Landroid/os/ConditionVariable;

    move-result-object v2

    invoke-virtual {v2}, Landroid/os/ConditionVariable;->block()V

    .line 169
    iget-object v2, p0, Lcom/oplus/camera/Camera$1$1;->a:Lcom/oplus/camera/Camera$1;

    iget-object v2, v2, Lcom/oplus/camera/Camera$1;->a:Lcom/oplus/camera/Camera;

    invoke-static {v2}, Lcom/oplus/camera/Camera;->c(Lcom/oplus/camera/Camera;)Lcom/oplus/camera/CameraManager;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 170
    iget-object p0, p0, Lcom/oplus/camera/Camera$1$1;->a:Lcom/oplus/camera/Camera$1;

    iget-object p0, p0, Lcom/oplus/camera/Camera$1;->a:Lcom/oplus/camera/Camera;

    invoke-static {p0}, Lcom/oplus/camera/Camera;->c(Lcom/oplus/camera/Camera;)Lcom/oplus/camera/CameraManager;

    move-result-object p0

    invoke-virtual {p0, p1, p2}, Lcom/oplus/camera/CameraManager;->a(Landroid/content/ComponentName;Landroid/os/IBinder;)V

    goto :goto_0

    :cond_0
    const-string p0, "mCameraManager already closed!"

    .line 172
    invoke-static {v0, p0}, Lcom/oplus/camera/e;->f(Ljava/lang/String;Ljava/lang/String;)V

    .line 175
    :goto_0
    invoke-static {v1}, Lcom/oplus/camera/e;->b(Ljava/lang/String;)V

    return-void
.end method

.method public onServiceDisconnected(Landroid/content/ComponentName;)V
    .locals 0

    const-string p0, "OplusCamera"

    const-string p1, "mIpaConnection.onServiceDisconnected"

    .line 180
    invoke-static {p0, p1}, Lcom/oplus/camera/e;->b(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method
