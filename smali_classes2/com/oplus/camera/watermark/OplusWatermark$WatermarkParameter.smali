.class public Lcom/oplus/camera/watermark/OplusWatermark$WatermarkParameter;
.super Ljava/lang/Object;
.source "OplusWatermark.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/oplus/camera/watermark/OplusWatermark;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "WatermarkParameter"
.end annotation


# instance fields
.field public mImageFormat:I

.field public mImageHeight:I

.field public mImageScanline:I

.field public mImageStride:I

.field public mImageWidth:I

.field public mOrientation:I

.field public mPreviewHeight:I

.field public mPreviewWidth:I

.field public mWatermarkFormat:I

.field public mWatermarkPath:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x1

    .line 12
    iput v0, p0, Lcom/oplus/camera/watermark/OplusWatermark$WatermarkParameter;->mImageFormat:I

    const/4 v0, 0x0

    .line 13
    iput v0, p0, Lcom/oplus/camera/watermark/OplusWatermark$WatermarkParameter;->mImageWidth:I

    .line 14
    iput v0, p0, Lcom/oplus/camera/watermark/OplusWatermark$WatermarkParameter;->mImageHeight:I

    .line 15
    iput v0, p0, Lcom/oplus/camera/watermark/OplusWatermark$WatermarkParameter;->mImageStride:I

    .line 16
    iput v0, p0, Lcom/oplus/camera/watermark/OplusWatermark$WatermarkParameter;->mImageScanline:I

    .line 17
    iput v0, p0, Lcom/oplus/camera/watermark/OplusWatermark$WatermarkParameter;->mOrientation:I

    .line 18
    iput v0, p0, Lcom/oplus/camera/watermark/OplusWatermark$WatermarkParameter;->mPreviewWidth:I

    .line 19
    iput v0, p0, Lcom/oplus/camera/watermark/OplusWatermark$WatermarkParameter;->mPreviewHeight:I

    const/4 v1, 0x0

    .line 20
    iput-object v1, p0, Lcom/oplus/camera/watermark/OplusWatermark$WatermarkParameter;->mWatermarkPath:Ljava/lang/String;

    .line 21
    iput v0, p0, Lcom/oplus/camera/watermark/OplusWatermark$WatermarkParameter;->mWatermarkFormat:I

    return-void
.end method
