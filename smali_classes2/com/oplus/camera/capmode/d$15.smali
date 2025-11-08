.class Lcom/oplus/camera/capmode/d$15;
.super Ljava/lang/Object;
.source "CommonCapMode.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/oplus/camera/capmode/d;->onAfterStartPreview(Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/oplus/camera/capmode/d;


# direct methods
.method constructor <init>(Lcom/oplus/camera/capmode/d;)V
    .locals 0

    .line 2506
    iput-object p1, p0, Lcom/oplus/camera/capmode/d$15;->a:Lcom/oplus/camera/capmode/d;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 8

    .line 2509
    iget-object v0, p0, Lcom/oplus/camera/capmode/d$15;->a:Lcom/oplus/camera/capmode/d;

    iget-boolean v0, v0, Lcom/oplus/camera/capmode/d;->mbPaused:Z

    if-nez v0, :cond_0

    .line 2510
    iget-object v0, p0, Lcom/oplus/camera/capmode/d$15;->a:Lcom/oplus/camera/capmode/d;

    invoke-virtual {v0}, Lcom/oplus/camera/capmode/d;->onUpdateCameraSettingMenu()V

    .line 2513
    :cond_0
    iget-object v0, p0, Lcom/oplus/camera/capmode/d$15;->a:Lcom/oplus/camera/capmode/d;

    invoke-virtual {v0}, Lcom/oplus/camera/capmode/d;->isHighPictureSize()Z

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/oplus/camera/capmode/d$15;->a:Lcom/oplus/camera/capmode/d;

    iget-object v0, v0, Lcom/oplus/camera/capmode/d;->mCameraUIInterface:Lcom/oplus/camera/ui/CameraUIInterface;

    invoke-interface {v0}, Lcom/oplus/camera/ui/CameraUIInterface;->R()Z

    move-result v0

    if-nez v0, :cond_2

    const-string v0, "com.oplus.feature.high.definition.support"

    .line 2514
    invoke-static {v0}, Lcom/oplus/camera/aps/config/CameraConfig;->getConfigBooleanValue(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_2

    const-string v0, "com.oplus.super.resolution.picturesize"

    .line 2516
    invoke-static {v0}, Lcom/oplus/camera/aps/config/CameraConfig;->getConfigStringValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 2519
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const v3, 0x7f0604ff

    const v4, 0x7f0805e9

    if-eqz v0, :cond_1

    .line 2520
    iget-object v0, p0, Lcom/oplus/camera/capmode/d$15;->a:Lcom/oplus/camera/capmode/d;

    invoke-virtual {v0}, Lcom/oplus/camera/capmode/d;->getDisplayHighPictureSize()D

    move-result-wide v5

    .line 2522
    iget-object v0, p0, Lcom/oplus/camera/capmode/d$15;->a:Lcom/oplus/camera/capmode/d;

    iget-object v0, v0, Lcom/oplus/camera/capmode/d;->mCameraUIInterface:Lcom/oplus/camera/ui/CameraUIInterface;

    const v7, 0x7f1006d5

    invoke-interface {v0, v7}, Lcom/oplus/camera/ui/CameraUIInterface;->a(I)V

    .line 2523
    iget-object v0, p0, Lcom/oplus/camera/capmode/d$15;->a:Lcom/oplus/camera/capmode/d;

    iget-object v0, v0, Lcom/oplus/camera/capmode/d;->mCameraUIInterface:Lcom/oplus/camera/ui/CameraUIInterface;

    iget-object v7, p0, Lcom/oplus/camera/capmode/d$15;->a:Lcom/oplus/camera/capmode/d;

    invoke-virtual {v7}, Lcom/oplus/camera/capmode/d;->getHighPictureSizeHint()I

    move-result v7

    new-array v2, v2, [Ljava/lang/Object;

    .line 2525
    invoke-static {v5, v6}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v5

    aput-object v5, v2, v1

    .line 2523
    invoke-interface {v0, v7, v4, v3, v2}, Lcom/oplus/camera/ui/CameraUIInterface;->b(III[Ljava/lang/Object;)V

    goto :goto_0

    .line 2527
    :cond_1
    iget-object v0, p0, Lcom/oplus/camera/capmode/d$15;->a:Lcom/oplus/camera/capmode/d;

    iget-object v0, v0, Lcom/oplus/camera/capmode/d;->mCameraUIInterface:Lcom/oplus/camera/ui/CameraUIInterface;

    const v2, 0x7f100369

    new-array v1, v1, [Ljava/lang/Object;

    invoke-interface {v0, v2, v4, v3, v1}, Lcom/oplus/camera/ui/CameraUIInterface;->b(III[Ljava/lang/Object;)V

    goto :goto_0

    .line 2532
    :cond_2
    iget-object v0, p0, Lcom/oplus/camera/capmode/d$15;->a:Lcom/oplus/camera/capmode/d;

    iget-object v0, v0, Lcom/oplus/camera/capmode/d;->mCameraUIInterface:Lcom/oplus/camera/ui/CameraUIInterface;

    new-array v3, v2, [I

    iget-object v4, p0, Lcom/oplus/camera/capmode/d$15;->a:Lcom/oplus/camera/capmode/d;

    invoke-virtual {v4}, Lcom/oplus/camera/capmode/d;->getHighPictureSizeHint()I

    move-result v4

    aput v4, v3, v1

    invoke-interface {v0, v3}, Lcom/oplus/camera/ui/CameraUIInterface;->a([I)V

    .line 2533
    iget-object v0, p0, Lcom/oplus/camera/capmode/d$15;->a:Lcom/oplus/camera/capmode/d;

    iget-object v0, v0, Lcom/oplus/camera/capmode/d;->mCameraUIInterface:Lcom/oplus/camera/ui/CameraUIInterface;

    invoke-interface {v0, v2}, Lcom/oplus/camera/ui/CameraUIInterface;->w(Z)V

    .line 2536
    :goto_0
    iget-object v0, p0, Lcom/oplus/camera/capmode/d$15;->a:Lcom/oplus/camera/capmode/d;

    const-string v1, "func_google_lens"

    invoke-virtual {v0, v1}, Lcom/oplus/camera/capmode/d;->getSupportFunction(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 2537
    iget-object p0, p0, Lcom/oplus/camera/capmode/d$15;->a:Lcom/oplus/camera/capmode/d;

    invoke-static {p0}, Lcom/oplus/camera/capmode/d;->access$1400(Lcom/oplus/camera/capmode/d;)V

    :cond_3
    return-void
.end method
