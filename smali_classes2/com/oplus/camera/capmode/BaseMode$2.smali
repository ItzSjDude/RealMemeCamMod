.class Lcom/oplus/camera/capmode/BaseMode$2;
.super Ljava/lang/Object;
.source "BaseMode.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/oplus/camera/capmode/BaseMode;->updateScreenState(Landroid/hardware/camera2/CaptureResult;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/oplus/camera/capmode/BaseMode;


# direct methods
.method constructor <init>(Lcom/oplus/camera/capmode/BaseMode;)V
    .locals 0

    .line 7728
    iput-object p1, p0, Lcom/oplus/camera/capmode/BaseMode$2;->a:Lcom/oplus/camera/capmode/BaseMode;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 6

    .line 7731
    iget-object v0, p0, Lcom/oplus/camera/capmode/BaseMode$2;->a:Lcom/oplus/camera/capmode/BaseMode;

    iget-object v0, v0, Lcom/oplus/camera/capmode/BaseMode;->mPreferences:Landroid/content/SharedPreferences;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/oplus/camera/capmode/BaseMode$2;->a:Lcom/oplus/camera/capmode/BaseMode;

    iget-object v0, v0, Lcom/oplus/camera/capmode/BaseMode;->mCameraUIInterface:Lcom/oplus/camera/ui/CameraUIInterface;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/oplus/camera/capmode/BaseMode$2;->a:Lcom/oplus/camera/capmode/BaseMode;

    iget-object v0, v0, Lcom/oplus/camera/capmode/BaseMode;->mPreferences:Landroid/content/SharedPreferences;

    iget-object v1, p0, Lcom/oplus/camera/capmode/BaseMode$2;->a:Lcom/oplus/camera/capmode/BaseMode;

    iget-object v1, v1, Lcom/oplus/camera/capmode/BaseMode;->mActivity:Landroid/app/Activity;

    .line 7733
    invoke-static {v1}, Lcom/oplus/camera/util/Util;->F(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "pref_camera_torch_mode_key"

    .line 7732
    invoke-interface {v0, v2, v1}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "auto"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 7734
    iget-object p0, p0, Lcom/oplus/camera/capmode/BaseMode$2;->a:Lcom/oplus/camera/capmode/BaseMode;

    iget-object v0, p0, Lcom/oplus/camera/capmode/BaseMode;->mCameraUIInterface:Lcom/oplus/camera/ui/CameraUIInterface;

    const/4 v1, -0x1

    const v2, 0x7f080411

    const/4 v3, 0x0

    const/4 v4, 0x1

    const/4 v5, 0x0

    invoke-interface/range {v0 .. v5}, Lcom/oplus/camera/ui/CameraUIInterface;->a(IIZZZ)V

    :cond_0
    return-void
.end method
