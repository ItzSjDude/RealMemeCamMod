.class final Lcom/heytap/accessory/BaseSocket$2;
.super Ljava/lang/Object;
.source "BaseSocket.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/heytap/accessory/BaseSocket;->acceptServiceConnection(Ljava/lang/String;Lcom/heytap/accessory/bean/PeerAgent;Lcom/heytap/accessory/BaseAdapter;Lcom/heytap/accessory/BaseSocket$a;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/heytap/accessory/BaseAdapter;

.field final synthetic b:Ljava/lang/String;

.field final synthetic c:Lcom/heytap/accessory/bean/PeerAgent;

.field final synthetic d:Lcom/heytap/accessory/BaseSocket;


# direct methods
.method constructor <init>(Lcom/heytap/accessory/BaseSocket;Lcom/heytap/accessory/BaseAdapter;Ljava/lang/String;Lcom/heytap/accessory/bean/PeerAgent;)V
    .locals 0

    .line 322
    iput-object p1, p0, Lcom/heytap/accessory/BaseSocket$2;->d:Lcom/heytap/accessory/BaseSocket;

    iput-object p2, p0, Lcom/heytap/accessory/BaseSocket$2;->a:Lcom/heytap/accessory/BaseAdapter;

    iput-object p3, p0, Lcom/heytap/accessory/BaseSocket$2;->b:Ljava/lang/String;

    iput-object p4, p0, Lcom/heytap/accessory/BaseSocket$2;->c:Lcom/heytap/accessory/bean/PeerAgent;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 9

    .line 326
    :try_start_0
    iget-object v0, p0, Lcom/heytap/accessory/BaseSocket$2;->a:Lcom/heytap/accessory/BaseAdapter;

    iget-object v1, p0, Lcom/heytap/accessory/BaseSocket$2;->b:Ljava/lang/String;

    iget-object v2, p0, Lcom/heytap/accessory/BaseSocket$2;->c:Lcom/heytap/accessory/bean/PeerAgent;

    iget-object v3, p0, Lcom/heytap/accessory/BaseSocket$2;->c:Lcom/heytap/accessory/bean/PeerAgent;

    invoke-virtual {v3}, Lcom/heytap/accessory/bean/PeerAgent;->getTransactionId()J

    move-result-wide v3

    new-instance v5, Lcom/heytap/accessory/BaseSocket$ServiceConnectionCallback;

    iget-object v6, p0, Lcom/heytap/accessory/BaseSocket$2;->d:Lcom/heytap/accessory/BaseSocket;

    const/4 v7, 0x0

    invoke-direct {v5, v6, v7}, Lcom/heytap/accessory/BaseSocket$ServiceConnectionCallback;-><init>(Lcom/heytap/accessory/BaseSocket;B)V

    new-instance v6, Lcom/heytap/accessory/BaseSocket$ServiceChannelCallback;

    iget-object v8, p0, Lcom/heytap/accessory/BaseSocket$2;->d:Lcom/heytap/accessory/BaseSocket;

    invoke-direct {v6, v8, v7}, Lcom/heytap/accessory/BaseSocket$ServiceChannelCallback;-><init>(Lcom/heytap/accessory/BaseSocket;B)V

    invoke-virtual/range {v0 .. v6}, Lcom/heytap/accessory/BaseAdapter;->acceptServiceConnection(Ljava/lang/String;Lcom/heytap/accessory/bean/PeerAgent;JLcom/heytap/accessory/api/IServiceConnectionCallback;Lcom/heytap/accessory/api/IServiceChannelCallback;)Landroid/os/Bundle;

    move-result-object v0

    const-string v1, "connectionId"

    .line 327
    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "channelId"

    .line 328
    invoke-virtual {v0, v2}, Landroid/os/Bundle;->getLongArray(Ljava/lang/String;)[J

    move-result-object v0

    .line 329
    invoke-static {}, Lcom/heytap/accessory/BaseSocket;->access$300()Ljava/lang/String;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "Connection accepted successfully. connection Id:"

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, " channel Id count:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-nez v0, :cond_0

    move v4, v7

    goto :goto_0

    .line 331
    :cond_0
    array-length v4, v0

    :goto_0
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 329
    invoke-static {v2, v3}, Lcom/heytap/accessory/a/a;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 333
    iget-object v2, p0, Lcom/heytap/accessory/BaseSocket$2;->d:Lcom/heytap/accessory/BaseSocket;

    invoke-static {v2, v1, v0, v7}, Lcom/heytap/accessory/BaseSocket;->access$600(Lcom/heytap/accessory/BaseSocket;Ljava/lang/String;[JI)V
    :try_end_0
    .catch Lcom/heytap/accessory/bean/GeneralException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v0

    .line 335
    invoke-static {}, Lcom/heytap/accessory/BaseSocket;->access$300()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Failed to accept service connection: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Lcom/heytap/accessory/bean/GeneralException;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/heytap/accessory/a/a;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 336
    iget-object p0, p0, Lcom/heytap/accessory/BaseSocket$2;->d:Lcom/heytap/accessory/BaseSocket;

    invoke-virtual {v0}, Lcom/heytap/accessory/bean/GeneralException;->getErrorCode()I

    move-result v0

    const/4 v1, 0x0

    invoke-static {p0, v1, v1, v0}, Lcom/heytap/accessory/BaseSocket;->access$600(Lcom/heytap/accessory/BaseSocket;Ljava/lang/String;[JI)V

    return-void
.end method
