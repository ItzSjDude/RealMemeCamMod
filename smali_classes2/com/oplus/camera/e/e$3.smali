.class Lcom/oplus/camera/e/e$3;
.super Ljava/lang/Object;
.source "OneCameraImpl.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/oplus/camera/e/e;->a(Lcom/oplus/ocs/camera/CameraPreviewCallback;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/oplus/ocs/camera/CameraPreviewCallback;

.field final synthetic b:Lcom/oplus/camera/e/e;


# direct methods
.method constructor <init>(Lcom/oplus/camera/e/e;Lcom/oplus/ocs/camera/CameraPreviewCallback;)V
    .locals 0

    .line 1478
    iput-object p1, p0, Lcom/oplus/camera/e/e$3;->b:Lcom/oplus/camera/e/e;

    iput-object p2, p0, Lcom/oplus/camera/e/e$3;->a:Lcom/oplus/ocs/camera/CameraPreviewCallback;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 1481
    iget-object v0, p0, Lcom/oplus/camera/e/e$3;->b:Lcom/oplus/camera/e/e;

    iget v0, v0, Lcom/oplus/camera/e/e;->u:I

    const/4 v1, 0x5

    if-ne v0, v1, :cond_1

    iget-object v0, p0, Lcom/oplus/camera/e/e$3;->b:Lcom/oplus/camera/e/e;

    invoke-static {v0}, Lcom/oplus/camera/e/e;->s(Lcom/oplus/camera/e/e;)Lcom/oplus/ocs/camera/CameraDevice;

    move-result-object v0

    if-nez v0, :cond_0

    goto :goto_0

    .line 1485
    :cond_0
    iget-object v0, p0, Lcom/oplus/camera/e/e$3;->b:Lcom/oplus/camera/e/e;

    iget-object p0, p0, Lcom/oplus/camera/e/e$3;->a:Lcom/oplus/ocs/camera/CameraPreviewCallback;

    invoke-static {v0, p0}, Lcom/oplus/camera/e/e;->a(Lcom/oplus/camera/e/e;Lcom/oplus/ocs/camera/CameraPreviewCallback;)V

    :cond_1
    :goto_0
    return-void
.end method
