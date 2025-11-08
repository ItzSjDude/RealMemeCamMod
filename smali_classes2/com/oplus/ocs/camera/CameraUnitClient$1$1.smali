.class Lcom/oplus/ocs/camera/CameraUnitClient$1$1;
.super Lcom/oplus/ocs/base/IAuthenticationListener$Stub;
.source "CameraUnitClient.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/oplus/ocs/camera/CameraUnitClient$1;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/oplus/ocs/camera/CameraUnitClient$1;


# direct methods
.method constructor <init>(Lcom/oplus/ocs/camera/CameraUnitClient$1;)V
    .locals 0

    .line 346
    iput-object p1, p0, Lcom/oplus/ocs/camera/CameraUnitClient$1$1;->this$1:Lcom/oplus/ocs/camera/CameraUnitClient$1;

    invoke-direct {p0}, Lcom/oplus/ocs/base/IAuthenticationListener$Stub;-><init>()V

    return-void
.end method


# virtual methods
.method public onFail(I)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 356
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "handleAsyncAuthenticate, onFailed errorCode: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "CameraUnitClient"

    invoke-static {v1, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 358
    iget-object p0, p0, Lcom/oplus/ocs/camera/CameraUnitClient$1$1;->this$1:Lcom/oplus/ocs/camera/CameraUnitClient$1;

    iget-object p0, p0, Lcom/oplus/ocs/camera/CameraUnitClient$1;->this$0:Lcom/oplus/ocs/camera/CameraUnitClient;

    invoke-static {p0, p1}, Lcom/oplus/ocs/camera/CameraUnitClient;->access$100(Lcom/oplus/ocs/camera/CameraUnitClient;I)V

    return-void
.end method

.method public onSuccess(Lcom/oplus/ocs/base/common/CapabilityInfo;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    const-string p1, "CameraUnitClient"

    const-string v0, "handleAsyncAuthenticate, onSuccess"

    .line 349
    invoke-static {p1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 351
    iget-object p0, p0, Lcom/oplus/ocs/camera/CameraUnitClient$1$1;->this$1:Lcom/oplus/ocs/camera/CameraUnitClient$1;

    iget-object p0, p0, Lcom/oplus/ocs/camera/CameraUnitClient$1;->this$0:Lcom/oplus/ocs/camera/CameraUnitClient;

    invoke-static {p0}, Lcom/oplus/ocs/camera/CameraUnitClient;->access$000(Lcom/oplus/ocs/camera/CameraUnitClient;)V

    return-void
.end method
