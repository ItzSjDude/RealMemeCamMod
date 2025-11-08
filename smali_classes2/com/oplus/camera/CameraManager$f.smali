.class final Lcom/oplus/camera/CameraManager$f;
.super Ljava/lang/Object;
.source "CameraManager.java"

# interfaces
.implements Lcom/oplus/camera/e/d$e;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/oplus/camera/CameraManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "f"
.end annotation


# instance fields
.field final synthetic a:Lcom/oplus/camera/CameraManager;


# direct methods
.method private constructor <init>(Lcom/oplus/camera/CameraManager;)V
    .locals 0

    .line 9681
    iput-object p1, p0, Lcom/oplus/camera/CameraManager$f;->a:Lcom/oplus/camera/CameraManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/oplus/camera/CameraManager;Lcom/oplus/camera/CameraManager$1;)V
    .locals 0

    .line 9681
    invoke-direct {p0, p1}, Lcom/oplus/camera/CameraManager$f;-><init>(Lcom/oplus/camera/CameraManager;)V

    return-void
.end method


# virtual methods
.method public a()V
    .locals 2

    .line 9684
    iget-object v0, p0, Lcom/oplus/camera/CameraManager$f;->a:Lcom/oplus/camera/CameraManager;

    invoke-static {v0}, Lcom/oplus/camera/CameraManager;->j(Lcom/oplus/camera/CameraManager;)Lcom/oplus/camera/w/b;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/oplus/camera/CameraManager$f;->a:Lcom/oplus/camera/CameraManager;

    invoke-static {v0}, Lcom/oplus/camera/CameraManager;->i(Lcom/oplus/camera/CameraManager;)Lcom/oplus/camera/capmode/ModeManager;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/oplus/camera/CameraManager$f;->a:Lcom/oplus/camera/CameraManager;

    invoke-static {v0}, Lcom/oplus/camera/CameraManager;->i(Lcom/oplus/camera/CameraManager;)Lcom/oplus/camera/capmode/ModeManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/oplus/camera/capmode/ModeManager;->T()Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object v0, Lcom/oplus/camera/ui/inverse/e;->INS:Lcom/oplus/camera/ui/inverse/e;

    iget-object v1, p0, Lcom/oplus/camera/CameraManager$f;->a:Lcom/oplus/camera/CameraManager;

    .line 9685
    invoke-static {v1}, Lcom/oplus/camera/CameraManager;->a(Lcom/oplus/camera/CameraManager;)Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/oplus/camera/ui/inverse/e;->isInverseAble(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 9686
    iget-object v0, p0, Lcom/oplus/camera/CameraManager$f;->a:Lcom/oplus/camera/CameraManager;

    invoke-static {v0}, Lcom/oplus/camera/CameraManager;->j(Lcom/oplus/camera/CameraManager;)Lcom/oplus/camera/w/b;

    move-result-object v0

    new-instance v1, Lcom/oplus/camera/CameraManager$f$1;

    invoke-direct {v1, p0}, Lcom/oplus/camera/CameraManager$f$1;-><init>(Lcom/oplus/camera/CameraManager$f;)V

    invoke-virtual {v0, v1}, Lcom/oplus/camera/w/b;->a(Ljava/lang/Runnable;)V

    :cond_0
    return-void
.end method

.method public a(Landroid/hardware/camera2/CaptureResult;Lcom/oplus/camera/e/c;)V
    .locals 10

    const-string v0, "onCaptureCompleted captureX CameraManager"

    .line 9761
    invoke-static {v0}, Lcom/oplus/camera/e;->a(Ljava/lang/String;)V

    .line 9765
    iget-object v1, p0, Lcom/oplus/camera/CameraManager$f;->a:Lcom/oplus/camera/CameraManager;

    invoke-static {v1}, Lcom/oplus/camera/CameraManager;->i(Lcom/oplus/camera/CameraManager;)Lcom/oplus/camera/capmode/ModeManager;

    move-result-object v1

    if-nez v1, :cond_0

    const-string p0, "CameraManager"

    const-string p1, "onCaptureCompleted, mModeManager is null"

    .line 9766
    invoke-static {p0, p1}, Lcom/oplus/camera/e;->f(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    .line 9773
    :cond_0
    iget-object v1, p0, Lcom/oplus/camera/CameraManager$f;->a:Lcom/oplus/camera/CameraManager;

    invoke-static {v1}, Lcom/oplus/camera/CameraManager;->i(Lcom/oplus/camera/CameraManager;)Lcom/oplus/camera/capmode/ModeManager;

    move-result-object v1

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/oplus/camera/CameraManager$f;->a:Lcom/oplus/camera/CameraManager;

    .line 9774
    invoke-static {v1}, Lcom/oplus/camera/CameraManager;->f(Lcom/oplus/camera/CameraManager;)Lcom/oplus/camera/e/d;

    move-result-object v1

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/oplus/camera/CameraManager$f;->a:Lcom/oplus/camera/CameraManager;

    .line 9775
    invoke-static {v1}, Lcom/oplus/camera/CameraManager;->i(Lcom/oplus/camera/CameraManager;)Lcom/oplus/camera/capmode/ModeManager;

    move-result-object v1

    const/4 v2, -0x1

    invoke-virtual {v1, v2}, Lcom/oplus/camera/capmode/ModeManager;->l(I)Z

    move-result v1

    if-nez v1, :cond_2

    if-eqz p2, :cond_2

    iget-boolean v1, p2, Lcom/oplus/camera/e/c;->b:Z

    if-nez v1, :cond_1

    iget-object v1, p2, Lcom/oplus/camera/e/c;->e:Ljava/lang/String;

    const-string v2, "none"

    .line 9777
    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    .line 9778
    :cond_1
    iget-object v1, p0, Lcom/oplus/camera/CameraManager$f;->a:Lcom/oplus/camera/CameraManager;

    invoke-virtual {v1, p1}, Lcom/oplus/camera/CameraManager;->a(Landroid/hardware/camera2/CaptureResult;)V

    :cond_2
    const/4 v1, 0x0

    .line 9783
    iget-object v2, p0, Lcom/oplus/camera/CameraManager$f;->a:Lcom/oplus/camera/CameraManager;

    invoke-static {v2}, Lcom/oplus/camera/CameraManager;->aX(Lcom/oplus/camera/CameraManager;)Lcom/oplus/camera/u/a;

    move-result-object v2

    if-eqz v2, :cond_3

    .line 9784
    iget-object v1, p0, Lcom/oplus/camera/CameraManager$f;->a:Lcom/oplus/camera/CameraManager;

    invoke-static {v1}, Lcom/oplus/camera/CameraManager;->i(Lcom/oplus/camera/CameraManager;)Lcom/oplus/camera/capmode/ModeManager;

    move-result-object v1

    iget-object v2, p0, Lcom/oplus/camera/CameraManager$f;->a:Lcom/oplus/camera/CameraManager;

    invoke-static {v2}, Lcom/oplus/camera/CameraManager;->aF(Lcom/oplus/camera/CameraManager;)Lcom/oplus/camera/e/h;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/oplus/camera/capmode/ModeManager;->c(Lcom/oplus/camera/e/h;)Landroid/util/Size;

    move-result-object v1

    :cond_3
    move-object v6, v1

    const/4 v1, 0x0

    const-wide/16 v2, 0x0

    const-string v4, "com.oplus.mmcamera.professional.support"

    .line 9799
    invoke-static {v4}, Lcom/oplus/camera/aps/config/CameraConfig;->getConfigBooleanValue(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_4

    .line 9800
    iget-object v1, p0, Lcom/oplus/camera/CameraManager$f;->a:Lcom/oplus/camera/CameraManager;

    invoke-static {v1}, Lcom/oplus/camera/CameraManager;->i(Lcom/oplus/camera/CameraManager;)Lcom/oplus/camera/capmode/ModeManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/oplus/camera/capmode/ModeManager;->de()I

    move-result v1

    .line 9801
    iget-object v2, p0, Lcom/oplus/camera/CameraManager$f;->a:Lcom/oplus/camera/CameraManager;

    invoke-static {v2}, Lcom/oplus/camera/CameraManager;->i(Lcom/oplus/camera/CameraManager;)Lcom/oplus/camera/capmode/ModeManager;

    move-result-object v2

    invoke-virtual {v2}, Lcom/oplus/camera/capmode/ModeManager;->df()J

    move-result-wide v2

    :cond_4
    move v7, v1

    move-wide v8, v2

    .line 9804
    iget-object v1, p0, Lcom/oplus/camera/CameraManager$f;->a:Lcom/oplus/camera/CameraManager;

    invoke-static {v1}, Lcom/oplus/camera/CameraManager;->aY(Lcom/oplus/camera/CameraManager;)Lcom/oplus/camera/statistics/model/CaptureMsgData;

    move-result-object v2

    iget-object p0, p0, Lcom/oplus/camera/CameraManager$f;->a:Lcom/oplus/camera/CameraManager;

    .line 9805
    invoke-static {p0}, Lcom/oplus/camera/CameraManager;->aX(Lcom/oplus/camera/CameraManager;)Lcom/oplus/camera/u/a;

    move-result-object v5

    move-object v3, p1

    move-object v4, p2

    .line 9804
    invoke-static/range {v2 .. v9}, Lcom/oplus/camera/a/a;->a(Lcom/oplus/camera/statistics/model/CaptureMsgData;Landroid/hardware/camera2/CaptureResult;Lcom/oplus/camera/e/c;Lcom/oplus/camera/u/a;Landroid/util/Size;IJ)Lcom/oplus/camera/statistics/model/CaptureMsgData;

    move-result-object p0

    invoke-static {v1, p0}, Lcom/oplus/camera/CameraManager;->a(Lcom/oplus/camera/CameraManager;Lcom/oplus/camera/statistics/model/CaptureMsgData;)Lcom/oplus/camera/statistics/model/CaptureMsgData;

    .line 9807
    invoke-static {v0}, Lcom/oplus/camera/e;->b(Ljava/lang/String;)V

    return-void
.end method

.method public a(Z)V
    .locals 4

    .line 9730
    iget-object v0, p0, Lcom/oplus/camera/CameraManager$f;->a:Lcom/oplus/camera/CameraManager;

    invoke-static {v0}, Lcom/oplus/camera/CameraManager;->aW(Lcom/oplus/camera/CameraManager;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/oplus/camera/CameraManager$f;->a:Lcom/oplus/camera/CameraManager;

    invoke-static {v0}, Lcom/oplus/camera/CameraManager;->i(Lcom/oplus/camera/CameraManager;)Lcom/oplus/camera/capmode/ModeManager;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 9731
    iget-object v0, p0, Lcom/oplus/camera/CameraManager$f;->a:Lcom/oplus/camera/CameraManager;

    invoke-static {v0}, Lcom/oplus/camera/CameraManager;->f(Lcom/oplus/camera/CameraManager;)Lcom/oplus/camera/e/d;

    move-result-object v0

    iget-object v1, p0, Lcom/oplus/camera/CameraManager$f;->a:Lcom/oplus/camera/CameraManager;

    invoke-static {v1}, Lcom/oplus/camera/CameraManager;->i(Lcom/oplus/camera/CameraManager;)Lcom/oplus/camera/capmode/ModeManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/oplus/camera/capmode/ModeManager;->S()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/oplus/camera/e/d;->b(Ljava/lang/String;)V

    .line 9734
    :cond_0
    iget-object v0, p0, Lcom/oplus/camera/CameraManager$f;->a:Lcom/oplus/camera/CameraManager;

    invoke-static {v0}, Lcom/oplus/camera/CameraManager;->ag(Lcom/oplus/camera/CameraManager;)Lcom/oplus/camera/ag;

    move-result-object v0

    const/4 v1, 0x0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/oplus/camera/CameraManager$f;->a:Lcom/oplus/camera/CameraManager;

    invoke-static {v0}, Lcom/oplus/camera/CameraManager;->ag(Lcom/oplus/camera/CameraManager;)Lcom/oplus/camera/ag;

    move-result-object v0

    invoke-virtual {v0}, Lcom/oplus/camera/ag;->x()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 9735
    iget-object v0, p0, Lcom/oplus/camera/CameraManager$f;->a:Lcom/oplus/camera/CameraManager;

    invoke-static {v0}, Lcom/oplus/camera/CameraManager;->ag(Lcom/oplus/camera/CameraManager;)Lcom/oplus/camera/ag;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/oplus/camera/ag;->l(Z)V

    .line 9737
    iget-object v0, p0, Lcom/oplus/camera/CameraManager$f;->a:Lcom/oplus/camera/CameraManager;

    invoke-static {v0}, Lcom/oplus/camera/CameraManager;->i(Lcom/oplus/camera/CameraManager;)Lcom/oplus/camera/capmode/ModeManager;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 9738
    iget-object v0, p0, Lcom/oplus/camera/CameraManager$f;->a:Lcom/oplus/camera/CameraManager;

    invoke-static {v0}, Lcom/oplus/camera/CameraManager;->i(Lcom/oplus/camera/CameraManager;)Lcom/oplus/camera/capmode/ModeManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/oplus/camera/capmode/ModeManager;->cM()V

    .line 9741
    :cond_1
    iget-object v0, p0, Lcom/oplus/camera/CameraManager$f;->a:Lcom/oplus/camera/CameraManager;

    invoke-virtual {v0}, Lcom/oplus/camera/CameraManager;->aV()V

    .line 9744
    :cond_2
    iget-object v0, p0, Lcom/oplus/camera/CameraManager$f;->a:Lcom/oplus/camera/CameraManager;

    invoke-static {v0}, Lcom/oplus/camera/CameraManager;->i(Lcom/oplus/camera/CameraManager;)Lcom/oplus/camera/capmode/ModeManager;

    move-result-object v0

    const/4 v2, 0x1

    if-eqz v0, :cond_3

    if-eqz p1, :cond_3

    .line 9745
    iget-object p1, p0, Lcom/oplus/camera/CameraManager$f;->a:Lcom/oplus/camera/CameraManager;

    invoke-virtual {p1, v2}, Lcom/oplus/camera/CameraManager;->j(I)V

    .line 9746
    iget-object p1, p0, Lcom/oplus/camera/CameraManager$f;->a:Lcom/oplus/camera/CameraManager;

    invoke-static {p1}, Lcom/oplus/camera/CameraManager;->i(Lcom/oplus/camera/CameraManager;)Lcom/oplus/camera/capmode/ModeManager;

    move-result-object p1

    invoke-virtual {p1, v2}, Lcom/oplus/camera/capmode/ModeManager;->x(Z)V

    .line 9749
    :cond_3
    iget-object p1, p0, Lcom/oplus/camera/CameraManager$f;->a:Lcom/oplus/camera/CameraManager;

    invoke-static {p1}, Lcom/oplus/camera/CameraManager;->g(Lcom/oplus/camera/CameraManager;)Lcom/oplus/camera/ui/d;

    move-result-object p1

    if-eqz p1, :cond_5

    .line 9750
    iget-object p1, p0, Lcom/oplus/camera/CameraManager$f;->a:Lcom/oplus/camera/CameraManager;

    invoke-static {p1}, Lcom/oplus/camera/CameraManager;->g(Lcom/oplus/camera/CameraManager;)Lcom/oplus/camera/ui/d;

    move-result-object p1

    const-string v0, "com.oplus.feature.ai.scene.ultrawide.hint.support"

    .line 9751
    invoke-static {v0}, Lcom/oplus/camera/aps/config/CameraConfig;->getConfigBooleanValue(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/oplus/camera/CameraManager$f;->a:Lcom/oplus/camera/CameraManager;

    .line 9752
    invoke-virtual {v0}, Lcom/oplus/camera/CameraManager;->aO()F

    move-result v3

    invoke-static {v0, v3}, Lcom/oplus/camera/CameraManager;->b(Lcom/oplus/camera/CameraManager;F)Z

    move-result v0

    if-nez v0, :cond_4

    iget-object v0, p0, Lcom/oplus/camera/CameraManager$f;->a:Lcom/oplus/camera/CameraManager;

    .line 9753
    invoke-static {v0}, Lcom/oplus/camera/CameraManager;->i(Lcom/oplus/camera/CameraManager;)Lcom/oplus/camera/capmode/ModeManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/oplus/camera/capmode/ModeManager;->isNoneSatUltraWideAngleOpen()Z

    move-result v0

    if-nez v0, :cond_4

    iget-object v0, p0, Lcom/oplus/camera/CameraManager$f;->a:Lcom/oplus/camera/CameraManager;

    .line 9754
    invoke-static {v0}, Lcom/oplus/camera/CameraManager;->i(Lcom/oplus/camera/CameraManager;)Lcom/oplus/camera/capmode/ModeManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/oplus/camera/capmode/ModeManager;->bO()Z

    move-result v0

    if-nez v0, :cond_4

    iget-object p0, p0, Lcom/oplus/camera/CameraManager$f;->a:Lcom/oplus/camera/CameraManager;

    const-string v0, "pref_zoom_key"

    .line 9755
    invoke-virtual {p0, v0}, Lcom/oplus/camera/CameraManager;->b(Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_4

    move v1, v2

    .line 9750
    :cond_4
    invoke-virtual {p1, v1}, Lcom/oplus/camera/ui/d;->ar(Z)V

    :cond_5
    return-void
.end method

.method public b()V
    .locals 2

    .line 9703
    iget-object v0, p0, Lcom/oplus/camera/CameraManager$f;->a:Lcom/oplus/camera/CameraManager;

    invoke-static {v0}, Lcom/oplus/camera/CameraManager;->j(Lcom/oplus/camera/CameraManager;)Lcom/oplus/camera/w/b;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 9704
    iget-object v0, p0, Lcom/oplus/camera/CameraManager$f;->a:Lcom/oplus/camera/CameraManager;

    invoke-static {v0}, Lcom/oplus/camera/CameraManager;->j(Lcom/oplus/camera/CameraManager;)Lcom/oplus/camera/w/b;

    move-result-object v0

    new-instance v1, Lcom/oplus/camera/CameraManager$f$2;

    invoke-direct {v1, p0}, Lcom/oplus/camera/CameraManager$f$2;-><init>(Lcom/oplus/camera/CameraManager$f;)V

    invoke-virtual {v0, v1}, Lcom/oplus/camera/w/b;->a(Ljava/lang/Runnable;)V

    :cond_0
    return-void
.end method
