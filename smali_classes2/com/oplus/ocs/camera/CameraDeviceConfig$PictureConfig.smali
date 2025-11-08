.class public final Lcom/oplus/ocs/camera/CameraDeviceConfig$PictureConfig;
.super Ljava/lang/Object;
.source "CameraDeviceConfig.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/oplus/ocs/camera/CameraDeviceConfig;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "PictureConfig"
.end annotation


# instance fields
.field private mCameraType:Ljava/lang/String;

.field private mPictureFormat:I

.field private mPictureSize:Landroid/util/Size;


# direct methods
.method public constructor <init>(Ljava/lang/String;Landroid/util/Size;I)V
    .locals 1

    .line 206
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 202
    iput-object v0, p0, Lcom/oplus/ocs/camera/CameraDeviceConfig$PictureConfig;->mCameraType:Ljava/lang/String;

    .line 203
    iput-object v0, p0, Lcom/oplus/ocs/camera/CameraDeviceConfig$PictureConfig;->mPictureSize:Landroid/util/Size;

    const/4 v0, 0x0

    .line 204
    iput v0, p0, Lcom/oplus/ocs/camera/CameraDeviceConfig$PictureConfig;->mPictureFormat:I

    .line 207
    iput-object p1, p0, Lcom/oplus/ocs/camera/CameraDeviceConfig$PictureConfig;->mCameraType:Ljava/lang/String;

    .line 208
    iput-object p2, p0, Lcom/oplus/ocs/camera/CameraDeviceConfig$PictureConfig;->mPictureSize:Landroid/util/Size;

    .line 209
    iput p3, p0, Lcom/oplus/ocs/camera/CameraDeviceConfig$PictureConfig;->mPictureFormat:I

    return-void
.end method


# virtual methods
.method public getCameraType()Ljava/lang/String;
    .locals 0

    .line 213
    iget-object p0, p0, Lcom/oplus/ocs/camera/CameraDeviceConfig$PictureConfig;->mCameraType:Ljava/lang/String;

    return-object p0
.end method

.method public getPictureFormat()I
    .locals 0

    .line 221
    iget p0, p0, Lcom/oplus/ocs/camera/CameraDeviceConfig$PictureConfig;->mPictureFormat:I

    return p0
.end method

.method public getPictureSize()Landroid/util/Size;
    .locals 0

    .line 217
    iget-object p0, p0, Lcom/oplus/ocs/camera/CameraDeviceConfig$PictureConfig;->mPictureSize:Landroid/util/Size;

    return-object p0
.end method
