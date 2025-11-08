.class public Lcom/oplus/camera/i/d;
.super Lcom/oplus/camera/i/a;
.source "FeatureHDR.java"

# interfaces
.implements Lcom/oplus/camera/i/e;


# direct methods
.method public constructor <init>(Lcom/oplus/camera/capmode/a;Lcom/oplus/camera/ui/CameraUIInterface;)V
    .locals 0

    .line 10
    invoke-direct {p0, p1, p2}, Lcom/oplus/camera/i/a;-><init>(Lcom/oplus/camera/capmode/a;Lcom/oplus/camera/ui/CameraUIInterface;)V

    return-void
.end method


# virtual methods
.method public a()V
    .locals 3

    .line 15
    iget-object v0, p0, Lcom/oplus/camera/i/d;->c:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "pref_camera_hdr_mode_key"

    const-string v2, "off"

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 16
    iget-object p0, p0, Lcom/oplus/camera/i/d;->b:Lcom/oplus/camera/ui/CameraUIInterface;

    invoke-interface {p0, v1}, Lcom/oplus/camera/ui/CameraUIInterface;->f(Ljava/lang/String;)V

    return-void
.end method

.method public b()Ljava/lang/String;
    .locals 0

    .line 21
    sget-object p0, Lcom/oplus/ocs/camera/CameraParameter;->CAPTURE_HDR_MODE:Lcom/oplus/ocs/camera/CameraParameter$PreviewKey;

    invoke-virtual {p0}, Lcom/oplus/ocs/camera/CameraParameter$PreviewKey;->getKeyName()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public c()Ljava/lang/String;
    .locals 0

    const-string p0, "auto"

    return-object p0
.end method
