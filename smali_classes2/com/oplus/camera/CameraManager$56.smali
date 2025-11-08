.class Lcom/oplus/camera/CameraManager$56;
.super Lcom/oplus/camera/w/b;
.source "CameraManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/oplus/camera/CameraManager;
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

    .line 1142
    iput-object p1, p0, Lcom/oplus/camera/CameraManager$56;->a:Lcom/oplus/camera/CameraManager;

    invoke-direct {p0, p2}, Lcom/oplus/camera/w/b;-><init>(Landroid/os/Looper;)V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 8

    .line 1145
    iget v0, p1, Landroid/os/Message;->what:I

    const/4 v1, 0x2

    const-string v2, "CameraManager"

    const/4 v3, 0x1

    const/4 v4, 0x0

    packed-switch v0, :pswitch_data_0

    :pswitch_0
    goto/16 :goto_1

    .line 1368
    :pswitch_1
    iget-object p1, p0, Lcom/oplus/camera/CameraManager$56;->a:Lcom/oplus/camera/CameraManager;

    invoke-static {p1}, Lcom/oplus/camera/CameraManager;->i(Lcom/oplus/camera/CameraManager;)Lcom/oplus/camera/capmode/ModeManager;

    move-result-object p1

    if-eqz p1, :cond_e

    .line 1369
    iget-object p0, p0, Lcom/oplus/camera/CameraManager$56;->a:Lcom/oplus/camera/CameraManager;

    invoke-static {p0}, Lcom/oplus/camera/CameraManager;->i(Lcom/oplus/camera/CameraManager;)Lcom/oplus/camera/capmode/ModeManager;

    move-result-object p0

    invoke-virtual {p0, v4}, Lcom/oplus/camera/capmode/ModeManager;->z(Z)V

    goto/16 :goto_1

    .line 1361
    :pswitch_2
    iget-object p1, p0, Lcom/oplus/camera/CameraManager$56;->a:Lcom/oplus/camera/CameraManager;

    invoke-static {p1}, Lcom/oplus/camera/CameraManager;->g(Lcom/oplus/camera/CameraManager;)Lcom/oplus/camera/ui/d;

    move-result-object p1

    if-eqz p1, :cond_e

    .line 1362
    iget-object p1, p0, Lcom/oplus/camera/CameraManager$56;->a:Lcom/oplus/camera/CameraManager;

    invoke-static {p1}, Lcom/oplus/camera/CameraManager;->g(Lcom/oplus/camera/CameraManager;)Lcom/oplus/camera/ui/d;

    move-result-object p1

    iget-object p0, p0, Lcom/oplus/camera/CameraManager$56;->a:Lcom/oplus/camera/CameraManager;

    invoke-static {p0}, Lcom/oplus/camera/CameraManager;->M(Lcom/oplus/camera/CameraManager;)Z

    move-result p0

    invoke-virtual {p1, p0}, Lcom/oplus/camera/ui/d;->ab(Z)V

    goto/16 :goto_1

    .line 1356
    :pswitch_3
    iget-object p0, p0, Lcom/oplus/camera/CameraManager$56;->a:Lcom/oplus/camera/CameraManager;

    invoke-static {p0}, Lcom/oplus/camera/CameraManager;->N(Lcom/oplus/camera/CameraManager;)V

    goto/16 :goto_1

    .line 1269
    :pswitch_4
    iget-object v0, p0, Lcom/oplus/camera/CameraManager$56;->a:Lcom/oplus/camera/CameraManager;

    invoke-static {v0}, Lcom/oplus/camera/CameraManager;->g(Lcom/oplus/camera/CameraManager;)Lcom/oplus/camera/ui/d;

    move-result-object v0

    if-eqz v0, :cond_e

    .line 1270
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    if-eqz p1, :cond_0

    .line 1272
    iget-object p1, p0, Lcom/oplus/camera/CameraManager$56;->a:Lcom/oplus/camera/CameraManager;

    invoke-static {p1}, Lcom/oplus/camera/CameraManager;->D(Lcom/oplus/camera/CameraManager;)Lcom/oplus/camera/ui/preview/o;

    move-result-object p1

    invoke-virtual {p1}, Lcom/oplus/camera/ui/preview/o;->A()Z

    move-result p1

    if-nez p1, :cond_0

    iget-object p1, p0, Lcom/oplus/camera/CameraManager$56;->a:Lcom/oplus/camera/CameraManager;

    invoke-static {p1}, Lcom/oplus/camera/CameraManager;->J(Lcom/oplus/camera/CameraManager;)[I

    move-result-object p1

    if-eqz p1, :cond_0

    .line 1273
    iget-object p1, p0, Lcom/oplus/camera/CameraManager$56;->a:Lcom/oplus/camera/CameraManager;

    invoke-static {p1}, Lcom/oplus/camera/CameraManager;->g(Lcom/oplus/camera/CameraManager;)Lcom/oplus/camera/ui/d;

    move-result-object p1

    iget-object p0, p0, Lcom/oplus/camera/CameraManager$56;->a:Lcom/oplus/camera/CameraManager;

    invoke-static {p0}, Lcom/oplus/camera/CameraManager;->J(Lcom/oplus/camera/CameraManager;)[I

    move-result-object p0

    invoke-virtual {p1, p0}, Lcom/oplus/camera/ui/d;->c([I)V

    goto/16 :goto_1

    .line 1275
    :cond_0
    iget-object p0, p0, Lcom/oplus/camera/CameraManager$56;->a:Lcom/oplus/camera/CameraManager;

    invoke-static {p0}, Lcom/oplus/camera/CameraManager;->g(Lcom/oplus/camera/CameraManager;)Lcom/oplus/camera/ui/d;

    move-result-object p0

    invoke-virtual {p0}, Lcom/oplus/camera/ui/d;->co()V

    goto/16 :goto_1

    .line 1344
    :pswitch_5
    iget-object p1, p0, Lcom/oplus/camera/CameraManager$56;->a:Lcom/oplus/camera/CameraManager;

    const/4 v0, 0x3

    invoke-virtual {p1, v0}, Lcom/oplus/camera/CameraManager;->a(I)Z

    move-result p1

    if-eqz p1, :cond_1

    .line 1345
    iget-object p1, p0, Lcom/oplus/camera/CameraManager$56;->a:Lcom/oplus/camera/CameraManager;

    invoke-static {p1}, Lcom/oplus/camera/CameraManager;->k(Lcom/oplus/camera/CameraManager;)Lcom/oplus/camera/entry/b;

    move-result-object p1

    invoke-virtual {p1}, Lcom/oplus/camera/entry/b;->x()Z

    move-result p1

    if-eqz p1, :cond_e

    .line 1346
    iget-object p0, p0, Lcom/oplus/camera/CameraManager$56;->a:Lcom/oplus/camera/CameraManager;

    invoke-static {p0}, Lcom/oplus/camera/CameraManager;->M(Lcom/oplus/camera/CameraManager;)Z

    move-result p1

    xor-int/2addr p1, v3

    invoke-static {p0, p1, v4}, Lcom/oplus/camera/CameraManager;->a(Lcom/oplus/camera/CameraManager;ZZ)V

    goto/16 :goto_1

    .line 1349
    :cond_1
    iget-object p1, p0, Lcom/oplus/camera/CameraManager$56;->a:Lcom/oplus/camera/CameraManager;

    invoke-static {p1}, Lcom/oplus/camera/CameraManager;->j(Lcom/oplus/camera/CameraManager;)Lcom/oplus/camera/w/b;

    move-result-object p1

    const/16 v0, 0x16

    invoke-virtual {p1, v0}, Lcom/oplus/camera/w/b;->removeMessages(I)V

    .line 1350
    iget-object p0, p0, Lcom/oplus/camera/CameraManager$56;->a:Lcom/oplus/camera/CameraManager;

    invoke-static {p0}, Lcom/oplus/camera/CameraManager;->j(Lcom/oplus/camera/CameraManager;)Lcom/oplus/camera/w/b;

    move-result-object p0

    const-wide/16 v1, 0x32

    invoke-virtual {p0, v0, v1, v2}, Lcom/oplus/camera/w/b;->sendEmptyMessageDelayed(IJ)Z

    goto/16 :goto_1

    .line 1340
    :pswitch_6
    iget-object p0, p0, Lcom/oplus/camera/CameraManager$56;->a:Lcom/oplus/camera/CameraManager;

    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Ljava/lang/Float;

    invoke-virtual {p1}, Ljava/lang/Float;->floatValue()F

    move-result p1

    invoke-static {p0, p1, v4}, Lcom/oplus/camera/CameraManager;->a(Lcom/oplus/camera/CameraManager;FZ)V

    goto/16 :goto_1

    .line 1321
    :pswitch_7
    iget-object p1, p0, Lcom/oplus/camera/CameraManager$56;->a:Lcom/oplus/camera/CameraManager;

    invoke-static {p1}, Lcom/oplus/camera/CameraManager;->w(Lcom/oplus/camera/CameraManager;)Ljava/util/concurrent/CopyOnWriteArrayList;

    move-result-object p1

    if-eqz p1, :cond_3

    iget-object p1, p0, Lcom/oplus/camera/CameraManager$56;->a:Lcom/oplus/camera/CameraManager;

    invoke-static {p1}, Lcom/oplus/camera/CameraManager;->w(Lcom/oplus/camera/CameraManager;)Ljava/util/concurrent/CopyOnWriteArrayList;

    move-result-object p1

    invoke-virtual {p1}, Ljava/util/concurrent/CopyOnWriteArrayList;->isEmpty()Z

    move-result p1

    if-nez p1, :cond_3

    .line 1322
    iget-object p1, p0, Lcom/oplus/camera/CameraManager$56;->a:Lcom/oplus/camera/CameraManager;

    invoke-static {p1}, Lcom/oplus/camera/CameraManager;->w(Lcom/oplus/camera/CameraManager;)Ljava/util/concurrent/CopyOnWriteArrayList;

    move-result-object p1

    invoke-virtual {p1, v4}, Ljava/util/concurrent/CopyOnWriteArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/oplus/camera/ui/control/e;

    .line 1325
    iget-object v0, p0, Lcom/oplus/camera/CameraManager$56;->a:Lcom/oplus/camera/CameraManager;

    invoke-static {v0}, Lcom/oplus/camera/CameraManager;->w(Lcom/oplus/camera/CameraManager;)Ljava/util/concurrent/CopyOnWriteArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;->size()I

    move-result v0

    if-ge v3, v0, :cond_2

    .line 1326
    iget-object v0, p0, Lcom/oplus/camera/CameraManager$56;->a:Lcom/oplus/camera/CameraManager;

    invoke-static {v0}, Lcom/oplus/camera/CameraManager;->w(Lcom/oplus/camera/CameraManager;)Ljava/util/concurrent/CopyOnWriteArrayList;

    move-result-object v0

    invoke-virtual {v0, v4}, Ljava/util/concurrent/CopyOnWriteArrayList;->remove(I)Ljava/lang/Object;

    .line 1329
    :cond_2
    iget-object v0, p0, Lcom/oplus/camera/CameraManager$56;->a:Lcom/oplus/camera/CameraManager;

    invoke-static {v0}, Lcom/oplus/camera/CameraManager;->g(Lcom/oplus/camera/CameraManager;)Lcom/oplus/camera/ui/d;

    move-result-object v0

    invoke-virtual {v0, p1, v1}, Lcom/oplus/camera/ui/d;->a(Lcom/oplus/camera/ui/control/e;I)V

    .line 1332
    :cond_3
    iget-object p1, p0, Lcom/oplus/camera/CameraManager$56;->a:Lcom/oplus/camera/CameraManager;

    invoke-static {p1}, Lcom/oplus/camera/CameraManager;->L(Lcom/oplus/camera/CameraManager;)Z

    move-result p1

    if-eqz p1, :cond_e

    const/16 p1, 0x14

    const-string v0, "com.oplus.feature.burstshot.thumb.anim.step.time"

    .line 1334
    invoke-static {v0}, Lcom/oplus/camera/aps/config/CameraConfig;->getConfigIntValue(Ljava/lang/String;)I

    move-result v0

    int-to-long v0, v0

    .line 1333
    invoke-virtual {p0, p1, v0, v1}, Lcom/oplus/camera/CameraManager$56;->sendEmptyMessageDelayed(IJ)Z

    goto/16 :goto_1

    .line 1303
    :pswitch_8
    iget-object v0, p0, Lcom/oplus/camera/CameraManager$56;->a:Lcom/oplus/camera/CameraManager;

    invoke-static {v0}, Lcom/oplus/camera/CameraManager;->L(Lcom/oplus/camera/CameraManager;)Z

    move-result v0

    if-nez v0, :cond_e

    iget-object v0, p0, Lcom/oplus/camera/CameraManager$56;->a:Lcom/oplus/camera/CameraManager;

    const-string v1, "pref_camera_pi_ai_mode_key"

    invoke-virtual {v0, v1}, Lcom/oplus/camera/CameraManager;->b(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_e

    iget-object v0, p0, Lcom/oplus/camera/CameraManager$56;->a:Lcom/oplus/camera/CameraManager;

    invoke-static {v0}, Lcom/oplus/camera/CameraManager;->g(Lcom/oplus/camera/CameraManager;)Lcom/oplus/camera/ui/d;

    move-result-object v0

    if-eqz v0, :cond_e

    .line 1304
    iget-object v0, p0, Lcom/oplus/camera/CameraManager$56;->a:Lcom/oplus/camera/CameraManager;

    invoke-static {v0}, Lcom/oplus/camera/CameraManager;->h(Lcom/oplus/camera/CameraManager;)Lcom/oplus/camera/ComboPreferences;

    move-result-object v0

    if-eqz v0, :cond_5

    iget-object v0, p0, Lcom/oplus/camera/CameraManager$56;->a:Lcom/oplus/camera/CameraManager;

    .line 1305
    invoke-static {v0}, Lcom/oplus/camera/CameraManager;->h(Lcom/oplus/camera/CameraManager;)Lcom/oplus/camera/ComboPreferences;

    move-result-object v0

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v3}, Lcom/oplus/camera/ComboPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "off"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    const-string v0, "handleMessage, AI is turn off, override scene to unknown"

    .line 1306
    invoke-static {v2, v0}, Lcom/oplus/camera/e;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 1308
    iget p1, p1, Landroid/os/Message;->arg1:I

    const/16 v0, 0x12

    if-ne v0, p1, :cond_4

    .line 1309
    iget-object p0, p0, Lcom/oplus/camera/CameraManager$56;->a:Lcom/oplus/camera/CameraManager;

    invoke-static {p0}, Lcom/oplus/camera/CameraManager;->g(Lcom/oplus/camera/CameraManager;)Lcom/oplus/camera/ui/d;

    move-result-object p0

    invoke-virtual {p0, v0}, Lcom/oplus/camera/ui/d;->L(I)V

    goto/16 :goto_1

    .line 1311
    :cond_4
    iget-object p0, p0, Lcom/oplus/camera/CameraManager$56;->a:Lcom/oplus/camera/CameraManager;

    invoke-static {p0}, Lcom/oplus/camera/CameraManager;->g(Lcom/oplus/camera/CameraManager;)Lcom/oplus/camera/ui/d;

    move-result-object p0

    invoke-virtual {p0, v4}, Lcom/oplus/camera/ui/d;->L(I)V

    goto/16 :goto_1

    .line 1314
    :cond_5
    iget-object p0, p0, Lcom/oplus/camera/CameraManager$56;->a:Lcom/oplus/camera/CameraManager;

    invoke-static {p0}, Lcom/oplus/camera/CameraManager;->g(Lcom/oplus/camera/CameraManager;)Lcom/oplus/camera/ui/d;

    move-result-object p0

    iget p1, p1, Landroid/os/Message;->arg1:I

    invoke-virtual {p0, p1}, Lcom/oplus/camera/ui/d;->L(I)V

    goto/16 :goto_1

    :pswitch_9
    const/4 v0, 0x0

    .line 1295
    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    if-eqz v1, :cond_6

    .line 1296
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Ljava/lang/Float;

    invoke-virtual {p1}, Ljava/lang/Float;->floatValue()F

    move-result v0

    .line 1299
    :cond_6
    iget-object p0, p0, Lcom/oplus/camera/CameraManager$56;->a:Lcom/oplus/camera/CameraManager;

    invoke-static {p0}, Lcom/oplus/camera/CameraManager;->K(Lcom/oplus/camera/CameraManager;)F

    move-result p1

    invoke-virtual {p0, v0, p1}, Lcom/oplus/camera/CameraManager;->a(FF)V

    goto/16 :goto_1

    .line 1282
    :pswitch_a
    iget-object p1, p0, Lcom/oplus/camera/CameraManager$56;->a:Lcom/oplus/camera/CameraManager;

    invoke-static {p1}, Lcom/oplus/camera/CameraManager;->k(Lcom/oplus/camera/CameraManager;)Lcom/oplus/camera/entry/b;

    move-result-object p1

    invoke-virtual {p1}, Lcom/oplus/camera/entry/b;->H()Z

    move-result p1

    if-eqz p1, :cond_e

    .line 1283
    iget-object p1, p0, Lcom/oplus/camera/CameraManager$56;->a:Lcom/oplus/camera/CameraManager;

    invoke-static {p1}, Lcom/oplus/camera/CameraManager;->a(Lcom/oplus/camera/CameraManager;)Landroid/app/Activity;

    move-result-object p1

    if-eqz p1, :cond_7

    .line 1284
    iget-object p0, p0, Lcom/oplus/camera/CameraManager$56;->a:Lcom/oplus/camera/CameraManager;

    invoke-static {p0}, Lcom/oplus/camera/CameraManager;->a(Lcom/oplus/camera/CameraManager;)Landroid/app/Activity;

    move-result-object p0

    invoke-virtual {p0}, Landroid/app/Activity;->finishAndRemoveTask()V

    .line 1287
    :cond_7
    invoke-static {}, Lcom/oplus/camera/MyApplication;->c()V

    goto/16 :goto_1

    .line 1262
    :pswitch_b
    iget-object p1, p0, Lcom/oplus/camera/CameraManager$56;->a:Lcom/oplus/camera/CameraManager;

    invoke-static {p1}, Lcom/oplus/camera/CameraManager;->I(Lcom/oplus/camera/CameraManager;)Lcom/oplus/camera/w;

    move-result-object p1

    if-eqz p1, :cond_e

    iget-object p1, p0, Lcom/oplus/camera/CameraManager$56;->a:Lcom/oplus/camera/CameraManager;

    invoke-static {p1}, Lcom/oplus/camera/CameraManager;->e(Lcom/oplus/camera/CameraManager;)Z

    move-result p1

    if-nez p1, :cond_e

    .line 1263
    iget-object p0, p0, Lcom/oplus/camera/CameraManager$56;->a:Lcom/oplus/camera/CameraManager;

    invoke-static {p0}, Lcom/oplus/camera/CameraManager;->I(Lcom/oplus/camera/CameraManager;)Lcom/oplus/camera/w;

    move-result-object p0

    invoke-virtual {p0}, Lcom/oplus/camera/w;->d()V

    goto/16 :goto_1

    .line 1248
    :pswitch_c
    invoke-virtual {p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object p1

    if-eqz p1, :cond_e

    const-string v0, "view_enable"

    .line 1251
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    const-string v1, "view_ashed"

    .line 1252
    invoke-virtual {p1, v1}, Landroid/os/Bundle;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    .line 1254
    iget-object v1, p0, Lcom/oplus/camera/CameraManager$56;->a:Lcom/oplus/camera/CameraManager;

    invoke-static {v1}, Lcom/oplus/camera/CameraManager;->g(Lcom/oplus/camera/CameraManager;)Lcom/oplus/camera/ui/d;

    move-result-object v1

    if-eqz v1, :cond_e

    .line 1255
    iget-object p0, p0, Lcom/oplus/camera/CameraManager$56;->a:Lcom/oplus/camera/CameraManager;

    invoke-static {p0}, Lcom/oplus/camera/CameraManager;->g(Lcom/oplus/camera/CameraManager;)Lcom/oplus/camera/ui/d;

    move-result-object p0

    invoke-virtual {p0, v0, p1}, Lcom/oplus/camera/ui/d;->d(ZZ)V

    goto/16 :goto_1

    .line 1227
    :pswitch_d
    iget-object v0, p0, Lcom/oplus/camera/CameraManager$56;->a:Lcom/oplus/camera/CameraManager;

    invoke-static {v0}, Lcom/oplus/camera/CameraManager;->g(Lcom/oplus/camera/CameraManager;)Lcom/oplus/camera/ui/d;

    move-result-object v0

    if-eqz v0, :cond_e

    .line 1228
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    if-nez p1, :cond_8

    .line 1231
    iget-object v0, p0, Lcom/oplus/camera/CameraManager$56;->a:Lcom/oplus/camera/CameraManager;

    invoke-static {v0}, Lcom/oplus/camera/CameraManager;->g(Lcom/oplus/camera/CameraManager;)Lcom/oplus/camera/ui/d;

    move-result-object v0

    invoke-virtual {v0}, Lcom/oplus/camera/ui/d;->o()V

    :cond_8
    if-eqz p1, :cond_a

    .line 1234
    iget-object p1, p0, Lcom/oplus/camera/CameraManager$56;->a:Lcom/oplus/camera/CameraManager;

    .line 1235
    invoke-static {p1}, Lcom/oplus/camera/CameraManager;->D(Lcom/oplus/camera/CameraManager;)Lcom/oplus/camera/ui/preview/o;

    move-result-object p1

    invoke-virtual {p1}, Lcom/oplus/camera/ui/preview/o;->A()Z

    move-result p1

    if-nez p1, :cond_a

    iget-object p1, p0, Lcom/oplus/camera/CameraManager$56;->a:Lcom/oplus/camera/CameraManager;

    .line 1236
    invoke-static {p1}, Lcom/oplus/camera/CameraManager;->E(Lcom/oplus/camera/CameraManager;)Z

    move-result p1

    if-nez p1, :cond_a

    iget-object p1, p0, Lcom/oplus/camera/CameraManager$56;->a:Lcom/oplus/camera/CameraManager;

    .line 1237
    invoke-static {p1}, Lcom/oplus/camera/CameraManager;->F(Lcom/oplus/camera/CameraManager;)Lcom/oplus/camera/aa;

    move-result-object p1

    if-eqz p1, :cond_9

    iget-object p1, p0, Lcom/oplus/camera/CameraManager$56;->a:Lcom/oplus/camera/CameraManager;

    .line 1238
    invoke-static {p1}, Lcom/oplus/camera/CameraManager;->F(Lcom/oplus/camera/CameraManager;)Lcom/oplus/camera/aa;

    move-result-object p1

    invoke-virtual {p1}, Lcom/oplus/camera/aa;->h()Z

    move-result p1

    if-nez p1, :cond_a

    .line 1239
    :cond_9
    iget-object p1, p0, Lcom/oplus/camera/CameraManager$56;->a:Lcom/oplus/camera/CameraManager;

    invoke-static {p1}, Lcom/oplus/camera/CameraManager;->g(Lcom/oplus/camera/CameraManager;)Lcom/oplus/camera/ui/d;

    move-result-object p1

    iget-object v0, p0, Lcom/oplus/camera/CameraManager$56;->a:Lcom/oplus/camera/CameraManager;

    invoke-static {v0}, Lcom/oplus/camera/CameraManager;->G(Lcom/oplus/camera/CameraManager;)[Landroid/hardware/camera2/params/Face;

    move-result-object v0

    iget-object p0, p0, Lcom/oplus/camera/CameraManager$56;->a:Lcom/oplus/camera/CameraManager;

    invoke-static {p0}, Lcom/oplus/camera/CameraManager;->H(Lcom/oplus/camera/CameraManager;)[I

    move-result-object p0

    invoke-virtual {p1, v0, p0}, Lcom/oplus/camera/ui/d;->a([Landroid/hardware/camera2/params/Face;[I)V

    goto/16 :goto_1

    .line 1241
    :cond_a
    iget-object p0, p0, Lcom/oplus/camera/CameraManager$56;->a:Lcom/oplus/camera/CameraManager;

    invoke-static {p0}, Lcom/oplus/camera/CameraManager;->g(Lcom/oplus/camera/CameraManager;)Lcom/oplus/camera/ui/d;

    move-result-object p0

    invoke-virtual {p0}, Lcom/oplus/camera/ui/d;->o()V

    goto/16 :goto_1

    .line 1220
    :pswitch_e
    iget-object p1, p0, Lcom/oplus/camera/CameraManager$56;->a:Lcom/oplus/camera/CameraManager;

    invoke-static {p1}, Lcom/oplus/camera/CameraManager;->C(Lcom/oplus/camera/CameraManager;)Lcom/oplus/camera/CameraManager$n;

    move-result-object p1

    if-eqz p1, :cond_e

    .line 1221
    iget-object p0, p0, Lcom/oplus/camera/CameraManager$56;->a:Lcom/oplus/camera/CameraManager;

    invoke-static {p0}, Lcom/oplus/camera/CameraManager;->C(Lcom/oplus/camera/CameraManager;)Lcom/oplus/camera/CameraManager$n;

    move-result-object p0

    invoke-virtual {p0}, Lcom/oplus/camera/CameraManager$n;->f()V

    goto/16 :goto_1

    .line 1216
    :pswitch_f
    iget-object p0, p0, Lcom/oplus/camera/CameraManager$56;->a:Lcom/oplus/camera/CameraManager;

    invoke-virtual {p0, v1}, Lcom/oplus/camera/CameraManager;->l(I)Z

    goto/16 :goto_1

    .line 1211
    :pswitch_10
    iget-object p1, p0, Lcom/oplus/camera/CameraManager$56;->a:Lcom/oplus/camera/CameraManager;

    invoke-static {p1}, Lcom/oplus/camera/CameraManager;->j(Lcom/oplus/camera/CameraManager;)Lcom/oplus/camera/w/b;

    move-result-object p1

    const/4 v0, 0x6

    invoke-virtual {p1, v0}, Lcom/oplus/camera/w/b;->removeMessages(I)V

    .line 1212
    iget-object p0, p0, Lcom/oplus/camera/CameraManager$56;->a:Lcom/oplus/camera/CameraManager;

    invoke-virtual {p0}, Lcom/oplus/camera/CameraManager;->R()I

    move-result p1

    invoke-virtual {p0, p1}, Lcom/oplus/camera/CameraManager;->switchCamera(I)V

    goto/16 :goto_1

    :pswitch_11
    const-string v0, "handleMessage, onPreviewStartedAsync OK"

    .line 1188
    invoke-static {v2, v0}, Lcom/oplus/camera/e;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 1190
    iget-object v0, p0, Lcom/oplus/camera/CameraManager$56;->a:Lcom/oplus/camera/CameraManager;

    invoke-virtual {v0, v3}, Lcom/oplus/camera/CameraManager;->j(I)V

    .line 1191
    iget-object v0, p0, Lcom/oplus/camera/CameraManager$56;->a:Lcom/oplus/camera/CameraManager;

    invoke-static {v0, v4}, Lcom/oplus/camera/CameraManager;->b(Lcom/oplus/camera/CameraManager;Z)Z

    .line 1192
    iget-object v0, p0, Lcom/oplus/camera/CameraManager$56;->a:Lcom/oplus/camera/CameraManager;

    iget v1, p1, Landroid/os/Message;->arg1:I

    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, v3, v1, p1}, Lcom/oplus/camera/CameraManager;->a(ZILjava/lang/String;)V

    .line 1194
    iget-object p1, p0, Lcom/oplus/camera/CameraManager$56;->a:Lcom/oplus/camera/CameraManager;

    invoke-static {p1, v3}, Lcom/oplus/camera/CameraManager;->c(Lcom/oplus/camera/CameraManager;Z)Z

    .line 1196
    iget-object p1, p0, Lcom/oplus/camera/CameraManager$56;->a:Lcom/oplus/camera/CameraManager;

    invoke-static {p1}, Lcom/oplus/camera/CameraManager;->B(Lcom/oplus/camera/CameraManager;)Z

    move-result p1

    if-eqz p1, :cond_e

    .line 1198
    iget-object p1, p0, Lcom/oplus/camera/CameraManager$56;->a:Lcom/oplus/camera/CameraManager;

    invoke-static {p1}, Lcom/oplus/camera/CameraManager;->j(Lcom/oplus/camera/CameraManager;)Lcom/oplus/camera/w/b;

    move-result-object p1

    new-instance v0, Lcom/oplus/camera/CameraManager$56$1;

    invoke-direct {v0, p0}, Lcom/oplus/camera/CameraManager$56$1;-><init>(Lcom/oplus/camera/CameraManager$56;)V

    const-wide/16 v1, 0xc8

    invoke-virtual {p1, v0, v1, v2}, Lcom/oplus/camera/w/b;->postDelayed(Ljava/lang/Runnable;J)Z

    goto/16 :goto_1

    .line 1180
    :pswitch_12
    iget-object p0, p0, Lcom/oplus/camera/CameraManager$56;->a:Lcom/oplus/camera/CameraManager;

    const/16 p1, 0x5f

    invoke-static {p0, p1, v4}, Lcom/oplus/camera/CameraManager;->a(Lcom/oplus/camera/CameraManager;IZ)V

    goto/16 :goto_1

    .line 1184
    :pswitch_13
    iget-object p0, p0, Lcom/oplus/camera/CameraManager$56;->a:Lcom/oplus/camera/CameraManager;

    const/16 p1, 0x60

    invoke-static {p0, p1, v4}, Lcom/oplus/camera/CameraManager;->a(Lcom/oplus/camera/CameraManager;IZ)V

    goto/16 :goto_1

    .line 1147
    :pswitch_14
    iget-object p1, p0, Lcom/oplus/camera/CameraManager$56;->a:Lcom/oplus/camera/CameraManager;

    invoke-static {p1}, Lcom/oplus/camera/CameraManager;->e(Lcom/oplus/camera/CameraManager;)Z

    move-result p1

    if-nez p1, :cond_e

    const-string p1, "handleMessage, MSG_CODE_SWITCH_CAMERA_OVER_TIME"

    .line 1148
    invoke-static {v2, p1}, Lcom/oplus/camera/e;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 1150
    iget-object p1, p0, Lcom/oplus/camera/CameraManager$56;->a:Lcom/oplus/camera/CameraManager;

    invoke-virtual {p1, v4}, Lcom/oplus/camera/CameraManager;->d(Z)V

    .line 1152
    iget-object p1, p0, Lcom/oplus/camera/CameraManager$56;->a:Lcom/oplus/camera/CameraManager;

    invoke-static {p1}, Lcom/oplus/camera/CameraManager;->g(Lcom/oplus/camera/CameraManager;)Lcom/oplus/camera/ui/d;

    move-result-object p1

    invoke-virtual {p1}, Lcom/oplus/camera/ui/d;->R()Z

    move-result p1

    if-nez p1, :cond_b

    .line 1153
    iget-object p1, p0, Lcom/oplus/camera/CameraManager$56;->a:Lcom/oplus/camera/CameraManager;

    invoke-static {p1}, Lcom/oplus/camera/CameraManager;->g(Lcom/oplus/camera/CameraManager;)Lcom/oplus/camera/ui/d;

    move-result-object p1

    invoke-virtual {p1, v3, v3}, Lcom/oplus/camera/ui/d;->d(ZZ)V

    .line 1156
    :cond_b
    iget-object p1, p0, Lcom/oplus/camera/CameraManager$56;->a:Lcom/oplus/camera/CameraManager;

    invoke-static {p1}, Lcom/oplus/camera/CameraManager;->g(Lcom/oplus/camera/CameraManager;)Lcom/oplus/camera/ui/d;

    move-result-object p1

    invoke-virtual {p1}, Lcom/oplus/camera/ui/d;->T()Z

    move-result p1

    if-nez p1, :cond_d

    iget-object p1, p0, Lcom/oplus/camera/CameraManager$56;->a:Lcom/oplus/camera/CameraManager;

    invoke-static {p1}, Lcom/oplus/camera/CameraManager;->i(Lcom/oplus/camera/CameraManager;)Lcom/oplus/camera/capmode/ModeManager;

    move-result-object p1

    invoke-virtual {p1}, Lcom/oplus/camera/capmode/ModeManager;->bN()Z

    move-result p1

    if-eqz p1, :cond_d

    const-string p1, "com.oplus.feature.high.definition.support"

    .line 1157
    invoke-static {p1}, Lcom/oplus/camera/aps/config/CameraConfig;->getConfigBooleanValue(Ljava/lang/String;)Z

    move-result p1

    if-nez p1, :cond_d

    const-string p1, "com.oplus.super.resolution.picturesize"

    .line 1159
    invoke-static {p1}, Lcom/oplus/camera/aps/config/CameraConfig;->getConfigStringValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 1162
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    const v0, 0x7f0604ff

    const v1, 0x7f0805e9

    if-eqz p1, :cond_c

    .line 1163
    iget-object p1, p0, Lcom/oplus/camera/CameraManager$56;->a:Lcom/oplus/camera/CameraManager;

    invoke-static {p1}, Lcom/oplus/camera/CameraManager;->i(Lcom/oplus/camera/CameraManager;)Lcom/oplus/camera/capmode/ModeManager;

    move-result-object p1

    invoke-virtual {p1}, Lcom/oplus/camera/capmode/ModeManager;->bP()D

    move-result-wide v5

    .line 1164
    iget-object p1, p0, Lcom/oplus/camera/CameraManager$56;->a:Lcom/oplus/camera/CameraManager;

    invoke-static {p1}, Lcom/oplus/camera/CameraManager;->g(Lcom/oplus/camera/CameraManager;)Lcom/oplus/camera/ui/d;

    move-result-object p1

    const v2, 0x7f1002dc

    new-array v7, v3, [Ljava/lang/Object;

    .line 1166
    invoke-static {v5, v6}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v5

    aput-object v5, v7, v4

    .line 1164
    invoke-virtual {p1, v2, v1, v0, v7}, Lcom/oplus/camera/ui/d;->b(III[Ljava/lang/Object;)V

    goto :goto_0

    .line 1168
    :cond_c
    iget-object p1, p0, Lcom/oplus/camera/CameraManager$56;->a:Lcom/oplus/camera/CameraManager;

    invoke-static {p1}, Lcom/oplus/camera/CameraManager;->g(Lcom/oplus/camera/CameraManager;)Lcom/oplus/camera/ui/d;

    move-result-object p1

    const v2, 0x7f100369

    new-array v4, v4, [Ljava/lang/Object;

    invoke-virtual {p1, v2, v1, v0, v4}, Lcom/oplus/camera/ui/d;->b(III[Ljava/lang/Object;)V

    .line 1174
    :cond_d
    :goto_0
    iget-object p0, p0, Lcom/oplus/camera/CameraManager$56;->a:Lcom/oplus/camera/CameraManager;

    invoke-virtual {p0, v3}, Lcom/oplus/camera/CameraManager;->j(I)V

    :cond_e
    :goto_1
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_14
        :pswitch_13
        :pswitch_12
        :pswitch_0
        :pswitch_11
        :pswitch_10
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_f
        :pswitch_e
        :pswitch_0
        :pswitch_d
        :pswitch_c
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_0
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_0
        :pswitch_3
        :pswitch_2
        :pswitch_1
    .end packed-switch
.end method
