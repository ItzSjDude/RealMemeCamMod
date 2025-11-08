.class Lcom/oplus/camera/n/a$6;
.super Ljava/lang/Object;
.source "PortraitCapMode.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/oplus/camera/n/a;->a(IZ)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Z

.field final synthetic b:I

.field final synthetic c:Lcom/oplus/camera/n/a;


# direct methods
.method constructor <init>(Lcom/oplus/camera/n/a;ZI)V
    .locals 0

    .line 1315
    iput-object p1, p0, Lcom/oplus/camera/n/a$6;->c:Lcom/oplus/camera/n/a;

    iput-boolean p2, p0, Lcom/oplus/camera/n/a$6;->a:Z

    iput p3, p0, Lcom/oplus/camera/n/a$6;->b:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    .line 1318
    iget-object v0, p0, Lcom/oplus/camera/n/a$6;->c:Lcom/oplus/camera/n/a;

    invoke-static {v0}, Lcom/oplus/camera/n/a;->k(Lcom/oplus/camera/n/a;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 1322
    :cond_0
    iget-object v0, p0, Lcom/oplus/camera/n/a$6;->c:Lcom/oplus/camera/n/a;

    invoke-static {v0}, Lcom/oplus/camera/n/a;->l(Lcom/oplus/camera/n/a;)Lcom/oplus/camera/ui/CameraUIInterface;

    move-result-object v0

    invoke-interface {v0}, Lcom/oplus/camera/ui/CameraUIInterface;->T()Z

    move-result v0

    if-nez v0, :cond_7

    iget-object v0, p0, Lcom/oplus/camera/n/a$6;->c:Lcom/oplus/camera/n/a;

    invoke-static {v0}, Lcom/oplus/camera/n/a;->m(Lcom/oplus/camera/n/a;)Lcom/oplus/camera/ui/CameraUIInterface;

    move-result-object v0

    invoke-interface {v0}, Lcom/oplus/camera/ui/CameraUIInterface;->R()Z

    move-result v0

    if-eqz v0, :cond_1

    goto/16 :goto_1

    .line 1330
    :cond_1
    iget v0, p0, Lcom/oplus/camera/n/a$6;->b:I

    const v1, 0x7f1000e7

    const-string v2, "pref_camera_gesture_shutter_key"

    const/4 v3, 0x1

    const-string v4, "bokeh_code"

    packed-switch v0, :pswitch_data_0

    .line 1384
    :pswitch_0
    iget-object v0, p0, Lcom/oplus/camera/n/a$6;->c:Lcom/oplus/camera/n/a;

    invoke-static {v0, v3}, Lcom/oplus/camera/n/a;->d(Lcom/oplus/camera/n/a;Z)V

    goto/16 :goto_0

    .line 1378
    :pswitch_1
    iget-object v0, p0, Lcom/oplus/camera/n/a$6;->c:Lcom/oplus/camera/n/a;

    invoke-static {v0, v1}, Lcom/oplus/camera/n/a;->b(Lcom/oplus/camera/n/a;I)V

    .line 1379
    iget-object v0, p0, Lcom/oplus/camera/n/a$6;->c:Lcom/oplus/camera/n/a;

    const/16 v1, 0xa

    .line 1380
    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/oplus/camera/n/a$6;->c:Lcom/oplus/camera/n/a;

    invoke-virtual {v2}, Lcom/oplus/camera/n/a;->getCurrFilterType()Ljava/lang/String;

    move-result-object v2

    .line 1379
    invoke-static {v0, v4, v1, v2}, Lcom/oplus/camera/n/a;->a(Lcom/oplus/camera/n/a;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 1372
    :pswitch_2
    iget-object v0, p0, Lcom/oplus/camera/n/a$6;->c:Lcom/oplus/camera/n/a;

    const v1, 0x7f1000ee

    invoke-static {v0, v1}, Lcom/oplus/camera/n/a;->b(Lcom/oplus/camera/n/a;I)V

    .line 1373
    iget-object v0, p0, Lcom/oplus/camera/n/a$6;->c:Lcom/oplus/camera/n/a;

    const/16 v1, 0x9

    .line 1374
    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    .line 1373
    invoke-static {v0, v4, v1}, Lcom/oplus/camera/n/a;->a(Lcom/oplus/camera/n/a;Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 1366
    :pswitch_3
    iget-object v0, p0, Lcom/oplus/camera/n/a$6;->c:Lcom/oplus/camera/n/a;

    invoke-static {v0, v1}, Lcom/oplus/camera/n/a;->b(Lcom/oplus/camera/n/a;I)V

    .line 1367
    iget-object v0, p0, Lcom/oplus/camera/n/a$6;->c:Lcom/oplus/camera/n/a;

    const/4 v1, 0x7

    .line 1368
    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/oplus/camera/n/a$6;->c:Lcom/oplus/camera/n/a;

    invoke-virtual {v2}, Lcom/oplus/camera/n/a;->getCurrFilterType()Ljava/lang/String;

    move-result-object v2

    .line 1367
    invoke-static {v0, v4, v1, v2}, Lcom/oplus/camera/n/a;->a(Lcom/oplus/camera/n/a;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 1360
    :pswitch_4
    iget-object v0, p0, Lcom/oplus/camera/n/a$6;->c:Lcom/oplus/camera/n/a;

    const v1, 0x7f1000ed

    invoke-static {v0, v1}, Lcom/oplus/camera/n/a;->b(Lcom/oplus/camera/n/a;I)V

    .line 1361
    iget-object v0, p0, Lcom/oplus/camera/n/a$6;->c:Lcom/oplus/camera/n/a;

    const/4 v1, 0x5

    .line 1362
    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    .line 1361
    invoke-static {v0, v4, v1}, Lcom/oplus/camera/n/a;->a(Lcom/oplus/camera/n/a;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 1354
    :pswitch_5
    iget-object v0, p0, Lcom/oplus/camera/n/a$6;->c:Lcom/oplus/camera/n/a;

    const v1, 0x7f1001fc

    invoke-static {v0, v1}, Lcom/oplus/camera/n/a;->b(Lcom/oplus/camera/n/a;I)V

    .line 1355
    iget-object v0, p0, Lcom/oplus/camera/n/a$6;->c:Lcom/oplus/camera/n/a;

    const/4 v1, 0x4

    .line 1356
    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    .line 1355
    invoke-static {v0, v4, v1}, Lcom/oplus/camera/n/a;->a(Lcom/oplus/camera/n/a;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 1348
    :pswitch_6
    iget-object v0, p0, Lcom/oplus/camera/n/a$6;->c:Lcom/oplus/camera/n/a;

    const v1, 0x7f1000ea

    invoke-static {v0, v1}, Lcom/oplus/camera/n/a;->b(Lcom/oplus/camera/n/a;I)V

    .line 1349
    iget-object v0, p0, Lcom/oplus/camera/n/a$6;->c:Lcom/oplus/camera/n/a;

    const/4 v1, 0x3

    .line 1350
    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    .line 1349
    invoke-static {v0, v4, v1}, Lcom/oplus/camera/n/a;->a(Lcom/oplus/camera/n/a;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 1339
    :pswitch_7
    iget-object v0, p0, Lcom/oplus/camera/n/a$6;->c:Lcom/oplus/camera/n/a;

    invoke-virtual {v0, v2}, Lcom/oplus/camera/n/a;->getSupportFunction(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/oplus/camera/n/a$6;->c:Lcom/oplus/camera/n/a;

    invoke-static {v0}, Lcom/oplus/camera/n/a;->n(Lcom/oplus/camera/n/a;)Z

    move-result v0

    if-nez v0, :cond_3

    .line 1340
    :cond_2
    iget-object v0, p0, Lcom/oplus/camera/n/a$6;->c:Lcom/oplus/camera/n/a;

    const v1, 0x7f1000eb

    invoke-static {v0, v1}, Lcom/oplus/camera/n/a;->b(Lcom/oplus/camera/n/a;I)V

    .line 1343
    :cond_3
    iget-object v0, p0, Lcom/oplus/camera/n/a$6;->c:Lcom/oplus/camera/n/a;

    const/4 v1, 0x2

    .line 1344
    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    .line 1343
    invoke-static {v0, v4, v1}, Lcom/oplus/camera/n/a;->a(Lcom/oplus/camera/n/a;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 1332
    :pswitch_8
    iget-object v0, p0, Lcom/oplus/camera/n/a$6;->c:Lcom/oplus/camera/n/a;

    invoke-virtual {v0, v2}, Lcom/oplus/camera/n/a;->getSupportFunction(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/oplus/camera/n/a$6;->c:Lcom/oplus/camera/n/a;

    invoke-static {v0}, Lcom/oplus/camera/n/a;->n(Lcom/oplus/camera/n/a;)Z

    move-result v0

    if-nez v0, :cond_5

    .line 1333
    :cond_4
    iget-object v0, p0, Lcom/oplus/camera/n/a$6;->c:Lcom/oplus/camera/n/a;

    invoke-static {v0, v3}, Lcom/oplus/camera/n/a;->d(Lcom/oplus/camera/n/a;Z)V

    .line 1388
    :cond_5
    :goto_0
    iget-boolean v0, p0, Lcom/oplus/camera/n/a$6;->a:Z

    if-eqz v0, :cond_6

    .line 1389
    iget-object v0, p0, Lcom/oplus/camera/n/a$6;->c:Lcom/oplus/camera/n/a;

    iget p0, p0, Lcom/oplus/camera/n/a$6;->b:I

    invoke-static {v0, p0}, Lcom/oplus/camera/n/a;->a(Lcom/oplus/camera/n/a;I)V

    :cond_6
    return-void

    .line 1323
    :cond_7
    :goto_1
    iget-boolean v0, p0, Lcom/oplus/camera/n/a$6;->a:Z

    if-eqz v0, :cond_8

    .line 1324
    iget-object v0, p0, Lcom/oplus/camera/n/a$6;->c:Lcom/oplus/camera/n/a;

    iget p0, p0, Lcom/oplus/camera/n/a$6;->b:I

    invoke-static {v0, p0}, Lcom/oplus/camera/n/a;->a(Lcom/oplus/camera/n/a;I)V

    :cond_8
    return-void

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_0
        :pswitch_3
        :pswitch_0
        :pswitch_2
        :pswitch_1
    .end packed-switch
.end method
