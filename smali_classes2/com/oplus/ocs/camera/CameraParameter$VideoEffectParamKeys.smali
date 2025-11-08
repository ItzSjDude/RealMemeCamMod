.class public interface abstract annotation Lcom/oplus/ocs/camera/CameraParameter$VideoEffectParamKeys;
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
    name = "VideoEffectParamKeys"
.end annotation

.annotation runtime Ljava/lang/annotation/Retention;
    value = .enum Ljava/lang/annotation/RetentionPolicy;->SOURCE:Ljava/lang/annotation/RetentionPolicy;
.end annotation


# static fields
.field public static final BLUR_LEVEL:Ljava/lang/String; = "blur_level"

.field public static final BLUR_SHOW:Ljava/lang/String; = "blur_show"

.field public static final RETENTION_PROCESS:Ljava/lang/String; = "retention_process"

.field public static final VIDEO_ORIENTATION:Ljava/lang/String; = "orientation"
