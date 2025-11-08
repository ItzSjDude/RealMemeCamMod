.class public interface abstract annotation Lcom/oplus/ocs/camera/CameraParameter$NightVideo;
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
    name = "NightVideo"
.end annotation

.annotation runtime Ljava/lang/annotation/Retention;
    value = .enum Ljava/lang/annotation/RetentionPolicy;->SOURCE:Ljava/lang/annotation/RetentionPolicy;
.end annotation


# static fields
.field public static final NORMAL_NIGHT_VIDEO:Ljava/lang/String; = "normal_night_video"

.field public static final ULTRA_NIGHT_VIDEO:Ljava/lang/String; = "ultra_night_video"
