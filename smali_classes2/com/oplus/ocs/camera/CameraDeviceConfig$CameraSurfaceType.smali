.class public interface abstract annotation Lcom/oplus/ocs/camera/CameraDeviceConfig$CameraSurfaceType;
.super Ljava/lang/Object;
.source "CameraDeviceConfig.java"

# interfaces
.implements Ljava/lang/annotation/Annotation;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/oplus/ocs/camera/CameraDeviceConfig;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2609
    name = "CameraSurfaceType"
.end annotation

.annotation runtime Ljava/lang/annotation/Retention;
    value = .enum Ljava/lang/annotation/RetentionPolicy;->SOURCE:Ljava/lang/annotation/RetentionPolicy;
.end annotation


# static fields
.field public static final IMAGE_READER:I = 0x3

.field public static final PREVIEW_FRAME:I = 0x6

.field public static final PREVIEW_IMAGE:I = 0x5

.field public static final RECORDING_SURFACE:I = 0x4

.field public static final SURFACE_TEXTURE:I = 0x2

.field public static final SURFACE_VIEW:I = 0x1
