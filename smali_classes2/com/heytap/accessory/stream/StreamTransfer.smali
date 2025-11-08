.class public Lcom/heytap/accessory/stream/StreamTransfer;
.super Ljava/lang/Object;
.source "StreamTransfer.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/heytap/accessory/stream/StreamTransfer$c;,
        Lcom/heytap/accessory/stream/StreamTransfer$a;,
        Lcom/heytap/accessory/stream/StreamTransfer$EventListener;,
        Lcom/heytap/accessory/stream/StreamTransfer$b;
    }
.end annotation


# static fields
.field public static final ACTION_STREAM_TRANSFER_REQUESTED:Ljava/lang/String; = "com.heytap.accessory.streamconnection"

.field public static final ERROR_CANCEL_ACC_SLEEPING:I = 0x11

.field public static final ERROR_CHANNEL_IO:I = 0x1

.field public static final ERROR_COMMAND_DROPPED:I = 0x3

.field public static final ERROR_CONNECTION_LOST:I = 0x5

.field public static final ERROR_FATAL:I = 0x4e21

.field public static final ERROR_FILE_IO:I = 0x2

.field public static final ERROR_NONE:I = 0x0

.field public static final ERROR_NOT_SUPPORTED:I = 0xc

.field public static final ERROR_PEER_AGENT_BUSY:I = 0x8

.field public static final ERROR_PEER_AGENT_NO_RESPONSE:I = 0x4

.field public static final ERROR_PEER_AGENT_REJECTED:I = 0x9

.field public static final ERROR_RECEIVER_MEMORY_LACKING:I = 0xf

.field public static final ERROR_RECEIVER_WAIT_TILL_TIMEOUT:I = 0x10

.field public static final ERROR_REQUEST_NOT_QUEUED:I = -0x1

.field public static final ERROR_SPACE_NOT_AVAILABLE:I = 0xb

.field public static final ERROR_TRANSACTION_NOT_FOUND:I = 0xd

.field public static final RECEIVE_PFD:Ljava/lang/String; = "receivePfd"

.field private static final ST_CANCEL_TRANS_ID:I = -0x1

.field private static final ST_DEFAULT_CONNECTION_ID:I = 0x0

.field private static final ST_DEFAULT_TRANS_ID:I = 0x0

.field private static final TAG:Ljava/lang/String; = "StreamTransfer"


# instance fields
.field private mAgentName:Ljava/lang/String;

.field private mCallingAgent:Ljava/lang/Object;

.field private mCallingAgentInfo:Lcom/heytap/accessory/stream/b/a;

.field private mConnectionMap:Ljava/util/concurrent/ConcurrentHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentHashMap<",
            "Ljava/lang/Long;",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field private mContext:Landroid/content/Context;

.field private mEventListener:Lcom/heytap/accessory/stream/StreamTransfer$EventListener;

.field private mHandler:Lcom/heytap/accessory/stream/StreamTransfer$c;

.field private mLocalCallback:Lcom/heytap/accessory/stream/StreamTransfer$b;

.field private mStreamTransferHandlerThread:Landroid/os/HandlerThread;

.field private mTransactionsMap:Ljava/util/concurrent/ConcurrentHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentHashMap<",
            "Ljava/lang/Long;",
            "Ljava/util/concurrent/ConcurrentHashMap<",
            "Ljava/lang/Integer;",
            "Lcom/heytap/accessory/stream/b/a$a;",
            ">;>;"
        }
    .end annotation
.end field

.field private mTransferRequestMap:Ljava/util/concurrent/ConcurrentHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentHashMap<",
            "Ljava/lang/Long;",
            "Ljava/util/concurrent/ConcurrentHashMap<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Boolean;",
            ">;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/heytap/accessory/BaseAgent;Lcom/heytap/accessory/stream/StreamTransfer$EventListener;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/heytap/accessory/bean/SdkUnsupportedException;
        }
    .end annotation

    .line 152
    invoke-virtual {p1}, Lcom/heytap/accessory/BaseAgent;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-direct {p0, p1, v0, p2}, Lcom/heytap/accessory/stream/StreamTransfer;-><init>(Ljava/lang/Object;Landroid/content/Context;Lcom/heytap/accessory/stream/StreamTransfer$EventListener;)V

    return-void
.end method

.method public constructor <init>(Lcom/heytap/accessory/BaseJobAgent;Lcom/heytap/accessory/stream/StreamTransfer$EventListener;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/heytap/accessory/bean/SdkUnsupportedException;
        }
    .end annotation

    .line 156
    invoke-virtual {p1}, Lcom/heytap/accessory/BaseJobAgent;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-direct {p0, p1, v0, p2}, Lcom/heytap/accessory/stream/StreamTransfer;-><init>(Ljava/lang/Object;Landroid/content/Context;Lcom/heytap/accessory/stream/StreamTransfer$EventListener;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/Object;Landroid/content/Context;Lcom/heytap/accessory/stream/StreamTransfer$EventListener;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/heytap/accessory/bean/SdkUnsupportedException;
        }
    .end annotation

    .line 159
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 78
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object v0, p0, Lcom/heytap/accessory/stream/StreamTransfer;->mTransactionsMap:Ljava/util/concurrent/ConcurrentHashMap;

    .line 79
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object v0, p0, Lcom/heytap/accessory/stream/StreamTransfer;->mConnectionMap:Ljava/util/concurrent/ConcurrentHashMap;

    .line 80
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object v0, p0, Lcom/heytap/accessory/stream/StreamTransfer;->mTransferRequestMap:Ljava/util/concurrent/ConcurrentHashMap;

    .line 82
    new-instance v0, Lcom/heytap/accessory/stream/StreamTransfer$1;

    invoke-direct {v0, p0}, Lcom/heytap/accessory/stream/StreamTransfer$1;-><init>(Lcom/heytap/accessory/stream/StreamTransfer;)V

    iput-object v0, p0, Lcom/heytap/accessory/stream/StreamTransfer;->mLocalCallback:Lcom/heytap/accessory/stream/StreamTransfer$b;

    if-eqz p1, :cond_1

    if-eqz p3, :cond_1

    .line 161
    iput-object p1, p0, Lcom/heytap/accessory/stream/StreamTransfer;->mCallingAgent:Ljava/lang/Object;

    .line 162
    iput-object p2, p0, Lcom/heytap/accessory/stream/StreamTransfer;->mContext:Landroid/content/Context;

    .line 163
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/heytap/accessory/stream/StreamTransfer;->mAgentName:Ljava/lang/String;

    .line 164
    new-instance p1, Ljava/lang/StringBuilder;

    const-string p2, "new StreamTransfer: "

    invoke-direct {p1, p2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object p2, p0, Lcom/heytap/accessory/stream/StreamTransfer;->mAgentName:Ljava/lang/String;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, ", hashcode:"

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/Object;->hashCode()I

    move-result p2

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p2, "StreamTransfer"

    invoke-static {p2, p1}, Lcom/heytap/accessory/a/a;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 165
    iput-object p3, p0, Lcom/heytap/accessory/stream/StreamTransfer;->mEventListener:Lcom/heytap/accessory/stream/StreamTransfer$EventListener;

    .line 166
    iget-object p1, p0, Lcom/heytap/accessory/stream/StreamTransfer;->mContext:Landroid/content/Context;

    invoke-static {p1}, Lcom/heytap/accessory/stream/StreamInitializer;->initialize(Landroid/content/Context;)V

    .line 167
    invoke-direct {p0}, Lcom/heytap/accessory/stream/StreamTransfer;->register()Z

    move-result p1

    if-nez p1, :cond_0

    const-string p1, "Agent already registered"

    .line 168
    invoke-static {p2, p1}, Lcom/heytap/accessory/a/a;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 169
    iget-object p1, p0, Lcom/heytap/accessory/stream/StreamTransfer;->mAgentName:Ljava/lang/String;

    invoke-static {p1}, Lcom/heytap/accessory/stream/a;->b(Ljava/lang/String;)Lcom/heytap/accessory/stream/b/a;

    move-result-object p1

    iput-object p1, p0, Lcom/heytap/accessory/stream/StreamTransfer;->mCallingAgentInfo:Lcom/heytap/accessory/stream/b/a;

    .line 170
    iget-object p1, p0, Lcom/heytap/accessory/stream/StreamTransfer;->mCallingAgentInfo:Lcom/heytap/accessory/stream/b/a;

    if-eqz p1, :cond_0

    .line 171
    invoke-virtual {p1}, Lcom/heytap/accessory/stream/b/a;->c()Landroid/os/HandlerThread;

    move-result-object p1

    iput-object p1, p0, Lcom/heytap/accessory/stream/StreamTransfer;->mStreamTransferHandlerThread:Landroid/os/HandlerThread;

    .line 172
    iget-object p1, p0, Lcom/heytap/accessory/stream/StreamTransfer;->mCallingAgentInfo:Lcom/heytap/accessory/stream/b/a;

    invoke-virtual {p1}, Lcom/heytap/accessory/stream/b/a;->d()Landroid/os/Handler;

    move-result-object p1

    check-cast p1, Lcom/heytap/accessory/stream/StreamTransfer$c;

    iput-object p1, p0, Lcom/heytap/accessory/stream/StreamTransfer;->mHandler:Lcom/heytap/accessory/stream/StreamTransfer$c;

    .line 173
    iget-object p1, p0, Lcom/heytap/accessory/stream/StreamTransfer;->mCallingAgentInfo:Lcom/heytap/accessory/stream/b/a;

    invoke-virtual {p1}, Lcom/heytap/accessory/stream/b/a;->e()Ljava/util/concurrent/ConcurrentHashMap;

    move-result-object p1

    iput-object p1, p0, Lcom/heytap/accessory/stream/StreamTransfer;->mTransactionsMap:Ljava/util/concurrent/ConcurrentHashMap;

    .line 174
    iget-object p1, p0, Lcom/heytap/accessory/stream/StreamTransfer;->mCallingAgentInfo:Lcom/heytap/accessory/stream/b/a;

    iget-object p2, p0, Lcom/heytap/accessory/stream/StreamTransfer;->mEventListener:Lcom/heytap/accessory/stream/StreamTransfer$EventListener;

    invoke-virtual {p1, p2}, Lcom/heytap/accessory/stream/b/a;->a(Lcom/heytap/accessory/stream/StreamTransfer$EventListener;)V

    .line 175
    iget-object p1, p0, Lcom/heytap/accessory/stream/StreamTransfer;->mCallingAgentInfo:Lcom/heytap/accessory/stream/b/a;

    iget-object p0, p0, Lcom/heytap/accessory/stream/StreamTransfer;->mLocalCallback:Lcom/heytap/accessory/stream/StreamTransfer$b;

    invoke-virtual {p1, p0}, Lcom/heytap/accessory/stream/b/a;->a(Lcom/heytap/accessory/stream/StreamTransfer$b;)V

    :cond_0
    return-void

    .line 179
    :cond_1
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "StreamEventCallback parameter cannot be null"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method static synthetic access$000(Lcom/heytap/accessory/stream/StreamTransfer;)Ljava/util/concurrent/ConcurrentHashMap;
    .locals 0

    .line 46
    iget-object p0, p0, Lcom/heytap/accessory/stream/StreamTransfer;->mTransactionsMap:Ljava/util/concurrent/ConcurrentHashMap;

    return-object p0
.end method

.method static synthetic access$100(Lcom/heytap/accessory/stream/StreamTransfer;)Lcom/heytap/accessory/stream/StreamTransfer$EventListener;
    .locals 0

    .line 46
    iget-object p0, p0, Lcom/heytap/accessory/stream/StreamTransfer;->mEventListener:Lcom/heytap/accessory/stream/StreamTransfer$EventListener;

    return-object p0
.end method

.method static synthetic access$1000(Lcom/heytap/accessory/stream/StreamTransfer;)Lcom/heytap/accessory/stream/StreamTransfer$b;
    .locals 0

    .line 46
    iget-object p0, p0, Lcom/heytap/accessory/stream/StreamTransfer;->mLocalCallback:Lcom/heytap/accessory/stream/StreamTransfer$b;

    return-object p0
.end method

.method static synthetic access$1100(Lcom/heytap/accessory/stream/StreamTransfer;)Landroid/content/Context;
    .locals 0

    .line 46
    iget-object p0, p0, Lcom/heytap/accessory/stream/StreamTransfer;->mContext:Landroid/content/Context;

    return-object p0
.end method

.method static synthetic access$1200(Lcom/heytap/accessory/stream/StreamTransfer;)Ljava/lang/String;
    .locals 0

    .line 46
    iget-object p0, p0, Lcom/heytap/accessory/stream/StreamTransfer;->mAgentName:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic access$1300(Lcom/heytap/accessory/stream/StreamTransfer;JIZ)V
    .locals 0

    .line 46
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/heytap/accessory/stream/StreamTransfer;->putTransactionRequest(JIZ)V

    return-void
.end method

.method static synthetic access$1400(Lcom/heytap/accessory/stream/StreamTransfer;)Ljava/util/concurrent/ConcurrentHashMap;
    .locals 0

    .line 46
    iget-object p0, p0, Lcom/heytap/accessory/stream/StreamTransfer;->mConnectionMap:Ljava/util/concurrent/ConcurrentHashMap;

    return-object p0
.end method

.method static synthetic access$200(Lcom/heytap/accessory/stream/StreamTransfer;I)V
    .locals 0

    .line 46
    invoke-direct {p0, p1}, Lcom/heytap/accessory/stream/StreamTransfer;->handleOnTransferCompletedErrorCode(I)V

    return-void
.end method

.method static synthetic access$300(Lcom/heytap/accessory/stream/StreamTransfer;JI)V
    .locals 0

    .line 46
    invoke-direct {p0, p1, p2, p3}, Lcom/heytap/accessory/stream/StreamTransfer;->removeTransaction(JI)V

    return-void
.end method

.method static synthetic access$400(Lcom/heytap/accessory/stream/StreamTransfer;JI)V
    .locals 0

    .line 46
    invoke-direct {p0, p1, p2, p3}, Lcom/heytap/accessory/stream/StreamTransfer;->removeTransactionRequest(JI)V

    return-void
.end method

.method static synthetic access$500(Lcom/heytap/accessory/stream/StreamTransfer;JI)Z
    .locals 0

    .line 46
    invoke-direct {p0, p1, p2, p3}, Lcom/heytap/accessory/stream/StreamTransfer;->getTransactionRequestState(JI)Z

    move-result p0

    return p0
.end method

.method static synthetic access$600(Lcom/heytap/accessory/stream/StreamTransfer;JI)Z
    .locals 0

    .line 46
    invoke-direct {p0, p1, p2, p3}, Lcom/heytap/accessory/stream/StreamTransfer;->containsTransactionRequestKey(JI)Z

    move-result p0

    return p0
.end method

.method static synthetic access$700(Lcom/heytap/accessory/stream/StreamTransfer;JI)Z
    .locals 0

    .line 46
    invoke-direct {p0, p1, p2, p3}, Lcom/heytap/accessory/stream/StreamTransfer;->containsTransactionKey(JI)Z

    move-result p0

    return p0
.end method

.method static synthetic access$800(Lcom/heytap/accessory/stream/StreamTransfer;I)V
    .locals 0

    .line 46
    invoke-direct {p0, p1}, Lcom/heytap/accessory/stream/StreamTransfer;->removeTransactionByTransId(I)V

    return-void
.end method

.method static synthetic access$900(Lcom/heytap/accessory/stream/StreamTransfer;I)V
    .locals 0

    .line 46
    invoke-direct {p0, p1}, Lcom/heytap/accessory/stream/StreamTransfer;->handleOnCancelAllCompletedErrorCode(I)V

    return-void
.end method

.method private checkReceiveParams(JI)Z
    .locals 0

    .line 570
    invoke-direct {p0, p1, p2, p3}, Lcom/heytap/accessory/stream/StreamTransfer;->containsTransactionKey(JI)Z

    move-result p0

    if-eqz p0, :cond_0

    const-string p0, "StreamTransfer"

    const-string p1, "transactionId already exist"

    .line 571
    invoke-static {p0, p1}, Lcom/heytap/accessory/a/a;->b(Ljava/lang/String;Ljava/lang/String;)V

    const/4 p0, 0x0

    goto :goto_0

    :cond_0
    const/4 p0, 0x1

    :goto_0
    return p0
.end method

.method private checkStreamUnSupport(Lcom/heytap/accessory/bean/PeerAgent;)Z
    .locals 0

    if-eqz p1, :cond_1

    .line 281
    invoke-virtual {p1}, Lcom/heytap/accessory/bean/PeerAgent;->getAccessory()Lcom/heytap/accessory/bean/PeerAccessory;

    move-result-object p0

    if-eqz p0, :cond_1

    .line 282
    invoke-virtual {p1}, Lcom/heytap/accessory/bean/PeerAgent;->getAccessory()Lcom/heytap/accessory/bean/PeerAccessory;

    move-result-object p0

    invoke-virtual {p0}, Lcom/heytap/accessory/bean/PeerAccessory;->supportStream()Z

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

.method private declared-synchronized containsTransactionKey(JI)Z
    .locals 2

    monitor-enter p0

    const/4 v0, 0x0

    .line 732
    :try_start_0
    iget-object v1, p0, Lcom/heytap/accessory/stream/StreamTransfer;->mTransactionsMap:Ljava/util/concurrent/ConcurrentHashMap;

    if-eqz v1, :cond_0

    .line 733
    iget-object v1, p0, Lcom/heytap/accessory/stream/StreamTransfer;->mTransactionsMap:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/concurrent/ConcurrentHashMap;

    if-eqz p1, :cond_0

    .line 735
    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/util/concurrent/ConcurrentHashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 738
    :cond_0
    monitor-exit p0

    return v0

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method private declared-synchronized containsTransactionRequestKey(JI)Z
    .locals 4

    monitor-enter p0

    const/4 v0, 0x0

    .line 778
    :try_start_0
    iget-object v1, p0, Lcom/heytap/accessory/stream/StreamTransfer;->mTransferRequestMap:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/concurrent/ConcurrentHashMap;

    if-eqz v1, :cond_0

    .line 780
    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/util/concurrent/ConcurrentHashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    goto :goto_0

    .line 782
    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "StreamTransfer"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Ljava/lang/Object;->hashCode()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "mTransferRequestMap not contains connectionId:"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string p1, ",transactionId:"

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Lcom/heytap/accessory/a/a;->e(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 784
    :goto_0
    monitor-exit p0

    return v0

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method private declared-synchronized getTransaction(JI)Lcom/heytap/accessory/stream/b/a$a;
    .locals 2

    monitor-enter p0

    const/4 v0, 0x0

    .line 699
    :try_start_0
    iget-object v1, p0, Lcom/heytap/accessory/stream/StreamTransfer;->mTransactionsMap:Ljava/util/concurrent/ConcurrentHashMap;

    if-eqz v1, :cond_0

    .line 700
    iget-object v1, p0, Lcom/heytap/accessory/stream/StreamTransfer;->mTransactionsMap:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/concurrent/ConcurrentHashMap;

    if-eqz p1, :cond_0

    .line 702
    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    move-object v0, p1

    check-cast v0, Lcom/heytap/accessory/stream/b/a$a;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 705
    :cond_0
    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method private declared-synchronized getTransactionRequestState(JI)Z
    .locals 1

    monitor-enter p0

    .line 753
    :try_start_0
    iget-object v0, p0, Lcom/heytap/accessory/stream/StreamTransfer;->mTransferRequestMap:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/concurrent/ConcurrentHashMap;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/4 p2, 0x0

    if-nez p1, :cond_0

    .line 755
    monitor-exit p0

    return p2

    .line 757
    :cond_0
    :try_start_1
    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p3

    invoke-virtual {p1, p3}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-eqz p1, :cond_1

    const/4 p1, 0x1

    monitor-exit p0

    return p1

    .line 758
    :cond_1
    monitor-exit p0

    return p2

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method private handleOnCancelAllCompletedErrorCode(I)V
    .locals 1

    const/16 p0, 0xc

    const-string v0, "StreamTransfer"

    if-eq p1, p0, :cond_2

    const/16 p0, 0xd

    if-eq p1, p0, :cond_1

    const/16 p0, 0x11

    if-eq p1, p0, :cond_0

    .line 637
    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p0

    const-string p1, "onCancelAllCompleted() error_code: "

    invoke-virtual {p1, p0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Lcom/heytap/accessory/a/a;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_0
    const-string p0, "onCancelAllCompleted() -> ERROR_CANCEL_ACC_SLEEPING"

    .line 634
    invoke-static {v0, p0}, Lcom/heytap/accessory/a/a;->c(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_1
    const-string p0, "onCancelAllCompleted() -> ERROR_TRANSACTION_NOT_FOUND"

    .line 631
    invoke-static {v0, p0}, Lcom/heytap/accessory/a/a;->c(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_2
    const-string p0, "onCancelAllCompleted() -> ERROR_NOT_SUPPORTED"

    .line 628
    invoke-static {v0, p0}, Lcom/heytap/accessory/a/a;->c(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method private handleOnTransferCompletedErrorCode(I)V
    .locals 1

    const/16 p0, 0x8

    const-string v0, "StreamTransfer"

    if-eq p1, p0, :cond_5

    const/16 p0, 0x9

    if-eq p1, p0, :cond_4

    const/16 p0, 0xb

    if-eq p1, p0, :cond_3

    const/16 p0, 0x4e21

    if-eq p1, p0, :cond_2

    const/16 p0, 0xf

    if-eq p1, p0, :cond_1

    const/16 p0, 0x10

    if-eq p1, p0, :cond_0

    packed-switch p1, :pswitch_data_0

    .line 620
    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p0

    const-string p1, "onTransferCompleted() error_code: "

    invoke-virtual {p1, p0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Lcom/heytap/accessory/a/a;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :pswitch_0
    const-string p0, "onTransferCompleted() -> ERROR_CONNECTION_LOST"

    .line 599
    invoke-static {v0, p0}, Lcom/heytap/accessory/a/a;->c(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :pswitch_1
    const-string p0, "onTransferCompleted() -> ERROR_PEER_AGENT_NO_RESPONSE"

    .line 596
    invoke-static {v0, p0}, Lcom/heytap/accessory/a/a;->c(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :pswitch_2
    const-string p0, "onTransferCompleted() -> ERROR_COMMAND_DROPPED"

    .line 593
    invoke-static {v0, p0}, Lcom/heytap/accessory/a/a;->c(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :pswitch_3
    const-string p0, "onTransferCompleted() -> ERROR_FILE_IO"

    .line 590
    invoke-static {v0, p0}, Lcom/heytap/accessory/a/a;->c(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :pswitch_4
    const-string p0, "onTransferCompleted() -> ERROR_CHANNEL_IO"

    .line 587
    invoke-static {v0, p0}, Lcom/heytap/accessory/a/a;->c(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :pswitch_5
    const-string p0, "onTransferCompleted() -> ERROR_NONE"

    .line 584
    invoke-static {v0, p0}, Lcom/heytap/accessory/a/a;->c(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :pswitch_6
    const-string p0, "onTransferCompleted() -> ERROR_REQUEST_NOT_QUEUED"

    .line 581
    invoke-static {v0, p0}, Lcom/heytap/accessory/a/a;->c(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_0
    const-string p0, "onTransferCompleted() -> ERROR_RECEIVER_WAIT_TILL_TIMEOUT"

    .line 617
    invoke-static {v0, p0}, Lcom/heytap/accessory/a/a;->c(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_1
    const-string p0, "onTransferCompleted() -> ERROR_RECEIVER_MEMORY_LACKING"

    .line 614
    invoke-static {v0, p0}, Lcom/heytap/accessory/a/a;->c(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_2
    const-string p0, "onTransferCompleted() -> ERROR_FATAL"

    .line 611
    invoke-static {v0, p0}, Lcom/heytap/accessory/a/a;->c(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_3
    const-string p0, "onTransferCompleted() -> ERROR_SPACE_NOT_AVAILABLE"

    .line 608
    invoke-static {v0, p0}, Lcom/heytap/accessory/a/a;->c(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_4
    const-string p0, "onTransferCompleted() -> ERROR_PEER_AGENT_REJECTED"

    .line 605
    invoke-static {v0, p0}, Lcom/heytap/accessory/a/a;->c(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_5
    const-string p0, "onTransferCompleted() -> ERROR_PEER_AGENT_BUSY"

    .line 602
    invoke-static {v0, p0}, Lcom/heytap/accessory/a/a;->c(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    nop

    :pswitch_data_0
    .packed-switch -0x1
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private declared-synchronized putConnectionRequest(JZ)V
    .locals 1

    monitor-enter p0

    .line 772
    :try_start_0
    iget-object v0, p0, Lcom/heytap/accessory/stream/StreamTransfer;->mConnectionMap:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    invoke-static {p3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p2

    invoke-virtual {v0, p1, p2}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 773
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method private declared-synchronized putTransaction(JILcom/heytap/accessory/stream/b/a$a;)V
    .locals 3

    monitor-enter p0

    .line 684
    :try_start_0
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "StreamTransfer"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Ljava/lang/Object;->hashCode()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "putTransaction: connectionId:"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v2, ",transactionId:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/heytap/accessory/a/a;->c(Ljava/lang/String;Ljava/lang/String;)V

    .line 685
    iget-object v0, p0, Lcom/heytap/accessory/stream/StreamTransfer;->mTransactionsMap:Ljava/util/concurrent/ConcurrentHashMap;

    if-eqz v0, :cond_1

    .line 686
    iget-object v0, p0, Lcom/heytap/accessory/stream/StreamTransfer;->mTransactionsMap:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/concurrent/ConcurrentHashMap;

    if-nez v0, :cond_0

    .line 688
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    .line 689
    iget-object v1, p0, Lcom/heytap/accessory/stream/StreamTransfer;->mTransactionsMap:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    invoke-virtual {v1, p1, v0}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    if-eqz p4, :cond_1

    .line 692
    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {v0, p1, p4}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 695
    :cond_1
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method private declared-synchronized putTransactionRequest(JIZ)V
    .locals 3

    monitor-enter p0

    .line 742
    :try_start_0
    iget-object v0, p0, Lcom/heytap/accessory/stream/StreamTransfer;->mTransferRequestMap:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/concurrent/ConcurrentHashMap;

    if-nez v0, :cond_0

    .line 744
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    .line 746
    :cond_0
    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-static {p4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 747
    iget-object v1, p0, Lcom/heytap/accessory/stream/StreamTransfer;->mTransferRequestMap:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v1, v2, v0}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 748
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "StreamTransfer"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Ljava/lang/Object;->hashCode()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "putTransactionRequest connectionId: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v2, " ,transactionId: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " , "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string p4, " , "

    invoke-virtual {v1, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-direct {p0, p1, p2, p3}, Lcom/heytap/accessory/stream/StreamTransfer;->getTransactionRequestState(JI)Z

    move-result p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Lcom/heytap/accessory/a/a;->b(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 749
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method private register()Z
    .locals 7

    .line 473
    iget-object v0, p0, Lcom/heytap/accessory/stream/StreamTransfer;->mAgentName:Ljava/lang/String;

    invoke-static {p0, v0}, Lcom/heytap/accessory/stream/a;->a(Lcom/heytap/accessory/stream/StreamTransfer;Ljava/lang/String;)Z

    .line 474
    new-instance v0, Landroid/os/HandlerThread;

    const-string v1, "StreamTransferHandlerThread"

    invoke-direct {v0, v1}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/heytap/accessory/stream/StreamTransfer;->mStreamTransferHandlerThread:Landroid/os/HandlerThread;

    .line 475
    iget-object v0, p0, Lcom/heytap/accessory/stream/StreamTransfer;->mStreamTransferHandlerThread:Landroid/os/HandlerThread;

    new-instance v1, Lcom/heytap/accessory/stream/StreamTransfer$a;

    const/4 v2, 0x0

    invoke-direct {v1, v2}, Lcom/heytap/accessory/stream/StreamTransfer$a;-><init>(B)V

    invoke-virtual {v0, v1}, Landroid/os/HandlerThread;->setUncaughtExceptionHandler(Ljava/lang/Thread$UncaughtExceptionHandler;)V

    .line 476
    iget-object v0, p0, Lcom/heytap/accessory/stream/StreamTransfer;->mStreamTransferHandlerThread:Landroid/os/HandlerThread;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->start()V

    const-string v0, "StreamTransfer"

    const-string v1, "StreamTransferHandlerThread started"

    .line 477
    invoke-static {v0, v1}, Lcom/heytap/accessory/a/a;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 478
    iget-object v0, p0, Lcom/heytap/accessory/stream/StreamTransfer;->mStreamTransferHandlerThread:Landroid/os/HandlerThread;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 480
    new-instance v1, Lcom/heytap/accessory/stream/StreamTransfer$c;

    invoke-direct {v1, v0}, Lcom/heytap/accessory/stream/StreamTransfer$c;-><init>(Landroid/os/Looper;)V

    iput-object v1, p0, Lcom/heytap/accessory/stream/StreamTransfer;->mHandler:Lcom/heytap/accessory/stream/StreamTransfer$c;

    .line 483
    :cond_0
    iget-object v0, p0, Lcom/heytap/accessory/stream/StreamTransfer;->mHandler:Lcom/heytap/accessory/stream/StreamTransfer$c;

    if-eqz v0, :cond_1

    .line 484
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object v0, p0, Lcom/heytap/accessory/stream/StreamTransfer;->mTransactionsMap:Ljava/util/concurrent/ConcurrentHashMap;

    .line 485
    new-instance v0, Lcom/heytap/accessory/stream/b/a;

    iget-object v2, p0, Lcom/heytap/accessory/stream/StreamTransfer;->mEventListener:Lcom/heytap/accessory/stream/StreamTransfer$EventListener;

    iget-object v3, p0, Lcom/heytap/accessory/stream/StreamTransfer;->mStreamTransferHandlerThread:Landroid/os/HandlerThread;

    iget-object v4, p0, Lcom/heytap/accessory/stream/StreamTransfer;->mHandler:Lcom/heytap/accessory/stream/StreamTransfer$c;

    iget-object v5, p0, Lcom/heytap/accessory/stream/StreamTransfer;->mLocalCallback:Lcom/heytap/accessory/stream/StreamTransfer$b;

    iget-object v6, p0, Lcom/heytap/accessory/stream/StreamTransfer;->mTransactionsMap:Ljava/util/concurrent/ConcurrentHashMap;

    move-object v1, v0

    invoke-direct/range {v1 .. v6}, Lcom/heytap/accessory/stream/b/a;-><init>(Lcom/heytap/accessory/stream/StreamTransfer$EventListener;Landroid/os/HandlerThread;Landroid/os/Handler;Lcom/heytap/accessory/stream/StreamTransfer$b;Ljava/util/concurrent/ConcurrentHashMap;)V

    iput-object v0, p0, Lcom/heytap/accessory/stream/StreamTransfer;->mCallingAgentInfo:Lcom/heytap/accessory/stream/b/a;

    .line 486
    iget-object v0, p0, Lcom/heytap/accessory/stream/StreamTransfer;->mAgentName:Ljava/lang/String;

    iget-object v1, p0, Lcom/heytap/accessory/stream/StreamTransfer;->mCallingAgentInfo:Lcom/heytap/accessory/stream/b/a;

    invoke-static {v0, v1}, Lcom/heytap/accessory/stream/a;->a(Ljava/lang/String;Lcom/heytap/accessory/stream/b/a;)V

    .line 487
    iget-object v0, p0, Lcom/heytap/accessory/stream/StreamTransfer;->mHandler:Lcom/heytap/accessory/stream/StreamTransfer$c;

    new-instance v1, Lcom/heytap/accessory/stream/StreamTransfer$5;

    invoke-direct {v1, p0}, Lcom/heytap/accessory/stream/StreamTransfer$5;-><init>(Lcom/heytap/accessory/stream/StreamTransfer;)V

    invoke-virtual {v0, v1}, Lcom/heytap/accessory/stream/StreamTransfer$c;->post(Ljava/lang/Runnable;)Z

    const/4 p0, 0x1

    return p0

    :cond_1
    return v2
.end method

.method private declared-synchronized removeTransaction(JI)V
    .locals 3

    monitor-enter p0

    .line 709
    :try_start_0
    iget-object v0, p0, Lcom/heytap/accessory/stream/StreamTransfer;->mTransactionsMap:Ljava/util/concurrent/ConcurrentHashMap;

    if-eqz v0, :cond_0

    .line 710
    iget-object v0, p0, Lcom/heytap/accessory/stream/StreamTransfer;->mTransactionsMap:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/concurrent/ConcurrentHashMap;

    if-eqz v0, :cond_0

    .line 712
    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/concurrent/ConcurrentHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 713
    invoke-virtual {v0}, Ljava/util/concurrent/ConcurrentHashMap;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "StreamTransfer"

    .line 714
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "removeTransaction:"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-static {v0, p3}, Lcom/heytap/accessory/a/a;->c(Ljava/lang/String;Ljava/lang/String;)V

    .line 715
    iget-object p3, p0, Lcom/heytap/accessory/stream/StreamTransfer;->mTransactionsMap:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    invoke-virtual {p3, p1}, Ljava/util/concurrent/ConcurrentHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 719
    :cond_0
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method private declared-synchronized removeTransactionByTransId(I)V
    .locals 3

    monitor-enter p0

    .line 722
    :try_start_0
    iget-object v0, p0, Lcom/heytap/accessory/stream/StreamTransfer;->mTransactionsMap:Ljava/util/concurrent/ConcurrentHashMap;

    if-eqz v0, :cond_0

    .line 723
    iget-object v0, p0, Lcom/heytap/accessory/stream/StreamTransfer;->mTransactionsMap:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0}, Ljava/util/concurrent/ConcurrentHashMap;->keySet()Ljava/util/Set;

    move-result-object v0

    .line 724
    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Long;

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v1

    .line 725
    invoke-direct {p0, v1, v2, p1}, Lcom/heytap/accessory/stream/StreamTransfer;->removeTransaction(JI)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 728
    :cond_0
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method private declared-synchronized removeTransactionRequest(JI)V
    .locals 2

    monitor-enter p0

    .line 762
    :try_start_0
    iget-object v0, p0, Lcom/heytap/accessory/stream/StreamTransfer;->mTransferRequestMap:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/concurrent/ConcurrentHashMap;

    if-eqz v0, :cond_0

    .line 764
    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p3

    invoke-virtual {v0, p3}, Ljava/util/concurrent/ConcurrentHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 765
    invoke-virtual {v0}, Ljava/util/concurrent/ConcurrentHashMap;->isEmpty()Z

    move-result p3

    if-eqz p3, :cond_0

    .line 766
    iget-object p3, p0, Lcom/heytap/accessory/stream/StreamTransfer;->mTransferRequestMap:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    invoke-virtual {p3, p1}, Ljava/util/concurrent/ConcurrentHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 769
    :cond_0
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method private send(Lcom/heytap/accessory/bean/PeerAgent;Ljava/io/InputStream;Ljava/io/FileDescriptor;)I
    .locals 10
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/heytap/accessory/bean/UnSupportException;
        }
    .end annotation

    .line 215
    invoke-direct {p0, p1}, Lcom/heytap/accessory/stream/StreamTransfer;->validateParam(Lcom/heytap/accessory/bean/PeerAgent;)Z

    move-result v0

    const/4 v1, -0x1

    if-eqz v0, :cond_3

    .line 217
    iget-object v0, p0, Lcom/heytap/accessory/stream/StreamTransfer;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/heytap/accessory/stream/StreamInitializer;->getStreamMsgPackageName(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    const-string v2, "StreamTransfer"

    if-eqz v0, :cond_0

    if-nez p2, :cond_1

    if-nez p3, :cond_1

    const-string p0, "input source is wrong!!"

    .line 220
    invoke-static {v2, p0}, Lcom/heytap/accessory/a/a;->e(Ljava/lang/String;Ljava/lang/String;)V

    return v1

    :cond_0
    const-string v0, "FTCore version doesnot support content uri"

    .line 224
    invoke-static {v2, v0}, Lcom/heytap/accessory/a/a;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 227
    :cond_1
    new-instance v0, Lcom/heytap/accessory/stream/b/a$a;

    invoke-direct {v0}, Lcom/heytap/accessory/stream/b/a$a;-><init>()V

    if-nez p2, :cond_2

    .line 230
    :try_start_0
    iget-object p2, p0, Lcom/heytap/accessory/stream/StreamTransfer;->mContext:Landroid/content/Context;

    iget-object v3, p0, Lcom/heytap/accessory/stream/StreamTransfer;->mAgentName:Ljava/lang/String;

    invoke-static {p2, v3}, Lcom/heytap/accessory/stream/a;->a(Landroid/content/Context;Ljava/lang/String;)Lcom/heytap/accessory/stream/a;

    move-result-object v4

    iget-object v5, p0, Lcom/heytap/accessory/stream/StreamTransfer;->mContext:Landroid/content/Context;

    iget-object v6, p0, Lcom/heytap/accessory/stream/StreamTransfer;->mAgentName:Ljava/lang/String;

    iget-object v7, p0, Lcom/heytap/accessory/stream/StreamTransfer;->mLocalCallback:Lcom/heytap/accessory/stream/StreamTransfer$b;

    move-object v8, p1

    move-object v9, p3

    .line 231
    invoke-virtual/range {v4 .. v9}, Lcom/heytap/accessory/stream/a;->a(Landroid/content/Context;Ljava/lang/String;Lcom/heytap/accessory/stream/StreamTransfer$b;Lcom/heytap/accessory/bean/PeerAgent;Ljava/io/FileDescriptor;)I

    move-result v1

    goto :goto_0

    .line 233
    :cond_2
    iget-object p3, p0, Lcom/heytap/accessory/stream/StreamTransfer;->mContext:Landroid/content/Context;

    iget-object v3, p0, Lcom/heytap/accessory/stream/StreamTransfer;->mAgentName:Ljava/lang/String;

    invoke-static {p3, v3}, Lcom/heytap/accessory/stream/a;->a(Landroid/content/Context;Ljava/lang/String;)Lcom/heytap/accessory/stream/a;

    move-result-object v4

    iget-object v5, p0, Lcom/heytap/accessory/stream/StreamTransfer;->mContext:Landroid/content/Context;

    iget-object v6, p0, Lcom/heytap/accessory/stream/StreamTransfer;->mAgentName:Ljava/lang/String;

    iget-object v7, p0, Lcom/heytap/accessory/stream/StreamTransfer;->mLocalCallback:Lcom/heytap/accessory/stream/StreamTransfer$b;

    move-object v8, p1

    move-object v9, p2

    .line 234
    invoke-virtual/range {v4 .. v9}, Lcom/heytap/accessory/stream/a;->a(Landroid/content/Context;Ljava/lang/String;Lcom/heytap/accessory/stream/StreamTransfer$b;Lcom/heytap/accessory/bean/PeerAgent;Ljava/io/InputStream;)I

    move-result v1
    :try_end_0
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Lcom/heytap/accessory/bean/GeneralException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 237
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    .line 239
    :goto_0
    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p1

    const-string p2, "received tx from STCore"

    invoke-virtual {p2, p1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-static {v2, p1}, Lcom/heytap/accessory/a/a;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 240
    iput v1, v0, Lcom/heytap/accessory/stream/b/a$a;->b:I

    const-wide/16 p1, 0x0

    .line 241
    invoke-direct {p0, p1, p2, v1, v0}, Lcom/heytap/accessory/stream/StreamTransfer;->putTransaction(JILcom/heytap/accessory/stream/b/a$a;)V

    :cond_3
    return v1
.end method

.method private validateParam(Lcom/heytap/accessory/bean/PeerAgent;)Z
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/heytap/accessory/bean/UnSupportException;
        }
    .end annotation

    if-eqz p1, :cond_5

    .line 255
    invoke-direct {p0, p1}, Lcom/heytap/accessory/stream/StreamTransfer;->checkStreamUnSupport(Lcom/heytap/accessory/bean/PeerAgent;)Z

    move-result p1

    if-nez p1, :cond_4

    .line 259
    iget-object p1, p0, Lcom/heytap/accessory/stream/StreamTransfer;->mCallingAgent:Ljava/lang/Object;

    const/4 v0, 0x0

    const-string v1, "StreamTransfer"

    if-eqz p1, :cond_3

    iget-object p0, p0, Lcom/heytap/accessory/stream/StreamTransfer;->mEventListener:Lcom/heytap/accessory/stream/StreamTransfer$EventListener;

    if-nez p0, :cond_0

    goto :goto_0

    .line 263
    :cond_0
    instance-of p0, p1, Lcom/heytap/accessory/BaseJobAgent;

    if-eqz p0, :cond_1

    .line 264
    check-cast p1, Lcom/heytap/accessory/BaseJobAgent;

    .line 265
    invoke-virtual {p1}, Lcom/heytap/accessory/BaseJobAgent;->getSuccessfulConnections()Ljava/util/List;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/List;->isEmpty()Z

    move-result p0

    if-eqz p0, :cond_2

    const-string p0, "current baseJobAgent has not setup service connection, please connect service first"

    .line 266
    invoke-static {v1, p0}, Lcom/heytap/accessory/a/a;->e(Ljava/lang/String;Ljava/lang/String;)V

    return v0

    .line 269
    :cond_1
    instance-of p0, p1, Lcom/heytap/accessory/BaseAgent;

    if-eqz p0, :cond_2

    .line 270
    check-cast p1, Lcom/heytap/accessory/BaseAgent;

    .line 271
    invoke-virtual {p1}, Lcom/heytap/accessory/BaseAgent;->getSuccessfulConnections()Ljava/util/List;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/List;->isEmpty()Z

    move-result p0

    if-eqz p0, :cond_2

    const-string p0, "current baseAgent has not setup service connection, please connect service first"

    .line 272
    invoke-static {v1, p0}, Lcom/heytap/accessory/a/a;->e(Ljava/lang/String;Ljava/lang/String;)V

    return v0

    :cond_2
    const/4 p0, 0x1

    return p0

    :cond_3
    :goto_0
    const-string p0, "Using invalid instance of StreamTransfer(). Please re-register."

    .line 260
    invoke-static {v1, p0}, Lcom/heytap/accessory/a/a;->e(Ljava/lang/String;Ljava/lang/String;)V

    return v0

    .line 256
    :cond_4
    new-instance p0, Lcom/heytap/accessory/bean/UnSupportException;

    const-string p1, "the peer agent doesn\'t support the stream feature, please check"

    invoke-direct {p0, p1}, Lcom/heytap/accessory/bean/UnSupportException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 253
    :cond_5
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "PeerAgent cannot be null"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method


# virtual methods
.method public cancel(JI)V
    .locals 3

    .line 361
    iget-object v0, p0, Lcom/heytap/accessory/stream/StreamTransfer;->mCallingAgent:Ljava/lang/Object;

    if-eqz v0, :cond_5

    iget-object v0, p0, Lcom/heytap/accessory/stream/StreamTransfer;->mEventListener:Lcom/heytap/accessory/stream/StreamTransfer$EventListener;

    if-eqz v0, :cond_5

    .line 362
    invoke-direct {p0, p1, p2, p3}, Lcom/heytap/accessory/stream/StreamTransfer;->containsTransactionKey(JI)Z

    move-result v0

    if-nez v0, :cond_0

    const-string p0, "StreamTransfer"

    const-string p1, "Wrong transaction id used for cancel"

    .line 363
    invoke-static {p0, p1}, Lcom/heytap/accessory/a/a;->e(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    .line 366
    :cond_0
    :try_start_0
    invoke-direct {p0, p1, p2, p3}, Lcom/heytap/accessory/stream/StreamTransfer;->getTransaction(JI)Lcom/heytap/accessory/stream/b/a$a;

    move-result-object v0

    if-nez v0, :cond_1

    const-string p3, "StreamTransfer"

    const-string v0, "cancelStream aborted because service connection or transaction already closed."

    .line 368
    invoke-static {p3, v0}, Lcom/heytap/accessory/a/a;->b(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 369
    :cond_1
    iget v1, v0, Lcom/heytap/accessory/stream/b/a$a;->b:I

    const/4 v2, -0x1

    if-nez v1, :cond_2

    .line 370
    iput v2, v0, Lcom/heytap/accessory/stream/b/a$a;->b:I

    const-string v0, "StreamTransfer"

    const-string v1, "Cancel called before transaction id is genereated"

    .line 371
    invoke-static {p3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p3

    invoke-virtual {v1, p3}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p3

    invoke-static {v0, p3}, Lcom/heytap/accessory/a/a;->b(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 372
    :cond_2
    iget v1, v0, Lcom/heytap/accessory/stream/b/a$a;->b:I

    if-ne v1, v2, :cond_3

    const-string v0, "StreamTransfer"

    const-string v1, "Cancel called again before transaction id is genereated"

    .line 373
    invoke-static {p3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p3

    invoke-virtual {v1, p3}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p3

    invoke-static {v0, p3}, Lcom/heytap/accessory/a/a;->b(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 375
    :cond_3
    iget-object p3, p0, Lcom/heytap/accessory/stream/StreamTransfer;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/heytap/accessory/stream/StreamTransfer;->mAgentName:Ljava/lang/String;

    invoke-static {p3, v1}, Lcom/heytap/accessory/stream/a;->a(Landroid/content/Context;Ljava/lang/String;)Lcom/heytap/accessory/stream/a;

    move-result-object p3

    iget v0, v0, Lcom/heytap/accessory/stream/b/a$a;->b:I
    :try_end_0
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Lcom/heytap/accessory/bean/GeneralException; {:try_start_0 .. :try_end_0} :catch_2

    .line 1251
    :try_start_1
    new-instance v1, Lcom/heytap/accessory/stream/b/c;

    invoke-direct {v1, p1, p2, v0}, Lcom/heytap/accessory/stream/b/c;-><init>(JI)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/lang/IllegalAccessException; {:try_start_1 .. :try_end_1} :catch_2
    .catch Lcom/heytap/accessory/bean/GeneralException; {:try_start_1 .. :try_end_1} :catch_2

    .line 1254
    :try_start_2
    new-instance v0, Lcom/heytap/accessory/stream/b/e;

    const/4 v2, 0x3

    invoke-virtual {v1}, Lcom/heytap/accessory/stream/b/c;->a()Lorg/json/JSONObject;

    move-result-object v1

    invoke-direct {v0, v2, v1}, Lcom/heytap/accessory/stream/b/e;-><init>(ILorg/json/JSONObject;)V

    .line 1255
    iget-object v1, p3, Lcom/heytap/accessory/stream/a;->a:Lcom/heytap/accessory/stream/a$a;

    if-eqz v1, :cond_4

    .line 1256
    iget-object p3, p3, Lcom/heytap/accessory/stream/a;->a:Lcom/heytap/accessory/stream/a$a;

    .line 1419
    iget-object p3, p3, Lcom/heytap/accessory/stream/a$a;->a:Lcom/heytap/accessory/core/IStreamManager;

    .line 1256
    invoke-virtual {v0}, Lcom/heytap/accessory/stream/b/e;->a()Lorg/json/JSONObject;

    move-result-object v0

    invoke-virtual {v0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    invoke-interface {p3, v0, v1}, Lcom/heytap/accessory/core/IStreamManager;->a(Ljava/lang/String;Landroid/os/Bundle;)Landroid/os/Bundle;
    :try_end_2
    .catch Lorg/json/JSONException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_1
    .catch Ljava/lang/IllegalAccessException; {:try_start_2 .. :try_end_2} :catch_2
    .catch Lcom/heytap/accessory/bean/GeneralException; {:try_start_2 .. :try_end_2} :catch_2

    goto :goto_0

    :catch_0
    move-exception p3

    .line 1259
    :try_start_3
    invoke-virtual {p3}, Lorg/json/JSONException;->printStackTrace()V
    :try_end_3
    .catch Landroid/os/RemoteException; {:try_start_3 .. :try_end_3} :catch_1
    .catch Ljava/lang/IllegalAccessException; {:try_start_3 .. :try_end_3} :catch_2
    .catch Lcom/heytap/accessory/bean/GeneralException; {:try_start_3 .. :try_end_3} :catch_2

    goto :goto_0

    :catch_1
    move-exception p3

    .line 1262
    :try_start_4
    invoke-virtual {p3}, Landroid/os/RemoteException;->printStackTrace()V

    .line 377
    :cond_4
    :goto_0
    monitor-enter p0
    :try_end_4
    .catch Ljava/lang/IllegalAccessException; {:try_start_4 .. :try_end_4} :catch_2
    .catch Lcom/heytap/accessory/bean/GeneralException; {:try_start_4 .. :try_end_4} :catch_2

    .line 378
    :try_start_5
    iget-object p3, p0, Lcom/heytap/accessory/stream/StreamTransfer;->mConnectionMap:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    invoke-virtual {p3, p1}, Ljava/util/concurrent/ConcurrentHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 379
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    :try_start_6
    throw p1
    :try_end_6
    .catch Ljava/lang/IllegalAccessException; {:try_start_6 .. :try_end_6} :catch_2
    .catch Lcom/heytap/accessory/bean/GeneralException; {:try_start_6 .. :try_end_6} :catch_2

    :catch_2
    move-exception p0

    .line 381
    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    return-void

    :cond_5
    const-string p0, "StreamTransfer"

    const-string p1, "Using invalid instance of StreamTransfer(). Please re-register."

    .line 385
    invoke-static {p0, p1}, Lcom/heytap/accessory/a/a;->b(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public cancelAll()V
    .locals 5

    const-string v0, "StreamTransfer"

    const-string v1, "[cancelAll] Stream"

    .line 390
    invoke-static {v0, v1}, Lcom/heytap/accessory/a/a;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 391
    iget-object v1, p0, Lcom/heytap/accessory/stream/StreamTransfer;->mCallingAgent:Ljava/lang/Object;

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/heytap/accessory/stream/StreamTransfer;->mEventListener:Lcom/heytap/accessory/stream/StreamTransfer$EventListener;

    if-eqz v1, :cond_2

    .line 393
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x1a

    const/4 v3, 0x0

    const-string v4, "AccessoryPreferences"

    if-le v1, v2, :cond_0

    .line 394
    iget-object v1, p0, Lcom/heytap/accessory/stream/StreamTransfer;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->createDeviceProtectedStorageContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1, v4, v3}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v1

    goto :goto_0

    .line 396
    :cond_0
    iget-object v1, p0, Lcom/heytap/accessory/stream/StreamTransfer;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1, v4, v3}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v1

    .line 398
    :goto_0
    iget-object v2, p0, Lcom/heytap/accessory/stream/StreamTransfer;->mAgentName:Ljava/lang/String;

    const/4 v3, 0x0

    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_1

    const-string p0, "[cancelAll] Your service was not found. Please re-register"

    .line 400
    invoke-static {v0, p0}, Lcom/heytap/accessory/a/a;->e(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    .line 402
    :cond_1
    iget-object v0, p0, Lcom/heytap/accessory/stream/StreamTransfer;->mHandler:Lcom/heytap/accessory/stream/StreamTransfer$c;

    new-instance v2, Lcom/heytap/accessory/stream/StreamTransfer$4;

    invoke-direct {v2, p0, v1}, Lcom/heytap/accessory/stream/StreamTransfer$4;-><init>(Lcom/heytap/accessory/stream/StreamTransfer;Ljava/lang/String;)V

    invoke-virtual {v0, v2}, Lcom/heytap/accessory/stream/StreamTransfer$c;->post(Ljava/lang/Runnable;)Z

    return-void

    :cond_2
    const-string p0, "[cancelAll] Using invalid instance of  Please re-register."

    .line 447
    invoke-static {v0, p0}, Lcom/heytap/accessory/a/a;->b(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public close()V
    .locals 3

    .line 452
    iget-object v0, p0, Lcom/heytap/accessory/stream/StreamTransfer;->mCallingAgent:Ljava/lang/Object;

    const-string v1, "StreamTransfer"

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/heytap/accessory/stream/StreamTransfer;->mEventListener:Lcom/heytap/accessory/stream/StreamTransfer$EventListener;

    if-eqz v0, :cond_2

    .line 453
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v2, "stopStreamTransferService() called by : "

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/heytap/accessory/stream/StreamTransfer;->mAgentName:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/heytap/accessory/a/a;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 455
    invoke-virtual {p0}, Lcom/heytap/accessory/stream/StreamTransfer;->cancelAll()V

    .line 456
    iget-object v0, p0, Lcom/heytap/accessory/stream/StreamTransfer;->mAgentName:Ljava/lang/String;

    .line 457
    invoke-static {v0}, Lcom/heytap/accessory/stream/a;->a(Ljava/lang/String;)V

    .line 458
    iget-object v0, p0, Lcom/heytap/accessory/stream/StreamTransfer;->mTransactionsMap:Ljava/util/concurrent/ConcurrentHashMap;

    if-eqz v0, :cond_0

    .line 459
    invoke-virtual {v0}, Ljava/util/concurrent/ConcurrentHashMap;->clear()V

    .line 461
    :cond_0
    iget-object v0, p0, Lcom/heytap/accessory/stream/StreamTransfer;->mHandler:Lcom/heytap/accessory/stream/StreamTransfer$c;

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    .line 462
    invoke-virtual {v0, v1}, Lcom/heytap/accessory/stream/StreamTransfer$c;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    .line 463
    iget-object v0, p0, Lcom/heytap/accessory/stream/StreamTransfer;->mHandler:Lcom/heytap/accessory/stream/StreamTransfer$c;

    invoke-virtual {v0}, Lcom/heytap/accessory/stream/StreamTransfer$c;->getLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Looper;->quit()V

    .line 465
    :cond_1
    iput-object v1, p0, Lcom/heytap/accessory/stream/StreamTransfer;->mCallingAgent:Ljava/lang/Object;

    .line 466
    iput-object v1, p0, Lcom/heytap/accessory/stream/StreamTransfer;->mEventListener:Lcom/heytap/accessory/stream/StreamTransfer$EventListener;

    return-void

    :cond_2
    const-string p0, "Using invalid instance of StreamTransfer(). Please re-register."

    .line 468
    invoke-static {v1, p0}, Lcom/heytap/accessory/a/a;->b(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public informIncomingSTRequest(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 9

    const-string v0, "transId"

    const/4 v1, -0x1

    .line 506
    invoke-virtual {p2, v0, v1}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v4

    const-string v0, "agentClass"

    .line 507
    invoke-virtual {p2, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "connectionId"

    const-wide/16 v2, 0x0

    .line 508
    invoke-virtual {p2, v1, v2, v3}, Landroid/content/Intent;->getLongExtra(Ljava/lang/String;J)J

    move-result-wide v5

    const-string v1, "contId"

    .line 509
    invoke-virtual {p2, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v8

    if-nez v0, :cond_1

    .line 512
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1a

    const/4 v2, 0x0

    const-string v3, "AccessoryPreferences"

    if-le v0, v1, :cond_0

    .line 513
    iget-object v0, p0, Lcom/heytap/accessory/stream/StreamTransfer;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->createDeviceProtectedStorageContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0, v3, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    goto :goto_0

    .line 515
    :cond_0
    iget-object v0, p0, Lcom/heytap/accessory/stream/StreamTransfer;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0, v3, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    :goto_0
    const-string v1, "peerId"

    .line 517
    invoke-virtual {p2, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 520
    :cond_1
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "class now:"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " , "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/Object;->hashCode()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "StreamTransfer"

    invoke-static {v2, v1}, Lcom/heytap/accessory/a/a;->b(Ljava/lang/String;Ljava/lang/String;)V

    if-nez v0, :cond_2

    const-string p0, "Target agent was cleared. Re-registering"

    .line 522
    invoke-static {v2, p0}, Lcom/heytap/accessory/a/a;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 523
    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/heytap/accessory/b/b;->a(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object p0

    .line 524
    invoke-virtual {p1, p0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    return-void

    .line 528
    :cond_2
    iget-object v1, p0, Lcom/heytap/accessory/stream/StreamTransfer;->mCallingAgent:Ljava/lang/Object;

    if-nez v1, :cond_3

    const-string p0, "Calling agent was cleared"

    .line 529
    invoke-static {v2, p0}, Lcom/heytap/accessory/a/a;->e(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    .line 533
    :cond_3
    iget-object v1, p0, Lcom/heytap/accessory/stream/StreamTransfer;->mAgentName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_4

    .line 534
    new-instance p1, Ljava/lang/StringBuilder;

    const-string p2, "Class name not matched with "

    invoke-direct {p1, p2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object p0, p0, Lcom/heytap/accessory/stream/StreamTransfer;->mAgentName:Ljava/lang/String;

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v2, p0}, Lcom/heytap/accessory/a/a;->e(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    .line 538
    :cond_4
    invoke-static {v0}, Lcom/heytap/accessory/stream/a;->b(Ljava/lang/String;)Lcom/heytap/accessory/stream/b/a;

    move-result-object v7

    if-nez v7, :cond_5

    const-string v0, "AgentInfo is NULL! Re-Registering"

    .line 540
    invoke-static {v2, v0}, Lcom/heytap/accessory/a/a;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 541
    invoke-direct {p0}, Lcom/heytap/accessory/stream/StreamTransfer;->register()Z

    .line 542
    invoke-virtual {p0, p1, p2}, Lcom/heytap/accessory/stream/StreamTransfer;->informIncomingSTRequest(Landroid/content/Context;Landroid/content/Intent;)V

    return-void

    .line 546
    :cond_5
    invoke-virtual {v7}, Lcom/heytap/accessory/stream/b/a;->a()Lcom/heytap/accessory/stream/StreamTransfer$EventListener;

    move-result-object p1

    if-nez p1, :cond_6

    .line 547
    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    const-string p1, "callback is not registered for "

    invoke-virtual {p1, p0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-static {v2, p0}, Lcom/heytap/accessory/a/a;->e(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    .line 551
    :cond_6
    invoke-static {v4}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p1

    const-string p2, "Informing app of incoming stream transfer request on registered callback-tid: "

    invoke-virtual {p2, p1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-static {v2, p1}, Lcom/heytap/accessory/a/a;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 552
    iget-object p1, p0, Lcom/heytap/accessory/stream/StreamTransfer;->mHandler:Lcom/heytap/accessory/stream/StreamTransfer$c;

    new-instance p2, Lcom/heytap/accessory/stream/StreamTransfer$6;

    move-object v2, p2

    move-object v3, p0

    invoke-direct/range {v2 .. v8}, Lcom/heytap/accessory/stream/StreamTransfer$6;-><init>(Lcom/heytap/accessory/stream/StreamTransfer;IJLcom/heytap/accessory/stream/b/a;I)V

    invoke-virtual {p1, p2}, Lcom/heytap/accessory/stream/StreamTransfer$c;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public receive(JI)V
    .locals 4

    .line 292
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "receive task connectionId: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, " ,transactionId:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ",hashCode:, "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/Object;->hashCode()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "StreamTransfer"

    invoke-static {v1, v0}, Lcom/heytap/accessory/a/a;->c(Ljava/lang/String;Ljava/lang/String;)V

    .line 293
    iget-object v0, p0, Lcom/heytap/accessory/stream/StreamTransfer;->mCallingAgent:Ljava/lang/Object;

    const/4 v2, 0x0

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/heytap/accessory/stream/StreamTransfer;->mEventListener:Lcom/heytap/accessory/stream/StreamTransfer$EventListener;

    if-nez v0, :cond_0

    goto :goto_0

    .line 299
    :cond_0
    invoke-direct {p0, p1, p2, p3}, Lcom/heytap/accessory/stream/StreamTransfer;->checkReceiveParams(JI)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 300
    invoke-direct {p0, p1, p2, p3}, Lcom/heytap/accessory/stream/StreamTransfer;->containsTransactionRequestKey(JI)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 306
    new-instance v0, Lcom/heytap/accessory/stream/b/a$a;

    invoke-direct {v0}, Lcom/heytap/accessory/stream/b/a$a;-><init>()V

    .line 307
    iput-wide p1, v0, Lcom/heytap/accessory/stream/b/a$a;->a:J

    .line 308
    iput p3, v0, Lcom/heytap/accessory/stream/b/a$a;->b:I

    .line 309
    invoke-direct {p0, p1, p2, p3, v0}, Lcom/heytap/accessory/stream/StreamTransfer;->putTransaction(JILcom/heytap/accessory/stream/b/a$a;)V

    const/4 v0, 0x1

    .line 310
    invoke-direct {p0, p1, p2, v0}, Lcom/heytap/accessory/stream/StreamTransfer;->putConnectionRequest(JZ)V

    .line 311
    iget-object v0, p0, Lcom/heytap/accessory/stream/StreamTransfer;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/heytap/accessory/stream/StreamInitializer;->getStreamMsgPackageName(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_1

    const-string v0, "Accessory Framework doesn\'t support content URI !!"

    .line 314
    invoke-static {v1, v0}, Lcom/heytap/accessory/a/a;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 317
    :cond_1
    iget-object v0, p0, Lcom/heytap/accessory/stream/StreamTransfer;->mHandler:Lcom/heytap/accessory/stream/StreamTransfer$c;

    new-instance v1, Lcom/heytap/accessory/stream/StreamTransfer$2;

    invoke-direct {v1, p0, p1, p2, p3}, Lcom/heytap/accessory/stream/StreamTransfer$2;-><init>(Lcom/heytap/accessory/stream/StreamTransfer;JI)V

    invoke-virtual {v0, v1}, Lcom/heytap/accessory/stream/StreamTransfer$c;->post(Ljava/lang/Runnable;)Z

    return-void

    .line 301
    :cond_2
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v3, "TransactionId: Given["

    invoke-direct {v0, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, "] not exist"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/heytap/accessory/a/a;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 302
    invoke-direct {p0, p1, p2, p3, v2}, Lcom/heytap/accessory/stream/StreamTransfer;->putTransactionRequest(JIZ)V

    .line 303
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "Wrong filepath or transaction id used"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_3
    :goto_0
    const-string v0, "Using invalid instance of StreamTransfer(). Please re-register."

    .line 294
    invoke-static {v1, v0}, Lcom/heytap/accessory/a/a;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 295
    invoke-direct {p0, p1, p2, p3, v2}, Lcom/heytap/accessory/stream/StreamTransfer;->putTransactionRequest(JIZ)V

    return-void
.end method

.method public reject(JI)V
    .locals 2

    .line 336
    iget-object v0, p0, Lcom/heytap/accessory/stream/StreamTransfer;->mCallingAgent:Ljava/lang/Object;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/heytap/accessory/stream/StreamTransfer;->mEventListener:Lcom/heytap/accessory/stream/StreamTransfer$EventListener;

    if-eqz v0, :cond_1

    .line 337
    invoke-direct {p0, p1, p2, p3}, Lcom/heytap/accessory/stream/StreamTransfer;->checkReceiveParams(JI)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-direct {p0, p1, p2, p3}, Lcom/heytap/accessory/stream/StreamTransfer;->containsTransactionRequestKey(JI)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 338
    new-instance v0, Lcom/heytap/accessory/stream/b/a$a;

    invoke-direct {v0}, Lcom/heytap/accessory/stream/b/a$a;-><init>()V

    .line 339
    iput p3, v0, Lcom/heytap/accessory/stream/b/a$a;->b:I

    .line 340
    invoke-direct {p0, p1, p2, p3}, Lcom/heytap/accessory/stream/StreamTransfer;->removeTransaction(JI)V

    .line 341
    iget-object v0, p0, Lcom/heytap/accessory/stream/StreamTransfer;->mHandler:Lcom/heytap/accessory/stream/StreamTransfer$c;

    new-instance v1, Lcom/heytap/accessory/stream/StreamTransfer$3;

    invoke-direct {v1, p0, p1, p2, p3}, Lcom/heytap/accessory/stream/StreamTransfer$3;-><init>(Lcom/heytap/accessory/stream/StreamTransfer;JI)V

    invoke-virtual {v0, v1}, Lcom/heytap/accessory/stream/StreamTransfer$c;->post(Ljava/lang/Runnable;)Z

    return-void

    .line 353
    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "Wrong transaction id used in reject()"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_1
    const-string p0, "StreamTransfer"

    const-string p1, "Using invalid instance of StreamTransfer(). Please re-register."

    .line 356
    invoke-static {p0, p1}, Lcom/heytap/accessory/a/a;->b(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public send(Lcom/heytap/accessory/bean/PeerAgent;Ljava/io/FileDescriptor;)I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/heytap/accessory/bean/UnSupportException;
        }
    .end annotation

    const/4 v0, 0x0

    .line 211
    invoke-direct {p0, p1, v0, p2}, Lcom/heytap/accessory/stream/StreamTransfer;->send(Lcom/heytap/accessory/bean/PeerAgent;Ljava/io/InputStream;Ljava/io/FileDescriptor;)I

    move-result p0

    return p0
.end method

.method public send(Lcom/heytap/accessory/bean/PeerAgent;Ljava/io/FileDescriptor;I)I
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/heytap/accessory/bean/UnSupportException;
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    const/4 p3, 0x0

    .line 203
    invoke-direct {p0, p1, p3, p2}, Lcom/heytap/accessory/stream/StreamTransfer;->send(Lcom/heytap/accessory/bean/PeerAgent;Ljava/io/InputStream;Ljava/io/FileDescriptor;)I

    move-result p0

    return p0
.end method

.method public send(Lcom/heytap/accessory/bean/PeerAgent;Ljava/io/InputStream;)I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/heytap/accessory/bean/UnSupportException;
        }
    .end annotation

    const/4 v0, 0x0

    .line 207
    invoke-direct {p0, p1, p2, v0}, Lcom/heytap/accessory/stream/StreamTransfer;->send(Lcom/heytap/accessory/bean/PeerAgent;Ljava/io/InputStream;Ljava/io/FileDescriptor;)I

    move-result p0

    return p0
.end method

.method public send(Lcom/heytap/accessory/bean/PeerAgent;Ljava/io/InputStream;I)I
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/heytap/accessory/bean/UnSupportException;
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    const/4 p3, 0x0

    .line 193
    invoke-direct {p0, p1, p2, p3}, Lcom/heytap/accessory/stream/StreamTransfer;->send(Lcom/heytap/accessory/bean/PeerAgent;Ljava/io/InputStream;Ljava/io/FileDescriptor;)I

    move-result p0

    return p0
.end method
