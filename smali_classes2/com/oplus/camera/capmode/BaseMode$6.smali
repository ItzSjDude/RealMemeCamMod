.class Lcom/oplus/camera/capmode/BaseMode$6;
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
.field final synthetic a:Z

.field final synthetic b:Z

.field final synthetic c:Lcom/oplus/camera/capmode/BaseMode;


# direct methods
.method constructor <init>(Lcom/oplus/camera/capmode/BaseMode;ZZ)V
    .locals 0

    .line 1273
    iput-object p1, p0, Lcom/oplus/camera/capmode/BaseMode$6;->c:Lcom/oplus/camera/capmode/BaseMode;

    iput-boolean p2, p0, Lcom/oplus/camera/capmode/BaseMode$6;->a:Z

    iput-boolean p3, p0, Lcom/oplus/camera/capmode/BaseMode$6;->b:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 1276
    iget-object v0, p0, Lcom/oplus/camera/capmode/BaseMode$6;->c:Lcom/oplus/camera/capmode/BaseMode;

    iget-boolean v1, p0, Lcom/oplus/camera/capmode/BaseMode$6;->a:Z

    iget-boolean p0, p0, Lcom/oplus/camera/capmode/BaseMode$6;->b:Z

    invoke-virtual {v0, v1, p0}, Lcom/oplus/camera/capmode/BaseMode;->shutterCallback(ZZ)V

    return-void
.end method
