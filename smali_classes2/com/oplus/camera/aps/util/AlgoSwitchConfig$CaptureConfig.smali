.class public Lcom/oplus/camera/aps/util/AlgoSwitchConfig$CaptureConfig;
.super Ljava/lang/Object;
.source "AlgoSwitchConfig.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/oplus/camera/aps/util/AlgoSwitchConfig;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "CaptureConfig"
.end annotation


# instance fields
.field public mAlgos:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public mCameraId:I

.field public mCameraMode:Ljava/lang/String;

.field public mbEnable:Z


# direct methods
.method constructor <init>(Lcom/oplus/ocs/camera/appinterface/adapter/AlgoSwitchConfigUtil$CaptureConfig;)V
    .locals 1

    .line 70
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 65
    iput-object v0, p0, Lcom/oplus/camera/aps/util/AlgoSwitchConfig$CaptureConfig;->mCameraMode:Ljava/lang/String;

    const/4 v0, -0x1

    .line 66
    iput v0, p0, Lcom/oplus/camera/aps/util/AlgoSwitchConfig$CaptureConfig;->mCameraId:I

    const/4 v0, 0x1

    .line 67
    iput-boolean v0, p0, Lcom/oplus/camera/aps/util/AlgoSwitchConfig$CaptureConfig;->mbEnable:Z

    .line 68
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/oplus/camera/aps/util/AlgoSwitchConfig$CaptureConfig;->mAlgos:Ljava/util/Set;

    .line 71
    sget-object v0, Lcom/oplus/camera/aps/constant/CameraUnitKeys;->KEY_CAPTURE_CONFIG_CAMERA_MODE:Lcom/oplus/ocs/camera/appinterface/adapter/CameraResultParameter$CameraAlgoSwitchConfigKey;

    invoke-virtual {p1, v0}, Lcom/oplus/ocs/camera/appinterface/adapter/AlgoSwitchConfigUtil$CaptureConfig;->get(Lcom/oplus/ocs/camera/appinterface/adapter/CameraResultParameter$CameraAlgoSwitchConfigKey;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iput-object v0, p0, Lcom/oplus/camera/aps/util/AlgoSwitchConfig$CaptureConfig;->mCameraMode:Ljava/lang/String;

    .line 72
    sget-object v0, Lcom/oplus/camera/aps/constant/CameraUnitKeys;->KEY_CAPTURE_CONFIG_CAMERA_ID:Lcom/oplus/ocs/camera/appinterface/adapter/CameraResultParameter$CameraAlgoSwitchConfigKey;

    invoke-virtual {p1, v0}, Lcom/oplus/ocs/camera/appinterface/adapter/AlgoSwitchConfigUtil$CaptureConfig;->get(Lcom/oplus/ocs/camera/appinterface/adapter/CameraResultParameter$CameraAlgoSwitchConfigKey;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    iput v0, p0, Lcom/oplus/camera/aps/util/AlgoSwitchConfig$CaptureConfig;->mCameraId:I

    .line 73
    sget-object v0, Lcom/oplus/camera/aps/constant/CameraUnitKeys;->KEY_CAPTURE_CONFIG_ENABLE:Lcom/oplus/ocs/camera/appinterface/adapter/CameraResultParameter$CameraAlgoSwitchConfigKey;

    invoke-virtual {p1, v0}, Lcom/oplus/ocs/camera/appinterface/adapter/AlgoSwitchConfigUtil$CaptureConfig;->get(Lcom/oplus/ocs/camera/appinterface/adapter/CameraResultParameter$CameraAlgoSwitchConfigKey;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    iput-boolean v0, p0, Lcom/oplus/camera/aps/util/AlgoSwitchConfig$CaptureConfig;->mbEnable:Z

    .line 74
    iget-object p0, p0, Lcom/oplus/camera/aps/util/AlgoSwitchConfig$CaptureConfig;->mAlgos:Ljava/util/Set;

    sget-object v0, Lcom/oplus/camera/aps/constant/CameraUnitKeys;->KEY_CAPTURE_CONFIG_ALGO:Lcom/oplus/ocs/camera/appinterface/adapter/CameraResultParameter$CameraAlgoSwitchConfigKey;

    invoke-virtual {p1, v0}, Lcom/oplus/ocs/camera/appinterface/adapter/AlgoSwitchConfigUtil$CaptureConfig;->get(Lcom/oplus/ocs/camera/appinterface/adapter/CameraResultParameter$CameraAlgoSwitchConfigKey;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/Collection;

    invoke-interface {p0, p1}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    return-void
.end method


# virtual methods
.method public toString()Ljava/lang/String;
    .locals 2

    .line 79
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "mCameraMode: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/oplus/camera/aps/util/AlgoSwitchConfig$CaptureConfig;->mCameraMode:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", mCameraId: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/oplus/camera/aps/util/AlgoSwitchConfig$CaptureConfig;->mCameraId:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", mbEnable: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/oplus/camera/aps/util/AlgoSwitchConfig$CaptureConfig;->mbEnable:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", mAlgos: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/oplus/camera/aps/util/AlgoSwitchConfig$CaptureConfig;->mAlgos:Ljava/util/Set;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
