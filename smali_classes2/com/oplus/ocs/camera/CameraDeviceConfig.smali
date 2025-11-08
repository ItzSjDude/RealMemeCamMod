.class public final Lcom/oplus/ocs/camera/CameraDeviceConfig;
.super Ljava/lang/Object;
.source "CameraDeviceConfig.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/oplus/ocs/camera/CameraDeviceConfig$CameraSurfaceType;,
        Lcom/oplus/ocs/camera/CameraDeviceConfig$VideoConfig;,
        Lcom/oplus/ocs/camera/CameraDeviceConfig$PictureConfig;,
        Lcom/oplus/ocs/camera/CameraDeviceConfig$PreviewConfig;,
        Lcom/oplus/ocs/camera/CameraDeviceConfig$Builder;
    }
.end annotation


# instance fields
.field private mSdkCameraDeviceConfig:Ljava/lang/Object;


# direct methods
.method private constructor <init>(Ljava/lang/Object;)V
    .locals 1

    .line 44
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 38
    iput-object v0, p0, Lcom/oplus/ocs/camera/CameraDeviceConfig;->mSdkCameraDeviceConfig:Ljava/lang/Object;

    .line 45
    iput-object p1, p0, Lcom/oplus/ocs/camera/CameraDeviceConfig;->mSdkCameraDeviceConfig:Ljava/lang/Object;

    return-void
.end method

.method synthetic constructor <init>(Ljava/lang/Object;Lcom/oplus/ocs/camera/CameraDeviceConfig$1;)V
    .locals 0

    .line 37
    invoke-direct {p0, p1}, Lcom/oplus/ocs/camera/CameraDeviceConfig;-><init>(Ljava/lang/Object;)V

    return-void
.end method


# virtual methods
.method getConfig()Ljava/lang/Object;
    .locals 0

    .line 41
    iget-object p0, p0, Lcom/oplus/ocs/camera/CameraDeviceConfig;->mSdkCameraDeviceConfig:Ljava/lang/Object;

    return-object p0
.end method
