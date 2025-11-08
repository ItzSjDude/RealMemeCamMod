.class Lcom/oplus/camera/CameraManager$29;
.super Lcom/oplus/camera/gl/t$b;
.source "CameraManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/oplus/camera/CameraManager;->ab()V
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

    .line 7196
    iput-object p1, p0, Lcom/oplus/camera/CameraManager$29;->a:Lcom/oplus/camera/CameraManager;

    invoke-direct {p0}, Lcom/oplus/camera/gl/t$b;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Ljava/lang/Integer;Landroid/graphics/Bitmap;JJLandroid/hardware/camera2/CaptureResult;)V
    .locals 0

    .line 7200
    invoke-static {p2}, Lcom/oplus/camera/ui/preview/g;->c(Landroid/graphics/Bitmap;)V

    .line 7201
    iget-object p1, p0, Lcom/oplus/camera/CameraManager$29;->a:Lcom/oplus/camera/CameraManager;

    invoke-static {p1}, Lcom/oplus/camera/CameraManager;->aN(Lcom/oplus/camera/CameraManager;)Landroid/os/ConditionVariable;

    move-result-object p1

    invoke-virtual {p1}, Landroid/os/ConditionVariable;->open()V

    .line 7202
    iget-object p0, p0, Lcom/oplus/camera/CameraManager$29;->a:Lcom/oplus/camera/CameraManager;

    const/4 p1, 0x1

    invoke-static {p0, p1}, Lcom/oplus/camera/CameraManager;->j(Lcom/oplus/camera/CameraManager;Z)Z

    return-void
.end method
