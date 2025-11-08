.class Lcom/oplus/camera/capmode/w$2;
.super Landroid/os/Handler;
.source "VideoMode.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/oplus/camera/capmode/w;->initRecordThread()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/oplus/camera/capmode/w;


# direct methods
.method constructor <init>(Lcom/oplus/camera/capmode/w;Landroid/os/Looper;)V
    .locals 0

    .line 371
    iput-object p1, p0, Lcom/oplus/camera/capmode/w$2;->a:Lcom/oplus/camera/capmode/w;

    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 3

    .line 374
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "initRecordThread,  what:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p1, Landroid/os/Message;->what:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "VideoMode"

    invoke-static {v1, v0}, Lcom/oplus/camera/e;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 376
    iget v0, p1, Landroid/os/Message;->what:I

    const/16 v2, 0x8

    if-eq v0, v2, :cond_1

    const/16 v2, 0xc

    if-eq v0, v2, :cond_0

    packed-switch v0, :pswitch_data_0

    goto :goto_0

    .line 398
    :pswitch_0
    iget-object p0, p0, Lcom/oplus/camera/capmode/w$2;->a:Lcom/oplus/camera/capmode/w;

    invoke-static {p0}, Lcom/oplus/camera/capmode/w;->access$300(Lcom/oplus/camera/capmode/w;)Z

    goto :goto_0

    .line 394
    :pswitch_1
    iget-object p0, p0, Lcom/oplus/camera/capmode/w$2;->a:Lcom/oplus/camera/capmode/w;

    const/4 p1, 0x1

    invoke-virtual {p0, p1}, Lcom/oplus/camera/capmode/w;->onStopVideoRecording(Z)V

    goto :goto_0

    .line 390
    :pswitch_2
    iget-object p0, p0, Lcom/oplus/camera/capmode/w$2;->a:Lcom/oplus/camera/capmode/w;

    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Ljava/lang/String;

    invoke-static {p0, p1}, Lcom/oplus/camera/capmode/w;->access$200(Lcom/oplus/camera/capmode/w;Ljava/lang/String;)V

    goto :goto_0

    .line 386
    :pswitch_3
    iget-object p0, p0, Lcom/oplus/camera/capmode/w$2;->a:Lcom/oplus/camera/capmode/w;

    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Ljava/lang/String;

    invoke-virtual {p0, p1}, Lcom/oplus/camera/capmode/w;->deleteVideoFile(Ljava/lang/String;)V

    goto :goto_0

    .line 382
    :pswitch_4
    iget-object p0, p0, Lcom/oplus/camera/capmode/w$2;->a:Lcom/oplus/camera/capmode/w;

    invoke-virtual {p0}, Lcom/oplus/camera/capmode/w;->stopVideoRecordThread()V

    goto :goto_0

    .line 378
    :pswitch_5
    iget-object p0, p0, Lcom/oplus/camera/capmode/w$2;->a:Lcom/oplus/camera/capmode/w;

    invoke-static {p0}, Lcom/oplus/camera/capmode/w;->access$100(Lcom/oplus/camera/capmode/w;)V

    goto :goto_0

    :cond_0
    const-string p1, "mRecordSig open"

    .line 412
    invoke-static {v1, p1}, Lcom/oplus/camera/e;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 414
    iget-object p0, p0, Lcom/oplus/camera/capmode/w$2;->a:Lcom/oplus/camera/capmode/w;

    invoke-static {p0}, Lcom/oplus/camera/capmode/w;->access$500(Lcom/oplus/camera/capmode/w;)Landroid/os/ConditionVariable;

    move-result-object p0

    invoke-virtual {p0}, Landroid/os/ConditionVariable;->open()V

    goto :goto_0

    .line 402
    :cond_1
    iget-object p1, p0, Lcom/oplus/camera/capmode/w$2;->a:Lcom/oplus/camera/capmode/w;

    iget-object p1, p1, Lcom/oplus/camera/capmode/w;->mActivity:Landroid/app/Activity;

    new-instance v0, Lcom/oplus/camera/capmode/w$2$1;

    invoke-direct {v0, p0}, Lcom/oplus/camera/capmode/w$2$1;-><init>(Lcom/oplus/camera/capmode/w$2;)V

    invoke-virtual {p1, v0}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    :goto_0
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
