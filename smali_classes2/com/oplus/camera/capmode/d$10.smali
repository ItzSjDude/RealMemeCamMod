.class Lcom/oplus/camera/capmode/d$10;
.super Landroid/os/Handler;
.source "CommonCapMode.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/oplus/camera/capmode/d;->onInitCameraMode()V
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

    .line 237
    iput-object p1, p0, Lcom/oplus/camera/capmode/d$10;->a:Lcom/oplus/camera/capmode/d;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 6

    .line 240
    iget v0, p1, Landroid/os/Message;->what:I

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eq v0, v2, :cond_2

    const/4 v3, 0x4

    const-string v4, "pref_camera_flashmode_key"

    const-string v5, "com.oplus.feature.flash.full.zoom.support"

    if-eq v0, v3, :cond_1

    const/4 p1, 0x5

    if-eq v0, p1, :cond_0

    goto/16 :goto_0

    .line 283
    :cond_0
    iget-object p1, p0, Lcom/oplus/camera/capmode/d$10;->a:Lcom/oplus/camera/capmode/d;

    iget-boolean p1, p1, Lcom/oplus/camera/capmode/d;->mbPaused:Z

    if-nez p1, :cond_5

    .line 284
    iget-object p1, p0, Lcom/oplus/camera/capmode/d$10;->a:Lcom/oplus/camera/capmode/d;

    iget-object p1, p1, Lcom/oplus/camera/capmode/d;->mCameraInterface:Lcom/oplus/camera/capmode/a;

    invoke-interface {p1, v1}, Lcom/oplus/camera/capmode/a;->e(I)V

    .line 286
    iget-object p1, p0, Lcom/oplus/camera/capmode/d$10;->a:Lcom/oplus/camera/capmode/d;

    invoke-virtual {p1}, Lcom/oplus/camera/capmode/d;->getZoomValue()F

    move-result v0

    invoke-virtual {p1, v0}, Lcom/oplus/camera/capmode/d;->withinSatMainRange(F)Z

    move-result p1

    if-eqz p1, :cond_5

    .line 287
    invoke-static {v5}, Lcom/oplus/camera/aps/config/CameraConfig;->getConfigBooleanValue(Ljava/lang/String;)Z

    move-result p1

    if-nez p1, :cond_5

    .line 288
    iget-object p1, p0, Lcom/oplus/camera/capmode/d$10;->a:Lcom/oplus/camera/capmode/d;

    iput-boolean v1, p1, Lcom/oplus/camera/capmode/d;->mbFlashTemporaryDisabled:Z

    .line 289
    invoke-virtual {p1}, Lcom/oplus/camera/capmode/d;->getFlashMode()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/oplus/camera/capmode/d;->updateFlashState(Ljava/lang/String;)V

    .line 290
    iget-object p0, p0, Lcom/oplus/camera/capmode/d$10;->a:Lcom/oplus/camera/capmode/d;

    iget-object p0, p0, Lcom/oplus/camera/capmode/d;->mCameraUIInterface:Lcom/oplus/camera/ui/CameraUIInterface;

    const/4 p1, 0x0

    invoke-interface {p0, v4, p1}, Lcom/oplus/camera/ui/CameraUIInterface;->b(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 264
    :cond_1
    iget-object v0, p0, Lcom/oplus/camera/capmode/d$10;->a:Lcom/oplus/camera/capmode/d;

    iget-boolean v0, v0, Lcom/oplus/camera/capmode/d;->mbPaused:Z

    if-nez v0, :cond_5

    .line 265
    iget-object v0, p0, Lcom/oplus/camera/capmode/d$10;->a:Lcom/oplus/camera/capmode/d;

    iget-object v0, v0, Lcom/oplus/camera/capmode/d;->mCameraInterface:Lcom/oplus/camera/capmode/a;

    const/16 v1, 0x12

    invoke-interface {v0, v1}, Lcom/oplus/camera/capmode/a;->e(I)V

    .line 267
    invoke-static {v5}, Lcom/oplus/camera/aps/config/CameraConfig;->getConfigBooleanValue(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_5

    .line 268
    iget-object v0, p0, Lcom/oplus/camera/capmode/d$10;->a:Lcom/oplus/camera/capmode/d;

    iput-boolean v2, v0, Lcom/oplus/camera/capmode/d;->mbFlashTemporaryDisabled:Z

    const-string v1, "off"

    .line 269
    invoke-virtual {v0, v1}, Lcom/oplus/camera/capmode/d;->updateFlashState(Ljava/lang/String;)V

    .line 271
    iget-object v0, p0, Lcom/oplus/camera/capmode/d$10;->a:Lcom/oplus/camera/capmode/d;

    iget-object v0, v0, Lcom/oplus/camera/capmode/d;->mCameraUIInterface:Lcom/oplus/camera/ui/CameraUIInterface;

    invoke-interface {v0, v4, v1}, Lcom/oplus/camera/ui/CameraUIInterface;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 274
    iget p1, p1, Landroid/os/Message;->arg1:I

    if-ne v2, p1, :cond_5

    .line 275
    iget-object p0, p0, Lcom/oplus/camera/capmode/d$10;->a:Lcom/oplus/camera/capmode/d;

    invoke-static {p0}, Lcom/oplus/camera/capmode/d;->access$100(Lcom/oplus/camera/capmode/d;)V

    goto :goto_0

    :cond_2
    const-string p1, "CommonCapMode"

    const-string v0, "handleMessage, MSG_CODE_HIDE_PICTURE_NUM"

    .line 242
    invoke-static {p1, v0}, Lcom/oplus/camera/e;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 244
    iget-object p1, p0, Lcom/oplus/camera/capmode/d$10;->a:Lcom/oplus/camera/capmode/d;

    iget-boolean p1, p1, Lcom/oplus/camera/capmode/d;->mbPaused:Z

    if-nez p1, :cond_5

    .line 245
    iget-object p1, p0, Lcom/oplus/camera/capmode/d$10;->a:Lcom/oplus/camera/capmode/d;

    iget-object p1, p1, Lcom/oplus/camera/capmode/d;->mCameraUIInterface:Lcom/oplus/camera/ui/CameraUIInterface;

    invoke-interface {p1, v2, v1}, Lcom/oplus/camera/ui/CameraUIInterface;->e(ZZ)V

    .line 247
    iget-object p1, p0, Lcom/oplus/camera/capmode/d$10;->a:Lcom/oplus/camera/capmode/d;

    iget-object p1, p1, Lcom/oplus/camera/capmode/d;->mCameraInterface:Lcom/oplus/camera/capmode/a;

    if-eqz p1, :cond_3

    iget-object p1, p0, Lcom/oplus/camera/capmode/d$10;->a:Lcom/oplus/camera/capmode/d;

    const-string v0, "pref_expand_popbar_key"

    invoke-virtual {p1, v0}, Lcom/oplus/camera/capmode/d;->getSupportFunction(Ljava/lang/String;)Z

    move-result p1

    if-nez p1, :cond_3

    .line 248
    iget-object p1, p0, Lcom/oplus/camera/capmode/d$10;->a:Lcom/oplus/camera/capmode/d;

    iget-object p1, p1, Lcom/oplus/camera/capmode/d;->mCameraInterface:Lcom/oplus/camera/capmode/a;

    invoke-interface {p1, v2, v1}, Lcom/oplus/camera/capmode/a;->a(ZZ)V

    .line 251
    :cond_3
    iget-object p1, p0, Lcom/oplus/camera/capmode/d$10;->a:Lcom/oplus/camera/capmode/d;

    iget-object p1, p1, Lcom/oplus/camera/capmode/d;->mCameraInterface:Lcom/oplus/camera/capmode/a;

    if-eqz p1, :cond_4

    iget-object p1, p0, Lcom/oplus/camera/capmode/d$10;->a:Lcom/oplus/camera/capmode/d;

    iget-object p1, p1, Lcom/oplus/camera/capmode/d;->mCameraInterface:Lcom/oplus/camera/capmode/a;

    .line 252
    invoke-interface {p1}, Lcom/oplus/camera/capmode/a;->A()Z

    move-result p1

    if-nez p1, :cond_4

    iget-object p1, p0, Lcom/oplus/camera/capmode/d$10;->a:Lcom/oplus/camera/capmode/d;

    .line 253
    invoke-virtual {p1}, Lcom/oplus/camera/capmode/d;->supportBeautyButton()Z

    move-result p1

    if-eqz p1, :cond_4

    .line 254
    iget-object p1, p0, Lcom/oplus/camera/capmode/d$10;->a:Lcom/oplus/camera/capmode/d;

    iget-object p1, p1, Lcom/oplus/camera/capmode/d;->mCameraUIInterface:Lcom/oplus/camera/ui/CameraUIInterface;

    invoke-interface {p1, v2, v1}, Lcom/oplus/camera/ui/CameraUIInterface;->l(ZZ)V

    .line 255
    iget-object p1, p0, Lcom/oplus/camera/capmode/d$10;->a:Lcom/oplus/camera/capmode/d;

    iget-object p1, p1, Lcom/oplus/camera/capmode/d;->mCameraUIInterface:Lcom/oplus/camera/ui/CameraUIInterface;

    invoke-interface {p1, v2}, Lcom/oplus/camera/ui/CameraUIInterface;->v(Z)V

    .line 258
    :cond_4
    iget-object p0, p0, Lcom/oplus/camera/capmode/d$10;->a:Lcom/oplus/camera/capmode/d;

    invoke-virtual {p0}, Lcom/oplus/camera/capmode/d;->displayScreenHintIconInSwitchOn()V

    :cond_5
    :goto_0
    return-void
.end method
