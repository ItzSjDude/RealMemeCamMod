.class Lcom/oplus/ocs/camera/CameraDeviceConfigAdapter;
.super Ljava/lang/Object;
.source "CameraDeviceConfigAdapter.java"


# instance fields
.field private mCameraDeviceConfigBuilder:Lcom/oplus/ocs/camera/common/parameter/SdkCameraDeviceConfig$Builder;


# direct methods
.method constructor <init>()V
    .locals 1

    .line 19
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 17
    iput-object v0, p0, Lcom/oplus/ocs/camera/CameraDeviceConfigAdapter;->mCameraDeviceConfigBuilder:Lcom/oplus/ocs/camera/common/parameter/SdkCameraDeviceConfig$Builder;

    .line 20
    new-instance v0, Lcom/oplus/ocs/camera/common/parameter/SdkCameraDeviceConfig$Builder;

    invoke-direct {v0}, Lcom/oplus/ocs/camera/common/parameter/SdkCameraDeviceConfig$Builder;-><init>()V

    iput-object v0, p0, Lcom/oplus/ocs/camera/CameraDeviceConfigAdapter;->mCameraDeviceConfigBuilder:Lcom/oplus/ocs/camera/common/parameter/SdkCameraDeviceConfig$Builder;

    return-void
.end method


# virtual methods
.method public build()Ljava/lang/Object;
    .locals 0

    .line 106
    iget-object p0, p0, Lcom/oplus/ocs/camera/CameraDeviceConfigAdapter;->mCameraDeviceConfigBuilder:Lcom/oplus/ocs/camera/common/parameter/SdkCameraDeviceConfig$Builder;

    invoke-virtual {p0}, Lcom/oplus/ocs/camera/common/parameter/SdkCameraDeviceConfig$Builder;->build()Lcom/oplus/ocs/camera/common/parameter/SdkCameraDeviceConfig;

    move-result-object p0

    return-object p0
.end method

.method public setMode(Ljava/lang/String;)V
    .locals 0

    .line 30
    iget-object p0, p0, Lcom/oplus/ocs/camera/CameraDeviceConfigAdapter;->mCameraDeviceConfigBuilder:Lcom/oplus/ocs/camera/common/parameter/SdkCameraDeviceConfig$Builder;

    invoke-virtual {p0, p1}, Lcom/oplus/ocs/camera/common/parameter/SdkCameraDeviceConfig$Builder;->setModeName(Ljava/lang/String;)V

    return-void
.end method

.method public setParameter(Lcom/oplus/ocs/camera/CameraParameter$ConfigureKey;Ljava/lang/Object;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/oplus/ocs/camera/CameraParameter$ConfigureKey<",
            "TT;>;TT;)V"
        }
    .end annotation

    .line 97
    iget-object p0, p0, Lcom/oplus/ocs/camera/CameraDeviceConfigAdapter;->mCameraDeviceConfigBuilder:Lcom/oplus/ocs/camera/common/parameter/SdkCameraDeviceConfig$Builder;

    invoke-virtual {p1}, Lcom/oplus/ocs/camera/CameraParameter$ConfigureKey;->getKeyName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1, p2}, Lcom/oplus/ocs/camera/common/parameter/SdkCameraDeviceConfig$Builder;->setParameter(Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method

.method public setPictureConfig(Ljava/util/List;)V
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/oplus/ocs/camera/CameraDeviceConfig$PictureConfig;",
            ">;)V"
        }
    .end annotation

    .line 58
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 60
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/oplus/ocs/camera/CameraDeviceConfig$PictureConfig;

    .line 61
    new-instance v8, Lcom/oplus/ocs/camera/common/surface/SurfaceWrapper;

    const/4 v3, 0x0

    invoke-virtual {v1}, Lcom/oplus/ocs/camera/CameraDeviceConfig$PictureConfig;->getCameraType()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1}, Lcom/oplus/ocs/camera/CameraDeviceConfig$PictureConfig;->getPictureSize()Landroid/util/Size;

    move-result-object v5

    .line 62
    invoke-virtual {v1}, Lcom/oplus/ocs/camera/CameraDeviceConfig$PictureConfig;->getPictureFormat()I

    move-result v6

    const/4 v7, 0x3

    move-object v2, v8

    invoke-direct/range {v2 .. v7}, Lcom/oplus/ocs/camera/common/surface/SurfaceWrapper;-><init>(Landroid/view/Surface;Ljava/lang/String;Landroid/util/Size;II)V

    .line 61
    invoke-interface {v0, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 65
    :cond_0
    iget-object p0, p0, Lcom/oplus/ocs/camera/CameraDeviceConfigAdapter;->mCameraDeviceConfigBuilder:Lcom/oplus/ocs/camera/common/parameter/SdkCameraDeviceConfig$Builder;

    invoke-virtual {p0, v0}, Lcom/oplus/ocs/camera/common/parameter/SdkCameraDeviceConfig$Builder;->setPictureSurfaces(Ljava/util/List;)V

    return-void
.end method

.method public setPreviewConfig(Ljava/util/List;)V
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/oplus/ocs/camera/CameraDeviceConfig$PreviewConfig;",
            ">;)V"
        }
    .end annotation

    .line 41
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 43
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/oplus/ocs/camera/CameraDeviceConfig$PreviewConfig;

    .line 44
    new-instance v8, Lcom/oplus/ocs/camera/common/surface/SurfaceWrapper;

    invoke-virtual {v1}, Lcom/oplus/ocs/camera/CameraDeviceConfig$PreviewConfig;->getPreviewSurface()Landroid/view/Surface;

    move-result-object v3

    invoke-virtual {v1}, Lcom/oplus/ocs/camera/CameraDeviceConfig$PreviewConfig;->getCameraType()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1}, Lcom/oplus/ocs/camera/CameraDeviceConfig$PreviewConfig;->getPreviewSize()Landroid/util/Size;

    move-result-object v5

    .line 45
    invoke-virtual {v1}, Lcom/oplus/ocs/camera/CameraDeviceConfig$PreviewConfig;->getFormat()I

    move-result v6

    invoke-virtual {v1}, Lcom/oplus/ocs/camera/CameraDeviceConfig$PreviewConfig;->getSurfaceType()I

    move-result v7

    move-object v2, v8

    invoke-direct/range {v2 .. v7}, Lcom/oplus/ocs/camera/common/surface/SurfaceWrapper;-><init>(Landroid/view/Surface;Ljava/lang/String;Landroid/util/Size;II)V

    .line 44
    invoke-interface {v0, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 48
    :cond_0
    iget-object p0, p0, Lcom/oplus/ocs/camera/CameraDeviceConfigAdapter;->mCameraDeviceConfigBuilder:Lcom/oplus/ocs/camera/common/parameter/SdkCameraDeviceConfig$Builder;

    invoke-virtual {p0, v0}, Lcom/oplus/ocs/camera/common/parameter/SdkCameraDeviceConfig$Builder;->setPreviewSurfaces(Ljava/util/List;)V

    return-void
.end method

.method public setVideoConfig(Lcom/oplus/ocs/camera/CameraDeviceConfig$VideoConfig;)V
    .locals 7

    if-eqz p1, :cond_0

    .line 71
    iget-object p0, p0, Lcom/oplus/ocs/camera/CameraDeviceConfigAdapter;->mCameraDeviceConfigBuilder:Lcom/oplus/ocs/camera/common/parameter/SdkCameraDeviceConfig$Builder;

    new-instance v6, Lcom/oplus/ocs/camera/common/surface/SurfaceWrapper;

    .line 72
    invoke-virtual {p1}, Lcom/oplus/ocs/camera/CameraDeviceConfig$VideoConfig;->getVideoSurface()Landroid/view/Surface;

    move-result-object v1

    invoke-virtual {p1}, Lcom/oplus/ocs/camera/CameraDeviceConfig$VideoConfig;->getCameraType()Ljava/lang/String;

    move-result-object v2

    .line 73
    invoke-virtual {p1}, Lcom/oplus/ocs/camera/CameraDeviceConfig$VideoConfig;->getVideoSize()Landroid/util/Size;

    move-result-object v3

    const/4 v4, 0x0

    const/4 v5, 0x4

    move-object v0, v6

    invoke-direct/range {v0 .. v5}, Lcom/oplus/ocs/camera/common/surface/SurfaceWrapper;-><init>(Landroid/view/Surface;Ljava/lang/String;Landroid/util/Size;II)V

    .line 71
    invoke-virtual {p0, v6}, Lcom/oplus/ocs/camera/common/parameter/SdkCameraDeviceConfig$Builder;->setVideoSurface(Lcom/oplus/ocs/camera/common/surface/SurfaceWrapper;)V

    :cond_0
    return-void
.end method

.method public setVideoSize(Landroid/util/Size;)V
    .locals 0

    .line 85
    iget-object p0, p0, Lcom/oplus/ocs/camera/CameraDeviceConfigAdapter;->mCameraDeviceConfigBuilder:Lcom/oplus/ocs/camera/common/parameter/SdkCameraDeviceConfig$Builder;

    invoke-virtual {p0, p1}, Lcom/oplus/ocs/camera/common/parameter/SdkCameraDeviceConfig$Builder;->setVideoSize(Landroid/util/Size;)V

    return-void
.end method
