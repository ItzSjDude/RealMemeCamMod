.class public interface abstract annotation Lcom/oplus/ocs/camera/CameraParameter$FocusMode;
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
    name = "FocusMode"
.end annotation

.annotation runtime Ljava/lang/annotation/Retention;
    value = .enum Ljava/lang/annotation/RetentionPolicy;->SOURCE:Ljava/lang/annotation/RetentionPolicy;
.end annotation


# static fields
.field public static final AF_MODE_AUTO:I = 0x3

.field public static final AF_MODE_CONTINUOUS_PICTURE:I = 0x1

.field public static final AF_MODE_CONTINUOUS_VIDEO:I = 0x2

.field public static final AF_MODE_LOCK:I = 0x4

.field public static final AF_MODE_OFF:I
