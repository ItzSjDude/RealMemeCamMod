.class Lcom/oplus/camera/Camera$7;
.super Landroid/content/BroadcastReceiver;
.source "Camera.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/oplus/camera/Camera;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/oplus/camera/Camera;


# direct methods
.method constructor <init>(Lcom/oplus/camera/Camera;)V
    .locals 0

    .line 1285
    iput-object p1, p0, Lcom/oplus/camera/Camera$7;->a:Lcom/oplus/camera/Camera;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 0

    .line 1288
    iget-object p1, p0, Lcom/oplus/camera/Camera$7;->a:Lcom/oplus/camera/Camera;

    invoke-static {p1}, Lcom/oplus/camera/Camera;->c(Lcom/oplus/camera/Camera;)Lcom/oplus/camera/CameraManager;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 1289
    iget-object p1, p0, Lcom/oplus/camera/Camera$7;->a:Lcom/oplus/camera/Camera;

    invoke-static {p1}, Lcom/oplus/camera/Camera;->c(Lcom/oplus/camera/Camera;)Lcom/oplus/camera/CameraManager;

    move-result-object p1

    invoke-virtual {p1, p2}, Lcom/oplus/camera/CameraManager;->b(Landroid/content/Intent;)V

    .line 1292
    :cond_0
    iget-object p1, p0, Lcom/oplus/camera/Camera$7;->a:Lcom/oplus/camera/Camera;

    invoke-static {p1}, Lcom/oplus/camera/Camera;->f(Lcom/oplus/camera/Camera;)Z

    move-result p1

    if-nez p1, :cond_1

    iget-object p1, p0, Lcom/oplus/camera/Camera$7;->a:Lcom/oplus/camera/Camera;

    invoke-static {p1}, Lcom/oplus/camera/Camera;->g(Lcom/oplus/camera/Camera;)Lcom/oplus/camera/h;

    move-result-object p1

    if-eqz p1, :cond_1

    .line 1293
    iget-object p0, p0, Lcom/oplus/camera/Camera$7;->a:Lcom/oplus/camera/Camera;

    invoke-static {p0}, Lcom/oplus/camera/Camera;->g(Lcom/oplus/camera/Camera;)Lcom/oplus/camera/h;

    move-result-object p0

    invoke-virtual {p0}, Lcom/oplus/camera/h;->f()V

    :cond_1
    return-void
.end method
