.class Lcom/oplus/camera/ui/control/a$7;
.super Ljava/lang/Object;
.source "CameraControlUI.java"

# interfaces
.implements Lcom/oplus/camera/ui/control/ShutterButton$OnShutterButtonListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/oplus/camera/ui/control/a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/oplus/camera/ui/control/a;


# direct methods
.method constructor <init>(Lcom/oplus/camera/ui/control/a;)V
    .locals 0

    .line 385
    iput-object p1, p0, Lcom/oplus/camera/ui/control/a$7;->a:Lcom/oplus/camera/ui/control/a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public L()Z
    .locals 1

    .line 425
    iget-object v0, p0, Lcom/oplus/camera/ui/control/a$7;->a:Lcom/oplus/camera/ui/control/a;

    invoke-static {v0}, Lcom/oplus/camera/ui/control/a;->f(Lcom/oplus/camera/ui/control/a;)Lcom/oplus/camera/ui/control/ShutterButton;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 426
    iget-object p0, p0, Lcom/oplus/camera/ui/control/a$7;->a:Lcom/oplus/camera/ui/control/a;

    invoke-static {p0}, Lcom/oplus/camera/ui/control/a;->f(Lcom/oplus/camera/ui/control/a;)Lcom/oplus/camera/ui/control/ShutterButton;

    move-result-object p0

    invoke-virtual {p0}, Lcom/oplus/camera/ui/control/ShutterButton;->isEnabled()Z

    move-result p0

    return p0

    :cond_0
    const/4 p0, 0x1

    return p0
.end method

.method public a(Lcom/oplus/camera/ui/control/ShutterButton;)V
    .locals 1

    const-string p1, "CameraControlUI"

    const-string v0, "onShutterButtonClick, switch_camera_button"

    .line 392
    invoke-static {p1, v0}, Lcom/oplus/camera/e;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 394
    invoke-static {}, Lcom/oplus/camera/ui/menu/g;->a()Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x0

    .line 395
    invoke-static {p1}, Lcom/oplus/camera/ui/menu/g;->a(Z)V

    .line 398
    :cond_0
    iget-object p0, p0, Lcom/oplus/camera/ui/control/a$7;->a:Lcom/oplus/camera/ui/control/a;

    invoke-static {p0}, Lcom/oplus/camera/ui/control/a;->a(Lcom/oplus/camera/ui/control/a;)Lcom/oplus/camera/ui/control/CameraControlButtonListener;

    move-result-object p0

    invoke-interface {p0}, Lcom/oplus/camera/ui/control/CameraControlButtonListener;->onSwitchCameraButtonClick()V

    return-void
.end method

.method public a(Lcom/oplus/camera/ui/control/ShutterButton;Z)V
    .locals 0

    return-void
.end method

.method public b(Lcom/oplus/camera/ui/control/ShutterButton;)V
    .locals 0

    return-void
.end method

.method public c(Lcom/oplus/camera/ui/control/ShutterButton;)V
    .locals 0

    return-void
.end method

.method public d(Lcom/oplus/camera/ui/control/ShutterButton;)V
    .locals 0

    .line 411
    iget-object p1, p0, Lcom/oplus/camera/ui/control/a$7;->a:Lcom/oplus/camera/ui/control/a;

    invoke-static {p1}, Lcom/oplus/camera/ui/control/a;->a(Lcom/oplus/camera/ui/control/a;)Lcom/oplus/camera/ui/control/CameraControlButtonListener;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 412
    iget-object p0, p0, Lcom/oplus/camera/ui/control/a$7;->a:Lcom/oplus/camera/ui/control/a;

    invoke-static {p0}, Lcom/oplus/camera/ui/control/a;->a(Lcom/oplus/camera/ui/control/a;)Lcom/oplus/camera/ui/control/CameraControlButtonListener;

    move-result-object p0

    invoke-interface {p0}, Lcom/oplus/camera/ui/control/CameraControlButtonListener;->k()V

    :cond_0
    return-void
.end method

.method public e(Lcom/oplus/camera/ui/control/ShutterButton;)V
    .locals 0

    .line 418
    iget-object p1, p0, Lcom/oplus/camera/ui/control/a$7;->a:Lcom/oplus/camera/ui/control/a;

    invoke-static {p1}, Lcom/oplus/camera/ui/control/a;->a(Lcom/oplus/camera/ui/control/a;)Lcom/oplus/camera/ui/control/CameraControlButtonListener;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 419
    iget-object p0, p0, Lcom/oplus/camera/ui/control/a$7;->a:Lcom/oplus/camera/ui/control/a;

    invoke-static {p0}, Lcom/oplus/camera/ui/control/a;->a(Lcom/oplus/camera/ui/control/a;)Lcom/oplus/camera/ui/control/CameraControlButtonListener;

    move-result-object p0

    invoke-interface {p0}, Lcom/oplus/camera/ui/control/CameraControlButtonListener;->l()V

    :cond_0
    return-void
.end method
