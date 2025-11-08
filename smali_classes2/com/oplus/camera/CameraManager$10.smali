.class Lcom/oplus/camera/CameraManager$10;
.super Ljava/lang/Object;
.source "CameraManager.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/oplus/camera/CameraManager;->a(Landroid/util/Size;Landroid/util/Size;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Landroid/util/Size;

.field final synthetic b:Lcom/oplus/camera/CameraManager;


# direct methods
.method constructor <init>(Lcom/oplus/camera/CameraManager;Landroid/util/Size;)V
    .locals 0

    .line 3238
    iput-object p1, p0, Lcom/oplus/camera/CameraManager$10;->b:Lcom/oplus/camera/CameraManager;

    iput-object p2, p0, Lcom/oplus/camera/CameraManager$10;->a:Landroid/util/Size;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 3241
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onPreviewSurfaceSizeChanged, mbCaptureModeChanging: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/oplus/camera/CameraManager$10;->b:Lcom/oplus/camera/CameraManager;

    invoke-static {v1}, Lcom/oplus/camera/CameraManager;->af(Lcom/oplus/camera/CameraManager;)Z

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "CameraManager"

    invoke-static {v1, v0}, Lcom/oplus/camera/e;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 3243
    iget-object v0, p0, Lcom/oplus/camera/CameraManager$10;->b:Lcom/oplus/camera/CameraManager;

    invoke-static {v0}, Lcom/oplus/camera/CameraManager;->af(Lcom/oplus/camera/CameraManager;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 3244
    iget-object v0, p0, Lcom/oplus/camera/CameraManager$10;->b:Lcom/oplus/camera/CameraManager;

    invoke-static {v0}, Lcom/oplus/camera/CameraManager;->i(Lcom/oplus/camera/CameraManager;)Lcom/oplus/camera/capmode/ModeManager;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/oplus/camera/CameraManager$10;->b:Lcom/oplus/camera/CameraManager;

    .line 3245
    invoke-static {v0}, Lcom/oplus/camera/CameraManager;->i(Lcom/oplus/camera/CameraManager;)Lcom/oplus/camera/capmode/ModeManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/oplus/camera/capmode/ModeManager;->bx()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/oplus/camera/CameraManager$10;->b:Lcom/oplus/camera/CameraManager;

    .line 3246
    invoke-static {v0}, Lcom/oplus/camera/CameraManager;->i(Lcom/oplus/camera/CameraManager;)Lcom/oplus/camera/capmode/ModeManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/oplus/camera/capmode/ModeManager;->di()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/oplus/camera/CameraManager$10;->b:Lcom/oplus/camera/CameraManager;

    .line 3247
    invoke-static {v0}, Lcom/oplus/camera/CameraManager;->ag(Lcom/oplus/camera/CameraManager;)Lcom/oplus/camera/ag;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/oplus/camera/CameraManager$10;->b:Lcom/oplus/camera/CameraManager;

    .line 3248
    invoke-static {v0}, Lcom/oplus/camera/CameraManager;->ag(Lcom/oplus/camera/CameraManager;)Lcom/oplus/camera/ag;

    move-result-object v0

    invoke-virtual {v0}, Lcom/oplus/camera/ag;->j()Z

    move-result v0

    if-nez v0, :cond_0

    .line 3249
    iget-object v0, p0, Lcom/oplus/camera/CameraManager$10;->b:Lcom/oplus/camera/CameraManager;

    iget-object p0, p0, Lcom/oplus/camera/CameraManager$10;->a:Landroid/util/Size;

    invoke-static {v0}, Lcom/oplus/camera/CameraManager;->ah(Lcom/oplus/camera/CameraManager;)Z

    move-result v1

    invoke-virtual {v0, p0, v1}, Lcom/oplus/camera/CameraManager;->a(Landroid/util/Size;Z)V

    :cond_0
    return-void
.end method
