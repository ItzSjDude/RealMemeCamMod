.class Lcom/oplus/camera/capmode/BaseMode$1;
.super Landroid/os/Handler;
.source "BaseMode.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/oplus/camera/capmode/BaseMode;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/oplus/camera/capmode/BaseMode;


# direct methods
.method constructor <init>(Lcom/oplus/camera/capmode/BaseMode;Landroid/os/Looper;)V
    .locals 0

    .line 327
    iput-object p1, p0, Lcom/oplus/camera/capmode/BaseMode$1;->a:Lcom/oplus/camera/capmode/BaseMode;

    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 8

    const-string v0, "BaseMode"

    if-nez p1, :cond_0

    const-string p0, "handleMessage, msg is null"

    .line 331
    invoke-static {v0, p0}, Lcom/oplus/camera/e;->f(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    .line 336
    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "handleMessage, msg is: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/oplus/camera/capmode/BaseMode$1;->a:Lcom/oplus/camera/capmode/BaseMode;

    iget v3, p1, Landroid/os/Message;->what:I

    invoke-static {v2, v3}, Lcom/oplus/camera/capmode/BaseMode;->access$000(Lcom/oplus/camera/capmode/BaseMode;I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/oplus/camera/e;->c(Ljava/lang/String;Ljava/lang/String;)V

    .line 338
    iget v0, p1, Landroid/os/Message;->what:I

    const/16 v1, 0x11

    const/4 v2, 0x1

    packed-switch v0, :pswitch_data_0

    goto/16 :goto_0

    .line 410
    :pswitch_0
    iget-object p1, p0, Lcom/oplus/camera/capmode/BaseMode$1;->a:Lcom/oplus/camera/capmode/BaseMode;

    iget-object p1, p1, Lcom/oplus/camera/capmode/BaseMode;->mCameraUIInterface:Lcom/oplus/camera/ui/CameraUIInterface;

    if-eqz p1, :cond_1

    iget-object p1, p0, Lcom/oplus/camera/capmode/BaseMode$1;->a:Lcom/oplus/camera/capmode/BaseMode;

    invoke-static {p1}, Lcom/oplus/camera/capmode/BaseMode;->access$300(Lcom/oplus/camera/capmode/BaseMode;)Landroid/os/Handler;

    move-result-object p1

    if-eqz p1, :cond_1

    .line 411
    iget-object p0, p0, Lcom/oplus/camera/capmode/BaseMode$1;->a:Lcom/oplus/camera/capmode/BaseMode;

    iget-object p0, p0, Lcom/oplus/camera/capmode/BaseMode;->mCameraUIInterface:Lcom/oplus/camera/ui/CameraUIInterface;

    const/16 p1, 0x14

    invoke-interface {p0, p1, v2}, Lcom/oplus/camera/ui/CameraUIInterface;->f(IZ)V

    goto/16 :goto_0

    .line 402
    :pswitch_1
    iget-object p1, p0, Lcom/oplus/camera/capmode/BaseMode$1;->a:Lcom/oplus/camera/capmode/BaseMode;

    iget-object p1, p1, Lcom/oplus/camera/capmode/BaseMode;->mCameraUIInterface:Lcom/oplus/camera/ui/CameraUIInterface;

    if-eqz p1, :cond_1

    iget-object p1, p0, Lcom/oplus/camera/capmode/BaseMode$1;->a:Lcom/oplus/camera/capmode/BaseMode;

    invoke-static {p1}, Lcom/oplus/camera/capmode/BaseMode;->access$300(Lcom/oplus/camera/capmode/BaseMode;)Landroid/os/Handler;

    move-result-object p1

    if-eqz p1, :cond_1

    .line 403
    iget-object p1, p0, Lcom/oplus/camera/capmode/BaseMode$1;->a:Lcom/oplus/camera/capmode/BaseMode;

    iget-object p1, p1, Lcom/oplus/camera/capmode/BaseMode;->mCameraUIInterface:Lcom/oplus/camera/ui/CameraUIInterface;

    invoke-interface {p1, v1, v2}, Lcom/oplus/camera/ui/CameraUIInterface;->f(IZ)V

    .line 404
    iget-object p0, p0, Lcom/oplus/camera/capmode/BaseMode$1;->a:Lcom/oplus/camera/capmode/BaseMode;

    invoke-static {p0}, Lcom/oplus/camera/capmode/BaseMode;->access$300(Lcom/oplus/camera/capmode/BaseMode;)Landroid/os/Handler;

    move-result-object p0

    const/16 p1, 0x9

    invoke-virtual {p0, p1}, Landroid/os/Handler;->removeMessages(I)V

    goto/16 :goto_0

    .line 394
    :pswitch_2
    iget-object p1, p0, Lcom/oplus/camera/capmode/BaseMode$1;->a:Lcom/oplus/camera/capmode/BaseMode;

    iget-boolean p1, p1, Lcom/oplus/camera/capmode/BaseMode;->mbPaused:Z

    if-nez p1, :cond_1

    iget-object p1, p0, Lcom/oplus/camera/capmode/BaseMode$1;->a:Lcom/oplus/camera/capmode/BaseMode;

    iget-object p1, p1, Lcom/oplus/camera/capmode/BaseMode;->mActivity:Landroid/app/Activity;

    if-eqz p1, :cond_1

    .line 395
    iget-object p0, p0, Lcom/oplus/camera/capmode/BaseMode$1;->a:Lcom/oplus/camera/capmode/BaseMode;

    iget-object p1, p0, Lcom/oplus/camera/capmode/BaseMode;->mActivity:Landroid/app/Activity;

    const v0, 0x7f090168

    invoke-virtual {p1, v0}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    invoke-virtual {p0, p1, v1}, Lcom/oplus/camera/capmode/BaseMode;->showFirstBubble(Landroid/view/View;I)V

    goto/16 :goto_0

    .line 383
    :pswitch_3
    iget-object p1, p0, Lcom/oplus/camera/capmode/BaseMode$1;->a:Lcom/oplus/camera/capmode/BaseMode;

    iget-boolean p1, p1, Lcom/oplus/camera/capmode/BaseMode;->mbPaused:Z

    if-nez p1, :cond_1

    const-string p1, "onShowBubble"

    .line 384
    invoke-static {p1}, Lcom/oplus/camera/e;->a(Ljava/lang/String;)V

    .line 386
    iget-object p0, p0, Lcom/oplus/camera/capmode/BaseMode$1;->a:Lcom/oplus/camera/capmode/BaseMode;

    invoke-virtual {p0}, Lcom/oplus/camera/capmode/BaseMode;->onShowBubble()V

    .line 388
    invoke-static {p1}, Lcom/oplus/camera/e;->b(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 376
    :pswitch_4
    iget-object p1, p0, Lcom/oplus/camera/capmode/BaseMode$1;->a:Lcom/oplus/camera/capmode/BaseMode;

    iget-boolean p1, p1, Lcom/oplus/camera/capmode/BaseMode;->mbPaused:Z

    if-nez p1, :cond_1

    iget-object p1, p0, Lcom/oplus/camera/capmode/BaseMode$1;->a:Lcom/oplus/camera/capmode/BaseMode;

    iget-object p1, p1, Lcom/oplus/camera/capmode/BaseMode;->mCameraUIInterface:Lcom/oplus/camera/ui/CameraUIInterface;

    if-eqz p1, :cond_1

    iget-object p1, p0, Lcom/oplus/camera/capmode/BaseMode$1;->a:Lcom/oplus/camera/capmode/BaseMode;

    iget-object p1, p1, Lcom/oplus/camera/capmode/BaseMode;->mCameraUIInterface:Lcom/oplus/camera/ui/CameraUIInterface;

    invoke-interface {p1}, Lcom/oplus/camera/ui/CameraUIInterface;->aG()Z

    move-result p1

    if-nez p1, :cond_1

    .line 377
    iget-object p0, p0, Lcom/oplus/camera/capmode/BaseMode$1;->a:Lcom/oplus/camera/capmode/BaseMode;

    invoke-virtual {p0}, Lcom/oplus/camera/capmode/BaseMode;->showNextTip()V

    goto/16 :goto_0

    .line 372
    :pswitch_5
    iget-object p0, p0, Lcom/oplus/camera/capmode/BaseMode$1;->a:Lcom/oplus/camera/capmode/BaseMode;

    iget-object p0, p0, Lcom/oplus/camera/capmode/BaseMode;->mCameraUIInterface:Lcom/oplus/camera/ui/CameraUIInterface;

    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Lcom/oplus/camera/ui/control/e;

    invoke-interface {p0, p1, v2}, Lcom/oplus/camera/ui/CameraUIInterface;->a(Lcom/oplus/camera/ui/control/e;I)V

    goto :goto_0

    .line 368
    :pswitch_6
    iget-object p0, p0, Lcom/oplus/camera/capmode/BaseMode$1;->a:Lcom/oplus/camera/capmode/BaseMode;

    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Lcom/oplus/camera/ui/preview/a/p;

    invoke-static {p0, p1}, Lcom/oplus/camera/capmode/BaseMode;->access$200(Lcom/oplus/camera/capmode/BaseMode;Lcom/oplus/camera/ui/preview/a/p;)V

    goto :goto_0

    .line 364
    :pswitch_7
    iget-object p0, p0, Lcom/oplus/camera/capmode/BaseMode$1;->a:Lcom/oplus/camera/capmode/BaseMode;

    invoke-virtual {p0}, Lcom/oplus/camera/capmode/BaseMode;->updateEffectMenuNames()V

    goto :goto_0

    .line 360
    :pswitch_8
    iget-object p0, p0, Lcom/oplus/camera/capmode/BaseMode$1;->a:Lcom/oplus/camera/capmode/BaseMode;

    invoke-virtual {p0}, Lcom/oplus/camera/capmode/BaseMode;->doAfterStartPreview()V

    goto :goto_0

    .line 356
    :pswitch_9
    iget-object p0, p0, Lcom/oplus/camera/capmode/BaseMode$1;->a:Lcom/oplus/camera/capmode/BaseMode;

    invoke-virtual {p0}, Lcom/oplus/camera/capmode/BaseMode;->displayScreenHintIconInSwitchOn()V

    goto :goto_0

    .line 340
    :pswitch_a
    invoke-virtual {p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object p1

    if-eqz p1, :cond_1

    const-string v0, "picture_data"

    .line 343
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    move-object v2, v0

    check-cast v2, [B

    const-string v0, "picture_width"

    .line 344
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v3

    const-string v0, "picture_height"

    .line 345
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v4

    const-string v0, "picture_format"

    .line 346
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v5

    const-string v0, "is_burst_shot"

    .line 347
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v6

    const-string v0, "request_format"

    .line 348
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result v7

    .line 350
    iget-object v1, p0, Lcom/oplus/camera/capmode/BaseMode$1;->a:Lcom/oplus/camera/capmode/BaseMode;

    invoke-static/range {v1 .. v7}, Lcom/oplus/camera/capmode/BaseMode;->access$100(Lcom/oplus/camera/capmode/BaseMode;[BIIIZI)V

    :cond_1
    :goto_0
    return-void

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
