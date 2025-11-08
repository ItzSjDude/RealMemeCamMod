.class Lcom/oplus/camera/CameraManager$63$1;
.super Ljava/lang/Object;
.source "CameraManager.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/oplus/camera/CameraManager$63;->i()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/oplus/camera/CameraManager$63;


# direct methods
.method constructor <init>(Lcom/oplus/camera/CameraManager$63;)V
    .locals 0

    .line 20340
    iput-object p1, p0, Lcom/oplus/camera/CameraManager$63$1;->a:Lcom/oplus/camera/CameraManager$63;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .line 20343
    iget-object v0, p0, Lcom/oplus/camera/CameraManager$63$1;->a:Lcom/oplus/camera/CameraManager$63;

    iget-object v0, v0, Lcom/oplus/camera/CameraManager$63;->a:Lcom/oplus/camera/CameraManager;

    const/4 v1, 0x1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/oplus/camera/CameraManager;->e(ZZ)V

    .line 20344
    iget-object v0, p0, Lcom/oplus/camera/CameraManager$63$1;->a:Lcom/oplus/camera/CameraManager$63;

    iget-object v0, v0, Lcom/oplus/camera/CameraManager$63;->a:Lcom/oplus/camera/CameraManager;

    invoke-virtual {v0, v1}, Lcom/oplus/camera/CameraManager;->w(Z)V

    .line 20346
    iget-object v0, p0, Lcom/oplus/camera/CameraManager$63$1;->a:Lcom/oplus/camera/CameraManager$63;

    iget-object v0, v0, Lcom/oplus/camera/CameraManager$63;->a:Lcom/oplus/camera/CameraManager;

    invoke-static {v0}, Lcom/oplus/camera/CameraManager;->g(Lcom/oplus/camera/CameraManager;)Lcom/oplus/camera/ui/d;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 20347
    iget-object p0, p0, Lcom/oplus/camera/CameraManager$63$1;->a:Lcom/oplus/camera/CameraManager$63;

    iget-object p0, p0, Lcom/oplus/camera/CameraManager$63;->a:Lcom/oplus/camera/CameraManager;

    invoke-static {p0}, Lcom/oplus/camera/CameraManager;->g(Lcom/oplus/camera/CameraManager;)Lcom/oplus/camera/ui/d;

    move-result-object p0

    invoke-virtual {p0, v1, v1}, Lcom/oplus/camera/ui/d;->d(ZZ)V

    :cond_0
    return-void
.end method
