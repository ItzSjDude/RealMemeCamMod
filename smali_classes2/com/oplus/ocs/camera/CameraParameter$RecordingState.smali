.class public interface abstract annotation Lcom/oplus/ocs/camera/CameraParameter$RecordingState;
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
    name = "RecordingState"
.end annotation

.annotation runtime Ljava/lang/annotation/Retention;
    value = .enum Ljava/lang/annotation/RetentionPolicy;->SOURCE:Ljava/lang/annotation/RetentionPolicy;
.end annotation


# static fields
.field public static final RECORDING_PAUSE:I = 0x2

.field public static final RECORDING_RESUME:I = 0x3

.field public static final RECORDING_START:I = 0x1

.field public static final RECORDING_STOP:I = 0x4
