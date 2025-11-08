.class public final Lcom/oplus/ocs/camera/CameraUnit;
.super Ljava/lang/Object;
.source "CameraUnit.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 26
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getCameraClient(Landroid/content/Context;)Lcom/oplus/ocs/camera/CameraUnitClient;
    .locals 0

    .line 29
    invoke-static {p0}, Lcom/oplus/ocs/camera/CameraUnitClient;->initialize(Landroid/content/Context;)Lcom/oplus/ocs/camera/CameraUnitClient;

    move-result-object p0

    return-object p0
.end method
