.class public Lcom/oplus/camera/upscale/OplusUpscale$ScaleRuntimeParameter;
.super Ljava/lang/Object;
.source "OplusUpscale.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/oplus/camera/upscale/OplusUpscale;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ScaleRuntimeParameter"
.end annotation


# instance fields
.field public mActiveCPUMask:I

.field public mColorNoiseReductionStrength:I

.field public mNoiseReductionStrength:I

.field public mNumberOfProcessingThreads:I

.field public mSharpen:F


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 25
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 26
    iput v0, p0, Lcom/oplus/camera/upscale/OplusUpscale$ScaleRuntimeParameter;->mNoiseReductionStrength:I

    .line 27
    iput v0, p0, Lcom/oplus/camera/upscale/OplusUpscale$ScaleRuntimeParameter;->mColorNoiseReductionStrength:I

    const/4 v1, 0x0

    .line 28
    iput v1, p0, Lcom/oplus/camera/upscale/OplusUpscale$ScaleRuntimeParameter;->mSharpen:F

    .line 29
    iput v0, p0, Lcom/oplus/camera/upscale/OplusUpscale$ScaleRuntimeParameter;->mNumberOfProcessingThreads:I

    .line 30
    iput v0, p0, Lcom/oplus/camera/upscale/OplusUpscale$ScaleRuntimeParameter;->mActiveCPUMask:I

    return-void
.end method
