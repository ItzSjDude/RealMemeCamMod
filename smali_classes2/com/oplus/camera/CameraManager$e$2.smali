.class Lcom/oplus/camera/CameraManager$e$2;
.super Ljava/lang/Object;
.source "CameraManager.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/oplus/camera/CameraManager$e;->a(ZI)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/oplus/camera/CameraManager$e;


# direct methods
.method constructor <init>(Lcom/oplus/camera/CameraManager$e;)V
    .locals 0

    .line 11251
    iput-object p1, p0, Lcom/oplus/camera/CameraManager$e$2;->a:Lcom/oplus/camera/CameraManager$e;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 11254
    iget-object v0, p0, Lcom/oplus/camera/CameraManager$e$2;->a:Lcom/oplus/camera/CameraManager$e;

    iget-object v0, v0, Lcom/oplus/camera/CameraManager$e;->a:Lcom/oplus/camera/CameraManager;

    invoke-static {v0}, Lcom/oplus/camera/CameraManager;->a(Lcom/oplus/camera/CameraManager;)Landroid/app/Activity;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/oplus/camera/CameraManager$e$2;->a:Lcom/oplus/camera/CameraManager$e;

    iget-object v0, v0, Lcom/oplus/camera/CameraManager$e;->a:Lcom/oplus/camera/CameraManager;

    invoke-static {v0}, Lcom/oplus/camera/CameraManager;->a(Lcom/oplus/camera/CameraManager;)Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->isFinishing()Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "CameraManager"

    const-string v1, "onFailure, camera will finish"

    .line 11255
    invoke-static {v0, v1}, Lcom/oplus/camera/e;->f(Ljava/lang/String;Ljava/lang/String;)V

    .line 11257
    iget-object p0, p0, Lcom/oplus/camera/CameraManager$e$2;->a:Lcom/oplus/camera/CameraManager$e;

    iget-object p0, p0, Lcom/oplus/camera/CameraManager$e;->a:Lcom/oplus/camera/CameraManager;

    invoke-static {p0}, Lcom/oplus/camera/CameraManager;->a(Lcom/oplus/camera/CameraManager;)Landroid/app/Activity;

    move-result-object p0

    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    :cond_0
    return-void
.end method
