.class final Lcom/heytap/accessory/BaseSocket$b;
.super Landroid/os/Handler;
.source "BaseSocket.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/heytap/accessory/BaseSocket;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "b"
.end annotation


# instance fields
.field a:Lcom/heytap/accessory/BaseSocket;


# direct methods
.method public constructor <init>(Lcom/heytap/accessory/BaseSocket;Landroid/os/Looper;)V
    .locals 0

    .line 582
    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 583
    iput-object p1, p0, Lcom/heytap/accessory/BaseSocket$b;->a:Lcom/heytap/accessory/BaseSocket;

    return-void
.end method


# virtual methods
.method public final declared-synchronized a()V
    .locals 1

    monitor-enter p0

    .line 617
    :try_start_0
    invoke-super {p0}, Landroid/os/Handler;->getLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Looper;->quit()V

    const/4 v0, 0x0

    .line 618
    iput-object v0, p0, Lcom/heytap/accessory/BaseSocket$b;->a:Lcom/heytap/accessory/BaseSocket;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 619
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final declared-synchronized handleMessage(Landroid/os/Message;)V
    .locals 4

    monitor-enter p0

    .line 588
    :try_start_0
    iget v0, p1, Landroid/os/Message;->what:I

    const/4 v1, 0x1

    if-eq v0, v1, :cond_3

    const/4 v1, 0x2

    if-eq v0, v1, :cond_2

    const/4 v1, 0x4

    if-eq v0, v1, :cond_0

    .line 603
    invoke-static {}, Lcom/heytap/accessory/BaseSocket;->access$300()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Invalid message: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget p1, p1, Landroid/os/Message;->what:I

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Lcom/heytap/accessory/a/a;->e(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 604
    monitor-exit p0

    return-void

    .line 606
    :cond_0
    :try_start_1
    invoke-virtual {p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v0

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    const-string v1, "channelId"

    .line 609
    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getLongArray(Ljava/lang/String;)[J

    move-result-object v1

    .line 611
    :cond_1
    iget-object v0, p0, Lcom/heytap/accessory/BaseSocket$b;->a:Lcom/heytap/accessory/BaseSocket;

    iget-object v2, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v2, Ljava/lang/String;

    iget p1, p1, Landroid/os/Message;->arg1:I

    invoke-static {v0, v2, v1, p1}, Lcom/heytap/accessory/BaseSocket;->access$600(Lcom/heytap/accessory/BaseSocket;Ljava/lang/String;[JI)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 614
    monitor-exit p0

    return-void

    .line 599
    :cond_2
    :try_start_2
    iget-object v0, p0, Lcom/heytap/accessory/BaseSocket$b;->a:Lcom/heytap/accessory/BaseSocket;

    iget v1, p1, Landroid/os/Message;->arg1:I

    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Landroid/os/Bundle;

    invoke-static {v0, v1, p1}, Lcom/heytap/accessory/BaseSocket;->access$900(Lcom/heytap/accessory/BaseSocket;ILandroid/os/Bundle;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 600
    monitor-exit p0

    return-void

    .line 590
    :cond_3
    :try_start_3
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/os/Bundle;

    if-eqz v0, :cond_4

    .line 592
    iget-object v1, p0, Lcom/heytap/accessory/BaseSocket$b;->a:Lcom/heytap/accessory/BaseSocket;

    const-string v2, "connectionId"

    invoke-virtual {v0, v2}, Landroid/os/Bundle;->getLong(Ljava/lang/String;)J

    move-result-wide v2

    iget p1, p1, Landroid/os/Message;->arg1:I

    invoke-static {v1, v2, v3, p1}, Lcom/heytap/accessory/BaseSocket;->access$800(Lcom/heytap/accessory/BaseSocket;JI)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    monitor-exit p0

    return-void

    .line 594
    :cond_4
    :try_start_4
    invoke-static {}, Lcom/heytap/accessory/BaseSocket;->access$300()Ljava/lang/String;

    move-result-object v0

    const-string v1, "MESSAGE_SERVICE_CONNECTION_LOSS: (bundle==null)"

    invoke-static {v0, v1}, Lcom/heytap/accessory/a/a;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 595
    iget-object v0, p0, Lcom/heytap/accessory/BaseSocket$b;->a:Lcom/heytap/accessory/BaseSocket;

    const-wide/16 v1, 0x0

    iget p1, p1, Landroid/os/Message;->arg1:I

    invoke-static {v0, v1, v2, p1}, Lcom/heytap/accessory/BaseSocket;->access$800(Lcom/heytap/accessory/BaseSocket;JI)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 597
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method
