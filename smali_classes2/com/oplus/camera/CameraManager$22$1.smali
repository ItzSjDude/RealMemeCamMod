.class Lcom/oplus/camera/CameraManager$22$1;
.super Ljava/lang/Object;
.source "CameraManager.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/oplus/camera/CameraManager$22;->a(Ljava/lang/Integer;Landroid/graphics/Bitmap;JJLandroid/hardware/camera2/CaptureResult;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Landroid/graphics/Bitmap;

.field final synthetic b:Lcom/oplus/camera/CameraManager$22;


# direct methods
.method constructor <init>(Lcom/oplus/camera/CameraManager$22;Landroid/graphics/Bitmap;)V
    .locals 0

    .line 6411
    iput-object p1, p0, Lcom/oplus/camera/CameraManager$22$1;->b:Lcom/oplus/camera/CameraManager$22;

    iput-object p2, p0, Lcom/oplus/camera/CameraManager$22$1;->a:Landroid/graphics/Bitmap;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 6414
    iget-object v0, p0, Lcom/oplus/camera/CameraManager$22$1;->b:Lcom/oplus/camera/CameraManager$22;

    iget-object v0, v0, Lcom/oplus/camera/CameraManager$22;->a:Lcom/oplus/camera/CameraManager;

    invoke-static {v0}, Lcom/oplus/camera/CameraManager;->aL(Lcom/oplus/camera/CameraManager;)Lcom/oplus/camera/CameraManager$g;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 6415
    iget-object v0, p0, Lcom/oplus/camera/CameraManager$22$1;->b:Lcom/oplus/camera/CameraManager$22;

    iget-object v0, v0, Lcom/oplus/camera/CameraManager$22;->a:Lcom/oplus/camera/CameraManager;

    invoke-static {v0}, Lcom/oplus/camera/CameraManager;->aL(Lcom/oplus/camera/CameraManager;)Lcom/oplus/camera/CameraManager$g;

    move-result-object v0

    iget-object v1, p0, Lcom/oplus/camera/CameraManager$22$1;->a:Landroid/graphics/Bitmap;

    iput-object v1, v0, Lcom/oplus/camera/CameraManager$g;->d:Landroid/graphics/Bitmap;

    .line 6416
    iget-object v0, p0, Lcom/oplus/camera/CameraManager$22$1;->b:Lcom/oplus/camera/CameraManager$22;

    iget-object v0, v0, Lcom/oplus/camera/CameraManager$22;->a:Lcom/oplus/camera/CameraManager;

    invoke-static {v0}, Lcom/oplus/camera/CameraManager;->aL(Lcom/oplus/camera/CameraManager;)Lcom/oplus/camera/CameraManager$g;

    move-result-object v0

    const/4 v1, 0x1

    iput-boolean v1, v0, Lcom/oplus/camera/CameraManager$g;->a:Z

    .line 6418
    iget-object v0, p0, Lcom/oplus/camera/CameraManager$22$1;->b:Lcom/oplus/camera/CameraManager$22;

    iget-object v0, v0, Lcom/oplus/camera/CameraManager$22;->a:Lcom/oplus/camera/CameraManager;

    invoke-static {v0}, Lcom/oplus/camera/CameraManager;->aL(Lcom/oplus/camera/CameraManager;)Lcom/oplus/camera/CameraManager$g;

    move-result-object v0

    iget-boolean v0, v0, Lcom/oplus/camera/CameraManager$g;->b:Z

    if-eqz v0, :cond_0

    .line 6419
    iget-object p0, p0, Lcom/oplus/camera/CameraManager$22$1;->b:Lcom/oplus/camera/CameraManager$22;

    iget-object p0, p0, Lcom/oplus/camera/CameraManager$22;->a:Lcom/oplus/camera/CameraManager;

    invoke-static {p0}, Lcom/oplus/camera/CameraManager;->aM(Lcom/oplus/camera/CameraManager;)V

    :cond_0
    return-void
.end method
