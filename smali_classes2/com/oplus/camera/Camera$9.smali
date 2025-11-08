.class Lcom/oplus/camera/Camera$9;
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

    .line 1307
    iput-object p1, p0, Lcom/oplus/camera/Camera$9;->a:Lcom/oplus/camera/Camera;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 0

    .line 1310
    iget-object p1, p0, Lcom/oplus/camera/Camera$9;->a:Lcom/oplus/camera/Camera;

    invoke-static {p1}, Lcom/oplus/camera/Camera;->c(Lcom/oplus/camera/Camera;)Lcom/oplus/camera/CameraManager;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 1311
    iget-object p0, p0, Lcom/oplus/camera/Camera$9;->a:Lcom/oplus/camera/Camera;

    invoke-static {p0}, Lcom/oplus/camera/Camera;->c(Lcom/oplus/camera/Camera;)Lcom/oplus/camera/CameraManager;

    move-result-object p0

    invoke-virtual {p0, p2}, Lcom/oplus/camera/CameraManager;->b(Landroid/content/Intent;)V

    :cond_0
    return-void
.end method
