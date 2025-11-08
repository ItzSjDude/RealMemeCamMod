.class public Lcom/oplus/camera/aps/util/AlgoSwitchConfig$PreviewConfig;
.super Ljava/lang/Object;
.source "AlgoSwitchConfig.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/oplus/camera/aps/util/AlgoSwitchConfig;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "PreviewConfig"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/oplus/camera/aps/util/AlgoSwitchConfig$PreviewConfig$Component;
    }
.end annotation


# instance fields
.field public mCameraId:I

.field public mCameraMode:Ljava/lang/String;

.field public mCameraNum:I

.field public mComponentMap:Landroid/util/ArrayMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArrayMap<",
            "Ljava/lang/String;",
            "Lcom/oplus/camera/aps/util/AlgoSwitchConfig$PreviewConfig$Component;",
            ">;"
        }
    .end annotation
.end field

.field public mIsSeparateStreamForPrevAndVideo:I


# direct methods
.method constructor <init>(Lcom/oplus/ocs/camera/appinterface/adapter/AlgoSwitchConfigUtil$PreviewConfig;)V
    .locals 5

    .line 91
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 85
    iput-object v0, p0, Lcom/oplus/camera/aps/util/AlgoSwitchConfig$PreviewConfig;->mCameraMode:Ljava/lang/String;

    const/4 v0, -0x1

    .line 86
    iput v0, p0, Lcom/oplus/camera/aps/util/AlgoSwitchConfig$PreviewConfig;->mCameraId:I

    .line 87
    iput v0, p0, Lcom/oplus/camera/aps/util/AlgoSwitchConfig$PreviewConfig;->mCameraNum:I

    const/4 v0, 0x0

    .line 88
    iput v0, p0, Lcom/oplus/camera/aps/util/AlgoSwitchConfig$PreviewConfig;->mIsSeparateStreamForPrevAndVideo:I

    .line 89
    new-instance v1, Landroid/util/ArrayMap;

    invoke-direct {v1}, Landroid/util/ArrayMap;-><init>()V

    iput-object v1, p0, Lcom/oplus/camera/aps/util/AlgoSwitchConfig$PreviewConfig;->mComponentMap:Landroid/util/ArrayMap;

    .line 92
    sget-object v1, Lcom/oplus/camera/aps/constant/CameraUnitKeys;->KEY_PREVIEW_CONFIG_CAMERA_MODE:Lcom/oplus/ocs/camera/appinterface/adapter/CameraResultParameter$CameraAlgoSwitchConfigKey;

    invoke-virtual {p1, v1}, Lcom/oplus/ocs/camera/appinterface/adapter/AlgoSwitchConfigUtil$PreviewConfig;->get(Lcom/oplus/ocs/camera/appinterface/adapter/CameraResultParameter$CameraAlgoSwitchConfigKey;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    iput-object v1, p0, Lcom/oplus/camera/aps/util/AlgoSwitchConfig$PreviewConfig;->mCameraMode:Ljava/lang/String;

    .line 93
    sget-object v1, Lcom/oplus/camera/aps/constant/CameraUnitKeys;->KEY_PREVIEW_CONFIG_CAMERA_ID:Lcom/oplus/ocs/camera/appinterface/adapter/CameraResultParameter$CameraAlgoSwitchConfigKey;

    invoke-virtual {p1, v1}, Lcom/oplus/ocs/camera/appinterface/adapter/AlgoSwitchConfigUtil$PreviewConfig;->get(Lcom/oplus/ocs/camera/appinterface/adapter/CameraResultParameter$CameraAlgoSwitchConfigKey;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    iput v1, p0, Lcom/oplus/camera/aps/util/AlgoSwitchConfig$PreviewConfig;->mCameraId:I

    .line 94
    sget-object v1, Lcom/oplus/camera/aps/constant/CameraUnitKeys;->KEY_PREVIEW_CONFIG_CAMERA_NUM:Lcom/oplus/ocs/camera/appinterface/adapter/CameraResultParameter$CameraAlgoSwitchConfigKey;

    invoke-virtual {p1, v1}, Lcom/oplus/ocs/camera/appinterface/adapter/AlgoSwitchConfigUtil$PreviewConfig;->get(Lcom/oplus/ocs/camera/appinterface/adapter/CameraResultParameter$CameraAlgoSwitchConfigKey;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    iput v1, p0, Lcom/oplus/camera/aps/util/AlgoSwitchConfig$PreviewConfig;->mCameraNum:I

    .line 95
    sget-object v1, Lcom/oplus/camera/aps/constant/CameraUnitKeys;->KEY_PREVIEW_CONFIG_CAMERA_PREV_VIDEO:Lcom/oplus/ocs/camera/appinterface/adapter/CameraResultParameter$CameraAlgoSwitchConfigKey;

    invoke-virtual {p1, v1}, Lcom/oplus/ocs/camera/appinterface/adapter/AlgoSwitchConfigUtil$PreviewConfig;->get(Lcom/oplus/ocs/camera/appinterface/adapter/CameraResultParameter$CameraAlgoSwitchConfigKey;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    iput v1, p0, Lcom/oplus/camera/aps/util/AlgoSwitchConfig$PreviewConfig;->mIsSeparateStreamForPrevAndVideo:I

    .line 97
    invoke-virtual {p1}, Lcom/oplus/ocs/camera/appinterface/adapter/AlgoSwitchConfigUtil$PreviewConfig;->getComponentMap()Landroid/util/ArrayMap;

    move-result-object p1

    .line 98
    :goto_0
    invoke-virtual {p1}, Landroid/util/ArrayMap;->size()I

    move-result v1

    if-ge v0, v1, :cond_0

    .line 99
    iget-object v1, p0, Lcom/oplus/camera/aps/util/AlgoSwitchConfig$PreviewConfig;->mComponentMap:Landroid/util/ArrayMap;

    invoke-virtual {p1, v0}, Landroid/util/ArrayMap;->keyAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    new-instance v3, Lcom/oplus/camera/aps/util/AlgoSwitchConfig$PreviewConfig$Component;

    invoke-virtual {p1, v0}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/oplus/ocs/camera/appinterface/adapter/AlgoSwitchConfigUtil$Component;

    invoke-direct {v3, v4}, Lcom/oplus/camera/aps/util/AlgoSwitchConfig$PreviewConfig$Component;-><init>(Lcom/oplus/ocs/camera/appinterface/adapter/AlgoSwitchConfigUtil$Component;)V

    invoke-virtual {v1, v2, v3}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method


# virtual methods
.method public toString()Ljava/lang/String;
    .locals 2

    .line 105
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "mCameraMode: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/oplus/camera/aps/util/AlgoSwitchConfig$PreviewConfig;->mCameraMode:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", mCameraId: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/oplus/camera/aps/util/AlgoSwitchConfig$PreviewConfig;->mCameraId:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", mCameraNum: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/oplus/camera/aps/util/AlgoSwitchConfig$PreviewConfig;->mCameraNum:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", mIsSeparateStreamForPrevAndVideo: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/oplus/camera/aps/util/AlgoSwitchConfig$PreviewConfig;->mIsSeparateStreamForPrevAndVideo:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", mComponentMap: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/oplus/camera/aps/util/AlgoSwitchConfig$PreviewConfig;->mComponentMap:Landroid/util/ArrayMap;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
