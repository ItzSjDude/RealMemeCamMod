.class Lcom/oplus/camera/CameraManager$3;
.super Landroid/os/Handler;
.source "CameraManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/oplus/camera/CameraManager;->bn()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/oplus/camera/CameraManager;


# direct methods
.method constructor <init>(Lcom/oplus/camera/CameraManager;Landroid/os/Looper;)V
    .locals 0

    .line 2104
    iput-object p1, p0, Lcom/oplus/camera/CameraManager$3;->a:Lcom/oplus/camera/CameraManager;

    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 3

    .line 2107
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "initHandlerThread, handleMessage, what: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p1, Landroid/os/Message;->what:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "CameraManager"

    invoke-static {v1, v0}, Lcom/oplus/camera/e;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 2109
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    goto/16 :goto_0

    .line 2154
    :pswitch_0
    iget-object p0, p0, Lcom/oplus/camera/CameraManager$3;->a:Lcom/oplus/camera/CameraManager;

    invoke-static {p0}, Lcom/oplus/camera/CameraManager;->Z(Lcom/oplus/camera/CameraManager;)V

    goto/16 :goto_0

    .line 2146
    :pswitch_1
    iget-object p1, p0, Lcom/oplus/camera/CameraManager$3;->a:Lcom/oplus/camera/CameraManager;

    invoke-static {p1}, Lcom/oplus/camera/CameraManager;->X(Lcom/oplus/camera/CameraManager;)Lcom/oplus/camera/ac;

    move-result-object p1

    if-eqz p1, :cond_2

    .line 2147
    iget-object p1, p0, Lcom/oplus/camera/CameraManager$3;->a:Lcom/oplus/camera/CameraManager;

    invoke-static {p1}, Lcom/oplus/camera/CameraManager;->X(Lcom/oplus/camera/CameraManager;)Lcom/oplus/camera/ac;

    move-result-object p1

    invoke-virtual {p1}, Lcom/oplus/camera/ac;->c()V

    .line 2148
    iget-object p0, p0, Lcom/oplus/camera/CameraManager$3;->a:Lcom/oplus/camera/CameraManager;

    const/4 p1, 0x0

    invoke-static {p0, p1}, Lcom/oplus/camera/CameraManager;->a(Lcom/oplus/camera/CameraManager;Lcom/oplus/camera/ac;)Lcom/oplus/camera/ac;

    goto :goto_0

    .line 2133
    :pswitch_2
    iget p1, p1, Landroid/os/Message;->arg1:I

    and-int/lit8 v0, p1, 0x2

    if-eqz v0, :cond_0

    .line 2136
    iget-object v0, p0, Lcom/oplus/camera/CameraManager$3;->a:Lcom/oplus/camera/CameraManager;

    invoke-static {v0}, Lcom/oplus/camera/CameraManager;->S(Lcom/oplus/camera/CameraManager;)Lcom/oplus/camera/s;

    move-result-object v0

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Lcom/oplus/camera/s;->d(Z)V

    .line 2139
    :cond_0
    iget-object v0, p0, Lcom/oplus/camera/CameraManager$3;->a:Lcom/oplus/camera/CameraManager;

    invoke-static {v0}, Lcom/oplus/camera/CameraManager;->X(Lcom/oplus/camera/CameraManager;)Lcom/oplus/camera/ac;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 2140
    iget-object p0, p0, Lcom/oplus/camera/CameraManager$3;->a:Lcom/oplus/camera/CameraManager;

    invoke-static {p0}, Lcom/oplus/camera/CameraManager;->X(Lcom/oplus/camera/CameraManager;)Lcom/oplus/camera/ac;

    move-result-object p0

    invoke-virtual {p0, p1}, Lcom/oplus/camera/ac;->b(I)V

    goto :goto_0

    .line 2119
    :pswitch_3
    iget p1, p1, Landroid/os/Message;->arg1:I

    and-int/lit8 v0, p1, 0x2

    if-eqz v0, :cond_1

    .line 2122
    iget-object v0, p0, Lcom/oplus/camera/CameraManager$3;->a:Lcom/oplus/camera/CameraManager;

    invoke-static {v0}, Lcom/oplus/camera/CameraManager;->S(Lcom/oplus/camera/CameraManager;)Lcom/oplus/camera/s;

    move-result-object v0

    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Lcom/oplus/camera/s;->d(Z)V

    .line 2125
    :cond_1
    iget-object v0, p0, Lcom/oplus/camera/CameraManager$3;->a:Lcom/oplus/camera/CameraManager;

    invoke-static {v0}, Lcom/oplus/camera/CameraManager;->X(Lcom/oplus/camera/CameraManager;)Lcom/oplus/camera/ac;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 2126
    iget-object v0, p0, Lcom/oplus/camera/CameraManager$3;->a:Lcom/oplus/camera/CameraManager;

    invoke-static {v0}, Lcom/oplus/camera/CameraManager;->X(Lcom/oplus/camera/CameraManager;)Lcom/oplus/camera/ac;

    move-result-object v0

    iget-object v2, p0, Lcom/oplus/camera/CameraManager$3;->a:Lcom/oplus/camera/CameraManager;

    invoke-static {v2}, Lcom/oplus/camera/CameraManager;->Y(Lcom/oplus/camera/CameraManager;)Lcom/oplus/camera/ac$e;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/oplus/camera/ac;->a(Lcom/oplus/camera/ac$e;)V

    .line 2127
    iget-object p0, p0, Lcom/oplus/camera/CameraManager$3;->a:Lcom/oplus/camera/CameraManager;

    invoke-static {p0}, Lcom/oplus/camera/CameraManager;->X(Lcom/oplus/camera/CameraManager;)Lcom/oplus/camera/ac;

    move-result-object p0

    invoke-virtual {p0, p1}, Lcom/oplus/camera/ac;->a(I)V

    goto :goto_0

    .line 2115
    :pswitch_4
    iget-object p0, p0, Lcom/oplus/camera/CameraManager$3;->a:Lcom/oplus/camera/CameraManager;

    invoke-static {p0}, Lcom/oplus/camera/CameraManager;->W(Lcom/oplus/camera/CameraManager;)Landroid/hardware/cabc/CabcManager;

    move-result-object p0

    invoke-virtual {p0}, Landroid/hardware/cabc/CabcManager;->closeCabc()V

    goto :goto_0

    .line 2111
    :pswitch_5
    iget-object p0, p0, Lcom/oplus/camera/CameraManager$3;->a:Lcom/oplus/camera/CameraManager;

    invoke-static {p0}, Lcom/oplus/camera/CameraManager;->W(Lcom/oplus/camera/CameraManager;)Landroid/hardware/cabc/CabcManager;

    move-result-object p0

    invoke-virtual {p0}, Landroid/hardware/cabc/CabcManager;->openCabc()V

    :cond_2
    :goto_0
    const-string p0, "initHandlerThread, handleMessage mWorkThreadHandler X"

    .line 2162
    invoke-static {v1, p0}, Lcom/oplus/camera/e;->a(Ljava/lang/String;Ljava/lang/String;)V

    return-void

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
