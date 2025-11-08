.class public Lcom/oplus/camera/e/g$a;
.super Lcom/oplus/camera/w/b;
.source "OneCameraStateMachine.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/oplus/camera/e/g;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4
    name = "a"
.end annotation


# instance fields
.field final synthetic a:Lcom/oplus/camera/e/g;

.field private b:Z


# direct methods
.method constructor <init>(Lcom/oplus/camera/e/g;Landroid/os/Looper;)V
    .locals 0

    .line 110
    iput-object p1, p0, Lcom/oplus/camera/e/g$a;->a:Lcom/oplus/camera/e/g;

    .line 111
    invoke-direct {p0, p2}, Lcom/oplus/camera/w/b;-><init>(Landroid/os/Looper;)V

    const/4 p1, 0x0

    .line 108
    iput-boolean p1, p0, Lcom/oplus/camera/e/g$a;->b:Z

    return-void
.end method


# virtual methods
.method public a(Ljava/lang/Runnable;)V
    .locals 1

    .line 116
    iget-boolean v0, p0, Lcom/oplus/camera/e/g$a;->b:Z

    if-nez v0, :cond_0

    .line 117
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "postRunnable, mbEnabled:"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean p0, p0, Lcom/oplus/camera/e/g$a;->b:Z

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "OneCameraStateMachine"

    invoke-static {p1, p0}, Lcom/oplus/camera/e;->b(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    .line 122
    :cond_0
    invoke-super {p0, p1}, Lcom/oplus/camera/w/b;->a(Ljava/lang/Runnable;)V

    return-void
.end method

.method public a(Z)V
    .locals 0

    .line 198
    iput-boolean p1, p0, Lcom/oplus/camera/e/g$a;->b:Z

    return-void
.end method

.method public handleMessage(Landroid/os/Message;)V
    .locals 6

    .line 127
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "handleMessage, mCameraRole: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/oplus/camera/e/g$a;->a:Lcom/oplus/camera/e/g;

    iget v1, v1, Lcom/oplus/camera/e/g;->w:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", msg: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p1, Landroid/os/Message;->what:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v2, "OneCameraStateMachine"

    invoke-static {v2, v0}, Lcom/oplus/camera/e;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 129
    iget v0, p1, Landroid/os/Message;->what:I

    const/4 v3, 0x0

    const/16 v4, 0x8

    const/4 v5, 0x1

    packed-switch v0, :pswitch_data_0

    goto/16 :goto_3

    .line 187
    :pswitch_0
    iget-object v0, p0, Lcom/oplus/camera/e/g$a;->a:Lcom/oplus/camera/e/g;

    invoke-virtual {v0}, Lcom/oplus/camera/e/g;->F()V

    goto/16 :goto_3

    .line 178
    :pswitch_1
    iget-object v0, p0, Lcom/oplus/camera/e/g$a;->a:Lcom/oplus/camera/e/g;

    iget v0, v0, Lcom/oplus/camera/e/g;->u:I

    if-eq v0, v5, :cond_0

    iget-object v0, p0, Lcom/oplus/camera/e/g$a;->a:Lcom/oplus/camera/e/g;

    iget v0, v0, Lcom/oplus/camera/e/g;->u:I

    if-eq v0, v4, :cond_0

    iget-object v0, p0, Lcom/oplus/camera/e/g$a;->a:Lcom/oplus/camera/e/g;

    iget v0, v0, Lcom/oplus/camera/e/g;->u:I

    const/4 v3, 0x6

    if-ne v0, v3, :cond_6

    .line 181
    :cond_0
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Lcom/oplus/camera/e/d$b;

    iget-object v3, p0, Lcom/oplus/camera/e/g$a;->a:Lcom/oplus/camera/e/g;

    iget v3, v3, Lcom/oplus/camera/e/g;->w:I

    invoke-interface {v0, v3}, Lcom/oplus/camera/e/d$b;->a(I)V

    goto/16 :goto_3

    .line 173
    :pswitch_2
    iget-object v0, p0, Lcom/oplus/camera/e/g$a;->a:Lcom/oplus/camera/e/g;

    invoke-static {v0}, Lcom/oplus/camera/e/g;->b(Lcom/oplus/camera/e/g;)V

    .line 174
    iget-object v0, p0, Lcom/oplus/camera/e/g$a;->a:Lcom/oplus/camera/e/g;

    invoke-virtual {v0}, Lcom/oplus/camera/e/g;->E()V

    goto/16 :goto_3

    .line 161
    :pswitch_3
    iget-object v0, p0, Lcom/oplus/camera/e/g$a;->a:Lcom/oplus/camera/e/g;

    iget-object v4, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    if-nez v4, :cond_1

    goto :goto_0

    :cond_1
    iget-object v3, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v3, Landroid/hardware/camera2/CameraDevice;

    :goto_0
    iget v4, p1, Landroid/os/Message;->arg1:I

    if-ne v5, v4, :cond_2

    goto :goto_1

    :cond_2
    const/4 v5, 0x0

    :goto_1
    invoke-virtual {v0, v3, v5}, Lcom/oplus/camera/e/g;->a(Landroid/hardware/camera2/CameraDevice;Z)V

    goto/16 :goto_3

    .line 146
    :pswitch_4
    iget-object v0, p0, Lcom/oplus/camera/e/g$a;->a:Lcom/oplus/camera/e/g;

    iget-object v0, v0, Lcom/oplus/camera/e/g;->p:Lcom/oplus/camera/e/g$a;

    const-string v4, "closing camera"

    invoke-static {v2, v0, v4}, Lcom/oplus/camera/e;->a(Ljava/lang/String;Landroid/os/Handler;Ljava/lang/String;)V

    .line 148
    iget-object v0, p0, Lcom/oplus/camera/e/g$a;->a:Lcom/oplus/camera/e/g;

    iget-object v0, v0, Lcom/oplus/camera/e/g;->p:Lcom/oplus/camera/e/g$a;

    invoke-virtual {v0, v3}, Lcom/oplus/camera/e/g$a;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    .line 150
    iget-object v0, p0, Lcom/oplus/camera/e/g$a;->a:Lcom/oplus/camera/e/g;

    invoke-static {v0}, Lcom/oplus/camera/e/g;->a(Lcom/oplus/camera/e/g;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 151
    iget-object v0, p0, Lcom/oplus/camera/e/g$a;->a:Lcom/oplus/camera/e/g;

    iget-object v4, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    if-nez v4, :cond_3

    goto :goto_2

    :cond_3
    iget-object v3, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v3, Landroid/hardware/camera2/CameraDevice;

    :goto_2
    iget v4, p1, Landroid/os/Message;->arg1:I

    invoke-static {v0, v3, v4}, Lcom/oplus/camera/e/g;->a(Lcom/oplus/camera/e/g;Landroid/hardware/camera2/CameraDevice;I)V

    goto/16 :goto_3

    :cond_4
    const-string v0, "don\'t close camera and run open flow"

    .line 153
    invoke-static {v2, v0}, Lcom/oplus/camera/e;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 155
    iget-object v0, p0, Lcom/oplus/camera/e/g$a;->a:Lcom/oplus/camera/e/g;

    invoke-static {v0, v5}, Lcom/oplus/camera/e/g;->a(Lcom/oplus/camera/e/g;Z)Z

    goto/16 :goto_3

    .line 165
    :pswitch_5
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Lcom/oplus/camera/e/g$b;

    .line 166
    iget-object v0, p0, Lcom/oplus/camera/e/g$a;->a:Lcom/oplus/camera/e/g;

    iget-object v3, p1, Lcom/oplus/camera/e/g$b;->a:Lcom/oplus/ocs/camera/CameraDeviceConfig$Builder;

    iget-object v5, p1, Lcom/oplus/camera/e/g$b;->b:Lcom/oplus/camera/e/d$d;

    iget p1, p1, Lcom/oplus/camera/e/g$b;->c:I

    invoke-virtual {v0, v3, v5, p1}, Lcom/oplus/camera/e/g;->a(Lcom/oplus/ocs/camera/CameraDeviceConfig$Builder;Lcom/oplus/camera/e/d$d;I)V

    .line 167
    iget-object p1, p0, Lcom/oplus/camera/e/g$a;->a:Lcom/oplus/camera/e/g;

    iget-object p1, p1, Lcom/oplus/camera/e/g;->p:Lcom/oplus/camera/e/g$a;

    invoke-virtual {p1, v4}, Lcom/oplus/camera/e/g$a;->removeMessages(I)V

    .line 168
    iget-object p1, p0, Lcom/oplus/camera/e/g$a;->a:Lcom/oplus/camera/e/g;

    iget-object p1, p1, Lcom/oplus/camera/e/g;->p:Lcom/oplus/camera/e/g$a;

    invoke-virtual {p1, v4}, Lcom/oplus/camera/e/g$a;->obtainMessage(I)Landroid/os/Message;

    move-result-object p1

    .line 169
    invoke-virtual {p1}, Landroid/os/Message;->sendToTarget()V

    goto :goto_3

    .line 131
    :pswitch_6
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    instance-of v0, v0, Lcom/oplus/camera/e/d$b;

    if-eqz v0, :cond_5

    .line 132
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "handleMessage, open camera, cameraId: "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, p1, Landroid/os/Message;->arg1:I

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, ", openType: "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, p1, Landroid/os/Message;->arg2:I

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Lcom/oplus/camera/e;->c(Ljava/lang/String;Ljava/lang/String;)V

    .line 135
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    instance-of v0, v0, Lcom/oplus/camera/e/d$b;

    if-eqz v0, :cond_6

    .line 136
    iget-object v0, p0, Lcom/oplus/camera/e/g$a;->a:Lcom/oplus/camera/e/g;

    iget v3, p1, Landroid/os/Message;->arg1:I

    iget-object v4, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v4, Lcom/oplus/camera/e/d$b;

    invoke-virtual {v0, v3, v4}, Lcom/oplus/camera/e/g;->b(ILcom/oplus/camera/e/d$b;)V

    .line 137
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Lcom/oplus/camera/e/d$b;

    iget v3, p1, Landroid/os/Message;->arg1:I

    invoke-interface {v0, v3}, Lcom/oplus/camera/e/d$b;->c(I)V

    goto :goto_3

    .line 140
    :cond_5
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "handleMessage, not open camera, openCallback: "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Lcom/oplus/camera/e;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 194
    :cond_6
    :goto_3
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "handleMessage x, mCameraRole: "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/oplus/camera/e/g$a;->a:Lcom/oplus/camera/e/g;

    iget p0, p0, Lcom/oplus/camera/e/g;->w:I

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p0, p1, Landroid/os/Message;->what:I

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v2, p0}, Lcom/oplus/camera/e;->a(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
