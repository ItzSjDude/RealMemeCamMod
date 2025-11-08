.class Lcom/oplus/camera/capmode/d$4;
.super Ljava/lang/Object;
.source "CommonCapMode.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/oplus/camera/capmode/d;->updateMenuWithMono(Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Z

.field final synthetic b:Lcom/oplus/camera/capmode/d;


# direct methods
.method constructor <init>(Lcom/oplus/camera/capmode/d;Z)V
    .locals 0

    .line 3683
    iput-object p1, p0, Lcom/oplus/camera/capmode/d$4;->b:Lcom/oplus/camera/capmode/d;

    iput-boolean p2, p0, Lcom/oplus/camera/capmode/d$4;->a:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .line 3686
    iget-object v0, p0, Lcom/oplus/camera/capmode/d$4;->b:Lcom/oplus/camera/capmode/d;

    iget-object v0, v0, Lcom/oplus/camera/capmode/d;->mOneCamera:Lcom/oplus/camera/e/d;

    if-nez v0, :cond_0

    return-void

    .line 3690
    :cond_0
    iget-object v0, p0, Lcom/oplus/camera/capmode/d$4;->b:Lcom/oplus/camera/capmode/d;

    const-string v1, "pref_camera_flashmode_key"

    invoke-virtual {v0, v1}, Lcom/oplus/camera/capmode/d;->getSupportFunction(Ljava/lang/String;)Z

    move-result v0

    const-string v2, "off"

    if-eqz v0, :cond_2

    .line 3691
    iget-boolean v0, p0, Lcom/oplus/camera/capmode/d$4;->a:Z

    if-eqz v0, :cond_1

    .line 3692
    iget-object v0, p0, Lcom/oplus/camera/capmode/d$4;->b:Lcom/oplus/camera/capmode/d;

    iget-object v0, v0, Lcom/oplus/camera/capmode/d;->mOneCamera:Lcom/oplus/camera/e/d;

    invoke-interface {v0, v2}, Lcom/oplus/camera/e/d;->b(Ljava/lang/String;)V

    .line 3693
    iget-object v0, p0, Lcom/oplus/camera/capmode/d$4;->b:Lcom/oplus/camera/capmode/d;

    iget-object v0, v0, Lcom/oplus/camera/capmode/d;->mCameraUIInterface:Lcom/oplus/camera/ui/CameraUIInterface;

    invoke-interface {v0, v1, v2}, Lcom/oplus/camera/ui/CameraUIInterface;->a(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_1
    const-string v0, "com.oplus.feature.capture.flash.only_main.zoom.support"

    .line 3696
    invoke-static {v0}, Lcom/oplus/camera/aps/config/CameraConfig;->getConfigBooleanValue(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 3697
    iget-object v0, p0, Lcom/oplus/camera/capmode/d$4;->b:Lcom/oplus/camera/capmode/d;

    iget-object v0, v0, Lcom/oplus/camera/capmode/d;->mPreferences:Landroid/content/SharedPreferences;

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 3698
    iget-object v3, p0, Lcom/oplus/camera/capmode/d$4;->b:Lcom/oplus/camera/capmode/d;

    iget-object v3, v3, Lcom/oplus/camera/capmode/d;->mOneCamera:Lcom/oplus/camera/e/d;

    invoke-interface {v3, v0}, Lcom/oplus/camera/e/d;->b(Ljava/lang/String;)V

    .line 3699
    iget-object v3, p0, Lcom/oplus/camera/capmode/d$4;->b:Lcom/oplus/camera/capmode/d;

    iget-object v3, v3, Lcom/oplus/camera/capmode/d;->mCameraUIInterface:Lcom/oplus/camera/ui/CameraUIInterface;

    invoke-interface {v3, v1, v0}, Lcom/oplus/camera/ui/CameraUIInterface;->b(Ljava/lang/String;Ljava/lang/String;)V

    :cond_2
    :goto_0
    const-string v0, "com.oplus.feature.auto.micro"

    .line 3704
    invoke-static {v0}, Lcom/oplus/camera/aps/config/CameraConfig;->getConfigBooleanValue(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/oplus/camera/capmode/d$4;->b:Lcom/oplus/camera/capmode/d;

    iget-object v0, v0, Lcom/oplus/camera/capmode/d;->mOneCamera:Lcom/oplus/camera/e/d;

    if-eqz v0, :cond_4

    .line 3705
    iget-boolean v0, p0, Lcom/oplus/camera/capmode/d$4;->a:Z

    const-string v1, "pref_macro_switch"

    if-eqz v0, :cond_3

    .line 3706
    iget-object v0, p0, Lcom/oplus/camera/capmode/d$4;->b:Lcom/oplus/camera/capmode/d;

    iget-object v0, v0, Lcom/oplus/camera/capmode/d;->mOneCamera:Lcom/oplus/camera/e/d;

    const/4 v3, 0x0

    invoke-interface {v0, v3}, Lcom/oplus/camera/e/d;->B(Z)V

    .line 3707
    iget-object v0, p0, Lcom/oplus/camera/capmode/d$4;->b:Lcom/oplus/camera/capmode/d;

    iget-object v0, v0, Lcom/oplus/camera/capmode/d;->mCameraUIInterface:Lcom/oplus/camera/ui/CameraUIInterface;

    invoke-interface {v0, v1, v2}, Lcom/oplus/camera/ui/CameraUIInterface;->a(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    .line 3709
    :cond_3
    iget-object v0, p0, Lcom/oplus/camera/capmode/d$4;->b:Lcom/oplus/camera/capmode/d;

    iget-object v0, v0, Lcom/oplus/camera/capmode/d;->mPreferences:Landroid/content/SharedPreferences;

    const-string v2, "auto"

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 3710
    iget-object v3, p0, Lcom/oplus/camera/capmode/d$4;->b:Lcom/oplus/camera/capmode/d;

    iget-object v3, v3, Lcom/oplus/camera/capmode/d;->mOneCamera:Lcom/oplus/camera/e/d;

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    invoke-interface {v3, v2}, Lcom/oplus/camera/e/d;->B(Z)V

    .line 3711
    iget-object v2, p0, Lcom/oplus/camera/capmode/d$4;->b:Lcom/oplus/camera/capmode/d;

    iget-object v2, v2, Lcom/oplus/camera/capmode/d;->mCameraUIInterface:Lcom/oplus/camera/ui/CameraUIInterface;

    invoke-interface {v2, v1, v0}, Lcom/oplus/camera/ui/CameraUIInterface;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 3716
    :cond_4
    :goto_1
    iget-object p0, p0, Lcom/oplus/camera/capmode/d$4;->b:Lcom/oplus/camera/capmode/d;

    iget-object p0, p0, Lcom/oplus/camera/capmode/d;->mOneCamera:Lcom/oplus/camera/e/d;

    const/4 v0, 0x0

    invoke-interface {p0, v0}, Lcom/oplus/camera/e/d;->a(Lcom/oplus/camera/e/d$c;)V

    return-void
.end method
