.class Lcom/oplus/camera/Camera$12$1;
.super Ljava/lang/Object;
.source "Camera.java"

# interfaces
.implements Landroid/content/ServiceConnection;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/oplus/camera/Camera$12;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/oplus/camera/Camera$12;


# direct methods
.method constructor <init>(Lcom/oplus/camera/Camera$12;)V
    .locals 0

    .line 215
    iput-object p1, p0, Lcom/oplus/camera/Camera$12$1;->a:Lcom/oplus/camera/Camera$12;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V
    .locals 2

    const-string v0, "OplusCamera"

    const-string v1, "checkAndBindWatchAgent, mWatchConnection.onServiceConnected"

    .line 218
    invoke-static {v0, v1}, Lcom/oplus/camera/e;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 220
    iget-object p0, p0, Lcom/oplus/camera/Camera$12$1;->a:Lcom/oplus/camera/Camera$12;

    iget-object p0, p0, Lcom/oplus/camera/Camera$12;->b:Lcom/oplus/camera/Camera;

    invoke-static {p0}, Lcom/oplus/camera/Camera;->c(Lcom/oplus/camera/Camera;)Lcom/oplus/camera/CameraManager;

    move-result-object p0

    invoke-virtual {p0, p1, p2}, Lcom/oplus/camera/CameraManager;->a(Landroid/content/ComponentName;Landroid/os/IBinder;)V

    return-void
.end method

.method public onServiceDisconnected(Landroid/content/ComponentName;)V
    .locals 0

    const-string p0, "OplusCamera"

    const-string p1, "checkAndBindWatchAgent, mWatchConnection.onServiceDisconnected"

    .line 225
    invoke-static {p0, p1}, Lcom/oplus/camera/e;->b(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method
