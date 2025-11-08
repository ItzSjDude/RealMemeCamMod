.class public final Lcom/oplus/ocs/camera/CameraPictureCallbackAdapterV2$CameraPictureImageV2;
.super Lcom/oplus/ocs/camera/CameraImageAdapter;
.source "CameraPictureCallbackAdapterV2.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/oplus/ocs/camera/CameraPictureCallbackAdapterV2;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "CameraPictureImageV2"
.end annotation


# instance fields
.field private mCameraImage:Lcom/oplus/ocs/camera/common/util/CameraImage;


# direct methods
.method constructor <init>(Lcom/oplus/ocs/camera/common/util/CameraImage;)V
    .locals 1

    .line 148
    invoke-direct {p0}, Lcom/oplus/ocs/camera/CameraImageAdapter;-><init>()V

    const/4 v0, 0x0

    .line 146
    iput-object v0, p0, Lcom/oplus/ocs/camera/CameraPictureCallbackAdapterV2$CameraPictureImageV2;->mCameraImage:Lcom/oplus/ocs/camera/common/util/CameraImage;

    .line 149
    iput-object p1, p0, Lcom/oplus/ocs/camera/CameraPictureCallbackAdapterV2$CameraPictureImageV2;->mCameraImage:Lcom/oplus/ocs/camera/common/util/CameraImage;

    return-void
.end method


# virtual methods
.method public getCameraType()Ljava/lang/String;
    .locals 0

    .line 185
    iget-object p0, p0, Lcom/oplus/ocs/camera/CameraPictureCallbackAdapterV2$CameraPictureImageV2;->mCameraImage:Lcom/oplus/ocs/camera/common/util/CameraImage;

    invoke-virtual {p0}, Lcom/oplus/ocs/camera/common/util/CameraImage;->getCameraType()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public getFormat()I
    .locals 0

    .line 157
    iget-object p0, p0, Lcom/oplus/ocs/camera/CameraPictureCallbackAdapterV2$CameraPictureImageV2;->mCameraImage:Lcom/oplus/ocs/camera/common/util/CameraImage;

    invoke-virtual {p0}, Lcom/oplus/ocs/camera/common/util/CameraImage;->getFormat()I

    move-result p0

    return p0
.end method

.method public getHeight()I
    .locals 0

    .line 165
    iget-object p0, p0, Lcom/oplus/ocs/camera/CameraPictureCallbackAdapterV2$CameraPictureImageV2;->mCameraImage:Lcom/oplus/ocs/camera/common/util/CameraImage;

    invoke-virtual {p0}, Lcom/oplus/ocs/camera/common/util/CameraImage;->getHeight()I

    move-result p0

    return p0
.end method

.method public getImage()[B
    .locals 0

    .line 153
    iget-object p0, p0, Lcom/oplus/ocs/camera/CameraPictureCallbackAdapterV2$CameraPictureImageV2;->mCameraImage:Lcom/oplus/ocs/camera/common/util/CameraImage;

    invoke-virtual {p0}, Lcom/oplus/ocs/camera/common/util/CameraImage;->getImage()[B

    move-result-object p0

    return-object p0
.end method

.method public getOrientation()I
    .locals 0

    .line 177
    iget-object p0, p0, Lcom/oplus/ocs/camera/CameraPictureCallbackAdapterV2$CameraPictureImageV2;->mCameraImage:Lcom/oplus/ocs/camera/common/util/CameraImage;

    invoke-virtual {p0}, Lcom/oplus/ocs/camera/common/util/CameraImage;->getOrientation()I

    move-result p0

    return p0
.end method

.method public getScanline()I
    .locals 0

    .line 173
    iget-object p0, p0, Lcom/oplus/ocs/camera/CameraPictureCallbackAdapterV2$CameraPictureImageV2;->mCameraImage:Lcom/oplus/ocs/camera/common/util/CameraImage;

    invoke-virtual {p0}, Lcom/oplus/ocs/camera/common/util/CameraImage;->getScanline()I

    move-result p0

    return p0
.end method

.method public getSourceType()I
    .locals 0

    .line 189
    iget-object p0, p0, Lcom/oplus/ocs/camera/CameraPictureCallbackAdapterV2$CameraPictureImageV2;->mCameraImage:Lcom/oplus/ocs/camera/common/util/CameraImage;

    invoke-virtual {p0}, Lcom/oplus/ocs/camera/common/util/CameraImage;->getSourceType()I

    move-result p0

    return p0
.end method

.method public getStride()I
    .locals 0

    .line 169
    iget-object p0, p0, Lcom/oplus/ocs/camera/CameraPictureCallbackAdapterV2$CameraPictureImageV2;->mCameraImage:Lcom/oplus/ocs/camera/common/util/CameraImage;

    invoke-virtual {p0}, Lcom/oplus/ocs/camera/common/util/CameraImage;->getStride()I

    move-result p0

    return p0
.end method

.method public getTimestamp()J
    .locals 2

    .line 181
    iget-object p0, p0, Lcom/oplus/ocs/camera/CameraPictureCallbackAdapterV2$CameraPictureImageV2;->mCameraImage:Lcom/oplus/ocs/camera/common/util/CameraImage;

    invoke-virtual {p0}, Lcom/oplus/ocs/camera/common/util/CameraImage;->getTimestamp()J

    move-result-wide v0

    return-wide v0
.end method

.method public getWidth()I
    .locals 0

    .line 161
    iget-object p0, p0, Lcom/oplus/ocs/camera/CameraPictureCallbackAdapterV2$CameraPictureImageV2;->mCameraImage:Lcom/oplus/ocs/camera/common/util/CameraImage;

    invoke-virtual {p0}, Lcom/oplus/ocs/camera/common/util/CameraImage;->getWidth()I

    move-result p0

    return p0
.end method
