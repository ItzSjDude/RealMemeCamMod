.class final Lcom/heytap/accessory/BaseAgent$b;
.super Landroid/os/Handler;
.source "BaseAgent.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/heytap/accessory/BaseAgent;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "b"
.end annotation


# instance fields
.field a:Lcom/heytap/accessory/BaseAgent;


# direct methods
.method public constructor <init>(Lcom/heytap/accessory/BaseAgent;Landroid/os/Looper;)V
    .locals 0

    .line 1174
    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 1175
    iput-object p1, p0, Lcom/heytap/accessory/BaseAgent$b;->a:Lcom/heytap/accessory/BaseAgent;

    return-void
.end method


# virtual methods
.method public final handleMessage(Landroid/os/Message;)V
    .locals 4

    .line 1187
    iget v0, p1, Landroid/os/Message;->what:I

    const/4 v1, 0x0

    packed-switch v0, :pswitch_data_0

    .line 1278
    invoke-static {}, Lcom/heytap/accessory/BaseAgent;->access$000()Ljava/lang/String;

    move-result-object p0

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Invalid msg received: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget p1, p1, Landroid/os/Message;->what:I

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Lcom/heytap/accessory/a/a;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    .line 1274
    :pswitch_0
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Landroid/content/Intent;

    .line 1275
    iget-object p0, p0, Lcom/heytap/accessory/BaseAgent$b;->a:Lcom/heytap/accessory/BaseAgent;

    invoke-static {p0, p1}, Lcom/heytap/accessory/BaseAgent;->access$2000(Lcom/heytap/accessory/BaseAgent;Landroid/content/Intent;)V

    return-void

    .line 1267
    :pswitch_1
    :try_start_0
    iget-object p1, p0, Lcom/heytap/accessory/BaseAgent$b;->a:Lcom/heytap/accessory/BaseAgent;

    invoke-static {p1}, Lcom/heytap/accessory/BaseAgent;->access$1900(Lcom/heytap/accessory/BaseAgent;)V
    :try_end_0
    .catch Lcom/heytap/accessory/bean/GeneralException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    .line 1269
    invoke-static {}, Lcom/heytap/accessory/BaseAgent;->access$000()Ljava/lang/String;

    move-result-object v0

    const-string v2, "Retrieving agent id failed"

    invoke-static {v0, v2, p1}, Lcom/heytap/accessory/a/a;->b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 1270
    iget-object p0, p0, Lcom/heytap/accessory/BaseAgent$b;->a:Lcom/heytap/accessory/BaseAgent;

    invoke-virtual {p1}, Lcom/heytap/accessory/bean/GeneralException;->getErrorCode()I

    move-result p1

    invoke-virtual {p0, p1, v1}, Lcom/heytap/accessory/BaseAgent;->handleError(ILcom/heytap/accessory/bean/PeerAgent;)V

    return-void

    .line 1263
    :pswitch_2
    iget-object p0, p0, Lcom/heytap/accessory/BaseAgent$b;->a:Lcom/heytap/accessory/BaseAgent;

    invoke-static {p0}, Lcom/heytap/accessory/BaseAgent;->access$1800(Lcom/heytap/accessory/BaseAgent;)V

    return-void

    .line 1256
    :pswitch_3
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    instance-of v0, v0, Lcom/heytap/accessory/bean/PeerAgent;

    if-eqz v0, :cond_0

    .line 1257
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Lcom/heytap/accessory/bean/PeerAgent;

    goto :goto_0

    :cond_0
    move-object v0, v1

    .line 1259
    :goto_0
    iget-object v2, p0, Lcom/heytap/accessory/BaseAgent$b;->a:Lcom/heytap/accessory/BaseAgent;

    iget v3, p1, Landroid/os/Message;->arg1:I

    invoke-virtual {v2, v0, v1, v3}, Lcom/heytap/accessory/BaseAgent;->onServiceConnectionResponse(Lcom/heytap/accessory/bean/PeerAgent;Lcom/heytap/accessory/BaseSocket;I)V

    .line 1260
    iget-object p0, p0, Lcom/heytap/accessory/BaseAgent$b;->a:Lcom/heytap/accessory/BaseAgent;

    iget p1, p1, Landroid/os/Message;->arg1:I

    invoke-static {p0, p1}, Lcom/heytap/accessory/BaseAgent;->access$600(Lcom/heytap/accessory/BaseAgent;I)V

    return-void

    .line 1249
    :pswitch_4
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    instance-of v0, v0, Lcom/heytap/accessory/bean/PeerAgent;

    if-eqz v0, :cond_1

    .line 1250
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object v1, v0

    check-cast v1, Lcom/heytap/accessory/bean/PeerAgent;

    .line 1253
    :cond_1
    iget-object p0, p0, Lcom/heytap/accessory/BaseAgent$b;->a:Lcom/heytap/accessory/BaseAgent;

    iget p1, p1, Landroid/os/Message;->arg1:I

    invoke-virtual {p0, p1, v1}, Lcom/heytap/accessory/BaseAgent;->handleError(ILcom/heytap/accessory/bean/PeerAgent;)V

    return-void

    .line 1246
    :pswitch_5
    iget-object p0, p0, Lcom/heytap/accessory/BaseAgent$b;->a:Lcom/heytap/accessory/BaseAgent;

    invoke-virtual {p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object p1

    invoke-static {p0, p1}, Lcom/heytap/accessory/BaseAgent;->access$1700(Lcom/heytap/accessory/BaseAgent;Landroid/os/Bundle;)V

    return-void

    .line 1243
    :pswitch_6
    iget-object p0, p0, Lcom/heytap/accessory/BaseAgent$b;->a:Lcom/heytap/accessory/BaseAgent;

    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Lcom/heytap/accessory/bean/PeerAgent;

    invoke-static {p0, p1}, Lcom/heytap/accessory/BaseAgent;->access$1600(Lcom/heytap/accessory/BaseAgent;Lcom/heytap/accessory/bean/PeerAgent;)V

    return-void

    .line 1239
    :pswitch_7
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Lcom/heytap/accessory/bean/PeerAgent;

    .line 1240
    iget-object p0, p0, Lcom/heytap/accessory/BaseAgent$b;->a:Lcom/heytap/accessory/BaseAgent;

    invoke-static {p0, p1}, Lcom/heytap/accessory/BaseAgent;->access$1500(Lcom/heytap/accessory/BaseAgent;Lcom/heytap/accessory/bean/PeerAgent;)V

    return-void

    .line 1235
    :pswitch_8
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Lcom/heytap/accessory/bean/PeerAgent;

    .line 1236
    iget-object p0, p0, Lcom/heytap/accessory/BaseAgent$b;->a:Lcom/heytap/accessory/BaseAgent;

    invoke-static {p0, p1}, Lcom/heytap/accessory/BaseAgent;->access$1400(Lcom/heytap/accessory/BaseAgent;Lcom/heytap/accessory/bean/PeerAgent;)V

    return-void

    .line 1231
    :pswitch_9
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Lcom/heytap/accessory/bean/PeerAgent;

    .line 1232
    iget-object p0, p0, Lcom/heytap/accessory/BaseAgent$b;->a:Lcom/heytap/accessory/BaseAgent;

    invoke-static {p0, p1}, Lcom/heytap/accessory/BaseAgent;->access$1300(Lcom/heytap/accessory/BaseAgent;Lcom/heytap/accessory/bean/PeerAgent;)V

    return-void

    .line 1227
    :pswitch_a
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Landroid/content/Intent;

    .line 1228
    iget-object p0, p0, Lcom/heytap/accessory/BaseAgent$b;->a:Lcom/heytap/accessory/BaseAgent;

    invoke-static {p0, p1}, Lcom/heytap/accessory/BaseAgent;->access$1200(Lcom/heytap/accessory/BaseAgent;Landroid/content/Intent;)V

    return-void

    .line 1222
    :pswitch_b
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, [Lcom/heytap/accessory/bean/PeerAgent;

    .line 1223
    iget-object v1, p0, Lcom/heytap/accessory/BaseAgent$b;->a:Lcom/heytap/accessory/BaseAgent;

    iget v2, p1, Landroid/os/Message;->arg1:I

    invoke-virtual {v1, v0, v2}, Lcom/heytap/accessory/BaseAgent;->onPeerAgentsUpdated([Lcom/heytap/accessory/bean/PeerAgent;I)V

    .line 1224
    iget-object p0, p0, Lcom/heytap/accessory/BaseAgent$b;->a:Lcom/heytap/accessory/BaseAgent;

    iget p1, p1, Landroid/os/Message;->arg1:I

    invoke-static {p0, p1}, Lcom/heytap/accessory/BaseAgent;->access$1100(Lcom/heytap/accessory/BaseAgent;I)V

    return-void

    .line 1203
    :pswitch_c
    iget v0, p1, Landroid/os/Message;->arg1:I

    if-nez v0, :cond_2

    .line 1209
    iget-object v0, p0, Lcom/heytap/accessory/BaseAgent$b;->a:Lcom/heytap/accessory/BaseAgent;

    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, [Lcom/heytap/accessory/bean/PeerAgent;

    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1}, Lcom/heytap/accessory/BaseAgent;->onFindPeerAgentsResponse([Lcom/heytap/accessory/bean/PeerAgent;I)V

    .line 1210
    iget-object p0, p0, Lcom/heytap/accessory/BaseAgent$b;->a:Lcom/heytap/accessory/BaseAgent;

    invoke-static {p0, v1}, Lcom/heytap/accessory/BaseAgent;->access$1000(Lcom/heytap/accessory/BaseAgent;I)V

    return-void

    .line 1217
    :cond_2
    iget-object v0, p0, Lcom/heytap/accessory/BaseAgent$b;->a:Lcom/heytap/accessory/BaseAgent;

    iget v2, p1, Landroid/os/Message;->arg1:I

    invoke-virtual {v0, v1, v2}, Lcom/heytap/accessory/BaseAgent;->onFindPeerAgentsResponse([Lcom/heytap/accessory/bean/PeerAgent;I)V

    .line 1218
    iget-object p0, p0, Lcom/heytap/accessory/BaseAgent$b;->a:Lcom/heytap/accessory/BaseAgent;

    iget p1, p1, Landroid/os/Message;->arg1:I

    invoke-static {p0, p1}, Lcom/heytap/accessory/BaseAgent;->access$1000(Lcom/heytap/accessory/BaseAgent;I)V

    return-void

    .line 1200
    :pswitch_d
    iget-object p0, p0, Lcom/heytap/accessory/BaseAgent$b;->a:Lcom/heytap/accessory/BaseAgent;

    invoke-static {p0}, Lcom/heytap/accessory/BaseAgent;->access$900(Lcom/heytap/accessory/BaseAgent;)V

    return-void

    .line 1197
    :pswitch_e
    iget-object p0, p0, Lcom/heytap/accessory/BaseAgent$b;->a:Lcom/heytap/accessory/BaseAgent;

    invoke-static {p0}, Lcom/heytap/accessory/BaseAgent;->access$800(Lcom/heytap/accessory/BaseAgent;)V

    return-void

    .line 1190
    :pswitch_f
    :try_start_1
    iget-object p1, p0, Lcom/heytap/accessory/BaseAgent$b;->a:Lcom/heytap/accessory/BaseAgent;

    invoke-static {p1}, Lcom/heytap/accessory/BaseAgent;->access$700(Lcom/heytap/accessory/BaseAgent;)V
    :try_end_1
    .catch Lcom/heytap/accessory/bean/GeneralException; {:try_start_1 .. :try_end_1} :catch_1

    return-void

    :catch_1
    move-exception p1

    .line 1192
    invoke-static {}, Lcom/heytap/accessory/BaseAgent;->access$000()Ljava/lang/String;

    move-result-object v0

    const-string v2, "Binding to Accessory Framework failed"

    invoke-static {v0, v2, p1}, Lcom/heytap/accessory/a/a;->b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 1193
    iget-object p0, p0, Lcom/heytap/accessory/BaseAgent$b;->a:Lcom/heytap/accessory/BaseAgent;

    invoke-virtual {p1}, Lcom/heytap/accessory/bean/GeneralException;->getErrorCode()I

    move-result p1

    invoke-virtual {p0, p1, v1}, Lcom/heytap/accessory/BaseAgent;->handleError(ILcom/heytap/accessory/bean/PeerAgent;)V

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
