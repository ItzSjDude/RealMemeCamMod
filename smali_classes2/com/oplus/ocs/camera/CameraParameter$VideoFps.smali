.class public interface abstract annotation Lcom/oplus/ocs/camera/CameraParameter$VideoFps;
.super Ljava/lang/Object;
.source "CameraParameter.java"

# interfaces
.implements Ljava/lang/annotation/Annotation;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/oplus/ocs/camera/CameraParameter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2609
    name = "VideoFps"
.end annotation

.annotation runtime Ljava/lang/annotation/Retention;
    value = .enum Ljava/lang/annotation/RetentionPolicy;->SOURCE:Ljava/lang/annotation/RetentionPolicy;
.end annotation


# static fields
.field public static final FPS_120:I = 0x78

.field public static final FPS_240:I = 0xf0

.field public static final FPS_30:I = 0x1e

.field public static final FPS_480:I = 0x1e0

.field public static final FPS_60:I = 0x3c

.field public static final FPS_960:I = 0x3c0
