.class public abstract Lcom/heytap/accessory/BaseAgent;
.super Landroid/app/Service;
.source "BaseAgent.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/heytap/accessory/BaseAgent$b;,
        Lcom/heytap/accessory/BaseAgent$c;,
        Lcom/heytap/accessory/BaseAgent$AuthenticationCallback;,
        Lcom/heytap/accessory/BaseAgent$a;,
        Lcom/heytap/accessory/BaseAgent$PeerAgentCallback;
    }
.end annotation


# static fields
.field public static final AUTHENTICATION_FAILURE_PEER_AGENT_NOT_SUPPORTED:I = 0x271f

.field public static final AUTHENTICATION_FAILURE_TOKEN_NOT_GENERATED:I = 0x271e

.field public static final AUTHENTICATION_SUCCESS:I = 0x0

.field public static final CONNECTION_ALREADY_EXIST:I = 0x2715

.field public static final CONNECTION_DUPLICATE_REQUEST:I = 0x2719

.field public static final CONNECTION_FAILURE_ACC_DORMANT:I = 0x2722

.field public static final CONNECTION_FAILURE_CHANNELID_MISMATCH:I = 0x271b

.field public static final CONNECTION_FAILURE_DEVICE_UNREACHABLE:I = 0x2714

.field public static final CONNECTION_FAILURE_INVALID_PEERAGENT:I = 0x2718

.field public static final CONNECTION_FAILURE_LOCAL_AGENT_NOT_FOUND:I = 0x2721

.field public static final CONNECTION_FAILURE_NETWORK:I = 0x271c

.field public static final CONNECTION_FAILURE_PEERAGENT_NO_RESPONSE:I = 0x2716

.field public static final CONNECTION_FAILURE_PEERAGENT_REJECTED:I = 0x2717

.field public static final CONNECTION_FAILURE_SERVICE_LIMIT_REACHED:I = 0x271a

.field public static final CONNECTION_SUCCESS:I = 0x0

.field private static final DEFAULT_GET_AGENT_ID_RETRY_COUNT:I = 0x2

.field public static final ERROR_CONNECTION_INVALID_PARAM:I = 0x271d

.field public static final ERROR_FATAL:I = 0x4e21

.field public static final ERROR_PERMISSION_DENIED:I = 0x4e23

.field public static final ERROR_PERMISSION_FAILED:I = 0x4e24

.field public static final ERROR_SDK_NOT_INITIALIZED:I = 0x4e22

.field public static final FIND_PEER_DEVICE_NOT_CONNECTED:I = 0x2711

.field public static final FIND_PEER_DUPLICATE_REQUEST:I = 0x2713

.field public static final FIND_PEER_SERVICE_NOT_FOUND:I = 0x2712

.field public static final FIND_PEER_TIMEOUT:I = 0x271a

.field public static final ON_PEER_INSTALLED:I = 0x0

.field public static final ON_PEER_UNINSTALLED:I = 0x1

.field public static final PEER_AGENT_AVAILABLE:I = 0x1

.field public static final PEER_AGENT_FOUND:I = 0x0

.field public static final PEER_AGENT_UNAVAILABLE:I = 0x2

.field public static final SERVICE_RECORD_NOT_FOUND:I = 0x2720

.field private static final TAG:Ljava/lang/String; = "BaseAgent"


# instance fields
.field mAdapter:Lcom/heytap/accessory/BaseAdapter;

.field private mAgentCallback:Lcom/heytap/accessory/BaseAgent$a;

.field private mAgentId:Ljava/lang/String;

.field mBackgroundWorker:Lcom/heytap/accessory/BaseAgent$b;

.field private mConnectionCallback:Lcom/heytap/accessory/BaseAgent$c;

.field private mGetAgentIdRetryCount:I

.field private mMessage:Lcom/heytap/accessory/BaseMessage;

.field private mName:Ljava/lang/String;

.field private mPeerAgentCallback:Lcom/heytap/accessory/BaseAgent$PeerAgentCallback;

.field private mPeerAuthCallback:Lcom/heytap/accessory/BaseAgent$AuthenticationCallback;

.field private mPendingRequests:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Lcom/heytap/accessory/bean/PeerAgent;",
            ">;"
        }
    .end annotation
.end field

.field private mServiceProfile:Lcom/heytap/accessory/bean/ServiceProfile;

.field private mSocketImpl:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class<",
            "+",
            "Lcom/heytap/accessory/BaseSocket;",
            ">;"
        }
    .end annotation
.end field

.field private mSuccessfulConnections:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/heytap/accessory/BaseSocket;",
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
    .locals 1

    .line 230
    invoke-direct {p0}, Landroid/app/Service;-><init>()V

    const/4 v0, 0x0

    .line 115
    iput-object v0, p0, Lcom/heytap/accessory/BaseAgent;->mServiceProfile:Lcom/heytap/accessory/bean/ServiceProfile;

    const/4 v0, 0x0

    .line 116
    iput v0, p0, Lcom/heytap/accessory/BaseAgent;->mGetAgentIdRetryCount:I

    if-eqz p1, :cond_0

    const-string v0, ""

    .line 231
    invoke-virtual {v0, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 232
    iput-object p1, p0, Lcom/heytap/accessory/BaseAgent;->mName:Ljava/lang/String;

    return-void

    .line 234
    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    const-string v0, "Invalid parameter name:"

    invoke-virtual {v0, p1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method protected constructor <init>(Ljava/lang/String;Ljava/lang/Class;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/Class<",
            "+",
            "Lcom/heytap/accessory/BaseSocket;",
            ">;)V"
        }
    .end annotation

    .line 219
    invoke-direct {p0}, Landroid/app/Service;-><init>()V

    const/4 v0, 0x0

    .line 115
    iput-object v0, p0, Lcom/heytap/accessory/BaseAgent;->mServiceProfile:Lcom/heytap/accessory/bean/ServiceProfile;

    const/4 v0, 0x0

    .line 116
    iput v0, p0, Lcom/heytap/accessory/BaseAgent;->mGetAgentIdRetryCount:I

    if-eqz p1, :cond_0

    const-string v0, ""

    .line 220
    invoke-virtual {v0, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 221
    invoke-direct {p0, p2}, Lcom/heytap/accessory/BaseAgent;->validateSocketImplementation(Ljava/lang/Class;)V

    .line 222
    iput-object p1, p0, Lcom/heytap/accessory/BaseAgent;->mName:Ljava/lang/String;

    .line 223
    iput-object p2, p0, Lcom/heytap/accessory/BaseAgent;->mSocketImpl:Ljava/lang/Class;

    .line 224
    sget-object p1, Lcom/heytap/accessory/BaseAgent;->TAG:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Thread Name:"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object p0, p0, Lcom/heytap/accessory/BaseAgent;->mName:Ljava/lang/String;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, "BaseSocket Imple class:"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p1, p0}, Lcom/heytap/accessory/a/a;->b(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    .line 226
    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    const-string p2, "Invalid parameter name:"

    invoke-virtual {p2, p1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method private acceptServiceConnectionInternal(Lcom/heytap/accessory/bean/PeerAgent;)V
    .locals 3

    .line 749
    invoke-virtual {p0}, Lcom/heytap/accessory/BaseAgent;->getLocalAgentId()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_0

    const/16 v0, 0x4e21

    .line 751
    invoke-virtual {p0, v0, p1}, Lcom/heytap/accessory/BaseAgent;->handleError(ILcom/heytap/accessory/bean/PeerAgent;)V

    return-void

    .line 753
    :cond_0
    invoke-direct {p0}, Lcom/heytap/accessory/BaseAgent;->instantiateSocket()Lcom/heytap/accessory/BaseSocket;

    move-result-object v1

    .line 754
    iget-object v2, p0, Lcom/heytap/accessory/BaseAgent;->mAdapter:Lcom/heytap/accessory/BaseAdapter;

    iget-object p0, p0, Lcom/heytap/accessory/BaseAgent;->mConnectionCallback:Lcom/heytap/accessory/BaseAgent$c;

    invoke-virtual {v1, v0, p1, v2, p0}, Lcom/heytap/accessory/BaseSocket;->acceptServiceConnection(Ljava/lang/String;Lcom/heytap/accessory/bean/PeerAgent;Lcom/heytap/accessory/BaseAdapter;Lcom/heytap/accessory/BaseSocket$a;)V

    return-void
.end method

.method static synthetic access$000()Ljava/lang/String;
    .locals 1

    .line 55
    sget-object v0, Lcom/heytap/accessory/BaseAgent;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$1000(Lcom/heytap/accessory/BaseAgent;I)V
    .locals 0

    .line 55
    invoke-direct {p0, p1}, Lcom/heytap/accessory/BaseAgent;->handleFindPeerErrorCode(I)V

    return-void
.end method

.method static synthetic access$1100(Lcom/heytap/accessory/BaseAgent;I)V
    .locals 0

    .line 55
    invoke-direct {p0, p1}, Lcom/heytap/accessory/BaseAgent;->handlePeerAgentUpdateErrorCode(I)V

    return-void
.end method

.method static synthetic access$1200(Lcom/heytap/accessory/BaseAgent;Landroid/content/Intent;)V
    .locals 0

    .line 55
    invoke-direct {p0, p1}, Lcom/heytap/accessory/BaseAgent;->notifyConnectionRequest(Landroid/content/Intent;)V

    return-void
.end method

.method static synthetic access$1300(Lcom/heytap/accessory/BaseAgent;Lcom/heytap/accessory/bean/PeerAgent;)V
    .locals 0

    .line 55
    invoke-direct {p0, p1}, Lcom/heytap/accessory/BaseAgent;->requestConnection(Lcom/heytap/accessory/bean/PeerAgent;)V

    return-void
.end method

.method static synthetic access$1400(Lcom/heytap/accessory/BaseAgent;Lcom/heytap/accessory/bean/PeerAgent;)V
    .locals 0

    .line 55
    invoke-direct {p0, p1}, Lcom/heytap/accessory/BaseAgent;->acceptServiceConnectionInternal(Lcom/heytap/accessory/bean/PeerAgent;)V

    return-void
.end method

.method static synthetic access$1500(Lcom/heytap/accessory/BaseAgent;Lcom/heytap/accessory/bean/PeerAgent;)V
    .locals 0

    .line 55
    invoke-direct {p0, p1}, Lcom/heytap/accessory/BaseAgent;->rejectServiceConnectionInternal(Lcom/heytap/accessory/bean/PeerAgent;)V

    return-void
.end method

.method static synthetic access$1600(Lcom/heytap/accessory/BaseAgent;Lcom/heytap/accessory/bean/PeerAgent;)V
    .locals 0

    .line 55
    invoke-direct {p0, p1}, Lcom/heytap/accessory/BaseAgent;->requestPeerAuthInternal(Lcom/heytap/accessory/bean/PeerAgent;)V

    return-void
.end method

.method static synthetic access$1700(Lcom/heytap/accessory/BaseAgent;Landroid/os/Bundle;)V
    .locals 0

    .line 55
    invoke-direct {p0, p1}, Lcom/heytap/accessory/BaseAgent;->handleAuthResponse(Landroid/os/Bundle;)V

    return-void
.end method

.method static synthetic access$1800(Lcom/heytap/accessory/BaseAgent;)V
    .locals 0

    .line 55
    invoke-direct {p0}, Lcom/heytap/accessory/BaseAgent;->cleanup()V

    return-void
.end method

.method static synthetic access$1900(Lcom/heytap/accessory/BaseAgent;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/heytap/accessory/bean/GeneralException;
        }
    .end annotation

    .line 55
    invoke-direct {p0}, Lcom/heytap/accessory/BaseAgent;->loadAgentId()V

    return-void
.end method

.method static synthetic access$2000(Lcom/heytap/accessory/BaseAgent;Landroid/content/Intent;)V
    .locals 0

    .line 55
    invoke-direct {p0, p1}, Lcom/heytap/accessory/BaseAgent;->handleAccessoryStatusChanged(Landroid/content/Intent;)V

    return-void
.end method

.method static synthetic access$400(Lcom/heytap/accessory/BaseAgent;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/heytap/accessory/bean/GeneralException;
        }
    .end annotation

    .line 55
    invoke-direct {p0}, Lcom/heytap/accessory/BaseAgent;->registerMexAgent()V

    return-void
.end method

.method static synthetic access$500(Lcom/heytap/accessory/BaseAgent;)Ljava/util/List;
    .locals 0

    .line 55
    iget-object p0, p0, Lcom/heytap/accessory/BaseAgent;->mSuccessfulConnections:Ljava/util/List;

    return-object p0
.end method

.method static synthetic access$600(Lcom/heytap/accessory/BaseAgent;I)V
    .locals 0

    .line 55
    invoke-direct {p0, p1}, Lcom/heytap/accessory/BaseAgent;->handleServiceConnectionErrorCode(I)V

    return-void
.end method

.method static synthetic access$700(Lcom/heytap/accessory/BaseAgent;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/heytap/accessory/bean/GeneralException;
        }
    .end annotation

    .line 55
    invoke-direct {p0}, Lcom/heytap/accessory/BaseAgent;->bindToFramework()V

    return-void
.end method

.method static synthetic access$800(Lcom/heytap/accessory/BaseAgent;)V
    .locals 0

    .line 55
    invoke-direct {p0}, Lcom/heytap/accessory/BaseAgent;->registerService()V

    return-void
.end method

.method static synthetic access$900(Lcom/heytap/accessory/BaseAgent;)V
    .locals 0

    .line 55
    invoke-direct {p0}, Lcom/heytap/accessory/BaseAgent;->requestPeerAgents()V

    return-void
.end method

.method private bindToFramework()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/heytap/accessory/bean/GeneralException;
        }
    .end annotation

    .line 458
    iget-object v0, p0, Lcom/heytap/accessory/BaseAgent;->mAdapter:Lcom/heytap/accessory/BaseAdapter;

    iget-object v1, p0, Lcom/heytap/accessory/BaseAgent;->mAgentCallback:Lcom/heytap/accessory/BaseAgent$a;

    invoke-virtual {v0, v1}, Lcom/heytap/accessory/BaseAdapter;->registerAgentCallback(Lcom/heytap/accessory/BaseAdapter$b;)V

    .line 459
    iget-object v0, p0, Lcom/heytap/accessory/BaseAgent;->mAdapter:Lcom/heytap/accessory/BaseAdapter;

    invoke-virtual {v0}, Lcom/heytap/accessory/BaseAdapter;->bindToFramework()V

    .line 460
    invoke-direct {p0}, Lcom/heytap/accessory/BaseAgent;->loadAgentId()V

    return-void
.end method

.method private cleanup()V
    .locals 2

    .line 905
    sget-object v0, Lcom/heytap/accessory/BaseAgent;->TAG:Ljava/lang/String;

    const-string v1, "Performing agent cleanup"

    invoke-static {v0, v1}, Lcom/heytap/accessory/a/a;->d(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x0

    .line 906
    invoke-direct {p0, v0}, Lcom/heytap/accessory/BaseAgent;->cleanupConnections(Z)V

    .line 907
    invoke-virtual {p0}, Lcom/heytap/accessory/BaseAgent;->getLocalAgentId()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 909
    iget-object v1, p0, Lcom/heytap/accessory/BaseAgent;->mAdapter:Lcom/heytap/accessory/BaseAdapter;

    invoke-virtual {v1, v0}, Lcom/heytap/accessory/BaseAdapter;->cleanupAgent(Ljava/lang/String;)V

    .line 912
    :cond_0
    iget-object v0, p0, Lcom/heytap/accessory/BaseAgent;->mAdapter:Lcom/heytap/accessory/BaseAdapter;

    iget-object v1, p0, Lcom/heytap/accessory/BaseAgent;->mAgentCallback:Lcom/heytap/accessory/BaseAgent$a;

    invoke-virtual {v0, v1}, Lcom/heytap/accessory/BaseAdapter;->unregisterAgentCallback(Lcom/heytap/accessory/BaseAdapter$b;)V

    .line 913
    iget-object v0, p0, Lcom/heytap/accessory/BaseAgent;->mMessage:Lcom/heytap/accessory/BaseMessage;

    if-eqz v0, :cond_1

    .line 914
    invoke-virtual {v0}, Lcom/heytap/accessory/BaseMessage;->unregisterAgent()V

    .line 917
    :cond_1
    iget-object v0, p0, Lcom/heytap/accessory/BaseAgent;->mBackgroundWorker:Lcom/heytap/accessory/BaseAgent$b;

    if-eqz v0, :cond_2

    .line 2179
    invoke-virtual {v0}, Lcom/heytap/accessory/BaseAgent$b;->getLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-virtual {v1}, Landroid/os/Looper;->quit()V

    const/4 v1, 0x0

    .line 2180
    iput-object v1, v0, Lcom/heytap/accessory/BaseAgent$b;->a:Lcom/heytap/accessory/BaseAgent;

    .line 919
    iput-object v1, p0, Lcom/heytap/accessory/BaseAgent;->mBackgroundWorker:Lcom/heytap/accessory/BaseAgent$b;

    :cond_2
    return-void
.end method

.method private cleanupConnections(Z)V
    .locals 3

    .line 925
    iget-object v0, p0, Lcom/heytap/accessory/BaseAgent;->mSuccessfulConnections:Ljava/util/List;

    monitor-enter v0

    .line 926
    :try_start_0
    iget-object v1, p0, Lcom/heytap/accessory/BaseAgent;->mSuccessfulConnections:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/heytap/accessory/BaseSocket;

    if-eqz p1, :cond_0

    .line 928
    invoke-virtual {v2}, Lcom/heytap/accessory/BaseSocket;->forceClose()V

    goto :goto_0

    .line 930
    :cond_0
    invoke-virtual {v2}, Lcom/heytap/accessory/BaseSocket;->close()V

    goto :goto_0

    .line 933
    :cond_1
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 934
    iget-object p0, p0, Lcom/heytap/accessory/BaseAgent;->mSuccessfulConnections:Ljava/util/List;

    invoke-interface {p0}, Ljava/util/List;->clear()V

    .line 935
    invoke-static {}, Lcom/heytap/accessory/Initializer;->clearSdkConfig()V

    return-void

    :catchall_0
    move-exception p0

    .line 933
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p0
.end method

.method private declared-synchronized fetchServiceProfile()V
    .locals 2

    monitor-enter p0

    .line 948
    :try_start_0
    invoke-virtual {p0}, Lcom/heytap/accessory/BaseAgent;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/heytap/accessory/b/d;->a(Landroid/content/Context;)Lcom/heytap/accessory/b/d;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 950
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/heytap/accessory/b/d;->a(Ljava/lang/String;)Lcom/heytap/accessory/bean/ServiceProfile;

    move-result-object v0

    iput-object v0, p0, Lcom/heytap/accessory/BaseAgent;->mServiceProfile:Lcom/heytap/accessory/bean/ServiceProfile;

    .line 951
    iget-object v0, p0, Lcom/heytap/accessory/BaseAgent;->mServiceProfile:Lcom/heytap/accessory/bean/ServiceProfile;

    if-nez v0, :cond_1

    .line 952
    sget-object v0, Lcom/heytap/accessory/BaseAgent;->TAG:Ljava/lang/String;

    const-string v1, "fetch service profile description failed !!"

    invoke-static {v0, v1}, Lcom/heytap/accessory/a/a;->e(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    .line 955
    :cond_0
    :try_start_1
    sget-object v0, Lcom/heytap/accessory/BaseAgent;->TAG:Ljava/lang/String;

    const-string v1, "config  util defualt instance  creation failed !!"

    invoke-static {v0, v1}, Lcom/heytap/accessory/a/a;->e(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 958
    :cond_1
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private declared-synchronized handleAccessoryStatusChanged(Landroid/content/Intent;)V
    .locals 2

    monitor-enter p0

    :try_start_0
    const-string v0, "accessoryStatus"

    const/4 v1, 0x0

    .line 961
    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    const-string v0, "peerAgent"

    .line 962
    invoke-virtual {p1, v0}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 967
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method private handleAuthErrorCode(I)V
    .locals 1

    if-eqz p1, :cond_2

    const/16 p0, 0x271e

    if-eq p1, p0, :cond_1

    const/16 p0, 0x271f

    if-eq p1, p0, :cond_0

    .line 580
    sget-object p0, Lcom/heytap/accessory/BaseAgent;->TAG:Ljava/lang/String;

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p1

    const-string v0, "onAuthenticationResponse() errorCode: "

    invoke-virtual {v0, p1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Lcom/heytap/accessory/a/a;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    .line 577
    :cond_0
    sget-object p0, Lcom/heytap/accessory/BaseAgent;->TAG:Ljava/lang/String;

    const-string p1, "onAuthenticationResponse() -> AUTHENTICATION_FAILURE_PEER_AGENT_NOT_SUPPORTED"

    invoke-static {p0, p1}, Lcom/heytap/accessory/a/a;->c(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    .line 574
    :cond_1
    sget-object p0, Lcom/heytap/accessory/BaseAgent;->TAG:Ljava/lang/String;

    const-string p1, "onAuthenticationResponse() -> AUTHENTICATION_FAILURE_TOKEN_NOT_GENERATED"

    invoke-static {p0, p1}, Lcom/heytap/accessory/a/a;->c(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    .line 571
    :cond_2
    sget-object p0, Lcom/heytap/accessory/BaseAgent;->TAG:Ljava/lang/String;

    const-string p1, "onAuthenticationResponse() -> AUTHENTICATION_SUCCESS"

    invoke-static {p0, p1}, Lcom/heytap/accessory/a/a;->c(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method private handleAuthResponse(Landroid/os/Bundle;)V
    .locals 6

    .line 826
    const-class v0, Lcom/heytap/accessory/bean/PeerAgent;

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->setClassLoader(Ljava/lang/ClassLoader;)V

    const-string v0, "PEER_AGENT_KEY"

    .line 827
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getByteArray(Ljava/lang/String;)[B

    move-result-object v0

    const-string v1, "CERT_TYPE"

    .line 828
    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v1

    const-string v2, "peerAgent"

    .line 829
    invoke-virtual {p1, v2}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v2

    check-cast v2, Lcom/heytap/accessory/bean/PeerAgent;

    const-string v3, "transactionId"

    .line 830
    invoke-virtual {p1, v3}, Landroid/os/Bundle;->getLong(Ljava/lang/String;)J

    move-result-wide v3

    if-nez v2, :cond_0

    .line 832
    sget-object p0, Lcom/heytap/accessory/BaseAgent;->TAG:Ljava/lang/String;

    const-string p1, "Invalid response from framework! No peer agent in auth response.Ignoring response"

    invoke-static {p0, p1}, Lcom/heytap/accessory/a/a;->e(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    .line 834
    :cond_0
    invoke-virtual {v2, v3, v4}, Lcom/heytap/accessory/bean/PeerAgent;->setTransactionId(J)V

    const/4 p1, 0x0

    if-nez v0, :cond_1

    const/16 p1, 0x271e

    .line 838
    sget-object v3, Lcom/heytap/accessory/BaseAgent;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "Authentication failed error:10014 Peer Id:"

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2}, Lcom/heytap/accessory/bean/PeerAgent;->getAgentId()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/heytap/accessory/a/a;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 840
    :cond_1
    sget-object v3, Lcom/heytap/accessory/BaseAgent;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "Authentication success status: 0 for peer: "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2}, Lcom/heytap/accessory/bean/PeerAgent;->getAgentId()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/heytap/accessory/a/a;->c(Ljava/lang/String;Ljava/lang/String;)V

    .line 843
    :goto_0
    new-instance v3, Lcom/heytap/accessory/bean/AuthenticationToken;

    invoke-direct {v3, v1, v0}, Lcom/heytap/accessory/bean/AuthenticationToken;-><init>(I[B)V

    .line 844
    invoke-virtual {p0, v2, v3, p1}, Lcom/heytap/accessory/BaseAgent;->onAuthenticationResponse(Lcom/heytap/accessory/bean/PeerAgent;Lcom/heytap/accessory/bean/AuthenticationToken;I)V

    .line 845
    invoke-direct {p0, p1}, Lcom/heytap/accessory/BaseAgent;->handleAuthErrorCode(I)V

    return-void
.end method

.method private handleFindPeerErrorCode(I)V
    .locals 1

    if-eqz p1, :cond_0

    packed-switch p1, :pswitch_data_0

    .line 563
    sget-object p0, Lcom/heytap/accessory/BaseAgent;->TAG:Ljava/lang/String;

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p1

    const-string v0, "onFindPeerAgentsResponse() errorCode: "

    invoke-virtual {v0, p1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Lcom/heytap/accessory/a/a;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    .line 560
    :pswitch_0
    sget-object p0, Lcom/heytap/accessory/BaseAgent;->TAG:Ljava/lang/String;

    const-string p1, "onFindPeerAgentsResponse() -> FIND_PEER_DUPLICATE_REQUEST"

    invoke-static {p0, p1}, Lcom/heytap/accessory/a/a;->c(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    .line 557
    :pswitch_1
    sget-object p0, Lcom/heytap/accessory/BaseAgent;->TAG:Ljava/lang/String;

    const-string p1, "onFindPeerAgentsResponse() -> FIND_PEER_SERVICE_NOT_FOUND"

    invoke-static {p0, p1}, Lcom/heytap/accessory/a/a;->c(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    .line 554
    :pswitch_2
    sget-object p0, Lcom/heytap/accessory/BaseAgent;->TAG:Ljava/lang/String;

    const-string p1, "onFindPeerAgentsResponse() -> FIND_PEER_DEVICE_NOT_CONNECTED"

    invoke-static {p0, p1}, Lcom/heytap/accessory/a/a;->c(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    .line 551
    :cond_0
    sget-object p0, Lcom/heytap/accessory/BaseAgent;->TAG:Ljava/lang/String;

    const-string p1, "onFindPeerAgentsResponse() -> PEER_AGENT_FOUND"

    invoke-static {p0, p1}, Lcom/heytap/accessory/a/a;->c(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x2711
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private handleInvalidPeerAction(Lcom/heytap/accessory/bean/PeerAgent;)V
    .locals 3

    .line 859
    iget-object v0, p0, Lcom/heytap/accessory/BaseAgent;->mPendingRequests:Ljava/util/Set;

    monitor-enter v0

    .line 861
    :try_start_0
    iget-object v1, p0, Lcom/heytap/accessory/BaseAgent;->mPendingRequests:Ljava/util/Set;

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/heytap/accessory/bean/PeerAgent;

    .line 862
    invoke-direct {p0, v2}, Lcom/heytap/accessory/BaseAgent;->rejectServiceConnectionInternal(Lcom/heytap/accessory/bean/PeerAgent;)V

    goto :goto_0

    .line 865
    :cond_0
    iget-object v1, p0, Lcom/heytap/accessory/BaseAgent;->mBackgroundWorker:Lcom/heytap/accessory/BaseAgent$b;

    if-eqz v1, :cond_1

    .line 866
    iget-object v1, p0, Lcom/heytap/accessory/BaseAgent;->mBackgroundWorker:Lcom/heytap/accessory/BaseAgent$b;

    const/16 v2, 0xb

    invoke-virtual {v1, v2}, Lcom/heytap/accessory/BaseAgent$b;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    const/16 v2, 0x2718

    .line 867
    iput v2, v1, Landroid/os/Message;->arg1:I

    .line 868
    iput-object p1, v1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 869
    iget-object p0, p0, Lcom/heytap/accessory/BaseAgent;->mBackgroundWorker:Lcom/heytap/accessory/BaseAgent$b;

    invoke-virtual {p0, v1}, Lcom/heytap/accessory/BaseAgent$b;->sendMessage(Landroid/os/Message;)Z

    goto :goto_1

    .line 871
    :cond_1
    sget-object p0, Lcom/heytap/accessory/BaseAgent;->TAG:Ljava/lang/String;

    const-string p1, "handle Invalid PeerAction: mBackgroundWorker is null!"

    invoke-static {p0, p1}, Lcom/heytap/accessory/a/a;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 874
    :goto_1
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method private handleOnErrorCode(I)V
    .locals 1

    const/16 p0, 0x271d

    if-eq p1, p0, :cond_0

    packed-switch p1, :pswitch_data_0

    .line 641
    sget-object p0, Lcom/heytap/accessory/BaseAgent;->TAG:Ljava/lang/String;

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p1

    const-string v0, "onError() errorCode: "

    invoke-virtual {v0, p1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Lcom/heytap/accessory/a/a;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    .line 638
    :pswitch_0
    sget-object p0, Lcom/heytap/accessory/BaseAgent;->TAG:Ljava/lang/String;

    const-string p1, "onError() -> ERROR_PERMISSION_FAILED"

    invoke-static {p0, p1}, Lcom/heytap/accessory/a/a;->c(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    .line 635
    :pswitch_1
    sget-object p0, Lcom/heytap/accessory/BaseAgent;->TAG:Ljava/lang/String;

    const-string p1, "onError() -> ERROR_PERMISSION_DENIED"

    invoke-static {p0, p1}, Lcom/heytap/accessory/a/a;->c(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    .line 632
    :pswitch_2
    sget-object p0, Lcom/heytap/accessory/BaseAgent;->TAG:Ljava/lang/String;

    const-string p1, "onError() -> ERROR_SDK_NOT_INITIALIZED"

    invoke-static {p0, p1}, Lcom/heytap/accessory/a/a;->c(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    .line 629
    :pswitch_3
    sget-object p0, Lcom/heytap/accessory/BaseAgent;->TAG:Ljava/lang/String;

    const-string p1, "onError() -> ERROR_FATAL"

    invoke-static {p0, p1}, Lcom/heytap/accessory/a/a;->c(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    .line 626
    :cond_0
    sget-object p0, Lcom/heytap/accessory/BaseAgent;->TAG:Ljava/lang/String;

    const-string p1, "onError() -> ERROR_CONNECTION_INVALID_PARAM"

    invoke-static {p0, p1}, Lcom/heytap/accessory/a/a;->c(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x4e21
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private handlePeerAgentUpdateErrorCode(I)V
    .locals 1

    const/4 p0, 0x1

    if-eq p1, p0, :cond_1

    const/4 p0, 0x2

    if-eq p1, p0, :cond_0

    .line 655
    sget-object p0, Lcom/heytap/accessory/BaseAgent;->TAG:Ljava/lang/String;

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p1

    const-string v0, "onPeerAgentUpdated() errorCode: "

    invoke-virtual {v0, p1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Lcom/heytap/accessory/a/a;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    .line 652
    :cond_0
    sget-object p0, Lcom/heytap/accessory/BaseAgent;->TAG:Ljava/lang/String;

    const-string p1, "onPeerAgentUpdated() -> PEER_AGENT_UNAVAILABLE"

    invoke-static {p0, p1}, Lcom/heytap/accessory/a/a;->c(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    .line 649
    :cond_1
    sget-object p0, Lcom/heytap/accessory/BaseAgent;->TAG:Ljava/lang/String;

    const-string p1, "onPeerAgentUpdated() -> PEER_AGENT_AVAILABLE"

    invoke-static {p0, p1}, Lcom/heytap/accessory/a/a;->c(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method private handleServiceConnectionErrorCode(I)V
    .locals 1

    if-eqz p1, :cond_2

    const/16 p0, 0x271c

    if-eq p1, p0, :cond_1

    const/16 p0, 0x2722

    if-eq p1, p0, :cond_0

    packed-switch p1, :pswitch_data_0

    .line 618
    sget-object p0, Lcom/heytap/accessory/BaseAgent;->TAG:Ljava/lang/String;

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p1

    const-string v0, "onServiceConnectionResponse() errorCode: "

    invoke-virtual {v0, p1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Lcom/heytap/accessory/a/a;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    .line 606
    :pswitch_0
    sget-object p0, Lcom/heytap/accessory/BaseAgent;->TAG:Ljava/lang/String;

    const-string p1, "onServiceConnectionResponse() -> CONNECTION_FAILURE_SERVICE_LIMIT_REACHED"

    invoke-static {p0, p1}, Lcom/heytap/accessory/a/a;->c(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    .line 609
    :pswitch_1
    sget-object p0, Lcom/heytap/accessory/BaseAgent;->TAG:Ljava/lang/String;

    const-string p1, "onServiceConnectionResponse() -> CONNECTION_DUPLICATE_REQUEST"

    invoke-static {p0, p1}, Lcom/heytap/accessory/a/a;->c(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    .line 603
    :pswitch_2
    sget-object p0, Lcom/heytap/accessory/BaseAgent;->TAG:Ljava/lang/String;

    const-string p1, "onServiceConnectionResponse() -> CONNECTION_FAILURE_INVALID_PEER_AGENT"

    invoke-static {p0, p1}, Lcom/heytap/accessory/a/a;->c(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    .line 600
    :pswitch_3
    sget-object p0, Lcom/heytap/accessory/BaseAgent;->TAG:Ljava/lang/String;

    const-string p1, "onServiceConnectionResponse() -> CONNECTION_FAILURE_PEERAGENT_REJECTED"

    invoke-static {p0, p1}, Lcom/heytap/accessory/a/a;->c(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    .line 597
    :pswitch_4
    sget-object p0, Lcom/heytap/accessory/BaseAgent;->TAG:Ljava/lang/String;

    const-string p1, "onServiceConnectionResponse() -> CONNECTION_FAILURE_PEERAGENT_NO_RESPONSE"

    invoke-static {p0, p1}, Lcom/heytap/accessory/a/a;->c(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    .line 594
    :pswitch_5
    sget-object p0, Lcom/heytap/accessory/BaseAgent;->TAG:Ljava/lang/String;

    const-string p1, "onServiceConnectionResponse() -> CONNECTION_ALREADY_EXIST"

    invoke-static {p0, p1}, Lcom/heytap/accessory/a/a;->c(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    .line 591
    :pswitch_6
    sget-object p0, Lcom/heytap/accessory/BaseAgent;->TAG:Ljava/lang/String;

    const-string p1, "onServiceConnectionResponse() -> CONNECTION_FAILURE_DEVICE_UNREACHABLE"

    invoke-static {p0, p1}, Lcom/heytap/accessory/a/a;->c(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    .line 615
    :cond_0
    sget-object p0, Lcom/heytap/accessory/BaseAgent;->TAG:Ljava/lang/String;

    const-string p1, "onServiceConnectionResponse() -> CONNECTION_FAILURE_ACC_DORMANT"

    invoke-static {p0, p1}, Lcom/heytap/accessory/a/a;->c(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    .line 612
    :cond_1
    sget-object p0, Lcom/heytap/accessory/BaseAgent;->TAG:Ljava/lang/String;

    const-string p1, "onServiceConnectionResponse() -> CONNECTION_FAILURE_NETWORK"

    invoke-static {p0, p1}, Lcom/heytap/accessory/a/a;->c(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    .line 588
    :cond_2
    sget-object p0, Lcom/heytap/accessory/BaseAgent;->TAG:Ljava/lang/String;

    const-string p1, "onServiceConnectionResponse() -> CONNECTION_SUCCESS"

    invoke-static {p0, p1}, Lcom/heytap/accessory/a/a;->c(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x2714
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private instantiateSocket()Lcom/heytap/accessory/BaseSocket;
    .locals 5

    .line 724
    iget-object v0, p0, Lcom/heytap/accessory/BaseAgent;->mSocketImpl:Ljava/lang/Class;

    invoke-direct {p0, v0}, Lcom/heytap/accessory/BaseAgent;->validateSocketImplementation(Ljava/lang/Class;)V

    .line 727
    :try_start_0
    sget-object v0, Lcom/heytap/accessory/BaseAgent;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Instantiating BaseSocket: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/heytap/accessory/BaseAgent;->mSocketImpl:Ljava/lang/Class;

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/heytap/accessory/a/a;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 729
    iget-object v0, p0, Lcom/heytap/accessory/BaseAgent;->mSocketImpl:Ljava/lang/Class;

    invoke-virtual {v0}, Ljava/lang/Class;->getModifiers()I

    move-result v0

    .line 730
    invoke-static {v0}, Ljava/lang/reflect/Modifier;->toString(I)Ljava/lang/String;

    move-result-object v0

    const-string v1, "static"

    .line 731
    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/heytap/accessory/BaseAgent;->mSocketImpl:Ljava/lang/Class;

    invoke-virtual {v0}, Ljava/lang/Class;->getEnclosingClass()Ljava/lang/Class;

    move-result-object v0

    if-eqz v0, :cond_0

    const-class v0, Lcom/heytap/accessory/BaseAgent;

    iget-object v3, p0, Lcom/heytap/accessory/BaseAgent;->mSocketImpl:Ljava/lang/Class;

    invoke-virtual {v3}, Ljava/lang/Class;->getEnclosingClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 732
    iget-object v0, p0, Lcom/heytap/accessory/BaseAgent;->mSocketImpl:Ljava/lang/Class;

    new-array v3, v1, [Ljava/lang/Class;

    iget-object v4, p0, Lcom/heytap/accessory/BaseAgent;->mSocketImpl:Ljava/lang/Class;

    invoke-virtual {v4}, Ljava/lang/Class;->getEnclosingClass()Ljava/lang/Class;

    move-result-object v4

    aput-object v4, v3, v2

    invoke-virtual {v0, v3}, Ljava/lang/Class;->getDeclaredConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v0

    .line 733
    invoke-virtual {v0, v1}, Ljava/lang/reflect/Constructor;->setAccessible(Z)V

    .line 734
    new-array v1, v1, [Ljava/lang/Object;

    aput-object p0, v1, v2

    invoke-virtual {v0, v1}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/heytap/accessory/BaseSocket;

    return-object p0

    .line 736
    :cond_0
    iget-object p0, p0, Lcom/heytap/accessory/BaseAgent;->mSocketImpl:Ljava/lang/Class;

    new-array v0, v2, [Ljava/lang/Class;

    invoke-virtual {p0, v0}, Ljava/lang/Class;->getDeclaredConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object p0

    .line 737
    invoke-virtual {p0, v1}, Ljava/lang/reflect/Constructor;->setAccessible(Z)V

    .line 738
    new-array v0, v2, [Ljava/lang/Object;

    invoke-virtual {p0, v0}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/heytap/accessory/BaseSocket;
    :try_end_0
    .catch Ljava/lang/NoSuchMethodException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/InstantiationException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    move-exception p0

    .line 742
    sget-object v0, Lcom/heytap/accessory/BaseAgent;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Invalid implementation of BaseSocket. Provider a public default constructor."

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 743
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    .line 742
    invoke-static {v0, p0}, Lcom/heytap/accessory/a/a;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 744
    new-instance p0, Ljava/lang/RuntimeException;

    invoke-direct {p0, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method private loadAgentId()V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/heytap/accessory/bean/GeneralException;
        }
    .end annotation

    .line 464
    invoke-virtual {p0}, Lcom/heytap/accessory/BaseAgent;->getLocalAgentId()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_0

    const/16 v0, 0x4e21

    const/4 v1, 0x0

    .line 466
    invoke-virtual {p0, v0, v1}, Lcom/heytap/accessory/BaseAgent;->handleError(ILcom/heytap/accessory/bean/PeerAgent;)V

    return-void

    .line 469
    :cond_0
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x1a

    const/4 v3, 0x0

    const-string v4, "AccessoryPreferences"

    if-le v1, v2, :cond_1

    .line 470
    invoke-virtual {p0}, Lcom/heytap/accessory/BaseAgent;->createDeviceProtectedStorageContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1, v4, v3}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v1

    goto :goto_0

    .line 472
    :cond_1
    invoke-virtual {p0}, Lcom/heytap/accessory/BaseAgent;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1, v4, v3}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v1

    .line 474
    :goto_0
    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    .line 475
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v0, v2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 476
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2, v0}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 477
    sget-object v2, Lcom/heytap/accessory/BaseAgent;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "save AgentId className:"

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, ",agentId: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/heytap/accessory/a/a;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 478
    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 479
    iput-object v0, p0, Lcom/heytap/accessory/BaseAgent;->mAgentId:Ljava/lang/String;

    .line 480
    invoke-direct {p0}, Lcom/heytap/accessory/BaseAgent;->registerMexAgent()V

    return-void
.end method

.method private notifyConnectionRequest(Landroid/content/Intent;)V
    .locals 5

    if-nez p1, :cond_0

    .line 693
    sget-object p0, Lcom/heytap/accessory/BaseAgent;->TAG:Ljava/lang/String;

    const-string p1, "Invalid service connection indication.Intent:null.Ignoring reqeuset"

    invoke-static {p0, p1}, Lcom/heytap/accessory/a/a;->e(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_0
    const-wide/16 v0, 0x0

    const-string v2, "transactionId"

    .line 696
    invoke-virtual {p1, v2, v0, v1}, Landroid/content/Intent;->getLongExtra(Ljava/lang/String;J)J

    move-result-wide v0

    const-string v2, "peerAgent"

    .line 697
    invoke-virtual {p1, v2}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v2

    check-cast v2, Lcom/heytap/accessory/bean/PeerAgent;

    const-string v3, "agentId"

    .line 698
    invoke-virtual {p1, v3}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    if-nez v2, :cond_1

    .line 700
    sget-object p0, Lcom/heytap/accessory/BaseAgent;->TAG:Ljava/lang/String;

    new-instance p1, Ljava/lang/StringBuilder;

    const-string v0, "Invalid initiator peer agent:"

    invoke-direct {p1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v0, ". Ignoring connection request"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Lcom/heytap/accessory/a/a;->e(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_1
    if-nez p1, :cond_2

    .line 702
    sget-object p0, Lcom/heytap/accessory/BaseAgent;->TAG:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Invalid local agent Id:"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, ".Ignoring connection request"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Lcom/heytap/accessory/a/a;->e(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    .line 704
    :cond_2
    invoke-virtual {v2, v0, v1}, Lcom/heytap/accessory/bean/PeerAgent;->setTransactionId(J)V

    .line 705
    sget-object p1, Lcom/heytap/accessory/BaseAgent;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "Connection initiated by peer: "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2}, Lcom/heytap/accessory/bean/PeerAgent;->getAgentId()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, " on Accessory: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 706
    invoke-virtual {v2}, Lcom/heytap/accessory/bean/PeerAgent;->getAccessory()Lcom/heytap/accessory/bean/PeerAccessory;

    move-result-object v4

    invoke-virtual {v4}, Lcom/heytap/accessory/bean/PeerAccessory;->getPeerId()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, " Transaction: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 705
    invoke-static {p1, v0}, Lcom/heytap/accessory/a/a;->c(Ljava/lang/String;Ljava/lang/String;)V

    .line 707
    iget-object p1, p0, Lcom/heytap/accessory/BaseAgent;->mPendingRequests:Ljava/util/Set;

    invoke-interface {p1, v2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 708
    invoke-virtual {p0, v2}, Lcom/heytap/accessory/BaseAgent;->onServiceConnectionRequested(Lcom/heytap/accessory/bean/PeerAgent;)V

    return-void
.end method

.method private registerMexAgent()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/heytap/accessory/bean/GeneralException;
        }
    .end annotation

    .line 485
    iget-object v0, p0, Lcom/heytap/accessory/BaseAgent;->mMessage:Lcom/heytap/accessory/BaseMessage;

    if-eqz v0, :cond_0

    iget-object p0, p0, Lcom/heytap/accessory/BaseAgent;->mAgentId:Ljava/lang/String;

    if-eqz p0, :cond_0

    .line 486
    invoke-virtual {v0, p0}, Lcom/heytap/accessory/BaseMessage;->registerAgent(Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method private registerService()V
    .locals 1

    .line 511
    new-instance v0, Lcom/heytap/accessory/a;

    invoke-virtual {p0}, Lcom/heytap/accessory/BaseAgent;->getApplicationContext()Landroid/content/Context;

    move-result-object p0

    invoke-direct {v0, p0}, Lcom/heytap/accessory/a;-><init>(Landroid/content/Context;)V

    .line 512
    invoke-virtual {v0}, Lcom/heytap/accessory/a;->a()Ljava/util/concurrent/Future;

    move-result-object p0

    .line 513
    invoke-virtual {v0}, Lcom/heytap/accessory/a;->b()V

    .line 516
    :try_start_0
    invoke-interface {p0}, Ljava/util/concurrent/Future;->get()Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/util/concurrent/ExecutionException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    .line 520
    :catch_0
    sget-object p0, Lcom/heytap/accessory/BaseAgent;->TAG:Ljava/lang/String;

    const-string v0, "Registration failed! : ExecutionException"

    invoke-static {p0, v0}, Lcom/heytap/accessory/a/a;->e(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    .line 518
    :catch_1
    sget-object p0, Lcom/heytap/accessory/BaseAgent;->TAG:Ljava/lang/String;

    const-string v0, "Regisration failed! : InterruptedException"

    invoke-static {p0, v0}, Lcom/heytap/accessory/a/a;->e(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method private rejectServiceConnectionInternal(Lcom/heytap/accessory/bean/PeerAgent;)V
    .locals 4

    .line 759
    invoke-virtual {p0}, Lcom/heytap/accessory/BaseAgent;->getLocalAgentId()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_0

    const/16 v0, 0x4e21

    .line 761
    invoke-virtual {p0, v0, p1}, Lcom/heytap/accessory/BaseAgent;->handleError(ILcom/heytap/accessory/bean/PeerAgent;)V

    return-void

    .line 764
    :cond_0
    :try_start_0
    iget-object v1, p0, Lcom/heytap/accessory/BaseAgent;->mAdapter:Lcom/heytap/accessory/BaseAdapter;

    invoke-virtual {p1}, Lcom/heytap/accessory/bean/PeerAgent;->getTransactionId()J

    move-result-wide v2

    invoke-virtual {v1, v0, p1, v2, v3}, Lcom/heytap/accessory/BaseAdapter;->rejectServiceConnection(Ljava/lang/String;Lcom/heytap/accessory/bean/PeerAgent;J)I
    :try_end_0
    .catch Lcom/heytap/accessory/bean/GeneralException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v0

    .line 766
    sget-object v1, Lcom/heytap/accessory/BaseAgent;->TAG:Ljava/lang/String;

    const-string v2, "Failed to reject Service connection!"

    invoke-static {v1, v2, v0}, Lcom/heytap/accessory/a/a;->b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 767
    invoke-virtual {v0}, Lcom/heytap/accessory/bean/GeneralException;->getErrorCode()I

    move-result v0

    invoke-virtual {p0, v0, p1}, Lcom/heytap/accessory/BaseAgent;->handleError(ILcom/heytap/accessory/bean/PeerAgent;)V

    return-void
.end method

.method private requestConnection(Lcom/heytap/accessory/bean/PeerAgent;)V
    .locals 3

    .line 713
    invoke-virtual {p0}, Lcom/heytap/accessory/BaseAgent;->getLocalAgentId()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_0

    .line 715
    sget-object v0, Lcom/heytap/accessory/BaseAgent;->TAG:Ljava/lang/String;

    const-string v1, "Failed to retrieve service description.Ignoring service connection request"

    invoke-static {v0, v1}, Lcom/heytap/accessory/a/a;->e(Ljava/lang/String;Ljava/lang/String;)V

    const/16 v0, 0x4e21

    .line 716
    invoke-virtual {p0, v0, p1}, Lcom/heytap/accessory/BaseAgent;->handleError(ILcom/heytap/accessory/bean/PeerAgent;)V

    return-void

    .line 718
    :cond_0
    invoke-direct {p0}, Lcom/heytap/accessory/BaseAgent;->instantiateSocket()Lcom/heytap/accessory/BaseSocket;

    move-result-object v1

    .line 719
    iget-object v2, p0, Lcom/heytap/accessory/BaseAgent;->mAdapter:Lcom/heytap/accessory/BaseAdapter;

    iget-object p0, p0, Lcom/heytap/accessory/BaseAgent;->mConnectionCallback:Lcom/heytap/accessory/BaseAgent$c;

    invoke-virtual {v1, v0, p1, v2, p0}, Lcom/heytap/accessory/BaseSocket;->initiateServiceconnection(Ljava/lang/String;Lcom/heytap/accessory/bean/PeerAgent;Lcom/heytap/accessory/BaseAdapter;Lcom/heytap/accessory/BaseSocket$a;)V

    return-void
.end method

.method private requestPeerAgents()V
    .locals 5

    .line 526
    invoke-virtual {p0}, Lcom/heytap/accessory/BaseAgent;->getLocalAgentId()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    const/16 v0, 0x4e21

    .line 528
    invoke-virtual {p0, v0, v1}, Lcom/heytap/accessory/BaseAgent;->handleError(ILcom/heytap/accessory/bean/PeerAgent;)V

    return-void

    .line 531
    :cond_0
    :try_start_0
    iget-object v2, p0, Lcom/heytap/accessory/BaseAgent;->mAdapter:Lcom/heytap/accessory/BaseAdapter;

    iget-object v3, p0, Lcom/heytap/accessory/BaseAgent;->mPeerAgentCallback:Lcom/heytap/accessory/BaseAgent$PeerAgentCallback;

    invoke-virtual {v2, v0, v3}, Lcom/heytap/accessory/BaseAdapter;->findPeerAgents(Ljava/lang/String;Lcom/heytap/accessory/api/IPeerAgentCallback;)I

    move-result v0

    if-nez v0, :cond_1

    .line 533
    sget-object v0, Lcom/heytap/accessory/BaseAgent;->TAG:Ljava/lang/String;

    const-string v2, "Find peer request successfully enqueued."

    invoke-static {v0, v2}, Lcom/heytap/accessory/a/a;->b(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    .line 535
    :cond_1
    sget-object v2, Lcom/heytap/accessory/BaseAgent;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "Find peer request failed:"

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, " for service "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 536
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 535
    invoke-static {v2, v3}, Lcom/heytap/accessory/a/a;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 537
    invoke-virtual {p0, v1, v0}, Lcom/heytap/accessory/BaseAgent;->onFindPeerAgentsResponse([Lcom/heytap/accessory/bean/PeerAgent;I)V

    .line 538
    invoke-direct {p0, v0}, Lcom/heytap/accessory/BaseAgent;->handleFindPeerErrorCode(I)V
    :try_end_0
    .catch Lcom/heytap/accessory/bean/GeneralException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v0

    .line 541
    sget-object v2, Lcom/heytap/accessory/BaseAgent;->TAG:Ljava/lang/String;

    const-string v3, "Find Peer request failed!"

    invoke-static {v2, v3}, Lcom/heytap/accessory/a/a;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 542
    invoke-virtual {v0}, Lcom/heytap/accessory/bean/GeneralException;->getErrorCode()I

    move-result v0

    invoke-virtual {p0, v0, v1}, Lcom/heytap/accessory/BaseAgent;->handleError(ILcom/heytap/accessory/bean/PeerAgent;)V

    return-void
.end method

.method private requestPeerAuthInternal(Lcom/heytap/accessory/bean/PeerAgent;)V
    .locals 6

    .line 774
    invoke-virtual {p0}, Lcom/heytap/accessory/BaseAgent;->getLocalAgentId()Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_0

    const/16 v0, 0x4e21

    .line 776
    invoke-virtual {p0, v0, p1}, Lcom/heytap/accessory/BaseAgent;->handleError(ILcom/heytap/accessory/bean/PeerAgent;)V

    return-void

    .line 779
    :cond_0
    :try_start_0
    iget-object v0, p0, Lcom/heytap/accessory/BaseAgent;->mAdapter:Lcom/heytap/accessory/BaseAdapter;

    iget-object v3, p0, Lcom/heytap/accessory/BaseAgent;->mPeerAuthCallback:Lcom/heytap/accessory/BaseAgent$AuthenticationCallback;

    invoke-virtual {p1}, Lcom/heytap/accessory/bean/PeerAgent;->getTransactionId()J

    move-result-wide v4

    move-object v2, p1

    invoke-virtual/range {v0 .. v5}, Lcom/heytap/accessory/BaseAdapter;->authenticatePeeragent(Ljava/lang/String;Lcom/heytap/accessory/bean/PeerAgent;Lcom/heytap/accessory/api/IPeerAgentAuthCallback;J)I

    move-result v0
    :try_end_0
    .catch Lcom/heytap/accessory/bean/GeneralException; {:try_start_0 .. :try_end_0} :catch_0

    const-string v1, "Auth. request for peer: "

    if-nez v0, :cond_1

    .line 781
    :try_start_1
    sget-object v0, Lcom/heytap/accessory/BaseAgent;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/heytap/accessory/bean/PeerAgent;->getAgentId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " done successfully"

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/heytap/accessory/a/a;->c(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    .line 783
    :cond_1
    sget-object v2, Lcom/heytap/accessory/BaseAgent;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/heytap/accessory/bean/PeerAgent;->getAgentId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " failed as reason: "

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Lcom/heytap/accessory/a/a;->e(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v1, 0x0

    .line 784
    invoke-virtual {p0, p1, v1, v0}, Lcom/heytap/accessory/BaseAgent;->onAuthenticationResponse(Lcom/heytap/accessory/bean/PeerAgent;Lcom/heytap/accessory/bean/AuthenticationToken;I)V

    .line 785
    invoke-direct {p0, v0}, Lcom/heytap/accessory/BaseAgent;->handleAuthErrorCode(I)V
    :try_end_1
    .catch Lcom/heytap/accessory/bean/GeneralException; {:try_start_1 .. :try_end_1} :catch_0

    return-void

    :catch_0
    move-exception v0

    .line 788
    sget-object v1, Lcom/heytap/accessory/BaseAgent;->TAG:Ljava/lang/String;

    const-string v2, "Failed to request peer authentication!"

    invoke-static {v1, v2, v0}, Lcom/heytap/accessory/a/a;->b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 789
    invoke-virtual {v0}, Lcom/heytap/accessory/bean/GeneralException;->getErrorCode()I

    move-result v0

    invoke-virtual {p0, v0, p1}, Lcom/heytap/accessory/BaseAgent;->handleError(ILcom/heytap/accessory/bean/PeerAgent;)V

    return-void
.end method

.method private validateSocketImplementation(Ljava/lang/Class;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "+",
            "Lcom/heytap/accessory/BaseSocket;",
            ">;)V"
        }
    .end annotation

    if-eqz p1, :cond_1

    .line 496
    :try_start_0
    invoke-virtual {p1}, Ljava/lang/Class;->getModifiers()I

    move-result p0

    .line 497
    invoke-static {p0}, Ljava/lang/reflect/Modifier;->toString(I)Ljava/lang/String;

    move-result-object p0

    const-string v0, "static"

    .line 498
    invoke-virtual {p0, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result p0

    const/4 v0, 0x0

    if-nez p0, :cond_0

    invoke-virtual {p1}, Ljava/lang/Class;->getEnclosingClass()Ljava/lang/Class;

    move-result-object p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    .line 499
    new-array p0, p0, [Ljava/lang/Class;

    invoke-virtual {p1}, Ljava/lang/Class;->getEnclosingClass()Ljava/lang/Class;

    move-result-object v1

    aput-object v1, p0, v0

    invoke-virtual {p1, p0}, Ljava/lang/Class;->getDeclaredConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    return-void

    .line 501
    :cond_0
    new-array p0, v0, [Ljava/lang/Class;

    invoke-virtual {p1, p0}, Ljava/lang/Class;->getDeclaredConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;
    :try_end_0
    .catch Ljava/lang/NoSuchMethodException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p0

    .line 504
    sget-object p1, Lcom/heytap/accessory/BaseAgent;->TAG:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "exception: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Ljava/lang/NoSuchMethodException;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0, p0}, Lcom/heytap/accessory/a/a;->b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 505
    new-instance p0, Ljava/lang/RuntimeException;

    const-string p1, "Invalid implemetation of BaseSocket. Provider a public default constructor in the implementation class."

    invoke-direct {p0, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 493
    :cond_1
    new-instance p0, Ljava/lang/IllegalArgumentException;

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    const-string v0, "Invalid socketClass param:"

    invoke-virtual {v0, p1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method


# virtual methods
.method protected acceptServiceConnectionRequest(Lcom/heytap/accessory/bean/PeerAgent;)V
    .locals 4

    if-eqz p1, :cond_2

    .line 324
    :try_start_0
    invoke-virtual {p0}, Lcom/heytap/accessory/BaseAgent;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/heytap/accessory/Initializer;->initBufferPool(Landroid/content/Context;)V
    :try_end_0
    .catch Lcom/heytap/accessory/bean/SdkUnsupportedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 331
    iget-object v0, p0, Lcom/heytap/accessory/BaseAgent;->mPendingRequests:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 333
    sget-object v0, Lcom/heytap/accessory/BaseAgent;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Trying to Accept service connection request from peer:"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/heytap/accessory/bean/PeerAgent;->getAgentId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " Transaction:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/heytap/accessory/bean/PeerAgent;->getTransactionId()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/heytap/accessory/a/a;->c(Ljava/lang/String;Ljava/lang/String;)V

    .line 334
    iget-object v0, p0, Lcom/heytap/accessory/BaseAgent;->mBackgroundWorker:Lcom/heytap/accessory/BaseAgent$b;

    if-eqz v0, :cond_0

    const/4 v1, 0x7

    .line 335
    invoke-virtual {v0, v1}, Lcom/heytap/accessory/BaseAgent$b;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    .line 336
    iput-object p1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 337
    iget-object p0, p0, Lcom/heytap/accessory/BaseAgent;->mBackgroundWorker:Lcom/heytap/accessory/BaseAgent$b;

    invoke-virtual {p0, v0}, Lcom/heytap/accessory/BaseAgent$b;->sendMessage(Landroid/os/Message;)Z

    return-void

    .line 339
    :cond_0
    sget-object p0, Lcom/heytap/accessory/BaseAgent;->TAG:Ljava/lang/String;

    const-string p1, "acceptServiceConnection: mBackgroundWorker is null!"

    invoke-static {p0, p1}, Lcom/heytap/accessory/a/a;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    .line 342
    :cond_1
    sget-object v0, Lcom/heytap/accessory/BaseAgent;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Accepting service connection with invalid peer agent:"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/heytap/accessory/bean/PeerAgent;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/heytap/accessory/a/a;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 343
    invoke-direct {p0, p1}, Lcom/heytap/accessory/BaseAgent;->handleInvalidPeerAction(Lcom/heytap/accessory/bean/PeerAgent;)V

    return-void

    :catch_0
    move-exception v0

    .line 326
    sget-object v1, Lcom/heytap/accessory/BaseAgent;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "exception: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Lcom/heytap/accessory/bean/SdkUnsupportedException;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/heytap/accessory/a/a;->e(Ljava/lang/String;Ljava/lang/String;)V

    const/16 v0, 0x4e22

    .line 327
    invoke-virtual {p0, v0, p1}, Lcom/heytap/accessory/BaseAgent;->handleError(ILcom/heytap/accessory/bean/PeerAgent;)V

    return-void

    .line 321
    :cond_2
    new-instance p0, Ljava/lang/IllegalArgumentException;

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    const-string v0, "Illegal argument peerAgent:"

    invoke-virtual {v0, p1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method protected authenticatePeerAgent(Lcom/heytap/accessory/bean/PeerAgent;)V
    .locals 4

    if-eqz p1, :cond_1

    .line 386
    :try_start_0
    invoke-virtual {p0}, Lcom/heytap/accessory/BaseAgent;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/heytap/accessory/Initializer;->initBufferPool(Landroid/content/Context;)V
    :try_end_0
    .catch Lcom/heytap/accessory/bean/SdkUnsupportedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 393
    sget-object v0, Lcom/heytap/accessory/BaseAgent;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Authentication requested for peer:"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/heytap/accessory/bean/PeerAgent;->getAgentId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/heytap/accessory/a/a;->c(Ljava/lang/String;Ljava/lang/String;)V

    .line 394
    iget-object v0, p0, Lcom/heytap/accessory/BaseAgent;->mBackgroundWorker:Lcom/heytap/accessory/BaseAgent$b;

    if-eqz v0, :cond_0

    const/16 v1, 0x9

    .line 395
    invoke-virtual {v0, v1}, Lcom/heytap/accessory/BaseAgent$b;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    .line 396
    iput-object p1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 397
    iget-object p0, p0, Lcom/heytap/accessory/BaseAgent;->mBackgroundWorker:Lcom/heytap/accessory/BaseAgent$b;

    invoke-virtual {p0, v0}, Lcom/heytap/accessory/BaseAgent$b;->sendMessage(Landroid/os/Message;)Z

    return-void

    .line 399
    :cond_0
    sget-object p0, Lcom/heytap/accessory/BaseAgent;->TAG:Ljava/lang/String;

    const-string p1, "authenticatePeerAgent: mBackgroundWorker is null!"

    invoke-static {p0, p1}, Lcom/heytap/accessory/a/a;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :catch_0
    move-exception v0

    .line 388
    sget-object v1, Lcom/heytap/accessory/BaseAgent;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "exception: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Lcom/heytap/accessory/bean/SdkUnsupportedException;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/heytap/accessory/a/a;->e(Ljava/lang/String;Ljava/lang/String;)V

    const/16 v0, 0x4e22

    .line 389
    invoke-virtual {p0, v0, p1}, Lcom/heytap/accessory/BaseAgent;->handleError(ILcom/heytap/accessory/bean/PeerAgent;)V

    return-void

    .line 383
    :cond_1
    new-instance p0, Ljava/lang/IllegalArgumentException;

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    const-string v0, "Illegal argument peerAgent:"

    invoke-virtual {v0, p1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public checkAuthentication()I
    .locals 2

    .line 807
    :try_start_0
    iget-object v0, p0, Lcom/heytap/accessory/BaseAgent;->mAdapter:Lcom/heytap/accessory/BaseAdapter;

    if-eqz v0, :cond_0

    .line 808
    iget-object p0, p0, Lcom/heytap/accessory/BaseAgent;->mAdapter:Lcom/heytap/accessory/BaseAdapter;

    invoke-virtual {p0}, Lcom/heytap/accessory/BaseAdapter;->checkAuthentication()I

    move-result p0
    :try_end_0
    .catch Lcom/heytap/accessory/bean/GeneralException; {:try_start_0 .. :try_end_0} :catch_0

    return p0

    :catch_0
    move-exception p0

    .line 811
    sget-object v0, Lcom/heytap/accessory/BaseAgent;->TAG:Ljava/lang/String;

    invoke-static {p0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    const-string v1, "check authentication error "

    invoke-virtual {v1, p0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Lcom/heytap/accessory/a/a;->e(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    const/16 p0, 0x3f1

    return p0
.end method

.method public checkAuthentication(Ljava/lang/String;)Z
    .locals 1

    .line 818
    :try_start_0
    iget-object p0, p0, Lcom/heytap/accessory/BaseAgent;->mAdapter:Lcom/heytap/accessory/BaseAdapter;

    invoke-virtual {p0, p1}, Lcom/heytap/accessory/BaseAdapter;->checkAuthentication(Ljava/lang/String;)Z

    move-result p0
    :try_end_0
    .catch Lcom/heytap/accessory/bean/GeneralException; {:try_start_0 .. :try_end_0} :catch_0

    return p0

    :catch_0
    move-exception p0

    .line 820
    sget-object p1, Lcom/heytap/accessory/BaseAgent;->TAG:Ljava/lang/String;

    invoke-static {p0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    const-string v0, "check authentication method error "

    invoke-virtual {v0, p0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-static {p1, p0}, Lcom/heytap/accessory/a/a;->e(Ljava/lang/String;Ljava/lang/String;)V

    const/4 p0, 0x0

    return p0
.end method

.method protected final declared-synchronized findPeerAgents()V
    .locals 4

    monitor-enter p0

    .line 275
    :try_start_0
    sget-object v0, Lcom/heytap/accessory/BaseAgent;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "findPeer request received by:"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/heytap/accessory/a/a;->b(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 278
    :try_start_1
    invoke-virtual {p0}, Lcom/heytap/accessory/BaseAgent;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/heytap/accessory/Initializer;->initBufferPool(Landroid/content/Context;)V
    :try_end_1
    .catch Lcom/heytap/accessory/bean/SdkUnsupportedException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 285
    :try_start_2
    iget-object v0, p0, Lcom/heytap/accessory/BaseAgent;->mBackgroundWorker:Lcom/heytap/accessory/BaseAgent$b;

    if-eqz v0, :cond_0

    .line 286
    iget-object v0, p0, Lcom/heytap/accessory/BaseAgent;->mBackgroundWorker:Lcom/heytap/accessory/BaseAgent$b;

    invoke-virtual {v0}, Lcom/heytap/accessory/BaseAgent$b;->obtainMessage()Landroid/os/Message;

    move-result-object v0

    const/4 v1, 0x2

    .line 287
    iput v1, v0, Landroid/os/Message;->what:I

    .line 288
    iget-object v1, p0, Lcom/heytap/accessory/BaseAgent;->mBackgroundWorker:Lcom/heytap/accessory/BaseAgent$b;

    invoke-virtual {v1, v0}, Lcom/heytap/accessory/BaseAgent$b;->sendMessage(Landroid/os/Message;)Z
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 289
    monitor-exit p0

    return-void

    .line 290
    :cond_0
    :try_start_3
    sget-object v0, Lcom/heytap/accessory/BaseAgent;->TAG:Ljava/lang/String;

    const-string v1, "findPeerAgents: mBackgroundWorker is null!"

    invoke-static {v0, v1}, Lcom/heytap/accessory/a/a;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 293
    monitor-exit p0

    return-void

    :catch_0
    move-exception v0

    .line 280
    :try_start_4
    sget-object v1, Lcom/heytap/accessory/BaseAgent;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "exception: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Lcom/heytap/accessory/bean/SdkUnsupportedException;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/heytap/accessory/a/a;->e(Ljava/lang/String;Ljava/lang/String;)V

    const/16 v0, 0x4e22

    const/4 v1, 0x0

    .line 281
    invoke-virtual {p0, v0, v1}, Lcom/heytap/accessory/BaseAgent;->handleError(ILcom/heytap/accessory/bean/PeerAgent;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 282
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method getAgentHandler()Landroid/os/Handler;
    .locals 0

    .line 454
    iget-object p0, p0, Lcom/heytap/accessory/BaseAgent;->mBackgroundWorker:Lcom/heytap/accessory/BaseAgent$b;

    return-object p0
.end method

.method getId()Ljava/lang/String;
    .locals 3

    .line 850
    invoke-virtual {p0}, Lcom/heytap/accessory/BaseAgent;->getLocalAgentId()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_0

    const/16 v1, 0x4e21

    const/4 v2, 0x0

    .line 852
    invoke-virtual {p0, v1, v2}, Lcom/heytap/accessory/BaseAgent;->handleError(ILcom/heytap/accessory/bean/PeerAgent;)V

    :cond_0
    return-object v0
.end method

.method getLocalAgentId()Ljava/lang/String;
    .locals 5

    .line 661
    sget-object v0, Lcom/heytap/accessory/BaseAgent;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "mGetAgentIdRetryCount = "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v2, p0, Lcom/heytap/accessory/BaseAgent;->mGetAgentIdRetryCount:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/heytap/accessory/a/a;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 662
    iget v0, p0, Lcom/heytap/accessory/BaseAgent;->mGetAgentIdRetryCount:I

    const/4 v1, 0x0

    const/4 v2, 0x2

    if-lt v0, v2, :cond_0

    const/4 v0, 0x0

    .line 663
    iput v0, p0, Lcom/heytap/accessory/BaseAgent;->mGetAgentIdRetryCount:I

    .line 664
    sget-object p0, Lcom/heytap/accessory/BaseAgent;->TAG:Ljava/lang/String;

    const-string v0, "Failed to retrieve service record, retry 2"

    invoke-static {p0, v0}, Lcom/heytap/accessory/a/a;->e(Ljava/lang/String;Ljava/lang/String;)V

    return-object v1

    .line 668
    :cond_0
    :try_start_0
    iget-object v0, p0, Lcom/heytap/accessory/BaseAgent;->mAdapter:Lcom/heytap/accessory/BaseAdapter;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/heytap/accessory/BaseAdapter;->getLocalAgentId(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 669
    sget-object v2, Lcom/heytap/accessory/BaseAgent;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "Agent ID retrieved successfully for "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, " Agent ID:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/heytap/accessory/a/a;->c(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Lcom/heytap/accessory/bean/GeneralException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    move-exception v0

    .line 672
    invoke-virtual {v0}, Lcom/heytap/accessory/bean/GeneralException;->getErrorCode()I

    move-result v2

    const/16 v3, 0x2720

    if-ne v2, v3, :cond_1

    .line 673
    sget-object v2, Lcom/heytap/accessory/BaseAgent;->TAG:Ljava/lang/String;

    const-string v3, "Service record was not found in Accessory Framework.Registering service again!"

    invoke-static {v2, v3}, Lcom/heytap/accessory/a/a;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 675
    iget v2, p0, Lcom/heytap/accessory/BaseAgent;->mGetAgentIdRetryCount:I

    add-int/lit8 v2, v2, 0x1

    iput v2, p0, Lcom/heytap/accessory/BaseAgent;->mGetAgentIdRetryCount:I

    .line 677
    :try_start_1
    invoke-direct {p0}, Lcom/heytap/accessory/BaseAgent;->registerService()V

    .line 678
    sget-object v2, Lcom/heytap/accessory/BaseAgent;->TAG:Ljava/lang/String;

    const-string v3, "Trying to fetch agent ID after re-registration"

    invoke-static {v2, v3}, Lcom/heytap/accessory/a/a;->c(Ljava/lang/String;Ljava/lang/String;)V

    .line 679
    iget-object v2, p0, Lcom/heytap/accessory/BaseAgent;->mAdapter:Lcom/heytap/accessory/BaseAdapter;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v2, p0}, Lcom/heytap/accessory/BaseAdapter;->getLocalAgentId(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0
    :try_end_1
    .catch Lcom/heytap/accessory/bean/GeneralException; {:try_start_1 .. :try_end_1} :catch_1

    return-object p0

    .line 681
    :catch_1
    sget-object p0, Lcom/heytap/accessory/BaseAgent;->TAG:Ljava/lang/String;

    const-string v2, "Failed to retrieve service record after re-registration"

    invoke-static {p0, v2, v0}, Lcom/heytap/accessory/a/a;->b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    return-object v1

    .line 685
    :cond_1
    sget-object p0, Lcom/heytap/accessory/BaseAgent;->TAG:Ljava/lang/String;

    const-string v2, "Failed to retrieve service record"

    invoke-static {p0, v2, v0}, Lcom/heytap/accessory/a/a;->b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    return-object v1
.end method

.method public getServiceChannelId(I)I
    .locals 2

    .line 433
    iget-object v0, p0, Lcom/heytap/accessory/BaseAgent;->mServiceProfile:Lcom/heytap/accessory/bean/ServiceProfile;

    const/4 v1, -0x1

    if-nez v0, :cond_0

    .line 434
    sget-object p0, Lcom/heytap/accessory/BaseAgent;->TAG:Ljava/lang/String;

    const-string p1, "Failed because Service Profile is null"

    invoke-static {p0, p1}, Lcom/heytap/accessory/a/a;->e(Ljava/lang/String;Ljava/lang/String;)V

    return v1

    :cond_0
    if-ltz p1, :cond_1

    .line 436
    invoke-virtual {p0}, Lcom/heytap/accessory/BaseAgent;->getServiceChannelSize()I

    move-result v0

    if-ge p1, v0, :cond_1

    .line 437
    iget-object p0, p0, Lcom/heytap/accessory/BaseAgent;->mServiceProfile:Lcom/heytap/accessory/bean/ServiceProfile;

    invoke-virtual {p0}, Lcom/heytap/accessory/bean/ServiceProfile;->getServiceChannelList()Ljava/util/List;

    move-result-object p0

    invoke-interface {p0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/heytap/accessory/bean/ServiceChannel;

    invoke-virtual {p0}, Lcom/heytap/accessory/bean/ServiceChannel;->getChannelId()I

    move-result p0

    return p0

    .line 439
    :cond_1
    sget-object p0, Lcom/heytap/accessory/BaseAgent;->TAG:Ljava/lang/String;

    const-string p1, "Failed because of wrong index"

    invoke-static {p0, p1}, Lcom/heytap/accessory/a/a;->e(Ljava/lang/String;Ljava/lang/String;)V

    return v1
.end method

.method public getServiceChannelSize()I
    .locals 1

    .line 424
    iget-object p0, p0, Lcom/heytap/accessory/BaseAgent;->mServiceProfile:Lcom/heytap/accessory/bean/ServiceProfile;

    if-nez p0, :cond_0

    .line 425
    sget-object p0, Lcom/heytap/accessory/BaseAgent;->TAG:Ljava/lang/String;

    const-string v0, "Failed because Service Profile is null"

    invoke-static {p0, v0}, Lcom/heytap/accessory/a/a;->e(Ljava/lang/String;Ljava/lang/String;)V

    const/4 p0, -0x1

    return p0

    .line 428
    :cond_0
    invoke-virtual {p0}, Lcom/heytap/accessory/bean/ServiceProfile;->getServiceChannelList()Ljava/util/List;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result p0

    return p0
.end method

.method public getServiceProfileId()Ljava/lang/String;
    .locals 1

    .line 406
    iget-object p0, p0, Lcom/heytap/accessory/BaseAgent;->mServiceProfile:Lcom/heytap/accessory/bean/ServiceProfile;

    if-nez p0, :cond_0

    .line 407
    sget-object p0, Lcom/heytap/accessory/BaseAgent;->TAG:Ljava/lang/String;

    const-string v0, "Failed because Service Profile is null"

    invoke-static {p0, v0}, Lcom/heytap/accessory/a/a;->e(Ljava/lang/String;Ljava/lang/String;)V

    const/4 p0, 0x0

    return-object p0

    .line 410
    :cond_0
    invoke-virtual {p0}, Lcom/heytap/accessory/bean/ServiceProfile;->getId()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public getServiceProfileName()Ljava/lang/String;
    .locals 1

    .line 415
    iget-object p0, p0, Lcom/heytap/accessory/BaseAgent;->mServiceProfile:Lcom/heytap/accessory/bean/ServiceProfile;

    if-nez p0, :cond_0

    .line 416
    sget-object p0, Lcom/heytap/accessory/BaseAgent;->TAG:Ljava/lang/String;

    const-string v0, "Failed because Service Profile is null"

    invoke-static {p0, v0}, Lcom/heytap/accessory/a/a;->e(Ljava/lang/String;Ljava/lang/String;)V

    const/4 p0, 0x0

    return-object p0

    .line 419
    :cond_0
    invoke-virtual {p0}, Lcom/heytap/accessory/bean/ServiceProfile;->getName()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public getSuccessfulConnections()Ljava/util/List;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/heytap/accessory/BaseSocket;",
            ">;"
        }
    .end annotation

    .line 445
    iget-object p0, p0, Lcom/heytap/accessory/BaseAgent;->mSuccessfulConnections:Ljava/util/List;

    return-object p0
.end method

.method public getVersion()I
    .locals 2

    .line 796
    :try_start_0
    iget-object v0, p0, Lcom/heytap/accessory/BaseAgent;->mAdapter:Lcom/heytap/accessory/BaseAdapter;

    if-eqz v0, :cond_0

    .line 797
    iget-object p0, p0, Lcom/heytap/accessory/BaseAgent;->mAdapter:Lcom/heytap/accessory/BaseAdapter;

    invoke-virtual {p0}, Lcom/heytap/accessory/BaseAdapter;->getVersion()I

    move-result p0
    :try_end_0
    .catch Lcom/heytap/accessory/bean/GeneralException; {:try_start_0 .. :try_end_0} :catch_0

    return p0

    :catch_0
    move-exception p0

    .line 800
    sget-object v0, Lcom/heytap/accessory/BaseAgent;->TAG:Ljava/lang/String;

    invoke-static {p0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    const-string v1, "getVersion error "

    invoke-virtual {v1, p0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Lcom/heytap/accessory/a/a;->e(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method handleError(ILcom/heytap/accessory/bean/PeerAgent;)V
    .locals 2

    const/16 v0, 0x2718

    const/4 v1, 0x0

    if-eq p1, v0, :cond_0

    packed-switch p1, :pswitch_data_0

    .line 899
    sget-object p0, Lcom/heytap/accessory/BaseAgent;->TAG:Ljava/lang/String;

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p1

    const-string p2, "Unknown error: "

    invoke-virtual {p2, p1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Lcom/heytap/accessory/a/a;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :pswitch_0
    const-string p2, "Permission error!"

    .line 895
    invoke-virtual {p0, v1, p2, p1}, Lcom/heytap/accessory/BaseAgent;->onError(Lcom/heytap/accessory/bean/PeerAgent;Ljava/lang/String;I)V

    .line 896
    invoke-direct {p0, p1}, Lcom/heytap/accessory/BaseAgent;->handleOnErrorCode(I)V

    return-void

    .line 889
    :pswitch_1
    sget-object p2, Lcom/heytap/accessory/BaseAgent;->TAG:Ljava/lang/String;

    const-string v0, "Accessory SDK cannot be initialized"

    invoke-static {p2, v0}, Lcom/heytap/accessory/a/a;->e(Ljava/lang/String;Ljava/lang/String;)V

    const-string p2, "Accessory SDK cannot be initialized. Device or Build not compatible."

    .line 890
    invoke-virtual {p0, v1, p2, p1}, Lcom/heytap/accessory/BaseAgent;->onError(Lcom/heytap/accessory/bean/PeerAgent;Ljava/lang/String;I)V

    .line 891
    invoke-direct {p0, p1}, Lcom/heytap/accessory/BaseAgent;->handleOnErrorCode(I)V

    return-void

    :pswitch_2
    const/4 p2, 0x1

    .line 884
    invoke-direct {p0, p2}, Lcom/heytap/accessory/BaseAgent;->cleanupConnections(Z)V

    const-string p2, "Accessory Framework has died!!"

    .line 885
    invoke-virtual {p0, v1, p2, p1}, Lcom/heytap/accessory/BaseAgent;->onError(Lcom/heytap/accessory/bean/PeerAgent;Ljava/lang/String;I)V

    .line 886
    invoke-direct {p0, p1}, Lcom/heytap/accessory/BaseAgent;->handleOnErrorCode(I)V

    return-void

    .line 880
    :cond_0
    invoke-virtual {p0, p2, v1, v0}, Lcom/heytap/accessory/BaseAgent;->onServiceConnectionResponse(Lcom/heytap/accessory/bean/PeerAgent;Lcom/heytap/accessory/BaseSocket;I)V

    .line 881
    invoke-direct {p0, v0}, Lcom/heytap/accessory/BaseAgent;->handleServiceConnectionErrorCode(I)V

    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x4e21
        :pswitch_2
        :pswitch_1
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method protected onAuthenticationResponse(Lcom/heytap/accessory/bean/PeerAgent;Lcom/heytap/accessory/bean/AuthenticationToken;I)V
    .locals 0

    .line 260
    sget-object p0, Lcom/heytap/accessory/BaseAgent;->TAG:Ljava/lang/String;

    invoke-static {p3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p1

    const-string p2, "Peer authentication response received:"

    invoke-virtual {p2, p1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Lcom/heytap/accessory/a/a;->b(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public onCreate()V
    .locals 3

    .line 120
    invoke-super {p0}, Landroid/app/Service;->onCreate()V

    .line 122
    :try_start_0
    new-instance v0, Lcom/heytap/accessory/b/g;

    invoke-virtual {p0}, Lcom/heytap/accessory/BaseAgent;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/heytap/accessory/b/g;-><init>(Landroid/content/Context;)V
    :try_end_0
    .catch Lcom/heytap/accessory/bean/GeneralException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 124
    invoke-virtual {v0}, Lcom/heytap/accessory/bean/GeneralException;->printStackTrace()V

    .line 127
    :goto_0
    sget-object v0, Lcom/heytap/accessory/BaseAgent;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "BaseAgent - onCreate:"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/heytap/accessory/a/a;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 128
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    invoke-static {v0}, Ljava/util/Collections;->synchronizedList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/heytap/accessory/BaseAgent;->mSuccessfulConnections:Ljava/util/List;

    .line 129
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    invoke-static {v0}, Ljava/util/Collections;->synchronizedSet(Ljava/util/Set;)Ljava/util/Set;

    move-result-object v0

    iput-object v0, p0, Lcom/heytap/accessory/BaseAgent;->mPendingRequests:Ljava/util/Set;

    .line 130
    new-instance v0, Landroid/os/HandlerThread;

    iget-object v1, p0, Lcom/heytap/accessory/BaseAgent;->mName:Ljava/lang/String;

    invoke-direct {v0, v1}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    .line 131
    new-instance v1, Lcom/heytap/accessory/BaseAgent$1;

    invoke-direct {v1, p0}, Lcom/heytap/accessory/BaseAgent$1;-><init>(Lcom/heytap/accessory/BaseAgent;)V

    invoke-virtual {v0, v1}, Landroid/os/HandlerThread;->setUncaughtExceptionHandler(Ljava/lang/Thread$UncaughtExceptionHandler;)V

    .line 143
    invoke-virtual {v0}, Landroid/os/HandlerThread;->start()V

    .line 144
    invoke-virtual {v0}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 149
    new-instance v1, Lcom/heytap/accessory/BaseAgent$b;

    invoke-direct {v1, p0, v0}, Lcom/heytap/accessory/BaseAgent$b;-><init>(Lcom/heytap/accessory/BaseAgent;Landroid/os/Looper;)V

    iput-object v1, p0, Lcom/heytap/accessory/BaseAgent;->mBackgroundWorker:Lcom/heytap/accessory/BaseAgent$b;

    .line 152
    :try_start_1
    invoke-virtual {p0}, Lcom/heytap/accessory/BaseAgent;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/heytap/accessory/Initializer;->initBufferPool(Landroid/content/Context;)V
    :try_end_1
    .catch Lcom/heytap/accessory/bean/SdkUnsupportedException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_1

    :catch_1
    move-exception v0

    .line 154
    sget-object v1, Lcom/heytap/accessory/BaseAgent;->TAG:Ljava/lang/String;

    const-string v2, "SDK initialization failed!"

    invoke-static {v1, v2, v0}, Lcom/heytap/accessory/a/a;->b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 155
    iget-object v0, p0, Lcom/heytap/accessory/BaseAgent;->mBackgroundWorker:Lcom/heytap/accessory/BaseAgent$b;

    const/16 v1, 0xb

    invoke-virtual {v0, v1}, Lcom/heytap/accessory/BaseAgent$b;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    const/16 v1, 0x4e22

    .line 156
    iput v1, v0, Landroid/os/Message;->arg1:I

    .line 157
    iget-object v1, p0, Lcom/heytap/accessory/BaseAgent;->mBackgroundWorker:Lcom/heytap/accessory/BaseAgent$b;

    invoke-virtual {v1, v0}, Lcom/heytap/accessory/BaseAgent$b;->sendMessage(Landroid/os/Message;)Z

    .line 160
    :goto_1
    invoke-virtual {p0}, Lcom/heytap/accessory/BaseAgent;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/heytap/accessory/BaseAgent;->mBackgroundWorker:Lcom/heytap/accessory/BaseAgent$b;

    invoke-static {v0, v1}, Lcom/heytap/accessory/BaseAdapter;->getDefaultAdapter(Landroid/content/Context;Landroid/os/Handler;)Lcom/heytap/accessory/BaseAdapter;

    move-result-object v0

    iput-object v0, p0, Lcom/heytap/accessory/BaseAgent;->mAdapter:Lcom/heytap/accessory/BaseAdapter;

    .line 161
    new-instance v0, Lcom/heytap/accessory/BaseAgent$AuthenticationCallback;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/heytap/accessory/BaseAgent$AuthenticationCallback;-><init>(Lcom/heytap/accessory/BaseAgent;B)V

    iput-object v0, p0, Lcom/heytap/accessory/BaseAgent;->mPeerAuthCallback:Lcom/heytap/accessory/BaseAgent$AuthenticationCallback;

    .line 162
    new-instance v0, Lcom/heytap/accessory/BaseAgent$PeerAgentCallback;

    invoke-direct {v0, p0, v1}, Lcom/heytap/accessory/BaseAgent$PeerAgentCallback;-><init>(Lcom/heytap/accessory/BaseAgent;B)V

    iput-object v0, p0, Lcom/heytap/accessory/BaseAgent;->mPeerAgentCallback:Lcom/heytap/accessory/BaseAgent$PeerAgentCallback;

    .line 163
    new-instance v0, Lcom/heytap/accessory/BaseAgent$c;

    invoke-direct {v0, p0, v1}, Lcom/heytap/accessory/BaseAgent$c;-><init>(Lcom/heytap/accessory/BaseAgent;B)V

    iput-object v0, p0, Lcom/heytap/accessory/BaseAgent;->mConnectionCallback:Lcom/heytap/accessory/BaseAgent$c;

    .line 164
    new-instance v0, Lcom/heytap/accessory/BaseAgent$a;

    invoke-direct {v0, p0}, Lcom/heytap/accessory/BaseAgent$a;-><init>(Lcom/heytap/accessory/BaseAgent;)V

    iput-object v0, p0, Lcom/heytap/accessory/BaseAgent;->mAgentCallback:Lcom/heytap/accessory/BaseAgent$a;

    .line 165
    iget-object v0, p0, Lcom/heytap/accessory/BaseAgent;->mBackgroundWorker:Lcom/heytap/accessory/BaseAgent$b;

    invoke-virtual {v0, v1}, Lcom/heytap/accessory/BaseAgent$b;->sendEmptyMessage(I)Z

    .line 166
    invoke-direct {p0}, Lcom/heytap/accessory/BaseAgent;->fetchServiceProfile()V

    return-void

    .line 146
    :cond_0
    sget-object p0, Lcom/heytap/accessory/BaseAgent;->TAG:Ljava/lang/String;

    const-string v0, "Unable to start Agent thread."

    invoke-static {p0, v0}, Lcom/heytap/accessory/a/a;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 147
    new-instance p0, Ljava/lang/RuntimeException;

    const-string v0, "Unable to start Agent.Worker thread creation failed"

    invoke-direct {p0, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public onDestroy()V
    .locals 3

    .line 205
    sget-object v0, Lcom/heytap/accessory/BaseAgent;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "BaseAgent - onDestroy:"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/heytap/accessory/a/a;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 206
    iget-object v0, p0, Lcom/heytap/accessory/BaseAgent;->mBackgroundWorker:Lcom/heytap/accessory/BaseAgent$b;

    if-eqz v0, :cond_0

    const/16 v1, 0xd

    .line 207
    invoke-virtual {v0, v1}, Lcom/heytap/accessory/BaseAgent$b;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 210
    :cond_0
    invoke-super {p0}, Landroid/app/Service;->onDestroy()V

    return-void
.end method

.method protected onError(Lcom/heytap/accessory/bean/PeerAgent;Ljava/lang/String;I)V
    .locals 3

    const-string p0, ": "

    const-string v0, "ACCEPT_STATE_ERROR: "

    if-nez p1, :cond_0

    .line 265
    sget-object p1, Lcom/heytap/accessory/BaseAgent;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, " PeerAgent: null"

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p1, p0}, Lcom/heytap/accessory/a/a;->e(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    .line 268
    :cond_0
    sget-object v1, Lcom/heytap/accessory/BaseAgent;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, " PeerAgent: "

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 269
    invoke-virtual {p1}, Lcom/heytap/accessory/bean/PeerAgent;->getAgentId()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    .line 268
    invoke-static {v1, p0}, Lcom/heytap/accessory/a/a;->e(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method protected onFindPeerAgentsResponse([Lcom/heytap/accessory/bean/PeerAgent;I)V
    .locals 0

    .line 239
    sget-object p0, Lcom/heytap/accessory/BaseAgent;->TAG:Ljava/lang/String;

    const-string p1, "Invalid implementation of BaseAgent.onFindPeerAgentsResponse(PeerAgent[], int) should be overrided!"

    invoke-static {p0, p1}, Lcom/heytap/accessory/a/a;->e(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method protected onPeerAgentsUpdated([Lcom/heytap/accessory/bean/PeerAgent;I)V
    .locals 0

    .line 243
    sget-object p0, Lcom/heytap/accessory/BaseAgent;->TAG:Ljava/lang/String;

    const-string p1, "Invalid implementation of BaseAgent.onPeerAgentsUpdated(PeerAgent[], int) should be overrided!"

    invoke-static {p0, p1}, Lcom/heytap/accessory/a/a;->e(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method protected onServiceConnectionRequested(Lcom/heytap/accessory/bean/PeerAgent;)V
    .locals 4

    if-eqz p1, :cond_0

    .line 248
    sget-object v0, Lcom/heytap/accessory/BaseAgent;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Accepting connection request by default from Peer:"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/heytap/accessory/bean/PeerAgent;->getAgentId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " Transaction:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/heytap/accessory/bean/PeerAgent;->getTransactionId()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/heytap/accessory/a/a;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 251
    :cond_0
    invoke-virtual {p0, p1}, Lcom/heytap/accessory/BaseAgent;->acceptServiceConnectionRequest(Lcom/heytap/accessory/bean/PeerAgent;)V

    return-void
.end method

.method protected onServiceConnectionResponse(Lcom/heytap/accessory/bean/PeerAgent;Lcom/heytap/accessory/BaseSocket;I)V
    .locals 0

    .line 255
    sget-object p0, Lcom/heytap/accessory/BaseAgent;->TAG:Ljava/lang/String;

    const-string p1, "No Implementaion for onServiceConnectionResponse(PeerAgent peerAgent, BaseSocket socket, int result)!"

    invoke-static {p0, p1}, Lcom/heytap/accessory/a/a;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public onStartCommand(Landroid/content/Intent;II)I
    .locals 2

    if-eqz p1, :cond_4

    .line 173
    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object p2

    if-eqz p2, :cond_4

    const-string v0, "com.heytap.accessory.action.SERVICE_CONNECTION_REQUESTED"

    .line 174
    invoke-virtual {v0, p2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    const-string v1, "onStartCommand: mBackgroundWorker is null!"

    if-eqz v0, :cond_1

    .line 175
    sget-object p2, Lcom/heytap/accessory/BaseAgent;->TAG:Ljava/lang/String;

    const-string v0, "Received incoming connection request"

    invoke-static {p2, v0}, Lcom/heytap/accessory/a/a;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 176
    iget-object p2, p0, Lcom/heytap/accessory/BaseAgent;->mBackgroundWorker:Lcom/heytap/accessory/BaseAgent$b;

    if-eqz p2, :cond_0

    .line 177
    invoke-virtual {p2}, Lcom/heytap/accessory/BaseAgent$b;->obtainMessage()Landroid/os/Message;

    move-result-object p2

    const/4 v0, 0x5

    .line 178
    iput v0, p2, Landroid/os/Message;->what:I

    .line 179
    iput p3, p2, Landroid/os/Message;->arg1:I

    .line 180
    iput-object p1, p2, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 181
    iget-object p0, p0, Lcom/heytap/accessory/BaseAgent;->mBackgroundWorker:Lcom/heytap/accessory/BaseAgent$b;

    invoke-virtual {p0, p2}, Lcom/heytap/accessory/BaseAgent$b;->sendMessage(Landroid/os/Message;)Z

    goto :goto_0

    .line 183
    :cond_0
    sget-object p0, Lcom/heytap/accessory/BaseAgent;->TAG:Ljava/lang/String;

    invoke-static {p0, v1}, Lcom/heytap/accessory/a/a;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_1
    const-string v0, "com.heytap.accessory.action.ACCESSORY_STATUS_CHANGED"

    .line 185
    invoke-virtual {v0, p2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 186
    sget-object p2, Lcom/heytap/accessory/BaseAgent;->TAG:Ljava/lang/String;

    const-string v0, "Received accessory status changed"

    invoke-static {p2, v0}, Lcom/heytap/accessory/a/a;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 187
    iget-object p2, p0, Lcom/heytap/accessory/BaseAgent;->mBackgroundWorker:Lcom/heytap/accessory/BaseAgent$b;

    if-eqz p2, :cond_2

    .line 188
    invoke-virtual {p2}, Lcom/heytap/accessory/BaseAgent$b;->obtainMessage()Landroid/os/Message;

    move-result-object p2

    const/16 v0, 0xf

    .line 189
    iput v0, p2, Landroid/os/Message;->what:I

    .line 190
    iput p3, p2, Landroid/os/Message;->arg1:I

    .line 191
    iput-object p1, p2, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 192
    iget-object p0, p0, Lcom/heytap/accessory/BaseAgent;->mBackgroundWorker:Lcom/heytap/accessory/BaseAgent$b;

    invoke-virtual {p0, p2}, Lcom/heytap/accessory/BaseAgent$b;->sendMessage(Landroid/os/Message;)Z

    goto :goto_0

    .line 194
    :cond_2
    sget-object p0, Lcom/heytap/accessory/BaseAgent;->TAG:Ljava/lang/String;

    invoke-static {p0, v1}, Lcom/heytap/accessory/a/a;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_3
    const-string p0, "com.heytap.accessory.action.MESSAGE_RECEIVED"

    .line 196
    invoke-virtual {p0, p2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_4

    .line 197
    sget-object p0, Lcom/heytap/accessory/BaseAgent;->TAG:Ljava/lang/String;

    const-string p1, "Received incoming message ind"

    invoke-static {p0, p1}, Lcom/heytap/accessory/a/a;->b(Ljava/lang/String;Ljava/lang/String;)V

    :cond_4
    :goto_0
    const/4 p0, 0x2

    return p0
.end method

.method public onTrimMemory(I)V
    .locals 0

    .line 215
    invoke-static {p1}, Lcom/heytap/accessory/b/a/c;->b(I)Z

    .line 216
    invoke-super {p0, p1}, Landroid/app/Service;->onTrimMemory(I)V

    return-void
.end method

.method registerMessageInstance(Lcom/heytap/accessory/BaseMessage;)Ljava/lang/String;
    .locals 0

    .line 449
    iput-object p1, p0, Lcom/heytap/accessory/BaseAgent;->mMessage:Lcom/heytap/accessory/BaseMessage;

    .line 450
    iget-object p0, p0, Lcom/heytap/accessory/BaseAgent;->mAgentId:Ljava/lang/String;

    return-object p0
.end method

.method protected rejectServiceConnectionRequest(Lcom/heytap/accessory/bean/PeerAgent;)V
    .locals 4

    if-eqz p1, :cond_2

    .line 354
    :try_start_0
    invoke-virtual {p0}, Lcom/heytap/accessory/BaseAgent;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/heytap/accessory/Initializer;->initBufferPool(Landroid/content/Context;)V
    :try_end_0
    .catch Lcom/heytap/accessory/bean/SdkUnsupportedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 361
    iget-object v0, p0, Lcom/heytap/accessory/BaseAgent;->mPendingRequests:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 363
    sget-object v0, Lcom/heytap/accessory/BaseAgent;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Trying to reject connection request from peer:"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 364
    invoke-virtual {p1}, Lcom/heytap/accessory/bean/PeerAgent;->getAgentId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " Transaction:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/heytap/accessory/bean/PeerAgent;->getTransactionId()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 363
    invoke-static {v0, v1}, Lcom/heytap/accessory/a/a;->c(Ljava/lang/String;Ljava/lang/String;)V

    .line 365
    iget-object v0, p0, Lcom/heytap/accessory/BaseAgent;->mBackgroundWorker:Lcom/heytap/accessory/BaseAgent$b;

    if-eqz v0, :cond_0

    const/16 v1, 0x8

    .line 366
    invoke-virtual {v0, v1}, Lcom/heytap/accessory/BaseAgent$b;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    .line 367
    iput-object p1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 368
    iget-object p0, p0, Lcom/heytap/accessory/BaseAgent;->mBackgroundWorker:Lcom/heytap/accessory/BaseAgent$b;

    invoke-virtual {p0, v0}, Lcom/heytap/accessory/BaseAgent$b;->sendMessage(Landroid/os/Message;)Z

    return-void

    .line 370
    :cond_0
    sget-object p0, Lcom/heytap/accessory/BaseAgent;->TAG:Ljava/lang/String;

    const-string p1, "rejectServiceConnection: mBackgroundWorker is null!"

    invoke-static {p0, p1}, Lcom/heytap/accessory/a/a;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    .line 373
    :cond_1
    sget-object v0, Lcom/heytap/accessory/BaseAgent;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Rejecting service connection with invalid peer agent:"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 374
    invoke-virtual {p1}, Lcom/heytap/accessory/bean/PeerAgent;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 373
    invoke-static {v0, v1}, Lcom/heytap/accessory/a/a;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 375
    invoke-direct {p0, p1}, Lcom/heytap/accessory/BaseAgent;->handleInvalidPeerAction(Lcom/heytap/accessory/bean/PeerAgent;)V

    return-void

    :catch_0
    move-exception v0

    .line 356
    sget-object v1, Lcom/heytap/accessory/BaseAgent;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "exception: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Lcom/heytap/accessory/bean/SdkUnsupportedException;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/heytap/accessory/a/a;->e(Ljava/lang/String;Ljava/lang/String;)V

    const/16 v0, 0x4e22

    .line 357
    invoke-virtual {p0, v0, p1}, Lcom/heytap/accessory/BaseAgent;->handleError(ILcom/heytap/accessory/bean/PeerAgent;)V

    return-void

    .line 351
    :cond_2
    new-instance p0, Ljava/lang/IllegalArgumentException;

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    const-string v0, "Illegal argument peerAgent:"

    invoke-virtual {v0, p1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method protected final requestServiceConnection(Lcom/heytap/accessory/bean/PeerAgent;)V
    .locals 4

    if-eqz p1, :cond_1

    .line 300
    :try_start_0
    invoke-virtual {p0}, Lcom/heytap/accessory/BaseAgent;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/heytap/accessory/Initializer;->initBufferPool(Landroid/content/Context;)V
    :try_end_0
    .catch Lcom/heytap/accessory/bean/SdkUnsupportedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 307
    sget-object v0, Lcom/heytap/accessory/BaseAgent;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Service connection requested for peer:"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/heytap/accessory/bean/PeerAgent;->getAgentId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/heytap/accessory/a/a;->c(Ljava/lang/String;Ljava/lang/String;)V

    .line 308
    iget-object v0, p0, Lcom/heytap/accessory/BaseAgent;->mBackgroundWorker:Lcom/heytap/accessory/BaseAgent$b;

    if-eqz v0, :cond_0

    const/4 v1, 0x6

    .line 309
    invoke-virtual {v0, v1}, Lcom/heytap/accessory/BaseAgent$b;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    .line 310
    iput-object p1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 311
    iget-object p0, p0, Lcom/heytap/accessory/BaseAgent;->mBackgroundWorker:Lcom/heytap/accessory/BaseAgent$b;

    invoke-virtual {p0, v0}, Lcom/heytap/accessory/BaseAgent$b;->sendMessage(Landroid/os/Message;)Z

    return-void

    .line 313
    :cond_0
    sget-object p0, Lcom/heytap/accessory/BaseAgent;->TAG:Ljava/lang/String;

    const-string p1, "requestServiceConection: mBackgroundWorker is null!"

    invoke-static {p0, p1}, Lcom/heytap/accessory/a/a;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :catch_0
    move-exception v0

    .line 302
    sget-object v1, Lcom/heytap/accessory/BaseAgent;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "exception: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Lcom/heytap/accessory/bean/SdkUnsupportedException;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/heytap/accessory/a/a;->e(Ljava/lang/String;Ljava/lang/String;)V

    const/16 v0, 0x4e22

    .line 303
    invoke-virtual {p0, v0, p1}, Lcom/heytap/accessory/BaseAgent;->handleError(ILcom/heytap/accessory/bean/PeerAgent;)V

    return-void

    .line 297
    :cond_1
    new-instance p0, Ljava/lang/IllegalArgumentException;

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    const-string v0, "Illegal argument peerAgent:"

    invoke-virtual {v0, p1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public runOnBackgroundThread(Ljava/lang/Runnable;)Z
    .locals 0

    .line 939
    iget-object p0, p0, Lcom/heytap/accessory/BaseAgent;->mBackgroundWorker:Lcom/heytap/accessory/BaseAgent$b;

    if-eqz p0, :cond_0

    .line 940
    invoke-virtual {p0, p1}, Lcom/heytap/accessory/BaseAgent$b;->post(Ljava/lang/Runnable;)Z

    move-result p0

    return p0

    .line 942
    :cond_0
    sget-object p0, Lcom/heytap/accessory/BaseAgent;->TAG:Ljava/lang/String;

    const-string p1, "runOnBackgroundThread: mBackgroundWorker is null!"

    invoke-static {p0, p1}, Lcom/heytap/accessory/a/a;->d(Ljava/lang/String;Ljava/lang/String;)V

    const/4 p0, 0x0

    return p0
.end method
