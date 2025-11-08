.class Lcom/oplus/camera/CameraManager$22;
.super Lcom/oplus/camera/gl/t$b;
.source "CameraManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/oplus/camera/CameraManager;->S()V
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

    .line 6398
    iput-object p1, p0, Lcom/oplus/camera/CameraManager$22;->a:Lcom/oplus/camera/CameraManager;

    invoke-direct {p0}, Lcom/oplus/camera/gl/t$b;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Ljava/lang/Integer;Landroid/graphics/Bitmap;JJLandroid/hardware/camera2/CaptureResult;)V
    .locals 0

    const-string p1, "CaptureOnePreview"

    .line 6402
    invoke-static {p1}, Lcom/oplus/camera/e;->b(Ljava/lang/String;)V

    .line 6404
    iget-object p1, p0, Lcom/oplus/camera/CameraManager$22;->a:Lcom/oplus/camera/CameraManager;

    invoke-static {p1}, Lcom/oplus/camera/CameraManager;->e(Lcom/oplus/camera/CameraManager;)Z

    move-result p1

    if-nez p1, :cond_0

    iget-object p1, p0, Lcom/oplus/camera/CameraManager$22;->a:Lcom/oplus/camera/CameraManager;

    invoke-static {p1}, Lcom/oplus/camera/CameraManager;->aL(Lcom/oplus/camera/CameraManager;)Lcom/oplus/camera/CameraManager$g;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 6405
    iget-object p1, p0, Lcom/oplus/camera/CameraManager$22;->a:Lcom/oplus/camera/CameraManager;

    invoke-virtual {p1}, Lcom/oplus/camera/CameraManager;->P()I

    move-result p1

    .line 6406
    invoke-virtual {p2}, Landroid/graphics/Bitmap;->getWidth()I

    move-result p3

    div-int/2addr p3, p1

    .line 6407
    invoke-virtual {p2}, Landroid/graphics/Bitmap;->getHeight()I

    move-result p4

    div-int/2addr p4, p1

    const/4 p1, 0x0

    .line 6406
    invoke-static {p2, p3, p4, p1}, Landroid/graphics/Bitmap;->createScaledBitmap(Landroid/graphics/Bitmap;IIZ)Landroid/graphics/Bitmap;

    move-result-object p1

    .line 6408
    iget-object p2, p0, Lcom/oplus/camera/CameraManager$22;->a:Lcom/oplus/camera/CameraManager;

    invoke-static {p2}, Lcom/oplus/camera/CameraManager;->j(Lcom/oplus/camera/CameraManager;)Lcom/oplus/camera/w/b;

    move-result-object p2

    const/4 p3, 0x1

    invoke-virtual {p2, p3}, Lcom/oplus/camera/w/b;->removeMessages(I)V

    .line 6410
    iget-object p2, p0, Lcom/oplus/camera/CameraManager$22;->a:Lcom/oplus/camera/CameraManager;

    invoke-static {p2}, Lcom/oplus/camera/CameraManager;->j(Lcom/oplus/camera/CameraManager;)Lcom/oplus/camera/w/b;

    move-result-object p2

    if-eqz p2, :cond_1

    .line 6411
    iget-object p2, p0, Lcom/oplus/camera/CameraManager$22;->a:Lcom/oplus/camera/CameraManager;

    invoke-static {p2}, Lcom/oplus/camera/CameraManager;->j(Lcom/oplus/camera/CameraManager;)Lcom/oplus/camera/w/b;

    move-result-object p2

    new-instance p3, Lcom/oplus/camera/CameraManager$22$1;

    invoke-direct {p3, p0, p1}, Lcom/oplus/camera/CameraManager$22$1;-><init>(Lcom/oplus/camera/CameraManager$22;Landroid/graphics/Bitmap;)V

    invoke-virtual {p2, p3}, Lcom/oplus/camera/w/b;->a(Ljava/lang/Runnable;)V

    goto :goto_0

    :cond_0
    const-string p0, "CameraManager"

    const-string p1, "setSwitchPreviewCb, onPreviewCaptured, mCameraSwitch is null"

    .line 6426
    invoke-static {p0, p1}, Lcom/oplus/camera/e;->f(Ljava/lang/String;Ljava/lang/String;)V

    :cond_1
    :goto_0
    return-void
.end method
