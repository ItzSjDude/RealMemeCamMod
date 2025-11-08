.class public Lcom/oplus/camera/aps/util/AlgoSwitchConfig;
.super Ljava/lang/Object;
.source "AlgoSwitchConfig.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/oplus/camera/aps/util/AlgoSwitchConfig$PreviewConfig;,
        Lcom/oplus/camera/aps/util/AlgoSwitchConfig$CaptureConfig;
    }
.end annotation


# static fields
.field public static final APS_MODE_CAPTURE:I = 0x2

.field public static final APS_MODE_FULL:I = 0x1

.field public static final APS_MODE_NONE:I = 0x0

.field public static final APS_MODE_PREVIEW:I = 0x3

.field public static final APS_PIPELINE_ASD:Ljava/lang/String; = "asd"

.field public static final APS_PIPELINE_PREVIEW:Ljava/lang/String; = "preview"

.field public static final APS_PIPELINE_VIDEO:Ljava/lang/String; = "video"

.field public static final APS_VERSION_2:I = 0x2

.field public static final APS_VERSION_3:I = 0x3


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 13
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getApsVersion()I
    .locals 1

    .line 39
    invoke-static {}, Lcom/oplus/ocs/camera/appinterface/adapter/CameraUnitAlgoSwitchConfig;->getApsVersion()I

    move-result v0

    return v0
.end method

.method public static getCaptureConfig(Ljava/lang/String;I)Lcom/oplus/camera/aps/util/AlgoSwitchConfig$CaptureConfig;
    .locals 1

    .line 51
    new-instance v0, Lcom/oplus/camera/aps/util/AlgoSwitchConfig$CaptureConfig;

    invoke-static {p0, p1}, Lcom/oplus/ocs/camera/appinterface/adapter/CameraUnitAlgoSwitchConfig;->getCaptureConfig(Ljava/lang/String;I)Lcom/oplus/ocs/camera/appinterface/adapter/AlgoSwitchConfigUtil$CaptureConfig;

    move-result-object p0

    invoke-direct {v0, p0}, Lcom/oplus/camera/aps/util/AlgoSwitchConfig$CaptureConfig;-><init>(Lcom/oplus/ocs/camera/appinterface/adapter/AlgoSwitchConfigUtil$CaptureConfig;)V

    return-object v0
.end method

.method public static getPreviewConfig(Ljava/lang/String;I)Lcom/oplus/camera/aps/util/AlgoSwitchConfig$PreviewConfig;
    .locals 1

    .line 55
    new-instance v0, Lcom/oplus/camera/aps/util/AlgoSwitchConfig$PreviewConfig;

    invoke-static {p0, p1}, Lcom/oplus/ocs/camera/appinterface/adapter/CameraUnitAlgoSwitchConfig;->getPreviewConfig(Ljava/lang/String;I)Lcom/oplus/ocs/camera/appinterface/adapter/AlgoSwitchConfigUtil$PreviewConfig;

    move-result-object p0

    invoke-direct {v0, p0}, Lcom/oplus/camera/aps/util/AlgoSwitchConfig$PreviewConfig;-><init>(Lcom/oplus/ocs/camera/appinterface/adapter/AlgoSwitchConfigUtil$PreviewConfig;)V

    return-object v0
.end method

.method public static getPreviewConfig(Ljava/lang/String;ILandroid/util/Size;Landroid/util/Size;ZZZ)Lcom/oplus/camera/aps/util/AlgoSwitchConfig$PreviewConfig;
    .locals 1

    .line 60
    new-instance v0, Lcom/oplus/camera/aps/util/AlgoSwitchConfig$PreviewConfig;

    invoke-static/range {p0 .. p6}, Lcom/oplus/ocs/camera/appinterface/adapter/CameraUnitAlgoSwitchConfig;->getPreviewConfig(Ljava/lang/String;ILandroid/util/Size;Landroid/util/Size;ZZZ)Lcom/oplus/ocs/camera/appinterface/adapter/AlgoSwitchConfigUtil$PreviewConfig;

    move-result-object p0

    invoke-direct {v0, p0}, Lcom/oplus/camera/aps/util/AlgoSwitchConfig$PreviewConfig;-><init>(Lcom/oplus/ocs/camera/appinterface/adapter/AlgoSwitchConfigUtil$PreviewConfig;)V

    return-object v0
.end method

.method public static getSupportApsCapture()Z
    .locals 1

    .line 43
    invoke-static {}, Lcom/oplus/ocs/camera/appinterface/adapter/CameraUnitAlgoSwitchConfig;->getSupportApsCapture()Z

    move-result v0

    return v0
.end method

.method public static getSupportApsPreview()Z
    .locals 1

    .line 47
    invoke-static {}, Lcom/oplus/ocs/camera/appinterface/adapter/CameraUnitAlgoSwitchConfig;->getSupportApsPreview()Z

    move-result v0

    return v0
.end method

.method public static getSupportCameraFeature(Ljava/lang/String;I)Z
    .locals 0

    .line 31
    invoke-static {p0, p1}, Lcom/oplus/ocs/camera/appinterface/adapter/CameraUnitAlgoSwitchConfig;->getSupportCameraFeature(Ljava/lang/String;I)Z

    move-result p0

    return p0
.end method

.method public static getSupportCaptureAlgo(Ljava/lang/String;ILjava/lang/String;)Z
    .locals 0

    .line 27
    invoke-static {p0, p1, p2}, Lcom/oplus/ocs/camera/appinterface/adapter/CameraUnitAlgoSwitchConfig;->getSupportCaptureAlgo(Ljava/lang/String;ILjava/lang/String;)Z

    move-result p0

    return p0
.end method

.method public static getSupportPreviewAlgo(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)Z
    .locals 0

    .line 35
    invoke-static {p0, p1, p2, p3}, Lcom/oplus/ocs/camera/appinterface/adapter/CameraUnitAlgoSwitchConfig;->getSupportPreviewAlgo(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)Z

    move-result p0

    return p0
.end method
