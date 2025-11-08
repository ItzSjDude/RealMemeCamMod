.class public interface abstract annotation Lcom/oplus/ocs/camera/CameraParameter$VideoStabilizationMode;
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
    name = "VideoStabilizationMode"
.end annotation

.annotation runtime Ljava/lang/annotation/Retention;
    value = .enum Ljava/lang/annotation/RetentionPolicy;->SOURCE:Ljava/lang/annotation/RetentionPolicy;
.end annotation


# static fields
.field public static final SUPER_STABILIZATION:Ljava/lang/String; = "super_stabilization"

.field public static final SUPER_STABILIZATION_FRONT:Ljava/lang/String; = "super_stabilization_front"

.field public static final VIDEO_STABILIZATION:Ljava/lang/String; = "video_stabilization"
