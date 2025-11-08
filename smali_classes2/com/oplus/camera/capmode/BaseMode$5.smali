.class Lcom/oplus/camera/capmode/BaseMode$5;
.super Ljava/lang/Object;
.source "BaseMode.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/oplus/camera/capmode/BaseMode;->onCaptureStarted(Landroid/hardware/camera2/CameraCaptureSession;Landroid/hardware/camera2/CaptureRequest;JJ)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/oplus/camera/capmode/BaseMode;


# direct methods
.method constructor <init>(Lcom/oplus/camera/capmode/BaseMode;)V
    .locals 0

    .line 1261
    iput-object p1, p0, Lcom/oplus/camera/capmode/BaseMode$5;->a:Lcom/oplus/camera/capmode/BaseMode;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .line 1264
    iget-object v0, p0, Lcom/oplus/camera/capmode/BaseMode$5;->a:Lcom/oplus/camera/capmode/BaseMode;

    iget-boolean v0, v0, Lcom/oplus/camera/capmode/BaseMode;->mbPaused:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/oplus/camera/capmode/BaseMode$5;->a:Lcom/oplus/camera/capmode/BaseMode;

    iget-object v0, v0, Lcom/oplus/camera/capmode/BaseMode;->mCameraUIInterface:Lcom/oplus/camera/ui/CameraUIInterface;

    if-eqz v0, :cond_0

    .line 1265
    iget-object p0, p0, Lcom/oplus/camera/capmode/BaseMode$5;->a:Lcom/oplus/camera/capmode/BaseMode;

    iget-object p0, p0, Lcom/oplus/camera/capmode/BaseMode;->mCameraUIInterface:Lcom/oplus/camera/ui/CameraUIInterface;

    invoke-interface {p0}, Lcom/oplus/camera/ui/CameraUIInterface;->o()V

    :cond_0
    return-void
.end method
