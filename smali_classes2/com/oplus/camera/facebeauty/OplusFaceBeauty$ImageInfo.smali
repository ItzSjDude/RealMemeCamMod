.class public Lcom/oplus/camera/facebeauty/OplusFaceBeauty$ImageInfo;
.super Ljava/lang/Object;
.source "OplusFaceBeauty.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/oplus/camera/facebeauty/OplusFaceBeauty;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ImageInfo"
.end annotation


# instance fields
.field public mFormat:I

.field public mHeight:I

.field public mScanline:I

.field public mStride:I

.field public mWidth:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 66
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 67
    iput v0, p0, Lcom/oplus/camera/facebeauty/OplusFaceBeauty$ImageInfo;->mFormat:I

    .line 68
    iput v0, p0, Lcom/oplus/camera/facebeauty/OplusFaceBeauty$ImageInfo;->mWidth:I

    .line 69
    iput v0, p0, Lcom/oplus/camera/facebeauty/OplusFaceBeauty$ImageInfo;->mHeight:I

    .line 70
    iput v0, p0, Lcom/oplus/camera/facebeauty/OplusFaceBeauty$ImageInfo;->mStride:I

    .line 71
    iput v0, p0, Lcom/oplus/camera/facebeauty/OplusFaceBeauty$ImageInfo;->mScanline:I

    return-void
.end method
