.class Lcom/oplus/camera/timelapsepro/h$3;
.super Landroid/os/Handler;
.source "TimeLapseProMode.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/oplus/camera/timelapsepro/h;->v()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/oplus/camera/timelapsepro/h;


# direct methods
.method constructor <init>(Lcom/oplus/camera/timelapsepro/h;Landroid/os/Looper;)V
    .locals 0

    .line 1245
    iput-object p1, p0, Lcom/oplus/camera/timelapsepro/h$3;->a:Lcom/oplus/camera/timelapsepro/h;

    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    return-void
.end method

.method private synthetic a()V
    .locals 0

    .line 1316
    iget-object p0, p0, Lcom/oplus/camera/timelapsepro/h$3;->a:Lcom/oplus/camera/timelapsepro/h;

    invoke-static {p0}, Lcom/oplus/camera/timelapsepro/h;->s(Lcom/oplus/camera/timelapsepro/h;)V

    return-void
.end method

.method private synthetic b()V
    .locals 0

    .line 1312
    iget-object p0, p0, Lcom/oplus/camera/timelapsepro/h$3;->a:Lcom/oplus/camera/timelapsepro/h;

    invoke-virtual {p0}, Lcom/oplus/camera/timelapsepro/h;->onVideoShutterButtonClick()V

    return-void
.end method

.method public static synthetic lambda$6dOaKlANKqe_f7ivlXruTMFLqWI(Lcom/oplus/camera/timelapsepro/h$3;)V
    .locals 0

    invoke-direct {p0}, Lcom/oplus/camera/timelapsepro/h$3;->a()V

    return-void
.end method

.method public static synthetic lambda$u8scrOcGy2nzi6-b1-OELjeJ9A8(Lcom/oplus/camera/timelapsepro/h$3;)V
    .locals 0

    invoke-direct {p0}, Lcom/oplus/camera/timelapsepro/h$3;->b()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 8

    .line 1248
    invoke-super {p0, p1}, Landroid/os/Handler;->handleMessage(Landroid/os/Message;)V

    .line 1250
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "handleMessage, msg: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p1, Landroid/os/Message;->what:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "TimeLapseProMode"

    invoke-static {v1, v0}, Lcom/oplus/camera/e;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 1252
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    goto/16 :goto_0

    .line 1320
    :pswitch_0
    iget-object p0, p0, Lcom/oplus/camera/timelapsepro/h$3;->a:Lcom/oplus/camera/timelapsepro/h;

    invoke-static {p0}, Lcom/oplus/camera/timelapsepro/h;->r(Lcom/oplus/camera/timelapsepro/h;)Lcom/oplus/camera/ui/CameraUIInterface;

    move-result-object v2

    const v3, 0x7f100458

    const/4 v4, -0x1

    const/4 v5, 0x0

    const/4 v6, 0x1

    const/4 v7, 0x1

    invoke-interface/range {v2 .. v7}, Lcom/oplus/camera/ui/CameraUIInterface;->a(IIZZZ)V

    goto/16 :goto_0

    .line 1316
    :pswitch_1
    iget-object v0, p0, Lcom/oplus/camera/timelapsepro/h$3;->a:Lcom/oplus/camera/timelapsepro/h;

    new-instance v2, Lcom/oplus/camera/timelapsepro/-$$Lambda$h$3$6dOaKlANKqe_f7ivlXruTMFLqWI;

    invoke-direct {v2, p0}, Lcom/oplus/camera/timelapsepro/-$$Lambda$h$3$6dOaKlANKqe_f7ivlXruTMFLqWI;-><init>(Lcom/oplus/camera/timelapsepro/h$3;)V

    invoke-static {v0, v2}, Lcom/oplus/camera/timelapsepro/h;->a(Lcom/oplus/camera/timelapsepro/h;Ljava/lang/Runnable;)V

    goto/16 :goto_0

    .line 1312
    :pswitch_2
    iget-object v0, p0, Lcom/oplus/camera/timelapsepro/h$3;->a:Lcom/oplus/camera/timelapsepro/h;

    new-instance v2, Lcom/oplus/camera/timelapsepro/-$$Lambda$h$3$u8scrOcGy2nzi6-b1-OELjeJ9A8;

    invoke-direct {v2, p0}, Lcom/oplus/camera/timelapsepro/-$$Lambda$h$3$u8scrOcGy2nzi6-b1-OELjeJ9A8;-><init>(Lcom/oplus/camera/timelapsepro/h$3;)V

    invoke-static {v0, v2}, Lcom/oplus/camera/timelapsepro/h;->a(Lcom/oplus/camera/timelapsepro/h;Ljava/lang/Runnable;)V

    goto/16 :goto_0

    .line 1308
    :pswitch_3
    iget-object p0, p0, Lcom/oplus/camera/timelapsepro/h$3;->a:Lcom/oplus/camera/timelapsepro/h;

    invoke-static {p0}, Lcom/oplus/camera/timelapsepro/h;->q(Lcom/oplus/camera/timelapsepro/h;)Landroid/os/ConditionVariable;

    move-result-object p0

    invoke-virtual {p0}, Landroid/os/ConditionVariable;->open()V

    goto/16 :goto_0

    .line 1304
    :pswitch_4
    iget-object p0, p0, Lcom/oplus/camera/timelapsepro/h$3;->a:Lcom/oplus/camera/timelapsepro/h;

    invoke-static {p0}, Lcom/oplus/camera/timelapsepro/h;->p(Lcom/oplus/camera/timelapsepro/h;)V

    goto :goto_0

    .line 1300
    :pswitch_5
    iget-object p0, p0, Lcom/oplus/camera/timelapsepro/h$3;->a:Lcom/oplus/camera/timelapsepro/h;

    iget v0, p1, Landroid/os/Message;->arg1:I

    invoke-static {p0, v0}, Lcom/oplus/camera/timelapsepro/h;->a(Lcom/oplus/camera/timelapsepro/h;I)V

    goto :goto_0

    .line 1290
    :pswitch_6
    iget-object v0, p0, Lcom/oplus/camera/timelapsepro/h$3;->a:Lcom/oplus/camera/timelapsepro/h;

    new-instance v2, Lcom/oplus/camera/timelapsepro/h$3$1;

    invoke-direct {v2, p0}, Lcom/oplus/camera/timelapsepro/h$3$1;-><init>(Lcom/oplus/camera/timelapsepro/h$3;)V

    invoke-static {v0, v2}, Lcom/oplus/camera/timelapsepro/h;->a(Lcom/oplus/camera/timelapsepro/h;Ljava/lang/Runnable;)V

    goto :goto_0

    .line 1269
    :pswitch_7
    iget-object p0, p0, Lcom/oplus/camera/timelapsepro/h$3;->a:Lcom/oplus/camera/timelapsepro/h;

    invoke-static {p0}, Lcom/oplus/camera/timelapsepro/h;->i(Lcom/oplus/camera/timelapsepro/h;)V

    goto :goto_0

    .line 1262
    :pswitch_8
    iget-object p0, p0, Lcom/oplus/camera/timelapsepro/h$3;->a:Lcom/oplus/camera/timelapsepro/h;

    invoke-static {p0}, Lcom/oplus/camera/timelapsepro/h;->h(Lcom/oplus/camera/timelapsepro/h;)V

    goto :goto_0

    .line 1258
    :pswitch_9
    iget-object p0, p0, Lcom/oplus/camera/timelapsepro/h$3;->a:Lcom/oplus/camera/timelapsepro/h;

    invoke-static {p0}, Lcom/oplus/camera/timelapsepro/h;->g(Lcom/oplus/camera/timelapsepro/h;)V

    goto :goto_0

    .line 1254
    :pswitch_a
    iget-object p0, p0, Lcom/oplus/camera/timelapsepro/h$3;->a:Lcom/oplus/camera/timelapsepro/h;

    invoke-static {p0}, Lcom/oplus/camera/timelapsepro/h;->f(Lcom/oplus/camera/timelapsepro/h;)V

    goto :goto_0

    :pswitch_b
    const/4 v0, 0x0

    .line 1273
    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    .line 1275
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Float;

    .line 1277
    iget-object v2, p0, Lcom/oplus/camera/timelapsepro/h$3;->a:Lcom/oplus/camera/timelapsepro/h;

    invoke-static {v2}, Lcom/oplus/camera/timelapsepro/h;->j(Lcom/oplus/camera/timelapsepro/h;)Lcom/oplus/camera/capmode/a;

    move-result-object v2

    invoke-interface {v2}, Lcom/oplus/camera/capmode/a;->ac()V

    .line 1279
    iget-object v2, p0, Lcom/oplus/camera/timelapsepro/h$3;->a:Lcom/oplus/camera/timelapsepro/h;

    invoke-static {v2}, Lcom/oplus/camera/timelapsepro/h;->k(Lcom/oplus/camera/timelapsepro/h;)Lcom/oplus/camera/e/d;

    move-result-object v2

    if-eqz v2, :cond_1

    .line 1280
    iget-object v2, p0, Lcom/oplus/camera/timelapsepro/h$3;->a:Lcom/oplus/camera/timelapsepro/h;

    invoke-static {v2}, Lcom/oplus/camera/timelapsepro/h;->l(Lcom/oplus/camera/timelapsepro/h;)Lcom/oplus/camera/capmode/a;

    move-result-object v2

    invoke-interface {v2}, Lcom/oplus/camera/capmode/a;->z()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 1281
    iget-object v2, p0, Lcom/oplus/camera/timelapsepro/h$3;->a:Lcom/oplus/camera/timelapsepro/h;

    invoke-static {v2}, Lcom/oplus/camera/timelapsepro/h;->m(Lcom/oplus/camera/timelapsepro/h;)Lcom/oplus/camera/capmode/a;

    move-result-object v2

    const/4 v3, 0x0

    invoke-interface {v2, v3, v3}, Lcom/oplus/camera/capmode/a;->b(ZZ)V

    .line 1284
    :cond_0
    iget-object p0, p0, Lcom/oplus/camera/timelapsepro/h$3;->a:Lcom/oplus/camera/timelapsepro/h;

    invoke-static {p0}, Lcom/oplus/camera/timelapsepro/h;->n(Lcom/oplus/camera/timelapsepro/h;)Lcom/oplus/camera/e/d;

    move-result-object p0

    invoke-virtual {v0}, Ljava/lang/Float;->floatValue()F

    move-result v0

    const/4 v2, 0x1

    invoke-interface {p0, v0, v2}, Lcom/oplus/camera/e/d;->a(FZ)V

    .line 1327
    :cond_1
    :goto_0
    :pswitch_c
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "handleMessage X, msg: "

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p1, p1, Landroid/os/Message;->what:I

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v1, p0}, Lcom/oplus/camera/e;->a(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :pswitch_data_0
    .packed-switch 0x64
        :pswitch_b
        :pswitch_a
        :pswitch_c
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
