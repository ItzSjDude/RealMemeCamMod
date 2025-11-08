.class Lcom/oplus/camera/Camera$4;
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

    .line 1252
    iput-object p1, p0, Lcom/oplus/camera/Camera$4;->a:Lcom/oplus/camera/Camera;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 2

    .line 1256
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object p1

    .line 1257
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onReceive, action: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "OplusCamera"

    invoke-static {v1, v0}, Lcom/oplus/camera/e;->b(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "android.intent.action.PHONE_STATE"

    .line 1259
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 1260
    iget-object p1, p0, Lcom/oplus/camera/Camera$4;->a:Lcom/oplus/camera/Camera;

    invoke-static {p1}, Lcom/oplus/camera/Camera;->c(Lcom/oplus/camera/Camera;)Lcom/oplus/camera/CameraManager;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 1261
    iget-object p0, p0, Lcom/oplus/camera/Camera$4;->a:Lcom/oplus/camera/Camera;

    invoke-static {p0}, Lcom/oplus/camera/Camera;->c(Lcom/oplus/camera/Camera;)Lcom/oplus/camera/CameraManager;

    move-result-object p0

    invoke-virtual {p0, p2}, Lcom/oplus/camera/CameraManager;->b(Landroid/content/Intent;)V

    :cond_0
    return-void
.end method
