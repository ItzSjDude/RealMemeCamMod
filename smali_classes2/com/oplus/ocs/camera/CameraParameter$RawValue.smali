.class public interface abstract annotation Lcom/oplus/ocs/camera/CameraParameter$RawValue;
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
    name = "RawValue"
.end annotation

.annotation runtime Ljava/lang/annotation/Retention;
    value = .enum Ljava/lang/annotation/RetentionPolicy;->SOURCE:Ljava/lang/annotation/RetentionPolicy;
.end annotation


# static fields
.field public static final NONE:Ljava/lang/String; = "none"

.field public static final RAW:Ljava/lang/String; = "raw"

.field public static final SUPER_RAW:Ljava/lang/String; = "super_raw"
