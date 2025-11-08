.class Lcom/heytap/accessory/BaseJobAgent$AgentHandler;
.super Landroid/os/Handler;
.source "BaseJobAgent.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/heytap/accessory/BaseJobAgent;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "AgentHandler"
.end annotation


# instance fields
.field a:Lcom/heytap/accessory/BaseJobAgent;


# direct methods
.method public constructor <init>(Lcom/heytap/accessory/BaseJobAgent;Landroid/os/Looper;)V
    .locals 0

    .line 1343
    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 1344
    iput-object p1, p0, Lcom/heytap/accessory/BaseJobAgent$AgentHandler;->a:Lcom/heytap/accessory/BaseJobAgent;

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 4

    .line 1354
    iget-object v0, p0, Lcom/heytap/accessory/BaseJobAgent$AgentHandler;->a:Lcom/heytap/accessory/BaseJobAgent;

    iget-object v0, v0, Lcom/heytap/accessory/BaseJobAgent;->mAdapter:Lcom/heytap/accessory/BaseAdapter;

    const-string v1, "BaseJobAgent"

    if-nez v0, :cond_0

    const-string p0, "BaseApdater is null, return!"

    .line 1355
    invoke-static {v1, p0}, Lcom/heytap/accessory/a/a;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    .line 1360
    :cond_0
    iget v0, p1, Landroid/os/Message;->what:I

    const/4 v2, 0x0

    packed-switch v0, :pswitch_data_0

    .line 1452
    new-instance p0, Ljava/lang/StringBuilder;

    const-string v0, "Invalid msg received: "

    invoke-direct {p0, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget p1, p1, Landroid/os/Message;->what:I

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v1, p0}, Lcom/heytap/accessory/a/a;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    .line 1445
    :pswitch_0
    :try_start_0
    iget-object p1, p0, Lcom/heytap/accessory/BaseJobAgent$AgentHandler;->a:Lcom/heytap/accessory/BaseJobAgent;

    invoke-static {p1}, Lcom/heytap/accessory/BaseJobAgent;->access$2600(Lcom/heytap/accessory/BaseJobAgent;)V
    :try_end_0
    .catch Lcom/heytap/accessory/bean/GeneralException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    const-string v0, "Retrieving agent id failed"

    .line 1447
    invoke-static {v1, v0, p1}, Lcom/heytap/accessory/a/a;->b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 1448
    iget-object p0, p0, Lcom/heytap/accessory/BaseJobAgent$AgentHandler;->a:Lcom/heytap/accessory/BaseJobAgent;

    invoke-virtual {p1}, Lcom/heytap/accessory/bean/GeneralException;->getErrorCode()I

    move-result p1

    invoke-virtual {p0, p1, v2}, Lcom/heytap/accessory/BaseJobAgent;->handleError(ILcom/heytap/accessory/bean/PeerAgent;)V

    return-void

    .line 1441
    :pswitch_1
    iget-object p0, p0, Lcom/heytap/accessory/BaseJobAgent$AgentHandler;->a:Lcom/heytap/accessory/BaseJobAgent;

    invoke-virtual {p0}, Lcom/heytap/accessory/BaseJobAgent;->cleanup()V

    return-void

    .line 1433
    :pswitch_2
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    instance-of v0, v0, Lcom/heytap/accessory/bean/PeerAgent;

    if-eqz v0, :cond_1

    .line 1434
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Lcom/heytap/accessory/bean/PeerAgent;

    goto :goto_0

    :cond_1
    move-object v0, v2

    .line 1437
    :goto_0
    iget-object v1, p0, Lcom/heytap/accessory/BaseJobAgent$AgentHandler;->a:Lcom/heytap/accessory/BaseJobAgent;

    iget v3, p1, Landroid/os/Message;->arg1:I

    invoke-virtual {v1, v0, v2, v3}, Lcom/heytap/accessory/BaseJobAgent;->onServiceConnectionResponse(Lcom/heytap/accessory/bean/PeerAgent;Lcom/heytap/accessory/BaseSocket;I)V

    .line 1438
    iget-object p0, p0, Lcom/heytap/accessory/BaseJobAgent$AgentHandler;->a:Lcom/heytap/accessory/BaseJobAgent;

    iget p1, p1, Landroid/os/Message;->arg1:I

    invoke-static {p0, p1}, Lcom/heytap/accessory/BaseJobAgent;->access$500(Lcom/heytap/accessory/BaseJobAgent;I)V

    return-void

    .line 1426
    :pswitch_3
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    instance-of v0, v0, Lcom/heytap/accessory/bean/PeerAgent;

    if-eqz v0, :cond_2

    .line 1427
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object v2, v0

    check-cast v2, Lcom/heytap/accessory/bean/PeerAgent;

    .line 1430
    :cond_2
    iget-object p0, p0, Lcom/heytap/accessory/BaseJobAgent$AgentHandler;->a:Lcom/heytap/accessory/BaseJobAgent;

    iget p1, p1, Landroid/os/Message;->arg1:I

    invoke-virtual {p0, p1, v2}, Lcom/heytap/accessory/BaseJobAgent;->handleError(ILcom/heytap/accessory/bean/PeerAgent;)V

    return-void

    .line 1423
    :pswitch_4
    iget-object p0, p0, Lcom/heytap/accessory/BaseJobAgent$AgentHandler;->a:Lcom/heytap/accessory/BaseJobAgent;

    invoke-virtual {p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object p1

    invoke-static {p0, p1}, Lcom/heytap/accessory/BaseJobAgent;->access$2500(Lcom/heytap/accessory/BaseJobAgent;Landroid/os/Bundle;)V

    return-void

    .line 1420
    :pswitch_5
    iget-object p0, p0, Lcom/heytap/accessory/BaseJobAgent$AgentHandler;->a:Lcom/heytap/accessory/BaseJobAgent;

    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Lcom/heytap/accessory/bean/PeerAgent;

    invoke-static {p0, p1}, Lcom/heytap/accessory/BaseJobAgent;->access$2400(Lcom/heytap/accessory/BaseJobAgent;Lcom/heytap/accessory/bean/PeerAgent;)V

    return-void

    .line 1416
    :pswitch_6
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Lcom/heytap/accessory/bean/PeerAgent;

    .line 1417
    iget-object p0, p0, Lcom/heytap/accessory/BaseJobAgent$AgentHandler;->a:Lcom/heytap/accessory/BaseJobAgent;

    invoke-static {p0, p1}, Lcom/heytap/accessory/BaseJobAgent;->access$2300(Lcom/heytap/accessory/BaseJobAgent;Lcom/heytap/accessory/bean/PeerAgent;)V

    return-void

    .line 1412
    :pswitch_7
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Lcom/heytap/accessory/bean/PeerAgent;

    .line 1413
    iget-object p0, p0, Lcom/heytap/accessory/BaseJobAgent$AgentHandler;->a:Lcom/heytap/accessory/BaseJobAgent;

    invoke-static {p0, p1}, Lcom/heytap/accessory/BaseJobAgent;->access$2200(Lcom/heytap/accessory/BaseJobAgent;Lcom/heytap/accessory/bean/PeerAgent;)V

    return-void

    .line 1408
    :pswitch_8
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Lcom/heytap/accessory/bean/PeerAgent;

    .line 1409
    iget-object p0, p0, Lcom/heytap/accessory/BaseJobAgent$AgentHandler;->a:Lcom/heytap/accessory/BaseJobAgent;

    invoke-static {p0, p1}, Lcom/heytap/accessory/BaseJobAgent;->access$2100(Lcom/heytap/accessory/BaseJobAgent;Lcom/heytap/accessory/bean/PeerAgent;)V

    return-void

    :pswitch_9
    const-string v0, "MESSAGE_CONNECTION_INDICATION_JOB"

    .line 1400
    invoke-static {v1, v0}, Lcom/heytap/accessory/a/a;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 1401
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Lcom/heytap/accessory/IJobListener;

    .line 1402
    invoke-virtual {p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object p1

    const-string v1, "params"

    .line 1403
    invoke-virtual {p1, v1}, Landroid/os/Bundle;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/app/job/JobParameters;

    .line 1404
    iget-object p0, p0, Lcom/heytap/accessory/BaseJobAgent$AgentHandler;->a:Lcom/heytap/accessory/BaseJobAgent;

    invoke-virtual {p1}, Landroid/app/job/JobParameters;->getExtras()Landroid/os/PersistableBundle;

    move-result-object v1

    invoke-static {p0, v1}, Lcom/heytap/accessory/BaseJobAgent;->access$2000(Lcom/heytap/accessory/BaseJobAgent;Landroid/os/PersistableBundle;)V

    .line 1405
    invoke-interface {v0, p1}, Lcom/heytap/accessory/IJobListener;->onJobFinished(Landroid/app/job/JobParameters;)V

    return-void

    .line 1396
    :pswitch_a
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Landroid/content/Intent;

    .line 1397
    iget-object p0, p0, Lcom/heytap/accessory/BaseJobAgent$AgentHandler;->a:Lcom/heytap/accessory/BaseJobAgent;

    invoke-static {p0, p1}, Lcom/heytap/accessory/BaseJobAgent;->access$1900(Lcom/heytap/accessory/BaseJobAgent;Landroid/content/Intent;)V

    return-void

    .line 1391
    :pswitch_b
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, [Lcom/heytap/accessory/bean/PeerAgent;

    .line 1392
    iget-object v1, p0, Lcom/heytap/accessory/BaseJobAgent$AgentHandler;->a:Lcom/heytap/accessory/BaseJobAgent;

    iget v2, p1, Landroid/os/Message;->arg1:I

    invoke-virtual {v1, v0, v2}, Lcom/heytap/accessory/BaseJobAgent;->onPeerAgentsUpdated([Lcom/heytap/accessory/bean/PeerAgent;I)V

    .line 1393
    iget-object p0, p0, Lcom/heytap/accessory/BaseJobAgent$AgentHandler;->a:Lcom/heytap/accessory/BaseJobAgent;

    iget p1, p1, Landroid/os/Message;->arg1:I

    invoke-static {p0, p1}, Lcom/heytap/accessory/BaseJobAgent;->access$1800(Lcom/heytap/accessory/BaseJobAgent;I)V

    return-void

    .line 1376
    :pswitch_c
    iget v0, p1, Landroid/os/Message;->arg1:I

    if-nez v0, :cond_4

    .line 1378
    iget-object v1, p0, Lcom/heytap/accessory/BaseJobAgent$AgentHandler;->a:Lcom/heytap/accessory/BaseJobAgent;

    instance-of v2, v1, Lcom/heytap/accessory/NativeAgent;

    if-eqz v2, :cond_3

    .line 1379
    check-cast v1, Lcom/heytap/accessory/NativeAgent;

    iget-object p0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p0, [Lcom/heytap/accessory/bean/PeerAgent;

    invoke-static {p0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object p0

    invoke-virtual {v1, v0, p0}, Lcom/heytap/accessory/NativeAgent;->a(ILjava/util/List;)V

    return-void

    :cond_3
    const/4 v0, 0x0

    .line 1382
    invoke-static {v1, v0}, Lcom/heytap/accessory/BaseJobAgent;->access$1700(Lcom/heytap/accessory/BaseJobAgent;I)V

    .line 1383
    iget-object p0, p0, Lcom/heytap/accessory/BaseJobAgent$AgentHandler;->a:Lcom/heytap/accessory/BaseJobAgent;

    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, [Lcom/heytap/accessory/bean/PeerAgent;

    invoke-virtual {p0, p1, v0}, Lcom/heytap/accessory/BaseJobAgent;->onFindPeerAgentsResponse([Lcom/heytap/accessory/bean/PeerAgent;I)V

    return-void

    .line 1386
    :cond_4
    iget-object v0, p0, Lcom/heytap/accessory/BaseJobAgent$AgentHandler;->a:Lcom/heytap/accessory/BaseJobAgent;

    iget v1, p1, Landroid/os/Message;->arg1:I

    invoke-static {v0, v1}, Lcom/heytap/accessory/BaseJobAgent;->access$1700(Lcom/heytap/accessory/BaseJobAgent;I)V

    .line 1387
    iget-object p0, p0, Lcom/heytap/accessory/BaseJobAgent$AgentHandler;->a:Lcom/heytap/accessory/BaseJobAgent;

    iget p1, p1, Landroid/os/Message;->arg1:I

    invoke-virtual {p0, v2, p1}, Lcom/heytap/accessory/BaseJobAgent;->onFindPeerAgentsResponse([Lcom/heytap/accessory/bean/PeerAgent;I)V

    return-void

    .line 1373
    :pswitch_d
    iget-object p0, p0, Lcom/heytap/accessory/BaseJobAgent$AgentHandler;->a:Lcom/heytap/accessory/BaseJobAgent;

    invoke-static {p0}, Lcom/heytap/accessory/BaseJobAgent;->access$1600(Lcom/heytap/accessory/BaseJobAgent;)V

    return-void

    .line 1370
    :pswitch_e
    iget-object p0, p0, Lcom/heytap/accessory/BaseJobAgent$AgentHandler;->a:Lcom/heytap/accessory/BaseJobAgent;

    invoke-static {p0}, Lcom/heytap/accessory/BaseJobAgent;->access$1500(Lcom/heytap/accessory/BaseJobAgent;)V

    return-void

    .line 1363
    :pswitch_f
    :try_start_1
    iget-object p1, p0, Lcom/heytap/accessory/BaseJobAgent$AgentHandler;->a:Lcom/heytap/accessory/BaseJobAgent;

    invoke-static {p1}, Lcom/heytap/accessory/BaseJobAgent;->access$1400(Lcom/heytap/accessory/BaseJobAgent;)V
    :try_end_1
    .catch Lcom/heytap/accessory/bean/GeneralException; {:try_start_1 .. :try_end_1} :catch_1

    return-void

    :catch_1
    move-exception p1

    const-string v0, "Binding to Accessory Framework failed"

    .line 1365
    invoke-static {v1, v0, p1}, Lcom/heytap/accessory/a/a;->b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 1366
    iget-object p0, p0, Lcom/heytap/accessory/BaseJobAgent$AgentHandler;->a:Lcom/heytap/accessory/BaseJobAgent;

    invoke-virtual {p1}, Lcom/heytap/accessory/bean/GeneralException;->getErrorCode()I

    move-result p1

    invoke-virtual {p0, p1, v2}, Lcom/heytap/accessory/BaseJobAgent;->handleError(ILcom/heytap/accessory/bean/PeerAgent;)V

    return-void

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_f
        :pswitch_e
        :pswitch_d
        :pswitch_c
        :pswitch_b
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
