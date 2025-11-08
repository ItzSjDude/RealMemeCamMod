.class public Lcom/oplus/ocs/camera/appinterface/adapter/AlgoSwitchConfigUtil$CaptureConfig;
.super Ljava/lang/Object;
.source "AlgoSwitchConfigUtil.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/oplus/ocs/camera/appinterface/adapter/AlgoSwitchConfigUtil;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "CaptureConfig"
.end annotation


# instance fields
.field mCaptureConfig:Lcom/oplus/ocs/camera/appinterface/adapter/CameraAlgoSwitchConfigUtil$CaptureConfig;


# direct methods
.method public constructor <init>(Lcom/oplus/ocs/camera/appinterface/adapter/CameraAlgoSwitchConfigUtil$CaptureConfig;)V
    .locals 1

    .line 55
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 53
    iput-object v0, p0, Lcom/oplus/ocs/camera/appinterface/adapter/AlgoSwitchConfigUtil$CaptureConfig;->mCaptureConfig:Lcom/oplus/ocs/camera/appinterface/adapter/CameraAlgoSwitchConfigUtil$CaptureConfig;

    .line 56
    iput-object p1, p0, Lcom/oplus/ocs/camera/appinterface/adapter/AlgoSwitchConfigUtil$CaptureConfig;->mCaptureConfig:Lcom/oplus/ocs/camera/appinterface/adapter/CameraAlgoSwitchConfigUtil$CaptureConfig;

    return-void
.end method


# virtual methods
.method public get(Lcom/oplus/ocs/camera/appinterface/adapter/CameraResultParameter$CameraAlgoSwitchConfigKey;)Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/oplus/ocs/camera/appinterface/adapter/CameraResultParameter$CameraAlgoSwitchConfigKey<",
            "TT;>;)TT;"
        }
    .end annotation

    .line 60
    iget-object p0, p0, Lcom/oplus/ocs/camera/appinterface/adapter/AlgoSwitchConfigUtil$CaptureConfig;->mCaptureConfig:Lcom/oplus/ocs/camera/appinterface/adapter/CameraAlgoSwitchConfigUtil$CaptureConfig;

    invoke-virtual {p1}, Lcom/oplus/ocs/camera/appinterface/adapter/CameraResultParameter$CameraAlgoSwitchConfigKey;->getKeyName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1}, Lcom/oplus/ocs/camera/appinterface/adapter/CameraResultParameter$CameraAlgoSwitchConfigKey;->getType()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {p1}, Lcom/oplus/ocs/camera/appinterface/adapter/CameraResultParameter$CameraAlgoSwitchConfigKey;->getDefault()Ljava/lang/Object;

    move-result-object p1

    invoke-virtual {p0, v0, v1, p1}, Lcom/oplus/ocs/camera/appinterface/adapter/CameraAlgoSwitchConfigUtil$CaptureConfig;->get(Ljava/lang/String;Ljava/lang/Class;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method
