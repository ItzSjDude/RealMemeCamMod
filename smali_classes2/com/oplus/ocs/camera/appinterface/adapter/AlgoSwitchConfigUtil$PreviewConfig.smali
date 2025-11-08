.class public Lcom/oplus/ocs/camera/appinterface/adapter/AlgoSwitchConfigUtil$PreviewConfig;
.super Ljava/lang/Object;
.source "AlgoSwitchConfigUtil.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/oplus/ocs/camera/appinterface/adapter/AlgoSwitchConfigUtil;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "PreviewConfig"
.end annotation


# instance fields
.field private mComponentMap:Landroid/util/ArrayMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArrayMap<",
            "Ljava/lang/String;",
            "Lcom/oplus/ocs/camera/appinterface/adapter/AlgoSwitchConfigUtil$Component;",
            ">;"
        }
    .end annotation
.end field

.field mPreviewConfig:Lcom/oplus/ocs/camera/appinterface/adapter/CameraAlgoSwitchConfigUtil$PreviewConfig;


# direct methods
.method public constructor <init>(Lcom/oplus/ocs/camera/appinterface/adapter/CameraAlgoSwitchConfigUtil$PreviewConfig;)V
    .locals 5

    .line 33
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 29
    iput-object v0, p0, Lcom/oplus/ocs/camera/appinterface/adapter/AlgoSwitchConfigUtil$PreviewConfig;->mPreviewConfig:Lcom/oplus/ocs/camera/appinterface/adapter/CameraAlgoSwitchConfigUtil$PreviewConfig;

    .line 30
    new-instance v0, Landroid/util/ArrayMap;

    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    iput-object v0, p0, Lcom/oplus/ocs/camera/appinterface/adapter/AlgoSwitchConfigUtil$PreviewConfig;->mComponentMap:Landroid/util/ArrayMap;

    .line 34
    iput-object p1, p0, Lcom/oplus/ocs/camera/appinterface/adapter/AlgoSwitchConfigUtil$PreviewConfig;->mPreviewConfig:Lcom/oplus/ocs/camera/appinterface/adapter/CameraAlgoSwitchConfigUtil$PreviewConfig;

    .line 36
    invoke-virtual {p1}, Lcom/oplus/ocs/camera/appinterface/adapter/CameraAlgoSwitchConfigUtil$PreviewConfig;->getComonentMap()Landroid/util/ArrayMap;

    move-result-object p1

    const/4 v0, 0x0

    .line 38
    :goto_0
    invoke-virtual {p1}, Landroid/util/ArrayMap;->size()I

    move-result v1

    if-ge v0, v1, :cond_0

    .line 39
    iget-object v1, p0, Lcom/oplus/ocs/camera/appinterface/adapter/AlgoSwitchConfigUtil$PreviewConfig;->mComponentMap:Landroid/util/ArrayMap;

    invoke-virtual {p1, v0}, Landroid/util/ArrayMap;->keyAt(I)Ljava/lang/Object;

    move-result-object v2

    new-instance v3, Lcom/oplus/ocs/camera/appinterface/adapter/AlgoSwitchConfigUtil$Component;

    invoke-virtual {p1, v0}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/oplus/ocs/camera/appinterface/adapter/CameraAlgoSwitchConfigUtil$Component;

    invoke-direct {v3, v4}, Lcom/oplus/ocs/camera/appinterface/adapter/AlgoSwitchConfigUtil$Component;-><init>(Lcom/oplus/ocs/camera/appinterface/adapter/CameraAlgoSwitchConfigUtil$Component;)V

    invoke-virtual {v1, v2, v3}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
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

    .line 44
    iget-object p0, p0, Lcom/oplus/ocs/camera/appinterface/adapter/AlgoSwitchConfigUtil$PreviewConfig;->mPreviewConfig:Lcom/oplus/ocs/camera/appinterface/adapter/CameraAlgoSwitchConfigUtil$PreviewConfig;

    invoke-virtual {p1}, Lcom/oplus/ocs/camera/appinterface/adapter/CameraResultParameter$CameraAlgoSwitchConfigKey;->getKeyName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1}, Lcom/oplus/ocs/camera/appinterface/adapter/CameraResultParameter$CameraAlgoSwitchConfigKey;->getType()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {p1}, Lcom/oplus/ocs/camera/appinterface/adapter/CameraResultParameter$CameraAlgoSwitchConfigKey;->getDefault()Ljava/lang/Object;

    move-result-object p1

    invoke-virtual {p0, v0, v1, p1}, Lcom/oplus/ocs/camera/appinterface/adapter/CameraAlgoSwitchConfigUtil$PreviewConfig;->get(Ljava/lang/String;Ljava/lang/Class;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public getComponentMap()Landroid/util/ArrayMap;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroid/util/ArrayMap<",
            "Ljava/lang/String;",
            "Lcom/oplus/ocs/camera/appinterface/adapter/AlgoSwitchConfigUtil$Component;",
            ">;"
        }
    .end annotation

    .line 48
    iget-object p0, p0, Lcom/oplus/ocs/camera/appinterface/adapter/AlgoSwitchConfigUtil$PreviewConfig;->mComponentMap:Landroid/util/ArrayMap;

    return-object p0
.end method
