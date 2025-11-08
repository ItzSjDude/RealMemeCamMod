.class Lcom/oplus/camera/CameraManager$5;
.super Ljava/lang/Object;
.source "CameraManager.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/oplus/camera/CameraManager;->h()V
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

    .line 2380
    iput-object p1, p0, Lcom/oplus/camera/CameraManager$5;->a:Lcom/oplus/camera/CameraManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .line 2383
    iget-object v0, p0, Lcom/oplus/camera/CameraManager$5;->a:Lcom/oplus/camera/CameraManager;

    invoke-static {v0}, Lcom/oplus/camera/CameraManager;->ac(Lcom/oplus/camera/CameraManager;)Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    .line 2384
    :try_start_0
    iget-object v1, p0, Lcom/oplus/camera/CameraManager$5;->a:Lcom/oplus/camera/CameraManager;

    const/4 v2, 0x0

    invoke-static {v1, v2}, Lcom/oplus/camera/CameraManager;->a(Lcom/oplus/camera/CameraManager;[I)[I

    .line 2385
    iget-object p0, p0, Lcom/oplus/camera/CameraManager$5;->a:Lcom/oplus/camera/CameraManager;

    invoke-static {p0, v2}, Lcom/oplus/camera/CameraManager;->b(Lcom/oplus/camera/CameraManager;[I)[I

    .line 2386
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method
