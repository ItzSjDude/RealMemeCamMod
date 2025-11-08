.class Lcom/oplus/camera/CameraManager$71;
.super Ljava/lang/Object;
.source "CameraManager.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/oplus/camera/CameraManager;->b(FZ)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/oplus/camera/CameraManager;


# direct methods
.method constructor <init>(Lcom/oplus/camera/CameraManager;)V
    .locals 0

    .line 21982
    iput-object p1, p0, Lcom/oplus/camera/CameraManager$71;->a:Lcom/oplus/camera/CameraManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .line 21985
    iget-object v0, p0, Lcom/oplus/camera/CameraManager$71;->a:Lcom/oplus/camera/CameraManager;

    invoke-static {v0}, Lcom/oplus/camera/CameraManager;->e(Lcom/oplus/camera/CameraManager;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 21991
    :cond_0
    iget-object v0, p0, Lcom/oplus/camera/CameraManager$71;->a:Lcom/oplus/camera/CameraManager;

    invoke-static {v0}, Lcom/oplus/camera/CameraManager;->i(Lcom/oplus/camera/CameraManager;)Lcom/oplus/camera/capmode/ModeManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/oplus/camera/capmode/ModeManager;->h()Z

    move-result v0

    if-nez v0, :cond_1

    const-string v0, "pref_camera_videoflashmode_key"

    goto :goto_0

    :cond_1
    const-string v0, "pref_camera_flashmode_key"

    .line 21995
    :goto_0
    iget-object v1, p0, Lcom/oplus/camera/CameraManager$71;->a:Lcom/oplus/camera/CameraManager;

    invoke-static {v1}, Lcom/oplus/camera/CameraManager;->i(Lcom/oplus/camera/CameraManager;)Lcom/oplus/camera/capmode/ModeManager;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/oplus/camera/capmode/ModeManager;->v(Z)V

    .line 21997
    iget-object v1, p0, Lcom/oplus/camera/CameraManager$71;->a:Lcom/oplus/camera/CameraManager;

    invoke-static {v1}, Lcom/oplus/camera/CameraManager;->i(Lcom/oplus/camera/CameraManager;)Lcom/oplus/camera/capmode/ModeManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/oplus/camera/capmode/ModeManager;->h()Z

    move-result v1

    if-eqz v1, :cond_2

    const-string v1, "com.oplus.feature.flash.full.zoom.support"

    .line 21998
    invoke-static {v1}, Lcom/oplus/camera/aps/config/CameraConfig;->getConfigBooleanValue(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 21999
    iget-object v1, p0, Lcom/oplus/camera/CameraManager$71;->a:Lcom/oplus/camera/CameraManager;

    invoke-static {v1}, Lcom/oplus/camera/CameraManager;->g(Lcom/oplus/camera/CameraManager;)Lcom/oplus/camera/ui/d;

    move-result-object v1

    const-string v2, "on"

    const-string v3, "auto"

    filled-new-array {v2, v3}, [Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Lcom/oplus/camera/ui/d;->a(Ljava/lang/String;[Ljava/lang/String;)V

    .line 22003
    :cond_2
    iget-object v1, p0, Lcom/oplus/camera/CameraManager$71;->a:Lcom/oplus/camera/CameraManager;

    invoke-static {v1}, Lcom/oplus/camera/CameraManager;->g(Lcom/oplus/camera/CameraManager;)Lcom/oplus/camera/ui/d;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, v0, v2}, Lcom/oplus/camera/ui/d;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 22004
    iget-object v1, p0, Lcom/oplus/camera/CameraManager$71;->a:Lcom/oplus/camera/CameraManager;

    invoke-static {v1}, Lcom/oplus/camera/CameraManager;->i(Lcom/oplus/camera/CameraManager;)Lcom/oplus/camera/capmode/ModeManager;

    move-result-object v1

    iget-object v2, p0, Lcom/oplus/camera/CameraManager$71;->a:Lcom/oplus/camera/CameraManager;

    invoke-static {v2}, Lcom/oplus/camera/CameraManager;->i(Lcom/oplus/camera/CameraManager;)Lcom/oplus/camera/capmode/ModeManager;

    move-result-object v2

    invoke-virtual {v2}, Lcom/oplus/camera/capmode/ModeManager;->S()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x1

    invoke-virtual {v1, v2, v3}, Lcom/oplus/camera/capmode/ModeManager;->a(Ljava/lang/String;Z)V

    .line 22005
    iget-object p0, p0, Lcom/oplus/camera/CameraManager$71;->a:Lcom/oplus/camera/CameraManager;

    invoke-static {p0}, Lcom/oplus/camera/CameraManager;->g(Lcom/oplus/camera/CameraManager;)Lcom/oplus/camera/ui/d;

    move-result-object p0

    invoke-virtual {p0, v0}, Lcom/oplus/camera/ui/d;->f(Ljava/lang/String;)V

    return-void
.end method
