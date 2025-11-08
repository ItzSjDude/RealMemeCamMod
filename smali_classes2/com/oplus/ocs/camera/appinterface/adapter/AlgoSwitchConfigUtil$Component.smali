.class public Lcom/oplus/ocs/camera/appinterface/adapter/AlgoSwitchConfigUtil$Component;
.super Ljava/lang/Object;
.source "AlgoSwitchConfigUtil.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/oplus/ocs/camera/appinterface/adapter/AlgoSwitchConfigUtil;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Component"
.end annotation


# instance fields
.field private mComponent:Lcom/oplus/ocs/camera/appinterface/adapter/CameraAlgoSwitchConfigUtil$Component;


# direct methods
.method constructor <init>(Lcom/oplus/ocs/camera/appinterface/adapter/CameraAlgoSwitchConfigUtil$Component;)V
    .locals 1

    .line 67
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 65
    iput-object v0, p0, Lcom/oplus/ocs/camera/appinterface/adapter/AlgoSwitchConfigUtil$Component;->mComponent:Lcom/oplus/ocs/camera/appinterface/adapter/CameraAlgoSwitchConfigUtil$Component;

    .line 68
    iput-object p1, p0, Lcom/oplus/ocs/camera/appinterface/adapter/AlgoSwitchConfigUtil$Component;->mComponent:Lcom/oplus/ocs/camera/appinterface/adapter/CameraAlgoSwitchConfigUtil$Component;

    return-void
.end method


# virtual methods
.method public get(Lcom/oplus/ocs/camera/appinterface/adapter/CameraResultParameter$CameraAlgoSwitchConfigKey;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/oplus/ocs/camera/appinterface/adapter/CameraResultParameter$CameraAlgoSwitchConfigKey<",
            "TT;>;)TT;"
        }
    .end annotation

    .line 72
    iget-object p0, p0, Lcom/oplus/ocs/camera/appinterface/adapter/AlgoSwitchConfigUtil$Component;->mComponent:Lcom/oplus/ocs/camera/appinterface/adapter/CameraAlgoSwitchConfigUtil$Component;

    invoke-virtual {p1}, Lcom/oplus/ocs/camera/appinterface/adapter/CameraResultParameter$CameraAlgoSwitchConfigKey;->getKeyName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1}, Lcom/oplus/ocs/camera/appinterface/adapter/CameraResultParameter$CameraAlgoSwitchConfigKey;->getType()Ljava/lang/Class;

    move-result-object p1

    invoke-virtual {p0, v0, p1}, Lcom/oplus/ocs/camera/appinterface/adapter/CameraAlgoSwitchConfigUtil$Component;->get(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method
