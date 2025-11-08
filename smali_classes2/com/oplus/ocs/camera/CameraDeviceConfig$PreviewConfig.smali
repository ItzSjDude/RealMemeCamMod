.class public final Lcom/oplus/ocs/camera/CameraDeviceConfig$PreviewConfig;
.super Ljava/lang/Object;
.source "CameraDeviceConfig.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/oplus/ocs/camera/CameraDeviceConfig;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "PreviewConfig"
.end annotation


# instance fields
.field private mCameraType:Ljava/lang/String;

.field private mImageFormat:I

.field private mPreviewSize:Landroid/util/Size;

.field private mPreviewSurface:Landroid/view/Surface;

.field private mSurfaceType:I


# direct methods
.method public constructor <init>(Ljava/lang/String;Landroid/util/Size;I)V
    .locals 1

    .line 153
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 138
    iput-object v0, p0, Lcom/oplus/ocs/camera/CameraDeviceConfig$PreviewConfig;->mCameraType:Ljava/lang/String;

    .line 139
    iput-object v0, p0, Lcom/oplus/ocs/camera/CameraDeviceConfig$PreviewConfig;->mPreviewSize:Landroid/util/Size;

    .line 140
    iput-object v0, p0, Lcom/oplus/ocs/camera/CameraDeviceConfig$PreviewConfig;->mPreviewSurface:Landroid/view/Surface;

    const/4 v0, 0x0

    .line 141
    iput v0, p0, Lcom/oplus/ocs/camera/CameraDeviceConfig$PreviewConfig;->mSurfaceType:I

    .line 142
    iput v0, p0, Lcom/oplus/ocs/camera/CameraDeviceConfig$PreviewConfig;->mImageFormat:I

    .line 154
    iput-object p1, p0, Lcom/oplus/ocs/camera/CameraDeviceConfig$PreviewConfig;->mCameraType:Ljava/lang/String;

    .line 155
    iput-object p2, p0, Lcom/oplus/ocs/camera/CameraDeviceConfig$PreviewConfig;->mPreviewSize:Landroid/util/Size;

    .line 156
    iput p3, p0, Lcom/oplus/ocs/camera/CameraDeviceConfig$PreviewConfig;->mSurfaceType:I

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Landroid/view/Surface;Landroid/util/Size;II)V
    .locals 1

    .line 168
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 138
    iput-object v0, p0, Lcom/oplus/ocs/camera/CameraDeviceConfig$PreviewConfig;->mCameraType:Ljava/lang/String;

    .line 139
    iput-object v0, p0, Lcom/oplus/ocs/camera/CameraDeviceConfig$PreviewConfig;->mPreviewSize:Landroid/util/Size;

    .line 140
    iput-object v0, p0, Lcom/oplus/ocs/camera/CameraDeviceConfig$PreviewConfig;->mPreviewSurface:Landroid/view/Surface;

    const/4 v0, 0x0

    .line 141
    iput v0, p0, Lcom/oplus/ocs/camera/CameraDeviceConfig$PreviewConfig;->mSurfaceType:I

    .line 142
    iput v0, p0, Lcom/oplus/ocs/camera/CameraDeviceConfig$PreviewConfig;->mImageFormat:I

    .line 169
    iput-object p1, p0, Lcom/oplus/ocs/camera/CameraDeviceConfig$PreviewConfig;->mCameraType:Ljava/lang/String;

    .line 170
    iput-object p2, p0, Lcom/oplus/ocs/camera/CameraDeviceConfig$PreviewConfig;->mPreviewSurface:Landroid/view/Surface;

    .line 171
    iput-object p3, p0, Lcom/oplus/ocs/camera/CameraDeviceConfig$PreviewConfig;->mPreviewSize:Landroid/util/Size;

    .line 172
    iput p4, p0, Lcom/oplus/ocs/camera/CameraDeviceConfig$PreviewConfig;->mSurfaceType:I

    .line 173
    iput p5, p0, Lcom/oplus/ocs/camera/CameraDeviceConfig$PreviewConfig;->mImageFormat:I

    return-void
.end method


# virtual methods
.method public getCameraType()Ljava/lang/String;
    .locals 0

    .line 177
    iget-object p0, p0, Lcom/oplus/ocs/camera/CameraDeviceConfig$PreviewConfig;->mCameraType:Ljava/lang/String;

    return-object p0
.end method

.method public getFormat()I
    .locals 0

    .line 190
    iget p0, p0, Lcom/oplus/ocs/camera/CameraDeviceConfig$PreviewConfig;->mImageFormat:I

    return p0
.end method

.method public getPreviewSize()Landroid/util/Size;
    .locals 0

    .line 181
    iget-object p0, p0, Lcom/oplus/ocs/camera/CameraDeviceConfig$PreviewConfig;->mPreviewSize:Landroid/util/Size;

    return-object p0
.end method

.method public getPreviewSurface()Landroid/view/Surface;
    .locals 0

    .line 185
    iget-object p0, p0, Lcom/oplus/ocs/camera/CameraDeviceConfig$PreviewConfig;->mPreviewSurface:Landroid/view/Surface;

    return-object p0
.end method

.method public getSurfaceType()I
    .locals 0

    .line 194
    iget p0, p0, Lcom/oplus/ocs/camera/CameraDeviceConfig$PreviewConfig;->mSurfaceType:I

    return p0
.end method
