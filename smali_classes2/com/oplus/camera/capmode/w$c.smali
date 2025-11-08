.class final Lcom/oplus/camera/capmode/w$c;
.super Landroid/os/Handler;
.source "VideoMode.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/oplus/camera/capmode/w;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "c"
.end annotation


# instance fields
.field final synthetic a:Lcom/oplus/camera/capmode/w;


# direct methods
.method private constructor <init>(Lcom/oplus/camera/capmode/w;)V
    .locals 0

    .line 3325
    iput-object p1, p0, Lcom/oplus/camera/capmode/w$c;->a:Lcom/oplus/camera/capmode/w;

    .line 3326
    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object p1

    invoke-direct {p0, p1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    return-void
.end method

.method synthetic constructor <init>(Lcom/oplus/camera/capmode/w;Lcom/oplus/camera/capmode/w$1;)V
    .locals 0

    .line 3324
    invoke-direct {p0, p1}, Lcom/oplus/camera/capmode/w$c;-><init>(Lcom/oplus/camera/capmode/w;)V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 9

    .line 3331
    iget v0, p1, Landroid/os/Message;->what:I

    const-wide/16 v1, 0x3e8

    const-string v3, "com.oplus.camera.video.brightness"

    const-string v4, "screen_brightness"

    const/16 v5, 0x82

    const-string v6, "persist.sys.oplus.display.brightness.mode"

    const/4 v7, 0x1

    const/4 v8, 0x0

    packed-switch v0, :pswitch_data_0

    :pswitch_0
    goto/16 :goto_1

    .line 3375
    :pswitch_1
    invoke-static {v6, v8}, Lcom/oplus/camera/util/Util;->a(Ljava/lang/String;I)I

    move-result p1

    if-ne v7, p1, :cond_0

    .line 3381
    invoke-static {v3}, Lcom/oplus/camera/aps/config/CameraConfig;->getConfigIntValue(Ljava/lang/String;)I

    move-result v5

    const-string p1, "com.oplus.camera.video.brightness.second"

    .line 3382
    invoke-static {p1}, Lcom/oplus/camera/aps/config/CameraConfig;->getConfigIntValue(Ljava/lang/String;)I

    move-result p1

    goto :goto_0

    :cond_0
    move p1, v5

    .line 3385
    :goto_0
    iget-object v0, p0, Lcom/oplus/camera/capmode/w$c;->a:Lcom/oplus/camera/capmode/w;

    iget-object v0, v0, Lcom/oplus/camera/capmode/w;->mActivity:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    invoke-static {v0, v4, v5}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    int-to-float v0, v0

    const/high16 v1, 0x43330000    # 179.0f

    cmpl-float v0, v0, v1

    if-lez v0, :cond_5

    .line 3389
    iget-object p0, p0, Lcom/oplus/camera/capmode/w$c;->a:Lcom/oplus/camera/capmode/w;

    int-to-float v0, v5

    invoke-static {p0, p1, v0}, Lcom/oplus/camera/capmode/w;->access$1300(Lcom/oplus/camera/capmode/w;IF)V

    goto/16 :goto_1

    .line 3422
    :pswitch_2
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "handleMessage, timeout with MotionDetected: "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/oplus/camera/capmode/w$c;->a:Lcom/oplus/camera/capmode/w;

    invoke-virtual {v0}, Lcom/oplus/camera/capmode/w;->isMotionDetected()Z

    move-result v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "VideoMode"

    invoke-static {v0, p1}, Lcom/oplus/camera/e;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 3424
    iget-object p1, p0, Lcom/oplus/camera/capmode/w$c;->a:Lcom/oplus/camera/capmode/w;

    invoke-virtual {p1}, Lcom/oplus/camera/capmode/w;->isVideoRecordStarted()Z

    move-result p1

    if-eqz p1, :cond_5

    iget-object p1, p0, Lcom/oplus/camera/capmode/w$c;->a:Lcom/oplus/camera/capmode/w;

    invoke-virtual {p1}, Lcom/oplus/camera/capmode/w;->isMotionDetected()Z

    move-result p1

    if-nez p1, :cond_5

    .line 3425
    iget-object p0, p0, Lcom/oplus/camera/capmode/w$c;->a:Lcom/oplus/camera/capmode/w;

    invoke-virtual {p0}, Lcom/oplus/camera/capmode/w;->onVideoShutterButtonClick()V

    goto/16 :goto_1

    .line 3417
    :pswitch_3
    iget-object p0, p0, Lcom/oplus/camera/capmode/w$c;->a:Lcom/oplus/camera/capmode/w;

    iget-object p0, p0, Lcom/oplus/camera/capmode/w;->mActivity:Landroid/app/Activity;

    const p1, 0x7f1006a0

    invoke-static {p0, p1}, Lcom/oplus/camera/util/o;->a(Landroid/content/Context;I)V

    goto/16 :goto_1

    .line 3399
    :pswitch_4
    iget-object p1, p0, Lcom/oplus/camera/capmode/w$c;->a:Lcom/oplus/camera/capmode/w;

    invoke-virtual {p1}, Lcom/oplus/camera/capmode/w;->isVideoRecordStarted()Z

    move-result p1

    if-eqz p1, :cond_1

    .line 3400
    iget-object p0, p0, Lcom/oplus/camera/capmode/w$c;->a:Lcom/oplus/camera/capmode/w;

    invoke-virtual {p0}, Lcom/oplus/camera/capmode/w;->onVideoShutterButtonClick()V

    goto/16 :goto_1

    :cond_1
    const/16 p1, 0xa

    .line 3402
    invoke-virtual {p0, p1, v1, v2}, Lcom/oplus/camera/capmode/w$c;->sendEmptyMessageDelayed(IJ)Z

    goto/16 :goto_1

    .line 3408
    :pswitch_5
    iget-object p1, p0, Lcom/oplus/camera/capmode/w$c;->a:Lcom/oplus/camera/capmode/w;

    invoke-virtual {p1}, Lcom/oplus/camera/capmode/w;->isVideoRecordStopped()Z

    move-result p1

    if-nez p1, :cond_2

    .line 3409
    iget-object p0, p0, Lcom/oplus/camera/capmode/w$c;->a:Lcom/oplus/camera/capmode/w;

    invoke-static {p0}, Lcom/oplus/camera/capmode/w;->access$1500(Lcom/oplus/camera/capmode/w;)Landroid/os/Handler;

    move-result-object p0

    const/16 p1, 0x9

    invoke-virtual {p0, p1, v1, v2}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    goto :goto_1

    .line 3411
    :cond_2
    invoke-static {}, Lcom/oplus/camera/MyApplication;->c()V

    goto :goto_1

    .line 3395
    :pswitch_6
    iget-object p0, p0, Lcom/oplus/camera/capmode/w$c;->a:Lcom/oplus/camera/capmode/w;

    invoke-static {p0}, Lcom/oplus/camera/capmode/w;->access$1400(Lcom/oplus/camera/capmode/w;)V

    goto :goto_1

    .line 3359
    :pswitch_7
    invoke-static {v6, v8}, Lcom/oplus/camera/util/Util;->a(Ljava/lang/String;I)I

    move-result p1

    if-ne v7, p1, :cond_3

    .line 3364
    invoke-static {v3}, Lcom/oplus/camera/aps/config/CameraConfig;->getConfigIntValue(Ljava/lang/String;)I

    move-result v5

    .line 3367
    :cond_3
    iget-object p1, p0, Lcom/oplus/camera/capmode/w$c;->a:Lcom/oplus/camera/capmode/w;

    iget-object p1, p1, Lcom/oplus/camera/capmode/w;->mActivity:Landroid/app/Activity;

    invoke-virtual {p1}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p1

    invoke-static {p1, v4, v5}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result p1

    int-to-float p1, p1

    .line 3370
    iget-object p0, p0, Lcom/oplus/camera/capmode/w$c;->a:Lcom/oplus/camera/capmode/w;

    invoke-static {p0, v5, p1}, Lcom/oplus/camera/capmode/w;->access$1300(Lcom/oplus/camera/capmode/w;IF)V

    goto :goto_1

    .line 3351
    :pswitch_8
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    if-eqz v0, :cond_4

    .line 3352
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v7

    .line 3355
    :cond_4
    iget-object p0, p0, Lcom/oplus/camera/capmode/w$c;->a:Lcom/oplus/camera/capmode/w;

    invoke-virtual {p0, v8, v7}, Lcom/oplus/camera/capmode/w;->handleStartError(ZZ)V

    goto :goto_1

    .line 3345
    :pswitch_9
    iget-object p0, p0, Lcom/oplus/camera/capmode/w$c;->a:Lcom/oplus/camera/capmode/w;

    iget-object p0, p0, Lcom/oplus/camera/capmode/w;->mCameraUIInterface:Lcom/oplus/camera/ui/CameraUIInterface;

    invoke-interface {p0, v7, v8}, Lcom/oplus/camera/ui/CameraUIInterface;->a(ZZ)V

    goto :goto_1

    .line 3341
    :pswitch_a
    iget-object p0, p0, Lcom/oplus/camera/capmode/w$c;->a:Lcom/oplus/camera/capmode/w;

    iget-object p0, p0, Lcom/oplus/camera/capmode/w;->mCameraUIInterface:Lcom/oplus/camera/ui/CameraUIInterface;

    invoke-interface {p0, v7, v8}, Lcom/oplus/camera/ui/CameraUIInterface;->b(ZZ)V

    goto :goto_1

    .line 3337
    :pswitch_b
    iget-object p0, p0, Lcom/oplus/camera/capmode/w$c;->a:Lcom/oplus/camera/capmode/w;

    new-instance p1, Lcom/oplus/camera/capmode/w$b;

    const/4 v0, 0x0

    invoke-direct {p1, p0, v0}, Lcom/oplus/camera/capmode/w$b;-><init>(Lcom/oplus/camera/capmode/w;Lcom/oplus/camera/capmode/w$1;)V

    new-array v0, v8, [Ljava/lang/Void;

    invoke-virtual {p1, v0}, Lcom/oplus/camera/capmode/w$b;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    move-result-object p1

    invoke-static {p0, p1}, Lcom/oplus/camera/capmode/w;->access$1102(Lcom/oplus/camera/capmode/w;Landroid/os/AsyncTask;)Landroid/os/AsyncTask;

    goto :goto_1

    .line 3333
    :pswitch_c
    iget-object p0, p0, Lcom/oplus/camera/capmode/w$c;->a:Lcom/oplus/camera/capmode/w;

    invoke-static {p0}, Lcom/oplus/camera/capmode/w;->access$1000(Lcom/oplus/camera/capmode/w;)V

    :cond_5
    :goto_1
    return-void

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_c
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_0
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
    .end packed-switch
.end method
