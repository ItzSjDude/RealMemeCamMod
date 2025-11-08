.class public abstract Lcom/heytap/accessory/BaseSocket;
.super Ljava/lang/Object;
.source "BaseSocket.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/heytap/accessory/BaseSocket$b;,
        Lcom/heytap/accessory/BaseSocket$ServiceConnectionCallback;,
        Lcom/heytap/accessory/BaseSocket$ServiceChannelCallback;,
        Lcom/heytap/accessory/BaseSocket$a;
    }
.end annotation


# static fields
.field public static final CONNECTION_LOST_DEVICE_DETACHED:I = 0x1

.field public static final CONNECTION_LOST_PEER_DISCONNECTED:I = 0x0

.field public static final CONNECTION_LOST_RETRANSMISSION_FAILED:I = 0x2

.field public static final CONNECTION_LOST_UNKNOWN_REASON:I = 0x3

.field private static final DATA_KEY:Ljava/lang/String; = "_"

.field public static final ERROR_CANCELLED:I = 0x4e28

.field public static final ERROR_CONNECTION_ALREADY_CLOSED:I = 0x4e25

.field public static final ERROR_FATAL:I = 0x4e21

.field public static final ERROR_INTERNAL_ERROR:I = 0x4e23

.field public static final ERROR_INVALID_CHANNEL:I = 0x4e26

.field public static final ERROR_INVALID_PARAMS:I = 0x4e22

.field public static final ERROR_WRITE_TIMEDOUT:I = 0x4e27

.field private static final SOCKET_CONNECTED:I = 0x1

.field private static final SOCKET_DISCONNECTED:I = 0x2

.field private static final SOCKET_FORCE_CLOSED:I = 0x3

.field private static final TAG:Ljava/lang/String; = "BaseSocket"


# instance fields
.field private mAdapter:Lcom/heytap/accessory/BaseAdapter;

.field private mAvailableChannelIdList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field

.field private mConnectedPeer:Lcom/heytap/accessory/bean/PeerAgent;

.field private mConnectionId:Ljava/lang/String;

.field private mConnectionStatusCallback:Lcom/heytap/accessory/BaseSocket$a;

.field private mIsConnected:I

.field private mSocketHandler:Lcom/heytap/accessory/BaseSocket$b;

.field private mTrafficReportMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/heytap/accessory/bean/TrafficReport;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method protected constructor <init>(Ljava/lang/String;)V
    .locals 0

    .line 78
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 p1, 0x2

    .line 74
    iput p1, p0, Lcom/heytap/accessory/BaseSocket;->mIsConnected:I

    return-void
.end method

.method static synthetic access$200(Lcom/heytap/accessory/BaseSocket;)Lcom/heytap/accessory/BaseAdapter;
    .locals 0

    .line 50
    iget-object p0, p0, Lcom/heytap/accessory/BaseSocket;->mAdapter:Lcom/heytap/accessory/BaseAdapter;

    return-object p0
.end method

.method static synthetic access$300()Ljava/lang/String;
    .locals 1

    .line 50
    sget-object v0, Lcom/heytap/accessory/BaseSocket;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$400(Lcom/heytap/accessory/BaseSocket;)Lcom/heytap/accessory/BaseSocket$a;
    .locals 0

    .line 50
    iget-object p0, p0, Lcom/heytap/accessory/BaseSocket;->mConnectionStatusCallback:Lcom/heytap/accessory/BaseSocket$a;

    return-object p0
.end method

.method static synthetic access$500(Lcom/heytap/accessory/BaseSocket;)V
    .locals 0

    .line 50
    invoke-direct {p0}, Lcom/heytap/accessory/BaseSocket;->cleanupSocket()V

    return-void
.end method

.method static synthetic access$600(Lcom/heytap/accessory/BaseSocket;Ljava/lang/String;[JI)V
    .locals 0

    .line 50
    invoke-direct {p0, p1, p2, p3}, Lcom/heytap/accessory/BaseSocket;->handleConnectionResponse(Ljava/lang/String;[JI)V

    return-void
.end method

.method static synthetic access$700(Lcom/heytap/accessory/BaseSocket;)Lcom/heytap/accessory/BaseSocket$b;
    .locals 0

    .line 50
    iget-object p0, p0, Lcom/heytap/accessory/BaseSocket;->mSocketHandler:Lcom/heytap/accessory/BaseSocket$b;

    return-object p0
.end method

.method static synthetic access$800(Lcom/heytap/accessory/BaseSocket;JI)V
    .locals 0

    .line 50
    invoke-direct {p0, p1, p2, p3}, Lcom/heytap/accessory/BaseSocket;->handleConnectionLoss(JI)V

    return-void
.end method

.method static synthetic access$900(Lcom/heytap/accessory/BaseSocket;ILandroid/os/Bundle;)V
    .locals 0

    .line 50
    invoke-direct {p0, p1, p2}, Lcom/heytap/accessory/BaseSocket;->handleIncomingData(ILandroid/os/Bundle;)V

    return-void
.end method

.method private cacheTrafficReport(Ljava/lang/String;ILcom/heytap/accessory/bean/TrafficReport;)V
    .locals 1

    .line 352
    iget-object v0, p0, Lcom/heytap/accessory/BaseSocket;->mTrafficReportMap:Ljava/util/Map;

    if-nez v0, :cond_0

    .line 353
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/heytap/accessory/BaseSocket;->mTrafficReportMap:Ljava/util/Map;

    .line 355
    :cond_0
    iget-object p0, p0, Lcom/heytap/accessory/BaseSocket;->mTrafficReportMap:Ljava/util/Map;

    invoke-static {p1, p2}, Lcom/heytap/accessory/BaseSocket;->getDataKey(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object p1

    invoke-interface {p0, p1, p3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method private checkCompressedUnSupport(Lcom/heytap/accessory/bean/PeerAgent;)Z
    .locals 0

    if-eqz p1, :cond_1

    .line 117
    invoke-virtual {p1}, Lcom/heytap/accessory/bean/PeerAgent;->getAccessory()Lcom/heytap/accessory/bean/PeerAccessory;

    move-result-object p0

    if-eqz p0, :cond_1

    .line 118
    invoke-virtual {p1}, Lcom/heytap/accessory/bean/PeerAgent;->getAccessory()Lcom/heytap/accessory/bean/PeerAccessory;

    move-result-object p0

    invoke-virtual {p0}, Lcom/heytap/accessory/bean/PeerAccessory;->supportCompression()Z

    move-result p0

    if-nez p0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    return p0

    :cond_1
    :goto_0
    const/4 p0, 0x1

    return p0
.end method

.method private cleanupSocket()V
    .locals 2

    .line 418
    iget-object v0, p0, Lcom/heytap/accessory/BaseSocket;->mSocketHandler:Lcom/heytap/accessory/BaseSocket$b;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/heytap/accessory/BaseSocket$b;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    .line 419
    iget-object p0, p0, Lcom/heytap/accessory/BaseSocket;->mSocketHandler:Lcom/heytap/accessory/BaseSocket$b;

    invoke-virtual {p0}, Lcom/heytap/accessory/BaseSocket$b;->a()V

    .line 420
    sget-object p0, Lcom/heytap/accessory/BaseSocket;->TAG:Ljava/lang/String;

    const-string v0, "SocketHandler quit"

    invoke-static {p0, v0}, Lcom/heytap/accessory/a/a;->b(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method private static getDataKey(Ljava/lang/String;I)Ljava/lang/String;
    .locals 1

    .line 507
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, "_"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private handleConnectionLoss(JI)V
    .locals 1

    const/16 v0, 0x4e21

    if-ne p3, v0, :cond_0

    const/4 v0, 0x3

    .line 445
    iput v0, p0, Lcom/heytap/accessory/BaseSocket;->mIsConnected:I

    goto :goto_0

    :cond_0
    const/4 v0, 0x2

    .line 447
    iput v0, p0, Lcom/heytap/accessory/BaseSocket;->mIsConnected:I

    .line 450
    :goto_0
    invoke-virtual {p0, p1, p2, p3}, Lcom/heytap/accessory/BaseSocket;->onServiceConnectionLost(JI)V

    .line 451
    invoke-direct {p0, p3}, Lcom/heytap/accessory/BaseSocket;->handleServiceConnectionLostErrorCode(I)V

    .line 452
    invoke-direct {p0}, Lcom/heytap/accessory/BaseSocket;->cleanupSocket()V

    return-void
.end method

.method private handleConnectionResponse(Ljava/lang/String;[JI)V
    .locals 1

    .line 425
    iget-object v0, p0, Lcom/heytap/accessory/BaseSocket;->mConnectionStatusCallback:Lcom/heytap/accessory/BaseSocket$a;

    if-eqz v0, :cond_1

    if-nez p1, :cond_0

    .line 427
    sget-object p1, Lcom/heytap/accessory/BaseSocket;->TAG:Ljava/lang/String;

    const-string p2, "connectionId is null so cleaning up"

    invoke-static {p1, p2}, Lcom/heytap/accessory/a/a;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 428
    iget-object p1, p0, Lcom/heytap/accessory/BaseSocket;->mConnectionStatusCallback:Lcom/heytap/accessory/BaseSocket$a;

    iget-object p2, p0, Lcom/heytap/accessory/BaseSocket;->mConnectedPeer:Lcom/heytap/accessory/bean/PeerAgent;

    invoke-interface {p1, p2, p3}, Lcom/heytap/accessory/BaseSocket$a;->a(Lcom/heytap/accessory/bean/PeerAgent;I)V

    .line 429
    invoke-direct {p0}, Lcom/heytap/accessory/BaseSocket;->cleanupSocket()V

    return-void

    .line 431
    :cond_0
    iput-object p1, p0, Lcom/heytap/accessory/BaseSocket;->mConnectionId:Ljava/lang/String;

    const/4 p1, 0x1

    .line 432
    iput p1, p0, Lcom/heytap/accessory/BaseSocket;->mIsConnected:I

    .line 433
    sget-object p1, Lcom/heytap/accessory/BaseSocket;->TAG:Ljava/lang/String;

    new-instance p3, Ljava/lang/StringBuilder;

    const-string v0, "onServiceConnectionResponse:"

    invoke-direct {p3, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/heytap/accessory/BaseSocket;->mConnectedPeer:Lcom/heytap/accessory/bean/PeerAgent;

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-static {p1, p3}, Lcom/heytap/accessory/a/a;->c(Ljava/lang/String;Ljava/lang/String;)V

    .line 434
    invoke-static {p2}, Lcom/heytap/accessory/b/a;->a([J)Ljava/util/List;

    move-result-object p1

    iput-object p1, p0, Lcom/heytap/accessory/BaseSocket;->mAvailableChannelIdList:Ljava/util/List;

    .line 435
    iget-object p1, p0, Lcom/heytap/accessory/BaseSocket;->mConnectionStatusCallback:Lcom/heytap/accessory/BaseSocket$a;

    iget-object p2, p0, Lcom/heytap/accessory/BaseSocket;->mConnectedPeer:Lcom/heytap/accessory/bean/PeerAgent;

    invoke-interface {p1, p2, p0}, Lcom/heytap/accessory/BaseSocket$a;->a(Lcom/heytap/accessory/bean/PeerAgent;Lcom/heytap/accessory/BaseSocket;)V

    return-void

    .line 438
    :cond_1
    sget-object p0, Lcom/heytap/accessory/BaseSocket;->TAG:Ljava/lang/String;

    const-string p1, "Connection status callback not found! Ignoring response"

    invoke-static {p0, p1}, Lcom/heytap/accessory/a/a;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method private handleIncomingData(ILandroid/os/Bundle;)V
    .locals 5

    .line 479
    iget v0, p0, Lcom/heytap/accessory/BaseSocket;->mIsConnected:I

    const/4 v1, 0x1

    if-eq v0, v1, :cond_0

    .line 480
    sget-object p0, Lcom/heytap/accessory/BaseSocket;->TAG:Ljava/lang/String;

    const-string p1, "Ignoring data, socket is not yet established"

    invoke-static {p0, p1}, Lcom/heytap/accessory/a/a;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_0
    const-string v0, "com.heytap.accessory.adapter.extra.READ_BYTES"

    .line 482
    invoke-virtual {p2, v0}, Landroid/os/Bundle;->getByteArray(Ljava/lang/String;)[B

    move-result-object v0

    if-nez v0, :cond_1

    .line 484
    sget-object p0, Lcom/heytap/accessory/BaseSocket;->TAG:Ljava/lang/String;

    const-string p1, "Failed to reassemble! - null data received!"

    invoke-static {p0, p1}, Lcom/heytap/accessory/a/a;->e(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_1
    const-string v1, "com.heytap.accessory.adapter.extra.READ_LENGHT"

    .line 486
    invoke-virtual {p2, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v1

    const-string v2, "com.heytap.accessory.adapter.extra.READ_OFFSET"

    .line 487
    invoke-virtual {p2, v2}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v2

    .line 488
    invoke-static {p2}, Lcom/heytap/accessory/bean/TrafficReport;->createFromBundle(Landroid/os/Bundle;)Lcom/heytap/accessory/bean/TrafficReport;

    move-result-object p2

    .line 489
    iget-object v3, p0, Lcom/heytap/accessory/BaseSocket;->mConnectionId:Ljava/lang/String;

    invoke-direct {p0, v3, p1, p2}, Lcom/heytap/accessory/BaseSocket;->cacheTrafficReport(Ljava/lang/String;ILcom/heytap/accessory/bean/TrafficReport;)V

    .line 490
    iget-object p2, p0, Lcom/heytap/accessory/BaseSocket;->mAdapter:Lcom/heytap/accessory/BaseAdapter;

    invoke-virtual {p2}, Lcom/heytap/accessory/BaseAdapter;->getPackageName()Ljava/lang/String;

    move-result-object p2

    const-string v3, "com.heytap.accessory"

    invoke-virtual {v3, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-nez p2, :cond_2

    .line 491
    sget-object p2, Lcom/heytap/accessory/BaseSocket;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "handleIncomingData: "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    array-length v4, v0

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, " ["

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, ", "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, "]"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {p2, v3}, Lcom/heytap/accessory/a/a;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 494
    :cond_2
    :try_start_0
    invoke-static {v1}, Lcom/heytap/accessory/b/a/e;->b(I)Lcom/heytap/accessory/b/a/a;

    move-result-object p2

    invoke-virtual {p2}, Lcom/heytap/accessory/b/a/a;->a()[B

    move-result-object p2

    const/4 v3, 0x0

    .line 495
    invoke-static {v0, v2, p2, v3, v1}, Lcom/heytap/accessory/b/i;->a(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 496
    iget-object v1, p0, Lcom/heytap/accessory/BaseSocket;->mConnectionId:Ljava/lang/String;

    invoke-static {v1}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v1

    invoke-virtual {p0, v1, v2, p1, p2}, Lcom/heytap/accessory/BaseSocket;->onReceive(JI[B)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 500
    iget-object p0, p0, Lcom/heytap/accessory/BaseSocket;->mAdapter:Lcom/heytap/accessory/BaseAdapter;

    invoke-virtual {p0, v0}, Lcom/heytap/accessory/BaseAdapter;->recycle([B)V

    return-void

    :catchall_0
    move-exception p1

    goto :goto_0

    :catch_0
    move-exception p1

    .line 498
    :try_start_1
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 500
    iget-object p0, p0, Lcom/heytap/accessory/BaseSocket;->mAdapter:Lcom/heytap/accessory/BaseAdapter;

    invoke-virtual {p0, v0}, Lcom/heytap/accessory/BaseAdapter;->recycle([B)V

    return-void

    :goto_0
    iget-object p0, p0, Lcom/heytap/accessory/BaseSocket;->mAdapter:Lcom/heytap/accessory/BaseAdapter;

    invoke-virtual {p0, v0}, Lcom/heytap/accessory/BaseAdapter;->recycle([B)V

    .line 501
    throw p1
.end method

.method private handleServiceConnectionLostErrorCode(I)V
    .locals 1

    if-eqz p1, :cond_4

    const/4 p0, 0x1

    if-eq p1, p0, :cond_3

    const/4 p0, 0x2

    if-eq p1, p0, :cond_2

    const/4 p0, 0x3

    if-eq p1, p0, :cond_1

    const/16 p0, 0x4e21

    if-eq p1, p0, :cond_0

    .line 473
    sget-object p0, Lcom/heytap/accessory/BaseSocket;->TAG:Ljava/lang/String;

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p1

    const-string v0, "onServiceConnectionLost() error_code: "

    invoke-virtual {v0, p1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Lcom/heytap/accessory/a/a;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    .line 470
    :cond_0
    sget-object p0, Lcom/heytap/accessory/BaseSocket;->TAG:Ljava/lang/String;

    const-string p1, "onServiceConnectionLost() -> ERROR_FATAL"

    invoke-static {p0, p1}, Lcom/heytap/accessory/a/a;->c(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    .line 458
    :cond_1
    sget-object p0, Lcom/heytap/accessory/BaseSocket;->TAG:Ljava/lang/String;

    const-string p1, "onServiceConnectionLost() -> CONNECTION_LOST_UNKNOWN_REASON"

    invoke-static {p0, p1}, Lcom/heytap/accessory/a/a;->c(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    .line 467
    :cond_2
    sget-object p0, Lcom/heytap/accessory/BaseSocket;->TAG:Ljava/lang/String;

    const-string p1, "onServiceConnectionLost() -> CONNECTION_LOST_RETRANSMISSION_FAILED"

    invoke-static {p0, p1}, Lcom/heytap/accessory/a/a;->c(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    .line 464
    :cond_3
    sget-object p0, Lcom/heytap/accessory/BaseSocket;->TAG:Ljava/lang/String;

    const-string p1, "onServiceConnectionLost() -> CONNECTION_LOST_DEVICE_DETACHED"

    invoke-static {p0, p1}, Lcom/heytap/accessory/a/a;->c(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    .line 461
    :cond_4
    sget-object p0, Lcom/heytap/accessory/BaseSocket;->TAG:Ljava/lang/String;

    const-string p1, "onServiceConnectionLost() -> CONNECTION_LOST_PEER_DISCONNECTED"

    invoke-static {p0, p1}, Lcom/heytap/accessory/a/a;->c(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method private requestClose()V
    .locals 3

    .line 387
    :try_start_0
    iget-object v0, p0, Lcom/heytap/accessory/BaseSocket;->mAdapter:Lcom/heytap/accessory/BaseAdapter;

    iget-object v1, p0, Lcom/heytap/accessory/BaseSocket;->mConnectionId:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/heytap/accessory/BaseAdapter;->closeServiceConnection(Ljava/lang/String;)I

    move-result v0

    const/16 v1, 0x4e25

    if-ne v0, v1, :cond_0

    .line 389
    sget-object p0, Lcom/heytap/accessory/BaseSocket;->TAG:Ljava/lang/String;

    const-string v0, "Connection is already closed"

    invoke-static {p0, v0}, Lcom/heytap/accessory/a/a;->c(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_0
    if-nez v0, :cond_1

    .line 391
    sget-object v0, Lcom/heytap/accessory/BaseSocket;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Connection "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object p0, p0, Lcom/heytap/accessory/BaseSocket;->mConnectionId:Ljava/lang/String;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, " close requested successfully"

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Lcom/heytap/accessory/a/a;->c(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Lcom/heytap/accessory/bean/GeneralException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_1
    return-void

    :catch_0
    move-exception p0

    .line 394
    sget-object v0, Lcom/heytap/accessory/BaseSocket;->TAG:Ljava/lang/String;

    const-string v1, "Failed to close connection!"

    invoke-static {v0, v1, p0}, Lcom/heytap/accessory/a/a;->b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    return-void
.end method

.method private sendData(ILcom/heytap/accessory/b/a/a;IZ)V
    .locals 13
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    move-object v0, p0

    const-string v1, "Write failed: Timed out!"

    const-string v2, "Write failed. Attempt to write on invalid channel:"

    if-gez p1, :cond_0

    .line 222
    sget-object v0, Lcom/heytap/accessory/BaseSocket;->TAG:Ljava/lang/String;

    const-string v1, "Send Failed : there is no service channel at the index"

    invoke-static {v0, v1}, Lcom/heytap/accessory/a/a;->e(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    .line 223
    :cond_0
    iget v3, v0, Lcom/heytap/accessory/BaseSocket;->mIsConnected:I

    const/4 v4, 0x1

    if-ne v3, v4, :cond_9

    if-eqz p2, :cond_8

    .line 228
    invoke-virtual {p2}, Lcom/heytap/accessory/b/a/a;->a()[B

    move-result-object v3

    array-length v3, v3

    if-eqz v3, :cond_7

    .line 231
    invoke-virtual {p2}, Lcom/heytap/accessory/b/a/a;->a()[B

    move-result-object v3

    array-length v3, v3

    iget-object v5, v0, Lcom/heytap/accessory/BaseSocket;->mConnectedPeer:Lcom/heytap/accessory/bean/PeerAgent;

    invoke-virtual {v5}, Lcom/heytap/accessory/bean/PeerAgent;->getMaxAllowedDataSize()I

    move-result v5

    if-gt v3, v5, :cond_6

    .line 236
    :try_start_0
    iget v3, v0, Lcom/heytap/accessory/BaseSocket;->mIsConnected:I

    if-ne v3, v4, :cond_5

    .line 240
    iget-object v3, v0, Lcom/heytap/accessory/BaseSocket;->mAdapter:Lcom/heytap/accessory/BaseAdapter;

    iget-object v4, v0, Lcom/heytap/accessory/BaseSocket;->mConnectedPeer:Lcom/heytap/accessory/bean/PeerAgent;

    iget-object v5, v0, Lcom/heytap/accessory/BaseSocket;->mConnectionId:Ljava/lang/String;

    invoke-virtual {p2}, Lcom/heytap/accessory/b/a/a;->a()[B

    move-result-object v7

    const/4 v8, 0x0

    invoke-virtual {p2}, Lcom/heytap/accessory/b/a/a;->c()I

    move-result v9

    invoke-virtual {p2}, Lcom/heytap/accessory/b/a/a;->b()I

    move-result v10

    move v6, p1

    move/from16 v11, p3

    move/from16 v12, p4

    invoke-virtual/range {v3 .. v12}, Lcom/heytap/accessory/BaseAdapter;->send(Lcom/heytap/accessory/bean/PeerAgent;Ljava/lang/String;I[BZIIIZ)I

    move-result v3

    if-eqz v3, :cond_4

    const/16 v4, 0x4e25

    if-eq v3, v4, :cond_3

    const/16 v4, 0x4e26

    if-eq v3, v4, :cond_2

    const/16 v2, 0x4e27

    if-eq v3, v2, :cond_1

    .line 252
    sget-object v0, Lcom/heytap/accessory/BaseSocket;->TAG:Ljava/lang/String;

    const-string v1, "Write failed. status:"

    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/heytap/accessory/a/a;->e(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    .line 255
    :cond_1
    sget-object v2, Lcom/heytap/accessory/BaseSocket;->TAG:Ljava/lang/String;

    invoke-static {v2, v1}, Lcom/heytap/accessory/a/a;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 256
    invoke-virtual {p0}, Lcom/heytap/accessory/BaseSocket;->close()V

    .line 257
    new-instance v0, Ljava/io/IOException;

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 248
    :cond_2
    sget-object v0, Lcom/heytap/accessory/BaseSocket;->TAG:Ljava/lang/String;

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/heytap/accessory/a/a;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 249
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_3
    const/4 v1, 0x2

    .line 243
    iput v1, v0, Lcom/heytap/accessory/BaseSocket;->mIsConnected:I

    .line 244
    sget-object v0, Lcom/heytap/accessory/BaseSocket;->TAG:Ljava/lang/String;

    const-string v1, "Write failed: Connection closed"

    invoke-static {v0, v1}, Lcom/heytap/accessory/a/a;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 245
    new-instance v0, Ljava/io/IOException;

    const-string v1, "Write failed:Connection already closed"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_4
    return-void

    .line 237
    :cond_5
    sget-object v0, Lcom/heytap/accessory/BaseSocket;->TAG:Ljava/lang/String;

    const-string v1, "Data send failed, connection closed!"

    invoke-static {v0, v1}, Lcom/heytap/accessory/a/a;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 238
    new-instance v0, Ljava/io/IOException;

    const-string v1, "Failed to send, connection closed!"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_0
    .catch Lcom/heytap/accessory/bean/GeneralException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    move-exception v0

    .line 261
    sget-object v1, Lcom/heytap/accessory/BaseSocket;->TAG:Ljava/lang/String;

    const-string v2, "Send failed!"

    invoke-static {v1, v2, v0}, Lcom/heytap/accessory/a/a;->b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 262
    new-instance v1, Ljava/io/IOException;

    const-string v2, "Send Failed"

    invoke-direct {v1, v2, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1

    .line 232
    :cond_6
    sget-object v1, Lcom/heytap/accessory/BaseSocket;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Data too long:"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2}, Lcom/heytap/accessory/b/a/a;->a()[B

    move-result-object v3

    array-length v3, v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/heytap/accessory/a/a;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 233
    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Data Too long! size:"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2}, Lcom/heytap/accessory/b/a/a;->a()[B

    move-result-object v3

    array-length v3, v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, " Max allowed Size:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, v0, Lcom/heytap/accessory/BaseSocket;->mConnectedPeer:Lcom/heytap/accessory/bean/PeerAgent;

    invoke-virtual {v0}, Lcom/heytap/accessory/bean/PeerAgent;->getMaxAllowedDataSize()I

    move-result v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, ". check PeerAgent.getMaxAllowedDataSize()"

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 229
    :cond_7
    sget-object v0, Lcom/heytap/accessory/BaseSocket;->TAG:Ljava/lang/String;

    const-string v1, "sendData: data length is 0"

    invoke-static {v0, v1}, Lcom/heytap/accessory/a/a;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 230
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Invalaid data length 0"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 226
    :cond_8
    sget-object v0, Lcom/heytap/accessory/BaseSocket;->TAG:Ljava/lang/String;

    const-string v1, "sendData: data is null"

    invoke-static {v0, v1}, Lcom/heytap/accessory/a/a;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 227
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Invalid data to send:NULL"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 224
    :cond_9
    new-instance v0, Ljava/io/IOException;

    const-string v1, "Send failed. Socket already closed"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private declared-synchronized sendData(I[BIZ)V
    .locals 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    monitor-enter p0

    if-ltz p1, :cond_4

    .line 125
    :try_start_0
    iget v0, p0, Lcom/heytap/accessory/BaseSocket;->mIsConnected:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_3

    if-eqz p2, :cond_2

    .line 131
    array-length v0, p2

    if-eqz v0, :cond_1

    .line 134
    array-length v0, p2

    iget-object v1, p0, Lcom/heytap/accessory/BaseSocket;->mConnectedPeer:Lcom/heytap/accessory/bean/PeerAgent;

    invoke-virtual {v1}, Lcom/heytap/accessory/bean/PeerAgent;->getMaxAllowedDataSize()I

    move-result v1

    if-gt v0, v1, :cond_0

    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object v2, p0

    move v3, p1

    move-object v4, p2

    move v7, p3

    move v8, p4

    .line 138
    invoke-direct/range {v2 .. v8}, Lcom/heytap/accessory/BaseSocket;->sendDataNonFragment(I[BIZIZ)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 140
    monitor-exit p0

    return-void

    .line 135
    :cond_0
    :try_start_1
    sget-object p1, Lcom/heytap/accessory/BaseSocket;->TAG:Ljava/lang/String;

    new-instance p3, Ljava/lang/StringBuilder;

    const-string p4, "Data too long:"

    invoke-direct {p3, p4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    array-length p4, p2

    invoke-virtual {p3, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p4, " , "

    invoke-virtual {p3, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p4, p0, Lcom/heytap/accessory/BaseSocket;->mConnectedPeer:Lcom/heytap/accessory/bean/PeerAgent;

    invoke-virtual {p4}, Lcom/heytap/accessory/bean/PeerAgent;->getMaxAllowedDataSize()I

    move-result p4

    invoke-virtual {p3, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-static {p1, p3}, Lcom/heytap/accessory/a/a;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 136
    new-instance p1, Ljava/lang/IllegalArgumentException;

    new-instance p3, Ljava/lang/StringBuilder;

    const-string p4, "Data Too long! size:"

    invoke-direct {p3, p4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    array-length p2, p2

    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p2, " Max allowed Size:"

    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p2, p0, Lcom/heytap/accessory/BaseSocket;->mConnectedPeer:Lcom/heytap/accessory/bean/PeerAgent;

    invoke-virtual {p2}, Lcom/heytap/accessory/bean/PeerAgent;->getMaxAllowedDataSize()I

    move-result p2

    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p2, ". check PeerAgent.getMaxAllowedDataSize()"

    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 132
    :cond_1
    sget-object p1, Lcom/heytap/accessory/BaseSocket;->TAG:Ljava/lang/String;

    const-string p2, "sendData: data length is 0"

    invoke-static {p1, p2}, Lcom/heytap/accessory/a/a;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 133
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "Invalaid data length 0"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 129
    :cond_2
    sget-object p1, Lcom/heytap/accessory/BaseSocket;->TAG:Ljava/lang/String;

    const-string p2, "sendData: data is null"

    invoke-static {p1, p2}, Lcom/heytap/accessory/a/a;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 130
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "Invalid data to send:NULL"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 126
    :cond_3
    sget-object p1, Lcom/heytap/accessory/BaseSocket;->TAG:Ljava/lang/String;

    const-string p2, "Send failed. Socket already closed"

    invoke-static {p1, p2}, Lcom/heytap/accessory/a/a;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 127
    new-instance p1, Ljava/io/IOException;

    const-string p2, "Send failed. Socket already closed"

    invoke-direct {p1, p2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p1

    :catchall_0
    move-exception p1

    goto :goto_0

    .line 123
    :cond_4
    sget-object p1, Lcom/heytap/accessory/BaseSocket;->TAG:Ljava/lang/String;

    const-string p2, "Send Failed : there is no service channel at the index"

    invoke-static {p1, p2}, Lcom/heytap/accessory/a/a;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 124
    new-instance p1, Ljava/io/IOException;

    const-string p2, "end Failed : there is no service channel at the index"

    invoke-direct {p1, p2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :goto_0
    monitor-exit p0

    throw p1
.end method

.method private sendDataNonFragment(I[BIZIZ)V
    .locals 17
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    move-object/from16 v0, p0

    move-object/from16 v1, p2

    const-string v2, "Write failed: Timed out!"

    const-string v3, "Write failed. Attempt to write on invalid channel:"

    .line 165
    :try_start_0
    iget v4, v0, Lcom/heytap/accessory/BaseSocket;->mIsConnected:I

    const/4 v5, 0x1

    if-ne v4, v5, :cond_5

    .line 169
    invoke-static {}, Lcom/heytap/accessory/b/g;->a()I

    move-result v4

    array-length v5, v1

    add-int/2addr v4, v5

    add-int v4, v4, p3

    invoke-static {}, Lcom/heytap/accessory/b/g;->c()I

    move-result v5

    add-int/2addr v4, v5

    invoke-static {v4}, Lcom/heytap/accessory/b/a/c;->a(I)Lcom/heytap/accessory/b/a/a;

    move-result-object v4

    .line 170
    invoke-static {}, Lcom/heytap/accessory/b/g;->a()I

    move-result v5

    invoke-virtual {v4, v5}, Lcom/heytap/accessory/b/a/a;->a(I)V

    const/4 v5, 0x0

    .line 171
    array-length v6, v1

    invoke-virtual {v4, v1, v5, v6}, Lcom/heytap/accessory/b/a/a;->a([BII)V

    .line 172
    iget-object v7, v0, Lcom/heytap/accessory/BaseSocket;->mAdapter:Lcom/heytap/accessory/BaseAdapter;

    iget-object v8, v0, Lcom/heytap/accessory/BaseSocket;->mConnectedPeer:Lcom/heytap/accessory/bean/PeerAgent;

    iget-object v9, v0, Lcom/heytap/accessory/BaseSocket;->mConnectionId:Ljava/lang/String;

    invoke-virtual {v4}, Lcom/heytap/accessory/b/a/a;->a()[B

    move-result-object v11

    invoke-virtual {v4}, Lcom/heytap/accessory/b/a/a;->c()I

    move-result v13

    invoke-virtual {v4}, Lcom/heytap/accessory/b/a/a;->b()I

    move-result v14

    move/from16 v10, p1

    move/from16 v12, p4

    move/from16 v15, p5

    move/from16 v16, p6

    invoke-virtual/range {v7 .. v16}, Lcom/heytap/accessory/BaseAdapter;->send(Lcom/heytap/accessory/bean/PeerAgent;Ljava/lang/String;I[BZIIIZ)I

    move-result v1

    if-eqz v1, :cond_4

    const/16 v4, 0x4e25

    if-eq v1, v4, :cond_3

    const/16 v4, 0x4e28

    if-ne v1, v4, :cond_0

    .line 181
    sget-object v0, Lcom/heytap/accessory/BaseSocket;->TAG:Ljava/lang/String;

    const-string v1, "write failed: user cancelled"

    invoke-static {v0, v1}, Lcom/heytap/accessory/a/a;->e(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_0
    const/16 v4, 0x4e26

    if-eq v1, v4, :cond_2

    const/16 v3, 0x4e27

    if-eq v1, v3, :cond_1

    return-void

    .line 191
    :cond_1
    sget-object v1, Lcom/heytap/accessory/BaseSocket;->TAG:Ljava/lang/String;

    invoke-static {v1, v2}, Lcom/heytap/accessory/a/a;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 192
    invoke-virtual/range {p0 .. p0}, Lcom/heytap/accessory/BaseSocket;->close()V

    .line 193
    new-instance v0, Ljava/io/IOException;

    invoke-direct {v0, v2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 185
    :cond_2
    sget-object v0, Lcom/heytap/accessory/BaseSocket;->TAG:Ljava/lang/String;

    invoke-static/range {p1 .. p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/heytap/accessory/a/a;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 186
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-static/range {p1 .. p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_3
    const/4 v1, 0x2

    .line 175
    iput v1, v0, Lcom/heytap/accessory/BaseSocket;->mIsConnected:I

    .line 176
    sget-object v0, Lcom/heytap/accessory/BaseSocket;->TAG:Ljava/lang/String;

    const-string v1, "Write failed: Connection closed"

    invoke-static {v0, v1}, Lcom/heytap/accessory/a/a;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 177
    new-instance v0, Ljava/io/IOException;

    const-string v1, "Write failed:Connection already closed"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_4
    return-void

    .line 166
    :cond_5
    sget-object v0, Lcom/heytap/accessory/BaseSocket;->TAG:Ljava/lang/String;

    const-string v1, "Data send failed, connection closed!"

    invoke-static {v0, v1}, Lcom/heytap/accessory/a/a;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 167
    new-instance v0, Ljava/io/IOException;

    const-string v1, "Failed to send, connection closed!"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_0
    .catch Lcom/heytap/accessory/b/a/b; {:try_start_0 .. :try_end_0} :catch_1
    .catch Lcom/heytap/accessory/bean/GeneralException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    move-exception v0

    .line 199
    sget-object v1, Lcom/heytap/accessory/BaseSocket;->TAG:Ljava/lang/String;

    const-string v2, "Send failed!"

    invoke-static {v1, v2, v0}, Lcom/heytap/accessory/a/a;->b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 200
    new-instance v1, Ljava/io/IOException;

    const-string v2, "Send Failed"

    invoke-direct {v1, v2, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1

    :catch_1
    move-exception v0

    .line 197
    sget-object v1, Lcom/heytap/accessory/BaseSocket;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "BufferException: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Lcom/heytap/accessory/b/a/b;->getLocalizedMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/heytap/accessory/a/a;->e(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method private startSocketHandler(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 3

    .line 359
    new-instance v0, Landroid/os/HandlerThread;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Socket:"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "_"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    .line 360
    new-instance v1, Lcom/heytap/accessory/BaseSocket$3;

    invoke-direct {v1, p0}, Lcom/heytap/accessory/BaseSocket$3;-><init>(Lcom/heytap/accessory/BaseSocket;)V

    invoke-virtual {v0, v1}, Landroid/os/HandlerThread;->setUncaughtExceptionHandler(Ljava/lang/Thread$UncaughtExceptionHandler;)V

    .line 373
    sget-object v1, Lcom/heytap/accessory/BaseSocket;->TAG:Ljava/lang/String;

    const-string v2, "socketHandlerThread start"

    invoke-static {v1, v2}, Lcom/heytap/accessory/a/a;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 374
    invoke-virtual {v0}, Landroid/os/HandlerThread;->start()V

    .line 375
    invoke-virtual {v0}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v0

    if-nez v0, :cond_0

    .line 377
    sget-object p0, Lcom/heytap/accessory/BaseSocket;->TAG:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Failed get Looper for Socket: initiator:"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " Peer Id:"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Lcom/heytap/accessory/a/a;->e(Ljava/lang/String;Ljava/lang/String;)V

    const/4 p0, 0x0

    return p0

    .line 380
    :cond_0
    new-instance p1, Lcom/heytap/accessory/BaseSocket$b;

    invoke-direct {p1, p0, v0}, Lcom/heytap/accessory/BaseSocket$b;-><init>(Lcom/heytap/accessory/BaseSocket;Landroid/os/Looper;)V

    iput-object p1, p0, Lcom/heytap/accessory/BaseSocket;->mSocketHandler:Lcom/heytap/accessory/BaseSocket$b;

    const/4 p0, 0x1

    return p0
.end method


# virtual methods
.method acceptServiceConnection(Ljava/lang/String;Lcom/heytap/accessory/bean/PeerAgent;Lcom/heytap/accessory/BaseAdapter;Lcom/heytap/accessory/BaseSocket$a;)V
    .locals 1

    .line 318
    iput-object p2, p0, Lcom/heytap/accessory/BaseSocket;->mConnectedPeer:Lcom/heytap/accessory/bean/PeerAgent;

    .line 319
    iput-object p3, p0, Lcom/heytap/accessory/BaseSocket;->mAdapter:Lcom/heytap/accessory/BaseAdapter;

    .line 320
    iput-object p4, p0, Lcom/heytap/accessory/BaseSocket;->mConnectionStatusCallback:Lcom/heytap/accessory/BaseSocket$a;

    .line 321
    invoke-virtual {p2}, Lcom/heytap/accessory/bean/PeerAgent;->getAgentId()Ljava/lang/String;

    move-result-object p4

    invoke-direct {p0, p1, p4}, Lcom/heytap/accessory/BaseSocket;->startSocketHandler(Ljava/lang/String;Ljava/lang/String;)Z

    .line 322
    iget-object p4, p0, Lcom/heytap/accessory/BaseSocket;->mSocketHandler:Lcom/heytap/accessory/BaseSocket$b;

    new-instance v0, Lcom/heytap/accessory/BaseSocket$2;

    invoke-direct {v0, p0, p3, p1, p2}, Lcom/heytap/accessory/BaseSocket$2;-><init>(Lcom/heytap/accessory/BaseSocket;Lcom/heytap/accessory/BaseAdapter;Ljava/lang/String;Lcom/heytap/accessory/bean/PeerAgent;)V

    invoke-virtual {p4, v0}, Lcom/heytap/accessory/BaseSocket$b;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public cleanupChannel(Ljava/lang/String;I)V
    .locals 1

    .line 279
    :try_start_0
    iget-object p0, p0, Lcom/heytap/accessory/BaseSocket;->mAdapter:Lcom/heytap/accessory/BaseAdapter;

    invoke-virtual {p0, p1, p2}, Lcom/heytap/accessory/BaseAdapter;->cleanupChannel(Ljava/lang/String;I)V
    :try_end_0
    .catch Lcom/heytap/accessory/bean/GeneralException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p0

    .line 281
    sget-object p1, Lcom/heytap/accessory/BaseSocket;->TAG:Ljava/lang/String;

    invoke-static {p2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p2

    const-string v0, "cleanupChannel failed."

    invoke-virtual {v0, p2}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, p2, p0}, Lcom/heytap/accessory/a/a;->b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    return-void
.end method

.method public close()V
    .locals 3

    .line 268
    iget v0, p0, Lcom/heytap/accessory/BaseSocket;->mIsConnected:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    const/4 v0, 0x2

    .line 269
    iput v0, p0, Lcom/heytap/accessory/BaseSocket;->mIsConnected:I

    .line 270
    sget-object v0, Lcom/heytap/accessory/BaseSocket;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/heytap/accessory/BaseSocket;->mAdapter:Lcom/heytap/accessory/BaseAdapter;

    invoke-virtual {v2}, Lcom/heytap/accessory/BaseAdapter;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " requested to close socket for Peer:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/heytap/accessory/BaseSocket;->mConnectedPeer:Lcom/heytap/accessory/bean/PeerAgent;

    invoke-virtual {v2}, Lcom/heytap/accessory/bean/PeerAgent;->getAgentId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/heytap/accessory/a/a;->c(Ljava/lang/String;Ljava/lang/String;)V

    .line 271
    invoke-direct {p0}, Lcom/heytap/accessory/BaseSocket;->requestClose()V

    return-void

    .line 273
    :cond_0
    sget-object p0, Lcom/heytap/accessory/BaseSocket;->TAG:Ljava/lang/String;

    const-string v0, "Connection is already closed"

    invoke-static {p0, v0}, Lcom/heytap/accessory/a/a;->c(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method forceClose()V
    .locals 5

    .line 400
    iget v0, p0, Lcom/heytap/accessory/BaseSocket;->mIsConnected:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    const/4 v0, 0x3

    .line 401
    iput v0, p0, Lcom/heytap/accessory/BaseSocket;->mIsConnected:I

    .line 402
    iget-object v0, p0, Lcom/heytap/accessory/BaseSocket;->mSocketHandler:Lcom/heytap/accessory/BaseSocket$b;

    invoke-virtual {v0, v1}, Lcom/heytap/accessory/BaseSocket$b;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    const/16 v1, 0x4e21

    .line 403
    iput v1, v0, Landroid/os/Message;->arg1:I

    .line 404
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    :try_start_0
    const-string v2, "connectionId"

    .line 407
    iget-object v3, p0, Lcom/heytap/accessory/BaseSocket;->mConnectionId:Ljava/lang/String;

    invoke-static {v3}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v3

    invoke-virtual {v1, v2, v3, v4}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v2

    .line 409
    sget-object v3, Lcom/heytap/accessory/BaseSocket;->TAG:Ljava/lang/String;

    invoke-static {v3, v2}, Lcom/heytap/accessory/a/a;->a(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 411
    :goto_0
    iput-object v1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 412
    iget-object v1, p0, Lcom/heytap/accessory/BaseSocket;->mSocketHandler:Lcom/heytap/accessory/BaseSocket$b;

    invoke-virtual {v1, v0}, Lcom/heytap/accessory/BaseSocket$b;->sendMessage(Landroid/os/Message;)Z

    .line 413
    sget-object v0, Lcom/heytap/accessory/BaseSocket;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Socket:"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object p0, p0, Lcom/heytap/accessory/BaseSocket;->mConnectionId:Ljava/lang/String;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, " has been force closed!"

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Lcom/heytap/accessory/a/a;->c(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public getConnectedPeerAgent()Lcom/heytap/accessory/bean/PeerAgent;
    .locals 0

    .line 92
    iget-object p0, p0, Lcom/heytap/accessory/BaseSocket;->mConnectedPeer:Lcom/heytap/accessory/bean/PeerAgent;

    return-object p0
.end method

.method public getConnectionId()Ljava/lang/String;
    .locals 0

    .line 623
    iget-object p0, p0, Lcom/heytap/accessory/BaseSocket;->mConnectionId:Ljava/lang/String;

    return-object p0
.end method

.method public getServiceChannelId(I)I
    .locals 2

    .line 632
    iget-object v0, p0, Lcom/heytap/accessory/BaseSocket;->mAvailableChannelIdList:Ljava/util/List;

    const/4 v1, -0x1

    if-nez v0, :cond_0

    .line 633
    sget-object p0, Lcom/heytap/accessory/BaseSocket;->TAG:Ljava/lang/String;

    const-string p1, "Failed because Service Profile is null"

    invoke-static {p0, p1}, Lcom/heytap/accessory/a/a;->e(Ljava/lang/String;Ljava/lang/String;)V

    return v1

    :cond_0
    if-ltz p1, :cond_1

    .line 635
    invoke-virtual {p0}, Lcom/heytap/accessory/BaseSocket;->getServiceChannelSize()I

    move-result v0

    if-ge p1, v0, :cond_1

    .line 636
    iget-object p0, p0, Lcom/heytap/accessory/BaseSocket;->mAvailableChannelIdList:Ljava/util/List;

    invoke-interface {p0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Long;

    invoke-virtual {p0}, Ljava/lang/Long;->intValue()I

    move-result p0

    return p0

    .line 638
    :cond_1
    sget-object p0, Lcom/heytap/accessory/BaseSocket;->TAG:Ljava/lang/String;

    const-string p1, "Failed because of wrong index"

    invoke-static {p0, p1}, Lcom/heytap/accessory/a/a;->e(Ljava/lang/String;Ljava/lang/String;)V

    return v1
.end method

.method public getServiceChannelSize()I
    .locals 0

    .line 627
    iget-object p0, p0, Lcom/heytap/accessory/BaseSocket;->mAvailableChannelIdList:Ljava/util/List;

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return p0

    :cond_0
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result p0

    return p0
.end method

.method public getTrafficReport(Ljava/lang/String;I)Lcom/heytap/accessory/bean/TrafficReport;
    .locals 1

    .line 344
    iget-object v0, p0, Lcom/heytap/accessory/BaseSocket;->mTrafficReportMap:Ljava/util/Map;

    if-nez v0, :cond_0

    const/4 p0, 0x0

    return-object p0

    .line 347
    :cond_0
    invoke-static {p1, p2}, Lcom/heytap/accessory/BaseSocket;->getDataKey(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object p1

    .line 348
    iget-object p0, p0, Lcom/heytap/accessory/BaseSocket;->mTrafficReportMap:Ljava/util/Map;

    invoke-interface {p0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/heytap/accessory/bean/TrafficReport;

    return-object p0
.end method

.method initiateServiceconnection(Ljava/lang/String;Lcom/heytap/accessory/bean/PeerAgent;Lcom/heytap/accessory/BaseAdapter;Lcom/heytap/accessory/BaseSocket$a;)V
    .locals 0

    .line 286
    iput-object p2, p0, Lcom/heytap/accessory/BaseSocket;->mConnectedPeer:Lcom/heytap/accessory/bean/PeerAgent;

    .line 287
    iput-object p4, p0, Lcom/heytap/accessory/BaseSocket;->mConnectionStatusCallback:Lcom/heytap/accessory/BaseSocket$a;

    .line 288
    iput-object p3, p0, Lcom/heytap/accessory/BaseSocket;->mAdapter:Lcom/heytap/accessory/BaseAdapter;

    .line 289
    invoke-virtual {p2}, Lcom/heytap/accessory/bean/PeerAgent;->getAgentId()Ljava/lang/String;

    move-result-object p3

    invoke-direct {p0, p1, p3}, Lcom/heytap/accessory/BaseSocket;->startSocketHandler(Ljava/lang/String;Ljava/lang/String;)Z

    .line 290
    iget-object p3, p0, Lcom/heytap/accessory/BaseSocket;->mSocketHandler:Lcom/heytap/accessory/BaseSocket$b;

    new-instance p4, Lcom/heytap/accessory/BaseSocket$1;

    invoke-direct {p4, p0, p1, p2}, Lcom/heytap/accessory/BaseSocket$1;-><init>(Lcom/heytap/accessory/BaseSocket;Ljava/lang/String;Lcom/heytap/accessory/bean/PeerAgent;)V

    invoke-virtual {p3, p4}, Lcom/heytap/accessory/BaseSocket$b;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public isConnected()Z
    .locals 1

    .line 88
    iget p0, p0, Lcom/heytap/accessory/BaseSocket;->mIsConnected:I

    const/4 v0, 0x1

    if-ne p0, v0, :cond_0

    return v0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public abstract onError(ILjava/lang/String;I)V
.end method

.method public abstract onReceive(JI[B)V
.end method

.method protected abstract onServiceConnectionLost(JI)V
.end method

.method public declared-synchronized secureSend(I[B)V
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    monitor-enter p0

    if-gez p1, :cond_0

    .line 144
    :try_start_0
    sget-object p1, Lcom/heytap/accessory/BaseSocket;->TAG:Ljava/lang/String;

    const-string p2, "Send Failed : there is no service channel at the index"

    invoke-static {p1, p2}, Lcom/heytap/accessory/a/a;->e(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    .line 145
    :cond_0
    :try_start_1
    iget v0, p0, Lcom/heytap/accessory/BaseSocket;->mIsConnected:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_4

    if-eqz p2, :cond_3

    .line 150
    array-length v0, p2

    if-eqz v0, :cond_2

    .line 153
    array-length v0, p2

    iget-object v1, p0, Lcom/heytap/accessory/BaseSocket;->mConnectedPeer:Lcom/heytap/accessory/bean/PeerAgent;

    invoke-virtual {v1}, Lcom/heytap/accessory/bean/PeerAgent;->getMaxAllowedDataSize()I

    move-result v1

    if-gt v0, v1, :cond_1

    .line 157
    sget-object v0, Lcom/heytap/accessory/BaseSocket;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Sending data:"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    array-length v2, p2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " bytes"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/heytap/accessory/a/a;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 158
    invoke-virtual {p0}, Lcom/heytap/accessory/BaseSocket;->getConnectedPeerAgent()Lcom/heytap/accessory/bean/PeerAgent;

    move-result-object v0

    invoke-virtual {v0}, Lcom/heytap/accessory/bean/PeerAgent;->getAccessory()Lcom/heytap/accessory/bean/PeerAccessory;

    move-result-object v0

    invoke-virtual {v0}, Lcom/heytap/accessory/bean/PeerAccessory;->getEncryptionPaddingLength()I

    move-result v4

    const/4 v5, 0x1

    const/4 v6, 0x3

    const/4 v7, 0x0

    move-object v1, p0

    move v2, p1

    move-object v3, p2

    invoke-direct/range {v1 .. v7}, Lcom/heytap/accessory/BaseSocket;->sendDataNonFragment(I[BIZIZ)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 160
    monitor-exit p0

    return-void

    .line 154
    :cond_1
    :try_start_2
    sget-object p1, Lcom/heytap/accessory/BaseSocket;->TAG:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "SecureSend:Data too long:"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    array-length v1, p2

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/heytap/accessory/a/a;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 155
    new-instance p1, Ljava/lang/IllegalArgumentException;

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Secure send:Data Too long! size:"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    array-length p2, p2

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p2, " Max allowed Size:"

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p2, p0, Lcom/heytap/accessory/BaseSocket;->mConnectedPeer:Lcom/heytap/accessory/bean/PeerAgent;

    invoke-virtual {p2}, Lcom/heytap/accessory/bean/PeerAgent;->getMaxAllowedDataSize()I

    move-result p2

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p2, ". check PeerAgent.getMaxAllowedDataSize()"

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 151
    :cond_2
    sget-object p1, Lcom/heytap/accessory/BaseSocket;->TAG:Ljava/lang/String;

    const-string p2, "SecureSend: data length is 0"

    invoke-static {p1, p2}, Lcom/heytap/accessory/a/a;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 152
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "Invalaid data length 0"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 148
    :cond_3
    sget-object p1, Lcom/heytap/accessory/BaseSocket;->TAG:Ljava/lang/String;

    const-string p2, "secureSend: data is null"

    invoke-static {p1, p2}, Lcom/heytap/accessory/a/a;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 149
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "Invalid data to send:NULL"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 146
    :cond_4
    new-instance p1, Ljava/io/IOException;

    const-string p2, "Secure Send failed. Socket already closed"

    invoke-direct {p1, p2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public send(ILcom/heytap/accessory/b/a/a;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x3

    const/4 v1, 0x0

    .line 205
    invoke-direct {p0, p1, p2, v0, v1}, Lcom/heytap/accessory/BaseSocket;->sendData(ILcom/heytap/accessory/b/a/a;IZ)V

    return-void
.end method

.method public send(I[B)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x3

    const/4 v1, 0x0

    .line 96
    invoke-direct {p0, p1, p2, v0, v1}, Lcom/heytap/accessory/BaseSocket;->sendData(I[BIZ)V

    return-void
.end method

.method public sendAlign(ILcom/heytap/accessory/b/a/a;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x3

    const/4 v1, 0x1

    .line 217
    invoke-direct {p0, p1, p2, v0, v1}, Lcom/heytap/accessory/BaseSocket;->sendData(ILcom/heytap/accessory/b/a/a;IZ)V

    return-void
.end method

.method public sendAlign(I[B)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x1

    .line 113
    invoke-direct {p0, p1, p2, v0, v0}, Lcom/heytap/accessory/BaseSocket;->sendData(I[BIZ)V

    return-void
.end method

.method public sendCompressed(ILcom/heytap/accessory/b/a/a;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 213
    invoke-direct {p0, p1, p2, v0, v1}, Lcom/heytap/accessory/BaseSocket;->sendData(ILcom/heytap/accessory/b/a/a;IZ)V

    return-void
.end method

.method public sendCompressed(I[B)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/heytap/accessory/bean/UnSupportException;
        }
    .end annotation

    .line 104
    invoke-virtual {p0}, Lcom/heytap/accessory/BaseSocket;->getConnectedPeerAgent()Lcom/heytap/accessory/bean/PeerAgent;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/heytap/accessory/BaseSocket;->checkCompressedUnSupport(Lcom/heytap/accessory/bean/PeerAgent;)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 108
    invoke-direct {p0, p1, p2, v0, v1}, Lcom/heytap/accessory/BaseSocket;->sendData(I[BIZ)V

    return-void

    .line 105
    :cond_0
    sget-object p0, Lcom/heytap/accessory/BaseSocket;->TAG:Ljava/lang/String;

    const-string p1, "current peer is note supported compression"

    invoke-static {p0, p1}, Lcom/heytap/accessory/a/a;->c(Ljava/lang/String;Ljava/lang/String;)V

    .line 106
    new-instance p0, Lcom/heytap/accessory/bean/UnSupportException;

    const-string p1, "the peer agent doesn\'t support the compression feature, please check"

    invoke-direct {p0, p1}, Lcom/heytap/accessory/bean/UnSupportException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public sendUncompressed(ILcom/heytap/accessory/b/a/a;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x2

    const/4 v1, 0x0

    .line 209
    invoke-direct {p0, p1, p2, v0, v1}, Lcom/heytap/accessory/BaseSocket;->sendData(ILcom/heytap/accessory/b/a/a;IZ)V

    return-void
.end method

.method public sendUncompressed(I[B)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x2

    const/4 v1, 0x0

    .line 100
    invoke-direct {p0, p1, p2, v0, v1}, Lcom/heytap/accessory/BaseSocket;->sendData(I[BIZ)V

    return-void
.end method
