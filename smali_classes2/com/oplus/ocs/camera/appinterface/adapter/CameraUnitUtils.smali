.class public Lcom/oplus/ocs/camera/appinterface/adapter/CameraUnitUtils;
.super Ljava/lang/Object;
.source "CameraUnitUtils.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getVendorTagConfig(Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .line 15
    invoke-static {p0}, Lcom/oplus/ocs/camera/appinterface/adapter/CameraAdapterUtils;->getVendorTagConfig(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static initConfigData()V
    .locals 0

    .line 7
    invoke-static {}, Lcom/oplus/ocs/camera/appinterface/adapter/CameraAdapterUtils;->initConfigData()V

    return-void
.end method

.method public static initConfigData(Landroid/content/Context;)V
    .locals 0

    .line 11
    invoke-static {p0}, Lcom/oplus/ocs/camera/appinterface/adapter/CameraAdapterUtils;->initConfigData(Landroid/content/Context;)V

    return-void
.end method

.method public static setVendorTagConfigRus(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 0

    .line 19
    invoke-static {p0, p1}, Lcom/oplus/ocs/camera/appinterface/adapter/CameraAdapterUtils;->setVendorTagConfigRus(Ljava/lang/String;Ljava/lang/String;)Z

    move-result p0

    return p0
.end method
