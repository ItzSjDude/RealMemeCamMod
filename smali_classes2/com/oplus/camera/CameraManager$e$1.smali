.class Lcom/oplus/camera/CameraManager$e$1;
.super Ljava/lang/Object;
.source "CameraManager.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/oplus/camera/CameraManager$e;->a(I)V
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

    .line 11193
    iput-object p1, p0, Lcom/oplus/camera/CameraManager$e$1;->a:Lcom/oplus/camera/CameraManager$e;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 11196
    iget-object v0, p0, Lcom/oplus/camera/CameraManager$e$1;->a:Lcom/oplus/camera/CameraManager$e;

    iget-object v0, v0, Lcom/oplus/camera/CameraManager$e;->a:Lcom/oplus/camera/CameraManager;

    invoke-static {v0}, Lcom/oplus/camera/CameraManager;->e(Lcom/oplus/camera/CameraManager;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 11200
    :cond_0
    iget-object v0, p0, Lcom/oplus/camera/CameraManager$e$1;->a:Lcom/oplus/camera/CameraManager$e;

    iget-object v0, v0, Lcom/oplus/camera/CameraManager$e;->a:Lcom/oplus/camera/CameraManager;

    invoke-static {v0}, Lcom/oplus/camera/CameraManager;->g(Lcom/oplus/camera/CameraManager;)Lcom/oplus/camera/ui/d;

    move-result-object v0

    const-string v1, "pref_video_size_key"

    invoke-virtual {v0, v1}, Lcom/oplus/camera/ui/d;->f(Ljava/lang/String;)V

    .line 11201
    iget-object v0, p0, Lcom/oplus/camera/CameraManager$e$1;->a:Lcom/oplus/camera/CameraManager$e;

    iget-object v0, v0, Lcom/oplus/camera/CameraManager$e;->a:Lcom/oplus/camera/CameraManager;

    invoke-static {v0}, Lcom/oplus/camera/CameraManager;->g(Lcom/oplus/camera/CameraManager;)Lcom/oplus/camera/ui/d;

    move-result-object v0

    const-string v1, "pref_video_fps_key"

    invoke-virtual {v0, v1}, Lcom/oplus/camera/ui/d;->f(Ljava/lang/String;)V

    .line 11202
    iget-object v0, p0, Lcom/oplus/camera/CameraManager$e$1;->a:Lcom/oplus/camera/CameraManager$e;

    iget-object v0, v0, Lcom/oplus/camera/CameraManager$e;->a:Lcom/oplus/camera/CameraManager;

    invoke-static {v0}, Lcom/oplus/camera/CameraManager;->bM(Lcom/oplus/camera/CameraManager;)V

    .line 11203
    iget-object v0, p0, Lcom/oplus/camera/CameraManager$e$1;->a:Lcom/oplus/camera/CameraManager$e;

    iget-object v0, v0, Lcom/oplus/camera/CameraManager$e;->a:Lcom/oplus/camera/CameraManager;

    invoke-static {v0}, Lcom/oplus/camera/CameraManager;->g(Lcom/oplus/camera/CameraManager;)Lcom/oplus/camera/ui/d;

    move-result-object v0

    iget-object v1, p0, Lcom/oplus/camera/CameraManager$e$1;->a:Lcom/oplus/camera/CameraManager$e;

    iget-object v1, v1, Lcom/oplus/camera/CameraManager$e;->a:Lcom/oplus/camera/CameraManager;

    invoke-static {v1}, Lcom/oplus/camera/CameraManager;->U(Lcom/oplus/camera/CameraManager;)Lcom/oplus/camera/t;

    move-result-object v1

    iget-object p0, p0, Lcom/oplus/camera/CameraManager$e$1;->a:Lcom/oplus/camera/CameraManager$e;

    iget-object p0, p0, Lcom/oplus/camera/CameraManager$e;->a:Lcom/oplus/camera/CameraManager;

    invoke-static {p0}, Lcom/oplus/camera/CameraManager;->aF(Lcom/oplus/camera/CameraManager;)Lcom/oplus/camera/e/h;

    move-result-object p0

    invoke-virtual {v1, p0}, Lcom/oplus/camera/t;->a(Lcom/oplus/camera/e/h;)Landroid/util/Size;

    move-result-object p0

    invoke-virtual {v0, p0}, Lcom/oplus/camera/ui/d;->c(Landroid/util/Size;)V

    return-void
.end method
