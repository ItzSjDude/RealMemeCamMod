.class Lcom/oplus/camera/capmode/d$13;
.super Ljava/lang/Object;
.source "CommonCapMode.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/oplus/camera/capmode/d;->onBeforeSnapping(Lcom/oplus/camera/e/c;)Z
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

    .line 2249
    iput-object p1, p0, Lcom/oplus/camera/capmode/d$13;->a:Lcom/oplus/camera/capmode/d;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 12

    .line 2252
    iget-object v0, p0, Lcom/oplus/camera/capmode/d$13;->a:Lcom/oplus/camera/capmode/d;

    iget-boolean v0, v0, Lcom/oplus/camera/capmode/d;->mbPaused:Z

    if-eqz v0, :cond_0

    const-string p0, "CommonCapMode"

    const-string v0, "onBeforeSnapping, return after pause"

    .line 2253
    invoke-static {p0, v0}, Lcom/oplus/camera/e;->a(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    .line 2258
    :cond_0
    iget-object v0, p0, Lcom/oplus/camera/capmode/d$13;->a:Lcom/oplus/camera/capmode/d;

    invoke-virtual {v0}, Lcom/oplus/camera/capmode/d;->isInNightProcess()Z

    move-result v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_1

    .line 2259
    iget-object v3, p0, Lcom/oplus/camera/capmode/d$13;->a:Lcom/oplus/camera/capmode/d;

    invoke-virtual {v3}, Lcom/oplus/camera/capmode/d;->isTripodNight()Z

    move-result v3

    if-eqz v3, :cond_1

    move v3, v1

    goto :goto_0

    :cond_1
    move v3, v2

    .line 2260
    :goto_0
    iget-object v4, p0, Lcom/oplus/camera/capmode/d$13;->a:Lcom/oplus/camera/capmode/d;

    invoke-virtual {v4}, Lcom/oplus/camera/capmode/d;->isInNightProProcess()Z

    move-result v4

    .line 2262
    iget-object v5, p0, Lcom/oplus/camera/capmode/d$13;->a:Lcom/oplus/camera/capmode/d;

    invoke-virtual {v5}, Lcom/oplus/camera/capmode/d;->shouldShowSteadyTips()Z

    move-result v5

    if-eqz v5, :cond_4

    .line 2263
    iget-object v5, p0, Lcom/oplus/camera/capmode/d$13;->a:Lcom/oplus/camera/capmode/d;

    iget-object v5, v5, Lcom/oplus/camera/capmode/d;->mCameraUIInterface:Lcom/oplus/camera/ui/CameraUIInterface;

    invoke-interface {v5}, Lcom/oplus/camera/ui/CameraUIInterface;->k()Lcom/oplus/camera/ui/a/a;

    move-result-object v5

    invoke-virtual {v5}, Lcom/oplus/camera/ui/a/a;->g()V

    .line 2264
    iget-object v5, p0, Lcom/oplus/camera/capmode/d$13;->a:Lcom/oplus/camera/capmode/d;

    iget-object v5, v5, Lcom/oplus/camera/capmode/d;->mCameraUIInterface:Lcom/oplus/camera/ui/CameraUIInterface;

    const v6, 0x7f100319

    invoke-interface {v5, v6}, Lcom/oplus/camera/ui/CameraUIInterface;->a(I)V

    .line 2265
    iget-object v5, p0, Lcom/oplus/camera/capmode/d$13;->a:Lcom/oplus/camera/capmode/d;

    iget-object v6, v5, Lcom/oplus/camera/capmode/d;->mCameraUIInterface:Lcom/oplus/camera/ui/CameraUIInterface;

    const v7, 0x7f100314

    const/4 v8, -0x1

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x1

    invoke-interface/range {v6 .. v11}, Lcom/oplus/camera/ui/CameraUIInterface;->a(IIZZZ)V

    .line 2267
    iget-object v5, p0, Lcom/oplus/camera/capmode/d$13;->a:Lcom/oplus/camera/capmode/d;

    iput-boolean v1, v5, Lcom/oplus/camera/capmode/d;->mbShowSteadyTips:Z

    .line 2268
    iput-boolean v2, v5, Lcom/oplus/camera/capmode/d;->mbStopSteadyTips:Z

    .line 2270
    invoke-virtual {v5}, Lcom/oplus/camera/capmode/d;->isNightAlgoCaptureTriggered()Z

    move-result v5

    if-eqz v5, :cond_4

    const-string v5, "com.oplus.ainight.support.night.process"

    .line 2272
    invoke-static {v5}, Lcom/oplus/camera/aps/config/CameraConfig;->getConfigBooleanValue(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_2

    iget-object v5, p0, Lcom/oplus/camera/capmode/d$13;->a:Lcom/oplus/camera/capmode/d;

    .line 2273
    invoke-virtual {v5}, Lcom/oplus/camera/capmode/d;->isAISceneOpen()Z

    move-result v5

    if-eqz v5, :cond_2

    const/16 v5, 0xc

    iget-object v6, p0, Lcom/oplus/camera/capmode/d$13;->a:Lcom/oplus/camera/capmode/d;

    iget-object v6, v6, Lcom/oplus/camera/capmode/d;->mCameraInterface:Lcom/oplus/camera/capmode/a;

    .line 2274
    invoke-interface {v6}, Lcom/oplus/camera/capmode/a;->j()I

    move-result v6

    if-ne v5, v6, :cond_2

    move v5, v1

    goto :goto_1

    :cond_2
    move v5, v2

    :goto_1
    if-nez v5, :cond_3

    .line 2277
    iget-object v5, p0, Lcom/oplus/camera/capmode/d$13;->a:Lcom/oplus/camera/capmode/d;

    invoke-static {v5}, Lcom/oplus/camera/capmode/d;->access$500(Lcom/oplus/camera/capmode/d;)V

    .line 2279
    :cond_3
    iget-object v5, p0, Lcom/oplus/camera/capmode/d$13;->a:Lcom/oplus/camera/capmode/d;

    iput v1, v5, Lcom/oplus/camera/capmode/d;->mNightAlgoTriggeredStep:I

    .line 2283
    :cond_4
    iget-object v5, p0, Lcom/oplus/camera/capmode/d$13;->a:Lcom/oplus/camera/capmode/d;

    iget-boolean v5, v5, Lcom/oplus/camera/capmode/d;->mbBurstShot:Z

    if-eqz v5, :cond_5

    iget-object v5, p0, Lcom/oplus/camera/capmode/d$13;->a:Lcom/oplus/camera/capmode/d;

    iget-object v5, v5, Lcom/oplus/camera/capmode/d;->mActivity:Landroid/app/Activity;

    if-eqz v5, :cond_5

    iget-object v5, p0, Lcom/oplus/camera/capmode/d$13;->a:Lcom/oplus/camera/capmode/d;

    iget-object v5, v5, Lcom/oplus/camera/capmode/d;->mCameraUIInterface:Lcom/oplus/camera/ui/CameraUIInterface;

    .line 2284
    invoke-interface {v5}, Lcom/oplus/camera/ui/CameraUIInterface;->l()Ljava/lang/String;

    move-result-object v5

    iget-object v6, p0, Lcom/oplus/camera/capmode/d$13;->a:Lcom/oplus/camera/capmode/d;

    iget-object v6, v6, Lcom/oplus/camera/capmode/d;->mActivity:Landroid/app/Activity;

    const v7, 0x7f1000a6

    invoke-virtual {v6, v7}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_5

    .line 2285
    iget-object v5, p0, Lcom/oplus/camera/capmode/d$13;->a:Lcom/oplus/camera/capmode/d;

    iget-object v5, v5, Lcom/oplus/camera/capmode/d;->mCameraUIInterface:Lcom/oplus/camera/ui/CameraUIInterface;

    invoke-interface {v5, v1, v2, v1}, Lcom/oplus/camera/ui/CameraUIInterface;->a(ZZZ)V

    .line 2288
    :cond_5
    iget-object v5, p0, Lcom/oplus/camera/capmode/d$13;->a:Lcom/oplus/camera/capmode/d;

    iget-boolean v5, v5, Lcom/oplus/camera/capmode/d;->mbBurstShot:Z

    if-nez v5, :cond_d

    iget-object v5, p0, Lcom/oplus/camera/capmode/d$13;->a:Lcom/oplus/camera/capmode/d;

    iget-boolean v5, v5, Lcom/oplus/camera/capmode/d;->mbSceneNight:Z

    if-nez v5, :cond_6

    if-eqz v0, :cond_d

    :cond_6
    if-eqz v0, :cond_7

    if-nez v3, :cond_d

    if-nez v4, :cond_d

    .line 2289
    iget-object v5, p0, Lcom/oplus/camera/capmode/d$13;->a:Lcom/oplus/camera/capmode/d;

    iget-boolean v5, v5, Lcom/oplus/camera/capmode/d;->mbSupportNightPictureTime:Z

    if-nez v5, :cond_d

    .line 2290
    :cond_7
    iget-object v5, p0, Lcom/oplus/camera/capmode/d$13;->a:Lcom/oplus/camera/capmode/d;

    invoke-virtual {v5}, Lcom/oplus/camera/capmode/d;->isSuperSeNightOpen()Z

    move-result v5

    if-eqz v5, :cond_8

    .line 2291
    iget-object v5, p0, Lcom/oplus/camera/capmode/d$13;->a:Lcom/oplus/camera/capmode/d;

    iget-object v5, v5, Lcom/oplus/camera/capmode/d;->mCameraUIInterface:Lcom/oplus/camera/ui/CameraUIInterface;

    invoke-interface {v5, v2, v2}, Lcom/oplus/camera/ui/CameraUIInterface;->d(ZZ)V

    .line 2292
    iget-object v5, p0, Lcom/oplus/camera/capmode/d$13;->a:Lcom/oplus/camera/capmode/d;

    iget-object v6, v5, Lcom/oplus/camera/capmode/d;->mCameraUIInterface:Lcom/oplus/camera/ui/CameraUIInterface;

    const v7, 0x7f100312

    const/4 v8, -0x1

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x1

    invoke-interface/range {v6 .. v11}, Lcom/oplus/camera/ui/CameraUIInterface;->a(IIZZZ)V

    .line 2294
    iget-object v5, p0, Lcom/oplus/camera/capmode/d$13;->a:Lcom/oplus/camera/capmode/d;

    invoke-static {v5, v1}, Lcom/oplus/camera/capmode/d;->access$602(Lcom/oplus/camera/capmode/d;Z)Z

    .line 2297
    :cond_8
    iget-object v5, p0, Lcom/oplus/camera/capmode/d$13;->a:Lcom/oplus/camera/capmode/d;

    invoke-virtual {v5}, Lcom/oplus/camera/capmode/d;->isSuperNightShutterCountDownOpen()Z

    move-result v5

    if-eqz v5, :cond_9

    .line 2298
    iget-object v1, p0, Lcom/oplus/camera/capmode/d$13;->a:Lcom/oplus/camera/capmode/d;

    invoke-static {v1}, Lcom/oplus/camera/capmode/d;->access$700(Lcom/oplus/camera/capmode/d;)V

    goto/16 :goto_3

    .line 2299
    :cond_9
    iget-object v5, p0, Lcom/oplus/camera/capmode/d$13;->a:Lcom/oplus/camera/capmode/d;

    invoke-virtual {v5}, Lcom/oplus/camera/capmode/d;->isSuperSeNightOpen()Z

    move-result v5

    const/4 v6, 0x4

    const-string v7, "button_color_inside_none"

    if-eqz v5, :cond_b

    .line 2300
    iget-object v5, p0, Lcom/oplus/camera/capmode/d$13;->a:Lcom/oplus/camera/capmode/d;

    invoke-static {v5}, Lcom/oplus/camera/capmode/d;->access$800(Lcom/oplus/camera/capmode/d;)Lcom/oplus/camera/ui/control/b;

    move-result-object v5

    if-nez v5, :cond_a

    .line 2301
    iget-object v5, p0, Lcom/oplus/camera/capmode/d$13;->a:Lcom/oplus/camera/capmode/d;

    new-instance v8, Lcom/oplus/camera/ui/control/b;

    invoke-direct {v8}, Lcom/oplus/camera/ui/control/b;-><init>()V

    invoke-static {v5, v8}, Lcom/oplus/camera/capmode/d;->access$802(Lcom/oplus/camera/capmode/d;Lcom/oplus/camera/ui/control/b;)Lcom/oplus/camera/ui/control/b;

    .line 2304
    :cond_a
    iget-object v5, p0, Lcom/oplus/camera/capmode/d$13;->a:Lcom/oplus/camera/capmode/d;

    invoke-static {v5}, Lcom/oplus/camera/capmode/d;->access$800(Lcom/oplus/camera/capmode/d;)Lcom/oplus/camera/ui/control/b;

    move-result-object v5

    invoke-virtual {v5, v7}, Lcom/oplus/camera/ui/control/b;->a(Ljava/lang/String;)V

    .line 2305
    iget-object v5, p0, Lcom/oplus/camera/capmode/d$13;->a:Lcom/oplus/camera/capmode/d;

    invoke-static {v5}, Lcom/oplus/camera/capmode/d;->access$800(Lcom/oplus/camera/capmode/d;)Lcom/oplus/camera/ui/control/b;

    move-result-object v5

    const/16 v7, 0xd

    invoke-virtual {v5, v7}, Lcom/oplus/camera/ui/control/b;->a(I)V

    .line 2306
    iget-object v5, p0, Lcom/oplus/camera/capmode/d$13;->a:Lcom/oplus/camera/capmode/d;

    invoke-static {v5}, Lcom/oplus/camera/capmode/d;->access$800(Lcom/oplus/camera/capmode/d;)Lcom/oplus/camera/ui/control/b;

    move-result-object v5

    invoke-virtual {v5, v6}, Lcom/oplus/camera/ui/control/b;->c(I)V

    .line 2307
    iget-object v5, p0, Lcom/oplus/camera/capmode/d$13;->a:Lcom/oplus/camera/capmode/d;

    iget-object v5, v5, Lcom/oplus/camera/capmode/d;->mCameraUIInterface:Lcom/oplus/camera/ui/CameraUIInterface;

    iget-object v6, p0, Lcom/oplus/camera/capmode/d$13;->a:Lcom/oplus/camera/capmode/d;

    invoke-static {v6}, Lcom/oplus/camera/capmode/d;->access$800(Lcom/oplus/camera/capmode/d;)Lcom/oplus/camera/ui/control/b;

    move-result-object v6

    invoke-interface {v5, v6}, Lcom/oplus/camera/ui/CameraUIInterface;->a(Lcom/oplus/camera/ui/control/b;)V

    .line 2308
    iget-object v5, p0, Lcom/oplus/camera/capmode/d$13;->a:Lcom/oplus/camera/capmode/d;

    iget-object v5, v5, Lcom/oplus/camera/capmode/d;->mCameraUIInterface:Lcom/oplus/camera/ui/CameraUIInterface;

    invoke-interface {v5, v2, v2}, Lcom/oplus/camera/ui/CameraUIInterface;->d(ZZ)V

    .line 2309
    iget-object v5, p0, Lcom/oplus/camera/capmode/d$13;->a:Lcom/oplus/camera/capmode/d;

    iget-object v5, v5, Lcom/oplus/camera/capmode/d;->mCameraUIInterface:Lcom/oplus/camera/ui/CameraUIInterface;

    iget-object v6, p0, Lcom/oplus/camera/capmode/d$13;->a:Lcom/oplus/camera/capmode/d;

    invoke-static {v6}, Lcom/oplus/camera/capmode/d;->access$900(Lcom/oplus/camera/capmode/d;)I

    move-result v6

    invoke-interface {v5, v6}, Lcom/oplus/camera/ui/CameraUIInterface;->h(I)V

    .line 2310
    iget-object v5, p0, Lcom/oplus/camera/capmode/d$13;->a:Lcom/oplus/camera/capmode/d;

    iget-object v6, v5, Lcom/oplus/camera/capmode/d;->mCameraUIInterface:Lcom/oplus/camera/ui/CameraUIInterface;

    const v7, 0x7f100312

    const/4 v8, -0x1

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x1

    invoke-interface/range {v6 .. v11}, Lcom/oplus/camera/ui/CameraUIInterface;->a(IIZZZ)V

    .line 2312
    iget-object v5, p0, Lcom/oplus/camera/capmode/d$13;->a:Lcom/oplus/camera/capmode/d;

    invoke-static {v5, v1}, Lcom/oplus/camera/capmode/d;->access$602(Lcom/oplus/camera/capmode/d;Z)Z

    goto :goto_3

    .line 2314
    :cond_b
    new-instance v1, Lcom/oplus/camera/ui/control/b;

    invoke-direct {v1}, Lcom/oplus/camera/ui/control/b;-><init>()V

    .line 2315
    invoke-virtual {v1, v7}, Lcom/oplus/camera/ui/control/b;->a(Ljava/lang/String;)V

    .line 2317
    invoke-static {}, Lcom/oplus/camera/util/Util;->ao()Z

    move-result v5

    if-eqz v5, :cond_c

    const/16 v5, 0x19

    .line 2318
    invoke-virtual {v1, v5}, Lcom/oplus/camera/ui/control/b;->a(I)V

    goto :goto_2

    .line 2320
    :cond_c
    invoke-virtual {v1, v6}, Lcom/oplus/camera/ui/control/b;->a(I)V

    .line 2323
    :goto_2
    iget-object v5, p0, Lcom/oplus/camera/capmode/d$13;->a:Lcom/oplus/camera/capmode/d;

    iget-object v5, v5, Lcom/oplus/camera/capmode/d;->mCameraUIInterface:Lcom/oplus/camera/ui/CameraUIInterface;

    invoke-interface {v5, v1}, Lcom/oplus/camera/ui/CameraUIInterface;->a(Lcom/oplus/camera/ui/control/b;)V

    .line 2328
    :cond_d
    :goto_3
    iget-object v1, p0, Lcom/oplus/camera/capmode/d$13;->a:Lcom/oplus/camera/capmode/d;

    const-string v5, "key_beauty3d"

    invoke-virtual {v1, v5}, Lcom/oplus/camera/capmode/d;->getSupportFunction(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_10

    iget-object v1, p0, Lcom/oplus/camera/capmode/d$13;->a:Lcom/oplus/camera/capmode/d;

    invoke-static {v1}, Lcom/oplus/camera/capmode/d;->access$1000(Lcom/oplus/camera/capmode/d;)Lcom/oplus/camera/d/b;

    move-result-object v1

    if-eqz v1, :cond_10

    .line 2329
    iget-object v1, p0, Lcom/oplus/camera/capmode/d$13;->a:Lcom/oplus/camera/capmode/d;

    invoke-virtual {v1}, Lcom/oplus/camera/capmode/d;->isShowBeauty3DEditChooseMenu()Z

    move-result v1

    if-eqz v1, :cond_e

    .line 2330
    iget-object v1, p0, Lcom/oplus/camera/capmode/d$13;->a:Lcom/oplus/camera/capmode/d;

    invoke-static {v1}, Lcom/oplus/camera/capmode/d;->access$1000(Lcom/oplus/camera/capmode/d;)Lcom/oplus/camera/d/b;

    move-result-object v1

    invoke-virtual {v1}, Lcom/oplus/camera/d/b;->p()V

    .line 2331
    iget-object v1, p0, Lcom/oplus/camera/capmode/d$13;->a:Lcom/oplus/camera/capmode/d;

    invoke-static {v1}, Lcom/oplus/camera/capmode/d;->access$1000(Lcom/oplus/camera/capmode/d;)Lcom/oplus/camera/d/b;

    move-result-object v1

    invoke-virtual {v1, v2}, Lcom/oplus/camera/d/b;->e(Z)V

    goto :goto_4

    .line 2333
    :cond_e
    iget-object v1, p0, Lcom/oplus/camera/capmode/d$13;->a:Lcom/oplus/camera/capmode/d;

    invoke-static {v1}, Lcom/oplus/camera/capmode/d;->access$1000(Lcom/oplus/camera/capmode/d;)Lcom/oplus/camera/d/b;

    move-result-object v1

    invoke-virtual {v1}, Lcom/oplus/camera/d/b;->q()V

    .line 2336
    :goto_4
    iget-object v1, p0, Lcom/oplus/camera/capmode/d$13;->a:Lcom/oplus/camera/capmode/d;

    invoke-virtual {v1}, Lcom/oplus/camera/capmode/d;->getTorchMode()Ljava/lang/String;

    move-result-object v1

    const-string v5, "on"

    .line 2338
    invoke-virtual {v1, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_f

    const-string v5, "auto"

    invoke-virtual {v1, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_10

    :cond_f
    iget-object v1, p0, Lcom/oplus/camera/capmode/d$13;->a:Lcom/oplus/camera/capmode/d;

    iget-boolean v1, v1, Lcom/oplus/camera/capmode/d;->mbFrontCamera:Z

    if-eqz v1, :cond_10

    iget-object v1, p0, Lcom/oplus/camera/capmode/d$13;->a:Lcom/oplus/camera/capmode/d;

    const-string v5, "pref_camera_torch_mode_key"

    .line 2340
    invoke-virtual {v1, v5}, Lcom/oplus/camera/capmode/d;->getSupportFunction(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_10

    .line 2341
    iget-object v1, p0, Lcom/oplus/camera/capmode/d$13;->a:Lcom/oplus/camera/capmode/d;

    invoke-static {v1}, Lcom/oplus/camera/capmode/d;->access$1000(Lcom/oplus/camera/capmode/d;)Lcom/oplus/camera/d/b;

    move-result-object v1

    invoke-virtual {v1}, Lcom/oplus/camera/d/b;->q()V

    .line 2345
    :cond_10
    iget-object v1, p0, Lcom/oplus/camera/capmode/d$13;->a:Lcom/oplus/camera/capmode/d;

    invoke-virtual {v1}, Lcom/oplus/camera/capmode/d;->isGoogleLensEnable()Z

    move-result v1

    if-eqz v1, :cond_11

    .line 2346
    iget-object v1, p0, Lcom/oplus/camera/capmode/d$13;->a:Lcom/oplus/camera/capmode/d;

    invoke-static {v1, v2}, Lcom/oplus/camera/capmode/d;->access$1100(Lcom/oplus/camera/capmode/d;Z)V

    :cond_11
    if-nez v0, :cond_12

    if-eqz v4, :cond_14

    .line 2349
    :cond_12
    iget-object v0, p0, Lcom/oplus/camera/capmode/d$13;->a:Lcom/oplus/camera/capmode/d;

    iget-boolean v0, v0, Lcom/oplus/camera/capmode/d;->mbBurstShot:Z

    if-nez v0, :cond_14

    .line 2350
    iget-object v0, p0, Lcom/oplus/camera/capmode/d$13;->a:Lcom/oplus/camera/capmode/d;

    invoke-static {v0}, Lcom/oplus/camera/capmode/d;->access$1200(Lcom/oplus/camera/capmode/d;)V

    if-nez v3, :cond_13

    .line 2352
    iget-object v0, p0, Lcom/oplus/camera/capmode/d$13;->a:Lcom/oplus/camera/capmode/d;

    iget-boolean v0, v0, Lcom/oplus/camera/capmode/d;->mbSupportNightPictureTime:Z

    if-nez v0, :cond_13

    if-eqz v4, :cond_14

    .line 2353
    :cond_13
    iget-object v0, p0, Lcom/oplus/camera/capmode/d$13;->a:Lcom/oplus/camera/capmode/d;

    invoke-static {v0}, Lcom/oplus/camera/capmode/d;->access$500(Lcom/oplus/camera/capmode/d;)V

    .line 2355
    iget-object v0, p0, Lcom/oplus/camera/capmode/d$13;->a:Lcom/oplus/camera/capmode/d;

    iput-boolean v2, v0, Lcom/oplus/camera/capmode/d;->mbCaptureRawTimeDone:Z

    .line 2356
    invoke-static {v0, v2}, Lcom/oplus/camera/capmode/d;->access$1302(Lcom/oplus/camera/capmode/d;Z)Z

    if-nez v4, :cond_14

    .line 2359
    iget-object v0, p0, Lcom/oplus/camera/capmode/d$13;->a:Lcom/oplus/camera/capmode/d;

    iget-object v0, v0, Lcom/oplus/camera/capmode/d;->mCameraUIInterface:Lcom/oplus/camera/ui/CameraUIInterface;

    invoke-interface {v0}, Lcom/oplus/camera/ui/CameraUIInterface;->ab()V

    .line 2360
    iget-object p0, p0, Lcom/oplus/camera/capmode/d$13;->a:Lcom/oplus/camera/capmode/d;

    iget-object v0, p0, Lcom/oplus/camera/capmode/d;->mCameraUIInterface:Lcom/oplus/camera/ui/CameraUIInterface;

    const v1, 0x7f100314

    const/4 v2, -0x1

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-interface/range {v0 .. v5}, Lcom/oplus/camera/ui/CameraUIInterface;->a(IIZZZ)V

    :cond_14
    return-void
.end method
