.class final Lcom/heytap/accessory/BaseSocket$ServiceConnectionCallback;
.super Lcom/heytap/accessory/api/IServiceConnectionCallback$Stub;
.source "BaseSocket.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/heytap/accessory/BaseSocket;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x10
    name = "ServiceConnectionCallback"
.end annotation


# instance fields
.field final synthetic a:Lcom/heytap/accessory/BaseSocket;


# direct methods
.method private constructor <init>(Lcom/heytap/accessory/BaseSocket;)V
    .locals 0

    .line 545
    iput-object p1, p0, Lcom/heytap/accessory/BaseSocket$ServiceConnectionCallback;->a:Lcom/heytap/accessory/BaseSocket;

    invoke-direct {p0}, Lcom/heytap/accessory/api/IServiceConnectionCallback$Stub;-><init>()V

    .line 546
    invoke-static {}, Lcom/heytap/accessory/BaseSocket;->access$300()Ljava/lang/String;

    move-result-object p0

    const-string p1, "ServiceConnectionCallback new"

    invoke-static {p0, p1}, Lcom/heytap/accessory/a/a;->b(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method synthetic constructor <init>(Lcom/heytap/accessory/BaseSocket;B)V
    .locals 0

    .line 544
    invoke-direct {p0, p1}, Lcom/heytap/accessory/BaseSocket$ServiceConnectionCallback;-><init>(Lcom/heytap/accessory/BaseSocket;)V

    return-void
.end method


# virtual methods
.method public final a(Landroid/os/Bundle;)V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    const-string v0, "errorcode"

    .line 551
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 552
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    const-string v2, "connectionId"

    .line 553
    invoke-virtual {p1, v2}, Landroid/os/Bundle;->getLong(Ljava/lang/String;)J

    move-result-wide v3

    invoke-virtual {v1, v2, v3, v4}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    .line 554
    iget-object v2, p0, Lcom/heytap/accessory/BaseSocket$ServiceConnectionCallback;->a:Lcom/heytap/accessory/BaseSocket;

    invoke-static {v2}, Lcom/heytap/accessory/BaseSocket;->access$700(Lcom/heytap/accessory/BaseSocket;)Lcom/heytap/accessory/BaseSocket$b;

    move-result-object v2

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Lcom/heytap/accessory/BaseSocket$b;->obtainMessage(I)Landroid/os/Message;

    move-result-object v2

    .line 555
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result p1

    iput p1, v2, Landroid/os/Message;->arg1:I

    .line 556
    iput-object v1, v2, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 557
    iget-object p0, p0, Lcom/heytap/accessory/BaseSocket$ServiceConnectionCallback;->a:Lcom/heytap/accessory/BaseSocket;

    invoke-static {p0}, Lcom/heytap/accessory/BaseSocket;->access$700(Lcom/heytap/accessory/BaseSocket;)Lcom/heytap/accessory/BaseSocket$b;

    move-result-object p0

    invoke-virtual {p0, v2}, Lcom/heytap/accessory/BaseSocket$b;->sendMessage(Landroid/os/Message;)Z

    return-void

    .line 559
    :cond_0
    invoke-static {}, Lcom/heytap/accessory/BaseSocket;->access$300()Ljava/lang/String;

    move-result-object p0

    const-string p1, "onConnectionLost with no error code!"

    invoke-static {p0, p1}, Lcom/heytap/accessory/a/a;->e(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public final b(Landroid/os/Bundle;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 566
    iget-object v0, p0, Lcom/heytap/accessory/BaseSocket$ServiceConnectionCallback;->a:Lcom/heytap/accessory/BaseSocket;

    invoke-static {v0}, Lcom/heytap/accessory/BaseSocket;->access$700(Lcom/heytap/accessory/BaseSocket;)Lcom/heytap/accessory/BaseSocket$b;

    move-result-object v0

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Lcom/heytap/accessory/BaseSocket$b;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    const-string v1, "errorcode"

    const/16 v2, 0x271c

    .line 567
    invoke-virtual {p1, v1, v2}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v1

    iput v1, v0, Landroid/os/Message;->arg1:I

    const-string v1, "connectionId"

    const/4 v2, 0x0

    .line 568
    invoke-virtual {p1, v1, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 569
    invoke-virtual {v0, p1}, Landroid/os/Message;->setData(Landroid/os/Bundle;)V

    .line 570
    iget-object p0, p0, Lcom/heytap/accessory/BaseSocket$ServiceConnectionCallback;->a:Lcom/heytap/accessory/BaseSocket;

    invoke-static {p0}, Lcom/heytap/accessory/BaseSocket;->access$700(Lcom/heytap/accessory/BaseSocket;)Lcom/heytap/accessory/BaseSocket$b;

    move-result-object p0

    invoke-virtual {p0, v0}, Lcom/heytap/accessory/BaseSocket$b;->sendMessage(Landroid/os/Message;)Z

    return-void
.end method
