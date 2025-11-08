.class Lcom/oplus/camera/capmode/d$17;
.super Ljava/lang/Object;
.source "CommonCapMode.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/oplus/camera/capmode/d;->onCaptureSequenceCompleted()V
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

    .line 2733
    iput-object p1, p0, Lcom/oplus/camera/capmode/d$17;->a:Lcom/oplus/camera/capmode/d;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 7

    .line 2736
    iget-object v0, p0, Lcom/oplus/camera/capmode/d$17;->a:Lcom/oplus/camera/capmode/d;

    invoke-virtual {v0}, Lcom/oplus/camera/capmode/d;->isSuperNightShutterCountDownOpen()Z

    move-result v0

    const/4 v1, 0x2

    if-eqz v0, :cond_0

    .line 2737
    iget-object p0, p0, Lcom/oplus/camera/capmode/d$17;->a:Lcom/oplus/camera/capmode/d;

    iput v1, p0, Lcom/oplus/camera/capmode/d;->mNightAlgoTriggeredStep:I

    goto/16 :goto_0

    :cond_0
    const/4 v0, 0x1

    .line 2738
    iget-object v2, p0, Lcom/oplus/camera/capmode/d$17;->a:Lcom/oplus/camera/capmode/d;

    iget v2, v2, Lcom/oplus/camera/capmode/d;->mNightAlgoTriggeredStep:I

    if-ne v0, v2, :cond_2

    iget-object v0, p0, Lcom/oplus/camera/capmode/d$17;->a:Lcom/oplus/camera/capmode/d;

    iget-object v0, v0, Lcom/oplus/camera/capmode/d;->mCameraUIInterface:Lcom/oplus/camera/ui/CameraUIInterface;

    if-eqz v0, :cond_2

    .line 2739
    iget-object v0, p0, Lcom/oplus/camera/capmode/d$17;->a:Lcom/oplus/camera/capmode/d;

    iput v1, v0, Lcom/oplus/camera/capmode/d;->mNightAlgoTriggeredStep:I

    .line 2741
    invoke-virtual {v0}, Lcom/oplus/camera/capmode/d;->isAISceneOpen()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 2742
    iget-object v0, p0, Lcom/oplus/camera/capmode/d$17;->a:Lcom/oplus/camera/capmode/d;

    iget-object v0, v0, Lcom/oplus/camera/capmode/d;->mCameraUIInterface:Lcom/oplus/camera/ui/CameraUIInterface;

    invoke-interface {v0}, Lcom/oplus/camera/ui/CameraUIInterface;->ab()V

    .line 2745
    :cond_1
    iget-object v0, p0, Lcom/oplus/camera/capmode/d$17;->a:Lcom/oplus/camera/capmode/d;

    iget-boolean v0, v0, Lcom/oplus/camera/capmode/d;->mbCaptureRawTimeDone:Z

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/oplus/camera/capmode/d$17;->a:Lcom/oplus/camera/capmode/d;

    invoke-virtual {v0}, Lcom/oplus/camera/capmode/d;->isInOfflineNightProcess()Z

    move-result v0

    if-nez v0, :cond_3

    .line 2746
    iget-object v0, p0, Lcom/oplus/camera/capmode/d$17;->a:Lcom/oplus/camera/capmode/d;

    iget-object v0, v0, Lcom/oplus/camera/capmode/d;->mCameraUIInterface:Lcom/oplus/camera/ui/CameraUIInterface;

    const v1, 0x7f100314

    invoke-interface {v0, v1}, Lcom/oplus/camera/ui/CameraUIInterface;->a(I)V

    .line 2747
    iget-object v0, p0, Lcom/oplus/camera/capmode/d$17;->a:Lcom/oplus/camera/capmode/d;

    iget-object v1, v0, Lcom/oplus/camera/capmode/d;->mCameraUIInterface:Lcom/oplus/camera/ui/CameraUIInterface;

    const v2, 0x7f10031b

    const/4 v3, -0x1

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x1

    invoke-interface/range {v1 .. v6}, Lcom/oplus/camera/ui/CameraUIInterface;->a(IIZZZ)V

    .line 2749
    iget-object v0, p0, Lcom/oplus/camera/capmode/d$17;->a:Lcom/oplus/camera/capmode/d;

    iget-object v0, v0, Lcom/oplus/camera/capmode/d;->mCameraUIInterface:Lcom/oplus/camera/ui/CameraUIInterface;

    const/4 v1, 0x0

    invoke-interface {v0, v1, v1}, Lcom/oplus/camera/ui/CameraUIInterface;->a(ZZ)V

    .line 2750
    iget-object p0, p0, Lcom/oplus/camera/capmode/d$17;->a:Lcom/oplus/camera/capmode/d;

    invoke-virtual {p0, v1}, Lcom/oplus/camera/capmode/d;->restoreAllViews(Z)V

    goto :goto_0

    .line 2752
    :cond_2
    iget-object v0, p0, Lcom/oplus/camera/capmode/d$17;->a:Lcom/oplus/camera/capmode/d;

    invoke-virtual {v0}, Lcom/oplus/camera/capmode/d;->isUltraHighResolutionOpened()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-static {}, Lcom/oplus/camera/MyApplication;->d()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/oplus/camera/util/Util;->h(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 2753
    iget-object v0, p0, Lcom/oplus/camera/capmode/d$17;->a:Lcom/oplus/camera/capmode/d;

    iget-object v1, v0, Lcom/oplus/camera/capmode/d;->mCameraUIInterface:Lcom/oplus/camera/ui/CameraUIInterface;

    const v2, 0x7f10031b

    const/4 v3, -0x1

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x1

    invoke-interface/range {v1 .. v6}, Lcom/oplus/camera/ui/CameraUIInterface;->a(IIZZZ)V

    .line 2756
    iget-object v0, p0, Lcom/oplus/camera/capmode/d$17;->a:Lcom/oplus/camera/capmode/d;

    invoke-virtual {v0}, Lcom/oplus/camera/capmode/d;->isAISceneOpen()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 2757
    iget-object p0, p0, Lcom/oplus/camera/capmode/d$17;->a:Lcom/oplus/camera/capmode/d;

    iget-object p0, p0, Lcom/oplus/camera/capmode/d;->mCameraUIInterface:Lcom/oplus/camera/ui/CameraUIInterface;

    invoke-interface {p0}, Lcom/oplus/camera/ui/CameraUIInterface;->ab()V

    :cond_3
    :goto_0
    return-void
.end method
