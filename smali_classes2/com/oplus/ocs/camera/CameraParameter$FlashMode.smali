.class public interface abstract annotation Lcom/oplus/ocs/camera/CameraParameter$FlashMode;
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
    name = "FlashMode"
.end annotation

.annotation runtime Ljava/lang/annotation/Retention;
    value = .enum Ljava/lang/annotation/RetentionPolicy;->SOURCE:Ljava/lang/annotation/RetentionPolicy;
.end annotation


# static fields
.field public static final FLASH_AUTO:Ljava/lang/String; = "auto"

.field public static final FLASH_OFF:Ljava/lang/String; = "off"

.field public static final FLASH_ON:Ljava/lang/String; = "on"

.field public static final FLASH_TORCH:Ljava/lang/String; = "torch"
