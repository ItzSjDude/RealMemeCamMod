.class public Lcom/oplus/camera/upscale/OplusUpscale;
.super Ljava/lang/Object;
.source "OplusUpscale.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/oplus/camera/upscale/OplusUpscale$ScaleRuntimeParameter;,
        Lcom/oplus/camera/upscale/OplusUpscale$YUVImageParameter;
    }
.end annotation


# static fields
.field public static final IMAGE_FORMAT_NV12:I = 0x9

.field public static final IMAGE_FORMAT_NV21:I = 0x8


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-string v0, "OplusUpscaleJni"

    .line 9
    invoke-static {v0}, Ljava/lang/System;->loadLibrary(Ljava/lang/String;)V

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public native getVersion()Ljava/lang/String;
.end method

.method public native scaleImage(Lcom/oplus/camera/upscale/OplusUpscale$YUVImageParameter;[BLcom/oplus/camera/upscale/OplusUpscale$YUVImageParameter;[BLcom/oplus/camera/upscale/OplusUpscale$ScaleRuntimeParameter;)I
.end method

.method public native scaleImageSplitYUV(Lcom/oplus/camera/upscale/OplusUpscale$YUVImageParameter;[B[BLcom/oplus/camera/upscale/OplusUpscale$YUVImageParameter;[B[BLcom/oplus/camera/upscale/OplusUpscale$ScaleRuntimeParameter;)I
.end method
