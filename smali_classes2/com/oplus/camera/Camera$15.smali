.class Lcom/oplus/camera/Camera$15;
.super Ljava/lang/Object;
.source "Camera.java"

# interfaces
.implements Lcom/oplus/camera/h$e;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/oplus/camera/Camera;->onRequestPermissionsResult(I[Ljava/lang/String;[I)V
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

    .line 1570
    iput-object p1, p0, Lcom/oplus/camera/Camera$15;->a:Lcom/oplus/camera/Camera;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a()V
    .locals 2

    .line 1573
    iget-object v0, p0, Lcom/oplus/camera/Camera$15;->a:Lcom/oplus/camera/Camera;

    invoke-static {v0}, Lcom/oplus/camera/Camera;->g(Lcom/oplus/camera/Camera;)Lcom/oplus/camera/h;

    move-result-object v1

    invoke-virtual {v1}, Lcom/oplus/camera/h;->e()Z

    move-result v1

    invoke-static {v0, v1}, Lcom/oplus/camera/Camera;->b(Lcom/oplus/camera/Camera;Z)Z

    .line 1575
    iget-object v0, p0, Lcom/oplus/camera/Camera$15;->a:Lcom/oplus/camera/Camera;

    invoke-static {v0}, Lcom/oplus/camera/Camera;->n(Lcom/oplus/camera/Camera;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1576
    iget-object v0, p0, Lcom/oplus/camera/Camera$15;->a:Lcom/oplus/camera/Camera;

    invoke-static {v0}, Lcom/oplus/camera/Camera;->o(Lcom/oplus/camera/Camera;)V

    .line 1579
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onRequestPermissionsResult, mbHasNecessaryPermission: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/oplus/camera/Camera$15;->a:Lcom/oplus/camera/Camera;

    .line 1580
    invoke-static {p0}, Lcom/oplus/camera/Camera;->n(Lcom/oplus/camera/Camera;)Z

    move-result p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string v0, "OplusCamera"

    .line 1579
    invoke-static {v0, p0}, Lcom/oplus/camera/e;->a(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public b()V
    .locals 1

    .line 1585
    iget-object v0, p0, Lcom/oplus/camera/Camera$15;->a:Lcom/oplus/camera/Camera;

    invoke-static {v0}, Lcom/oplus/camera/Camera;->c(Lcom/oplus/camera/Camera;)Lcom/oplus/camera/CameraManager;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 1586
    iget-object p0, p0, Lcom/oplus/camera/Camera$15;->a:Lcom/oplus/camera/Camera;

    invoke-static {p0}, Lcom/oplus/camera/Camera;->c(Lcom/oplus/camera/Camera;)Lcom/oplus/camera/CameraManager;

    move-result-object p0

    invoke-virtual {p0}, Lcom/oplus/camera/CameraManager;->aI()V

    :cond_0
    return-void
.end method
