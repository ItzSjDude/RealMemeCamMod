.class Lcom/oplus/camera/CameraManager$14;
.super Ljava/lang/Object;
.source "CameraManager.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/oplus/camera/CameraManager;->y()V
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

    .line 3303
    iput-object p1, p0, Lcom/oplus/camera/CameraManager$14;->b:Lcom/oplus/camera/CameraManager;

    iput-object p2, p0, Lcom/oplus/camera/CameraManager$14;->a:Landroid/util/Size;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .line 3306
    iget-object v0, p0, Lcom/oplus/camera/CameraManager$14;->b:Lcom/oplus/camera/CameraManager;

    invoke-static {v0}, Lcom/oplus/camera/CameraManager;->aj(Lcom/oplus/camera/CameraManager;)Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    .line 3307
    :try_start_0
    iget-object v1, p0, Lcom/oplus/camera/CameraManager$14;->b:Lcom/oplus/camera/CameraManager;

    invoke-static {v1}, Lcom/oplus/camera/CameraManager;->e(Lcom/oplus/camera/CameraManager;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 3308
    monitor-exit v0

    return-void

    :cond_0
    const-string v1, "CameraManager"

    .line 3311
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "startFaceDetection, mbFaceDetectionStarted: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/oplus/camera/CameraManager$14;->b:Lcom/oplus/camera/CameraManager;

    invoke-static {v3}, Lcom/oplus/camera/CameraManager;->ak(Lcom/oplus/camera/CameraManager;)Z

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/oplus/camera/e;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 3313
    iget-object v1, p0, Lcom/oplus/camera/CameraManager$14;->b:Lcom/oplus/camera/CameraManager;

    const/4 v2, 0x0

    invoke-virtual {v1, v2, v2}, Lcom/oplus/camera/CameraManager;->a([Landroid/hardware/camera2/params/Face;[I)V

    .line 3314
    iget-object v1, p0, Lcom/oplus/camera/CameraManager$14;->b:Lcom/oplus/camera/CameraManager;

    const/4 v2, 0x1

    invoke-static {v1, v2}, Lcom/oplus/camera/CameraManager;->d(Lcom/oplus/camera/CameraManager;Z)Z

    .line 3315
    iget-object v1, p0, Lcom/oplus/camera/CameraManager$14;->b:Lcom/oplus/camera/CameraManager;

    iget-object v2, p0, Lcom/oplus/camera/CameraManager$14;->b:Lcom/oplus/camera/CameraManager;

    invoke-static {v2}, Lcom/oplus/camera/CameraManager;->i(Lcom/oplus/camera/CameraManager;)Lcom/oplus/camera/capmode/ModeManager;

    move-result-object v2

    const-string v3, "pref_video_eis"

    invoke-virtual {v2, v3}, Lcom/oplus/camera/capmode/ModeManager;->j(Ljava/lang/String;)Z

    move-result v2

    invoke-static {v1, v2}, Lcom/oplus/camera/CameraManager;->e(Lcom/oplus/camera/CameraManager;Z)Z

    .line 3317
    iget-object v1, p0, Lcom/oplus/camera/CameraManager$14;->b:Lcom/oplus/camera/CameraManager;

    invoke-static {v1}, Lcom/oplus/camera/CameraManager;->g(Lcom/oplus/camera/CameraManager;)Lcom/oplus/camera/ui/d;

    move-result-object v1

    iget-object v2, p0, Lcom/oplus/camera/CameraManager$14;->b:Lcom/oplus/camera/CameraManager;

    invoke-static {v2}, Lcom/oplus/camera/CameraManager;->al(Lcom/oplus/camera/CameraManager;)Landroid/graphics/Rect;

    move-result-object v2

    iget-object v3, p0, Lcom/oplus/camera/CameraManager$14;->a:Landroid/util/Size;

    invoke-virtual {v1, v2, v3}, Lcom/oplus/camera/ui/d;->a(Landroid/graphics/Rect;Landroid/util/Size;)V

    const-string v1, "com.oplus.tunning.video.eis.preview.scale"

    .line 3320
    invoke-static {v1}, Lcom/oplus/camera/aps/config/CameraConfig;->getConfigFloatValue(Ljava/lang/String;)F

    move-result v1

    .line 3322
    iget-object v2, p0, Lcom/oplus/camera/CameraManager$14;->b:Lcom/oplus/camera/CameraManager;

    invoke-static {v2}, Lcom/oplus/camera/CameraManager;->am(Lcom/oplus/camera/CameraManager;)Z

    move-result v2

    const/high16 v3, 0x3f800000    # 1.0f

    if-eqz v2, :cond_1

    cmpl-float v2, v1, v3

    if-lez v2, :cond_1

    goto :goto_0

    :cond_1
    move v1, v3

    .line 3326
    :goto_0
    invoke-static {}, Lcom/oplus/camera/util/Util;->C()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 3327
    iget-object v2, p0, Lcom/oplus/camera/CameraManager$14;->b:Lcom/oplus/camera/CameraManager;

    invoke-static {v2}, Lcom/oplus/camera/CameraManager;->g(Lcom/oplus/camera/CameraManager;)Lcom/oplus/camera/ui/d;

    move-result-object v2

    invoke-virtual {v2, v1}, Lcom/oplus/camera/ui/d;->b(F)V

    .line 3330
    :cond_2
    iget-object v1, p0, Lcom/oplus/camera/CameraManager$14;->b:Lcom/oplus/camera/CameraManager;

    invoke-static {v1}, Lcom/oplus/camera/CameraManager;->g(Lcom/oplus/camera/CameraManager;)Lcom/oplus/camera/ui/d;

    move-result-object v1

    if-eqz v1, :cond_3

    .line 3331
    iget-object v1, p0, Lcom/oplus/camera/CameraManager$14;->b:Lcom/oplus/camera/CameraManager;

    invoke-static {v1}, Lcom/oplus/camera/CameraManager;->g(Lcom/oplus/camera/CameraManager;)Lcom/oplus/camera/ui/d;

    move-result-object v1

    iget-object p0, p0, Lcom/oplus/camera/CameraManager$14;->b:Lcom/oplus/camera/CameraManager;

    invoke-static {p0}, Lcom/oplus/camera/CameraManager;->M(Lcom/oplus/camera/CameraManager;)Z

    move-result p0

    invoke-virtual {v1, p0}, Lcom/oplus/camera/ui/d;->ab(Z)V

    .line 3333
    :cond_3
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method
