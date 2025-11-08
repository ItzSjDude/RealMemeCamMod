.class Lcom/oplus/camera/e/e$10;
.super Ljava/lang/Object;
.source "OneCameraImpl.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/oplus/camera/e/e;->o()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/oplus/camera/e/e;


# direct methods
.method constructor <init>(Lcom/oplus/camera/e/e;)V
    .locals 0

    .line 976
    iput-object p1, p0, Lcom/oplus/camera/e/e$10;->a:Lcom/oplus/camera/e/e;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .line 979
    iget-object v0, p0, Lcom/oplus/camera/e/e$10;->a:Lcom/oplus/camera/e/e;

    invoke-static {v0}, Lcom/oplus/camera/e/e;->s(Lcom/oplus/camera/e/e;)Lcom/oplus/ocs/camera/CameraDevice;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 980
    iget-object v0, p0, Lcom/oplus/camera/e/e$10;->a:Lcom/oplus/camera/e/e;

    sget-object v1, Landroid/hardware/camera2/CaptureRequest;->CONTROL_AF_TRIGGER:Landroid/hardware/camera2/CaptureRequest$Key;

    const/4 v2, 0x2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/oplus/camera/e/e;->c(Landroid/hardware/camera2/CaptureRequest$Key;Ljava/lang/Object;)V

    .line 981
    iget-object p0, p0, Lcom/oplus/camera/e/e$10;->a:Lcom/oplus/camera/e/e;

    invoke-static {p0}, Lcom/oplus/camera/e/e;->x(Lcom/oplus/camera/e/e;)Lcom/oplus/ocs/camera/CameraPreviewCallback;

    move-result-object v0

    const/4 v1, 0x1

    invoke-static {p0, v0, v1}, Lcom/oplus/camera/e/e;->a(Lcom/oplus/camera/e/e;Lcom/oplus/ocs/camera/CameraPreviewCallback;I)V

    :cond_0
    return-void
.end method
