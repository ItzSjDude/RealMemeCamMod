.class Lcom/oplus/camera/t;
.super Ljava/lang/Object;
.source "ModeFacade.java"


# instance fields
.field private a:Lcom/oplus/camera/capmode/ModeManager;

.field private b:Lcom/oplus/camera/CameraManager$n;


# direct methods
.method protected constructor <init>(Lcom/oplus/camera/capmode/ModeManager;Lcom/oplus/camera/CameraManager$n;)V
    .locals 1

    .line 29
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 26
    iput-object v0, p0, Lcom/oplus/camera/t;->a:Lcom/oplus/camera/capmode/ModeManager;

    .line 27
    iput-object v0, p0, Lcom/oplus/camera/t;->b:Lcom/oplus/camera/CameraManager$n;

    .line 30
    iput-object p1, p0, Lcom/oplus/camera/t;->a:Lcom/oplus/camera/capmode/ModeManager;

    .line 31
    iput-object p2, p0, Lcom/oplus/camera/t;->b:Lcom/oplus/camera/CameraManager$n;

    return-void
.end method


# virtual methods
.method protected declared-synchronized a(Landroid/util/Size;)Landroid/util/Size;
    .locals 1

    monitor-enter p0

    .line 86
    :try_start_0
    invoke-virtual {p0}, Lcom/oplus/camera/t;->g()Lcom/oplus/camera/CameraManager$o;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 89
    iget-object v0, v0, Lcom/oplus/camera/CameraManager$o;->b:Lcom/oplus/camera/capmode/BaseMode;

    invoke-virtual {v0, p1}, Lcom/oplus/camera/capmode/BaseMode;->getPreviewSurfaceSize(Landroid/util/Size;)Landroid/util/Size;

    move-result-object p1

    goto :goto_0

    .line 91
    :cond_0
    iget-object v0, p0, Lcom/oplus/camera/t;->a:Lcom/oplus/camera/capmode/ModeManager;

    invoke-virtual {v0, p1}, Lcom/oplus/camera/capmode/ModeManager;->a(Landroid/util/Size;)Landroid/util/Size;

    move-result-object p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 94
    :goto_0
    monitor-exit p0

    return-object p1

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method protected declared-synchronized a(Lcom/oplus/camera/e/h;)Landroid/util/Size;
    .locals 1

    monitor-enter p0

    const/4 v0, 0x0

    .line 81
    :try_start_0
    invoke-virtual {p0, p1, v0}, Lcom/oplus/camera/t;->a(Lcom/oplus/camera/e/h;Ljava/lang/String;)Landroid/util/Size;

    move-result-object p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object p1

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method protected declared-synchronized a(Lcom/oplus/camera/e/h;Ljava/lang/String;)Landroid/util/Size;
    .locals 1

    monitor-enter p0

    .line 99
    :try_start_0
    invoke-virtual {p0}, Lcom/oplus/camera/t;->g()Lcom/oplus/camera/CameraManager$o;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 102
    iget-object v0, v0, Lcom/oplus/camera/CameraManager$o;->b:Lcom/oplus/camera/capmode/BaseMode;

    invoke-virtual {v0, p1, p2}, Lcom/oplus/camera/capmode/BaseMode;->getPreviewSize(Lcom/oplus/camera/e/h;Ljava/lang/String;)Landroid/util/Size;

    move-result-object p1

    goto :goto_0

    .line 104
    :cond_0
    iget-object v0, p0, Lcom/oplus/camera/t;->a:Lcom/oplus/camera/capmode/ModeManager;

    invoke-virtual {v0, p1, p2}, Lcom/oplus/camera/capmode/ModeManager;->a(Lcom/oplus/camera/e/h;Ljava/lang/String;)Landroid/util/Size;

    move-result-object p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 107
    :goto_0
    monitor-exit p0

    return-object p1

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method protected declared-synchronized a()V
    .locals 1

    monitor-enter p0

    .line 35
    :try_start_0
    invoke-virtual {p0}, Lcom/oplus/camera/t;->g()Lcom/oplus/camera/CameraManager$o;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 38
    iget-object v0, v0, Lcom/oplus/camera/CameraManager$o;->b:Lcom/oplus/camera/capmode/BaseMode;

    invoke-virtual {v0}, Lcom/oplus/camera/capmode/BaseMode;->beforePreview()V

    goto :goto_0

    .line 40
    :cond_0
    iget-object v0, p0, Lcom/oplus/camera/t;->a:Lcom/oplus/camera/capmode/ModeManager;

    invoke-virtual {v0}, Lcom/oplus/camera/capmode/ModeManager;->r()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 42
    :goto_0
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method protected declared-synchronized a(Lcom/oplus/ocs/camera/CameraDeviceConfig$Builder;)V
    .locals 1

    monitor-enter p0

    .line 187
    :try_start_0
    invoke-virtual {p0}, Lcom/oplus/camera/t;->g()Lcom/oplus/camera/CameraManager$o;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 190
    iget-object v0, v0, Lcom/oplus/camera/CameraManager$o;->b:Lcom/oplus/camera/capmode/BaseMode;

    invoke-virtual {v0, p1}, Lcom/oplus/camera/capmode/BaseMode;->setConfigureParameter(Lcom/oplus/ocs/camera/CameraDeviceConfig$Builder;)V

    goto :goto_0

    .line 192
    :cond_0
    iget-object v0, p0, Lcom/oplus/camera/t;->a:Lcom/oplus/camera/capmode/ModeManager;

    if-eqz v0, :cond_1

    .line 193
    iget-object v0, p0, Lcom/oplus/camera/t;->a:Lcom/oplus/camera/capmode/ModeManager;

    invoke-virtual {v0, p1}, Lcom/oplus/camera/capmode/ModeManager;->a(Lcom/oplus/ocs/camera/CameraDeviceConfig$Builder;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 196
    :cond_1
    :goto_0
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized a(Lcom/oplus/ocs/camera/CameraPictureCallback$CameraPictureImage;)V
    .locals 1

    monitor-enter p0

    .line 303
    :try_start_0
    invoke-virtual {p0}, Lcom/oplus/camera/t;->g()Lcom/oplus/camera/CameraManager$o;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 306
    iget-object v0, v0, Lcom/oplus/camera/CameraManager$o;->b:Lcom/oplus/camera/capmode/BaseMode;

    invoke-virtual {v0, p1}, Lcom/oplus/camera/capmode/BaseMode;->onRawImageReceived(Lcom/oplus/ocs/camera/CameraPictureCallback$CameraPictureImage;)V

    goto :goto_0

    .line 308
    :cond_0
    iget-object v0, p0, Lcom/oplus/camera/t;->a:Lcom/oplus/camera/capmode/ModeManager;

    invoke-virtual {v0, p1}, Lcom/oplus/camera/capmode/ModeManager;->a(Lcom/oplus/ocs/camera/CameraPictureCallback$CameraPictureImage;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 310
    :goto_0
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method protected declared-synchronized a(Z)V
    .locals 1

    monitor-enter p0

    .line 71
    :try_start_0
    invoke-virtual {p0}, Lcom/oplus/camera/t;->g()Lcom/oplus/camera/CameraManager$o;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 74
    iget-object v0, v0, Lcom/oplus/camera/CameraManager$o;->b:Lcom/oplus/camera/capmode/BaseMode;

    invoke-virtual {v0, p1}, Lcom/oplus/camera/capmode/BaseMode;->afterStartPreview(Z)V

    goto :goto_0

    .line 76
    :cond_0
    iget-object v0, p0, Lcom/oplus/camera/t;->a:Lcom/oplus/camera/capmode/ModeManager;

    invoke-virtual {v0, p1}, Lcom/oplus/camera/capmode/ModeManager;->c(Z)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 78
    :goto_0
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method protected declared-synchronized a(Ljava/lang/String;)Z
    .locals 1

    monitor-enter p0

    .line 177
    :try_start_0
    invoke-virtual {p0}, Lcom/oplus/camera/t;->g()Lcom/oplus/camera/CameraManager$o;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 180
    iget-object v0, v0, Lcom/oplus/camera/CameraManager$o;->b:Lcom/oplus/camera/capmode/BaseMode;

    invoke-virtual {v0, p1}, Lcom/oplus/camera/capmode/BaseMode;->needSurface(Ljava/lang/String;)Z

    move-result p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return p1

    .line 182
    :cond_0
    :try_start_1
    iget-object v0, p0, Lcom/oplus/camera/t;->a:Lcom/oplus/camera/capmode/ModeManager;

    invoke-virtual {v0, p1}, Lcom/oplus/camera/capmode/ModeManager;->n(Ljava/lang/String;)Z

    move-result p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit p0

    return p1

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method protected declared-synchronized b(Lcom/oplus/camera/e/h;)Landroid/util/Size;
    .locals 1

    monitor-enter p0

    .line 112
    :try_start_0
    invoke-virtual {p0}, Lcom/oplus/camera/t;->g()Lcom/oplus/camera/CameraManager$o;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 115
    iget-object v0, v0, Lcom/oplus/camera/CameraManager$o;->b:Lcom/oplus/camera/capmode/BaseMode;

    invoke-virtual {v0, p1}, Lcom/oplus/camera/capmode/BaseMode;->getPictureSize(Lcom/oplus/camera/e/h;)Landroid/util/Size;

    move-result-object p1

    goto :goto_0

    .line 117
    :cond_0
    iget-object v0, p0, Lcom/oplus/camera/t;->a:Lcom/oplus/camera/capmode/ModeManager;

    invoke-virtual {v0, p1}, Lcom/oplus/camera/capmode/ModeManager;->c(Lcom/oplus/camera/e/h;)Landroid/util/Size;

    move-result-object p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 120
    :goto_0
    monitor-exit p0

    return-object p1

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method protected declared-synchronized b()Ljava/lang/String;
    .locals 1

    monitor-enter p0

    .line 45
    :try_start_0
    iget-object v0, p0, Lcom/oplus/camera/t;->b:Lcom/oplus/camera/CameraManager$n;

    if-eqz v0, :cond_0

    .line 46
    iget-object v0, p0, Lcom/oplus/camera/t;->b:Lcom/oplus/camera/CameraManager$n;

    invoke-virtual {v0}, Lcom/oplus/camera/CameraManager$n;->i()Lcom/oplus/camera/CameraManager$o;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 49
    iget-object v0, v0, Lcom/oplus/camera/CameraManager$o;->b:Lcom/oplus/camera/capmode/BaseMode;

    if-eqz v0, :cond_0

    .line 52
    invoke-virtual {v0}, Lcom/oplus/camera/capmode/BaseMode;->getCameraMode()Ljava/lang/String;

    move-result-object v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    :cond_0
    const/4 v0, 0x0

    .line 57
    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized b(Z)V
    .locals 1

    monitor-enter p0

    .line 333
    :try_start_0
    invoke-virtual {p0}, Lcom/oplus/camera/t;->g()Lcom/oplus/camera/CameraManager$o;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 336
    iget-object v0, v0, Lcom/oplus/camera/CameraManager$o;->b:Lcom/oplus/camera/capmode/BaseMode;

    invoke-virtual {v0, p1}, Lcom/oplus/camera/capmode/BaseMode;->setFlashTemporaryDisabled(Z)V

    goto :goto_0

    .line 338
    :cond_0
    iget-object v0, p0, Lcom/oplus/camera/t;->a:Lcom/oplus/camera/capmode/ModeManager;

    invoke-virtual {v0, p1}, Lcom/oplus/camera/capmode/ModeManager;->v(Z)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 340
    :goto_0
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized b(Lcom/oplus/ocs/camera/CameraPictureCallback$CameraPictureImage;)Z
    .locals 1

    monitor-enter p0

    .line 313
    :try_start_0
    invoke-virtual {p0}, Lcom/oplus/camera/t;->g()Lcom/oplus/camera/CameraManager$o;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 316
    iget-object v0, v0, Lcom/oplus/camera/CameraManager$o;->b:Lcom/oplus/camera/capmode/BaseMode;

    invoke-virtual {v0, p1}, Lcom/oplus/camera/capmode/BaseMode;->consumeImage(Lcom/oplus/ocs/camera/CameraPictureCallback$CameraPictureImage;)Z

    move-result p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return p1

    .line 318
    :cond_0
    :try_start_1
    iget-object v0, p0, Lcom/oplus/camera/t;->a:Lcom/oplus/camera/capmode/ModeManager;

    invoke-virtual {v0, p1}, Lcom/oplus/camera/capmode/ModeManager;->b(Lcom/oplus/ocs/camera/CameraPictureCallback$CameraPictureImage;)Z

    move-result p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit p0

    return p1

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method protected declared-synchronized b(Ljava/lang/String;)Z
    .locals 1

    monitor-enter p0

    .line 249
    :try_start_0
    invoke-virtual {p0}, Lcom/oplus/camera/t;->g()Lcom/oplus/camera/CameraManager$o;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 252
    iget-object v0, v0, Lcom/oplus/camera/CameraManager$o;->b:Lcom/oplus/camera/capmode/BaseMode;

    invoke-virtual {v0, p1}, Lcom/oplus/camera/capmode/BaseMode;->getSupportFunction(Ljava/lang/String;)Z

    move-result p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return p1

    .line 254
    :cond_0
    :try_start_1
    iget-object v0, p0, Lcom/oplus/camera/t;->a:Lcom/oplus/camera/capmode/ModeManager;

    invoke-virtual {v0, p1}, Lcom/oplus/camera/capmode/ModeManager;->j(Ljava/lang/String;)Z

    move-result p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit p0

    return p1

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method protected declared-synchronized c()I
    .locals 1

    monitor-enter p0

    .line 125
    :try_start_0
    invoke-virtual {p0}, Lcom/oplus/camera/t;->g()Lcom/oplus/camera/CameraManager$o;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 128
    iget-object v0, v0, Lcom/oplus/camera/CameraManager$o;->b:Lcom/oplus/camera/capmode/BaseMode;

    invoke-virtual {v0}, Lcom/oplus/camera/capmode/BaseMode;->getDefaultAFMode()I

    move-result v0

    goto :goto_0

    .line 130
    :cond_0
    iget-object v0, p0, Lcom/oplus/camera/t;->a:Lcom/oplus/camera/capmode/ModeManager;

    invoke-virtual {v0}, Lcom/oplus/camera/capmode/ModeManager;->R()I

    move-result v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 133
    :goto_0
    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method protected declared-synchronized c(Lcom/oplus/camera/e/h;)Landroid/util/Size;
    .locals 1

    monitor-enter p0

    .line 167
    :try_start_0
    invoke-virtual {p0}, Lcom/oplus/camera/t;->g()Lcom/oplus/camera/CameraManager$o;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 170
    iget-object v0, v0, Lcom/oplus/camera/CameraManager$o;->b:Lcom/oplus/camera/capmode/BaseMode;

    invoke-virtual {v0, p1}, Lcom/oplus/camera/capmode/BaseMode;->getPreviewFrameSize(Lcom/oplus/camera/e/h;)Landroid/util/Size;

    move-result-object p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object p1

    .line 172
    :cond_0
    :try_start_1
    iget-object v0, p0, Lcom/oplus/camera/t;->a:Lcom/oplus/camera/capmode/ModeManager;

    invoke-virtual {v0, p1}, Lcom/oplus/camera/capmode/ModeManager;->b(Lcom/oplus/camera/e/h;)Landroid/util/Size;

    move-result-object p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit p0

    return-object p1

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized c(Lcom/oplus/ocs/camera/CameraPictureCallback$CameraPictureImage;)Z
    .locals 1

    monitor-enter p0

    .line 383
    :try_start_0
    invoke-virtual {p0}, Lcom/oplus/camera/t;->g()Lcom/oplus/camera/CameraManager$o;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 386
    iget-object v0, v0, Lcom/oplus/camera/CameraManager$o;->b:Lcom/oplus/camera/capmode/BaseMode;

    invoke-virtual {v0, p1}, Lcom/oplus/camera/capmode/BaseMode;->onImageReceived(Lcom/oplus/ocs/camera/CameraPictureCallback$CameraPictureImage;)Z

    move-result p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return p1

    .line 388
    :cond_0
    :try_start_1
    iget-object v0, p0, Lcom/oplus/camera/t;->a:Lcom/oplus/camera/capmode/ModeManager;

    invoke-virtual {v0, p1}, Lcom/oplus/camera/capmode/ModeManager;->c(Lcom/oplus/ocs/camera/CameraPictureCallback$CameraPictureImage;)Z

    move-result p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit p0

    return p1

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method protected declared-synchronized d()I
    .locals 1

    monitor-enter p0

    .line 157
    :try_start_0
    invoke-virtual {p0}, Lcom/oplus/camera/t;->g()Lcom/oplus/camera/CameraManager$o;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 160
    iget-object v0, v0, Lcom/oplus/camera/CameraManager$o;->b:Lcom/oplus/camera/capmode/BaseMode;

    invoke-virtual {v0}, Lcom/oplus/camera/capmode/BaseMode;->getOperatingMode()I

    move-result v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return v0

    .line 162
    :cond_0
    :try_start_1
    iget-object v0, p0, Lcom/oplus/camera/t;->a:Lcom/oplus/camera/capmode/ModeManager;

    invoke-virtual {v0}, Lcom/oplus/camera/capmode/ModeManager;->e()I

    move-result v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method protected declared-synchronized e()V
    .locals 1

    monitor-enter p0

    .line 199
    :try_start_0
    invoke-virtual {p0}, Lcom/oplus/camera/t;->g()Lcom/oplus/camera/CameraManager$o;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 202
    iget-object v0, v0, Lcom/oplus/camera/CameraManager$o;->b:Lcom/oplus/camera/capmode/BaseMode;

    invoke-virtual {v0}, Lcom/oplus/camera/capmode/BaseMode;->onSessionConfigured()V

    goto :goto_0

    .line 204
    :cond_0
    iget-object v0, p0, Lcom/oplus/camera/t;->a:Lcom/oplus/camera/capmode/ModeManager;

    invoke-virtual {v0}, Lcom/oplus/camera/capmode/ModeManager;->bo()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 206
    :goto_0
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method protected declared-synchronized f()Z
    .locals 1

    monitor-enter p0

    .line 219
    :try_start_0
    invoke-virtual {p0}, Lcom/oplus/camera/t;->g()Lcom/oplus/camera/CameraManager$o;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 222
    iget-object v0, v0, Lcom/oplus/camera/CameraManager$o;->b:Lcom/oplus/camera/capmode/BaseMode;

    invoke-virtual {v0}, Lcom/oplus/camera/capmode/BaseMode;->isShowBeauty3D()Z

    move-result v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return v0

    .line 224
    :cond_0
    :try_start_1
    iget-object v0, p0, Lcom/oplus/camera/t;->a:Lcom/oplus/camera/capmode/ModeManager;

    invoke-virtual {v0}, Lcom/oplus/camera/capmode/ModeManager;->bq()Z

    move-result v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method protected declared-synchronized g()Lcom/oplus/camera/CameraManager$o;
    .locals 2

    monitor-enter p0

    .line 261
    :try_start_0
    iget-object v0, p0, Lcom/oplus/camera/t;->b:Lcom/oplus/camera/CameraManager$n;

    if-eqz v0, :cond_0

    .line 262
    iget-object v0, p0, Lcom/oplus/camera/t;->b:Lcom/oplus/camera/CameraManager$n;

    invoke-virtual {v0}, Lcom/oplus/camera/CameraManager$n;->h()Lcom/oplus/camera/CameraManager$o;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 264
    iget-object v1, v0, Lcom/oplus/camera/CameraManager$o;->b:Lcom/oplus/camera/capmode/BaseMode;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v1, :cond_0

    .line 265
    monitor-exit p0

    return-object v0

    :cond_0
    const/4 v0, 0x0

    .line 269
    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method protected declared-synchronized h()Lcom/oplus/camera/capmode/BaseMode;
    .locals 2

    monitor-enter p0

    .line 273
    :try_start_0
    invoke-virtual {p0}, Lcom/oplus/camera/t;->g()Lcom/oplus/camera/CameraManager$o;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 276
    iget-object v0, v0, Lcom/oplus/camera/CameraManager$o;->b:Lcom/oplus/camera/capmode/BaseMode;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    .line 278
    :cond_0
    :try_start_1
    iget-object v0, p0, Lcom/oplus/camera/t;->a:Lcom/oplus/camera/capmode/ModeManager;

    iget-object v1, p0, Lcom/oplus/camera/t;->a:Lcom/oplus/camera/capmode/ModeManager;

    invoke-virtual {v1}, Lcom/oplus/camera/capmode/ModeManager;->n()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/oplus/camera/capmode/ModeManager;->a(Ljava/lang/String;)Lcom/oplus/camera/capmode/BaseMode;

    move-result-object v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method protected declared-synchronized i()Ljava/lang/String;
    .locals 1

    monitor-enter p0

    .line 283
    :try_start_0
    invoke-virtual {p0}, Lcom/oplus/camera/t;->g()Lcom/oplus/camera/CameraManager$o;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 286
    iget-object v0, v0, Lcom/oplus/camera/CameraManager$o;->c:Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    .line 288
    :cond_0
    :try_start_1
    iget-object v0, p0, Lcom/oplus/camera/t;->a:Lcom/oplus/camera/capmode/ModeManager;

    invoke-virtual {v0}, Lcom/oplus/camera/capmode/ModeManager;->n()Ljava/lang/String;

    move-result-object v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized j()V
    .locals 1

    monitor-enter p0

    .line 323
    :try_start_0
    invoke-virtual {p0}, Lcom/oplus/camera/t;->g()Lcom/oplus/camera/CameraManager$o;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 326
    iget-object v0, v0, Lcom/oplus/camera/CameraManager$o;->b:Lcom/oplus/camera/capmode/BaseMode;

    invoke-virtual {v0}, Lcom/oplus/camera/capmode/BaseMode;->beforeConfig()V

    goto :goto_0

    .line 328
    :cond_0
    iget-object v0, p0, Lcom/oplus/camera/t;->a:Lcom/oplus/camera/capmode/ModeManager;

    invoke-virtual {v0}, Lcom/oplus/camera/capmode/ModeManager;->dw()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 330
    :goto_0
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized k()Z
    .locals 1

    monitor-enter p0

    .line 343
    :try_start_0
    invoke-virtual {p0}, Lcom/oplus/camera/t;->g()Lcom/oplus/camera/CameraManager$o;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 346
    iget-object v0, v0, Lcom/oplus/camera/CameraManager$o;->b:Lcom/oplus/camera/capmode/BaseMode;

    invoke-virtual {v0}, Lcom/oplus/camera/capmode/BaseMode;->isSatOpen()Z

    move-result v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return v0

    .line 348
    :cond_0
    :try_start_1
    iget-object v0, p0, Lcom/oplus/camera/t;->a:Lcom/oplus/camera/capmode/ModeManager;

    invoke-virtual {v0}, Lcom/oplus/camera/capmode/ModeManager;->isSatOpen()Z

    move-result v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized l()Z
    .locals 1

    monitor-enter p0

    .line 353
    :try_start_0
    invoke-virtual {p0}, Lcom/oplus/camera/t;->g()Lcom/oplus/camera/CameraManager$o;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 356
    iget-object v0, v0, Lcom/oplus/camera/CameraManager$o;->b:Lcom/oplus/camera/capmode/BaseMode;

    invoke-virtual {v0}, Lcom/oplus/camera/capmode/BaseMode;->isMultiVideoMode()Z

    move-result v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return v0

    .line 358
    :cond_0
    :try_start_1
    iget-object v0, p0, Lcom/oplus/camera/t;->a:Lcom/oplus/camera/capmode/ModeManager;

    invoke-virtual {v0}, Lcom/oplus/camera/capmode/ModeManager;->cQ()Z

    move-result v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized m()V
    .locals 1

    monitor-enter p0

    .line 363
    :try_start_0
    invoke-virtual {p0}, Lcom/oplus/camera/t;->g()Lcom/oplus/camera/CameraManager$o;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 366
    iget-object v0, v0, Lcom/oplus/camera/CameraManager$o;->b:Lcom/oplus/camera/capmode/BaseMode;

    invoke-virtual {v0}, Lcom/oplus/camera/capmode/BaseMode;->closeImageReader()V

    goto :goto_0

    .line 368
    :cond_0
    iget-object v0, p0, Lcom/oplus/camera/t;->a:Lcom/oplus/camera/capmode/ModeManager;

    invoke-virtual {v0}, Lcom/oplus/camera/capmode/ModeManager;->ae()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 370
    :goto_0
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized n()Z
    .locals 1

    monitor-enter p0

    .line 373
    :try_start_0
    invoke-virtual {p0}, Lcom/oplus/camera/t;->g()Lcom/oplus/camera/CameraManager$o;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 376
    iget-object v0, v0, Lcom/oplus/camera/CameraManager$o;->b:Lcom/oplus/camera/capmode/BaseMode;

    invoke-virtual {v0}, Lcom/oplus/camera/capmode/BaseMode;->isAutoFocus()Z

    move-result v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return v0

    .line 378
    :cond_0
    :try_start_1
    iget-object v0, p0, Lcom/oplus/camera/t;->a:Lcom/oplus/camera/capmode/ModeManager;

    invoke-virtual {v0}, Lcom/oplus/camera/capmode/ModeManager;->dz()Z

    move-result v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method
