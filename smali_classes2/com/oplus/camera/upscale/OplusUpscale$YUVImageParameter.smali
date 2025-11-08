.class public Lcom/oplus/camera/upscale/OplusUpscale$YUVImageParameter;
.super Ljava/lang/Object;
.source "OplusUpscale.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/oplus/camera/upscale/OplusUpscale;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "YUVImageParameter"
.end annotation


# instance fields
.field public mCBPixelStride:I

.field public mCBRowStride:I

.field public mCRPixelStride:I

.field public mCRRowStride:I

.field public mFormat:I

.field public mHeight:I

.field public mWidth:I

.field public mYColumnStride:I

.field public mYPixelStride:I

.field public mYRowStride:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 12
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/16 v0, 0x9

    .line 13
    iput v0, p0, Lcom/oplus/camera/upscale/OplusUpscale$YUVImageParameter;->mFormat:I

    const/4 v0, 0x0

    .line 14
    iput v0, p0, Lcom/oplus/camera/upscale/OplusUpscale$YUVImageParameter;->mWidth:I

    .line 15
    iput v0, p0, Lcom/oplus/camera/upscale/OplusUpscale$YUVImageParameter;->mHeight:I

    .line 16
    iput v0, p0, Lcom/oplus/camera/upscale/OplusUpscale$YUVImageParameter;->mYPixelStride:I

    .line 17
    iput v0, p0, Lcom/oplus/camera/upscale/OplusUpscale$YUVImageParameter;->mYRowStride:I

    .line 18
    iput v0, p0, Lcom/oplus/camera/upscale/OplusUpscale$YUVImageParameter;->mYColumnStride:I

    .line 19
    iput v0, p0, Lcom/oplus/camera/upscale/OplusUpscale$YUVImageParameter;->mCBPixelStride:I

    .line 20
    iput v0, p0, Lcom/oplus/camera/upscale/OplusUpscale$YUVImageParameter;->mCBRowStride:I

    .line 21
    iput v0, p0, Lcom/oplus/camera/upscale/OplusUpscale$YUVImageParameter;->mCRPixelStride:I

    .line 22
    iput v0, p0, Lcom/oplus/camera/upscale/OplusUpscale$YUVImageParameter;->mCRRowStride:I

    return-void
.end method
