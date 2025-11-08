.class Lcom/oplus/camera/CameraManager$38;
.super Ljava/lang/Object;
.source "CameraManager.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/oplus/camera/CameraManager;->ai()V
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

    .line 8988
    iput-object p1, p0, Lcom/oplus/camera/CameraManager$38;->a:Lcom/oplus/camera/CameraManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 6

    .line 8991
    iget-object v0, p0, Lcom/oplus/camera/CameraManager$38;->a:Lcom/oplus/camera/CameraManager;

    invoke-static {v0}, Lcom/oplus/camera/CameraManager;->e(Lcom/oplus/camera/CameraManager;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 8995
    :cond_0
    iget-object v0, p0, Lcom/oplus/camera/CameraManager$38;->a:Lcom/oplus/camera/CameraManager;

    invoke-static {v0}, Lcom/oplus/camera/CameraManager;->aU(Lcom/oplus/camera/CameraManager;)Lcom/oplus/camera/tiltshift/TiltShiftManager;

    move-result-object v0

    if-nez v0, :cond_1

    .line 8996
    iget-object v0, p0, Lcom/oplus/camera/CameraManager$38;->a:Lcom/oplus/camera/CameraManager;

    new-instance v1, Lcom/oplus/camera/tiltshift/TiltShiftManager;

    invoke-static {v0}, Lcom/oplus/camera/CameraManager;->a(Lcom/oplus/camera/CameraManager;)Landroid/app/Activity;

    move-result-object v2

    iget-object v3, p0, Lcom/oplus/camera/CameraManager$38;->a:Lcom/oplus/camera/CameraManager;

    invoke-static {v3}, Lcom/oplus/camera/CameraManager;->h(Lcom/oplus/camera/CameraManager;)Lcom/oplus/camera/ComboPreferences;

    move-result-object v3

    iget-object v4, p0, Lcom/oplus/camera/CameraManager$38;->a:Lcom/oplus/camera/CameraManager;

    invoke-static {v4}, Lcom/oplus/camera/CameraManager;->aV(Lcom/oplus/camera/CameraManager;)Lcom/oplus/camera/capmode/a;

    move-result-object v4

    iget-object v5, p0, Lcom/oplus/camera/CameraManager$38;->a:Lcom/oplus/camera/CameraManager;

    invoke-static {v5}, Lcom/oplus/camera/CameraManager;->g(Lcom/oplus/camera/CameraManager;)Lcom/oplus/camera/ui/d;

    move-result-object v5

    invoke-direct {v1, v2, v3, v4, v5}, Lcom/oplus/camera/tiltshift/TiltShiftManager;-><init>(Landroid/app/Activity;Lcom/oplus/camera/ComboPreferences;Lcom/oplus/camera/capmode/a;Lcom/oplus/camera/ui/CameraUIInterface;)V

    invoke-static {v0, v1}, Lcom/oplus/camera/CameraManager;->a(Lcom/oplus/camera/CameraManager;Lcom/oplus/camera/tiltshift/TiltShiftManager;)Lcom/oplus/camera/tiltshift/TiltShiftManager;

    .line 8999
    :cond_1
    iget-object v0, p0, Lcom/oplus/camera/CameraManager$38;->a:Lcom/oplus/camera/CameraManager;

    invoke-static {v0}, Lcom/oplus/camera/CameraManager;->g(Lcom/oplus/camera/CameraManager;)Lcom/oplus/camera/ui/d;

    move-result-object v0

    const/4 v1, 0x0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/oplus/camera/CameraManager$38;->a:Lcom/oplus/camera/CameraManager;

    invoke-static {v0}, Lcom/oplus/camera/CameraManager;->i(Lcom/oplus/camera/CameraManager;)Lcom/oplus/camera/capmode/ModeManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/oplus/camera/capmode/ModeManager;->aJ()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 9000
    iget-object v0, p0, Lcom/oplus/camera/CameraManager$38;->a:Lcom/oplus/camera/CameraManager;

    invoke-static {v0}, Lcom/oplus/camera/CameraManager;->aU(Lcom/oplus/camera/CameraManager;)Lcom/oplus/camera/tiltshift/TiltShiftManager;

    move-result-object v0

    new-instance v2, Lcom/oplus/camera/CameraManager$h;

    iget-object v3, p0, Lcom/oplus/camera/CameraManager$38;->a:Lcom/oplus/camera/CameraManager;

    invoke-direct {v2, v3, v1}, Lcom/oplus/camera/CameraManager$h;-><init>(Lcom/oplus/camera/CameraManager;Lcom/oplus/camera/CameraManager$1;)V

    invoke-virtual {v0, v2}, Lcom/oplus/camera/tiltshift/TiltShiftManager;->setCameraTiltShiftListener(Lcom/oplus/camera/tiltshift/TiltShiftManager$CameraTiltShiftListener;)V

    .line 9002
    iget-object v0, p0, Lcom/oplus/camera/CameraManager$38;->a:Lcom/oplus/camera/CameraManager;

    invoke-static {v0}, Lcom/oplus/camera/CameraManager;->g(Lcom/oplus/camera/CameraManager;)Lcom/oplus/camera/ui/d;

    move-result-object v0

    invoke-virtual {v0}, Lcom/oplus/camera/ui/d;->bJ()Landroid/graphics/Rect;

    move-result-object v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/oplus/camera/CameraManager$38;->a:Lcom/oplus/camera/CameraManager;

    invoke-static {v0}, Lcom/oplus/camera/CameraManager;->g(Lcom/oplus/camera/CameraManager;)Lcom/oplus/camera/ui/d;

    move-result-object v0

    invoke-virtual {v0}, Lcom/oplus/camera/ui/d;->bG()Landroid/util/Size;

    move-result-object v0

    if-eqz v0, :cond_3

    .line 9003
    iget-object v0, p0, Lcom/oplus/camera/CameraManager$38;->a:Lcom/oplus/camera/CameraManager;

    invoke-static {v0}, Lcom/oplus/camera/CameraManager;->aU(Lcom/oplus/camera/CameraManager;)Lcom/oplus/camera/tiltshift/TiltShiftManager;

    move-result-object v0

    iget-object v1, p0, Lcom/oplus/camera/CameraManager$38;->a:Lcom/oplus/camera/CameraManager;

    invoke-static {v1}, Lcom/oplus/camera/CameraManager;->g(Lcom/oplus/camera/CameraManager;)Lcom/oplus/camera/ui/d;

    move-result-object v1

    invoke-virtual {v1}, Lcom/oplus/camera/ui/d;->bG()Landroid/util/Size;

    move-result-object v1

    iget-object p0, p0, Lcom/oplus/camera/CameraManager$38;->a:Lcom/oplus/camera/CameraManager;

    invoke-static {p0}, Lcom/oplus/camera/CameraManager;->g(Lcom/oplus/camera/CameraManager;)Lcom/oplus/camera/ui/d;

    move-result-object p0

    invoke-virtual {p0}, Lcom/oplus/camera/ui/d;->bJ()Landroid/graphics/Rect;

    move-result-object p0

    invoke-virtual {v0, v1, p0}, Lcom/oplus/camera/tiltshift/TiltShiftManager;->initialize(Landroid/util/Size;Landroid/graphics/Rect;)V

    goto :goto_0

    .line 9006
    :cond_2
    iget-object p0, p0, Lcom/oplus/camera/CameraManager$38;->a:Lcom/oplus/camera/CameraManager;

    invoke-static {p0}, Lcom/oplus/camera/CameraManager;->aU(Lcom/oplus/camera/CameraManager;)Lcom/oplus/camera/tiltshift/TiltShiftManager;

    move-result-object p0

    invoke-virtual {p0, v1}, Lcom/oplus/camera/tiltshift/TiltShiftManager;->setCameraTiltShiftListener(Lcom/oplus/camera/tiltshift/TiltShiftManager$CameraTiltShiftListener;)V

    :cond_3
    :goto_0
    return-void
.end method
