.class Lcom/oplus/ocs/camera/CameraClient;
.super Lcom/oplus/ocs/base/common/api/b;
.source "CameraClient.java"


# direct methods
.method protected constructor <init>(Landroid/content/Context;Landroid/os/Looper;)V
    .locals 0

    .line 30
    invoke-direct {p0, p1, p2}, Lcom/oplus/ocs/base/common/api/b;-><init>(Landroid/content/Context;Landroid/os/Looper;)V

    return-void
.end method


# virtual methods
.method public getClientName()Ljava/lang/String;
    .locals 0

    const-string p0, "CAMERA_CLIENT"

    return-object p0
.end method
