.class public Lcom/oplus/camera/ui/menu/setting/m;
.super Ljava/lang/Object;
.source "CameraSettingBundle.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 12
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcom/oplus/camera/capmode/ModeManager;Landroid/os/Bundle;)Landroid/os/Bundle;
    .locals 0

    const-string p0, "com.oplus.feature.quick.launch.support"

    .line 14
    invoke-static {p0}, Lcom/oplus/camera/aps/config/CameraConfig;->getConfigBooleanValue(Ljava/lang/String;)Z

    move-result p0

    if-nez p0, :cond_0

    const/4 p0, 0x0

    const-string p1, "pref_camera_quick_launch_key"

    .line 15
    invoke-virtual {p2, p1, p0}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    :cond_0
    return-object p2
.end method
