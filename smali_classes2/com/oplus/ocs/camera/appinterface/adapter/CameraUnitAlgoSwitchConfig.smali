.class public Lcom/oplus/ocs/camera/appinterface/adapter/CameraUnitAlgoSwitchConfig;
.super Ljava/lang/Object;
.source "CameraUnitAlgoSwitchConfig.java"


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

    .line 26
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getApsVersion()I
    .locals 1

    .line 60
    invoke-static {}, Lcom/oplus/ocs/camera/appinterface/adapter/CameraAlgoSwitchConfig;->getApsVersion()I

    move-result v0

    return v0
.end method

.method public static getCaptureConfig(Ljava/lang/String;I)Lcom/oplus/ocs/camera/appinterface/adapter/AlgoSwitchConfigUtil$CaptureConfig;
    .locals 1

    .line 56
    new-instance v0, Lcom/oplus/ocs/camera/appinterface/adapter/AlgoSwitchConfigUtil$CaptureConfig;

    invoke-static {p0, p1}, Lcom/oplus/ocs/camera/appinterface/adapter/CameraAlgoSwitchConfig;->getCaptureConfig(Ljava/lang/String;I)Lcom/oplus/ocs/camera/appinterface/adapter/CameraAlgoSwitchConfigUtil$CaptureConfig;

    move-result-object p0

    invoke-direct {v0, p0}, Lcom/oplus/ocs/camera/appinterface/adapter/AlgoSwitchConfigUtil$CaptureConfig;-><init>(Lcom/oplus/ocs/camera/appinterface/adapter/CameraAlgoSwitchConfigUtil$CaptureConfig;)V

    return-object v0
.end method

.method public static getPreviewConfig(Ljava/lang/String;I)Lcom/oplus/ocs/camera/appinterface/adapter/AlgoSwitchConfigUtil$PreviewConfig;
    .locals 1

    .line 69
    new-instance v0, Lcom/oplus/ocs/camera/appinterface/adapter/AlgoSwitchConfigUtil$PreviewConfig;

    invoke-static {p0, p1}, Lcom/oplus/ocs/camera/appinterface/adapter/CameraAlgoSwitchConfig;->getPreviewConfig(Ljava/lang/String;I)Lcom/oplus/ocs/camera/appinterface/adapter/CameraAlgoSwitchConfigUtil$PreviewConfig;

    move-result-object p0

    invoke-direct {v0, p0}, Lcom/oplus/ocs/camera/appinterface/adapter/AlgoSwitchConfigUtil$PreviewConfig;-><init>(Lcom/oplus/ocs/camera/appinterface/adapter/CameraAlgoSwitchConfigUtil$PreviewConfig;)V

    return-object v0
.end method

.method public static getPreviewConfig(Ljava/lang/String;ILandroid/util/Size;Landroid/util/Size;ZZZ)Lcom/oplus/ocs/camera/appinterface/adapter/AlgoSwitchConfigUtil$PreviewConfig;
    .locals 1

    .line 75
    new-instance v0, Lcom/oplus/ocs/camera/appinterface/adapter/AlgoSwitchConfigUtil$PreviewConfig;

    invoke-static/range {p0 .. p6}, Lcom/oplus/ocs/camera/appinterface/adapter/CameraAlgoSwitchConfig;->getPreviewConfig(Ljava/lang/String;ILandroid/util/Size;Landroid/util/Size;ZZZ)Lcom/oplus/ocs/camera/appinterface/adapter/CameraAlgoSwitchConfigUtil$PreviewConfig;

    move-result-object p0

    invoke-direct {v0, p0}, Lcom/oplus/ocs/camera/appinterface/adapter/AlgoSwitchConfigUtil$PreviewConfig;-><init>(Lcom/oplus/ocs/camera/appinterface/adapter/CameraAlgoSwitchConfigUtil$PreviewConfig;)V

    return-object v0
.end method

.method public static getSupportApsCapture()Z
    .locals 1

    .line 64
    invoke-static {}, Lcom/oplus/ocs/camera/appinterface/adapter/CameraAlgoSwitchConfig;->getSupportApsCapture()Z

    move-result v0

    return v0
.end method

.method public static getSupportApsPreview()Z
    .locals 1

    .line 52
    invoke-static {}, Lcom/oplus/ocs/camera/appinterface/adapter/CameraAlgoSwitchConfig;->getSupportApsPreview()Z

    move-result v0

    return v0
.end method

.method public static getSupportCameraFeature(Ljava/lang/String;I)Z
    .locals 0

    .line 44
    invoke-static {p0, p1}, Lcom/oplus/ocs/camera/appinterface/adapter/CameraAlgoSwitchConfig;->getSupportCameraFeature(Ljava/lang/String;I)Z

    move-result p0

    return p0
.end method

.method public static getSupportCaptureAlgo(Ljava/lang/String;ILjava/lang/String;)Z
    .locals 0

    .line 40
    invoke-static {p0, p1, p2}, Lcom/oplus/ocs/camera/appinterface/adapter/CameraAlgoSwitchConfig;->getSupportCaptureAlgo(Ljava/lang/String;ILjava/lang/String;)Z

    move-result p0

    return p0
.end method

.method public static getSupportPreviewAlgo(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)Z
    .locals 0

    .line 48
    invoke-static {p0, p1, p2, p3}, Lcom/oplus/ocs/camera/appinterface/adapter/CameraAlgoSwitchConfig;->getSupportPreviewAlgo(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)Z

    move-result p0

    return p0
.end method
